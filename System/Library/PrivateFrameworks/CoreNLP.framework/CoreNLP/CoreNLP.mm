void *NLStringTokenizerCreate(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, unint64_t a5, const __CFLocale *a6)
{
  if (NLStringTokenizerGetTypeID::onceToken != -1)
  {
    NLStringTokenizerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    Instance[8] = 0;
    Instance[9] = a5;
    if (a5 <= 2u)
    {
      if (!a5)
      {
        v10 = 0;
        v11 = 0;
        *(v9 + 14) = 0;
        if ((a5 & 0x4000) == 0)
        {
LABEL_23:
          if ((a5 & 0x8000) == 0)
          {
            goto LABEL_26;
          }

          v12 = 0x2000000;
LABEL_25:
          v11 |= v12;
          v9[8] = v11;
LABEL_26:
          if ((a5 & 0x2A00300) != 0)
          {
            v11 |= (a5 << 19) & 0x18000000 | (((a5 >> 21) & 1) << 26) & 0xFFFFFFFFDFFFFFFFLL | (((a5 >> 23) & 1) << 29) | (a5 >> 10) & 0x8000;
            v9[8] = v11;
          }

          NLTokenizerCreate(v10, v11, a6);
        }

LABEL_18:
        v12 = 0x1000000;
        goto LABEL_25;
      }

      if (a5 == 1)
      {
        v10 = 1;
        *(v9 + 14) = 1;
        v11 = 2;
        goto LABEL_22;
      }

      if (a5 == 2)
      {
        v11 = 0;
        v10 = 2;
        *(v9 + 14) = 2;
        if ((a5 & 0x4000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (a5 <= 0x3Fu)
      {
        if (a5 != 3)
        {
          if (a5 == 4)
          {
            v10 = 0;
            *(v9 + 14) = 0;
            v11 = 0x10000;
            goto LABEL_22;
          }

          goto LABEL_29;
        }

        v10 = 0;
        *(v9 + 14) = 0;
        v11 = 4;
LABEL_22:
        v9[8] = v11;
        if ((a5 & 0x4000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      if (a5 == 64)
      {
        v10 = 0;
        *(v9 + 14) = 0;
        v11 = 0x800000;
        goto LABEL_22;
      }

      if (a5 == 128)
      {
        v10 = 0;
        *(v9 + 14) = 0;
        v11 = 0x80000;
        goto LABEL_22;
      }
    }

LABEL_29:
    CFRelease(Instance);
    return 0;
  }

  return v9;
}

uint64_t __NLStringTokenizerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kNLStringTokenizerTypeID = result;
  return result;
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t CoreNLP::getLocaleLanguage(CoreNLP *this, const __CFLocale *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    return 1;
  }

  v2 = MEMORY[0x19EAF8290](this, a2);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  if (!CFStringGetCStringPtr(v2, 0x600u) && !CFStringGetCString(v3, buffer, 157, 0x600u))
  {
    return 1;
  }

  uloc_addLikelySubtags();
  uloc_getLanguage();
  if (v8 ^ 0x687A | BYTE2(v8))
  {
    if (v8 == 6649209 && (uloc_getScript(), !(v6 ^ 0x746E6148 | v7)))
    {
      return 54;
    }

    else
    {
      return CoreNLP::convertLanguageIDWithCode(&v8, v4);
    }
  }

  else
  {
    uloc_getScript();
    if (v6 ^ 0x736E6148 | v7)
    {
      if (v6 ^ 0x746E6148 | v7)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 4;
    }
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

CoreNLP::TaggerContext *CoreNLP::TaggerContext::TaggerContext(CoreNLP::TaggerContext *this, const __CFLocale *a2, const __CFLocale *a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 1) = xmmword_19D27D570;
  *(this + 16) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = CoreNLP::getLocaleLanguage(a3, a2);
  if (a3)
  {
    *(this + 5) = CFRetain(a3);
  }

  return this;
}

void sub_19D185A0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
    CoreNLP::TaggerContext::TaggerContext(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::convertLanguageIDWithCode(CoreNLP *this, const char *a2)
{
  if (!this)
  {
    return 1;
  }

  if (CoreNLP::convertLanguageIDWithCode(char const*)::onceToken != -1)
  {
    CoreNLP::convertLanguageIDWithCode();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, this);
  if (CoreNLP::convertLanguageIDWithCode(char const*)::codeToLangId + 8 == std::__tree<std::string>::find<std::string>(CoreNLP::convertLanguageIDWithCode(char const*)::codeToLangId, __p))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(std::__tree<std::string>::find<std::string>(CoreNLP::convertLanguageIDWithCode(char const*)::codeToLangId, __p) + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_19D185ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _NLStringTokenizerSetStringWithOptionsAndLanguageID(void *a1, CFStringRef str, CFRange range, uint64_t a4, uint64_t a5)
{
  length = range.length;
  location = range.location;
  if (a1[10] != a4)
  {
    a1[10] = a4;
    v10 = a1[8];
    if ((a4 & 8) != 0 && (v10 & 0x80000) != 0)
    {
      a1[8] = v10 | 0x80000000;
    }

    NLTokenizerSetOptions(a1[6]);
  }

  v11.location = location;
  v11.length = length;

  return __NLSTSetStringAndLanguage(a1, str, v11, a5);
}

uint64_t __NLSTSetStringAndLanguage(uint64_t result, CFStringRef str, CFRange range, uint64_t a4)
{
  v5 = range.location < 0 || range.length <= 0 || str == 0;
  v6 = !v5;
  *(result + 40) = v6;
  *(result + 88) = 0;
  if (!v5)
  {
    length = range.length;
    location = range.location;
    v10 = result;
    v11 = *(result + 16);
    if (v11)
    {
      CFRelease(v11);
      *(v10 + 16) = 0;
    }

    if ((*(v10 + 67) & 0x80) != 0)
    {
      *(v10 + 16) = CFRetain(str);
      *(v10 + 24) = 0;
    }

    else
    {
      v14.location = location;
      v14.length = length;
      *(v10 + 16) = CFStringCreateWithSubstring(0, str, v14);
      *(v10 + 24) = location;
    }

    *(v10 + 32) = length;
    v12 = *(v10 + 48);

    return NLTokenizerSetString(v12);
  }

  return result;
}

uint64_t NLTokenizerSetString(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 40))();
    }
  }

  return result;
}

void CoreNLP::Tagger::setString(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = -1;
  CoreNLP::TaggerContext::setString(a1[4], a2, a3, a4, a5);
}

void CoreNLP::TaggerContext::setString(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, int a5)
{
  v8 = theString;
  v10 = *(a1 + 8);
  if (v10 != theString)
  {
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 8) = 0;
    }

    if (v8)
    {
      if ((*(a1 + 3) & 0x80) != 0)
      {
        Copy = CFRetain(v8);
      }

      else
      {
        Copy = CFStringCreateCopy(0, v8);
      }

      v8 = Copy;
      *(a1 + 8) = Copy;
    }
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 36) = a5;
  if (v8)
  {
    v12 = a3 < 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  *(a1 + 32) = v13;
}

const __CFString *CoreNLP::StringBuffer::setString(const __CFString **this, CFStringRef theString, CFRange a3, int a4)
{
  length = a3.length;
  location = a3.location;
  v7 = *this;
  if (v7 != theString)
  {
    if (v7)
    {
      CFRelease(v7);
      *this = 0;
    }

    if (theString)
    {
      if (a4)
      {
        Copy = CFRetain(theString);
      }

      else
      {
        Copy = CFStringCreateCopy(0, theString);
      }

      *this = Copy;
    }
  }

  this[1] = location;
  this[2] = length;
  result = this[3];
  this[3] = 0;
  if (result)
  {
    v12 = *(result->isa + 1);

    return v12();
  }

  return result;
}

void CoreNLP::WordDispatchTagger::setString(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, uint64_t a5)
{
  v5 = a5;
  CoreNLP::Tagger::setString(a1, a2, a3, a4, a5);
  v22.location = a3;
  v22.length = a4;
  CoreNLP::StringBuffer::setString((a1 + 168), a2, v22, **(a1 + 32) >> 31);
  *(a1 + 128) = 0;
  *(a1 + 208) = 0;
  *(a1 + 144) = xmmword_19D27D570;
  *(a1 + 160) = 0;
  v10 = *(a1 + 32);
  if (v10[4])
  {
    v11 = *v10;
    if ((v11 & 0x40000) == 0)
    {
      if ((v11 & 0x20000) == 0)
      {
        goto LABEL_4;
      }

      v24.location = a3;
      v24.length = a4;
      v17 = CoreNLP::DefaultSubWordTagger::needSpeciallyHandleCJPersonName(*(a1 + 48), a2, v24);
      *(a1 + 160) = v17;
      if (v17)
      {
        return;
      }

      v25.location = a3;
      v25.length = a4;
      if (CoreNLP::NLLangid::isThaiString(*(a1 + 96), a2, v25))
      {
        v12 = 31;
        *(*(a1 + 32) + 36) = 31;
      }

      else
      {
LABEL_4:
        if (v5 >= 2)
        {
          v13 = *(a1 + 32);
          v12 = *(v13 + 36);
        }

        else
        {
          v23.location = a3;
          v23.length = a4;
          v12 = CoreNLP::WordDispatchTagger::identifyLanguage(a1, a2, v23);
          v13 = *(a1 + 32);
          *(v13 + 36) = v12;
        }

        v18 = *v13 & 0x800000;
        if (v12 != 31 && v18 != 0)
        {
          SubWordTagger = (a1 + 48);
LABEL_23:
          CoreNLP::WordDispatchTagger::setStringToSubWordTagger(a1, a2, a3, a4, SubWordTagger);
          *(a1 + 40) = *SubWordTagger;
          return;
        }
      }

      SubWordTagger = CoreNLP::WordDispatchTagger::getSubWordTagger(a1, v12);
      goto LABEL_23;
    }

    v16.location = a3;
    v16.length = a4;

    CoreNLP::WordDispatchTagger::setStringInPossibleSubWordTaggers(a1, a2, v16, v5, NAN);
  }

  else
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = *(*v14 + 40);

      v15();
    }
  }
}

void CoreNLP::WordDispatchTagger::setStringToSubWordTagger(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, void *a5)
{
  if ((*(**a5 + 152))() && (*(*(a1 + 32) + 2) & 2) != 0)
  {
    v20.location = a3;
    v20.length = a4;
    v16 = CFStringCreateWithSubstring(0, a2, v20);
    if (v16)
    {
      v17 = v16;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v16);
      CFRelease(v17);
      if (MutableCopy)
      {
        v22.location = 0;
        v22.length = a4;
        CFStringFindAndReplace(MutableCopy, @"-", @"a", v22, 0);
        v23.location = 0;
        v23.length = a4;
        CFStringFindAndReplace(MutableCopy, @"@", @"a", v23, 0);
        CoreNLP::TaggerContext::setString(*(a1 + 32), MutableCopy, 0, a4, *(*(a1 + 32) + 36));
        v21.location = 0;
        v21.length = a4;
        CoreNLP::StringBuffer::setString((a1 + 168), MutableCopy, v21, 0);
        (*(**a5 + 32))(*a5, MutableCopy, 0, a4);

        CFRelease(MutableCopy);
      }
    }
  }

  else
  {
    if (((*(**a5 + 152))() & 1) != 0 || a4 < 1025 || ((v10 = *(*(a1 + 32) + 36), v11 = v10 > 0x36, v12 = (1 << v10) & 0x40000000300030, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
    {
      v15 = *(**a5 + 32);
    }

    else
    {
      *(a1 + 208) = 1;
      v14 = *(a1 + 200);
      if (!v14)
      {
        operator new();
      }

      (*(*v14 + 40))(v14, a2, a3, a4, *(*(a1 + 32) + 36));
      (*(**(a1 + 200) + 128))(*(a1 + 200));
      v15 = *(**a5 + 32);
    }

    v15();
  }
}

uint64_t CoreNLP::DefaultSubWordTagger::setString(CoreNLP::DefaultSubWordTagger *this, const __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  CoreNLP::SubWordTagger::setString(this, a2, a3);
  result = (*(**(this + 8) + 16))(*(this + 8), a2, location, length);
  *(this + 11) = *(this + 10);
  *(this + 13) = 0;
  return result;
}

void *CoreNLP::SubWordTagger::setString(void *this, const __CFString *a2, CFRange a3)
{
  this[4] = 0;
  this[5] = 0;
  this[3] = -1;
  return this;
}

UText *CoreNLP::ICUTextBreak::setString(CoreNLP::ICUTextBreak *this, CFStringRef theString, CFRange range)
{
  length = range.length;
  location = range.location;
  result = *(this + 8);
  if (result)
  {
    CFRelease(result);
    result = *(this + 9);
    *(this + 8) = 0;
    *(this + 9) = 0;
    if (result)
    {
      result = (*(*&result->magic + 8))(result);
    }
  }

  *(this + 1) = xmmword_19D27D570;
  *(this + 80) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = -1;
  if (!theString || location < 0 || !*(this + 1))
  {
    return result;
  }

  *(this + 2) = location;
  *(this + 3) = length;
  status = U_ZERO_ERROR;
  if ((*(*(this + 7) + 3) & 0x80) != 0 && !location && length == CFStringGetLength(theString))
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (CStringPtr)
    {
      v9 = utext_openUTF8(0, CStringPtr, -1, &status);
LABEL_14:
      v13 = v9;
      if (status >= U_ILLEGAL_ARGUMENT_ERROR && v9)
      {
        utext_close(v9);
      }

      else if (v9)
      {
        *(this + 80) = 1;
        *(this + 8) = CFRetain(theString);
LABEL_21:
        status = U_ZERO_ERROR;
        ubrk_setUText();
        return utext_close(v13);
      }

      goto LABEL_19;
    }

    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      v11 = CharactersPtr;
      v12 = CFStringGetLength(theString);
      v9 = utext_openUChars(0, v11, v12, &status);
      goto LABEL_14;
    }
  }

LABEL_19:
  v15.location = location;
  v15.length = length;
  result = CFStringCreateWithSubstring(0, theString, v15);
  *(this + 8) = result;
  if (result)
  {
    result = CFStringOpenUText();
    v13 = result;
    if (result)
    {
      goto LABEL_21;
    }
  }

  return result;
}

UText *CoreNLP::ICUTextBreakWithCustomizedRules::setString(CoreNLP::ICUTextBreakWithCustomizedRules *this, const __CFString *a2, CFRange a3)
{
  result = CoreNLP::ICUTextBreak::setString(this, a2, a3);
  *(this + 13) = 0;
  return result;
}

void *CoreNLP::WordDispatchTagger::getNextTokenFromCurrentSubWordTagger(CoreNLP::WordDispatchTagger *this, CFRange *a2)
{
  result = *(this + 5);
  if (result)
  {
    v5 = *(this + 208);
    result = (*(*result + 136))(result);
    if (v5 == 1 && result == 0)
    {
      do
      {
        result = (*(**(this + 25) + 128))(*(this + 25));
        if (!result)
        {
          break;
        }

        (*(**(this + 5) + 32))(*(this + 5), *(*(this + 4) + 8), *result, result[1]);
        result = (*(**(this + 5) + 136))(*(this + 5), a2);
      }

      while (!result);
    }
  }

  return result;
}

__int128 *CoreNLP::WordDispatchTagger::getNextToken(CoreNLP::WordDispatchTagger *this)
{
  if (*(this + 128) == 1)
  {
    v2 = (*(**(this + 17) + 136))(*(this + 17), 0);
    if (v2)
    {
      NextTokenFromCurrentSubWordTagger = v2;
      if ((*(*(this + 4) + 2) & 1) == 0 || *v2 < *(this + 19) + *(this + 18))
      {
        return NextTokenFromCurrentSubWordTagger;
      }
    }

    *(this + 128) = 0;
    *(this + 9) = xmmword_19D27D570;
  }

  v9 = xmmword_19D27D570;
  NextTokenFromCurrentSubWordTagger = CoreNLP::WordDispatchTagger::getNextTokenFromCurrentSubWordTagger(this, &v9);
  v4 = *(this + 5);
  if (v4)
  {
    v5 = !(*(*v4 + 152))(v4) || NextTokenFromCurrentSubWordTagger == 0;
    if (!v5 && (NextTokenFromCurrentSubWordTagger[1] & 0x40001080) != 0)
    {
      SubWordTaggerForCJKSubToken = CoreNLP::WordDispatchTagger::getSubWordTaggerForCJKSubToken(this, NextTokenFromCurrentSubWordTagger);
      v7 = NextTokenFromCurrentSubWordTagger;
      if (!SubWordTaggerForCJKSubToken)
      {
        return NextTokenFromCurrentSubWordTagger;
      }

      goto LABEL_16;
    }
  }

  if (*(&v9 + 1))
  {
    SubWordTaggerForCJKSubToken = *(this + 6);
    v7 = &v9;
    if (SubWordTaggerForCJKSubToken)
    {
LABEL_16:
      *(this + 17) = SubWordTaggerForCJKSubToken;
      *(this + 9) = *v7;
      (*(*SubWordTaggerForCJKSubToken + 32))(SubWordTaggerForCJKSubToken, *(*(this + 4) + 8), *(this + 18), *(this + 19));
      *(this + 128) = 1;
      return (*(**(this + 17) + 136))(*(this + 17), 0);
    }
  }

  return NextTokenFromCurrentSubWordTagger;
}

uint64_t NLTokenizerGetNextToken(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 128))();
  }

  else
  {
    return 0;
  }
}

uint64_t *CoreNLP::DefaultSubWordTagger::getNextToken(CoreNLP::DefaultSubWordTagger *this, CFRange *a2)
{
  v17 = 0;
  if ((*(this + 72) & 1) == 0)
  {
    return (*(**(this + 8) + 56))(*(this + 8), &v17);
  }

  v3 = *(this + 10);
  v4 = *(this + 11);
  if (v3 != v4)
  {
    v5 = *(this + 13);
    if (v5 >= (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3)))
    {
      *(this + 11) = v3;
    }

    else
    {
      *(this + 13) = v5 + 1;
      if (v5 != -1)
      {
        v6 = (v3 + 24 * v5);
        v7 = *v6;
        *(this + 5) = *(v6 + 2);
        *(this + 24) = v7;
        return (this + 24);
      }
    }
  }

  *(this + 13) = 0;
  result = (*(**(this + 8) + 56))(*(this + 8), &v17);
  if (result)
  {
    while ((v17 & 1) != 0)
    {
      v16 = 0;
      v9 = *(this + 6);
      v18 = *result;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZN7CoreNLP20DefaultSubWordTagger12getNextTokenEP7CFRange_block_invoke;
      v15[3] = &__block_descriptor_tmp_4;
      v15[4] = this;
      CoreNLP::EnglishCompoundWord::enumerateDecomposedTokensWithSpecifiedStop(v9, v18, &v16, v15);
      v10 = *(this + 10);
      v11 = *(this + 11);
      if (v10 != v11)
      {
        v12 = *(this + 13);
        if (v12 >= (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3)))
        {
          *(this + 11) = v10;
        }

        else
        {
          *(this + 13) = v12 + 1;
          if (v12 != -1)
          {
            v13 = (v10 + 24 * v12);
            v14 = *v13;
            result = (this + 24);
            *(this + 5) = *(v13 + 2);
            *(this + 24) = v14;
            return result;
          }
        }
      }

      *(this + 13) = 0;
      result = (*(**(this + 8) + 56))(*(this + 8), &v17);
      if (!result)
      {
        break;
      }
    }
  }

  *(this + 112) = 1;
  return result;
}

char *CoreNLP::ICUTextBreakWithCustomizedRules::getNextToken(CoreNLP::ICUTextBreakWithCustomizedRules *this, BOOL *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    v5 = this + 32;
    if (MEMORY[0x19EAF9830](v3, 1, this + 32, this + 112))
    {
      if (*(this + 97) != 1)
      {
        if (*(this + 96) == 1)
        {
          CoreNLP::ICUTextBreakWithCustomizedRules::setTokenAttributes(this, *(this + 14), this + 6, a2);
        }

        goto LABEL_14;
      }

      v6 = 536872448;
      v7 = *(this + 14);
      *(this + 6) = v7 | 0x20000000;
      if ((v7 & 2) == 0 || (v7 & 8) == 0 && *(*(this + 7) + 60) != 13)
      {
        if ((v7 & 0x1000) == 0)
        {
LABEL_10:
          *a2 = 0;
LABEL_14:
          *(this + 4) += *(this + 13) + *(this + 2);
          return v5;
        }

        v6 = 536875008;
      }

      *(this + 6) = v7 | v6;
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t CoreNLP::WordDispatchTagger::reset(CoreNLP::WordDispatchTagger *this)
{
  result = *(this + 5);
  if (result)
  {
    return (*(*result + 144))();
  }

  return result;
}

uint64_t NLTokenizerReset(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 136))();
    }
  }

  return result;
}

void *CoreNLP::WordDispatchTagger::getSubWordTagger(uint64_t a1, unsigned int a2)
{
  if (!CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(a1, a2))
  {
    return (a1 + 48);
  }

  v7 = a2;
  v4 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>((a1 + 56), &v7);
  if (!v4)
  {
    if (a2 > 20)
    {
      switch(a2)
      {
        case 0x15u:
          operator new();
        case 0x1Fu:
          operator new();
        case 0x36u:
          operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 4u:
          operator new();
        case 5u:
          operator new();
        case 0x14u:
          operator new();
      }
    }

    v6 = a2;
    v7 = &v6;
    v4 = std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((a1 + 56), &v6, &std::piecewise_construct, &v7);
  }

  return v4 + 3;
}

uint64_t CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(uint64_t a1, unsigned int a2)
{
  if (CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(NLLanguageID)const::onceToken != -1)
  {
    CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage();
  }

  result = CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(NLLanguageID)const::supportedLanguages;
  if (CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(NLLanguageID)const::supportedLanguages)
  {
    v4 = a2;
    return std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(CoreNLP::WordDispatchTagger::hasSubWordTaggerForLanguage(NLLanguageID)const::supportedLanguages, &v4) != 0;
  }

  return result;
}

void *std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _NLStringTokenizerTokenizeWithTranscriptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  NLTokenizerReset(*(a1 + 48));
  if (a2 < 1)
  {
    return 0;
  }

  v12 = 0;
  for (i = (a3 + 8); ; i += 2)
  {
    NextToken = NLTokenizerGetNextToken(*(a1 + 48));
    if (!NextToken)
    {
      break;
    }

    v15 = NextToken[1];
    *(i - 1) = *(a1 + 24) + *NextToken;
    *i = v15;
    *(a4 + 8 * v12) = NextToken[2];
    if (a6)
    {
      *(a6 + 8 * v12) = NLTokenizerGetTranscriptionCharactersPtrOfCurrentToken(*(a1 + 48), NextToken, 0, a5);
    }

    ++v12;
    ++a5;
    if (a2 == v12)
    {
      return a2;
    }
  }

  return v12;
}

void CoreNLP::UStringPiece::~UStringPiece(CoreNLP::UStringPiece *this)
{
  *this = &unk_1F10AE618;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x19EAF8C70](v2, 0x1000C80BDFB0063);
  }

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AE618;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x19EAF8C70](v2, 0x1000C80BDFB0063);
  }
}

uint64_t CoreNLP::WordDispatchTagger::identifyLanguage(CoreNLP::WordDispatchTagger *this, const __CFString *a2, CFRange a3)
{
  v3 = *(this + 4);
  v4 = *(v3 + 60);
  if ((*v3 & 4) == 0 || (v4 <= 0x36 ? (v6 = ((1 << v4) & 0x40000000300030) == 0) : (v6 = 1), v6))
  {
    LanguageOfString = CoreNLP::NLLangid::getLanguageOfString(*(this + 12), a2, a3.location, a3.length, v4);
    if (LanguageOfString == 1)
    {
      return 10;
    }

    else
    {
      return LanguageOfString;
    }
  }

  return v4;
}

uint64_t CoreNLP::NLLangid::getLanguageOfString(uint64_t *a1, CFStringRef theString, CFIndex a3, CFIndex a4, uint64_t a5)
{
  v5 = a1[4];
  if (a1[5] - v5 == 4)
  {
    return *v5;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = a5;
  CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  if (v6 != 13 && CStringPtr)
  {
    return 10;
  }

  if (v6 == 20 && *(a1 + 2) == 20 && a4 <= 15)
  {
    v26.location = a3;
    v26.length = a4;
    if (!v12)
    {
      return 20;
    }

    v14 = CoreNLP::convertLanguageIDWithCode(v12, v13);
    v6 = v14;
    if (v14 <= 0x36 && ((1 << v14) & 0x40000000000032) != 0)
    {
      return 20;
    }

    return v6;
  }

  v27.location = a3;
  v27.length = a4;
  if (CoreNLP::NLLangid::cjTokenLengthInString(a1, theString, v27) != a4)
  {
    v29.location = a3;
    v29.length = a4;
    if (v20)
    {
      v22 = CoreNLP::convertLanguageIDWithCode(v20, v21);
      v23 = a1[4];
      v24 = a1[5];
      if (v23 == v24)
      {
        return v22;
      }

      v6 = 1;
      while (*v23 != v22)
      {
        if (++v23 == v24)
        {
          return v6;
        }
      }

      if (v23 != v24)
      {
        return v22;
      }
    }

    return 1;
  }

  if (v6 > 0x36 || ((1 << v6) & 0x40000000100030) == 0)
  {
    v28.location = a3;
    v28.length = a4;
    v17 = CoreNLP::convertLanguageIDWithCode(v15, v16);
    v6 = v17;
    v18 = a1[5];
    v19 = a1[4];
    if (v19 != v18)
    {
      while (*v19 != v17)
      {
        if (++v19 == v18)
        {
          return *(a1 + 2);
        }
      }

      if (v19 == v18)
      {
        return *(a1 + 2);
      }
    }

    if (v17 > 0x36 || ((1 << v17) & 0x40000000300030) == 0)
    {
      return *(a1 + 2);
    }
  }

  return v6;
}

uint64_t CoreNLP::NLLangid::cjTokenLengthInString(CoreNLP::NLLangid *this, const __CFString *a2, CFRange a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    if (!*(this + 3))
    {
      operator new();
    }

    operator new();
  }

  return CoreNLP::ICUTextBreakWithCustomizedRules::cjTokenLengthInString(v3, a2, a3);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIhEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke(void *a1)
{
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIhEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentCache(void)::cache;
  result = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentCache(void)::cache, a1[6]);
  if (v2 + 1 == result)
  {
    *(*(a1[5] + 8) + 24) = (*(a1[4] + 16))();
    v4 = a1[6];
    v5 = *(*(a1[5] + 8) + 24);
    v7 = v4;
    result = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v4, &std::piecewise_construct, &v7, &v6);
    *(result + 56) = v5;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = *(result + 56);
  }

  return result;
}

void sub_19D187848(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(*(v1 + 40) + 8) + 24) = 0;
  __cxa_end_catch();
  JUMPOUT(0x19D187804);
}

uint64_t CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentResource(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentResource();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIhEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke;
  block[3] = &unk_1E7625928;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getQueue(void)::queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t CoreNLP::ICUTextBreakWithCustomizedRules::ICUTextBreakWithCustomizedRules(uint64_t a1, const CoreNLP::TaggerContext *a2, CoreNLP *a3, char a4, char a5, const void *a6)
{
  CoreNLP::ICUTextBreak::ICUTextBreak(a1, a2);
  *v11 = &unk_1F10AF4F0;
  *(a1 + 88) = _Block_copy(a6);
  *(a1 + 96) = a4;
  *(a1 + 97) = a5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (a3)
  {
    CoreNLP::getFileSystemRepresentationFromCFURL();
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "com.apple.CoreNLP.defaultICURule");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZN7CoreNLP31ICUTextBreakWithCustomizedRulesC2ERKNS_13TaggerContextEPK7__CFURLbbU13block_pointerFv7CFRangeRbU13block_pointerFvP7NLTokenPbEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_22;
  v15[4] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getPersistentResource(&v17, v15))
  {
    v18 = 0;
    v12 = urbtok57_openBinaryRulesNoCopy();
    if (v18 >= 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    *(a1 + 8) = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D187A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  CoreNLP::ICUTextBreak::~ICUTextBreak(v25);
  _Unwind_Resume(a1);
}

double CoreNLP::ICUTextBreak::ICUTextBreak(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F10AEC68;
  *(a1 + 8) = 0;
  result = NAN;
  *(a1 + 16) = xmmword_19D27D570;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void *CoreNLP::SubWordTagger::SubWordTagger(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F10ACBF0;
  result[1] = a2;
  result[2] = a3;
  result[3] = -1;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *CoreNLP::EnglishCompoundWord::EnglishCompoundWord(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void CoreNLP::getLocaleCString(CoreNLP *this, const __CFLocale *a2, char *a3)
{
  if (this)
  {
    v5 = MEMORY[0x19EAF8290]();
    if (v5 && CFStringGetCString(v5, a2, a3, 0x600u))
    {
      return;
    }

    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E695E8A8];
  v7 = CFPreferencesCopyAppValue(@"AppleTextBreakLocale", *MEMORY[0x1E695E8A8]);
  if (v7)
  {
    v8 = v7;
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v7);
    if (CanonicalLanguageIdentifierFromString)
    {
      v10 = CanonicalLanguageIdentifierFromString;
      CString = CFStringGetCString(CanonicalLanguageIdentifierFromString, a2, a3, 0x600u);
      CFRelease(v10);
      CFRelease(v8);
      if (CString)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = CFPreferencesCopyAppValue(@"AppleLanguages", v6);
  if (v12)
  {
    v8 = v12;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v8) && CFArrayGetCount(v8) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      if (ValueAtIndex)
      {
        v15 = CFStringGetCString(ValueAtIndex, a2, a3, 0x600u);
        CFRelease(v8);
        if (v15)
        {
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    CFRelease(v8);
  }

LABEL_16:

  strlcpy(a2, "en", a3);
}

_BYTE *CoreNLP::DefaultSubWordTagger::resetICUTextBreak(_BYTE *this, const __CFLocale *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((this[72] & 1) == 0)
  {
    CoreNLP::getLocaleCString(a2, v2, 0x40);
    operator new();
  }

  return this;
}

uint64_t CoreNLP::ICUTextBreakWithBuiltInRules::ICUTextBreakWithBuiltInRules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  CoreNLP::ICUTextBreak::ICUTextBreak(a1, a2);
  *v6 = &unk_1F10AEFD0;
  *(v6 + 84) = v4;
  *(v6 + 88) = 0;
  *(a1 + 8) = ubrk_open();
  return a1;
}

CoreNLP::NLLangid *CoreNLP::NLLangid::NLLangid(CoreNLP::NLLangid *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *this = langid_create();
  v25[0] = xmmword_1E7625118;
  v25[1] = *off_1E7625128;
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], v25, 4, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v3 = v2;
    v4 = CFLocaleCopyPreferredLanguages();
    if (!v4)
    {
      v23 = 20;
LABEL_46:
      CFRelease(v3);
      goto LABEL_47;
    }

    v5 = v4;
    v6 = CFBundleCopyLocalizationsForPreferences(v3, v4);
    CFRelease(v5);
    CFRelease(v3);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        v27.location = 0;
        v27.length = Count;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v27, @"ja");
        if (FirstIndexOfValue == -1)
        {
          v10 = v8;
        }

        else
        {
          v10 = FirstIndexOfValue;
        }

        v28.location = 0;
        v28.length = v8;
        v11 = CFArrayGetFirstIndexOfValue(v6, v28, @"zh-Hans");
        if (v11 == -1)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        v29.location = 0;
        v29.length = v8;
        v13 = CFArrayGetFirstIndexOfValue(v6, v29, @"zh-Hant");
        if (v13 == -1)
        {
          v14 = v8;
        }

        else
        {
          v14 = v13;
        }

        v30.location = 0;
        v30.length = v8;
        v15 = CFArrayGetFirstIndexOfValue(v6, v30, @"ko");
        if (v15 == -1)
        {
          v16 = v8;
        }

        else
        {
          v16 = v15;
        }

        if (v12 < v10 && v12 < v14 && v12 < v16)
        {
          v23 = 4;
        }

        else if (v14 < v10 && v14 < v12 && v14 < v16)
        {
          v23 = 5;
        }

        else if (v16 < v14 && v16 < v12 && v16 < v10)
        {
          v23 = 21;
        }

        else
        {
          v23 = 20;
        }
      }

      else
      {
        v23 = 20;
      }

      v3 = v6;
      goto LABEL_46;
    }
  }

  v23 = 20;
LABEL_47:
  *(this + 2) = v23;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return this;
}

void *CoreNLP::StringBuffer::StringBuffer(void *this)
{
  *this = 0;
  this[1] = -1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNLP::TaggerContext::setLocale(CoreNLP::TaggerContext *this, const __CFLocale *a2)
{
  v4 = *(this + 5);
  if (v4 != a2)
  {
    if (v4)
    {
      CFRelease(v4);
      *(this + 5) = 0;
    }

    if (a2)
    {
      *(this + 5) = CFRetain(a2);
    }
  }

  result = CoreNLP::getLocaleLanguage(a2, a2);
  *(this + 15) = result;
  return result;
}

void sub_19D188268(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF8CA0](v3, 0x10E1C403762A6A8);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::unique_ptr<CoreNLP::GermanCompoundWord>::~unique_ptr[abi:ne200100]((v1 + 56));
  std::unique_ptr<CoreNLP::GermanCompoundWord>::~unique_ptr[abi:ne200100](v2);
  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void CoreNLP::WordTagger::createWordTagger(CoreNLP::WordTagger *this, CoreNLP::TaggerContext *a2)
{
  if ((*this & 4) != 0)
  {
    v2 = *(this + 15);
    v3 = v2 > 0x36;
    v4 = (1 << v2) & 0x40000000300030;
    if (v3 || v4 == 0)
    {
      operator new();
    }
  }

  operator new();
}

void CoreNLP::WordDispatchTagger::WordDispatchTagger(const CoreNLP::TaggerContext **this, CoreNLP::TaggerContext *a2, const __CFURL *a3)
{
  v3 = CoreNLP::WordTagger::WordTagger(this, a2);
  *v3 = &unk_1F10AD5B8;
  *(v3 + 7) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 22) = 1065353216;
  operator new();
}

void sub_19D18853C(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF8CA0](v3, 0x10E1C40108564E1);
  v6 = *(v1 + 200);
  *(v1 + 200) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  CoreNLP::StringBuffer::~StringBuffer((v4 + 8));
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 112) = v7;
    operator delete(v7);
  }

  std::unique_ptr<CoreNLP::NLLangid>::~unique_ptr[abi:ne200100]((v1 + 96));
  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::~__hash_table(v2);
  v8 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void *CoreNLP::WordTagger::WordTagger(CoreNLP::WordTagger *this, CoreNLP::TaggerContext *a2)
{
  result = CoreNLP::Tagger::Tagger(this, a2);
  *result = &unk_1F10AF6E0;
  return result;
}

void *CoreNLP::Tagger::Tagger(void *result, uint64_t a2)
{
  *result = &unk_1F10ADA40;
  result[1] = -1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a2;
  return result;
}

void sub_19D188BA4(_Unwind_Exception *a1)
{
  v5 = (v3 + 1175);
  v6 = -1184;
  v7 = v5;
  while (1)
  {
    v8 = *v7;
    v7 -= 32;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 32;
    if (!v6)
    {
      MEMORY[0x19EAF8CA0](v2, v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::pair<std::string const,int> const&>();
  }

  return result;
}

void sub_19D188DD4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::map<std::string,NLLanguageID>::map[abi:ne200100](uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::string>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_19D189328(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D189310);
}

CoreNLP::TaggerManager *CoreNLP::TaggerManager::TaggerManager(CoreNLP::TaggerManager *this, const __CFArray *a2, const __CFDictionary *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  CoreNLP::TaggerContext::TaggerContext((this + 64));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = -1;
  if (a3)
  {
    v6 = CFDictionaryGetValue(a3, kNLTaggerOptionLineBreakKey[0]) == *MEMORY[0x1E695E4D0];
    *(this + 56) = v6;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(this + 56);
    if (!a2)
    {
LABEL_9:
      *(this + 57) = 1;
      return this;
    }
  }

  if ((v6 & 1) != 0 || !CFArrayGetCount(a2))
  {
    goto LABEL_9;
  }

  if ((*(this + 57) & 1) == 0)
  {
    CoreNLP::CompositeTagger::createCompositeTagger((this + 64), a2, a3, v7);
  }

  return this;
}

void sub_19D189488(_Unwind_Exception *a1)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

CoreNLP::TaggingModelManager *CoreNLP::TaggingModelManager::TaggingModelManager(CoreNLP::TaggingModelManager *this)
{
  v140 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor((this + 48));
  *(this + 58) = this + 472;
  *(this + 59) = 0;
  *(this + 31) = 0u;
  *(this + 60) = 0;
  *(this + 61) = this + 496;
  *(this + 520) = 0u;
  *(this + 64) = this + 520;
  std::string::basic_string[abi:ne200100]<0>(v6, "PER");
  v7 = 67;
  std::string::basic_string[abi:ne200100]<0>(v8, "LOC");
  v9 = 68;
  std::string::basic_string[abi:ne200100]<0>(v10, "ORG");
  v11 = 69;
  std::string::basic_string[abi:ne200100]<0>(v12, "NONE");
  v13 = 70;
  std::map<std::string,int>::map[abi:ne200100](this + 67, v6, 4);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v12[i + 2]) < 0)
    {
      operator delete(v12[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "B-PER");
  v7 = 92;
  std::string::basic_string[abi:ne200100]<0>(v8, "I-PER");
  v9 = 93;
  std::string::basic_string[abi:ne200100]<0>(v10, "B-LOC");
  v11 = 94;
  std::string::basic_string[abi:ne200100]<0>(v12, "I-LOC");
  v13 = 95;
  std::string::basic_string[abi:ne200100]<0>(v14, "B-ORG");
  v15 = 96;
  std::string::basic_string[abi:ne200100]<0>(v16, "I-ORG");
  v17 = 97;
  std::string::basic_string[abi:ne200100]<0>(v18, "O");
  v19 = 98;
  std::map<std::string,int>::map[abi:ne200100](this + 70, v6, 7);
  for (j = 0; j != -28; j -= 4)
  {
    if (SHIBYTE(v18[j + 2]) < 0)
    {
      operator delete(v18[j]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "NONE");
  v7 = 0;
  std::string::basic_string[abi:ne200100]<0>(v8, "OTHER");
  v9 = 1;
  std::string::basic_string[abi:ne200100]<0>(v10, ".");
  v11 = 2;
  std::string::basic_string[abi:ne200100]<0>(v12, "?");
  v13 = 3;
  std::string::basic_string[abi:ne200100]<0>(v14, "!");
  v15 = 4;
  std::string::basic_string[abi:ne200100]<0>(v16, "“");
  v17 = 5;
  std::string::basic_string[abi:ne200100]<0>(v18, "”");
  v19 = 6;
  std::string::basic_string[abi:ne200100]<0>(v20, "(");
  v21 = 7;
  std::string::basic_string[abi:ne200100]<0>(v22, ")");
  v23 = 8;
  std::string::basic_string[abi:ne200100]<0>(v24, "-");
  v25 = 9;
  std::string::basic_string[abi:ne200100]<0>(v26, ",");
  v27 = 10;
  std::string::basic_string[abi:ne200100]<0>(v28, "--");
  v29 = 11;
  std::string::basic_string[abi:ne200100]<0>(v30, ":");
  v31 = 12;
  std::string::basic_string[abi:ne200100]<0>(v32, "SYM");
  v33 = 13;
  std::string::basic_string[abi:ne200100]<0>(v34, "ABB");
  v35 = 14;
  std::string::basic_string[abi:ne200100]<0>(v36, "ACK");
  v37 = 15;
  std::string::basic_string[abi:ne200100]<0>(v38, "CC");
  v39 = 16;
  std::string::basic_string[abi:ne200100]<0>(v40, "CD");
  v41 = 17;
  std::string::basic_string[abi:ne200100]<0>(v42, "CS");
  v43 = 18;
  std::string::basic_string[abi:ne200100]<0>(v44, "DT");
  v45 = 19;
  std::string::basic_string[abi:ne200100]<0>(v46, "DTO");
  v47 = 20;
  std::string::basic_string[abi:ne200100]<0>(v48, "DTP");
  v49 = 21;
  std::string::basic_string[abi:ne200100]<0>(v50, "DTW");
  v51 = 22;
  std::string::basic_string[abi:ne200100]<0>(v52, "EX");
  v53 = 23;
  std::string::basic_string[abi:ne200100]<0>(v54, "FW");
  v55 = 24;
  std::string::basic_string[abi:ne200100]<0>(v56, "IN");
  v57 = 25;
  std::string::basic_string[abi:ne200100]<0>(v58, "JJ");
  v59 = 26;
  std::string::basic_string[abi:ne200100]<0>(v60, "JJR");
  v61 = 27;
  std::string::basic_string[abi:ne200100]<0>(v62, "JJS");
  v63 = 28;
  std::string::basic_string[abi:ne200100]<0>(v64, "LS");
  v65 = 29;
  std::string::basic_string[abi:ne200100]<0>(v66, "NN");
  v67 = 30;
  std::string::basic_string[abi:ne200100]<0>(v68, "NNS");
  v69 = 31;
  std::string::basic_string[abi:ne200100]<0>(v70, "NNP");
  v71 = 32;
  std::string::basic_string[abi:ne200100]<0>(v72, "NNPS");
  v73 = 33;
  std::string::basic_string[abi:ne200100]<0>(v74, "PRE");
  v75 = 34;
  std::string::basic_string[abi:ne200100]<0>(v76, "PRP");
  v77 = 35;
  std::string::basic_string[abi:ne200100]<0>(v78, "PRPD");
  v79 = 36;
  std::string::basic_string[abi:ne200100]<0>(v80, "PRPR");
  v81 = 37;
  std::string::basic_string[abi:ne200100]<0>(v82, "PRPS");
  v83 = 38;
  std::string::basic_string[abi:ne200100]<0>(v84, "PRPT");
  v85 = 39;
  std::string::basic_string[abi:ne200100]<0>(v86, "RB");
  v87 = 40;
  std::string::basic_string[abi:ne200100]<0>(v88, "RBC");
  v89 = 41;
  std::string::basic_string[abi:ne200100]<0>(v90, "RBN");
  v91 = 42;
  std::string::basic_string[abi:ne200100]<0>(v92, "RBP");
  v93 = 43;
  std::string::basic_string[abi:ne200100]<0>(v94, "RBR");
  v95 = 44;
  std::string::basic_string[abi:ne200100]<0>(v96, "RBS");
  v97 = 45;
  std::string::basic_string[abi:ne200100]<0>(v98, "RBW");
  v99 = 46;
  std::string::basic_string[abi:ne200100]<0>(v100, "RP");
  v101 = 47;
  std::string::basic_string[abi:ne200100]<0>(v102, "RPP");
  v103 = 48;
  std::string::basic_string[abi:ne200100]<0>(v104, "TO");
  v105 = 49;
  std::string::basic_string[abi:ne200100]<0>(v106, "UH");
  v107 = 50;
  std::string::basic_string[abi:ne200100]<0>(v108, "URL");
  v109 = 51;
  std::string::basic_string[abi:ne200100]<0>(v110, "VB");
  v111 = 52;
  std::string::basic_string[abi:ne200100]<0>(v112, "VBC");
  v113 = 53;
  std::string::basic_string[abi:ne200100]<0>(v114, "VBD");
  v115 = 54;
  std::string::basic_string[abi:ne200100]<0>(v116, "VBF");
  v117 = 55;
  std::string::basic_string[abi:ne200100]<0>(v118, "VBG");
  v119 = 56;
  std::string::basic_string[abi:ne200100]<0>(v120, "VBI");
  v121 = 57;
  std::string::basic_string[abi:ne200100]<0>(v122, "VBM");
  v123 = 58;
  std::string::basic_string[abi:ne200100]<0>(v124, "VBN");
  v125 = 59;
  std::string::basic_string[abi:ne200100]<0>(v126, "VBP");
  v127 = 60;
  std::string::basic_string[abi:ne200100]<0>(v128, "VBR");
  v129 = 61;
  std::string::basic_string[abi:ne200100]<0>(v130, "VBS");
  v131 = 62;
  std::string::basic_string[abi:ne200100]<0>(v132, "VBT");
  v133 = 63;
  std::string::basic_string[abi:ne200100]<0>(v134, "VBZ");
  v135 = 64;
  std::string::basic_string[abi:ne200100]<0>(v136, "WP");
  v137 = 65;
  std::string::basic_string[abi:ne200100]<0>(v138, "WRB");
  v139 = 66;
  std::map<std::string,int>::map[abi:ne200100](this + 73, v6, 67);
  v4 = 268;
  do
  {
    if (*(&v6[v4 - 1] - 1) < 0)
    {
      operator delete(v6[v4 - 4]);
    }

    v4 -= 4;
  }

  while (v4 * 8);
  *(this + 152) = 3;
  *(this + 39) = 0u;
  *(this + 77) = this + 624;
  return this;
}

void sub_19D18A010(_Unwind_Exception *a1)
{
  v8 = (v3 + 2135);
  v9 = -2144;
  v10 = v8;
  while (1)
  {
    v11 = *v10;
    v10 -= 32;
    if (v11 < 0)
    {
      operator delete(*(v8 - 23));
    }

    v8 = v10;
    v9 += 32;
    if (!v9)
    {
      std::__tree<std::string>::destroy(v1 + 560, *(v1 + 568));
      std::__tree<std::string>::destroy(v1 + 536, *(v1 + 544));
      std::__tree<std::string>::destroy(v1 + 512, *v6);
      std::__tree<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>>::destroy(v1 + 488, *v5);
      std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::destroy(v1 + 464, *v4);
      CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor((v1 + 48));
      std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v2, *(v1 + 32));
      std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v1, *(v1 + 8));
      _Unwind_Resume(a1);
    }
  }
}

void sub_19D18A1D4()
{
  v1 = (v0 + 215);
  v2 = -224;
  v3 = v1;
  while (1)
  {
    v4 = *v3;
    v3 -= 32;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x19D18A174);
    }
  }
}

void sub_19D18A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v11 = *(v10 - 9);
    v10 -= 4;
    if (v11 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      JUMPOUT(0x19D18A174);
    }
  }
}

void sub_19D18A248()
{
  v1 = (v0 + 119);
  v2 = -128;
  v3 = v1;
  while (1)
  {
    v4 = *v3;
    v3 -= 32;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x19D18A180);
    }
  }
}

void sub_19D18A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v11 = *(v10 - 9);
    v10 -= 4;
    if (v11 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      JUMPOUT(0x19D18A180);
    }
  }
}

void CoreNLP::CompositeTagger::CompositeTagger(CoreNLP::CompositeTagger *this, CoreNLP::TaggerContext *a2, const __CFArray *a3, const __CFDictionary *a4)
{
  *this = &unk_1F10AF0E0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  CoreNLP::TaggingModelManager::TaggingModelManager((this + 24));
  *(this + 42) = 0u;
  *(this + 83) = this + 672;
  *(this + 87) = 0;
  *(this + 44) = 0u;
  *(this + 86) = this + 696;
  *(this + 180) = 3;
  *(this + 724) = 0;
  *(this + 91) = 0;
  CoreNLP::NLAttributedToken::NLAttributedToken((this + 736));
  *(this + 106) = this + 848;
  *(this + 107) = this + 848;
  *(this + 108) = 0;
  *(this + 109) = this + 872;
  *(this + 110) = this + 872;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 59) = 0u;
  if (a4 && CFDictionaryGetValue(a4, kNLTaggerOptionLSTMLanguageIdentifierKey[0]) == *MEMORY[0x1E695E4D0])
  {
    *(this + 724) = 1;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      valuePtr = CoreNLP::CompositeTagger::schemeType(this, ValueAtIndex);
      if (!valuePtr)
      {
        valuePtr = *(this + 176) + 100;
        v10 = valuePtr;
        CoreNLP::getUTF8StringFromCFString(__p, ValueAtIndex);
        v30[0] = __p;
        *(std::__tree<std::__value_type<std::string,CoreNLP::NLTagSchemeType>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::NLTagSchemeType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::NLTagSchemeType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 86, __p, &std::piecewise_construct, v30) + 56) = v10;
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(this + 664, &valuePtr, &valuePtr);
    }
  }

LABEL_10:
  *(*(this + 2) + 33) = *(this + 724);
  if (!a4)
  {
    goto LABEL_34;
  }

  if (CFDictionaryContainsKey(a4, kNLTaggerOptionCustomModelPropertyArrayKey[0]))
  {
    Value = CFDictionaryGetValue(a4, kNLTaggerOptionCustomModelPropertyArrayKey[0]);
    v12 = CFArrayGetCount(Value);
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        v14 = CFArrayGetValueAtIndex(Value, j);
        v15 = CFDictionaryGetValue(v14, kNLTaggerOptionCustomModelPropertyLanguageKey[0]);
        v17 = CoreNLP::languageIdForLanguage(v15, v16);
        v18 = CFDictionaryGetValue(v14, kNLTaggerOptionCustomModelPropertySchemeKey[0]);
        v19 = CoreNLP::CompositeTagger::schemeType(this, v18);
        v20 = CFDictionaryGetValue(v14, kNLTaggerOptionCustomModelPropertyModelPathKey[0]);
        CoreNLP::getUTF8StringFromCFString(__p, v20);
        v21 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v21 = __p[1];
        }

        if (v21)
        {
          CoreNLP::TaggingModelManager::setCustomModelPath(this + 24, v17, v19, __p);
        }

        v22 = CFDictionaryGetValue(v14, kNLTaggerOptionCustomModelPropertyGazetteerPathKey[0]);
        CoreNLP::getUTF8StringFromCFString(v30, v22);
        v23 = v31;
        v24 = v31;
        if ((v31 & 0x80u) != 0)
        {
          v23 = v30[1];
        }

        if (v23 && v19 == 7)
        {
          CoreNLP::TaggingModelManager::loadCustomGazetteer(this + 24, v30);
          valuePtr = 0;
          if (CFDictionaryContainsKey(v14, kNLTaggerOptionCustomModelPropertyGazetteerMaxTokenSizeKey[0]))
          {
            v25 = CFDictionaryGetValue(v14, kNLTaggerOptionCustomModelPropertyGazetteerMaxTokenSizeKey[0]);
            CFNumberGetValue(v25, kCFNumberIntType, &valuePtr);
            CoreNLP::TaggingModelManager::setCustomGazetteerMaxTokenSize(this + 24, valuePtr);
          }

          v24 = v31;
        }

        if ((v24 & 0x80) != 0)
        {
          operator delete(v30[0]);
        }

        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (CFDictionaryContainsKey(a4, kNLTaggerOptionRetainStringKey[0]))
  {
    v26 = CFDictionaryGetValue(a4, kNLTaggerOptionRetainStringKey[0]);
    v27 = 0x10000;
    if (v26 == *MEMORY[0x1E695E4D0])
    {
      v27 = 2147549184;
    }
  }

  else
  {
LABEL_34:
    v27 = 0x10000;
  }

  *(this + 46) = xmmword_19D27D570;
  **(this + 2) = v27;
  CoreNLP::WordTagger::createWordTagger(a2, v6);
}

void sub_19D18A71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10, void *a11, CoreNLP::SmartTokenizer **a12, uint64_t *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = v27[119];
  v27[119] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29, a2, a3, a4, a5, a6, a7, a8);
  }

  v30 = *a13;
  *a13 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30, a2, a3, a4, a5, a6, a7, a8);
  }

  CoreNLP::CompositeTagger::ParagraphCache::~ParagraphCache((v27 + 92));
  v31 = v27[91];
  v27[91] = 0;
  if (v31)
  {
    MEMORY[0x19EAF8CA0](v31, 0x60C4044C4A2DFLL);
  }

  std::__tree<std::string>::destroy((v27 + 86), *a10);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy((v27 + 83), *a11);
  CoreNLP::TaggingModelManager::~TaggingModelManager((v27 + 3));
  std::unique_ptr<CoreNLP::SmartTokenizer>::~unique_ptr[abi:ne200100](a12);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D18A8C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CoreNLP::TaggingFeatureExtractor *CoreNLP::TaggingFeatureExtractor::TaggingFeatureExtractor(CoreNLP::TaggingFeatureExtractor *this)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1F10AE280;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *&v3[16] = xmmword_19D27E600;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 10, &v3[16], &v3[32], 16);
  *(this + 13) = 0;
  qmemcpy(&v3[16], "AR!$%&'()*pqrstu", 17);
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 13, &v3[16], &v3[33], 17);
  *(this + 16) = 0;
  v3[16] = 74;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 16, &v3[16], &v3[17], 1);
  *(this + 19) = 0;
  qmemcpy(&v3[16], "ARSJKLMNOPQ", 11);
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 19, &v3[16], &v3[27], 11);
  *(this + 22) = 0;
  *&v3[16] = xmmword_19D27E629;
  *&v3[28] = *(&xmmword_19D27E629 + 12);
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 22, &v3[16], &v3[44], 28);
  *(this + 25) = 0;
  qmemcpy(v3, "ARS!$%&'()*pqrsARS!$%&'()*pqrs", 32);
  *&v3[28] = *(&xmmword_19D27E645 + 12);
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 25, &v3[16], &v3[44], 28);
  *(this + 28) = 0;
  *&v3[16] = *v3;
  *&v3[28] = *(&xmmword_19D27E645 + 12);
  *(this + 29) = 0;
  *(this + 30) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 28, &v3[16], &v3[44], 28);
  *(this + 31) = 0;
  *&v3[16] = xmmword_19D27E661;
  *&v3[32] = unk_19D27E671;
  v4 = 123;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 31, &v3[16], v5, 33);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 34, &v3[16], &v3[44], 28);
  v3[16] = 118;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 37, &v3[16], &v3[17], 1);
  v3[16] = 118;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 40, &v3[16], &v3[17], 1);
  v3[16] = -122;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 43, &v3[16], &v3[17], 1);
  *(this + 46) = this + 376;
  *(this + 47) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 48) = 0;
  *(this + 49) = this + 400;
  return this;
}

void sub_19D18AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char **a12, uint64_t a13, char **a14, uint64_t a15, char **a16)
{
  v25 = v17[40];
  if (v25)
  {
    v17[41] = v25;
    operator delete(v25);
  }

  v26 = v17[37];
  if (v26)
  {
    v17[38] = v26;
    operator delete(v26);
  }

  v27 = v17[34];
  if (v27)
  {
    v17[35] = v27;
    operator delete(v27);
  }

  v28 = *v18;
  if (*v18)
  {
    v17[32] = v28;
    operator delete(v28);
  }

  v29 = *v16;
  if (*v16)
  {
    v17[29] = v29;
    operator delete(v29);
  }

  v30 = *v23;
  if (*v23)
  {
    v17[26] = v30;
    operator delete(v30);
  }

  v31 = *v22;
  if (*v22)
  {
    v17[23] = v31;
    operator delete(v31);
  }

  v32 = *v21;
  if (*v21)
  {
    v17[20] = v32;
    operator delete(v32);
  }

  v33 = *v20;
  if (*v20)
  {
    v17[17] = v33;
    operator delete(v33);
  }

  v34 = *v19;
  if (*v19)
  {
    v17[14] = v34;
    operator delete(v34);
  }

  v35 = *a10;
  if (*a10)
  {
    v17[11] = v35;
    operator delete(v35);
  }

  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(a11, *a12);
  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(a13, *a14);
  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(a15, *a16);
  _Unwind_Resume(a1);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void CoreNLP::ICUTextBreakWithBuiltInRules::~ICUTextBreakWithBuiltInRules(CoreNLP::ICUTextBreakWithBuiltInRules *this)
{
  *this = &unk_1F10AEFD0;
  if (*(this + 1))
  {
    ubrk_close();
  }

  CoreNLP::ICUTextBreak::~ICUTextBreak(this);
}

{
  CoreNLP::ICUTextBreakWithBuiltInRules::~ICUTextBreakWithBuiltInRules(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::DefaultSubWordTagger::~DefaultSubWordTagger(CoreNLP::DefaultSubWordTagger *this)
{
  CoreNLP::DefaultSubWordTagger::~DefaultSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10ADC28;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<CoreNLP::GermanCompoundWord>::~unique_ptr[abi:ne200100](this + 7);
  std::unique_ptr<CoreNLP::GermanCompoundWord>::~unique_ptr[abi:ne200100](this + 6);

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

void CoreNLP::TaggerContext::~TaggerContext(CoreNLP::TaggerContext *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void CoreNLP::ICUTextBreak::~ICUTextBreak(CoreNLP::ICUTextBreak *this)
{
  *this = &unk_1F10AEC68;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void CoreNLP::ICUTextBreakWithCustomizedRules::~ICUTextBreakWithCustomizedRules(CoreNLP::ICUTextBreakWithCustomizedRules *this)
{
  CoreNLP::ICUTextBreakWithCustomizedRules::~ICUTextBreakWithCustomizedRules(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AF4F0;
  if (*(this + 1))
  {
    ubrk_close();
  }

  v2 = *(this + 11);
  if (v2)
  {
    _Block_release(v2);
  }

  CoreNLP::ICUTextBreak::~ICUTextBreak(this);
}

CoreNLP::SubWordTagger **std::unique_ptr<CoreNLP::GermanCompoundWord>::~unique_ptr[abi:ne200100](CoreNLP::SubWordTagger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::SubWordTagger::~SubWordTagger(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void CoreNLP::WordDispatchTagger::~WordDispatchTagger(CoreNLP::WordDispatchTagger *this)
{
  CoreNLP::WordDispatchTagger::~WordDispatchTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AD5B8;
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::StringBuffer::~StringBuffer((this + 168));
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  std::unique_ptr<CoreNLP::NLLangid>::~unique_ptr[abi:ne200100](this + 12);
  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::~__hash_table(this + 56);
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

void __NLStringTokenizerDeallocate(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      NLTokenizerRelease(v2);
    }

    v3 = a1[14];
    if (v3)
    {
      NLTokenizerRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[13];
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void *NLTokenizerRelease(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    CoreNLP::TaggerContext::~TaggerContext((v1 + 1));

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void CoreNLP::NLLangid::~NLLangid(CoreNLP::NLLangid *this)
{
  if (*this)
  {
    langid_dispose();
  }

  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  std::unique_ptr<CoreNLP::TaggerContext>::reset[abi:ne200100](this + 3, 0);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

CoreNLP::NLLangid **std::unique_ptr<CoreNLP::NLLangid>::~unique_ptr[abi:ne200100](CoreNLP::NLLangid **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::NLLangid::~NLLangid(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void CoreNLP::StringBuffer::~StringBuffer(CoreNLP::StringBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t **std::map<std::string,int>::map[abi:ne200100](uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

double CoreNLP::NLAttributedToken::NLAttributedToken(CoreNLP::NLAttributedToken *this)
{
  *(this + 4) = 0;
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  *(this + 27) = 1;
  return result;
}

uint64_t CoreNLP::CompositeTagger::schemeType(CoreNLP::CompositeTagger *this, __CFString *theString1)
{
  if (!theString1)
  {
    return 0;
  }

  if (CFStringCompare(theString1, kNLTagSchemeTokenType[0], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(theString1, kNLTagSchemeNamedEntity[0], 0) == kCFCompareEqualTo || CFStringCompare(theString1, kNLTagSchemeNamedEntityOrLexicalClass[0], 0) == kCFCompareEqualTo)
  {
    return 7;
  }

  if (CFStringCompare(theString1, kNLTagSchemeLexicalClass[0], 0) == kCFCompareEqualTo || CFStringCompare(theString1, kNLTagSchemeInternalClass[0], 0) == kCFCompareEqualTo || CFStringCompare(theString1, kNLTagSchemeLemma[0], 0) == kCFCompareEqualTo)
  {
    return 6;
  }

  if (CFStringCompare(theString1, kNLTagSchemeLanguage[0], 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(theString1, kNLTagSchemeScript[0], 0) == kCFCompareEqualTo)
  {
    return 4;
  }

  if (CFStringCompare(theString1, kNLTagSchemeSentiment[0], 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(theString1, kNLTagSchemeTopic[0], 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(theString1, kNLTagSchemeEmotion[0], 0) == kCFCompareEqualTo)
  {
    return 12;
  }

  CoreNLP::getUTF8StringFromCFString(__p, theString1);
  v4 = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>(this + 688, __p);
  if ((this + 696) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[14];
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_19D18B78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<CoreNLP::NLTagSchemeType>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,CoreNLP::NLTagSchemeType const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void CoreNLP::SentenceTagger::resetICUSentenceBreak(CoreNLP::SentenceTagger *this, const __CFLocale *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  CoreNLP::getLocaleCString(a2, v2, 0x40);
  uloc_setKeywordValue();
  operator new();
}

void CoreNLP::SentenceTagger::SentenceTagger(CoreNLP::SentenceTagger *this, const __CFLocale **a2)
{
  v3 = CoreNLP::Tagger::Tagger(this, a2);
  *v3 = &unk_1F10AEE18;
  *(v3 + 40) = (*a2 & 2) != 0;
  v3[6] = 0;
  CoreNLP::SentenceTagger::resetICUSentenceBreak(v3, a2[5]);
}

void sub_19D18BAA8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  *(v1 + 6) = 0;
  if (v3)
  {
    CoreNLP::LineBreakTagger::LineBreakTagger(v3);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIhEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned char>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void ___ZN7CoreNLP31ICUTextBreakWithCustomizedRulesC2ERKNS_13TaggerContextEPK7__CFURLbbU13block_pointerFv7CFRangeRbU13block_pointerFvP7NLTokenPbEE_block_invoke(uint64_t a1, const __CFString *a2)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }
  }

  else
  {
    CoreNLP::getFileSystemRepresentationFromBundleResource(&__p, @"tokruleLE.data");
  }

  CoreNLP::ReadOnlyFile<unsigned char>::create(&__p, "r", 1);
}

void sub_19D18BC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef CoreNLP::getFileSystemRepresentationFromBundleResource@<X0>(uint64_t *__return_ptr a1@<X8>, const __CFString *this@<X0>)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CoreNLP");
  result = CFBundleCopyResourceURL(BundleWithIdentifier, this, 0, 0);
  if (result)
  {
    operator new[]();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_19D18BDCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAF8CA0](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::ReadOnlyFile<unsigned char>::ReadOnlyFile(uint64_t a1, __int128 *a2, const std::string::value_type *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
  }

  if (a3[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (a3[23] < 0)
  {
    if (*(a3 + 1) != 1 || **a3 != 114)
    {
      if (*(a3 + 1) != 2)
      {
        goto LABEL_33;
      }

      a3 = *a3;
LABEL_15:
      if (*a3 == 11122)
      {
        *(a1 + 64) = 514;
        if (*(a2 + 23) >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        v12 = open(v11, 514, 384);
        goto LABEL_25;
      }

LABEL_33:
      exception = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 1, a1 + 16);
      goto LABEL_36;
    }
  }

  else
  {
    v10 = *(a3 + 23);
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    if (*a3 != 114)
    {
      goto LABEL_33;
    }
  }

  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v12 = open(v13, 0);
LABEL_25:
  v14 = v12;
  if (v12 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 2, a1 + 16);
    goto LABEL_36;
  }

  if (fstat(v12, &v20) < 0)
  {
    close(v14);
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 3, a1 + 16);
LABEL_36:
  }

  st_size = v20.st_size;
  *(a1 + 8) = v20.st_size;
  v21 = 0;
  v22 = st_size;
  fcntl(v14, 44, &v21);
  if (!a4)
  {
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v16 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v14, 0);
    if (v16 == -1)
    {
      close(v14);
      v19 = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(v19, 4, a1 + 16);
    }

    *a1 = v16;
  }

  close(v14);
  return a1;
}

void sub_19D18C0E0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_19D18C26C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

CoreNLP::UStringPiece *CoreNLP::UStringPiece::UStringPiece(CoreNLP::UStringPiece *this, CFStringRef theString, CFRange a3)
{
  *this = &unk_1F10AE618;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  if (theString)
  {
    location = a3.location;
    if (a3.location != -1)
    {
      length = a3.length;
      if (a3.length)
      {
        if (CFStringGetLength(theString) >= a3.location + a3.length)
        {
          *(this + 2) = location;
          *(this + 3) = length;
          CharactersPtr = CFStringGetCharactersPtr(theString);
          *v4 = CharactersPtr;
          if (!CharactersPtr)
          {
            operator new[]();
          }

          *v4 = &CharactersPtr[location];
        }
      }
    }
  }

  return this;
}

void sub_19D18C49C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    MEMORY[0x19EAF8C70](v3, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::ICUTextBreakWithCustomizedRules::cjTokenLengthInString(CoreNLP::ICUTextBreakWithCustomizedRules *this, const __CFString *a2, CFRange a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(this + 1))
  {
    return 0;
  }

  result = 0;
  if (a2 && a3.location != -1 && a3.length)
  {
    (*(*this + 16))(this);
    if (MEMORY[0x19EAF9830](*(this + 1), 4, v6, v5) == 1 && (v5[3] & 0x40) != 0)
    {
      return v7;
    }

    return 0;
  }

  return result;
}

uint64_t NLStringTokenizerAdvanceToNextToken(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  result = NLTokenizerGetNextToken(*(a1 + 48));
  *(a1 + 88) = result;
  if (result)
  {
    v3 = 17;
    if ((*(result + 16) & 0x20) == 0)
    {
      v3 = 1;
    }

    return (*(result + 16) >> 2) & 0x20 | *(result + 16) & 0xELL | v3;
  }

  return result;
}

uint64_t CoreNLP::ICUTextBreakWithBuiltInRules::getNextTokenForDataDetector(CoreNLP::ICUTextBreakWithBuiltInRules *this, BOOL *a2)
{
  LODWORD(v3) = *(this + 22);
  do
  {
    v4 = v3;
    v5 = ubrk_next();
    if (v5 == -1)
    {
      return 0;
    }

    v3 = v5;
    RuleStatus = ubrk_getRuleStatus();
  }

  while (!RuleStatus);
  if (RuleStatus - 500 > 0xFFFFFF37)
  {
    v9 = 128;
  }

  else
  {
    v7 = *(this + 7);
    v8 = *(v7 + 36);
    if (v8 != 21 && *(v7 + 60) != 21 || (*(v7 + 2) & 0x1880) == 0)
    {
      *(this + 4) = *(this + 2) + v4;
      *(this + 5) = v3 - v4;
      v12 = 32;
      if (RuleStatus >= 0x64)
      {
        v12 = 8 * (RuleStatus - 100 < 0x64);
      }

      if (*(this + 21) == 1)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      *(this + 6) = v13;
      if (v8 == 13)
      {
        v14 = *(CoreNLP::ICUTextBreak::getStringBufferPtr(this) + 2 * v4);
        if ((v14 - 65) < 0x1A || (v15 = v14 - 196, v15 <= 0x18) && ((1 << v15) & 0x1040001) != 0)
        {
          *(this + 6) |= 4uLL;
        }
      }

      *(this + 22) = v3;
      return this + 32;
    }

    v9 = 4096;
  }

  v16 = 0;
  *(this + 4) = CoreNLP::ICUTextBreakWithBuiltInRules::getCJTextRange(this, v3, &v16);
  *(this + 5) = v11;
  *(this + 22) = ubrk_following();
  *(this + 4) += *(this + 2);
  *(this + 6) = v9;
  return this + 32;
}

CoreNLP::TaggerContext *std::unique_ptr<CoreNLP::TaggerContext>::reset[abi:ne200100](CoreNLP::TaggerContext **a1, CoreNLP::TaggerContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::TaggerContext::~TaggerContext(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

char *CoreNLP::ICUTextBreakWithBuiltInRules::getNextToken(CoreNLP::ICUTextBreakWithBuiltInRules *this, BOOL *a2)
{
  if ((*(*(this + 7) + 2) & 0x80) != 0)
  {

    return CoreNLP::ICUTextBreakWithBuiltInRules::getNextTokenForDataDetector(this, a2);
  }

  else
  {
    v3 = ubrk_next();
    if (v3 == -1)
    {
      return 0;
    }

    v4 = v3;
    v5 = *(this + 22);
    *(this + 4) = *(this + 2) + v5;
    v6 = this + 32;
    *(this + 5) = v3 - v5;
    RuleStatus = ubrk_getRuleStatus();
    if (*(this + 21) == 1)
    {
      if (RuleStatus >= 0x64)
      {
        if (RuleStatus - 100 >= 0x64)
        {
          v8 = 128;
          if (((RuleStatus - 300 < 0xC8) & *(*(this + 7) + 2)) == 0)
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 8;
        }
      }

      else
      {
        v8 = 32;
      }
    }

    else
    {
      v8 = 0;
    }

    *(this + 6) = v8;
    *(this + 22) = v4;
    return v6;
  }
}

UText *CoreNLP::ICUTextBreakWithBuiltInRules::setString(CoreNLP::ICUTextBreakWithBuiltInRules *this, const __CFString *a2, CFRange a3)
{
  location = a3.location;
  result = CoreNLP::ICUTextBreak::setString(this, a2, a3);
  *(this + 22) = 0;
  if (a2)
  {
    if ((location & 0x8000000000000000) == 0)
    {
      result = ubrk_first();
      *(this + 22) = result;
    }
  }

  return result;
}

uint64_t anonymous namespace::identifyLanguage(uint64_t a1, const __CFString *a2, CFRange a3)
{
  CoreNLP::UStringPiece::UStringPiece(v6, a2, a3);
  v4 = 0;
  if (a1 && v7)
  {
    langid_reset();
    langid_consume_string();
    langid_highest_score();
    v4 = langid_languagecode();
  }

  CoreNLP::UStringPiece::~UStringPiece(v6);
  return v4;
}

void sub_19D18C9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNLP::UStringPiece::~UStringPiece(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void *std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__emplace_unique_key_args<long,long>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t NLStringTokenizerGetCurrentTokenRange(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(a1 + 24) + *v1;
  }

  else
  {
    return -1;
  }
}

void std::shared_ptr<CoreNLP::TaggerManager>::shared_ptr[abi:ne200100]<CoreNLP::TaggerManager,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19D18D038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<CoreNLP::TaggerManager>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CoreNLP::TaggerManager **std::unique_ptr<CoreNLP::TaggerManager>::~unique_ptr[abi:ne200100](CoreNLP::TaggerManager **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::TaggerManager::~TaggerManager(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

uint64_t CoreNLP::createTaggerManagerWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1ED6F28F8 = 0;
    *algn_1ED6F2908 = 0u;
    *&algn_1ED6F2908[16] = 0u;
    CoreNLP::_CFGetTypeID_TaggerManagerWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void *CoreNLP::_CFInit_TaggerManagerWrapper(void *this, const void *a2)
{
  this[3] = 0;
  this[4] = 0;
  this[2] = &unk_1F10AF358;
  return this;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t NLTokenizerGetTranscriptionCharactersPtrOfCurrentToken(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a1 && (v4 = *a1) != 0)
  {
    return (*(*v4 + 112))(v4, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t CoreNLP::WordDispatchTagger::getTranscriptionCharactersPtrOfCurrentToken(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    result = *(a1 + 136);
  }

  else
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }
  }

  return (*(*result + 112))();
}

uint64_t _NLStringTokenizerGetSubTokensOfCompound(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v7 = a2 - a1[3];
  if (v7 >= 0 && v7 + a3 <= a1[4])
  {
    v12[0] = a2 - a1[3];
    v12[1] = a3;
    v12[2] = a4;
    v9 = a1[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___NLStringTokenizerGetSubTokensOfCompound_block_invoke;
    v11[3] = &unk_1E7624CA0;
    v11[4] = &v13;
    v11[5] = a6;
    v11[6] = a7;
    v11[7] = a5;
    NLTokenizerEnumerateSubTokensOfToken(v9, v12, v11);
    v8 = v14[3];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

void *CoreNLP::WordDispatchTagger::enumerateSubTokensOfToken(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  v6 = *(a2 + 16);
  if ((v6 & 0x800) != 0)
  {
    v11[3] = v4;
    v11[4] = v5;
    v7 = *(a2 + 8);
    v11[0] = 0;
    v11[1] = v7;
    v11[2] = v6;
    v10 = 0;
    return (*(a4 + 16))(a4, v11, &v10);
  }

  if ((v6 & 0x40001080) != 0)
  {
    goto LABEL_4;
  }

  if ((*(result[4] + 2) & 8) != 0)
  {
    if ((~v6 & 0x30) == 0 || (*(a2 + 16) & 0x20000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    result = result[5];
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((v6 & 0x20000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = result[6];
LABEL_15:
  v9 = *(*result + 80);

  return v9();
}

CFStringRef CoreNLP::NLLangid::copyLanguageString(CoreNLP::NLLangid *this, const __CFString *a2, CFRange a3)
{
  location = a3.location;
  if (CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::initOnce != -1)
  {
    CoreNLP::NLLangid::copyLanguageString();
  }

  if (CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::langid)
  {
    v6 = CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::queue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN7CoreNLP8NLLangid18copyLanguageStringEPK10__CFString7CFRange_block_invoke_2;
  v9[3] = &unk_1E76250F8;
  v9[4] = &v10;
  v9[5] = this;
  v9[6] = a2;
  v9[7] = location;
  dispatch_sync(CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::queue, v9);
  v7 = v11[3];
  if (v7)
  {
    if (!strncmp(v11[3], "yue-Hant", 9uLL))
    {
      v7 = @"zh-Hant";
    }

    else if (LOBYTE(v7->isa) == 45 && BYTE1(v7->isa) == 45 && !BYTE2(v7->isa))
    {
      v7 = 0;
    }

    else
    {
      v7 = CFStringCreateWithCString(0, v7, 0x201u);
    }
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_19D18D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D18D68C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D18D73C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t NLTokenizerEnumerateSubTokensOfToken(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 88))(result, a2, 0, a3);
    }
  }

  return result;
}

uint64_t CoreNLP::EnglishCompoundWord::enumerateSubTokensOfTokenFromTrie(uint64_t a1, CFIndex *a2, uint64_t a3, uint64_t a4)
{
  {
    CoreNLP::EnglishCompoundWord::enumerateSubTokensOfTokenFromTrie();
  }

  {
    return 0;
  }

  v7.length = a2[1];
  {
    return 0;
  }

  v7.location = *a2;
  SubStringCharsOfRange = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(a1 + 8), v7);
  {
    return 0;
  }

  v9 = 2 * a2[1];
  if (v9)
  {
    v11 = 1;
    while (1)
    {
      v12 = *SubStringCharsOfRange++;
      v13 = *(v10 + 8 * v11) + v12 + 1;
      if (*(v10 + 8 * v13 + 4) != v11)
      {
        return 0;
      }

      v11 = v13;
      if (!--v9)
      {
        goto LABEL_12;
      }
    }
  }

  v13 = 1;
LABEL_12:
  v14 = (v10 + 8 * *(v10 + 8 * v13));
  if (v14[1] != v13)
  {
    return 0;
  }

  v15 = *v14;
  if ((v15 & 0x80000000) == 0)
  {
    return 0;
  }

  v17 = 0;
  v25 = -v15;
  v24 = 0;
  v18 = &v25 + 1;
  v19 = --v15;
  do
  {
    v21 = v17;
    if (v19)
    {
      v20 = *v18;
    }

    else
    {
      v20 = a2[1] - v17;
    }

    v22 = v20;
    v23 = 0;
    (*(a4 + 16))(a4, &v21, &v24);
    if (v24)
    {
      break;
    }

    v17 += v22;
    ++v18;
    ++v19;
  }

  while (v19 != 1);
  return 1;
}

unint64_t CoreNLP::EnglishCompoundWord::enumerateSubTokensOfToken(unint64_t a1, CFRange a2, int a4, uint64_t a5)
{
  location = a2.location;
  if (!a4 || (result = CoreNLP::EnglishCompoundWord::enumerateSubTokensOfTokenFromTrie(a1, a2.location, a2.length, a5), (result & 1) == 0))
  {
    a2.location = location;

    return CoreNLP::EnglishCompoundWord::enumerateSubTokensOfTokenWithCharacterType(a1, a2, a5);
  }

  return result;
}

unint64_t CoreNLP::EnglishCompoundWord::enumerateSubTokensOfTokenWithCharacterType(unint64_t result, CFRange a2, uint64_t a3)
{
  a2.length = *(a2.location + 8);
  if (!a2.length)
  {
    return result;
  }

  location = a2.location;
  v24 = 0;
  a2.location = *a2.location;
  result = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(result + 8), a2);
  if (!result || *(location + 8) < 1)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    result = *(v5 + 2 * v7);
    if (result > 0xFF)
    {
      result = u_hasBinaryProperty(result, UCHAR_BIDI_CONTROL);
      if (result)
      {
        v10 = 32;
      }

      else
      {
        result = u_charType(*(v5 + 2 * v7));
        if (((1 << result) & 0x3FF97000) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 4;
        }
      }
    }

    else
    {
    }

    if (v10 == v9)
    {
      if ((v9 & 8) != 0)
      {
        v8 = v7;
      }

      v11 = v26 + 1;
      v10 = v9;
    }

    else
    {
      if (v10 == 32 || v10 == 2)
      {
        if (v6)
        {
          if (v26 < 1)
          {
LABEL_23:
            result = (*(a3 + 16))(a3, &v25, &v24);
          }

          else
          {
            v12 = 0;
            v13 = v5 + 2 * v25;
            while (1)
            {
              result = u_hasBinaryProperty(*(v13 + 2 * v12), UCHAR_BIDI_CONTROL);
              if (result)
              {
                break;
              }

              if (++v12 >= v26)
              {
                goto LABEL_23;
              }
            }
          }

          if (v24)
          {
            return result;
          }
        }

        ++v6;
        v27 = 32;
LABEL_26:
        v25 = v7;
        v11 = 1;
        goto LABEL_36;
      }

      if ((v10 & 0x18) != 0)
      {
        if (v6)
        {
          if (v26 < 1)
          {
LABEL_33:
            result = (*(a3 + 16))(a3, &v25, &v24);
          }

          else
          {
            v14 = 0;
            v15 = v5 + 2 * v25;
            while (1)
            {
              result = u_hasBinaryProperty(*(v15 + 2 * v14), UCHAR_BIDI_CONTROL);
              if (result)
              {
                break;
              }

              if (++v14 >= v26)
              {
                goto LABEL_33;
              }
            }
          }

          if (v24)
          {
            return result;
          }
        }

        ++v6;
        v27 = (v10 >> 1) & 8;
        v25 = v7;
        v11 = 1;
        v8 = v7;
      }

      else
      {
        if ((v9 & 8) == 0)
        {
          if (v6)
          {
            if (v26 < 1)
            {
LABEL_44:
              result = (*(a3 + 16))(a3, &v25, &v24);
            }

            else
            {
              v16 = 0;
              v17 = v5 + 2 * v25;
              while (1)
              {
                result = u_hasBinaryProperty(*(v17 + 2 * v16), UCHAR_BIDI_CONTROL);
                if (result)
                {
                  break;
                }

                if (++v16 >= v26)
                {
                  goto LABEL_44;
                }
              }
            }

            if (v24)
            {
              return result;
            }
          }

          ++v6;
          v27 = 0;
          goto LABEL_26;
        }

        if (v8 == v25)
        {
          v11 = v26 + 1;
        }

        else
        {
          v18 = v7 - v8;
          v19 = v26 - (v7 - v8);
          v26 = v19;
          if (v6)
          {
            if (v19 < 1)
            {
LABEL_54:
              result = (*(a3 + 16))(a3, &v25, &v24);
            }

            else
            {
              v20 = 0;
              v21 = v5 + 2 * v25;
              while (1)
              {
                result = u_hasBinaryProperty(*(v21 + 2 * v20), UCHAR_BIDI_CONTROL);
                if (result)
                {
                  break;
                }

                if (++v20 >= v26)
                {
                  goto LABEL_54;
                }
              }
            }

            v18 = v7 - v8;
            if (v24)
            {
              return result;
            }
          }

          ++v6;
          v27 = 0;
          v25 = v8;
          v11 = v18 + 1;
        }
      }
    }

LABEL_36:
    v26 = v11;
    ++v7;
    v9 = v10;
  }

  while (v7 < *(location + 8));
  if (v6)
  {
    if (v11 < 1)
    {
      return (*(a3 + 16))(a3, &v25, &v24);
    }

    else
    {
      v22 = 0;
      v23 = v5 + 2 * v25;
      while (1)
      {
        result = u_hasBinaryProperty(*(v23 + 2 * v22), UCHAR_BIDI_CONTROL);
        if (result)
        {
          break;
        }

        if (++v22 >= v26)
        {
          return (*(a3 + 16))(a3, &v25, &v24);
        }
      }
    }
  }

  return result;
}

__CFString *CoreNLP::TaggerManager::copyTagAtIndex(uint64_t a1, uint64_t a2, CFIndex a3, __CFString *a4)
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (!v5 || CFStringGetLength(v5) <= a3 || (*(a1 + 57) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 144) <= 0)
  {
    v13.location = a3;
    v13.length = 1;
    CoreNLP::TaggerManager::loadStringForCompositeTagger(a1, v13);
    v10 = *(a1 + 128);
  }

  else
  {
    v10 = *(a1 + 128);
    if (v10 > a3 || *(a1 + 136) + v10 <= a3)
    {
      return 0;
    }
  }

  v11 = *(a1 + 40);

  return CoreNLP::CompositeTagger::copyTagAtIndex(v11, a2, a3 - v10, a4);
}

void ___ZN7CoreNLP11OrthographyC2EPK10__CFString7CFRangeb_block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x1E695E498];
    do
    {
      v10 = *(v1 + 4);
      __p = 0;
      v8 = 0;
      v9 = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, v1[3], v1[4], (v1[4] - v1[3]) >> 1);
      if (*(v2 + 96) == 1)
      {
        if ((atomic_load_explicit(&_ZGVZZN7CoreNLP11OrthographyC1EPK10__CFString7CFRangebEUb_E10identifier, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZN7CoreNLP11OrthographyC1EPK10__CFString7CFRangebEUb_E10identifier))
        {
          NLLanguageIdentifierCreate();
        }

        NLLanguageIdentifierConsumeCharacters(_ZZZN7CoreNLP11OrthographyC1EPK10__CFString7CFRangebEUb_E10identifier, __p, (v8 - __p) >> 1);
        TopHypothesis = NLLanguageIdentifierGetTopHypothesis(_ZZZN7CoreNLP11OrthographyC1EPK10__CFString7CFRangebEUb_E10identifier);
        NLLanguageIdentifierReset(_ZZZN7CoreNLP11OrthographyC1EPK10__CFString7CFRangebEUb_E10identifier);
      }

      else
      {
        v5 = CFStringCreateWithCharactersNoCopy(0, __p, (v8 - __p) >> 1, v3);
        v13.location = (v8 - __p) >> 1;
        v6 = CoreNLP::NLLangid::copyLanguageString(v5, 0, v13);
        if (v6)
        {
          if (CoreNLP::_languageIDForTag(__CFString const*)::onceToken != -1)
          {
            ___ZN7CoreNLP11OrthographyC2EPK10__CFString7CFRangeb_block_invoke_cold_1();
          }

          value = 0;
          if (CFDictionaryGetValueIfPresent(CoreNLP::_languageIDForTag(__CFString const*)::dictionary, v6, &value))
          {
            TopHypothesis = value;
          }

          else
          {
            TopHypothesis = 1;
          }

          CFRelease(v6);
        }

        else
        {
          TopHypothesis = 1;
        }

        CFRelease(v5);
      }

      v12[0] = &v10;
      *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>((v2 + 56), &v10, &std::piecewise_construct, v12) + 5) = TopHypothesis;
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      v1 = *v1;
    }

    while (v1);
  }
}

void sub_19D18E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN7CoreNLP8NLLangid18copyLanguageStringEPK10__CFString7CFRange_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t CoreNLP::StringBuffer::getSubStringCharsOfRange(CoreNLP::StringBuffer *this, CFRange a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    return v3 + 2 * (a2.location - *(this + 1));
  }

  else
  {
    return 0;
  }
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

CoreNLP::Orthography *CoreNLP::Orthography::Orthography(CoreNLP::Orthography *this, const __CFString *a2, CFRange a3, char a4)
{
  length = a3.length;
  location = a3.location;
  *this = &unk_1F10AF5F0;
  *(this + 2) = 28;
  *(this + 1) = 0u;
  v33 = this + 16;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  v8 = (this + 56);
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 96) = a4;
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v40 = 4;
  *v41 = 0;
  v44[0] = &v40;
  *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(this + 7, &v40, &std::piecewise_construct, v44) + 5) = 1;
  v39 = 3;
  v44[0] = &v39;
  *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(v8, &v39, &std::piecewise_construct, v44) + 5) = 1;
  v38 = 2;
  v44[0] = &v38;
  *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(v8, &v38, &std::piecewise_construct, v44) + 5) = 1;
  v37 = 1;
  v44[0] = &v37;
  *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(v8, &v37, &std::piecewise_construct, v44) + 5) = 1;
  v36 = 0;
  v44[0] = &v36;
  *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(v8, &v36, &std::piecewise_construct, v44) + 5) = 1;
  if (length < 1)
  {
    goto LABEL_39;
  }

  v9 = 0;
  v10 = location + length;
  v11 = 28;
  v12 = v33;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, location);
    v14 = CharacterAtIndex;
    v41[1] = CharacterAtIndex;
    if (((CharacterAtIndex + 9216) >> 10) > 0x3Eu)
    {
      v41[0] = CharacterAtIndex;
      goto LABEL_34;
    }

    v40 = CoreNLP::_scriptIDForCharacter(CharacterAtIndex, v41[0]);
    if (v40 != 28)
    {
      v44[0] = &v40;
      v16 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(v12, &v40, &std::piecewise_construct, v44);
      ++*(v16 + 5);
      v15 = v40;
LABEL_11:
      if (v15 <= 4)
      {
        v44[0] = &v40;
        v17 = std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID const&>,std::tuple<>>(v42, &v40, &std::piecewise_construct, v44);
        v18 = v17;
        v19 = (v17 + 3);
        v20 = v17[3];
        if (v40 != v11)
        {
          v21 = v17[4];
          v22 = v21 - v20;
          if (v21 == v20 || (v23 = v22 >> 1, (v22 >> 1) > 0x63))
          {
            v12 = v33;
          }

          else
          {
            v24 = v17[5];
            if (v21 >= v24)
            {
              v25 = v24 - v20;
              if (v25 <= v23 + 1)
              {
                v26 = v23 + 1;
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

              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>((v17 + 3), v27);
            }

            *v21 = 32;
            v12 = v33;
            v17[4] = (v21 + 2);
          }
        }

        if (v41[0] && (v17[4] - v20) <= 0xC7)
        {
          std::vector<unsigned short>::push_back[abi:ne200100](v19, v41);
          v20 = *v19;
        }

        if ((v18[4] - v20) <= 0xC7)
        {
          std::vector<unsigned short>::push_back[abi:ne200100](v19, &v41[1]);
        }

        v9 = 1;
      }

      goto LABEL_33;
    }

    if (v11 != 3 && ((v14 - 39) <= 0x38 && ((1 << (v14 - 39)) & 0x1000000000800C1) != 0 || v14 == 8217))
    {
      v40 = v11;
      v15 = v11;
      goto LABEL_11;
    }

LABEL_33:
    v41[0] = 0;
    v11 = v40;
LABEL_34:
    ++location;
  }

  while (location < v10);
  if (v9)
  {
    if (CoreNLP::_getOrthographyQueue(void)::onceToken != -1)
    {
      CoreNLP::Orthography::Orthography();
    }

    v28 = CoreNLP::_getOrthographyQueue(void)::queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN7CoreNLP11OrthographyC2EPK10__CFString7CFRangeb_block_invoke;
    block[3] = &__block_descriptor_tmp_23;
    block[4] = this;
    std::unordered_map<NLScriptID,std::vector<unsigned short>>::unordered_map(v35, v42);
    dispatch_sync(v28, block);
    std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::~__hash_table(v35);
  }

LABEL_39:
  v29 = *(this + 4);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v29 + 5);
      if (v31 > v30)
      {
        *(this + 2) = *(v29 + 4);
        v30 = v31;
      }

      v29 = *v29;
    }

    while (v29);
  }

  std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::~__hash_table(v42);
  return this;
}

void sub_19D18E7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(a11);
  _Unwind_Resume(a1);
}

CoreNLP::NLAttributedToken *CoreNLP::CompositeTagger::getAttributedTokenAtIndex(CFRange *this, unsigned int a2, CFIndex a3)
{
  if (a2 == 3)
  {
    return 0;
  }

  v6 = &this[46];
  location = this[46].location;
  v8 = this[46].length + location;
  if (location <= a3 && v8 > a3)
  {
    goto LABEL_107;
  }

  CoreNLP::CompositeTagger::resetParagraphCache(this);
  parBeginIndex = -1;
  parEndIndex = -1;
  v76.location = a3;
  v76.length = 0;
  CFStringGetParagraphBounds(*(this[1].location + 8), v76, &parBeginIndex, &parEndIndex, 0);
  if ((parBeginIndex & 0x8000000000000000) == 0 && parEndIndex >= parBeginIndex)
  {
    if (parBeginIndex <= a3 - 0x8000)
    {
      v10.location = a3 - 0x8000;
    }

    else
    {
      v10.location = parBeginIndex;
    }

    if (parEndIndex - v10.location >= 0x10000)
    {
      v10.length = 0x10000;
    }

    else
    {
      v10.length = parEndIndex - v10.location;
    }

    this[46] = v10;
    v11 = CFStringCreateWithSubstring(0, *(this[1].location + 8), v10);
    v72 = v11;
    v63 = v6;
    if (v11 && CoreNLP::isWhitespaceOrNewline(v11, v12))
    {
      p_length = &this[58].length;
      LODWORD(this[58].length) = 10;
LABEL_67:
      v64 = 0;
LABEL_68:
      (*(*this[59].location + 40))(this[59].location, *(this[1].location + 8), this[46].location, this[46].length);
      v31 = this[59].location;
      v32 = this[46].location;
      length = this[46].length;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 0x40000000;
      v70[2] = ___ZN7CoreNLP15CompositeTagger25getAttributedTokenAtIndexE15NLTokenizerUnitl_block_invoke;
      v70[3] = &__block_descriptor_tmp_11;
      v70[4] = this;
      v71 = v64;
      (*(*v31 + 56))(v31, v32, length, 0, v70);
      (*(*this[59].length + 40))(this[59].length, *(this[1].location + 8), this[46].location, this[46].length, LODWORD(this[58].length));
      v34 = this[59].length;
      v35 = this[46].location;
      v36 = this[46].length;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = ___ZN7CoreNLP15CompositeTagger25getAttributedTokenAtIndexE15NLTokenizerUnitl_block_invoke_2;
      v69[3] = &__block_descriptor_tmp_64;
      v69[4] = this;
      (*(*v34 + 56))(v34, v35, v36, 0, v69);
      if (this[55].length && this[54].location && *(this[55].location + 16) == *(this[53].length + 16) && *(this[54].length + 24) + *(this[54].length + 16) == *(this[53].location + 24) + *(this[53].location + 16))
      {
        if ((v64 & 1) == 0)
        {
          CoreNLP::CompositeTagger::updateWordAndSentenceBoundaries(this, v37);
        }
      }

      else
      {
        CoreNLP::CompositeTagger::resetParagraphCache(this);
      }

      v62 = p_length;
      v38 = this[55].location;
      __p = 0;
      v67 = 0;
      v68 = 0;
      for (i = this[53].length; i != &this[53]; i = i->length)
      {
        while (v38 != &this[54].length)
        {
          v40 = *(v38 + 16);
          v41 = i[1].location;
          if (v40 == -1 || v41 == -1)
          {
            break;
          }

          if (v40 < v41 || *(v38 + 24) + v40 > i[1].length + v41)
          {
            break;
          }

          v75[0] = (v38 + 16);
          if ((CoreNLP::skipTokenForOptions((v38 + 16), 4uLL) & 1) == 0)
          {
            std::vector<CoreNLP::NLAttributedToken *>::push_back[abi:ne200100](&__p, v75);
          }

          v38 = *(v38 + 8);
        }

        if ((v64 & 1) == 0)
        {
          CoreNLP::CompositeTagger::tagCurrentSentenceForAllSchemes(this, &__p);
        }

        if (((v67 - __p) >> 3) >= 1)
        {
          v44 = (((v67 - __p) >> 3) & 0x7FFFFFFF) - 1;
          while (1)
          {
            v45 = *(__p + v44);
            if ((*(v45 + 75) & 1) == 0)
            {
              v65 = 1;
              v75[0] = &v65;
              if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v45 + 24, &v65, &std::piecewise_construct, v75) + 10) != 6)
              {
                break;
              }
            }

            v47 = v44-- + 1;
            if (v47 <= 1)
            {
              goto LABEL_99;
            }
          }

          if (CoreNLP::isTerminator(v45, v46))
          {
            v65 = 1;
            v75[0] = &v65;
            *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v45 + 24, &v65, &std::piecewise_construct, v75) + 10) = 2;
          }
        }

LABEL_99:
        v67 = __p;
      }

      v6 = v63;
      CoreNLP::CompositeTagger::tagCurrentParagraph(this, v63);
      if (*v62 == 4)
      {
        CoreNLP::CompositeTagger::updateChineseWordBoundaries(this);
      }

      this[56].length = this[55].location;
      this[56].location = this[53].length;
      if (__p)
      {
        v67 = __p;
        operator delete(__p);
      }

      if (v72)
      {
        CFRelease(v72);
      }

      goto LABEL_106;
    }

    v14 = this[1].location;
    if (!*(v14 + 40))
    {
      CoreNLP::TaggerContext::setCurrentOrthographyForRange(v14, this[46]);
    }

    v15 = *(v14 + 60);
    p_length = &this[58].length;
    LODWORD(this[58].length) = v15;
    if (v15 != 4)
    {
      goto LABEL_67;
    }

    v16 = this[42].length;
    switch(v16)
    {
      case 3:
        v24 = this[42].location;
        if (!v24)
        {
          goto LABEL_67;
        }

        v25 = this + 42;
        v26 = &this[42];
        v27 = this[42].location;
        do
        {
          if (v27[7] >= 6)
          {
            v26 = v27;
          }

          v27 = *&v27[2 * (v27[7] < 6)];
        }

        while (v27);
        if (v26 == v25 || v26[7] > 6)
        {
          goto LABEL_67;
        }

        v28 = &this[42];
        v29 = this[42].location;
        do
        {
          if (v29[7] >= 3)
          {
            v28 = v29;
          }

          v29 = *&v29[2 * (v29[7] < 3)];
        }

        while (v29);
        if (v28 == v25 || v28[7] > 3)
        {
          goto LABEL_67;
        }

        v30 = &this[42];
        do
        {
          if (v24[7] >= 4)
          {
            v30 = v24;
          }

          v24 = *&v24[2 * (v24[7] < 4)];
        }

        while (v24);
        if (v30 == v25 || v30[7] >= 5)
        {
          goto LABEL_67;
        }

        break;
      case 2:
        v19 = this[42].location;
        if (!v19)
        {
          goto LABEL_67;
        }

        v20 = this + 42;
        v21 = &this[42];
        v22 = this[42].location;
        do
        {
          if (v22[7] >= 6)
          {
            v21 = v22;
          }

          v22 = *&v22[2 * (v22[7] < 6)];
        }

        while (v22);
        if (v21 == v20 || v21[7] > 6)
        {
          goto LABEL_67;
        }

        v23 = &this[42];
        do
        {
          if (v19[7] >= 1)
          {
            v23 = v19;
          }

          v19 = *&v19[2 * (v19[7] < 1)];
        }

        while (v19);
        if (v23 == v20 || v23[7] >= 2)
        {
          goto LABEL_67;
        }

        break;
      case 1:
        v17 = this[42].location;
        if (!v17)
        {
          goto LABEL_67;
        }

        v18 = &this[42];
        do
        {
          if (v17[7] >= 6)
          {
            v18 = v17;
          }

          v17 = *&v17[2 * (v17[7] < 6)];
        }

        while (v17);
        if (v18 == &this[42] || v18[7] >= 7)
        {
          goto LABEL_67;
        }

        break;
      default:
        goto LABEL_67;
    }

    v64 = 1;
    goto LABEL_68;
  }

LABEL_106:
  location = this[46].location;
  v8 = this[46].length + location;
LABEL_107:
  if (location > a3 || v8 <= a3)
  {
    return 0;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  if (a2 == 1)
  {
    v50 = 896;
  }

  else
  {
    v50 = 904;
  }

  v51 = 872;
  if (a2 == 1)
  {
    v51 = 848;
  }

  v52 = this + v51;
  v53 = *(&this->location + v50);
  v54 = *(v53 + 2);
  if (v54 <= a3)
  {
    if (*(v53 + 3) + v54 <= a3 && v53 != v52)
    {
      do
      {
        v53 = *(v53 + 1);
      }

      while (*(v53 + 3) + *(v53 + 2) <= a3 && v53 != v52);
      *(&this->location + v50) = v53;
    }
  }

  else
  {
    v55 = *(v52 + 1);
    do
    {
      if (v53 == v55)
      {
        break;
      }

      v53 = *v53;
      *(&this->location + v50) = v53;
    }

    while (*(v53 + 2) > a3);
  }

  if (v53 == v52)
  {
    return 0;
  }

  v59 = *(v53 + 2);
  v60 = *(v53 + 3);
  v58 = v53 + 16;
  if (v60 + v59 > a3 && v59 <= a3)
  {
    return v58;
  }

  else
  {
    return 0;
  }
}

__CFString *CoreNLP::CompositeTagger::createTag(CoreNLP::CompositeTagger *a1, uint64_t a2, CoreNLP::NLAttributedToken *a3, __CFString *theString1)
{
  v4 = theString1;
  v6 = a2;
  v8 = CoreNLP::CompositeTagger::schemeType(a1, theString1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  v11 = !v10;
  v12 = (a3 + 32);
  while (1)
  {
    if (v11)
    {
      v13 = CoreNLP::CompositeTagger::schemeType(a1, v4);
      if (CFEqual(v4, kNLTagSchemeNamedEntityOrLexicalClass[0]))
      {
        v14 = 212;
      }

      else
      {
        v15 = CFEqual(v4, kNLTagSchemeLemma[0]);
        v14 = v13 + 201;
        if (v15)
        {
          v14 = 211;
        }
      }

      v16 = *v12;
      if (*v12)
      {
        v17 = (a3 + 32);
        do
        {
          if (*(v16 + 32) >= v14)
          {
            v17 = v16;
          }

          v16 = *(v16 + 8 * (*(v16 + 32) < v14));
        }

        while (v16);
        if (v17 != v12 && v14 >= *(v17 + 8))
        {
          CoreNLP::TaggingModelManager::tagToLabel(a1 + 3, *(v17 + 10), 7, *(a1 + 234), &cStr);
          if ((cStr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_cStr = &cStr;
          }

          else
          {
            p_cStr = cStr.__r_.__value_.__r.__words[0];
          }

          v22 = CFStringCreateWithCString(0, p_cStr, 0x8000100u);
          if ((SHIBYTE(cStr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return v22;
          }

          goto LABEL_106;
        }
      }
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 3)
    {

      return CoreNLP::CompositeTagger::createLanguageTag(a1, v6, a3);
    }

    if (!a3)
    {
      return 0;
    }

    v18 = CFStringCompare(v4, kNLTagSchemeLemma[0], 0);
    if (!v18)
    {

      return CoreNLP::CompositeTagger::createLemmaTag(a1, v6, a3);
    }

    v19 = *v12;
    if (!*v12)
    {
      goto LABEL_43;
    }

    v20 = (a3 + 32);
    do
    {
      if (*(v19 + 32) >= v9)
      {
        v20 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 32) < v9));
    }

    while (v19);
    if (v20 == v12 || v9 < *(v20 + 8))
    {
LABEL_43:

      return CoreNLP::CompositeTagger::createFixedTag(v18, a3, v4);
    }

    v21 = *(v20 + 10);
    if (CFStringCompare(v4, kNLTagSchemeTokenType[0], 0) == kCFCompareEqualTo)
    {
      if ((v21 - 89) > 2 || (v22 = CFRetain(*off_1E76254D0[v21 - 89])) == 0)
      {
        v24 = *(a3 + 9);
        if ((v24 & 0x800000000) == 0 && (v24 & 0x400000) != 0)
        {
          v25 = NLTokenTypePunctuation;
        }

        else
        {
          v25 = NLTokenTypeOther;
        }

LABEL_73:
        EmotionLabelFromTagID = *v25;
LABEL_74:

        return CFRetain(EmotionLabelFromTagID);
      }

      return v22;
    }

    if (CFStringCompare(v4, kNLTagSchemeInternalClass[0], 0) == kCFCompareEqualTo)
    {
      v41 = 1;
      cStr.__r_.__value_.__r.__words[0] = &v41;
      v26 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a3 + 24, &v41, &std::piecewise_construct, &cStr);
      if (*(v26 + 10) == 91)
      {
        CoreNLP::TaggingModelManager::tagToLabel(a1 + 3, v21, 6, *(a1 + 234), &cStr);
        v27 = HIBYTE(cStr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(cStr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (*(&cStr.__r_.__value_.__s + 23))
          {
            v28 = &cStr;
            goto LABEL_101;
          }

LABEL_103:
          v39 = NLLexicalClassOtherWord;
LABEL_104:
          v22 = *v39;
LABEL_105:
          if ((v27 & 0x80) == 0)
          {
            return v22;
          }

LABEL_106:
          operator delete(cStr.__r_.__value_.__l.__data_);
          return v22;
        }

        if (!cStr.__r_.__value_.__l.__size_)
        {
          goto LABEL_103;
        }

        v28 = cStr.__r_.__value_.__r.__words[0];
LABEL_101:
        v38 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v28, 0x8000100u);
LABEL_102:
        v22 = v38;
        v27 = HIBYTE(cStr.__r_.__value_.__r.__words[2]);
        goto LABEL_105;
      }

      return CoreNLP::CompositeTagger::createFixedTag(v26, a3, v4);
    }

    if (CFStringCompare(v4, kNLTagSchemeLexicalClass[0], 0) == kCFCompareEqualTo)
    {
      v41 = 1;
      cStr.__r_.__value_.__r.__words[0] = &v41;
      v26 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a3 + 24, &v41, &std::piecewise_construct, &cStr);
      if (*(v26 + 10) != 91)
      {
        return CoreNLP::CompositeTagger::createFixedTag(v26, a3, v4);
      }

      switch(v21)
      {
        case 16:
        case 18:
          v29 = NLLexicalClassConjunction;
          break;
        case 17:
        case 29:
          v29 = NLLexicalClassNumber;
          break;
        case 19:
        case 20:
        case 21:
        case 22:
          v29 = NLLexicalClassDeterminer;
          break;
        case 23:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 65:
        case 66:
          v29 = NLLexicalClassPronoun;
          break;
        case 25:
          v29 = NLLexicalClassPreposition;
          break;
        case 26:
        case 27:
        case 28:
          v29 = NLLexicalClassAdjective;
          break;
        case 30:
        case 31:
        case 32:
        case 33:
          v29 = NLLexicalClassNoun;
          break;
        case 34:
        case 43:
        case 47:
        case 48:
        case 49:
          v29 = NLLexicalClassParticle;
          break;
        case 40:
        case 41:
        case 42:
        case 45:
        case 46:
          v29 = NLLexicalClassAdverb;
          break;
        case 50:
          v29 = NLLexicalClassInterjection;
          break;
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
          v29 = NLLexicalClassVerb;
          break;
        default:
          return CoreNLP::CompositeTagger::createFixedTag(v26, a3, v4);
      }

      return CFRetain(*v29);
    }

    if (CFStringCompare(v4, kNLTagSchemeNamedEntity[0], 0) == kCFCompareEqualTo)
    {
      switch(v21)
      {
        case 'E':
LABEL_71:
          v25 = NLNamedEntityOrganizationName;
          goto LABEL_73;
        case 'D':
LABEL_72:
          v25 = NLNamedEntityPlaceName;
          goto LABEL_73;
        case 'C':
LABEL_70:
          v25 = NLNamedEntityPersonalName;
          goto LABEL_73;
      }

      v41 = 1;
      cStr.__r_.__value_.__r.__words[0] = &v41;
      v26 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a3 + 24, &v41, &std::piecewise_construct, &cStr);
      if (*(v26 + 10) == 91)
      {
        return NLLexicalClassOtherWord[0];
      }

      return CoreNLP::CompositeTagger::createFixedTag(v26, a3, v4);
    }

    if (CFStringCompare(v4, kNLTagSchemeNamedEntityOrLexicalClass[0], 0))
    {
      if (CFStringCompare(v4, kNLTagSchemeSentiment[0], 0))
      {
        if (CFStringCompare(v4, kNLTagSchemeTopic[0], 0) == kCFCompareEqualTo)
        {
          switch(v21)
          {
            case 212:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Automotives";
              break;
            case 213:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Books";
              break;
            case 214:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Romance";
              break;
            case 215:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Pets";
              break;
            case 216:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Home";
              break;
            case 217:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Family";
              break;
            case 218:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Games";
              break;
            case 219:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Holidays";
              break;
            case 220:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Movies";
              break;
            case 221:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Politics";
              break;
            case 222:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Health";
              break;
            case 223:
              v36 = *MEMORY[0x1E695E480];
              v37 = "School";
              break;
            case 224:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Music";
              break;
            case 225:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Science";
              break;
            case 226:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Outdoors";
              break;
            case 227:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Party";
              break;
            case 228:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Others";
              break;
            case 229:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Restaurant";
              break;
            case 230:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Sports";
              break;
            case 231:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Television";
              break;
            case 232:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Shopping";
              break;
            case 233:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Travel";
              break;
            case 234:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Work";
              break;
            case 235:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Education";
              break;
            case 236:
              v36 = *MEMORY[0x1E695E480];
              v37 = "Technology";
              break;
            default:
              if (v21)
              {
                return 0;
              }

              v36 = *MEMORY[0x1E695E480];
              v37 = "Unknown";
              break;
          }

          return CFStringCreateWithFormat(v36, 0, @"%s", v37);
        }

        if (CFStringCompare(v4, kNLTagSchemeEmotion[0], 0) == kCFCompareEqualTo)
        {
          EmotionLabelFromTagID = CoreNLP::CompositeTagger::getEmotionLabelFromTagID(0, v21);
          goto LABEL_74;
        }

        if ((v9 - 100) > 0x64)
        {
          return 0;
        }

        CoreNLP::TaggingModelManager::tagToLabel(a1 + 3, v21, v9, *(a1 + 234), &cStr);
        v27 = HIBYTE(cStr.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
        {
          if (cStr.__r_.__value_.__l.__size_)
          {
            v31 = cStr.__r_.__value_.__r.__words[0];
            goto LABEL_125;
          }
        }

        else if (*(&cStr.__r_.__value_.__s + 23))
        {
          v31 = &cStr;
LABEL_125:
          v38 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v31, 0x8000100u);
          goto LABEL_102;
        }

        v39 = NLTokenTypeOther;
        goto LABEL_104;
      }

      v22 = 0;
      if (v21 <= 205)
      {
        if (v21 <= 202)
        {
          if (v21 == 201)
          {
            v32 = *MEMORY[0x1E695E480];
            v33 = 0xBFF0000000000000;
          }

          else
          {
            if (v21 != 202)
            {
              return v22;
            }

            v32 = *MEMORY[0x1E695E480];
            v33 = 0xBFE999999999999ALL;
          }
        }

        else if (v21 == 203)
        {
          v32 = *MEMORY[0x1E695E480];
          v33 = 0xBFE3333333333333;
        }

        else
        {
          v32 = *MEMORY[0x1E695E480];
          if (v21 == 204)
          {
            v33 = 0xBFD999999999999ALL;
          }

          else
          {
            v33 = 0xBFC999999999999ALL;
          }
        }
      }

      else
      {
        if (v21 <= 208)
        {
          if (v21 != 206)
          {
            v32 = *MEMORY[0x1E695E480];
            if (v21 == 207)
            {
              v33 = 0x3FC999999999999ALL;
            }

            else
            {
              v33 = 0x3FD999999999999ALL;
            }

            goto LABEL_137;
          }

          v32 = *MEMORY[0x1E695E480];
          v40 = 0;
          return CFStringCreateWithFormat(v32, 0, @"%.1f", v40);
        }

        switch(v21)
        {
          case 209:
            v32 = *MEMORY[0x1E695E480];
            v33 = 0x3FE3333333333333;
            break;
          case 210:
            v32 = *MEMORY[0x1E695E480];
            v33 = 0x3FE999999999999ALL;
            break;
          case 211:
            v32 = *MEMORY[0x1E695E480];
            v33 = 0x3FF0000000000000;
            break;
          default:
            return v22;
        }
      }

LABEL_137:
      v40 = v33;
      return CFStringCreateWithFormat(v32, 0, @"%.1f", v40);
    }

    switch(v21)
    {
      case 'E':
        goto LABEL_71;
      case 'D':
        goto LABEL_72;
      case 'C':
        goto LABEL_70;
    }

    v4 = kNLTagSchemeLexicalClass[0];
    v9 = CoreNLP::CompositeTagger::schemeType(a1, kNLTagSchemeLexicalClass[0]);
    if (!v9)
    {
      return 0;
    }
  }

  return CoreNLP::CompositeTagger::createScriptTag(a1, v6, a3);
}

void sub_19D18FACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CoreNLP *NLTaggerCopyTagAtIndex(CoreNLP *result, void *a2, CFIndex a3, __CFString *a4)
{
  if (result)
  {
    v7 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::copyTagAtIndex(v7, a2, a3, a4);
  }

  return result;
}

uint64_t CoreNLP::ICUTextBreak::getStringBufferPtr(CoreNLP::ICUTextBreak *this)
{
  if (!*(this + 9))
  {
    operator new();
  }

  return *(*(this + 9) + 8);
}

void CoreNLP::NLAttributedToken::~NLAttributedToken(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy((this + 6), this[7]);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy((this + 3), this[4]);
}

void CoreNLP::TaggerManager::loadStringForCompositeTagger(CoreNLP::TaggerManager *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  if (a2.location == -1 || (v5 = *(this + 16), v5 == -1) || (a2.location >= v5 ? (v6 = a2.location + a2.length <= *(this + 17) + v5) : (v6 = 0), !v6))
  {
    v7 = CFStringGetLength(*(this + 6));
    v8 = length + location + 1024;
    if (v8 >= v7)
    {
      v8 = v7;
    }

    v9 = 1024;
    if (location > 1024)
    {
      v9 = location;
    }

    v10 = v9 - 1024;
    v11 = *(this + 16);
    if (v11 == -1 || v10 < v11 || v8 > *(this + 17) + v11)
    {
      v12 = v8 - v10;
      if (v10 || v12 != CFStringGetLength(*(this + 6)))
      {
        v14.location = v10;
        v14.length = v12;
        v13 = CFStringCreateWithSubstring(0, *(this + 6), v14);
        CoreNLP::CompositeTagger::setString(*(this + 5), v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      else
      {
        CoreNLP::CompositeTagger::setString(*(this + 5), *(this + 6));
      }

      *(this + 16) = v10;
      *(this + 17) = v12;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

CoreNLP::NLAttributedToken *CoreNLP::CompositeTagger::getTokenAtIndex@<X0>(CFRange *a1@<X0>, unsigned int a2@<W1>, CFIndex a3@<X2>, uint64_t a4@<X8>)
{
  result = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(a1, a2, a3);
  if (result)
  {
    *a4 = *result;
    *(a4 + 16) = *(result + 2);
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = -1;
  }

  return result;
}

__CFString *CoreNLP::TaggerManager::getTokenAtIndex@<X0>(__CFString *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 < 0)
  {
    goto LABEL_22;
  }

  v5 = result;
  result = result[1].data;
  if (!result)
  {
    goto LABEL_22;
  }

  v7 = a2;
  result = CFStringGetLength(result);
  if (result <= a3)
  {
    goto LABEL_22;
  }

  if (BYTE1(v5[1].length) == 1)
  {
    if (v7 == 3)
    {
      data = v5[1].data;
      if (data)
      {
        *a4 = 0;
        result = CFStringGetLength(data);
        a4[1] = result;
        a4[2] = 0;
        return result;
      }
    }

    v13 = 0uLL;
    v14 = 0;
    RuleBasedTagger = CoreNLP::TaggerManager::getRuleBasedTagger(v5, v7);
    CoreNLP::Tagger::getTokenAtIndex(&v13, *RuleBasedTagger, a3);
    v12 = *(&v13 + 1);
    v11 = v13;
  }

  else
  {
    if (v5[4].data <= 0)
    {
      v15.location = a3;
      v15.length = 1;
      CoreNLP::TaggerManager::loadStringForCompositeTagger(v5, v15);
      isa = v5[4].isa;
    }

    else
    {
      isa = v5[4].isa;
      if (isa > a3 || v5[4].info + isa <= a3)
      {
        goto LABEL_22;
      }
    }

    v13 = 0uLL;
    v14 = 0;
    CoreNLP::CompositeTagger::getTokenAtIndex(v5[1].info, v7, a3 - isa, &v13);
    if (v13 == -1)
    {
      v11 = -1;
    }

    else
    {
      v11 = v5[4].isa + v13;
      *&v13 = v11;
    }

    v12 = *(&v13 + 1);
  }

  result = CFStringGetLength(v5[1].data);
  if (v11 != -1 && (v11 & 0x8000000000000000) == 0 && v12 + v11 <= result)
  {
    *a4 = v13;
    a4[2] = v14;
    return result;
  }

LABEL_22:
  a4[1] = 0;
  a4[2] = 0;
  *a4 = -1;
  return result;
}

CoreNLP *NLTaggerGetTokenAtIndex@<X0>(CoreNLP *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result)
  {
    v7 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::getTokenAtIndex(v7, a2, a3, a4);
  }

  else
  {
    a4[1] = 0;
    a4[2] = 0;
    *a4 = -1;
  }

  return result;
}

void *CoreNLP::WordDispatchTagger::goToTokenAtIndex(CoreNLP::WordDispatchTagger *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 128) == 1)
  {
    v6 = *(this + 18);
    if (v6 <= a3 && *(this + 19) + v6 > a3)
    {
      return (*(**(this + 17) + 96))(*(this + 17), a2, a3, &v13);
    }
  }

  *(this + 128) = 0;
  *(this + 9) = xmmword_19D27D570;
  v8 = CoreNLP::WordDispatchTagger::goToTokenAtIndexFromCurrentSubWordTagger(this, a2, a3, &v13);
  if (v8)
  {
    v9 = *(this + 5);
    if (v9 && (*(*v9 + 152))(v9) && (v8[2] & 0x40001080) != 0)
    {
      SubWordTaggerForCJKSubToken = CoreNLP::WordDispatchTagger::getSubWordTaggerForCJKSubToken(this, v8);
      if (SubWordTaggerForCJKSubToken)
      {
        v11 = SubWordTaggerForCJKSubToken;
        (*(*SubWordTaggerForCJKSubToken + 32))(SubWordTaggerForCJKSubToken, *(*(this + 4) + 8), *v8, v8[1]);
        return (*(*v11 + 96))(v11, a2, a3, 0);
      }
    }

    else if (v13.location != -1 && v13.length)
    {
      return CoreNLP::WordDispatchTagger::goToTokenAtIndexOfPartialString(this, a2, a3, &v13);
    }
  }

  return v8;
}

__CFString *CoreNLP::CompositeTagger::copyTagAtIndex(CFRange *this, uint64_t a2, CFIndex a3, __CFString *theString1)
{
  if (a3 < 0)
  {
    return 0;
  }

  v8 = *(this[1].location + 8);
  if (v8)
  {
    if (CFStringGetLength(v8) <= a3)
    {
      return 0;
    }
  }

  if (!CoreNLP::CompositeTagger::schemeType(this, theString1))
  {
    return 0;
  }

  AttributedTokenAtIndex = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(this, a2, a3);
  if (!AttributedTokenAtIndex && CFStringCompare(theString1, kNLTagSchemeLanguage[0], 0) && CFStringCompare(theString1, kNLTagSchemeScript[0], 0))
  {
    return 0;
  }

  return CoreNLP::CompositeTagger::createTag(this, a2, AttributedTokenAtIndex, theString1);
}

uint64_t CoreNLP::_scriptIDForCharacter(CoreNLP *this, int a2)
{
  if (((this & 0xFFDF) - 65) < 0x1Au)
  {
    return 4;
  }

  v2 = 28;
  if ((this > 0x2E || ((1 << this) & 0x708000000000) == 0) && this != 173 && (this - 48) >= 0xA && (this - 188) >= 3u && this >= 0x20 && (this - 127) >= 0x21u && this >= 0xC0 && (this & 0xFFDF) != 0xD7)
  {
    if (this < 0x2B0)
    {
      return 4;
    }

    if (this >= 0x370)
    {
      if (this < 0x400)
      {
        return 6;
      }

      v2 = 1;
      if (this >= 0x530 && this != 7467)
      {
        v2 = 9;
        if (this >= 0x590 && (this + 1261) >= 5u)
        {
          v2 = 5;
          if (this >= 0x600 && (this + 1251) >= 0x33u)
          {
            v2 = 0;
            if ((this + 400) >= 0x8Fu && this >= 0x700 && (this + 1200) >= 0x2B0u)
            {
              v4 = (this - 2304) >> 7;
              if (v4 > 5)
              {
                if (((this - 2304) >> 7) > 8u)
                {
                  switch(v4)
                  {
                    case 9u:
                      return 18;
                    case 0xAu:
                      return 7;
                    case 0xBu:
                      return 19;
                  }
                }

                else
                {
                  switch(v4)
                  {
                    case 6u:
                      return 15;
                    case 7u:
                      return 16;
                    case 8u:
                      return 17;
                  }
                }
              }

              else
              {
                if (((this - 2304) >> 7) <= 2u)
                {
                  if ((this - 2304) >> 7)
                  {
                    if (v4 == 1)
                    {
                      return 10;
                    }

                    else
                    {
                      return 11;
                    }
                  }

                  else if ((this & 0x97E) == 0x964)
                  {
                    return 28;
                  }

                  else
                  {
                    return 2;
                  }
                }

                switch(v4)
                {
                  case 3u:
                    return 12;
                  case 4u:
                    return 13;
                  case 5u:
                    return 14;
                }
              }

              v5 = vdup_n_s16(this);
              v2 = 8;
              if ((vmaxv_u16(vcgt_u16(0x40005000602C00, vadd_s16(v5, 0x602850CED05400))) & 1) == 0)
              {
                v6 = this & 0xFF00;
                if (v6 != 4352)
                {
                  v7 = this & 0xFFE0;
                  if (v7 != 43360)
                  {
                    if (vmaxv_u16(vcgt_u16(0xFC006002007180, vadd_s16(v5, 0x10001F00700D180))))
                    {
                      return 3;
                    }

                    else if (this - 8204) < 0xE && ((0x203Fu >> (this - 12)))
                    {
                      return 28;
                    }

                    else
                    {
                      v2 = 28;
                      if ((this - 8234) >= 5 && (this & 0xFFF0) != 0x2060 && this != 65279 && (this & 0xFFF0) != 0xFE00)
                      {
                        v2 = 4;
                        if ((vmaxv_u16(vcgt_u16(0x700E000300026, vadd_s16(v5, 0x50058E0E295E300))) & 1) == 0 && v6 != 7680 && v7 != 11360)
                        {
                          v2 = 6;
                          if ((this - 7462) >= 5 && v6 != 7936)
                          {
                            v2 = 28;
                            if ((vmaxv_u16(vcgt_u16(0x3000300065003FLL, vadd_s16(v5, 0xDF30DF90E265E2D4))) & 1) == 0 && (this - 0x2000) >= 0xC00u && v7 != 42752 && this <= 0xFFFB && (this & 0xFF80) != 0x2E00)
                            {
                              if (v6 == 3840)
                              {
                                return 20;
                              }

                              else if ((this - 4096) >= 0xA0)
                              {
                                if ((this - 4256) >= 0x60)
                                {
                                  if ((this - 4608) >= 0x1A0)
                                  {
                                    if ((this - 5024) >= 0x60)
                                    {
                                      if ((this - 5120) >= 0x280)
                                      {
                                        if ((this & 0xFF80) == 0x1780)
                                        {
                                          return 26;
                                        }

                                        else if ((this - 6144) >= 0xB0)
                                        {
                                          v2 = 28;
                                          if (this >> 10 == 55 && (a2 & 0xFC00) == 0xD800)
                                          {
                                            if ((this + (a2 << 10) - 56744960) >= 0x10000)
                                            {
                                              return 28;
                                            }

                                            else
                                            {
                                              return 3;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          return 27;
                                        }
                                      }

                                      else
                                      {
                                        return 25;
                                      }
                                    }

                                    else
                                    {
                                      return 24;
                                    }
                                  }

                                  else
                                  {
                                    return 23;
                                  }
                                }

                                else
                                {
                                  return 22;
                                }
                              }

                              else
                              {
                                return 21;
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

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t CoreNLP::ICUTextBreakWithCustomizedRules::setTokenAttributes(uint64_t this, unint64_t a2, unint64_t *a3, BOOL *a4)
{
  if ((a2 & 0x40000000) != 0)
  {
    *a3 = 128;
    *a4 = 0;
  }

  else if ((a2 & 0x820) == 0x20)
  {
    *a4 = 1;
  }

  else
  {
    *a4 = 0;
    v4 = 2 * ((a2 & 0x14) != 0);
    *a3 = v4;
    if (((*(*(this + 56) + 36) == 13) & (a2 >> 1)) != 0 || (a2 & 0x30) != 0)
    {
      if (((*(*(this + 56) + 36) == 13) & (a2 >> 1)) != 0)
      {
        v4 |= 4uLL;
      }

      *a3 = v4 | (a2 >> 1) & 8 | a2 & 0x20;
    }
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void NLTaggerSetString(CoreNLP *result, __CFString *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);

    CoreNLP::TaggerManager::setString(v3, a2);
  }
}

void CoreNLP::TaggerManager::setString(CoreNLP::TaggerManager *this, CFStringRef theString)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
    *(this + 6) = 0;
  }

  if (theString)
  {
    *(this + 6) = CFRetain(theString);
  }

  if (*(this + 5))
  {
    *(this + 18) = 0;
    *(this + 8) = xmmword_19D27D570;
  }

  for (i = *(this + 2); i; i = *i)
  {
    v6 = i[3];
    Length = CFStringGetLength(theString);
    (*(*v6 + 40))(v6, theString, 0, Length, 0);
  }
}

void std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__list_imp<CoreNLP::NLAttributedToken>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        CoreNLP::NLAttributedToken::~NLAttributedToken(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

CFRange *CoreNLP::DefaultSubWordTagger::goToTokenAtIndex(CoreNLP::DefaultSubWordTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  if (a4)
  {
    *a4 = xmmword_19D27D570;
  }

  v13 = 0;
  if ((*(this + 72) & 1) == 0)
  {
    return (*(**(this + 8) + 48))(*(this + 8), a2, a3, &v13);
  }

  if (*(this + 10) != *(this + 11))
  {
    v7 = CoreNLP::DefaultSubWordTagger::goToTokenAtIndexWithDecomposedEnglishTokens(this, a3);
    if (v7 != -1)
    {
      return (*(this + 10) + 24 * v7);
    }
  }

  v8 = (*(**(this + 8) + 48))(*(this + 8), a2, a3, &v13);
  if (v8)
  {
    if (v13 == 1)
    {
      *(this + 11) = *(this + 10);
      *(this + 13) = 0;
      v12 = 0;
      v10 = *(this + 6);
      v14 = *v8;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = ___ZN7CoreNLP20DefaultSubWordTagger16goToTokenAtIndexEmlP7CFRange_block_invoke;
      v11[3] = &__block_descriptor_tmp_3_0;
      v11[4] = this;
      CoreNLP::EnglishCompoundWord::enumerateDecomposedTokensWithSpecifiedStop(v10, v14, &v12, v11);
      if (*(this + 10) != *(this + 11))
      {
        v7 = CoreNLP::DefaultSubWordTagger::goToTokenAtIndexWithDecomposedEnglishTokens(this, a3);
        if (v7 == -1)
        {
          return 0;
        }

        return (*(this + 10) + 24 * v7);
      }
    }
  }

  return v8;
}

void CoreNLP::CompositeTagger::resetParagraphCache(CoreNLP::CompositeTagger *this)
{
  *(this + 46) = xmmword_19D27D570;
  v2 = this + 848;
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 106);
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 109);
  v3 = *(this + 115);
  v4 = *(this + 114);
  while (v3 != v4)
  {
    CoreNLP::NLAttributedToken::~NLAttributedToken((v3 - 112));
  }

  *(this + 115) = v4;
  *(this + 113) = this + 872;
  *(this + 112) = v2;
}

void *CoreNLP::WordDispatchTagger::goToTokenAtIndexFromCurrentSubWordTagger(CoreNLP::WordDispatchTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  result = *(this + 5);
  if (result)
  {
    v8 = *(this + 208);
    result = (*(*result + 96))(result);
    if (v8 == 1 && result == 0)
    {
      result = (*(**(this + 25) + 64))(*(this + 25), a2, a3);
      if (result)
      {
        (*(**(this + 5) + 32))(*(this + 5), *(*(this + 4) + 8), *result, result[1]);
        v10 = *(**(this + 5) + 96);

        return v10();
      }
    }
  }

  return result;
}

uint64_t NLTokenizerGoToTokenAtIndex(uint64_t *a1, uint64_t a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return (*(*v2 + 64))(v2, 0, a2);
  }

  else
  {
    return 0;
  }
}

void CoreNLP::CompositeTagger::setString(CoreNLP::CompositeTagger *this, CFStringRef theString)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v5 = 0;
  }

  else
  {
    Length = 0;
    v5 = -1;
  }

  CoreNLP::TaggerContext::setString(*(this + 2), theString, v5, Length, *(*(this + 2) + 60));
  v6 = *(this + 1);
  if (v6)
  {
    v8.location = v5;
    v8.length = Length;
    CoreNLP::SmartTokenizer::setString(v6, theString, v8);
  }

  CoreNLP::CompositeTagger::resetParagraphCache(this);
}

char *CoreNLP::ICUTextBreakWithCustomizedRules::goToTokenAtIndex(CoreNLP::ICUTextBreakWithCustomizedRules *this, unint64_t a2, uint64_t a3, BOOL *a4)
{
  if (*(this + 1))
  {
    v5 = *(this + 2);
    v6 = a3 - v5;
    if (a3 >= v5 && *(this + 3) + v5 > a3)
    {
      StringBufferPtr = CoreNLP::ICUTextBreak::getStringBufferPtr(this);
      v9 = (StringBufferPtr + 2 * v6);
      if (v6 >= 1)
      {
        while (1)
        {
          v10 = *v9;
          if (v10 < 0x21)
          {
            break;
          }

          if (v10 == 65292 || v10 - 12288 <= 2)
          {
            break;
          }

          if (--v9 <= StringBufferPtr)
          {
            goto LABEL_14;
          }
        }

        ++v9;
      }

LABEL_14:
      v12 = (v9 - StringBufferPtr) >> 1;
      if (v12 >= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      *(this + 13) = v13;
      v21 = 0;
      ubrk_setText();
      v20 = 0;
      while (MEMORY[0x19EAF9830](*(this + 1), 1, &v18, &v20))
      {
        v16 = v18 + *(this + 13);
        v18 = v16;
        if (v6 >= v16)
        {
          v17 = v19;
          if (v6 < v19 + v16)
          {
            *(this + 4) = *(this + 2) + v16;
            *(this + 5) = v17;
            v14 = this + 32;
            if (*(this + 96) == 1)
            {
              CoreNLP::ICUTextBreakWithCustomizedRules::setTokenAttributes(this, v20, this + 6, a4);
            }

            return v14;
          }
        }
      }
    }
  }

  return 0;
}

void std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t CoreNLP::Orthography::dominantLanguageIDForScriptID(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  if (a2 > 4)
  {
    if (a2 <= 0x1B)
    {
      v3 = (&CoreNLP::_defaultLanguageID(NLScriptID)::defaultLanguageIDs + 4 * a2);
      return *v3;
    }
  }

  else
  {
    v2 = std::__hash_table<std::__hash_value_type<NLLanguageID,char const*>,std::__unordered_map_hasher<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::hash<int>,std::equal_to<NLLanguageID>,true>,std::__unordered_map_equal<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::equal_to<NLLanguageID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLLanguageID,char const*>>>::find<NLLanguageID>((a1 + 56), &v5);
    if (v2)
    {
      v3 = v2 + 5;
      return *v3;
    }
  }

  return 1;
}

__CFString *CoreNLP::Orthography::getScriptTagForString(CoreNLP::Orthography *this, CFStringRef theString, CFRange a3)
{
  location = a3.location;
  a3.location = a3.length;
  v6 = CoreNLP::Orthography::dominantScriptIDForString(theString, location, a3);
  v7 = CoreNLP::Orthography::dominantLanguageIDForScriptID(this, v6);
  if (v6 == 3)
  {
    switch(v7)
    {
      case 5:
        return @"Hant";
      case 20:
        return @"Jpan";
      case 54:
        return @"Hant";
      default:
        return @"Hans";
    }
  }

  else if (v6 > 0x1B)
  {
    return 0;
  }

  else
  {
    return CoreNLP::_scriptTags[v6];
  }
}

__CFString *CoreNLP::TaggerContext::getCurrentDominantScriptForString(CoreNLP::TaggerContext *this, const __CFString *a2, CFRange a3)
{
  v4 = *(this + 5);
  if (v4)
  {
    return CFLocaleGetValue(v4, *MEMORY[0x1E695E6F8]);
  }

  result = *(this + 6);
  if (result)
  {
    return CoreNLP::Orthography::getScriptTagForString(result, a2, a3);
  }

  return result;
}

CFStringRef CoreNLP::CompositeTagger::createScriptTag(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 1) < 2)
  {
    CurrentDominantScript = CoreNLP::TaggerContext::getCurrentDominantScript(*(a1 + 16));
    if (!CurrentDominantScript)
    {
      return 0;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 3)
      {
        v3 = *(a1 + 16);
        v9.location = *(v3 + 24);
        v9.length = *(a1 + 724);
        CoreNLP::Orthography::createOrthography(*(v3 + 8), *(v3 + 16), v9);
      }

      return 0;
    }

    if ((*(a3 + 72) & 8) == 0)
    {
      return 0;
    }

    CurrentDominantScript = CoreNLP::TaggerContext::getCurrentDominantScriptForString(*(a1 + 16), *(*(a1 + 16) + 8), *a3);
    if (!CurrentDominantScript)
    {
      return 0;
    }
  }

  v5 = CurrentDominantScript;
  v6 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v6, v5);
}

void sub_19D191850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CoreNLP::TaggerContext::TaggerContext(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<NLLanguageID,char const*>,std::__unordered_map_hasher<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::hash<int>,std::equal_to<NLLanguageID>,true>,std::__unordered_map_equal<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::equal_to<NLLanguageID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLLanguageID,char const*>>>::find<NLLanguageID>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CoreNLP::EnglishCompoundWord::enumerateDecomposedTokensWithSpecifiedStop(CoreNLP::StringBuffer **a1, CFRange a2, _BYTE *a3, uint64_t a4)
{
  length = a2.length;
  location = a2.location;
  result = CoreNLP::StringBuffer::getSubStringCharsOfRange(a1[1], a2);
  v40 = length - 1;
  if (length < 1)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = (result + 2);
  *&v11.f64[0] = 0x8000000080000000;
  *&v11.f64[1] = 0x8000000080000000;
  v36 = vnegq_f64(v11);
  v12.i64[1] = 0x40000000;
  v37 = vdupq_n_s64(8uLL);
  v13 = 1;
  do
  {
    result = *(v10 - 1);
    if (result == 8217)
    {
      v14 = 39;
    }

    else
    {
      v14 = *(v10 - 1);
    }

    if (v14 > 0xFF)
    {
      if (result == 65532 && (**a1 & 0x8000) != 0)
      {
        v13 = 64;
        if (v9)
        {
          goto LABEL_77;
        }

        goto LABEL_83;
      }

      result = u_charType(result);
      if (((1 << result) & 0x3FF97000) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {
      if ((result | 2) == 0x2E)
      {
        if (v8 && v8 < v40)
        {
          v16 = *(v10 - 2) == 8217 ? 39 : *(v10 - 2);
          if (v16 <= 0xFF)
          {
            v17 = *v10 == 8217 ? 39 : *v10;
            v18 = v16 - 48;
            v19 = (v17 - 48) >= 0xA ? v15 : 16;
            v20 = v18 <= 9 ? v19 : v15;
            if (v17 <= 0xFF)
            {
              v15 = v20;
            }
          }
        }
      }

      else if (v8)
      {
        if (v14 == 39 && v8 < v40)
        {
          v25 = *(v10 - 2) == 8217 ? 39 : *(v10 - 2);
          if (v25 <= 0xFF)
          {
            v26 = *v10 == 8217 ? 39 : *v10;
            if (v26 <= 0xFF)
            {
              v28 = v25 - 65;
              v29 = v27 != 4 && v28 > 0x19;
              {
                if (v13 == 4)
                {
                  goto LABEL_36;
                }

                v15 = 4;
                goto LABEL_44;
              }
            }
          }
        }
      }
    }

    if (v15 == v13 && v15 != 64)
    {
      if (v13 == 2)
      {
        goto LABEL_106;
      }

LABEL_36:
      ++v42.i64[0];
      goto LABEL_106;
    }

    if (v15 == 2)
    {
      v13 = 2;
      goto LABEL_106;
    }

    if ((v15 & 0x40) != 0)
    {
      v13 = v15;
      if (v9)
      {
LABEL_77:
        v30 = v42.i64[1];
        if ((v42.i32[2] & 0x80000008) != 0)
        {
          v30 = v42.i64[1] | 2;
          v42.i64[1] |= 2uLL;
        }

        if ((v30 & 0x40000000) != 0 && *(*a1 + 9) == 13)
        {
          v42.i64[1] = v30 | 4;
        }

        result = (*(a4 + 16))(a4, &v41, a3);
        if (*a3)
        {
          return result;
        }
      }

LABEL_83:
      ++v9;
      v41 = location;
      v42 = xmmword_19D27F210;
      goto LABEL_106;
    }

    if ((v15 & 0x10) != 0)
    {
      if ((v13 - 1) <= 0x3F && ((1 << (v13 - 1)) & 0x8000000000000003) != 0)
      {
        if (v9)
        {
          v31 = v42.i64[1];
          if ((v42.i32[2] & 0x80000008) != 0)
          {
            v31 = v42.i64[1] | 2;
            v42.i64[1] |= 2uLL;
          }

          if ((v31 & 0x40000000) != 0 && *(*a1 + 9) == 13)
          {
            v42.i64[1] = v31 | 4;
          }

          result = (*(a4 + 16))(a4, &v41, a3);
          if (*a3)
          {
            return result;
          }
        }

        ++v9;
        v41 = location;
        v23 = xmmword_19D27F220;
        goto LABEL_104;
      }

      v33 = v42;
      v12.i64[0] = 1;
      v12.i64[0] = vaddq_s64(v42, v12).u64[0];
      v34 = v37;
      goto LABEL_111;
    }

    if ((v15 & 8) != 0)
    {
      if ((v13 - 1) <= 0x3F && ((1 << (v13 - 1)) & 0x8000000000000003) != 0)
      {
        if (v9)
        {
          v32 = v42.i64[1];
          if ((v42.i32[2] & 0x80000008) != 0)
          {
            v32 = v42.i64[1] | 2;
            v42.i64[1] |= 2uLL;
          }

          if ((v32 & 0x40000000) != 0 && *(*a1 + 9) == 13)
          {
            v42.i64[1] = v32 | 4;
          }

          result = (*(a4 + 16))(a4, &v41, a3);
          if (*a3)
          {
            return result;
          }
        }

        ++v9;
        v41 = location;
        v23 = xmmword_19D27F230;
        goto LABEL_104;
      }

      v33 = v42;
      v12.i64[0] = 1;
      v12.i64[0] = vaddq_s64(v42, v12).u64[0];
      v34 = v36;
LABEL_111:
      v12.i64[1] = vorrq_s8(v33, v34).i64[1];
      v42 = v12;
      goto LABEL_105;
    }

LABEL_44:
    if ((v13 - 1) > 0x3F || ((1 << (v13 - 1)) & 0x8000000000000003) == 0)
    {
      ++v42.i64[0];
      goto LABEL_105;
    }

    if (v9)
    {
      v22 = v42.i64[1];
      if ((v42.i32[2] & 0x80000008) != 0)
      {
        v22 = v42.i64[1] | 2;
        v42.i64[1] |= 2uLL;
      }

      if ((v22 & 0x40000000) != 0 && *(*a1 + 9) == 13)
      {
        v42.i64[1] = v22 | 4;
      }

      result = (*(a4 + 16))(a4, &v41, a3);
      if (*a3)
      {
        return result;
      }
    }

    ++v9;
    v41 = location;
    v23 = xmmword_19D27D650;
LABEL_104:
    v42 = v23;
LABEL_105:
    v13 = v15;
LABEL_106:
    ++v8;
    ++location;
    ++v10;
    --length;
  }

  while (length);
  if (v9)
  {
    v35 = v42.i64[1];
    if ((v42.i32[2] & 0x80000008) != 0)
    {
      v35 = v42.i64[1] | 2;
      v42.i64[1] |= 2uLL;
    }

    if ((v35 & 0x40000000) != 0 && *(*a1 + 9) == 13)
    {
      v42.i64[1] = v35 | 4;
    }

    return (*(a4 + 16))(a4, &v41, a3);
  }

  return result;
}

void std::vector<NLToken>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__emplace_unique_key_args<NLScriptID,std::pair<NLScriptID const,std::vector<unsigned short>> const&>(void *a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__construct_node_hash<std::pair<NLScriptID const,std::vector<unsigned short>> const&>();
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_19D1921E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<NLScriptID,std::vector<unsigned short>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__emplace_unique_key_args<NLScriptID,std::pair<NLScriptID const,std::vector<unsigned short>> const&>(a1, i + 4, (i + 4));
  }

  return a1;
}

uint64_t CoreNLP::Orthography::dominantScriptIDForString(CFStringRef theString, CFIndex idx, CFRange a3)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 1065353216;
  v14 = 28;
  if (a3.location >= 1)
  {
    v3 = idx;
    v5 = 0;
    v6 = idx + a3.location;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v3);
      if (((CharacterAtIndex + 9216) >> 10) <= 0x3Eu)
      {
        v14 = CoreNLP::_scriptIDForCharacter(CharacterAtIndex, v5);
        if (v14 == 28)
        {
          LOWORD(CharacterAtIndex) = 0;
        }

        else
        {
          v18 = &v14;
          v8 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v15, &v14, &std::piecewise_construct, &v18);
          LOWORD(CharacterAtIndex) = 0;
          ++*(v8 + 5);
        }
      }

      ++v3;
      v5 = CharacterAtIndex;
    }

    while (v3 < v6);
    v9 = v16;
    if (v16)
    {
      v10 = 0;
      do
      {
        v11 = *(v9 + 5);
        if (v11 > v10)
        {
          v14 = *(v9 + 4);
          v10 = v11;
        }

        v9 = *v9;
      }

      while (v9);
    }
  }

  v12 = v14;
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(&v15);
  return v12;
}

void sub_19D1923B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::extractTokenExtendedAttributes(uint64_t this, const __CFString *a2, CoreNLP::NLAttributedToken *a3)
{
  if (!this)
  {
    return this;
  }

  if (!a2)
  {
    return this;
  }

  v4 = this;
  isa = a2->isa;
  info = a2->info;
  this = CFStringGetLength(this);
  if (isa == -1 || isa < 0 || info + isa > this)
  {
    return this;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  v7 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  v89 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v8 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  theSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  this = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  v59 = this;
  v9 = a2->info;
  v70 = 1;
  if (v9 >= 1)
  {
    v69 = 0;
    v10 = 0;
    v11 = 0;
    v79 = 0;
    v77 = 0;
    v88 = 0;
    v75 = 0;
    v76 = 0;
    v86 = 0;
    v78 = 0;
    v74 = 0;
    v83 = 0;
    v85 = 0;
    v87 = 0;
    v12 = 0;
    v90 = 0;
    v13 = 0;
    v62 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v73 = 0;
    v84 = 0;
    v72 = 0;
    v14 = a2->isa;
    v60 = v7;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v14);
      this = CFCharacterSetIsCharacterMember(v8, CharacterAtIndex);
      if (this)
      {
        break;
      }

      this = CFCharacterSetIsCharacterMember(v89, CharacterAtIndex);
      if (this)
      {
        ++v90;
        goto LABEL_12;
      }

      if (!CFCharacterSetIsCharacterMember(v7, CharacterAtIndex))
      {
        v65 = v13;
        v19 = v82;
        if (v10)
        {
          v20 = v10 == CharacterAtIndex;
        }

        else
        {
          v20 = v82;
        }

        isQuote = CoreNLP::isQuote(CharacterAtIndex);
        if (isQuote)
        {
          v19 = v20;
        }

        v82 = v19;
        v23 = CharacterAtIndex == 39 || CharacterAtIndex >> 1 == 4108;
        v24 = v23;
        v58 = v24;
        v25 = v74;
        if (v23)
        {
          v25 = v74 + 1;
        }

        isOpenPunctuation = CoreNLP::isOpenPunctuation(CharacterAtIndex, v21);
        isClosePunctuation = CoreNLP::isClosePunctuation(CharacterAtIndex, v27);
        isFullstop = CoreNLP::isFullstop(CharacterAtIndex);
        isDash = CoreNLP::isDash(CharacterAtIndex);
        isExclamation = CoreNLP::isExclamation(CharacterAtIndex);
        v74 = v25;
        v63 = isExclamation;
        v64 = isQuote;
        if (CharacterAtIndex <= 11821)
        {
          if (CharacterAtIndex != 63)
          {
            v29 = 8263;
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        if (CharacterAtIndex == 11822)
        {
          goto LABEL_43;
        }

        v29 = 65311;
LABEL_42:
        if (CharacterAtIndex == v29)
        {
LABEL_43:
          v30 = isOpenPunctuation;
          ++v83;
          v31 = 1;
        }

        else
        {
          v39 = v58 | isQuote;
          v30 = isOpenPunctuation;
          v31 = isExclamation | isDash | isFullstop | isClosePunctuation | isOpenPunctuation | v39;
        }

        v32 = CharacterAtIndex == 58 || CharacterAtIndex == 65306;
        v33 = v32;
        v34 = v76;
        if (v32)
        {
          v34 = v76 + 1;
        }

        v76 = v34;
        this = CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex);
        if (this)
        {
          v35 = 1;
        }

        else
        {
          v35 = v33;
        }

        v36 = CharacterAtIndex == 44 || CharacterAtIndex == 65292;
        v37 = v75;
        if (v36)
        {
          v37 = v75 + 1;
        }

        v75 = v37;
        if (v36)
        {
          v35 = 1;
        }

        v38 = v35 | v31;
        if (v38)
        {
          BYTE4(v73) |= v11 == a2->info - 1;
        }

        v7 = v60;
        v78 += v64;
        LODWORD(v88) = v88 + v30;
        HIDWORD(v88) += isClosePunctuation;
        v86 += isFullstop;
        v87 += isDash;
        v85 += v63;
        v84 |= v38 & (v11 == 0);
        v77 += (v38 & 1) == 0;
        v79 += v38 & 1;
        v13 = v65;
        goto LABEL_13;
      }

      this = CFCharacterSetIsCharacterMember(theSet, CharacterAtIndex);
      if (this)
      {
        if (v11)
        {
          v16 = a2->info - 1;
          v23 = v11 == v16;
          v17 = v11 != v16;
          v18 = v23;
          LOBYTE(v80) = v17 | v80;
          BYTE4(v80) |= v18;
        }

        else
        {
          v69 = 1;
        }

        ++v81;
LABEL_68:
        ++v13;
        goto LABEL_13;
      }

      this = CFCharacterSetIsCharacterMember(v59, CharacterAtIndex);
      if (!this)
      {
        goto LABEL_68;
      }

      v72 |= v11 == 0;
      LOBYTE(v73) = (v11 == a2->info - 1) | v73;
      ++v62;
LABEL_13:
      ++v11;
      ++v14;
      v9 = a2->info;
      v10 = CharacterAtIndex;
      if (v14 >= a2->isa + v9)
      {
        v40 = v90;
        v41 = v81;
        v42 = v12;
        v70 = v74 == 0;
        v43 = v75 != 0;
        v44 = v76 != 0;
        v45 = v78;
        v46 = v77 == 0;
        v47 = v62;
        v48 = v79;
        goto LABEL_71;
      }
    }

    ++v12;
LABEL_12:
    CharacterAtIndex = v10;
    goto LABEL_13;
  }

  v80 = 0;
  v72 = 0;
  v73 = 0;
  v84 = 0;
  LOBYTE(v82) = 0;
  v41 = 0;
  v47 = 0;
  v13 = 0;
  v40 = 0;
  v42 = 0;
  v87 = 0;
  v85 = 0;
  v83 = 0;
  v45 = 0;
  v86 = 0;
  v43 = 0;
  v44 = 0;
  v88 = 0;
  v48 = 0;
  v69 = 0;
  v46 = 1;
LABEL_71:
  if (v9 == v13)
  {
    a2[2].info |= 0x40000uLL;
  }

  if (v13)
  {
    a2[2].info |= 8uLL;
  }

  if (v9 == v41)
  {
    a2[2].info |= 0x400uLL;
  }

  if (v69)
  {
    a2[2].info |= 0x800uLL;
  }

  if (v80)
  {
    a2[2].info |= 0x1000uLL;
  }

  if ((v80 & 0x100000000) != 0)
  {
    a2[2].info |= 0x2000uLL;
  }

  if (v9 == v47)
  {
    a2[2].info |= 0x80000uLL;
  }

  if (v47)
  {
    a2[2].info |= 0x10uLL;
  }

  if (v72)
  {
    a2[2].info |= 0x4000uLL;
  }

  if (v73)
  {
    a2[2].info |= 0x8000uLL;
  }

  if (v9 == v48)
  {
    a2[2].info |= 0x400000uLL;
  }

  if (v48)
  {
    a2[2].info |= 0x40uLL;
  }

  if (v84)
  {
    a2[2].info |= 0x10000uLL;
  }

  if ((v73 & 0x100000000) != 0)
  {
    a2[2].info |= 0x20000uLL;
  }

  if (v9 == v40)
  {
    a2[2].info |= 0x100000uLL;
  }

  if (v40)
  {
    a2[2].info |= 0x20uLL;
  }

  if (v9 == v42)
  {
    a2[2].info |= 0x200000uLL;
  }

  if (v9 == v86)
  {
    a2[2].info |= 0x2000000uLL;
  }

  if (!v70)
  {
    a2[2].info |= 0x80uLL;
  }

  if (v86)
  {
    a2[2].info |= 0x100uLL;
  }

  if (v87)
  {
    a2[2].info |= 0x200uLL;
  }

  if (v9 == v88)
  {
    a2[2].info |= 0x800000uLL;
  }

  if (v9 == SHIDWORD(v88))
  {
    a2[2].info |= 0x1000000uLL;
  }

  if (v9 == v45)
  {
    v49 = a2[2].info;
    a2[2].info = v49 | 0x20000000;
    if (v82)
    {
      a2[2].info = v49 | 0x30000000;
    }
  }

  if (v85 && v9 == v83 + v85)
  {
    a2[2].info |= 0x8000000uLL;
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    v50 = 4;
  }

  else
  {
    if (!v83)
    {
      goto LABEL_126;
    }

    a2[2].info |= 0x4000000uLL;
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    v50 = 3;
  }

  *(this + 40) = v50;
LABEL_126:
  v51 = a2[2].info;
  if ((v51 & 0x10) != 0)
  {
    data = a2->data | 8;
    goto LABEL_130;
  }

  if ((v51 & 0x60) != 0)
  {
    data = a2->data;
LABEL_130:
    a2->data = (data | 0x20);
  }

  if ((v51 & 0x1800) != 0)
  {
    a2[2].info = v51;
  }

  if ((v51 & 0x40) != 0)
  {
    a2->data = (a2->data | 0x10);
  }

  if ((v51 & 0x400000) != 0)
  {
    a2->data = (a2->data | 0x400);
  }

  v53 = v51 >> 20;
  v54 = a2->info;
  a2->data = (a2->data & 0xFFFFFFFFFFFFF7FFLL | ((v53 & 1) << 11));
  if (v54 == 1 && v43)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 10;
    v54 = a2->info;
  }

  if (v54 == 1 && v44)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 12;
    v54 = a2->info;
  }

  if (v54 == v87)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 11;
  }

  if (v88 && !v45)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 7;
  }

  if (HIDWORD(v88) && !v45)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 8;
  }

  if (v48)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    if (!*(this + 40))
    {
      v91 = 1;
      v92[0] = &v91;
      this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
      *(this + 40) = 13;
    }
  }

  v57 = a2->info;
  if (v57 == v40)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 89;
    v57 = a2->info;
  }

  if (v57 == v42)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 90;
  }

  if (v13 | v47)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 91;
  }

  if (!v46)
  {
    v91 = 1;
    v92[0] = &v91;
    this = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a2->length, &v91, &std::piecewise_construct, v92);
    *(this + 40) = 88;
  }

  return this;
}

void CoreNLP::CompositeTagger::updateWordAndSentenceBoundaries(CoreNLP::CompositeTagger *this, CoreNLP::NLAttributedToken *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = this + 872;
  v4 = *(this + 110);
  if (v4 != (this + 872))
  {
    do
    {
      *buffer = 0;
      v101 = 0;
      v102 = 0;
      if ((v4[11] & 0x80) != 0 && CoreNLP::splitOnApostrophe(*(*(this + 2) + 8), v4 + 1, buffer) >= 2)
      {
        v5 = *v4;
        v6 = v4[1];
        *(v5 + 8) = v6;
        *v6 = v5;
        --*(this + 111);
        CoreNLP::NLAttributedToken::~NLAttributedToken(v4 + 2);
        operator delete(v4);
        v7 = -1227133513 * ((v101 - *buffer) >> 4);
        v4 = v6;
        if (v7 > 0)
        {
          std::list<CoreNLP::NLAttributedToken>::insert(v3, v6, (*buffer + 112 * v7 - 112));
        }

        if (v101 != *buffer)
        {
          v8 = 0x6DB6DB6DB6DB6DB7 * ((v101 - *buffer) >> 4);
          if (v8 <= 1)
          {
            v8 = 1;
          }

          do
          {
            v4 = v4[1];
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v4 = v4[1];
      }

      v99 = buffer;
      std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&v99);
    }

    while (v4 != v3);
    v4 = *(this + 110);
  }

  if (v4 != v3)
  {
    while (1)
    {
      if (v4[3] == 1)
      {
        v9 = v4[11];
        v10 = (v9 >> 9) & 1;
        v11 = (v9 >> 7) & 1;
      }

      else
      {
        LODWORD(v10) = 0;
        LODWORD(v11) = 0;
      }

      v13 = *v4;
      v12 = v4[1];
      if ((v10 & 1) == 0 && !v11)
      {
        goto LABEL_28;
      }

      v14 = v4 == *(this + 110) || v12 == v3;
      if (v14 || CoreNLP::isPunctuationOrWhitespace((v13 + 2), a2))
      {
        goto LABEL_28;
      }

      isPunctuationOrWhitespace = CoreNLP::isPunctuationOrWhitespace((v12 + 2), a2);
      v16 = isPunctuationOrWhitespace;
      if (((isPunctuationOrWhitespace | v10 ^ 1) & 1) == 0)
      {
        break;
      }

      if (!isPunctuationOrWhitespace)
      {
        goto LABEL_27;
      }

LABEL_28:
      v4 = v4[1];
      if (v4 == v3)
      {
        v4 = *(this + 110);
        goto LABEL_65;
      }
    }

    v22 = v13 + 3;
    if (v13[3] >= 4)
    {
      v23.length = 4;
    }

    else
    {
      v23.length = v13[3];
    }

    v23.location = v13[2];
    CFStringGetCharacters(*(*(this + 2) + 8), v23, buffer);
    v24 = *v22;
    if (*v22 > 2)
    {
      if (v24 == 3)
      {
        v25 = buffer[2];
        if (buffer[0] != 109 || buffer[1] != 97 || buffer[2] != 108)
        {
          if (buffer[0] != 110 || buffer[1] != 111)
          {
            goto LABEL_28;
          }

LABEL_58:
          if (v25 != 110)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (v24 != 4 || buffer[0] != 97 || buffer[1] != 110 || buffer[2] != 116)
        {
          goto LABEL_28;
        }

        v26 = buffer[3] == 105 ? v16 : 1;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (v24 != 1)
      {
        if (v24 != 2)
        {
          goto LABEL_28;
        }

        v25 = buffer[1];
        if (buffer[0] == 99 && buffer[1] == 111)
        {
          goto LABEL_27;
        }

        if (buffer[0] != 117)
        {
          goto LABEL_28;
        }

        goto LABEL_58;
      }

      if (buffer[0] != 97 && buffer[0] != 116)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    v13[3] = v12[2] + v12[3] - v13[2];
    v18 = *v4;
    v17 = v4[1];
    *(v18 + 8) = v17;
    *v17 = v18;
    --*(this + 111);
    CoreNLP::NLAttributedToken::~NLAttributedToken(v4 + 2);
    operator delete(v4);
    v20 = *v12;
    v19 = v12[1];
    v20[1] = v19;
    *v19 = v20;
    --*(this + 111);
    CoreNLP::NLAttributedToken::~NLAttributedToken(v12 + 2);
    operator delete(v12);
    CoreNLP::extractTokenExtendedAttributes(*(*(this + 2) + 8), (v13 + 2), v21);
    v4 = v13;
    goto LABEL_28;
  }

LABEL_65:
  while (v4 != v3)
  {
    if (CoreNLP::isTerminator((v4 + 2), a2))
    {
      while (1)
      {
        v27 = v4[1];
        if (v27 == v3 || !CoreNLP::isTerminator((v27 + 2), a2))
        {
          break;
        }

        v4[3] = v27[2] + v27[3] - v4[2];
        v29 = *v27;
        v28 = v27[1];
        v29[1] = v28;
        *v28 = v29;
        --*(this + 111);
        CoreNLP::NLAttributedToken::~NLAttributedToken(v27 + 2);
        operator delete(v27);
        v4[11] = 0;
        v4[4] = 0;
        CoreNLP::extractTokenExtendedAttributes(*(*(this + 2) + 8), (v4 + 2), v30);
      }
    }

    v4 = v4[1];
  }

  v31 = *(this + 110);
  v32 = *(this + 107);
  CurrentDominantScriptID = CoreNLP::TaggerContext::getCurrentDominantScriptID(*(this + 2));
  v97 = this + 848;
  if (CurrentDominantScriptID && CurrentDominantScriptID != 5)
  {
    while (1)
    {
      if (v31 == v3)
      {
        goto LABEL_154;
      }

      if (v31[3] == 1 && (*(v31 + 91) & 2) != 0)
      {
        break;
      }

LABEL_150:
      v31 = v31[1];
    }

    v104.location = v31[2];
    v104.length = 1;
    CFStringGetCharacters(*(*(this + 2) + 8), v104, &v98);
    if (v98 != 46)
    {
      goto LABEL_148;
    }

    for (; v32 != v97; v32 = *(v32 + 1))
    {
      if (*(v32 + 3) + *(v32 + 2) >= v31[3] + v31[2])
      {
        break;
      }
    }

    if (v32 == v97)
    {
      goto LABEL_154;
    }

    v36 = *(v32 + 3) + *(v32 + 2);
    v37 = v31[1];
    v38 = v31[3] + v31[2];
    v39 = v36 == v38;
    if (v37 != v3)
    {
      while (CoreNLP::isWhitespaceOrNewline((v37 + 16), v34))
      {
        v37 = *(v37 + 1);
        if (v37 == v3)
        {
          v39 = 1;
          goto LABEL_95;
        }
      }

      v40 = *(v37 + 2);
      v41 = *(v32 + 2);
      if (v40 == -1 || v41 == -1)
      {
        v43 = 1;
      }

      else
      {
        v46 = v40 < v41;
        v44 = *(v37 + 3) + v40;
        v45 = *(v32 + 3) + v41;
        v46 = !v46 && v44 <= v45;
        v43 = !v46;
      }

      if (v36 == v38)
      {
        v39 = 1;
      }

      else
      {
        v39 = v43;
      }
    }

LABEL_95:
    v48 = *v31;
    v47 = v31[1];
    v96 = !v39;
    if (v47 != v3)
    {
      v49 = v47[11];
      LODWORD(v99) = 1;
      *buffer = &v99;
      v51 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v47 + 5), &v99, &std::piecewise_construct, buffer) + 10) != 6 && (v47[11] & 0x800000 | v49 & 0x1000000) == 0;
      LODWORD(v99) = 1;
      *buffer = &v99;
      v52 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v47 + 5), &v99, &std::piecewise_construct, buffer) + 10) != 5 && v51;
      v96 &= v52;
    }

    v53 = *(this + 110);
    if (v31 == v53 || !v39)
    {
      if (v47 != v3)
      {
LABEL_140:
        if (v31 != v53 && !CoreNLP::isPunctuationOrWhitespace((v48 + 2), v34) && !CoreNLP::isPunctuationOrWhitespace((v47 + 2), v34))
        {
          v48[3] = v47[2] + v47[3] - v48[2];
          v70 = *v31;
          v69 = v31[1];
          *(v70 + 8) = v69;
          *v69 = v70;
          --*(this + 111);
          CoreNLP::NLAttributedToken::~NLAttributedToken(v31 + 2);
          operator delete(v31);
          v72 = *v47;
          v71 = v47[1];
          v72[1] = v71;
          *v71 = v72;
          --*(this + 111);
          CoreNLP::NLAttributedToken::~NLAttributedToken(v47 + 2);
          operator delete(v47);
          v48[11] = 0;
          v48[4] = 0;
          CoreNLP::extractTokenExtendedAttributes(*(*(this + 2) + 8), (v48 + 2), v73);
          goto LABEL_149;
        }
      }

LABEL_143:
      if (v31 != *(this + 110) && !CoreNLP::isPunctuationOrWhitespace((v48 + 2), v34) && (v96 & 1) != 0)
      {
        v48[3] = v31[3] + v31[2] - v48[2];
        v67 = *v31;
        v66 = v31[1];
        *(v67 + 8) = v66;
        *v66 = v67;
        --*(this + 111);
        CoreNLP::NLAttributedToken::~NLAttributedToken(v31 + 2);
        operator delete(v31);
        v48[11] = 0;
        v48[4] = 0;
        CoreNLP::extractTokenExtendedAttributes(*(*(this + 2) + 8), (v48 + 2), v68);
        v48[11] |= 0x40000000uLL;
        goto LABEL_149;
      }

      if (v47 != v3 && !CoreNLP::isPunctuationOrWhitespace((v47 + 2), v34))
      {
        v62 = v47[2] + v47[3] - v31[2];
        v31[11] = 0;
        v31[3] = v62;
        v31[4] = 0;
        v64 = *v47;
        v63 = v47[1];
        v64[1] = v63;
        *v63 = v64;
        --*(this + 111);
        CoreNLP::NLAttributedToken::~NLAttributedToken(v47 + 2);
        operator delete(v47);
        CoreNLP::extractTokenExtendedAttributes(*(*(this + 2) + 8), (v31 + 2), v65);
      }

LABEL_148:
      v48 = v31;
LABEL_149:
      v31 = v48;
      goto LABEL_150;
    }

    if (*(v32 + 1) == v97)
    {
LABEL_138:
      if (v47 != v3)
      {
        v96 |= (*(v47 + 90) & 0x40) >> 6;
        v53 = *(this + 110);
        goto LABEL_140;
      }

      goto LABEL_143;
    }

    v35.location = v48[3];
    CoreNLP::getUTF8StringFromCFStringInRange(buffer, *(*(this + 2) + 8), v48[2], v35);
    if (SHIBYTE(v102) < 0)
    {
      if (v101 != 3)
      {
        goto LABEL_134;
      }

      v56 = *buffer;
      v57 = **buffer == 28487 && *(*buffer + 2) == 118;
      if (v57 || (**buffer == 25927 ? (v58 = *(*buffer + 2) == 110) : (v58 = 0), v58))
      {
LABEL_135:
        v96 = 1;
LABEL_136:
        if (SHIBYTE(v102) < 0)
        {
          operator delete(*buffer);
        }

        goto LABEL_138;
      }
    }

    else
    {
      if (SHIBYTE(v102) != 3)
      {
        goto LABEL_134;
      }

      if (buffer[0] == 28487 && LOBYTE(buffer[1]) == 118)
      {
        goto LABEL_135;
      }

      if (buffer[0] == 25927 && LOBYTE(buffer[1]) == 110)
      {
        goto LABEL_135;
      }

      v56 = buffer;
    }

    v59 = *v56;
    v60 = *(v56 + 2);
    if (v59 != 25423 || v60 != 116)
    {
LABEL_134:
      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buffer, "z"))
      {
        goto LABEL_136;
      }

      goto LABEL_135;
    }

    goto LABEL_135;
  }

LABEL_154:
  v74 = *(this + 107);
  v75 = *(this + 110);
  if (v75 != v3 && v74 != v97)
  {
    v77 = v3;
    while (1)
    {
      v78 = *(v75 + 2);
      v79 = *(v75 + 3) + v78;
      v80 = *(v74 + 2);
      v81 = *(v74 + 3) + v80;
      v83 = v78 < v80 || v79 > v81;
      v85 = v78 == -1 || v80 == -1 || v83;
      v86 = v75;
      if ((v75[91] & 0x40) == 0)
      {
        if (CoreNLP::isWhitespaceOrNewline((v75 + 16), v34))
        {
          v86 = v77;
        }

        else
        {
          v86 = v3;
        }
      }

      if (v79 == v81)
      {
        if (v86 == v3 || (v87 = *(v86 + 2), v87 == -1) || (v88 = *(v74 + 2), v88 == -1))
        {
          if (v85)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v46 = v87 < v88;
          v89 = *(v86 + 3) + v87;
          v90 = *(v74 + 3) + v88;
          v92 = !v46 && v89 <= v90;
          if ((v92 | v85))
          {
LABEL_190:
            v93 = *(v74 + 1);
            if (v93 == v97)
            {
              v75 = *(v75 + 1);
              v74 = *(v74 + 1);
            }

            else
            {
              *(v74 + 3) = *(v93 + 3) + *(v93 + 2) - *(v74 + 2);
              v95 = *v93;
              v94 = *(v93 + 1);
              *(v95 + 8) = v94;
              *v94 = v95;
              --*(this + 108);
              CoreNLP::NLAttributedToken::~NLAttributedToken(v93 + 2);
              operator delete(v93);
            }

            goto LABEL_195;
          }
        }

        v74 = *(v74 + 1);
      }

      else if (v85)
      {
        goto LABEL_190;
      }

      v75 = *(v75 + 1);
LABEL_195:
      if (v75 != v3)
      {
        v77 = v86;
        if (v74 != v97)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_19D1938A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, char a15)
{
  a13 = &a15;
  std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::vector<CoreNLP::NLAttributedToken *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::SubWordTagger *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CoreNLP::Orthography::~Orthography(CoreNLP::Orthography *this)
{
  *this = &unk_1F10AF5F0;
  v1 = this + 16;
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(v1);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AF5F0;
  v1 = this + 16;
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(v1);
}

void std::__hash_table<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void CoreNLP::CompositeTagger::tagCurrentParagraph(CoreNLP::CompositeTagger *this, CoreNLP::NLAttributedToken *a2)
{
  v15 = a2;
  v3 = (this + 32);
  v4 = (this + 24);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this + 24, *(this + 4));
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  v5 = v3[79];
  v6 = v3 + 80;
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 7);
      v9 = v8 > 0xC || ((1 << v8) & 0x1300) == 0;
      if (!v9)
      {
        CoreNLP::TaggingModelManager::addTask(v4, v8, *(this + 234));
        v7 = 1;
      }

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
        do
        {
          v11 = v5[2];
          v9 = *v11 == v5;
          v5 = v11;
        }

        while (!v9);
      }

      v5 = v11;
    }

    while (v11 != v6);
    if (v7)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      std::vector<CoreNLP::NLAttributedToken *>::push_back[abi:ne200100](&__p, &v15);
      CoreNLP::TaggingModelManager::tagInstance(v4, &__p, *(this + 2), 2);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_19D193C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CoreNLP::skipTokenForOptions(CoreNLP *this, unint64_t a2)
{
  v3 = *(this + 2);
  v4 = 1;
  v5 = 1;
  if ((v3 & 0x800) == 0)
  {
    v5 = (*(this + 74) >> 5) & 1;
  }

  v9 = 1;
  v10 = &v9;
  v6 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(this + 24, &v9, &std::piecewise_construct, &v10) + 10);
  if (v6 == 91)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v3 >> 10) & 1;
  }

  if (((a2 & 4) == 0 || (v5 & 1) == 0) && ((a2 & 2) == 0 || (v3 & 0x400) == 0) && ((a2 & 1) == 0 || v6 != 91))
  {
    return (a2 >> 3) & 1 & ((v7 | v5) ^ 1u);
  }

  return v4;
}