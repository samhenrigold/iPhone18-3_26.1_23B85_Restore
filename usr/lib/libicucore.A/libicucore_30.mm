icu::Measure *icu::Measure::Measure(icu::Measure *this)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;
  return this;
}

{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;
  return this;
}

icu::Measure *icu::Measure::Measure(icu::Measure *this, const icu::Formattable *a2, icu::MeasureUnit *a3, UErrorCode *a4)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8), a2);
  *(this + 15) = a3;
  if (*a4 <= 0)
  {
    isNumeric = icu::Formattable::isNumeric((this + 8));
    if (!a3 || !isNumeric)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::Measure::Measure(icu::Measure *this, const icu::Measure *a2)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;

  return icu::Measure::operator=(this, a2);
}

{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;

  return icu::Measure::operator=(this, a2);
}

uint64_t icu::Measure::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    icu::Formattable::operator=(a1 + 8, a2 + 8);
    v5 = *(a2 + 120);
    if (v5)
    {
      v5 = (*(*v5 + 24))(v5);
    }

    *(a1 + 120) = v5;
  }

  return a1;
}

void icu::Measure::~Measure(icu::Measure *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F093E248;
  v3 = *(this + 15);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::Formattable::~Formattable(a2, (this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::Measure::~Measure(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Measure::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_19520B9EC(*(*a1 - 8), *(*a2 - 8)) || !icu::Formattable::operator==((a1 + 1), (a2 + 1)))
  {
    return 0;
  }

  v4 = a1[15];
  v5 = a2[15];
  v6 = (v4 == 0) == (v5 == 0);
  if (!v4 || !v5)
  {
    return v6;
  }

  v7 = *(*v4 + 32);

  return v7();
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F093E290;
  Default = icu::Locale::getDefault(v6);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a3);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 80))(this, a2, a3);
  return this;
}

uint64_t icu::MessageFormat::PluralSelectorProvider::PluralSelectorProvider(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_1F093E3E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a3;
  return result;
}

{
  *result = &unk_1F093E3E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a3;
  return result;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(this);
  *v8 = &unk_1F093E290;
  icu::Locale::Locale((v8 + 41), a3);
  icu::MessagePattern::MessagePattern((this + 552), a4);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 80))(this, a2, a4);
  return this;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, const icu::Locale *a3, UParseError *a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(this);
  *v10 = &unk_1F093E290;
  icu::Locale::Locale((v10 + 41), a3);
  icu::MessagePattern::MessagePattern((this + 552), a5);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 88))(this, a2, a4, a5);
  return this;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::MessageFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F093E290;
  icu::Locale::Locale((v4 + 41), a2 + 328);
  icu::MessagePattern::MessagePattern((this + 552), (a2 + 552));
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = *(a2 + 712);
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  v6 = U_ZERO_ERROR;
  icu::MessageFormat::copyObjects(this, a2, &v6);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    icu::MessageFormat::resetPattern(this);
  }

  return this;
}

uint64_t icu::MessageFormat::copyObjects(icu::MessageFormat *this, const icu::MessageFormat *a2, UErrorCode *a3)
{
  v6 = *(a2 + 176);
  *(this + 176) = v6;
  if (v6 >= 1)
  {
    result = icu::MessageFormat::allocateArgTypes(this, v6, a3);
    if (!result)
    {
      return result;
    }

    memcpy(*(this + 87), *(a2 + 87), 4 * *(this + 176));
  }

  v8 = *(this + 92);
  if (v8)
  {
    uhash_removeAll(v8);
  }

  v9 = *(this + 93);
  if (v9)
  {
    uhash_removeAll(v9);
  }

  v10 = *(a2 + 92);
  if (!v10)
  {
    goto LABEL_16;
  }

  if (!*(this + 92))
  {
    result = uhash_open(uhash_hashLong, uhash_compareLong, sub_195346A84, a3);
    *(this + 92) = result;
    if (*a3 > 0)
    {
      return result;
    }

    uhash_setValueDeleter(result, uprv_deleteUObject);
    v10 = *(a2 + 92);
  }

  v11 = uhash_count(v10);
  v19 = -1;
  if (v11 >= 1 && *a3 <= 0)
  {
    v12 = v11;
    v13 = 1;
    while (1)
    {
      v14 = uhash_nextElement(*(a2 + 92), &v19);
      result = (*(**(v14 + 8) + 32))(*(v14 + 8));
      if (!result)
      {
        break;
      }

      uhash_iput(*(this + 92), *(v14 + 16), result, a3);
      if (v13 < v12)
      {
        ++v13;
        if (*a3 < 1)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  else
  {
LABEL_16:
    result = *(a2 + 93);
    if (result)
    {
      if (!*(this + 93))
      {
        *(this + 93) = uhash_open(uhash_hashLong, uhash_compareLong, 0, a3);
        result = *(a2 + 93);
      }

      result = uhash_count(result);
      v18 = -1;
      if (result >= 1 && *a3 <= 0)
      {
        v15 = result;
        v16 = 1;
        do
        {
          v17 = uhash_nextElement(*(a2 + 93), &v18);
          result = uhash_iputi(*(this + 93), *(v17 + 16), *(v17 + 8), a3);
          if (v16 >= v15)
          {
            break;
          }

          ++v16;
        }

        while (*a3 < 1);
      }
    }
  }

  return result;
}

void icu::MessageFormat::resetPattern(void ***this)
{
  icu::MessagePattern::clear((this + 69));
  uhash_close(this[92]);
  this[92] = 0;
  uhash_close(this[93]);
  this[93] = 0;
  *(this + 176) = 0;
  *(this + 712) = 0;
}

void icu::MessageFormat::~MessageFormat(icu::MessageFormat *this)
{
  *this = &unk_1F093E290;
  uhash_close(*(this + 92));
  uhash_close(*(this + 93));
  free(*(this + 87));
  free(*(this + 85));
  v2 = *(this + 90);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 91);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider((this + 784));
  icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider((this + 752));
  icu::MessagePattern::~MessagePattern((this + 552), v4);
  icu::Locale::~Locale(v5, (this + 328));

  icu::Format::~Format(this);
}

{
  icu::MessageFormat::~MessageFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::MessageFormat::allocateArgTypes(icu::MessageFormat *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(this + 177);
  if (v5 >= a2)
  {
    return 1;
  }

  v7 = 2 * v5;
  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (a2 >= 10)
  {
    v8 = v7;
  }

  else
  {
    v8 = 10;
  }

  result = malloc_type_realloc(*(this + 87), 4 * v8, 0x100004052888210uLL);
  if (result)
  {
    *(this + 87) = result;
    *(this + 177) = v8;
    return 1;
  }

  *a3 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

icu::MessageFormat *icu::MessageFormat::operator=(icu::MessageFormat *a1, icu::MessageFormat *a2)
{
  if (a1 != a2)
  {
    icu::Format::operator=(a1, a2);
    (*(*a1 + 64))(a1, a2 + 328);
    icu::MessagePattern::operator=(a1 + 552, a2 + 552);
    *(a1 + 712) = *(a2 + 712);
    v5 = U_ZERO_ERROR;
    icu::MessageFormat::copyObjects(a1, a2, &v5);
    if (v5 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      icu::MessageFormat::resetPattern(a1);
    }
  }

  return a1;
}

BOOL icu::MessageFormat::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!icu::Format::operator==(a1, a2) || !icu::MessagePattern::operator==((a1 + 69), (a2 + 69)) || !icu::Locale::operator==((a1 + 41), (a2 + 41)))
  {
    return 0;
  }

  v4 = a1[93];
  v5 = a2[93];
  v6 = (v4 == 0) == (v5 == 0);
  if (!v4 || !v5)
  {
    return v6;
  }

  v7 = uhash_count(v4);
  if (v7 != uhash_count(a2[93]))
  {
    return 0;
  }

  v18 = -1;
  v19 = -1;
  if (v7 < 1)
  {
    return 1;
  }

  v8 = uhash_nextElement(a1[93], &v19);
  v9 = uhash_nextElement(a2[93], &v18);
  v10 = *(v8 + 16);
  v11 = (v9 + 16);
  if (v10 != *(v9 + 16))
  {
    return 0;
  }

  v6 = 0;
  v12 = 1;
  do
  {
    v13 = uhash_iget(a1[92], v10);
    v14 = uhash_iget(a2[92], *v11);
    if (!(*(*v13 + 24))(v13, v14))
    {
      break;
    }

    v6 = v12 >= v7;
    if (v7 == v12)
    {
      break;
    }

    v15 = uhash_nextElement(a1[93], &v19);
    v16 = uhash_nextElement(a2[93], &v18);
    v10 = *(v15 + 16);
    v11 = (v16 + 16);
    ++v12;
  }

  while (v10 == *(v16 + 16));
  return v6;
}

uint64_t icu::MessageFormat::setLocale(icu::MessageFormat *this, const icu::Locale *a2)
{
  result = icu::Locale::operator==(this + 328, a2);
  if ((result & 1) == 0)
  {
    v5 = *(this + 90);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 90) = 0;
    v6 = *(this + 91);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 91) = 0;
    icu::Locale::operator=((this + 328), a2);
    icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
    v7 = *(this + 96);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(this + 96) = 0;
    result = *(this + 100);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 100) = 0;
  }

  return result;
}

uint64_t icu::MessageFormat::PluralSelectorProvider::reset(icu::MessageFormat::PluralSelectorProvider *this)
{
  result = *(this + 2);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = 0;
  return result;
}

uint64_t icu::MessageFormat::applyPattern(icu::MessageFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  return (*(*this + 88))(this, a2, v4, a3);
}

void icu::MessageFormat::applyPattern(int32x2_t *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    icu::MessagePattern::parse(&this[69], a2, a3, a4);
    icu::MessageFormat::cacheExplicitFormats(this, a4);
    if (*a4 >= 1)
    {

      icu::MessageFormat::resetPattern(this);
    }
  }
}

void icu::MessageFormat::cacheExplicitFormats(int32x2_t *this, UErrorCode *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v4 = this[92];
    if (v4)
    {
      uhash_removeAll(v4);
    }

    v5 = this[93];
    if (v5)
    {
      uhash_removeAll(v5);
    }

    v6 = 0;
    v7 = this[81].i32[0];
    v8 = (v7 - 2);
    this[88].i32[0] = 0;
    v9 = *a2;
    if (v7 >= 5 && v9 <= 0)
    {
      v6 = 0;
      v11 = (*&this[80] + 42);
      v12 = 3;
      do
      {
        if (*(v11 - 5) == 7)
        {
          v13 = *v11;
          if (v6 <= v13)
          {
            v6 = v13 + 1;
            this[88].i32[0] = v13 + 1;
            v9 = *a2;
          }
        }

        if (v12 >= v8)
        {
          break;
        }

        v11 += 8;
        ++v12;
      }

      while (v9 <= 0);
    }

    if (icu::MessageFormat::allocateArgTypes(this, v6, a2))
    {
      v14 = this[88].u32[0];
      if (v14 >= 1)
      {
        memset_pattern16(*&this[87], &unk_195490510, 4 * v14);
      }

      this[89].i8[0] = 0;
      if (v7 >= 4)
      {
        v15 = *a2;
        if (*a2 <= 0)
        {
          v16 = 1;
          while (1)
          {
            v17 = *&this[80] + 16 * v16;
            if (*v17 == 5)
            {
              break;
            }

LABEL_47:
            if (++v16 >= v8 || v15 >= 1)
            {
              return;
            }
          }

          if (*(v17 + 16) == 7)
          {
            v18 = *(v17 + 26);
          }

          else
          {
            v18 = -1;
          }

          v19 = *(v17 + 10);
          v30 = 0;
          if (v19 <= 1)
          {
            if (v19)
            {
              memset(v38, 0, 64);
              v20 = v16 + 3;
              icu::UnicodeString::tempSubString(v38, &this[71], *(v17 + 36), *(v17 + 40));
              v37 = 0;
              v36 = 0u;
              v35 = 0u;
              v34 = 0u;
              v33 = &unk_1F0935D00;
              LOWORD(v34) = 2;
              v21 = *&this[80] + 16 * v20;
              if (*v21 == 10)
              {
                icu::UnicodeString::tempSubString(v31, &this[71], *(v21 + 4), *(v21 + 8));
                icu::UnicodeString::operator=(&v33, v31);
                icu::UnicodeString::~UnicodeString(v22, v31);
                LODWORD(v20) = v16 + 4;
              }

              v32 = 0;
              memset(v31, 0, sizeof(v31));
              v23 = icu::MessageFormat::createAppropriateFormat(this, v38, &v33, &v30, v31, a2);
              icu::MessageFormat::setArgStartFormat(this, v16, v23, a2);
              icu::UnicodeString::~UnicodeString(v24, &v33);
              icu::UnicodeString::~UnicodeString(v25, v38);
              v16 = v20;
              goto LABEL_39;
            }
          }

          else
          {
            if ((v19 - 2) < 2)
            {
LABEL_32:
              v30 = 1;
LABEL_39:
              if (v18 != -1)
              {
                v26 = this[87];
                v27 = *(*&v26 + 4 * v18);
                v28 = v30;
                if (v27 != 6 && v27 != v30)
                {
                  this[89].i8[0] = 1;
                }

                *(*&v26 + 4 * v18) = v28;
              }

              v15 = *a2;
              goto LABEL_47;
            }

            if (v19 != 4)
            {
              if (v19 == 5)
              {
                goto LABEL_32;
              }

              *a2 = U_INTERNAL_PROGRAM_ERROR;
            }
          }

          v30 = 3;
          goto LABEL_39;
        }
      }
    }
  }
}

uint64_t icu::MessageFormat::applyPattern(_DWORD *a1, uint64_t a2, int a3, _OWORD *a4, uint64_t a5)
{
  if (a1[140] != a3)
  {
    icu::MessagePattern::clear((a1 + 138));
    a1[140] = a3;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v12;
  }

  return (*(*a1 + 88))(a1, a2, v10, a5);
}

icu::UnicodeString *icu::MessageFormat::toPattern(icu::MessageFormat *this, icu::UnicodeString *a2)
{
  v4 = *(this + 93);
  if (v4 && uhash_count(v4) || !*(this + 162))
  {
    icu::UnicodeString::setToBogus(a2);
    return a2;
  }

  else
  {
    v5 = *(this + 288);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(this + 145);
    }

    return icu::UnicodeString::doAppend(a2, (this + 568), 0, v8);
  }
}

uint64_t icu::MessageFormat::nextTopLevelArgStart(icu::MessageFormat *this, int a2)
{
  v2 = *(this + 80);
  if (a2)
  {
    v3 = *(v2 + 16 * a2 + 12);
    if (v3 <= a2)
    {
      v3 = a2;
    }

    result = v3;
  }

  else
  {
    result = 0;
  }

  v5 = (v2 + 16 * result + 16);
  while (1)
  {
    v7 = *v5;
    v5 += 4;
    v6 = v7;
    if (v7 == 1)
    {
      break;
    }

    result = (result + 1);
    if (v6 == 5)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

int32x2_t *icu::MessageFormat::setArgStartFormat(int32x2_t *this, unsigned int a2, icu::Format *a3, UErrorCode *a4)
{
  if (*a4 >= 1)
  {
    if (!a3)
    {
      return this;
    }

LABEL_3:
    v5 = *(*a3 + 8);

    return v5(a3);
  }

  v8 = this;
  if (this[92])
  {
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    this = uhash_open(uhash_hashLong, uhash_compareLong, sub_195346A84, a4);
    v8[92] = this;
    if (*a4 >= 1)
    {
      if (!a3)
      {
        return this;
      }

      goto LABEL_3;
    }

    uhash_setValueDeleter(this, uprv_deleteUObject);
    if (!a3)
    {
LABEL_8:
      operator new();
    }
  }

  v9 = v8[92];

  return uhash_iput(v9, a2, a3, a4);
}

BOOL icu::MessageFormat::argNameMatches(icu::MessageFormat *this, int a2, const icu::UnicodeString *a3, int a4)
{
  v4 = *(this + 80) + 16 * a2;
  if (*v4 == 8)
  {
    return sub_195346AE8(this + 552, v4, a3);
  }

  else
  {
    return *(v4 + 10) == a4;
  }
}

BOOL sub_195346AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v8 = (*(a1 + 24) & 1) == 0;
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 4);
    if ((v3 & 0x8000u) == 0)
    {
      v6 = v3 >> 5;
    }

    else
    {
      v6 = *(a3 + 12);
    }

    if ((v3 & 2) != 0)
    {
      v7 = a3 + 10;
    }

    else
    {
      v7 = *(a3 + 24);
    }

    v8 = icu::UnicodeString::doCompare(a1 + 16, v5, v4, v7, v6 & (v6 >> 31), v6 & ~(v6 >> 31));
  }

  return v8 == 0;
}

uint64_t icu::MessageFormat::setCustomArgStartFormat(int32x2_t *this, unsigned int a2, icu::Format *a3, UErrorCode *a4)
{
  icu::MessageFormat::setArgStartFormat(this, a2, a3, a4);
  v7 = this[93];
  if (!v7)
  {
    v7 = uhash_open(uhash_hashLong, uhash_compareLong, 0, a4);
    this[93] = v7;
  }

  return uhash_iputi(v7, a2, 1u, a4);
}

const void *icu::MessageFormat::getCachedFormatter(icu::MessageFormat *this, unsigned int a2)
{
  v2 = *(this + 92);
  if (!v2)
  {
    return 0;
  }

  v3 = uhash_iget(v2, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  {
    return 0;
  }

  return v4;
}

icu::MessageFormat *icu::MessageFormat::adoptFormats(icu::MessageFormat *this, icu::Format **a2, int a3)
{
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v5 = this;
    v6 = *(this + 92);
    if (v6)
    {
      uhash_removeAll(v6);
    }

    this = v5[93];
    if (this)
    {
      this = uhash_removeAll(this);
    }

    v16 = U_ZERO_ERROR;
    if (a3)
    {
      v7 = 0;
      LODWORD(v8) = 0;
      do
      {
        v9 = v5[80];
        if (v8)
        {
          v10 = *(*&v9 + 16 * v8 + 12);
          if (v10 <= v8)
          {
            v8 = v8;
          }

          else
          {
            v8 = v10;
          }
        }

        else
        {
          v8 = 0;
        }

        v11 = (*&v9 + 16 * v8 + 16);
        while (1)
        {
          v13 = *v11;
          v11 += 4;
          v12 = v13;
          LODWORD(v8) = v8 + 1;
          if (v13 == 5)
          {
            break;
          }

          if (v12 == 1)
          {
            goto LABEL_22;
          }
        }

        this = icu::MessageFormat::setCustomArgStartFormat(v5, v8, a2[v7++], &v16);
      }

      while (v7 < a3 && v16 <= U_ZERO_ERROR);
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_22:
    if (v7 < a3)
    {
      v14 = &a2[v7];
      v15 = a3 - v7;
      do
      {
        this = *v14;
        if (*v14)
        {
          this = (*(*this + 8))(this);
        }

        ++v14;
        --v15;
      }

      while (v15);
    }
  }

  return this;
}

void icu::MessageFormat::setFormats(int32x2_t *this, const icu::Format **a2, unsigned int a3)
{
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v6 = this[92];
    if (v6)
    {
      uhash_removeAll(v6);
    }

    v7 = this[93];
    if (v7)
    {
      uhash_removeAll(v7);
    }

    v18 = U_ZERO_ERROR;
    if (a3)
    {
      v8 = U_ZERO_ERROR;
      v9 = 0;
      LODWORD(v10) = 0;
LABEL_9:
      v11 = this[80];
      if (v10)
      {
        v12 = *(*&v11 + 16 * v10 + 12);
        if (v12 <= v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v12;
        }
      }

      else
      {
        v10 = 0;
      }

      v13 = (*&v11 + 16 * v10 + 16);
      while (1)
      {
        v15 = *v13;
        v13 += 4;
        v14 = v15;
        if (v15 == 1)
        {
          break;
        }

        LODWORD(v10) = v10 + 1;
        if (v14 == 5)
        {
          v16 = a2[v9];
          if (v16)
          {
            v17 = (*(*v16 + 32))(v16);
            if (!v17)
            {
              v18 = U_MEMORY_ALLOCATION_ERROR;
            }
          }

          else
          {
            v17 = 0;
          }

          icu::MessageFormat::setCustomArgStartFormat(this, v10, v17, &v18);
          ++v9;
          v8 = v18;
          if (v9 < a3 && v18 <= U_ZERO_ERROR)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      if (v8 >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        icu::MessageFormat::resetPattern(this);
      }
    }
  }
}

int32x2_t *icu::MessageFormat::adoptFormat(int32x2_t *this, int a2, icu::Format *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = this[80];
LABEL_3:
    if (v5)
    {
      v7 = *(*&v6 + 16 * v5 + 12);
      if (v7 <= v5)
      {
        v5 = v5;
      }

      else
      {
        v5 = v7;
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = (*&v6 + 16 + 16 * v5);
    while (1)
    {
      v10 = *v8;
      v8 += 4;
      v9 = v10;
      if (v10 == 1)
      {
        break;
      }

      LODWORD(v5) = v5 + 1;
      if (v9 == 5)
      {
        if (v4++ != a2)
        {
          goto LABEL_3;
        }

        v13 = U_ZERO_ERROR;
        return icu::MessageFormat::setCustomArgStartFormat(this, v5, a3, &v13);
      }
    }
  }

  if (a3)
  {
    v12 = *(*a3 + 8);

    return v12(a3);
  }

  return this;
}

uint64_t icu::MessageFormat::adoptFormat(uint64_t this, const icu::UnicodeString *a2, icu::Format *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
LABEL_4:
    if (a3)
    {
LABEL_5:
      v8 = *(*a3 + 8);

      return v8(a3);
    }

    return this;
  }

  v7 = this;
  this = icu::MessagePattern::validateArgumentName(a2, a2);
  if (this < -1)
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_4;
  }

  v9 = this;
  LODWORD(v10) = 0;
  v11 = a3;
LABEL_9:
  v12 = v7[80];
  if (v10)
  {
    v13 = *(*&v12 + 16 * v10 + 12);
    if (v13 <= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = (*&v12 + 16 * v10 + 16);
  while (1)
  {
    v16 = *v14;
    v14 += 4;
    v15 = v16;
    if (v16 == 1)
    {
      break;
    }

    LODWORD(v10) = v10 + 1;
    if (v15 == 5)
    {
      if (*a4 <= 0)
      {
        v17 = *&v12 + 16 * (v10 + 1);
        if (*v17 == 8)
        {
          this = sub_195346AE8(&v7[69], v17, a2);
          if (!this)
          {
            goto LABEL_9;
          }
        }

        else
        {
          this = v9 == *(v17 + 10);
          if (v9 != *(v17 + 10))
          {
            goto LABEL_9;
          }
        }

        if (v11 || !a3 || (this = (*(*a3 + 32))(a3), (v11 = this) != 0))
        {
          this = icu::MessageFormat::setCustomArgStartFormat(v7, v10, v11, a4);
          v11 = 0;
          goto LABEL_9;
        }

        *a4 = U_MEMORY_ALLOCATION_ERROR;
        return this;
      }

      break;
    }
  }

  a3 = v11;
  if (v11)
  {
    goto LABEL_5;
  }

  return this;
}

int32x2_t *icu::MessageFormat::setFormat(int32x2_t *this, int a2, const icu::Format *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v3 = this;
    LODWORD(v4) = 0;
    v5 = 0;
    v6 = this[80];
LABEL_3:
    if (v4)
    {
      v7 = *(*&v6 + 16 * v4 + 12);
      if (v7 <= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = 0;
    }

    v8 = (*&v6 + 16 + 16 * v4);
    while (1)
    {
      v10 = *v8;
      v8 += 4;
      v9 = v10;
      if (v10 == 1)
      {
        break;
      }

      LODWORD(v4) = v4 + 1;
      if (v9 == 5)
      {
        if (v5++ != a2)
        {
          goto LABEL_3;
        }

        this = (*(*a3 + 32))(a3);
        if (this)
        {
          v12 = U_ZERO_ERROR;
          return icu::MessageFormat::setCustomArgStartFormat(v3, v4, this, &v12);
        }

        return this;
      }
    }
  }

  return this;
}

const void *icu::MessageFormat::getFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0 && *(this + 92))
  {
    v7 = icu::MessagePattern::validateArgumentName(a2, a2);
    if (v7 >= -1)
    {
      v8 = v7;
      LODWORD(v9) = 0;
LABEL_7:
      v10 = *(this + 80);
      if (v9)
      {
        v11 = *(v10 + 16 * v9 + 12);
        if (v11 <= v9)
        {
          v9 = v9;
        }

        else
        {
          v9 = v11;
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = (v10 + 16 * v9 + 16);
      while (1)
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v14 == 1)
        {
          break;
        }

        LODWORD(v9) = v9 + 1;
        if (v13 == 5)
        {
          v15 = v10 + 16 * (v9 + 1);
          if (*v15 == 8)
          {
            if (!sub_195346AE8(this + 552, v15, a2))
            {
              goto LABEL_7;
            }
          }

          else if (v8 != *(v15 + 10))
          {
            goto LABEL_7;
          }

          return icu::MessageFormat::getCachedFormatter(this, v9);
        }
      }
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return 0;
}

uint64_t icu::MessageFormat::setFormat(uint64_t this, const icu::UnicodeString *a2, const icu::Format *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v7 = this;
    this = icu::MessagePattern::validateArgumentName(a2, a2);
    if (this >= -1)
    {
      v9 = this;
      LODWORD(v10) = 0;
LABEL_7:
      v11 = v7[80];
      if (v10)
      {
        v12 = *(*&v11 + 16 * v10 + 12);
        if (v12 <= v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v12;
        }
      }

      else
      {
        v10 = 0;
      }

      v13 = (*&v11 + 16 * v10 + 16);
      while (1)
      {
        v15 = *v13;
        v13 += 4;
        v14 = v15;
        if (v15 == 1)
        {
          break;
        }

        LODWORD(v10) = v10 + 1;
        if (v14 == 5)
        {
          if (*a4 > 0)
          {
            return this;
          }

          v16 = *&v11 + 16 * (v10 + 1);
          if (*v16 == 8)
          {
            this = sub_195346AE8(&v7[69], v16, a2);
            if (!this)
            {
              goto LABEL_7;
            }
          }

          else
          {
            this = v9 == *(v16 + 10);
            if (v9 != *(v16 + 10))
            {
              goto LABEL_7;
            }
          }

          this = (*(*a3 + 32))(a3);
          if (this)
          {
            this = icu::MessageFormat::setCustomArgStartFormat(v7, v10, this, a4);
            goto LABEL_7;
          }

          v8 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_4;
        }
      }
    }

    else
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_4:
      *a4 = v8;
    }
  }

  return this;
}

void *icu::MessageFormat::getFormats(icu::MessageFormat *this, int *a2)
{
  v4 = 0;
  v5 = *(this + 80);
LABEL_5:
  v7 = 0;
LABEL_6:
  v8 = (v5 + 16 + 16 * v7);
  do
  {
    v10 = *v8;
    v8 += 4;
    v9 = v10;
    LODWORD(v7) = v7 + 1;
    if (v10 == 5)
    {
      ++v4;
      if (!v7)
      {
        goto LABEL_5;
      }

      v6 = *(v5 + 16 * v7 + 12);
      if (v6 <= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v6;
      }

      goto LABEL_6;
    }
  }

  while (v9 != 1);
  *a2 = 0;
  v11 = *(this + 85);
  if (!v11)
  {
    *(this + 172) = v4;
    result = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
    if (result)
    {
      *(this + 85) = result;
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  if (v4 > *(this + 172))
  {
    result = malloc_type_realloc(v11, 8 * v4, 0x2004093837F09uLL);
    if (result)
    {
      *(this + 85) = result;
      *(this + 172) = v4;
      goto LABEL_18;
    }

LABEL_29:
    *(this + 172) = 0;
    return result;
  }

LABEL_18:
  LODWORD(v13) = 0;
LABEL_19:
  v14 = *(this + 80);
  if (v13)
  {
    v15 = *(v14 + 16 * v13 + 12);
    if (v15 <= v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = (v14 + 16 * v13 + 16);
  do
  {
    v18 = *v16;
    v16 += 4;
    v17 = v18;
    LODWORD(v13) = v13 + 1;
    if (v18 == 5)
    {
      CachedFormatter = icu::MessageFormat::getCachedFormatter(this, v13);
      v20 = *(this + 85);
      v21 = *a2;
      *a2 = v21 + 1;
      *(v20 + 8 * v21) = CachedFormatter;
      goto LABEL_19;
    }
  }

  while (v17 != 1);
  return *(this + 85);
}

uint64_t icu::MessageFormat::getFormatNames(icu::MessageFormat *this, UErrorCode *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::UnicodeString *icu::MessageFormat::format(icu::MessageFormat *this, const icu::Formattable *a2, const icu::UnicodeString *a3, uint64_t a4, icu::UnicodeString *a5, icu::FieldPosition *a6, UErrorCode *a7)
{
  if (*a7 <= 0)
  {
    v10[0] = &unk_1F0935D68;
    v10[1] = a5;
    v9[0] = v10;
    v9[1] = 0;
    icu::MessageFormat::format(this, 0, 0, a2, a3, a4, v9, a6, a7);
    icu::UnicodeStringAppendable::~UnicodeStringAppendable(v10);
  }

  return a5;
}

icu::UnicodeString *icu::MessageFormat::format(icu::MessageFormat *this, const icu::UnicodeString *a2, const icu::Formattable *a3, icu::UnicodeString *a4, UErrorCode *a5, UErrorCode *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x330uLL);
  icu::MessageFormat::MessageFormat(v12, this, a5);
  icu::MessageFormat::format(v12, a2, 0, a3, a4, 0, a5);
  icu::MessageFormat::~MessageFormat(v12);
  return a4;
}

icu::UnicodeString *icu::MessageFormat::format(icu::MessageFormat *this, const icu::Formattable **a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (icu::Formattable::getType(a2) == 4)
    {
      icu::MessageFormat::format(this, a2[1], 0, *(a2 + 4), a3, a4, a5);
    }

    else
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a3;
}

const icu::Formattable *icu::MessageFormat::getArgFromListByName(icu::MessageFormat *this, const icu::Formattable *a2, const icu::UnicodeString *a3, unsigned int a4, icu::UnicodeString *a5)
{
  if (a4 >= 1)
  {
    v8 = a5 + 10;
    for (i = a4; i; --i)
    {
      v10 = *(a3 + 4);
      if (*(a3 + 4) < 0)
      {
        v11 = *(a3 + 3);
      }

      else
      {
        v11 = v10 >> 5;
      }

      v12 = *(a5 + 4);
      if (v12)
      {
        if (v10)
        {
          return a2;
        }
      }

      else
      {
        if ((v12 & 0x8000u) == 0)
        {
          v13 = v12 >> 5;
        }

        else
        {
          v13 = *(a5 + 3);
        }

        if ((v12 & 2) != 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *(a5 + 3);
        }

        if (!icu::UnicodeString::doCompare(a3, 0, v11, v14, v13 & (v13 >> 31), v13 & ~(v13 >> 31)))
        {
          return a2;
        }
      }

      a2 = (a2 + 112);
      a3 = (a3 + 64);
    }
  }

  return 0;
}

void *icu::MessageFormat::format(void *result, int a2, uint64_t a3, const icu::Formattable *a4, const icu::UnicodeString *a5, signed int a6, uint64_t *a7, uint64_t a8, UErrorCode *a9)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*a9 <= 0)
  {
    LODWORD(v12) = a2;
    v13 = result;
    v14 = result[80] + 16 * a2;
    v15 = *(v14 + 4) + *(v14 + 8);
    do
    {
      v16 = v12;
      v12 = v12 + 1;
      v17 = v13[80] + 16 * v12;
      v18 = *v17;
      result = sub_195348170(a7, (v13 + 71), v15, *(v17 + 4) - v15);
      if (v18 == 1)
      {
        return result;
      }

      if (v18 != 5)
      {
        v15 = *(v17 + 4) + *(v17 + 8);
        if (v18 == 4)
        {
          if (*(a3 + 216))
          {
            result = sub_1953481EC(a7, *(a3 + 144), (a3 + 16), a3 + 152, a9);
          }

          else
          {
            DefaultNumberFormat = icu::MessageFormat::getDefaultNumberFormat(v13, a9, v19);
            result = sub_19534829C(a7, DefaultNumberFormat, (a3 + 16), a9);
          }
        }

        continue;
      }

      v57 = a8;
      v20 = v13[80];
      if (*(v20 + 16 * v12 + 12) <= v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = *(v20 + 16 * v12 + 12);
      }

      if ((*v17 - 5) > 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v17 + 10);
      }

      v23 = v20 + 16 * v16;
      memset(v68, 0, sizeof(v68));
      v24 = icu::UnicodeString::tempSubString(v68, (v13 + 71), *(v23 + 36), *(v23 + 40));
      if (a5)
      {
        ArgFromListByName = icu::MessageFormat::getArgFromListByName(v24, a4, a5, a6, v68);
        if (!ArgFromListByName)
        {
          goto LABEL_35;
        }

        if (!a3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *(v23 + 42);
        if (v28 < 0 || v28 >= a6)
        {
LABEL_35:
          icu::UnicodeString::UnicodeString(&v61, 123);
          if ((SWORD4(v68[0]) & 0x8000u) == 0)
          {
            v33 = WORD4(v68[0]) >> 5;
          }

          else
          {
            v33 = HIDWORD(v68[0]);
          }

          v34 = icu::UnicodeString::doAppend(&v61, v68, 0, v33);
          LOWORD(v63) = 125;
          v35 = icu::UnicodeString::doAppend(v34, &v63, 0, 1);
          sub_195348360(a7, v35);
          v36 = &v61;
LABEL_53:
          icu::UnicodeString::~UnicodeString(v32, v36);
          goto LABEL_54;
        }

        if (!a4)
        {
          (*(**a7 + 40))(*a7, L"null", 4);
          *(a7 + 2) += 4;
          goto LABEL_54;
        }

        ArgFromListByName = (a4 + 112 * v28);
        if (!a3)
        {
          goto LABEL_26;
        }
      }

      if (*(a3 + 136) == v12)
      {
        v26 = *(a3 + 144);
        if (*(a3 + 128) != 0.0)
        {
          goto LABEL_44;
        }

        sub_1953481EC(a7, v26, (a3 + 16), a3 + 152, a9);
        goto LABEL_54;
      }

LABEL_26:
      CachedFormatter = icu::MessageFormat::getCachedFormatter(v13, v12);
      if (CachedFormatter)
      {
        v30 = CachedFormatter;
        {
          v67 = 0;
          v66 = 0u;
          v65 = 0u;
          v64 = 0u;
          v63 = &unk_1F0935D00;
          LOWORD(v64) = 2;
          icu::Format::format(v30, ArgFromListByName, &v63, a9);
          if ((v64 & 0x8000u) == 0)
          {
            v31 = v64 >> 5;
          }

          else
          {
            v31 = DWORD1(v64);
          }

          if ((icu::UnicodeString::doIndexOf(&v63, 0x7Bu, 0, v31) & 0x80000000) != 0 && ((v64 & 0x8000u) == 0 ? (v40 = v64 >> 5) : (v40 = DWORD1(v64)), (icu::UnicodeString::doIndexOf(&v63, 0x27u, 0, v40) & 0x80000000) != 0 || *(v13 + 140) == 1))
          {
            sub_195348360(a7, &v63);
          }

          else
          {
            bzero(&v61, 0x330uLL);
            icu::MessageFormat::MessageFormat(&v61, &v63, (v13 + 41), a9);
            icu::MessageFormat::format(&v61, 0, 0, a4, a5, a6, a7, v57, a9);
            icu::MessageFormat::~MessageFormat(&v61);
          }

          v36 = &v63;
          goto LABEL_53;
        }

        v39 = a7;
        v26 = v30;
        goto LABEL_45;
      }

      if (!v22 || (v37 = v13[92]) != 0 && uhash_iget(v37, v12))
      {
        if (icu::Formattable::isNumeric(ArgFromListByName))
        {
          v26 = icu::MessageFormat::getDefaultNumberFormat(v13, a9, v38);
        }

        else
        {
          if (icu::Formattable::getType(ArgFromListByName))
          {
            String = icu::Formattable::getString(ArgFromListByName, a9);
            sub_195348360(a7, String);
            goto LABEL_54;
          }

          v26 = v13[91];
          if (!v26)
          {
            icu::DateFormat::createDateTimeInstance(3, 3, (v13 + 41));
          }
        }

LABEL_44:
        v39 = a7;
LABEL_45:
        sub_19534829C(v39, v26, ArgFromListByName, a9);
        goto LABEL_54;
      }

      switch(v22)
      {
        case 2:
          if (!icu::Formattable::isNumeric(ArgFromListByName))
          {
            goto LABEL_76;
          }

          Double = icu::Formattable::getDouble(ArgFromListByName, a9);
          SubMessage = icu::ChoiceFormat::findSubMessage((v13 + 69), (v16 + 3), Double);
          break;
        case 5:
          goto LABEL_66;
        case 4:
          v54 = icu::Formattable::getString(ArgFromListByName, a9);
          SubMessage = icu::SelectFormat::findSubMessage((v13 + 69), (v16 + 3), v54, a9, v55);
          break;
        case 3:
LABEL_66:
          if (!icu::Formattable::isNumeric(ArgFromListByName))
          {
LABEL_76:
            v56 = 1;
LABEL_77:
            *a9 = v56;
            return icu::UnicodeString::~UnicodeString(v56, v68);
          }

          if (v22 == 3)
          {
            v47 = 94;
          }

          else
          {
            v47 = 98;
          }

          PluralOffset = icu::MessagePattern::getPluralOffset((v13 + 69), v16 + 3);
          v61 = 0u;
          memset(v62, 0, 208);
          sub_1953487AC(&v61, v16 + 3, v68, ArgFromListByName, a9, PluralOffset);
          v49 = icu::Formattable::getDouble(ArgFromListByName, a9);
          v51 = icu::PluralFormat::findSubMessage((v13 + 69), (v16 + 3), &v13[v47], &v61, a9, v49, v50);
          icu::MessageFormat::formatComplexSubMessage(v13, v51, &v61, a4, a5, a6, a7, a9);
          icu::UnicodeString::~UnicodeString(v52, (&v62[8] + 8));
          icu::Formattable::~Formattable(v53, v62);
          goto LABEL_54;
        default:
          v56 = 5;
          goto LABEL_77;
      }

      icu::MessageFormat::formatComplexSubMessage(v13, SubMessage, 0, a4, a5, a6, a7, a9);
LABEL_54:
      v41 = v13[80] + 16 * v21;
      v42 = *(v41 + 4);
      v43 = *(v41 + 8);
      v15 = v42 + v43;
      result = icu::UnicodeString::~UnicodeString(v43, v68);
      a8 = 0;
      LODWORD(v12) = v21;
    }

    while (*a9 < 1);
  }

  return result;
}

void *sub_195348170(uint64_t *a1, icu::UnicodeString *this, int a3, int32_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::tempSubString(v7, this, a3, a4);
  sub_195348360(a1, v7);
  return icu::UnicodeString::~UnicodeString(v5, v7);
}

uint64_t *sub_1953481EC(uint64_t *result, icu::Format *a2, icu::Formattable *a3, uint64_t a4, UErrorCode *a5)
{
  if (*(a4 + 8) < 0x20u)
  {
    return sub_19534829C(result, a2, a3, a5);
  }

  if (*a5 <= 0)
  {
    return sub_195348360(result, a4);
  }

  return result;
}

icu::DecimalFormat *icu::MessageFormat::getDefaultNumberFormat(icu::MessageFormat *this, UErrorCode *a2, UErrorCode *a3)
{
  result = *(this + 90);
  if (!result)
  {
    result = icu::NumberFormat::createInstance(this + 41, a2, a3);
    *(this + 90) = result;
    if (*a2 < 1)
    {
      if (!result)
      {
        *a2 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    else
    {
      if (result)
      {
        (*(*result + 8))(result);
      }

      result = 0;
      *(this + 90) = 0;
    }
  }

  return result;
}

void *sub_19534829C(uint64_t *a1, icu::Format *this, icu::Formattable *a3, UErrorCode *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v12 = 0;
  v11 = 0u;
  v8 = &unk_1F0935D00;
  LOWORD(v9) = 2;
  icu::Format::format(this, a3, &v8, a4);
  v6 = *a4;
  if (v6 <= 0)
  {
    sub_195348360(a1, &v8);
  }

  return icu::UnicodeString::~UnicodeString(v6, &v8);
}

uint64_t sub_195348360(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 24);
  }

  v7 = v5;
  v8 = v5 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 12);
  }

  result = (*(*v4 + 40))(v4, v6, v9);
  v11 = *(a2 + 8);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 < 0)
  {
    v13 = *(a2 + 12);
  }

  *(a1 + 2) += v13;
  return result;
}

uint64_t icu::MessageFormat::getDefaultDateFormat(icu::MessageFormat *this, UErrorCode *a2)
{
  result = *(this + 91);
  if (!result)
  {
    icu::DateFormat::createDateTimeInstance(3, 3, (this + 328));
  }

  return result;
}

void *icu::MessageFormat::formatComplexSubMessage(void *result, int a2, uint64_t a3, const icu::Formattable *a4, const icu::UnicodeString *a5, unsigned int a6, uint64_t *a7, UErrorCode *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    LODWORD(v12) = a2;
    v13 = result;
    if (*(result + 140) != 1)
    {
      return icu::MessageFormat::format(result, a2, a3, a4, a5, a6, a7, 0, a8);
    }

    v43 = 0u;
    v46 = 0;
    v45 = 0u;
    v44 = 0u;
    v42 = &unk_1F0935D00;
    LOWORD(v43) = 2;
    v14 = result[80];
    v15 = *(v14 + 16 * a2 + 4) + *(v14 + 16 * a2 + 8);
    while (1)
    {
      v12 = v12 + 1;
      v16 = v14 + 16 * v12;
      v17 = *v16;
      v18 = *(v16 + 4);
      if (*v16 <= 3)
      {
        if (v17 == 2)
        {
          goto LABEL_9;
        }

        if (v17 == 1)
        {
          icu::UnicodeString::doAppend(&v42, (v13 + 71), v15, (v18 - v15));
          if ((v43 & 0x8000u) == 0)
          {
            v31 = v43 >> 5;
          }

          else
          {
            v31 = DWORD1(v43);
          }

          if ((icu::UnicodeString::doIndexOf(&v42, 0x7Bu, 0, v31) & 0x80000000) != 0)
          {
            sub_195348360(a7, &v42);
          }

          else
          {
            v38 = 0u;
            v41 = 0;
            v40 = 0u;
            v39 = 0u;
            v37 = &unk_1F0935D00;
            LOWORD(v38) = 2;
            bzero(v36, 0x330uLL);
            icu::MessageFormat::MessageFormat(v36, &v37, (v13 + 41), a8);
            icu::MessageFormat::applyPattern(v36, &v42, 1, 0, a8);
            icu::MessageFormat::format(v36, 0, 0, a4, a5, a6, a7, 0, a8);
            icu::MessageFormat::~MessageFormat(v36);
            icu::UnicodeString::~UnicodeString(v32, &v37);
          }

          return icu::UnicodeString::~UnicodeString(v33, &v42);
        }
      }

      else
      {
        if (v17 != 5)
        {
          if (v17 != 4)
          {
            goto LABEL_25;
          }

LABEL_9:
          icu::UnicodeString::doAppend(&v42, (v13 + 71), v15, (v18 - v15));
          if (v17 == 4)
          {
            if (*(a3 + 216))
            {
              v20 = *(a3 + 160);
              v21 = v20;
              v22 = v20 >> 5;
              if (v21 >= 0)
              {
                v23 = v22;
              }

              else
              {
                v23 = *(a3 + 164);
              }

              v24 = (a3 + 152);
            }

            else
            {
              DefaultNumberFormat = icu::MessageFormat::getDefaultNumberFormat(v13, a8, v19);
              v24 = icu::Format::format(DefaultNumberFormat, (a3 + 16), &v42, a8);
              v28 = *(v24 + 4);
              v29 = v28;
              v30 = v28 >> 5;
              if (v29 >= 0)
              {
                v23 = v30;
              }

              else
              {
                v23 = *(v24 + 3);
              }
            }

            icu::UnicodeString::doAppend(&v42, v24, 0, v23);
          }

          v15 = *(v16 + 4) + *(v16 + 8);
          goto LABEL_25;
        }

        icu::UnicodeString::doAppend(&v42, (v13 + 71), v15, (v18 - v15));
        v26 = v13[80];
        if (*(v26 + 16 * v12 + 12) > v12)
        {
          LODWORD(v12) = *(v26 + 16 * v12 + 12);
        }

        v15 = *(v26 + 16 * v12 + 4) + *(v26 + 16 * v12 + 8);
        icu::MessageImpl::appendReducedApostrophes((v13 + 71), v18, v15, &v42, v25);
      }

LABEL_25:
      v14 = v13[80];
    }
  }

  return result;
}

uint64_t sub_1953487AC(uint64_t a1, int a2, uint64_t a3, icu::Formattable *a4, UErrorCode *a5, double a6)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  icu::Formattable::Formattable((a1 + 16));
  *(a1 + 128) = a6;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  *(a1 + 152) = &unk_1F0935D00;
  *(a1 + 160) = 2;
  *(a1 + 216) = 0;
  if (a6 == 0.0)
  {
    icu::Formattable::operator=(a1 + 16, a4);
  }

  else
  {
    Double = icu::Formattable::getDouble(a4, a5);
    icu::Formattable::Formattable(v13, Double - a6);
    icu::Formattable::operator=(a1 + 16, v13);
    icu::Formattable::~Formattable(v11, v13);
  }

  return a1;
}

uint64_t icu::MessageFormat::getLiteralStringUntilNextArgument@<X0>(icu::MessageFormat *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 80) + 16 * a2;
  v7 = *(v6 + 4) + *(v6 + 8);
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v9 = *(v6 + 20);
  v8 = (v6 + 20);
  v10 = v8 - 1;
  v11 = *(v8 - 1);
  result = icu::UnicodeString::doAppend(a3, (this + 568), v7, (v9 - v7));
  if ((v11 & 0xFFFFFFFB) != 1)
  {
    v13 = 16 * a2;
    do
    {
      v14 = *v8 + *(v10 + 4);
      v15 = *(this + 80) + v13;
      v16 = *(v15 + 32);
      v10 = (v15 + 32);
      v8 = v10 + 1;
      result = icu::UnicodeString::doAppend(a3, (this + 568), v14, (v10[1] - v14));
      v13 += 16;
    }

    while ((v16 & 0xFFFFFFFB) != 1);
  }

  return result;
}

uint64_t icu::MessageFormat::findOtherSubMessage(icu::MessageFormat *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(this + 162);
  if ((*(*(this + 80) + 16 * a2) & 0xFFFFFFFE) == 0xC)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = a2;
  }

  memset(v11, 0, sizeof(v11));
  v10 = "o";
  icu::UnicodeString::UnicodeString(v11, 0, &v10, 5);
  v5 = *(this + 80);
  do
  {
    v6 = &v5[4 * v4];
    v5 = *v6;
    if (v5 == 6)
    {
      break;
    }

    v7 = v4 + 1;
    if (sub_195346AE8(this + 552, v6, v11))
    {
      goto LABEL_14;
    }

    v5 = *(this + 80);
    v8 = (v5[4 * v7] & 0xFFFFFFFE) == 0xC ? v4 + 2 : v4 + 1;
    if (v5[4 * v8 + 3] > v8)
    {
      v8 = v5[4 * v8 + 3];
    }

    v4 = v8 + 1;
  }

  while (v8 + 1 < v3);
  v7 = 0;
LABEL_14:
  icu::UnicodeString::~UnicodeString(v5, v11);
  return v7;
}

uint64_t icu::MessageFormat::findFirstPluralNumberArg(icu::MessageFormat *this, int a2, const icu::UnicodeString *a3)
{
  LODWORD(v4) = a2;
  v6 = *(this + 80);
LABEL_2:
  v7 = 16 * v4;
  while (1)
  {
    v8 = *(v6 + v7 + 16);
    if (v8 == 1)
    {
      return 0;
    }

    if (v8 == 4)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = (v4 + 1);
    v7 += 16;
    if (v8 == 5)
    {
      if (*(a3 + 4) >= 0x20u && *(v6 + v7 + 10) <= 1u)
      {
        if (sub_195346AE8(this + 552, v6 + v7 + 16, a3))
        {
          return v4;
        }

        v6 = *(this + 80);
      }

      if (*(v6 + v7 + 12) > v4)
      {
        LODWORD(v4) = *(v6 + v7 + 12);
      }

      goto LABEL_2;
    }
  }
}

void *icu::MessageFormat::parse(icu::MessageFormat *this, int a2, const icu::UnicodeString *a3, icu::ParsePosition *a4, int *a5, UErrorCode *a6)
{
  *a5 = 0;
  if (*a6 < 1)
  {
    if (!*(this + 676))
    {
      v7 = *(this + 176);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      is_mul_ok(v7, 0x70uLL);
      operator new[]();
    }

    *a6 = U_ARGUMENT_TYPE_MISMATCH;
  }

  *(a4 + 3) = *(a4 + 2);
  return 0;
}

uint64_t icu::MessageFormat::parse(icu::MessageFormat *this, const icu::UnicodeString *a2, int *a3, UErrorCode *a4)
{
  if (*(this + 676))
  {
    v5 = 0;
    *a4 = U_ARGUMENT_TYPE_MISMATCH;
  }

  else
  {
    v12 = &unk_1F0932C70;
    v13 = 0xFFFFFFFF00000000;
    v6 = (*(*this + 184))(this, a2, &v12, a3);
    v5 = v6;
    if (!v13)
    {
      *a4 = U_MESSAGE_PARSE_ERROR;
      if (v6)
      {
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = (v6 + 112 * v8 - 112);
          v10 = -112 * v8;
          do
          {
            v9 = (icu::Formattable::~Formattable(v8, v9) - 112);
            v10 += 112;
          }

          while (v10);
        }

        MEMORY[0x19A8B25E0](v7, 0x10B3C80062A7C37);
        v5 = 0;
      }
    }

    icu::ParsePosition::~ParsePosition(&v12);
  }

  return v5;
}

icu::Formattable *icu::MessageFormat::parseObject(icu::MessageFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4)
{
  v6 = 0;
  result = (*(*this + 184))(this, a2, a4, &v6);
  if (result)
  {
    return icu::Formattable::adoptArray(a3, result, v6);
  }

  return result;
}

void icu::MessageFormat::autoQuoteApostrophe(icu::MessageFormat *this@<X0>, const icu::UnicodeString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  if (*a2 > 0)
  {
LABEL_2:

    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v5 = *(this + 4);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(this + 3);
  }

  if ((v5 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v7 = (this + 10);
  }

  else
  {
    v7 = *(this + 3);
  }

  Buffer = icu::UnicodeString::getBuffer(a3, (2 * v6) | 1u);
  if (!Buffer)
  {
    *a2 = 7;
    goto LABEL_2;
  }

  v9 = umsg_autoQuoteApostrophe(v7, v6, Buffer, (2 * v6) | 1u, a2);
  if (*a2 <= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  icu::UnicodeString::releaseBuffer(a3, v10);
  if (*a2 >= 1)
  {
    goto LABEL_2;
  }
}

icu::DecimalFormat *icu::MessageFormat::createAppropriateFormat(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, _DWORD *a4, uint64_t a5, const icu::Locale *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0;
  }

  Keyword = icu::MessageFormat::findKeyword(a2, &off_1E740FF08);
  v14 = Keyword;
  if (Keyword > 2)
  {
    switch(Keyword)
    {
      case 3:
        *a4 = 1;
        v18 = a1 + 328;
        v19 = 0;
        break;
      case 4:
        *a4 = 1;
        v18 = a1 + 328;
        v19 = 1;
        break;
      case 5:
        *a4 = 1;
        v18 = a1 + 328;
        v19 = 2;
        break;
      default:
        goto LABEL_21;
    }

    sub_195349D44(v19, v18, a3, a6);
  }

  if ((Keyword - 1) < 2)
  {
    *a4 = 0;
    v15 = icu::PatternProps::skipWhiteSpace(a3, 0);
    if (icu::UnicodeString::doCompare(a3, v15, 2, L"::", 0, 2))
    {
      v16 = icu::MessageFormat::findKeyword(a3, &off_1E740FF68);
      if (v16 < 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = dword_1954903D8[v16];
      }

      v25 = (a1 + 328);
      if (v14 == 1)
      {
        icu::DateFormat::createDateInstance(v17, v25);
      }

      icu::DateFormat::createTimeInstance(v17, v25);
    }

    memset(v32, 0, 64);
    icu::UnicodeString::tempSubString(v32, a3, v15 + 2, 0x7FFFFFFF);
    InstanceForSkeleton = icu::DateFormat::createInstanceForSkeleton(v32, (a1 + 328), a6, v22);
    v24 = v32;
LABEL_27:
    icu::UnicodeString::~UnicodeString(v23, v24);
    return InstanceForSkeleton;
  }

  if (Keyword)
  {
LABEL_21:
    InstanceForSkeleton = 0;
    *a4 = 3;
    *a6 = 1;
    return InstanceForSkeleton;
  }

  *a4 = 1;
  v20 = icu::MessageFormat::findKeyword(a3, &off_1E740FF40);
  if (v20 > 1)
  {
    if (v20 == 2)
    {

      return icu::NumberFormat::createPercentInstance((a1 + 328), a6, v21);
    }

    else
    {
      if (v20 != 3)
      {
        goto LABEL_37;
      }

      *a4 = 2;

      return icu::MessageFormat::createIntegerFormat(v20, (a1 + 328), a6);
    }
  }

  else
  {
    if (v20)
    {
      if (v20 == 1)
      {

        return icu::NumberFormat::createCurrencyInstance((a1 + 328), a6, v21);
      }

LABEL_37:
      v26 = icu::PatternProps::skipWhiteSpace(a3, 0);
      if (icu::UnicodeString::doCompare(a3, v26, 2, L"::", 0, 2))
      {
        Instance = icu::NumberFormat::createInstance((a1 + 328), a6, v27);
        InstanceForSkeleton = Instance;
        if (Instance)
        {
          if (v29)
          {
            (*(*v29 + 568))(v29, a3, a5, a6);
          }
        }

        return InstanceForSkeleton;
      }

      memset(v33, 0, sizeof(v33));
      icu::UnicodeString::tempSubString(v33, a3, v26 + 2, 0x7FFFFFFF);
      icu::number::NumberFormatter::forSkeleton(v31, v33, a6);
      icu::number::UnlocalizedNumberFormatter::locale(v31, a1 + 328, v32);
      InstanceForSkeleton = icu::number::LocalizedNumberFormatter::toFormat(v32, a6);
      icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter(v32);
      sub_19534A428(v31, v30);
      v24 = v33;
      goto LABEL_27;
    }

    return icu::NumberFormat::createInstance((a1 + 328), a6, v21);
  }
}

uint64_t icu::MessageFormat::findKeyword(uint64_t a1, const UChar **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2 < 0x20)
  {
    return 0;
  }

  if ((v2 & 0x8000u) == 0)
  {
    v4 = v2 >> 5;
  }

  else
  {
    v4 = *(a1 + 12);
  }

  v16 = v4;
  if ((v2 & 0x11) != 0)
  {
    v5 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    v5 = (a1 + 10);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v7 = icu::PatternProps::trimWhiteSpace(v5, &v16);
  memset(v18, 0, sizeof(v18));
  v15 = v7;
  icu::UnicodeString::UnicodeString(v18, 0, &v15, v16);
  icu::Locale::Locale(v17, "", 0, 0, 0);
  icu::UnicodeString::toLower(v18, v17);
  icu::Locale::~Locale(v8, v17);
  v10 = *a2;
  if (*a2)
  {
    v6 = 0;
    v11 = a2 + 1;
    while (1)
    {
      v12 = u_strlen(v10);
      v13 = (SWORD4(v18[0]) & 0x8000u) == 0 ? WORD4(v18[0]) >> 5 : HIDWORD(v18[0]);
      if (!icu::UnicodeString::doCompare(v18, 0, v13, v10, 0, v12))
      {
        break;
      }

      v10 = v11[v6++];
      if (!v10)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v6 = 0xFFFFFFFFLL;
  }

  icu::UnicodeString::~UnicodeString(v9, v18);
  return v6;
}

icu::DecimalFormat *icu::MessageFormat::createIntegerFormat(icu::MessageFormat *this, char **a2, UErrorCode *a3)
{
  Instance = icu::NumberFormat::createInstance(a2, a3, a3);
  v4 = Instance;
  if (Instance)
  {
    if (v5)
    {
      v6 = v5;
      (*(*v5 + 232))(v5, 0);
      (*(*v6 + 536))(v6, 0);
      (*(*v6 + 184))(v6, 1);
    }
  }

  return v4;
}

icu::UnicodeString *icu::MessageFormat::DummyFormat::format(icu::MessageFormat::DummyFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  result = a3;
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

icu::UnicodeString *icu::MessageFormat::DummyFormat::format(icu::MessageFormat::DummyFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

icu::UnicodeString *icu::MessageFormat::DummyFormat::format(icu::MessageFormat::DummyFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

uint64_t sub_195349F50(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v2 = *(a1 + 116);
  v3 = *(a1 + 120);
  if (v2 >= *(v3 + 2))
  {
    return 0;
  }

  *(a1 + 116) = v2 + 1;
  return icu::UVector::elementAt(v3, v2);
}

uint64_t sub_195349F90(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_195349FA8(icu::StringEnumeration *this)
{
  *this = &unk_1F093E380;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_19534A028(icu::StringEnumeration *a1)
{
  sub_195349FA8(a1);

  JUMPOUT(0x19A8B2600);
}

void icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider(icu::MessageFormat::PluralSelectorProvider *this)
{
  *this = &unk_1F093E3E8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::PluralFormat::PluralSelector::~PluralSelector(this);
}

{
  icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider(this);

  JUMPOUT(0x19A8B2600);
}

void icu::MessageFormat::PluralSelectorProvider::select(icu::MessageFormat::PluralSelectorProvider *this@<X0>, const icu::UnicodeString **a2@<X1>, double a3@<D0>, UErrorCode *a4@<X2>, icu::UnicodeString *a5@<X8>)
{
  if (*a4 < 1)
  {
    if (*(this + 2) || (*(this + 2) = icu::PluralRules::forLocale(*(this + 1) + 328, *(this + 6), a4), *a4 < 1))
    {
      OtherSubMessage = icu::MessageFormat::findOtherSubMessage(*(this + 1), *a2);
      FirstPluralNumberArg = icu::MessageFormat::findFirstPluralNumberArg(*(this + 1), OtherSubMessage, a2[1]);
      *(a2 + 34) = FirstPluralNumberArg;
      if (FirstPluralNumberArg >= 1)
      {
        v13 = FirstPluralNumberArg;
        v14 = *(*(this + 1) + 736);
        if (v14)
        {
          a2[18] = uhash_iget(v14, v13);
        }
      }

      if (!a2[18])
      {
        a2[18] = icu::MessageFormat::getDefaultNumberFormat(*(this + 1), a4, v12);
        *(a2 + 216) = 1;
      }

      if (icu::Formattable::getDouble((a2 + 2), a4) == a3)
      {
        icu::Format::format(a2[18], (a2 + 2), (a2 + 19), a4);
        v15 = a2[18];
        {
          v17 = v16;
          v21 = 0;
          memset(v20, 0, sizeof(v20));
          icu::number::impl::DecimalQuantity::DecimalQuantity(v20);
          icu::DecimalFormat::formatToDecimalQuantity(v17, (a2 + 2), v20, a4);
          if (*a4 < 1)
          {
            icu::PluralRules::select(a5, *(this + 2), v20);
          }

          else
          {
            v19 = "o";
            icu::UnicodeString::UnicodeString(a5, 0, &v19, 5);
          }

          icu::number::impl::DecimalQuantity::~DecimalQuantity(v20);
        }

        else
        {
          v18 = *(this + 2);

          icu::PluralRules::select(v18, a3, a5);
        }
      }

      else
      {
        *a4 = U_INTERNAL_PROGRAM_ERROR;
        v22 = "o";
        icu::UnicodeString::UnicodeString(a5, 0, &v22, 5);
      }
    }

    else
    {
      v23 = "o";
      icu::UnicodeString::UnicodeString(a5, 0, &v23, 5);
    }
  }

  else
  {
    v24 = "o";
    icu::UnicodeString::UnicodeString(a5, 0, &v24, 5);
  }
}

void sub_19534A3F0(icu::Format *a1)
{
  icu::Format::~Format(a1);

  JUMPOUT(0x19A8B2600);
}

void **sub_19534A428@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  icu::Locale::~Locale(a2, (a1 + 31));
  icu::number::impl::StringProp::~StringProp(a1 + 26);
  icu::number::impl::StringProp::~StringProp(a1 + 24);
  icu::number::Scale::~Scale((a1 + 21));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((a1 + 17));
  icu::MeasureUnit::~MeasureUnit((a1 + 5));
  icu::MeasureUnit::~MeasureUnit((a1 + 2));
  return a1;
}

uint64_t *sub_19534A484(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 112 * v4 - 112);
      v6 = (16 * v4);
      v7 = -112 * v4;
      do
      {
        v5 = (icu::Formattable::~Formattable(v6, v5) - 112);
        v7 += 112;
      }

      while (v7);
    }

    MEMORY[0x19A8B25E0](v3, 0x10B3C80062A7C37);
  }

  return a1;
}

uint64_t sub_19534A518(uint64_t a1, icu::UnicodeFilter *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = "N";
  icu::UnicodeString::UnicodeString(v8, 1, &v7, 8);
  icu::Transliterator::Transliterator(a1, v8, a2);
  icu::UnicodeString::~UnicodeString(v4, v8);
  *a1 = &unk_1F093E4B0;
  icu::UnicodeSet::UnicodeSet((a1 + 88));
  v8[0] = v5;
  v8[1] = j__uset_add;
  v9 = 0u;
  v10 = 0u;
  uprv_getCharNameCharacters(v8);
  return a1;
}

void sub_19534A608(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093E4B0;
  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 88));

  icu::Transliterator::~Transliterator(a1, v3);
}

void sub_19534A65C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093E4B0;
  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 88));
  icu::Transliterator::~Transliterator(a1, v3);

  JUMPOUT(0x19A8B2600);
}

char *sub_19534A730(uint64_t a1, const icu::UnicodeString *a2, _DWORD *a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  result = uprv_getMaxCharNameLength();
  if (!result || (v8 = result, v40 = (result + 1), (result = malloc_type_malloc(v40, 0x100004077774924uLL)) == 0))
  {
    a3[2] = a3[3];
    return result;
  }

  v39 = result;
  v38 = a4;
  memset(v54, 0, 64);
  v43 = L"\\N~{~";
  LODWORD(v9) = -1;
  icu::UnicodeString::UnicodeString(v54, 1, &v43, -1);
  v50 = 0u;
  v53 = 0;
  v52 = 0u;
  v51 = 0u;
  v48 = 0;
  v49 = &unk_1F0935D00;
  LOWORD(v50) = 2;
  v45 = 0u;
  v47 = 0u;
  v46 = 0u;
  v44 = &unk_1F0935D00;
  LOWORD(v45) = 2;
  v11 = a3[2];
  v10 = a3[3];
  if (v11 >= v10)
  {
    goto LABEL_77;
  }

  do
  {
    v12 = 0;
    v9 = 0xFFFFFFFFLL;
    v13 = v11;
    while (1)
    {
      v11 = v13;
      v14 = (*(*a2 + 80))(a2, v13);
      v15 = v14;
      if (v12)
      {
        break;
      }

      if (v14 == 92)
      {
        v17 = icu::ICU_Utility::parsePattern(v54, a2, v13, v10);
        v12 = 0;
        if ((v17 & 0x80000000) == 0)
        {
          v13 = v17;
          if (v17 < v10)
          {
            if (v45)
            {
              icu::UnicodeString::unBogus(&v44);
            }

            else
            {
              if ((v45 & 0x8000u) == 0)
              {
                v18 = v45 >> 5;
              }

              else
              {
                v18 = DWORD1(v45);
              }

              if (v18)
              {
                LOBYTE(v45) = v45 & 0x1E;
                LOWORD(v45) = v45;
              }
            }

            v12 = 1;
            v9 = v11;
            goto LABEL_42;
          }
        }

        v9 = v11;
      }

      else
      {
        v12 = 0;
      }

LABEL_38:
      if (v15 < 0x10000)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      v13 = (v11 + v23);
LABEL_42:
      if (v13 >= v10)
      {
        LODWORD(v11) = v13;
        goto LABEL_77;
      }
    }

    if (icu::PatternProps::isWhiteSpace(v14))
    {
      if (v45 < 0)
      {
        v16 = DWORD1(v45);
        if (v45 <= 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v45 < 0x20u)
        {
          goto LABEL_29;
        }

        v16 = v45 >> 5;
      }

      v21 = &v45 + 2;
      if ((v45 & 2) == 0)
      {
        v21 = v46;
      }

      if (*&v21[2 * v16 - 2] == 32)
      {
LABEL_29:
        v12 = 1;
        goto LABEL_38;
      }

      LOWORD(pErrorCode) = 32;
      icu::UnicodeString::doAppend(&v44, &pErrorCode, 0, 1);
      v22 = v45 >> 5;
      if ((v45 & 0x8000u) != 0)
      {
        v22 = DWORD1(v45);
      }

      v20 = v22 <= v40;
      goto LABEL_33;
    }

    if (v15 != 125)
    {
      if (!icu::UnicodeSet::contains((a1 + 88), v15))
      {
        v12 = 0;
        LODWORD(v11) = v13 - 1;
        goto LABEL_38;
      }

      icu::UnicodeString::append(&v44, v15);
      v19 = v45 >> 5;
      if ((v45 & 0x8000u) != 0)
      {
        v19 = DWORD1(v45);
      }

      v20 = v19 <= v8;
LABEL_33:
      v12 = v20;
      goto LABEL_38;
    }

    if (v45 < 0)
    {
      v24 = DWORD1(v45);
      if (SDWORD1(v45) > 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v45 < 0x20u)
      {
        v24 = 0;
        goto LABEL_57;
      }

      LODWORD(v24) = v45 >> 5;
LABEL_52:
      v25 = v24 - 1;
      v26 = v46;
      if ((v45 & 2) != 0)
      {
        v26 = &v45 + 2;
      }

      if (*&v26[2 * v25] == 32)
      {
        v24 = v25;
      }

      else
      {
        v24 = v24;
      }
    }

LABEL_57:
    v27 = v46;
    if ((v45 & 2) != 0)
    {
      v27 = &v45 + 2;
    }

    if ((v45 & 0x11) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    if (uprv_isInvariantUString(v28, v24))
    {
      *v39 = 0;
      icu::UnicodeString::extract(&v44, 0, v24, v39, v40);
      pErrorCode = U_ZERO_ERROR;
      v29 = u_charFromName(U_EXTENDED_CHAR_NAME, v39, &pErrorCode);
      if (pErrorCode <= U_ZERO_ERROR)
      {
        v30 = v29;
        if (v50)
        {
          icu::UnicodeString::unBogus(&v49);
        }

        else
        {
          if ((v50 & 0x8000u) == 0)
          {
            v31 = v50 >> 5;
          }

          else
          {
            v31 = DWORD1(v50);
          }

          if (v31)
          {
            LOBYTE(v50) = v50 & 0x1E;
            LOWORD(v50) = v50;
          }
        }

        icu::UnicodeString::append(&v49, v30);
        (*(*a2 + 32))(a2, v9, (v13 + 1), &v49);
        v32 = v50 >> 5;
        if ((v50 & 0x8000u) != 0)
        {
          v32 = DWORD1(v50);
        }

        v11 = (v32 + v9);
        v10 += ~v13 + v11;
      }
    }

    LODWORD(v9) = -1;
  }

  while (v11 < v10);
LABEL_77:
  if (v9 <= -1 || v38 == 0)
  {
    v34 = v11;
  }

  else
  {
    v34 = v9;
  }

  a3[1] += v10 - a3[3];
  a3[2] = v34;
  a3[3] = v10;
  free(v39);
  icu::UnicodeString::~UnicodeString(v35, &v44);
  icu::UnicodeString::~UnicodeString(v36, &v49);
  return icu::UnicodeString::~UnicodeString(v37, v54);
}

uint64_t sub_19534AC40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v31[8] = *MEMORY[0x1E69E9840];
  v9 = (a1 + 8);
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
  *(a1 + 152) = 0xA00000000;
  *(a1 + 160) = 0;
  *(a1 + 162) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  if (*a5 > 0)
  {
    return a1;
  }

  v10 = a3 + (a4 << 6);
  v11 = *(v10 + 8);
  if (v11 <= 0x1F)
  {
    *a5 = 9;
    return a1;
  }

  if ((v11 & 0x8000) != 0 && !*(v10 + 12) || ((v11 & 2) != 0 ? (v12 = (v10 + 10)) : (v12 = *(v10 + 24)), *v12 != 37))
  {
    v30 = L"%default";
    icu::UnicodeString::UnicodeString(v31, 1, &v30, -1);
    icu::UnicodeString::copyFrom(v9, v31, 0);
    icu::UnicodeString::~UnicodeString(v14, v31);
    goto LABEL_36;
  }

  if ((v11 & 0x8000) != 0)
  {
    v13 = *(v10 + 12);
  }

  else
  {
    v13 = v11 >> 5;
  }

  v15 = icu::UnicodeString::doIndexOf(v10, 0x3Au, 0, v13);
  if (v15 == -1)
  {
    *a5 = 9;
    goto LABEL_36;
  }

  v16 = v15;
  icu::UnicodeString::unBogus(v9);
  if (*(a1 + 16) < 0)
  {
    v17 = *(a1 + 20);
  }

  else
  {
    v17 = *(a1 + 16) >> 5;
  }

  icu::UnicodeString::doReplace(v9, 0, v17, v10, 0, v16);
  v16 = v16;
  do
  {
    if (*(v10 + 8) < 0)
    {
      v18 = *(v10 + 12);
      if (v16 >= v18)
      {
        break;
      }
    }

    else
    {
      if (v16 >= (*(v10 + 8) >> 5))
      {
        break;
      }

      v18 = *(v10 + 8) >> 5;
    }

    if (v18 <= v16 + 1)
    {
      v20 = 0xFFFFLL;
    }

    else
    {
      v19 = v10 + 10;
      if ((*(v10 + 8) & 2) == 0)
      {
        v19 = *(v10 + 24);
      }

      v20 = *(v19 + 2 * v16 + 2);
    }

    ++v16;
  }

  while (icu::PatternProps::isWhiteSpace(v20));
  if (v16 != 0x7FFFFFFF)
  {
    icu::UnicodeString::doReplace(v10, 0, v16, 0, 0, 0);
LABEL_36:
    if (*(v10 + 8) > 0x1Fu)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*(v10 + 8))
  {
    v21 = 2;
  }

  else
  {
    v21 = *(v10 + 8) & 0x1E;
  }

  *(v10 + 8) = v21;
LABEL_37:
  *a5 = 9;
LABEL_38:
  if (*(a1 + 16) < 0)
  {
    v23 = *(a1 + 20);
    v22 = v23 & (v23 >> 31);
  }

  else
  {
    v22 = 0;
    v23 = *(a1 + 16) >> 5;
  }

  *(a1 + 161) = icu::UnicodeString::indexOf(v9, L"%%", 0, 2, v22, v23 - v22) != 0;
  v24 = *(a1 + 16);
  if ((v24 & 0x8000) != 0)
  {
    v25 = *(a1 + 20);
  }

  else
  {
    v25 = v24 >> 5;
  }

  if (icu::UnicodeString::doEqualsSubstring(v9, v25 - 8, 8, "@", 0, 8))
  {
    *(a1 + 162) = 0;
    v26 = *(a1 + 16);
    if ((v26 & 0x8000) != 0)
    {
      v27 = *(a1 + 20);
    }

    else
    {
      v27 = v26 >> 5;
    }

    v28 = v27 - 8;
    if ((v26 & 1) != 0 && v27 == 8)
    {
      icu::UnicodeString::unBogus(v9);
    }

    else if (v27 > v28)
    {
      if (v28 > 1023)
      {
        *(a1 + 16) = v26 | 0xFFE0;
        *(a1 + 20) = v28;
      }

      else
      {
        *(a1 + 16) = *(a1 + 16) & 0x1F | (32 * v28);
      }
    }
  }

  return a1;
}

char **sub_19534AFDC(char **result, uint64_t a2, int *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = result;
    sub_19534B22C(result + 9);
    v31 = 0u;
    v32 = 0u;
    v34 = 0;
    v33 = 0u;
    v30 = &unk_1F0935D00;
    LOWORD(v31) = 2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 8) >> 5;
    v8 = *(a2 + 12);
    if (v6 < 0)
    {
      v7 = *(a2 + 12);
    }

    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v6 >> 31;
      do
      {
        v11 = v6 >> 5;
        if (v10)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        if (v8 >= v9)
        {
          v14 = v9;
        }

        else
        {
          v14 = v8;
        }

        v15 = (v10 & 1) == 0;
        if (v10)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        if (v15)
        {
          v8 = v11;
        }

        if (v9 >= 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (v9 < 0)
        {
          v8 = v12;
        }

        v18 = icu::UnicodeString::doIndexOf(a2, 0x3Bu, v17, v8 - v17);
        if (v18 == -1)
        {
          if (*(a2 + 8) < 0)
          {
            v18 = *(a2 + 12);
          }

          else
          {
            v18 = *(a2 + 8) >> 5;
          }
        }

        icu::UnicodeString::unBogus(&v30);
        if ((v31 & 0x8000u) == 0)
        {
          v19 = v31 >> 5;
        }

        else
        {
          v19 = DWORD1(v31);
        }

        icu::UnicodeString::doReplace(&v30, 0, v19, a2, v9, (v18 - v9));
        v20 = *(v5 + 20);
        if (v20 && (v21 = *(v5 + 9)) != 0)
        {
          v22 = *(v21 + 8 * (v20 - 1));
        }

        else
        {
          v22 = 0;
        }

        sub_19534CDC8(&v30, v5, v22, *(v5 + 17), (v5 + 72), a3);
        v9 = v18 + 1;
        v6 = *(a2 + 8);
        v10 = v6 >> 31;
        v23 = *(a2 + 8) >> 5;
        v8 = *(a2 + 12);
        if (v6 < 0)
        {
          v23 = *(a2 + 12);
        }
      }

      while (v9 < v23);
    }

    v24 = *(v5 + 20);
    if (v24 >= 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 8 * v24;
      do
      {
        v28 = *(*(v5 + 9) + v25);
        if (*v28)
        {
          v29 = *v28 < v26;
          v26 = *v28;
          if (v29)
          {
            v24 = 9;
            *a3 = 9;
            return icu::UnicodeString::~UnicodeString(v24, &v30);
          }
        }

        else
        {
          sub_19534D638(v28, v26, a3);
        }

        v24 = v5[160];
        if (!v5[160])
        {
          ++v26;
        }

        v25 += 8;
      }

      while (v27 != v25);
    }

    return icu::UnicodeString::~UnicodeString(v24, &v30);
  }

  return result;
}

void sub_19534B22C(char **a1)
{
  v1 = *(a1 + 2);
  if (v1 >= 1)
  {
    sub_19534B518(a1, 0);
    v3 = 0;
    v4 = *a1;
    *a1 = 0;
    a1[1] = 0;
    do
    {
      v5 = *&v4[v3];
      if (v5)
      {
        v6 = sub_19534CDC4(v5);
        MEMORY[0x19A8B2600](v6, 0x10F2C40E3085301);
      }

      v3 += 8;
    }

    while (8 * v1 != v3);

    free(v4);
  }
}

icu::RuleBasedNumberFormat **sub_19534B2D8(icu::RuleBasedNumberFormat **a1, unsigned __int16 *a2)
{
  v4 = *a2;
  if (*a2 > -4)
  {
    if (v4 == -3)
    {
      v5 = 2;
      goto LABEL_23;
    }

    if (v4 == -2)
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (v4 != -1)
    {
LABEL_16:
      sub_19534CDC4(a2);

      JUMPOUT(0x19A8B2600);
    }

    result = a1[11];
    if (result)
    {
      v7 = sub_19534CDC4(result);
      result = MEMORY[0x19A8B2600](v7, 0x10F2C40E3085301);
    }

    a1[11] = a2;
  }

  else
  {
    switch(v4)
    {
      case -6:
        result = a1[16];
        if (result)
        {
          v8 = sub_19534CDC4(result);
          result = MEMORY[0x19A8B2600](v8, 0x10F2C40E3085301);
        }

        a1[16] = a2;
        break;
      case -5:
        result = a1[15];
        if (result)
        {
          v9 = sub_19534CDC4(result);
          result = MEMORY[0x19A8B2600](v9, 0x10F2C40E3085301);
        }

        a1[15] = a2;
        break;
      case -4:
        v5 = 3;
LABEL_23:

        return sub_19534B424(a1, v5, a2, 1);
      default:
        goto LABEL_16;
    }
  }

  return result;
}

icu::RuleBasedNumberFormat **sub_19534B424(icu::RuleBasedNumberFormat **result, int a2, unsigned __int16 *a3, int a4)
{
  v6 = result;
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = sub_19534B518((result + 18), a3);
  }

  v7 = v6 + 11;
  if (!v6[a2 + 11] || ((DecimalFormatSymbols = icu::RuleBasedNumberFormat::getDecimalFormatSymbols(v6[17]), icu::UnicodeString::UnicodeString(v13, (DecimalFormatSymbols + 8)), v9 = v14, (v14 & 0x8000u) == 0) ? (v10 = v14 >> 5) : (v10 = *&v15[2]), !v10 ? (v11 = 0xFFFF) : ((v14 & 2) != 0 ? (v9 = v15) : (v9 = v16), v11 = *v9), v12 = a3[7], result = icu::UnicodeString::~UnicodeString(v9, v13), v11 == v12))
  {
    v7[a2] = a3;
  }

  return result;
}

void *sub_19534B518(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != *(a1 + 12))
  {
    result = *a1;
    if (*a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    *(a1 + 12) = 0;
    goto LABEL_6;
  }

  v5 = v4 + 10;
  *(a1 + 12) = v5;
  result = malloc_type_realloc(*a1, 8 * v5, 0x2004093837F09uLL);
  *a1 = result;
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *(a1 + 8);
  v8 = v7 + 1;
  result[v7] = a2;
LABEL_6:
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_19534B598(uint64_t a1)
{
  v2 = -4;
  for (i = 88; i != 136; i += 8)
  {
    if (v2 <= 0xFFFFFFFC)
    {
      v4 = *(a1 + i);
      if (v4)
      {
        v5 = sub_19534CDC4(v4);
        MEMORY[0x19A8B2600](v5, 0x10F2C40E3085301);
      }
    }

    ++v2;
  }

  sub_19534C590(a1 + 144);
  sub_19534C590(a1 + 72);
  icu::UnicodeString::~UnicodeString(v6, (a1 + 8));
  return a1;
}

uint64_t sub_19534B624(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 160) != *(a2 + 160))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 0x8000) != 0)
    {
      v5 = *(a1 + 20);
    }

    else
    {
      v5 = v4 >> 5;
    }

    result = 0;
    v7 = *(a2 + 16);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a2 + 20);
    }

    if ((v7 & 1) != 0 || v5 != v8)
    {
      return result;
    }

    v9 = (v7 & 2) != 0 ? (a2 + 18) : *(a2 + 32);
    result = icu::UnicodeString::doEquals(a1 + 8, v9, v5);
    if (!result)
    {
      return result;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  for (i = 0; i != 48; i += 8)
  {
    v11 = *(a1 + 88 + i);
    v12 = *(a2 + 88 + i);
    if (v11)
    {
      if (!v12)
      {
        return 0;
      }

      result = sub_19534DAA8(v11, v12);
      if (!result)
      {
        return result;
      }
    }

    else if (v12)
    {
      return 0;
    }
  }

  if (!*(a1 + 80))
  {
    return 1;
  }

  v13 = 0;
  do
  {
    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = *(v14 + 8 * v13);
    }

    else
    {
      v15 = 0;
    }

    result = sub_19534DAA8(v15, *(*(a2 + 72) + 8 * v13));
    if ((result & 1) == 0)
    {
      break;
    }

    ++v13;
  }

  while (v13 < *(a1 + 80));
  return result;
}

uint64_t sub_19534B770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80))
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        v8 = *(v7 + 8 * v6);
      }

      else
      {
        v8 = 0;
      }

      sub_19534FE6C(v8, a2, a3);
      ++v6;
    }

    while (v6 < *(a1 + 80));
  }

  v9 = a1 + 88;
  for (i = 1; i != 4; ++i)
  {
    if (*(v9 + 8 * i))
    {
      v11 = *(a1 + 152);
      if (v11)
      {
        for (j = 0; j < v11; ++j)
        {
          v13 = *(*(a1 + 144) + 8 * j);
          if (**(v9 + 8 * i) == *v13)
          {
            sub_19534B424(a1, i, v13, 0);
            v11 = *(a1 + 152);
          }
        }
      }
    }
  }

  for (k = 0; k != 48; k += 8)
  {
    result = *(v9 + k);
    if (result)
    {
      result = sub_19534FE6C(result, a2, a3);
    }
  }

  return result;
}

void sub_19534B86C(uint64_t a1, unint64_t a2, icu::UnicodeString *a3, uint64_t a4, int a5, UErrorCode *a6, __n128 a7)
{
  if (a5 < 64)
  {
    v12 = sub_19534B900(a1, a2, a7);
    if (v12)
    {

      sub_19534E258(v12, a2, a3, a4, (a5 + 1), a6);
    }
  }

  else
  {
    *a6 = U_INVALID_STATE_ERROR;
  }
}

void *sub_19534B900(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!*(a1 + 160))
  {
    if (a2 < 0)
    {
      v9 = *(a1 + 88);
      if (v9)
      {
        return v9;
      }

      a2 = -a2;
    }

    v5 = *(a1 + 80);
    if (v5 < 1)
    {
      return *(a1 + 112);
    }

    v6 = 0;
    v7 = *(a1 + 72);
    while (1)
    {
      v8 = (v6 + v5) >> 1;
      v9 = *(v7 + 8 * v8);
      if (*v9 == a2)
      {
        break;
      }

      if (*v9 <= a2)
      {
        v6 = v8 + 1;
      }

      else
      {
        v5 = (v6 + v5) >> 1;
      }

      if (v6 >= v5)
      {
        if (!v5)
        {
          return 0;
        }

        v9 = *(v7 + 8 * (v5 - 1));
        if (!sub_19534E934(v9, a2))
        {
          return v9;
        }

        if (v5 != 1 && (v10 = *(a1 + 72)) != 0)
        {
          return *(v10 + 8 * (v5 - 2));
        }

        else
        {
          return 0;
        }
      }
    }

    return v9;
  }

  return sub_19534BBC8(a1, a2);
}

void sub_19534B9EC(uint64_t a1, icu::UnicodeString *a2, uint64_t a3, int a4, UErrorCode *a5, __n128 a6)
{
  if (a4 < 64)
  {
    v10 = a6.n128_f64[0];
    v11 = sub_19534BA80(a1, a6);
    if (v11)
    {

      sub_19534E5B4(v11, a2, a3, (a4 + 1), a5, v10);
    }
  }

  else
  {
    *a5 = U_INVALID_STATE_ERROR;
  }
}

void *sub_19534BA80(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  if (*(a1 + 160))
  {

    return sub_19534BBC8(a1, a2.n128_f64[0]);
  }

  else if (uprv_isNaN(a2.n128_f64[0]))
  {
    result = *(a1 + 128);
    if (!result)
    {
      v5 = *(a1 + 136);

      return icu::RuleBasedNumberFormat::getDefaultNaNRule(v5);
    }
  }

  else
  {
    if (v2 < 0.0)
    {
      result = *(a1 + 88);
      if (result)
      {
        return result;
      }

      v2 = -v2;
    }

    if (uprv_isInfinite(v2))
    {
      result = *(a1 + 120);
      if (!result)
      {
        v6 = *(a1 + 136);

        return icu::RuleBasedNumberFormat::getDefaultInfinityRule(v6);
      }
    }

    else if (v2 == uprv_floor(v2) || (v2 >= 1.0 || (result = *(a1 + 104)) == 0) && (result = *(a1 + 96)) == 0)
    {
      result = *(a1 + 112);
      if (!result)
      {
        v7 = sub_19534BD80(v2 + 0.5);

        return sub_19534B900(a1, v7, v8);
      }
    }
  }

  return result;
}

uint64_t sub_19534BBC8(uint64_t a1, double a2)
{
  v4 = *(a1 + 72);
  v5 = **v4;
  v6 = *(a1 + 80);
  if (v6 >= 2)
  {
    for (i = 1; i != v6; ++i)
    {
      v8 = *v4[i];
      v9 = (v5 & 1) == 0;
      if ((v8 | v5))
      {
        v10 = 0;
        v12 = *v4[i];
        v11 = v5;
      }

      else
      {
        v10 = 0;
        v11 = v5;
        v12 = *v4[i];
        do
        {
          v13 = v11 | v12;
          v14 = (v11 & 2) == 0;
          v11 >>= 1;
          v12 >>= 1;
          v9 = v14;
          ++v10;
        }

        while ((v13 & 2) == 0);
      }

      if (v9)
      {
        v15 = v11;
      }

      else
      {
        v15 = -v12;
      }

      if (v15)
      {
        do
        {
          do
          {
            v16 = v15;
            v15 >>= 1;
          }

          while ((v16 & 1) == 0);
          if (v16 > 0)
          {
            v11 = v16;
          }

          else
          {
            v12 = -v16;
          }

          v15 = v11 - v12;
        }

        while (v11 != v12);
      }

      v5 = v5 / (v11 << v10) * v8;
    }
  }

  v17 = sub_19534BD80(a2 * v5 + 0.5);
  v18 = uprv_maxMantissa();
  v19 = sub_19534BD80(v18);
  v20 = *(a1 + 80);
  v21 = *(a1 + 72);
  if (!v20)
  {
    v23 = 0;
    goto LABEL_32;
  }

  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = **(v21 + 8 * v22) * v17 % v5;
    if (v5 - v24 < v24)
    {
      v24 = v5 - v24;
    }

    if (v24 >= v19)
    {
      goto LABEL_28;
    }

    if (!v24)
    {
      break;
    }

    v19 = v24;
    v23 = v22;
LABEL_28:
    if (v20 == ++v22)
    {
      goto LABEL_32;
    }
  }

  v23 = v22;
LABEL_32:
  if (v23 + 1 >= v20)
  {
    if (v21)
    {
      return *(v21 + 8 * v23);
    }

    return 0;
  }

  else
  {
    v25 = **(v21 + 8 * (v23 + 1));
    if (v25 == **(v21 + 8 * v23))
    {
      v26 = v25 * a2;
      if (v26 >= 2.0 || v26 < 0.5)
      {
        ++v23;
      }
    }

    return *(v21 + 8 * v23);
  }
}

uint64_t sub_19534BD80(double a1)
{
  if (uprv_isNaN(a1))
  {
    return 0;
  }

  v3 = uprv_maxMantissa();
  v4 = -v3;
  if (-v3 <= a1)
  {
    if (v3 < a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = a1;
    }
  }

  v5 = -v4;
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  v6 = uprv_floor(v5);
  if (v4 >= 0.0)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

uint64_t sub_19534BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, icu::Formattable *this, int a7, double a8)
{
  v48 = *MEMORY[0x1E69E9840];
  icu::Formattable::setLong(this, 0);
  if (a5 > 63)
  {
    return 0;
  }

  v16 = *(a2 + 8);
  v17 = v16;
  v18 = v16 >> 5;
  if (v17 < 0)
  {
    v18 = *(a2 + 12);
  }

  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  v39 = &unk_1F0932C70;
  v40 = 0xFFFFFFFF00000000;
  v37 = &unk_1F0932C70;
  v38 = *(a3 + 8);
  do
  {
    v20 = a1 + 8 * v19;
    if (*(v20 + 88))
    {
      v21 = (a4 & (1 << v19)) == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      icu::Formattable::Formattable(&v41);
      v22 = *(v20 + 88);
      if (a7)
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_19534C0E8(a1);
      }

      a4 = a4 | (1 << v19);
      if (sub_19534E9EC(v22, a2, &v37, 0, a4, a5 + 1, &v41, v23, a8))
      {
        v24 = v38;
        if (v38 > v40)
        {
          icu::Formattable::operator=(this, &v41);
          v40 = v38;
        }
      }

      v38 = *(a3 + 8);
      icu::Formattable::~Formattable(v24, &v41);
    }

    ++v19;
  }

  while (v19 != 6);
  v25 = sub_19534BD80(a8);
  v26 = *(a1 + 80);
  if (v26 >= 1)
  {
    v27 = v25;
    v28 = v26 - 1;
    do
    {
      v29 = *(a2 + 8);
      v30 = v29;
      v31 = v29 >> 5;
      if (v30 < 0)
      {
        v31 = *(a2 + 12);
      }

      if (v40 >= v31)
      {
        break;
      }

      if (*(a1 + 160) || **(*(a1 + 72) + 8 * v28) < v27)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        icu::Formattable::Formattable(&v41);
        v32 = *(a1 + 72);
        if (v32)
        {
          v33 = *(v32 + 8 * v28);
        }

        else
        {
          v33 = 0;
        }

        if (sub_19534E9EC(v33, a2, &v37, *(a1 + 160), a4, a5 + 1, &v41, 1, a8))
        {
          v34 = v38;
          if (v38 > v40)
          {
            icu::Formattable::operator=(this, &v41);
            v40 = v38;
          }
        }

        v38 = *(a3 + 8);
        icu::Formattable::~Formattable(v34, &v41);
      }

      v35 = v28-- + 1;
    }

    while (v35 > 1);
  }

  *(a3 + 8) = v40;
  icu::ParsePosition::~ParsePosition(&v37);
  icu::ParsePosition::~ParsePosition(&v39);
  return 1;
}

BOOL sub_19534C0E8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = "s";
  icu::UnicodeString::UnicodeString(&v18, 1, &v13, -1);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = "s";
  icu::UnicodeString::UnicodeString(&v14, 1, &v12, -1);
  if ((SWORD4(v18) & 0x8000u) == 0)
  {
    v2 = WORD4(v18) >> 5;
  }

  else
  {
    v2 = HIDWORD(v18);
  }

  v3 = *(a1 + 16);
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *(a1 + 20);
    if (BYTE8(v18))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a1 + 16) >> 5;
    if (BYTE8(v18))
    {
      goto LABEL_14;
    }
  }

  if (v2 >= 1)
  {
    if ((BYTE8(v18) & 2) != 0)
    {
      v5 = &v18 | 0xA;
    }

    else
    {
      v5 = *(&v19 + 1);
    }

    v6 = 0;
    if (icu::UnicodeString::indexOf(a1 + 8, v5, 0, v2, 0, v4) != -1)
    {
      goto LABEL_26;
    }

    v3 = *(a1 + 16);
  }

LABEL_14:
  if ((SWORD4(v14) & 0x8000u) == 0)
  {
    v7 = WORD4(v14) >> 5;
  }

  else
  {
    v7 = HIDWORD(v14);
  }

  if ((v3 & 0x8000) != 0)
  {
    v8 = *(a1 + 20);
  }

  else
  {
    v8 = v3 >> 5;
  }

  v6 = 1;
  if ((BYTE8(v14) & 1) == 0 && v7 >= 1)
  {
    if ((BYTE8(v14) & 2) != 0)
    {
      v9 = &v14 | 0xA;
    }

    else
    {
      v9 = *(&v15 + 1);
    }

    v6 = icu::UnicodeString::indexOf(a1 + 8, v9, 0, v7, 0, v8) == -1;
  }

LABEL_26:
  icu::UnicodeString::~UnicodeString(v3, &v14);
  icu::UnicodeString::~UnicodeString(v10, &v18);
  return v6;
}

void *sub_19534C2A0(uint64_t a1, icu::UnicodeString *this)
{
  v4 = *(a1 + 16);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a1 + 20);
  }

  icu::UnicodeString::doAppend(this, (a1 + 8), 0, v7);
  v16 = 58;
  icu::UnicodeString::doAppend(this, &v16, 0, 1);
  v17 = 10;
  result = icu::UnicodeString::doAppend(this, &v17, 0, 1);
  if (*(a1 + 80))
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 72);
      if (v10)
      {
        v11 = *(v10 + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      sub_19534DC00(v11, this);
      v18 = 10;
      result = icu::UnicodeString::doAppend(this, &v18, 0, 1);
      ++v9;
    }

    while (v9 < *(a1 + 80));
  }

  for (i = 0; i != 6; ++i)
  {
    v13 = *(a1 + 88 + 8 * i);
    if (v13)
    {
      if ((*v13 + 4) > 2)
      {
        sub_19534DC00(*(a1 + 88 + 8 * i), this);
        v20 = 10;
        result = icu::UnicodeString::doAppend(this, &v20, 0, 1);
      }

      else
      {
        v14 = *(a1 + 152);
        if (v14)
        {
          for (j = 0; j < v14; ++j)
          {
            result = *(*(a1 + 144) + 8 * j);
            if (*result == *v13)
            {
              sub_19534DC00(result, this);
              v19 = 10;
              result = icu::UnicodeString::doAppend(this, &v19, 0, 1);
              v14 = *(a1 + 152);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_19534C43C(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    return 0;
  }

  v2 = result;
  if (a2)
  {
    result = result;
  }

  else
  {
    result = 1;
  }

  if (a2 >= 2)
  {
    do
    {
      v2 *= v2;
      if ((a2 & 2) != 0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 1;
      }

      result *= v3;
      v4 = a2 > 3;
      a2 >>= 1;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_19534C480(uint64_t a1, __int16 *a2, int a3, unsigned int a4, int a5)
{
  if (a4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a4;
  }

  if (v5 >= 0x24)
  {
    v6 = 36;
  }

  else
  {
    v6 = v5;
  }

  if (!a5 && a3 && a1 < 0 && a4 == 10)
  {
    a1 = -a1;
    *a2 = 45;
    v7 = a2 + 1;
    --a3;
  }

  else
  {
    if (!a1 && a3)
    {
      if (a5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 48;
      }

      *a2 = v8;
      v7 = a2 + 1;
      if (a3 == 1)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v7 = a2;
  }

  v9 = a3 != 0;
  if (a3 && a1)
  {
    v10 = a3 - 1;
    do
    {
      v11 = a1 / v6;
      v12 = a1 % v6;
      if (!a5)
      {
        LOWORD(v12) = a0123456789abcd_2[v12];
      }

      *v7++ = v12;
      v13 = v10-- != 0;
      v9 = v13;
      if (!v13)
      {
        break;
      }

      a1 /= v6;
    }

    while (v11);
  }

  if (v9)
  {
LABEL_32:
    *v7 = 0;
  }

LABEL_33:
  v14 = v7 - 1;
  if (v7 - 1 > &a2[*a2 == 45])
  {
    v15 = &a2[(*a2 == 45) + 1];
    do
    {
      v16 = *v14;
      *v14-- = *(v15 - 1);
      *(v15 - 1) = v16;
    }

    while (v14 > v15++);
  }

  return (v7 - a2) >> 1;
}

uint64_t sub_19534C590(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*a1 + 8 * i);
        if (v5)
        {
          v6 = sub_19534CDC4(v5);
          MEMORY[0x19A8B2600](v6, 0x10F2C40E3085301);
          v3 = *(a1 + 8);
        }
      }

      v2 = *a1;
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_19534C610(uint64_t a1, uint64_t a2, UChar **a3, _DWORD *a4)
{
  *a1 = 0;
  *(a1 + 8) = 10;
  icu::UnicodeString::UnicodeString((a1 + 16), a3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  if (*(a1 + 24) >= 0x20u)
  {
    sub_19534C678(a1, a1 + 16, a4);
  }

  return a1;
}

void *sub_19534C678(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 12);
  }

  result = icu::UnicodeString::doIndexOf(a2, 0x3Au, 0, v9);
  if (result == -1)
  {
    goto LABEL_123;
  }

  v11 = result;
  v63 = 0u;
  v64 = 0u;
  v66 = 0;
  v65 = 0u;
  v62 = &unk_1F0935D00;
  LOWORD(v63) = 2;
  icu::UnicodeString::unBogus(&v62);
  if ((v63 & 0x8000u) == 0)
  {
    v12 = v63 >> 5;
  }

  else
  {
    v12 = DWORD1(v63);
  }

  icu::UnicodeString::doReplace(&v62, 0, v12, a2, 0, v11);
  v13 = v11 + 1;
  do
  {
    v14 = v13;
    v15 = *(a2 + 8);
    if (v15 < 0)
    {
      v16 = *(a2 + 12);
      if (v13 >= v16)
      {
        break;
      }
    }

    else
    {
      if (v13 >= (*(a2 + 8) >> 5))
      {
        break;
      }

      v16 = *(a2 + 8) >> 5;
    }

    if (v16 <= v13)
    {
      v18 = 0xFFFFLL;
    }

    else
    {
      if ((v15 & 2) != 0)
      {
        v17 = a2 + 10;
      }

      else
      {
        v17 = *(a2 + 24);
      }

      v18 = *(v17 + 2 * v13);
    }

    ++v13;
  }

  while (icu::PatternProps::isWhiteSpace(v18));
  icu::UnicodeString::doReplace(a2, 0, v14, 0, 0, 0);
  if ((v63 & 0x8000u) == 0)
  {
    v19 = v63 >> 5;
  }

  else
  {
    v19 = DWORD1(v63);
  }

  if (v19)
  {
    v20 = &v63 + 1;
    if ((v63 & 2) == 0)
    {
      v20 = v64;
    }

    v21 = *v20;
  }

  else
  {
    v21 = 0xFFFF;
  }

  v22 = v19 - 1;
  if ((v63 & 0x8000u) == 0)
  {
    v23 = v63 >> 5;
  }

  else
  {
    v23 = DWORD1(v63);
  }

  if (v23 <= v22)
  {
    v25 = 0xFFFF;
  }

  else
  {
    if ((v63 & 2) != 0)
    {
      v24 = &v63 + 2;
    }

    else
    {
      v24 = v64;
    }

    v25 = *&v24[2 * v22];
  }

  if ((v21 - 48) > 9 || v25 == 120)
  {
    v33 = icu::UnicodeString::doCompare(&v62, 0, v23, "-", 0, 2);
    v59 = "-";
    v34 = &v59;
    if (!v33)
    {
      v34 = -1;
      *a1 = -1;
      goto LABEL_122;
    }

    if (v19 != 3)
    {
      goto LABEL_122;
    }

    if (v21 == 48 && v25 == 120)
    {
      v35 = -3;
LABEL_112:
      *a1 = v35;
      *(a1 + 8) = 10;
      *(a1 + 12) = 0;
      if ((v63 & 0x8000u) == 0)
      {
        v50 = v63 >> 5;
      }

      else
      {
        v50 = DWORD1(v63);
      }

      if (v50 < 2)
      {
        v34 = 0xFFFFLL;
      }

      else
      {
        if ((v63 & 2) != 0)
        {
          v51 = &v63 + 2;
        }

        else
        {
          v51 = (v64 + 2);
        }

        v34 = *v51;
      }

      *(a1 + 14) = v34;
      goto LABEL_122;
    }

    if (v21 == 120 && v25 == 120)
    {
      v35 = -2;
      goto LABEL_112;
    }

    if (v21 == 120 && v25 == 48)
    {
      v35 = -4;
      goto LABEL_112;
    }

    v61 = "N";
    v55 = sub_1951D0FDC(&v62, &v61, 3);
    v58[1] = v61;
    if (v55)
    {
      v60 = "I";
      v56 = sub_1951D0FDC(&v62, &v60, 3);
      v58[0] = v60;
      v34 = v58;
      if (v56)
      {
        goto LABEL_122;
      }

      v57 = -5;
    }

    else
    {
      v57 = -6;
    }

    *a1 = v57;
    v34 = 10;
    *(a1 + 8) = 10;
    *(a1 + 12) = 0;
LABEL_122:
    result = icu::UnicodeString::~UnicodeString(v34, &v62);
LABEL_123:
    v52 = *(a2 + 8);
    if (v52 >= 0x20)
    {
      if ((v52 & 0x8000u) == 0 ? v52 >> 5 : *(a2 + 12))
      {
        if ((v52 & 2) != 0)
        {
          v54 = (a2 + 10);
        }

        else
        {
          v54 = *(a2 + 24);
        }

        if (*v54 == 39)
        {
          return icu::UnicodeString::doReplace(a2, 0, 1, 0, 0, 0);
        }
      }
    }

    return result;
  }

  if (v19 < 1)
  {
    v27 = 0;
    LODWORD(v19) = 0;
    LODWORD(v30) = 32;
LABEL_69:
    sub_19534D638(a1, v27, a3);
    goto LABEL_70;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((v63 & 0x8000u) == 0)
    {
      v28 = v63 >> 5;
    }

    else
    {
      v28 = DWORD1(v63);
    }

    if (v26 >= v28)
    {
      v30 = 0xFFFFLL;
      goto LABEL_55;
    }

    if ((v63 & 2) != 0)
    {
      v29 = &v63 + 2;
    }

    else
    {
      v29 = v64;
    }

    v30 = *&v29[2 * v26];
    v31 = (v30 - 48);
    if (v31 <= 9)
    {
      if (v27 < 1)
      {
        if (v27 < 0xF333333333333334)
        {
          goto LABEL_108;
        }
      }

      else if (v27 > (((v31 ^ 0x7FFFFFFFFFFFFFFEuLL) * 0x6666666666666667uLL) >> 64) >> 2)
      {
        goto LABEL_108;
      }

      v27 = v31 + 10 * v27;
      goto LABEL_60;
    }

    if (v30 == 47 || v30 == 62)
    {
      break;
    }

LABEL_55:
    isWhiteSpace = icu::PatternProps::isWhiteSpace(v30);
    if ((v30 & 0xFFFFFFFD) != 0x2C && !isWhiteSpace)
    {
      goto LABEL_108;
    }

LABEL_60:
    if (v19 == ++v26)
    {
      goto LABEL_69;
    }
  }

  sub_19534D638(a1, v27, a3);
  if (v30 == 47)
  {
    v44 = v26 + 1;
    if (v44 >= v19)
    {
      *(a1 + 8) = 0;
      LODWORD(v30) = 47;
      LODWORD(v19) = v44;
      goto LABEL_139;
    }

    v45 = 0;
    while (2)
    {
      if ((v63 & 0x8000u) == 0)
      {
        v46 = v63 >> 5;
      }

      else
      {
        v46 = DWORD1(v63);
      }

      if (v44 >= v46)
      {
        v30 = 0xFFFFLL;
      }

      else
      {
        if ((v63 & 2) != 0)
        {
          v47 = &v63 + 2;
        }

        else
        {
          v47 = v64;
        }

        v30 = *&v47[2 * v44];
        v48 = (v30 - 48);
        if (v48 <= 9)
        {
          if (v45 < 1)
          {
            if (v45 < 0xF333333333333334)
            {
              goto LABEL_108;
            }
          }

          else if (v45 > (((v48 ^ 0x7FFFFFFFFFFFFFFEuLL) * 0x6666666666666667uLL) >> 64) >> 2)
          {
            goto LABEL_108;
          }

          v45 = v48 + 10 * v45;
          goto LABEL_106;
        }

        if (v30 == 62)
        {
          LODWORD(v19) = v44;
LABEL_143:
          *(a1 + 8) = v45;
          if (v45)
          {
LABEL_144:
            *(a1 + 12) = sub_19534D708(a1);
            goto LABEL_70;
          }

LABEL_139:
          *a3 = 9;
          goto LABEL_144;
        }
      }

      v49 = icu::PatternProps::isWhiteSpace(v30);
      if ((v30 & 0xFFFFFFFD) != 0x2C && !v49)
      {
        goto LABEL_108;
      }

LABEL_106:
      if (v19 == ++v44)
      {
        goto LABEL_143;
      }

      continue;
    }
  }

  LODWORD(v19) = v26;
LABEL_70:
  if (v30 != 62)
  {
    goto LABEL_122;
  }

  v34 = v63;
  v36 = v63 >> 5;
  v37 = DWORD1(v63);
  v38 = &v63 + 2;
  if ((v63 & 2) == 0)
  {
    v38 = v64;
  }

  v39 = v19;
  if ((v63 & 0x8000) != 0)
  {
    goto LABEL_76;
  }

LABEL_74:
  v40 = v36;
  if (v39 >= v36)
  {
    goto LABEL_122;
  }

  while (v40 > v39)
  {
    if (*&v38[2 * v39] != 62)
    {
      break;
    }

    v41 = *(a1 + 12);
    v42 = __OFSUB__(v41, 1);
    v43 = v41 - 1;
    if (v43 < 0 != v42)
    {
      break;
    }

    *(a1 + 12) = v43;
    ++v39;
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_74;
    }

LABEL_76:
    v40 = v37;
    if (v39 >= v37)
    {
      goto LABEL_122;
    }
  }

LABEL_108:
  *a3 = 9;
  return icu::UnicodeString::~UnicodeString(9, &v62);
}

void *sub_19534CCF8(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  if (v2 != v3)
  {
    if (v3)
    {
      (*(*v3 + 8))(a1[11]);
      v2 = a1[10];
    }

    a1[11] = 0;
  }

  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[10] = 0;
  v4 = a1[13];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[13] = 0;
  icu::UnicodeString::~UnicodeString(v3, (a1 + 2));
  return a1;
}

void sub_19534CDC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    operator new();
  }
}

uint64_t sub_19534D2A4(uint64_t result, uint64_t a2, UChar **a3, uint64_t a4, UErrorCode *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = result;
    icu::UnicodeString::operator=((result + 16), a3);
    v9 = sub_19534D790(v8, a2, a4, a5);
    *(v8 + 80) = v9;
    if (v9)
    {
      v9 = sub_19534D790(v8, a2, a4, a5);
    }

    *(v8 + 88) = v9;
    v10 = *(v8 + 24);
    if ((v10 & 0x8000) != 0)
    {
      v12 = *(v8 + 28);
      v11 = v12 & (v12 >> 31);
    }

    else
    {
      v11 = 0;
      v12 = v10 >> 5;
    }

    result = icu::UnicodeString::indexOf(v8 + 16, "$", 0, -1, v11, v12 - v11);
    if ((result & 0x80000000) == 0)
    {
      v13 = result;
      if (*(v8 + 24) < 0)
      {
        v14 = *(v8 + 28);
        v15 = v14 >= result ? result : *(v8 + 28);
      }

      else
      {
        v14 = *(v8 + 24) >> 5;
        v15 = v14 >= result ? result : *(v8 + 24) >> 5;
      }

      result = icu::UnicodeString::indexOf(v8 + 16, L")$", 0, -1, v15, v14 - v15);
      if ((result & 0x80000000) == 0)
      {
        v16 = result;
        if (*(v8 + 24) < 0)
        {
          v17 = *(v8 + 28);
          if (v17 >= v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = *(v8 + 28);
          }
        }

        else
        {
          v17 = *(v8 + 24) >> 5;
          if (v17 >= v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = *(v8 + 24) >> 5;
          }
        }

        result = icu::UnicodeString::doIndexOf(v8 + 16, 0x2Cu, v18, v17 - v18);
        if ((result & 0x80000000) != 0)
        {
          *a5 = U_PARSE_ERROR;
        }

        else
        {
          v19 = result;
          memset(v38, 0, sizeof(v38));
          icu::UnicodeString::tempSubString(v38, (v8 + 16), v13 + 2, result - v13 - 2);
          v32 = L"cardinal";
          icu::UnicodeString::UnicodeString(v33, 1, &v32, -1);
          v20 = v34;
          if ((v34 & 0x8000u) == 0)
          {
            v21 = v34 >> 5;
          }

          else
          {
            v21 = v36;
          }

          if (v34)
          {
            v23 = BYTE8(v38[0]) & 1;
          }

          else if (BYTE8(v38[0]))
          {
            v23 = 0;
          }

          else
          {
            if ((v34 & 2) != 0)
            {
              v22 = v35;
            }

            else
            {
              v22 = v37;
            }

            v23 = icu::UnicodeString::doEqualsSubstring(v38, 0, v21, v22, v21 & (v21 >> 31), v21 & ~(v21 >> 31));
          }

          icu::UnicodeString::~UnicodeString(v20, v33);
          v30[1] = v32;
          if (v23)
          {
            v24 = 0;
            goto LABEL_51;
          }

          v31 = "o";
          icu::UnicodeString::UnicodeString(v33, 1, &v31, -1);
          v25 = v34;
          if ((v34 & 0x8000u) == 0)
          {
            v26 = v34 >> 5;
          }

          else
          {
            v26 = v36;
          }

          if (v34)
          {
            v28 = BYTE8(v38[0]) & 1;
          }

          else if (BYTE8(v38[0]))
          {
            v28 = 0;
          }

          else
          {
            if ((v34 & 2) != 0)
            {
              v27 = v35;
            }

            else
            {
              v27 = v37;
            }

            v28 = icu::UnicodeString::doEqualsSubstring(v38, 0, v26, v27, v26 & (v26 >> 31), v26 & ~(v26 >> 31));
          }

          icu::UnicodeString::~UnicodeString(v25, v33);
          v30[0] = v31;
          v24 = 1;
          if (v28)
          {
LABEL_51:
            v29 = *(v8 + 96);
            icu::UnicodeString::tempSubString(v33, (v8 + 16), v19 + 1, v16 + ~v19);
            icu::RuleBasedNumberFormat::createPluralFormat(v29, v24, v33, a5);
          }

          *a5 = U_ILLEGAL_ARGUMENT_ERROR;
          return icu::UnicodeString::~UnicodeString(v30, v38);
        }
      }
    }
  }

  return result;
}

void *sub_19534D5F0(void **a1, void *a2)
{
  result = *a1;
  if (result)
  {
    v5 = sub_19534CCF8(result);
    result = MEMORY[0x19A8B2600](v5, 0x10F2C40E3085301);
  }

  *a1 = a2;
  return result;
}

uint64_t sub_19534D638(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  *result = a2;
  *(result + 8) = 10;
  if (a2 < 1)
  {
    *(result + 12) = 0;
  }

  else
  {
    v5 = sub_19534D708(result);
    *(v3 + 12) = v5;
    v6 = *(v3 + 80);
    if (v6)
    {
      (*(*v6 + 32))(v6, *(v3 + 8), v5, a3);
    }

    result = *(v3 + 88);
    if (result)
    {
      v7 = *(*result + 32);

      return v7();
    }
  }

  return result;
}

uint64_t sub_19534D708(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*a1 < 1)
    {
      LOWORD(v1) = 0;
    }

    else
    {
      v3 = uprv_log(*a1);
      v4 = (v3 / uprv_log(*(a1 + 8)));
      if (sub_19534C43C(*(a1 + 8), (v4 + 1)) > *a1)
      {
        LOWORD(v1) = v4;
      }

      else
      {
        LOWORD(v1) = v4 + 1;
      }
    }
  }

  return v1;
}

void *sub_19534D790(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v8 = sub_19534DA1C(a1);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  if (*(a1 + 24) < 0)
  {
    v11 = *(a1 + 28);
    v10 = v11 & (v11 >> 31);
  }

  else
  {
    v10 = 0;
    v11 = *(a1 + 24) >> 5;
  }

  if (icu::UnicodeString::indexOf(a1 + 16, ">", 0, 3, v10, v11 - v10) == v8)
  {
    v12 = v9 + 2;
  }

  else
  {
    v18 = *(a1 + 24);
    if (*(a1 + 24) < 0)
    {
      v19 = *(a1 + 28);
    }

    else
    {
      v19 = v18 >> 5;
    }

    if (v19 <= v9)
    {
      v21 = 0xFFFF;
    }

    else
    {
      if ((v18 & 2) != 0)
      {
        v20 = a1 + 26;
      }

      else
      {
        v20 = *(a1 + 40);
      }

      v21 = *(v20 + 2 * v9);
    }

    if (v9 >= -1)
    {
      v24 = v9 + 1;
      if ((v18 & 0x8000) != 0)
      {
        v23 = *(a1 + 28);
        if (v23 >= v24)
        {
          v22 = v9 + 1;
        }

        else
        {
          v22 = *(a1 + 28);
        }
      }

      else
      {
        v23 = v18 >> 5;
        if (v23 >= v24)
        {
          v22 = v9 + 1;
        }

        else
        {
          v22 = v23;
        }
      }
    }

    else
    {
      v22 = 0;
      if ((v18 & 0x8000) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v23 = v18 >> 5;
      }
    }

    v12 = icu::UnicodeString::doIndexOf(a1 + 16, v21, v22, v23 - v22);
    if (v21 == 60 && v12 != -1)
    {
      v25 = *(a1 + 24);
      if (*(a1 + 24) < 0)
      {
        v26 = *(a1 + 28);
      }

      else
      {
        v26 = v25 >> 5;
      }

      if (v12 >= (v26 - 1))
      {
        goto LABEL_8;
      }

      if (v26 > v12 + 1)
      {
        v27 = (v25 & 2) != 0 ? a1 + 26 : *(a1 + 40);
        if (*(v27 + 2 * (v12 + 1)) == 60)
        {
          ++v12;
        }
      }
    }
  }

  if (v12 == -1)
  {
    return 0;
  }

LABEL_8:
  v29 = 0u;
  v30 = 0u;
  v32 = 0;
  v31 = 0u;
  v28 = &unk_1F0935D00;
  LOWORD(v29) = 2;
  v13 = v12 - v9;
  icu::UnicodeString::unBogus(&v28);
  if ((v29 & 0x8000u) == 0)
  {
    v14 = v29 >> 5;
  }

  else
  {
    v14 = DWORD1(v29);
  }

  icu::UnicodeString::doReplace(&v28, 0, v14, (a1 + 16), v9, (v13 + 1));
  v15 = sub_19535018C(v9, a1, v5, a2, *(a1 + 96), &v28, a4);
  icu::UnicodeString::doReplace(a1 + 16, v9, (v13 + 1), 0, 0, 0);
  icu::UnicodeString::~UnicodeString(v16, &v28);
  return v15;
}

uint64_t sub_19534DA1C(uint64_t a1)
{
  v2 = 0;
  LODWORD(v3) = -1;
  do
  {
    if (*(a1 + 24) < 0)
    {
      v4 = *(a1 + 28);
    }

    else
    {
      v4 = *(a1 + 24) >> 5;
    }

    v5 = icu::UnicodeString::doIndexOf(a1 + 16, *(&off_1E740FF98)[v2], 0, v4);
    if (v5 >= v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == -1)
    {
      v6 = v5;
    }

    if (v5 == -1)
    {
      v3 = v3;
    }

    else
    {
      v3 = v6;
    }

    ++v2;
  }

  while (v2 != 11);
  return v3;
}

uint64_t sub_19534DAA8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v10 = *(a1 + 80);
    v11 = *(a2 + 80);
    if (v10)
    {
      if (!v11)
      {
        return 0;
      }

      result = (*(*v10 + 24))(v10);
      if (!result)
      {
        return result;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v12 = *(a1 + 88);
    v13 = *(a2 + 88);
    if (v12)
    {
      if (v13)
      {
        v14 = *(*v12 + 24);

        return v14();
      }
    }

    else if (!v13)
    {
      return 1;
    }

    return 0;
  }

  if ((v4 & 0x8000) != 0)
  {
    v5 = *(a1 + 28);
  }

  else
  {
    v5 = v4 >> 5;
  }

  result = 0;
  v7 = *(a2 + 24);
  if ((v7 & 0x8000u) == 0)
  {
    v8 = v7 >> 5;
  }

  else
  {
    v8 = *(a2 + 28);
  }

  if ((v7 & 1) == 0 && v5 == v8)
  {
    v9 = (v7 & 2) != 0 ? (a2 + 26) : *(a2 + 40);
    result = icu::UnicodeString::doEquals(a1 + 16, v9, v5);
    if (result)
    {
      goto LABEL_19;
    }
  }

  return result;
}

void *sub_19534DC00(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a1 >= 1)
  {
    v4 = -7;
  }

  else
  {
    v4 = *a1;
  }

  if (v4 > -4)
  {
    switch(v4)
    {
      case -3:
        LOWORD(v31) = 48;
        v9 = icu::UnicodeString::doAppend(a2, &v31, 0, 1);
        v10 = *(a1 + 14);
        if (!v10)
        {
          v10 = 46;
        }

        LOWORD(v31) = v10;
        v7 = icu::UnicodeString::doAppend(v9, &v31, 0, 1);
        v8 = 120;
        goto LABEL_19;
      case -2:
        LOWORD(v31) = 120;
        v12 = icu::UnicodeString::doAppend(a2, &v31, 0, 1);
        v13 = *(a1 + 14);
        if (!v13)
        {
          v13 = 46;
        }

        LOWORD(v31) = v13;
        v7 = icu::UnicodeString::doAppend(v12, &v31, 0, 1);
        LOWORD(v31) = 120;
        goto LABEL_29;
      case -1:
        icu::UnicodeString::doAppend(a2, "-", 0, 2);
        goto LABEL_30;
    }
  }

  else
  {
    switch(v4)
    {
      case -6:
        icu::UnicodeString::doAppend(a2, "N", 0, 3);
        goto LABEL_30;
      case -5:
        icu::UnicodeString::doAppend(a2, "I", 0, 3);
        goto LABEL_30;
      case -4:
        LOWORD(v31) = 120;
        v5 = icu::UnicodeString::doAppend(a2, &v31, 0, 1);
        v6 = *(a1 + 14);
        if (!v6)
        {
          v6 = 46;
        }

        LOWORD(v31) = v6;
        v7 = icu::UnicodeString::doAppend(v5, &v31, 0, 1);
        v8 = 48;
LABEL_19:
        LOWORD(v31) = v8;
LABEL_29:
        icu::UnicodeString::doAppend(v7, &v31, 0, 1);
        goto LABEL_30;
    }
  }

  sub_19534E0BC(a2, *a1);
  if (*(a1 + 8) != 10)
  {
    LOWORD(v31) = 47;
    icu::UnicodeString::doAppend(a2, &v31, 0, 1);
    sub_19534E0BC(a2, *(a1 + 8));
  }

  v11 = sub_19534D708(a1) - *(a1 + 12);
  if (v11 >= 1)
  {
    do
    {
      LOWORD(v31) = 62;
      icu::UnicodeString::doAppend(a2, &v31, 0, 1);
      --v11;
    }

    while (v11);
  }

LABEL_30:
  LOWORD(v31) = 58;
  icu::UnicodeString::doAppend(a2, &v31, 0, 1);
  LOWORD(v31) = 32;
  icu::UnicodeString::doAppend(a2, &v31, 0, 1);
  v14 = *(a1 + 24);
  if (*(a1 + 24) < 0)
  {
    if (!*(a1 + 28))
    {
      goto LABEL_41;
    }
  }

  else if (!(v14 >> 5))
  {
    goto LABEL_41;
  }

  if ((v14 & 2) != 0)
  {
    v15 = (a1 + 26);
  }

  else
  {
    v15 = *(a1 + 40);
  }

  if (*v15 == 32)
  {
    v16 = *(a1 + 80);
    if (!v16 || *(v16 + 8))
    {
      LOWORD(v31) = 39;
      icu::UnicodeString::doAppend(a2, &v31, 0, 1);
    }
  }

LABEL_41:
  v32 = 0u;
  v33 = 0u;
  v35 = 0;
  v34 = 0u;
  v31 = &unk_1F0935D00;
  LOWORD(v32) = 2;
  icu::UnicodeString::copyFrom(&v31, (a1 + 16), 0);
  v27 = 0u;
  v28 = 0u;
  v30 = 0;
  v29 = 0u;
  v26 = &unk_1F0935D00;
  LOWORD(v27) = 2;
  v17 = *(a1 + 88);
  if (v17)
  {
    (*(*v17 + 40))(v17, &v26);
    if ((v27 & 0x8000u) == 0)
    {
      v18 = v27 >> 5;
    }

    else
    {
      v18 = DWORD1(v27);
    }

    icu::UnicodeString::doReplace(&v31, *(*(a1 + 88) + 8), 0, &v26, 0, v18);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    (*(*v19 + 40))(v19, &v26);
    if ((v27 & 0x8000u) == 0)
    {
      v20 = v27 >> 5;
    }

    else
    {
      v20 = DWORD1(v27);
    }

    icu::UnicodeString::doReplace(&v31, *(*(a1 + 80) + 8), 0, &v26, 0, v20);
  }

  if ((v32 & 0x8000u) == 0)
  {
    v21 = v32 >> 5;
  }

  else
  {
    v21 = DWORD1(v32);
  }

  icu::UnicodeString::doAppend(a2, &v31, 0, v21);
  v25 = 59;
  icu::UnicodeString::doAppend(a2, &v25, 0, 1);
  icu::UnicodeString::~UnicodeString(v22, &v26);
  return icu::UnicodeString::~UnicodeString(v23, &v31);
}

void *sub_19534E0BC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v3 = sub_19534C480(a2, v8, 512, 0xAu, 0);
  memset(v7, 0, sizeof(v7));
  icu::UnicodeString::UnicodeString(v7, v8, v3);
  if ((SWORD4(v7[0]) & 0x8000u) == 0)
  {
    v4 = WORD4(v7[0]) >> 5;
  }

  else
  {
    v4 = HIDWORD(v7[0]);
  }

  icu::UnicodeString::doAppend(a1, v7, 0, v4);
  return icu::UnicodeString::~UnicodeString(v5, v7);
}

uint64_t sub_19534E1CC(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && (*(*v2 + 112))(v2))
  {
    return 1;
  }

  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 112))(result) != 0;
  }

  return result;
}

_DWORD *sub_19534E258(uint64_t a1, unint64_t a2, icu::UnicodeString *this, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 104);
  if (*(a1 + 24) < 0)
  {
    v13 = *(a1 + 28);
    if (v12)
    {
      v14 = v13 & (v13 >> 31);
      goto LABEL_6;
    }

LABEL_11:
    icu::UnicodeString::doReplace(this, a4, 0, (a1 + 16), 0, v13);
    v19 = 0;
    goto LABEL_43;
  }

  v13 = *(a1 + 24) >> 5;
  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = 0;
LABEL_6:
  v15 = icu::UnicodeString::indexOf(a1 + 16, "$", 0, -1, v14, v13 - v14);
  LODWORD(v13) = v15;
  v16 = *(a1 + 24);
  if (v15 < 0)
  {
    v18 = 0;
    if ((v16 & 0x8000) != 0)
    {
      v17 = *(a1 + 28);
    }

    else
    {
      v17 = v16 >> 5;
    }
  }

  else if ((v16 & 0x8000) != 0)
  {
    v17 = *(a1 + 28);
    if (v17 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = *(a1 + 28);
    }
  }

  else
  {
    v17 = v16 >> 5;
    if (v17 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }
  }

  v20 = icu::UnicodeString::indexOf(a1 + 16, L")$", 0, -1, v18, v17 - v18);
  v21 = *(this + 4);
  v22 = v21;
  v23 = v21 >> 5;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(this + 3);
  }

  v25 = *(a1 + 24);
  if ((v25 & 0x8000) != 0)
  {
    v26 = *(a1 + 28);
  }

  else
  {
    v26 = v25 >> 5;
  }

  if (v20 < (v26 - 1))
  {
    icu::UnicodeString::tempSubString(&v43, (a1 + 16), v20 + 2, 0x7FFFFFFF);
    if ((v44 & 0x8000u) == 0)
    {
      v27 = v44 >> 5;
    }

    else
    {
      v27 = v45;
    }

    icu::UnicodeString::doReplace(this, a4, 0, &v43, 0, v27);
    icu::UnicodeString::~UnicodeString(v28, &v43);
  }

  v29 = *(a1 + 104);
  v30 = sub_19534C43C(*(a1 + 8), *(a1 + 12));
  icu::PluralFormat::format(&v43, v29, a6, a2 / v30);
  if ((v44 & 0x8000u) == 0)
  {
    v31 = v44 >> 5;
  }

  else
  {
    v31 = v45;
  }

  icu::UnicodeString::doReplace(this, a4, 0, &v43, 0, v31);
  icu::UnicodeString::~UnicodeString(v32, &v43);
  if (v13 >= 1)
  {
    icu::UnicodeString::tempSubString(&v43, (a1 + 16), 0, v13);
    if ((v44 & 0x8000u) == 0)
    {
      v33 = v44 >> 5;
    }

    else
    {
      v33 = v45;
    }

    icu::UnicodeString::doReplace(this, a4, 0, &v43, 0, v33);
    icu::UnicodeString::~UnicodeString(v34, &v43);
  }

  if (*(a1 + 24) < 0)
  {
    v35 = *(a1 + 28);
  }

  else
  {
    v35 = *(a1 + 24) >> 5;
  }

  v36 = *(this + 4);
  v37 = v36;
  v38 = v36 >> 5;
  if (v37 < 0)
  {
    v38 = *(this + 3);
  }

  v19 = v35 + v24 - v38;
LABEL_43:
  v39 = *(a1 + 88);
  if (v39)
  {
    if (v39[2] <= v13)
    {
      v40 = 0;
    }

    else
    {
      v40 = v19;
    }

    (*(*v39 + 48))(v39, a2, this, a4 - v40, a5, a6);
  }

  result = *(a1 + 80);
  if (result)
  {
    if (result[2] <= v13)
    {
      v42 = 0;
    }

    else
    {
      v42 = v19;
    }

    return (*(*result + 48))(result, a2, this, a4 - v42, a5, a6);
  }

  return result;
}

_DWORD *sub_19534E5B4(uint64_t a1, icu::UnicodeString *this, uint64_t a3, uint64_t a4, UErrorCode *a5, double a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 104);
  if (*(a1 + 24) < 0)
  {
    v13 = *(a1 + 28);
    if (v12)
    {
      v14 = v13 & (v13 >> 31);
      goto LABEL_6;
    }

LABEL_11:
    icu::UnicodeString::doReplace(this, a3, 0, (a1 + 16), 0, v13);
    v19 = 0;
    goto LABEL_47;
  }

  v13 = *(a1 + 24) >> 5;
  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = 0;
LABEL_6:
  v15 = icu::UnicodeString::indexOf(a1 + 16, "$", 0, -1, v14, v13 - v14);
  LODWORD(v13) = v15;
  v16 = *(a1 + 24);
  if (v15 < 0)
  {
    v18 = 0;
    if ((v16 & 0x8000) != 0)
    {
      v17 = *(a1 + 28);
    }

    else
    {
      v17 = v16 >> 5;
    }
  }

  else if ((v16 & 0x8000) != 0)
  {
    v17 = *(a1 + 28);
    if (v17 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = *(a1 + 28);
    }
  }

  else
  {
    v17 = v16 >> 5;
    if (v17 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }
  }

  v20 = icu::UnicodeString::indexOf(a1 + 16, L")$", 0, -1, v18, v17 - v18);
  v21 = *(this + 4);
  v22 = v21;
  v23 = v21 >> 5;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(this + 3);
  }

  v25 = *(a1 + 24);
  if ((v25 & 0x8000) != 0)
  {
    v26 = *(a1 + 28);
  }

  else
  {
    v26 = v25 >> 5;
  }

  if (v20 < (v26 - 1))
  {
    icu::UnicodeString::tempSubString(&v43, (a1 + 16), v20 + 2, 0x7FFFFFFF);
    if ((v44 & 0x8000u) == 0)
    {
      v27 = v44 >> 5;
    }

    else
    {
      v27 = v45;
    }

    icu::UnicodeString::doReplace(this, a3, 0, &v43, 0, v27);
    icu::UnicodeString::~UnicodeString(v28, &v43);
  }

  v29 = sub_19534C43C(*(a1 + 8), *(a1 + 12));
  if (a6 < 0.0 || a6 >= 1.0)
  {
    v30 = a6 / v29;
  }

  else
  {
    v30 = uprv_round(v29 * a6);
  }

  icu::PluralFormat::format(&v43, *(a1 + 104), a5, v30);
  if ((v44 & 0x8000u) == 0)
  {
    v31 = v44 >> 5;
  }

  else
  {
    v31 = v45;
  }

  icu::UnicodeString::doReplace(this, a3, 0, &v43, 0, v31);
  icu::UnicodeString::~UnicodeString(v32, &v43);
  if (v13 >= 1)
  {
    icu::UnicodeString::tempSubString(&v43, (a1 + 16), 0, v13);
    if ((v44 & 0x8000u) == 0)
    {
      v33 = v44 >> 5;
    }

    else
    {
      v33 = v45;
    }

    icu::UnicodeString::doReplace(this, a3, 0, &v43, 0, v33);
    icu::UnicodeString::~UnicodeString(v34, &v43);
  }

  if (*(a1 + 24) < 0)
  {
    v35 = *(a1 + 28);
  }

  else
  {
    v35 = *(a1 + 24) >> 5;
  }

  v36 = *(this + 4);
  v37 = v36;
  v38 = v36 >> 5;
  if (v37 < 0)
  {
    v38 = *(this + 3);
  }

  v19 = v35 + v24 - v38;
LABEL_47:
  v39 = *(a1 + 88);
  if (v39)
  {
    if (v39[2] <= v13)
    {
      v40 = 0;
    }

    else
    {
      v40 = v19;
    }

    (*(*v39 + 56))(v39, this, a3 - v40, a4, a5, a6);
  }

  result = *(a1 + 80);
  if (result)
  {
    if (result[2] <= v13)
    {
      v42 = 0;
    }

    else
    {
      v42 = v19;
    }

    return (*(*result + 56))(result, this, a3 - v42, a4, a5, a6);
  }

  return result;
}

uint64_t sub_19534E934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4 && (*(*v4 + 112))(v4) || (result = *(a1 + 88)) != 0 && (result = (*(*result + 112))(result), result))
  {
    v6 = sub_19534C43C(*(a1 + 8), *(a1 + 12));
    return !(a2 % v6) && *a1 % v6 != 0;
  }

  return result;
}

uint64_t sub_19534E9EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, icu::Formattable *a7, int a8, double a9)
{
  v76 = *MEMORY[0x1E69E9840];
  v58 = &unk_1F0932C70;
  v59 = 0xFFFFFFFF00000000;
  memset(v75, 0, sizeof(v75));
  icu::UnicodeString::UnicodeString(v75, a2);
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = *(v16 + 8);
  }

  else if (*(a1 + 24) < 0)
  {
    v17 = *(a1 + 28);
  }

  else
  {
    v17 = *(a1 + 24) >> 5;
  }

  v18 = *(a1 + 88);
  v54 = a6;
  if (v18)
  {
    v19 = a3;
    v20 = *(v18 + 8);
  }

  else
  {
    v19 = a3;
    if (*(a1 + 24) < 0)
    {
      v20 = *(a1 + 28);
    }

    else
    {
      v20 = *(a1 + 24) >> 5;
    }
  }

  v71 = 0u;
  v74 = 0;
  v73 = 0u;
  v72 = 0u;
  v70 = &unk_1F0935D00;
  LOWORD(v71) = 2;
  icu::UnicodeString::unBogus(&v70);
  if ((v71 & 0x8000u) == 0)
  {
    v21 = v71 >> 5;
  }

  else
  {
    v21 = DWORD1(v71);
  }

  icu::UnicodeString::doReplace(&v70, 0, v21, (a1 + 16), 0, v17);
  sub_19534EFBC(a1, v75, &v70, &v58);
  v22 = *(a2 + 8);
  v23 = v22;
  v24 = v22 >> 5;
  if (v23 >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = *(a2 + 12);
  }

  if ((SWORD4(v75[0]) & 0x8000u) == 0)
  {
    v26 = WORD4(v75[0]) >> 5;
  }

  else
  {
    v26 = HIDWORD(v75[0]);
  }

  if (!v59 && v17)
  {
    goto LABEL_22;
  }

  v28 = *a1;
  if (*a1 == -6)
  {
    *(v19 + 8) = v59;
    NaN = uprv_getNaN();
    goto LABEL_27;
  }

  if (v28 == -5)
  {
    *(v19 + 8) = v59;
    NaN = uprv_getInfinity();
LABEL_27:
    icu::Formattable::setDouble(a7, NaN);
    goto LABEL_71;
  }

  if (!a8)
  {
    v51 = *(a1 + 80);
    if (v51)
    {
      if ((*(*v51 + 120))(v51))
      {
LABEL_22:
        *(v19 + 12) = HIDWORD(v59);
        icu::Formattable::setLong(a7, 0);
        goto LABEL_71;
      }

      v28 = *a1;
    }
  }

  v30 = 0;
  v31 = 0;
  v52 = v25 - v26;
  v32 = 0.0;
  if (v28 >= 1)
  {
    v33 = v28;
  }

  else
  {
    v33 = 0.0;
  }

  v66 = 0u;
  v69 = 0;
  v68 = 0u;
  v67 = 0u;
  v65 = &unk_1F0935D00;
  LOWORD(v66) = 2;
  do
  {
    LODWORD(v59) = 0;
    icu::UnicodeString::unBogus(&v65);
    if ((v66 & 0x8000u) == 0)
    {
      v34 = v66 >> 5;
    }

    else
    {
      v34 = DWORD1(v66);
    }

    icu::UnicodeString::doReplace(&v65, 0, v34, (a1 + 16), v17, (v20 - v17));
    v35 = sub_19534F074(a1, v75, v30, &v65, &v58, *(a1 + 80), a5, v54, v33, a9);
    v36 = v59;
    if (v59 || !*(a1 + 80))
    {
      v64 = 0;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = &unk_1F0935D00;
      LOWORD(v61) = 2;
      v37 = WORD4(v75[0]) >> 5;
      if (SWORD4(v75[0]) < 0)
      {
        v37 = HIDWORD(v75[0]);
      }

      v38 = (v37 - v59);
      icu::UnicodeString::unBogus(&v60);
      if ((v61 & 0x8000u) == 0)
      {
        v39 = v61 >> 5;
      }

      else
      {
        v39 = DWORD1(v61);
      }

      icu::UnicodeString::doReplace(&v60, 0, v39, v75, v36, v38);
      v56 = &unk_1F0932C70;
      v57 = 0xFFFFFFFF00000000;
      v40 = *(a1 + 24);
      if ((v40 & 0x8000) != 0)
      {
        v41 = *(a1 + 28);
      }

      else
      {
        v41 = v40 >> 5;
      }

      v42 = v41 - v20;
      icu::UnicodeString::unBogus(&v65);
      if ((v66 & 0x8000u) == 0)
      {
        v43 = v66 >> 5;
      }

      else
      {
        v43 = DWORD1(v66);
      }

      icu::UnicodeString::doReplace(&v65, 0, v43, (a1 + 16), v20, v42);
      v44 = sub_19534F074(a1, &v60, 0, &v65, &v56, *(a1 + 88), a5, v54, v35, a9);
      if (v57 || !*(a1 + 88))
      {
        if ((v52 + v57 + v59) > v31)
        {
          v32 = v44;
          v31 = v52 + v57 + v59;
        }
      }

      else
      {
        v47 = HIDWORD(v57) + v17 + v59;
        if (v47 > *(v19 + 12))
        {
          *(v19 + 12) = v47;
        }
      }

      icu::ParsePosition::~ParsePosition(&v56);
      icu::UnicodeString::~UnicodeString(v45, &v60);
    }

    else
    {
      if (HIDWORD(v59) + v17 > *(v19 + 12))
      {
        *(v19 + 12) = HIDWORD(v59) + v17;
      }

      v36 = v30;
    }

    if (v20 == v17 || v59 < 1)
    {
      break;
    }

    v46 = WORD4(v75[0]) >> 5;
    if (SWORD4(v75[0]) < 0)
    {
      v46 = HIDWORD(v75[0]);
    }

    if (v59 >= v46)
    {
      break;
    }

    v30 = v36;
  }

  while (v59 != v36);
  *(v19 + 8) = v31;
  if (v31 >= 1)
  {
    *(v19 + 12) = 0;
    if (a4)
    {
      if (!*(a1 + 80))
      {
        v32 = 1.0 / v32;
      }
    }
  }

  icu::Formattable::setDouble(a7, v32);
  icu::UnicodeString::~UnicodeString(v48, &v65);
LABEL_71:
  icu::UnicodeString::~UnicodeString(v27, &v70);
  icu::UnicodeString::~UnicodeString(v49, v75);
  icu::ParsePosition::~ParsePosition(&v58);
  return 1;
}

void sub_19534EFBC(uint64_t a1, const icu::UnicodeString *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 < 0)
  {
    v6 = *(a3 + 12);
  }

  if (v6)
  {
    v12 = 0;
    v9 = sub_19534F430(a1, a2, a3, &v12);
    if (v12 <= 0 && v9 != 0)
    {
      *(a4 + 8) += v9;
      if (v9 == 0x7FFFFFFF)
      {
        if (*(a2 + 4))
        {
          v11 = 2;
        }

        else
        {
          v11 = *(a2 + 4) & 0x1E;
        }

        *(a2 + 4) = v11;
      }

      else
      {
        icu::UnicodeString::doReplace(a2, 0, v9, 0, 0, 0);
      }
    }
  }
}

double sub_19534F074(uint64_t a1, const icu::UnicodeString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v52 = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (!sub_19534F6CC(a1, a4, &v39))
  {
    v22 = 0.0;
    if (v39 > 0)
    {
      return v22;
    }

    v37 = &unk_1F0932C70;
    v38 = 0xFFFFFFFF00000000;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    icu::Formattable::Formattable(&v45);
    v36 = 0;
    v23 = sub_19534F7D8(a1, a2, a4, a3, &v36);
    if ((v23 & 0x80000000) != 0)
    {
LABEL_23:
      *(a5 + 8) = 0;
      v22 = 0.0;
      goto LABEL_28;
    }

    v25 = v23;
    while (1)
    {
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = &unk_1F0935D00;
      LOWORD(v41) = 2;
      icu::UnicodeString::unBogus(&v40);
      if ((v41 & 0x8000u) == 0)
      {
        v26 = v41 >> 5;
      }

      else
      {
        v26 = DWORD1(v41);
      }

      icu::UnicodeString::doReplace(&v40, 0, v26, a2, 0, v25);
      v27 = v41 >> 5;
      if ((v41 & 0x8000u) != 0)
      {
        v27 = DWORD1(v41);
      }

      if (v27 >= 1)
      {
        v28 = (*(**(a1 + 96) + 200))(*(a1 + 96));
        v29 = (*(*a6 + 80))(a6, &v40, &v37, v28, a7, a8, &v45, a9, a10);
        v30 = v38;
        if (v29)
        {
          v31 = v38 == v25;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          v34 = (v36 + v25);
          *(a5 + 8) = v34;
          v22 = *(&v45 + 1);
          icu::UnicodeString::~UnicodeString(v34, &v40);
LABEL_28:
          icu::Formattable::~Formattable(v24, &v45);
          v33 = &v37;
LABEL_29:
          icu::ParsePosition::~ParsePosition(v33);
          return v22;
        }

        if (SHIDWORD(v38) > 0)
        {
          v30 = HIDWORD(v38);
        }

        *(a5 + 12) = v30;
      }

      LODWORD(v38) = 0;
      v25 = sub_19534F7D8(a1, a2, a4, v36 + v25, &v36);
      icu::UnicodeString::~UnicodeString(v32, &v40);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }
  }

  if (a6)
  {
    v40 = &unk_1F0932C70;
    *&v41 = 0xFFFFFFFF00000000;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    icu::Formattable::Formattable(&v45);
    v20 = (*(**(a1 + 96) + 200))(*(a1 + 96));
    if ((*(*a6 + 80))(a6, a2, &v40, v20, a7, a8, &v45, a9, a10) && (v21 = v41, v41))
    {
      *(a5 + 8) = v41;
      v22 = *(&v45 + 1);
    }

    else
    {
      v21 = DWORD1(v41);
      *(a5 + 12) = DWORD1(v41);
      v22 = 0.0;
    }

    icu::Formattable::~Formattable(v21, &v45);
    v33 = &v40;
    goto LABEL_29;
  }

  return a9;
}

icu::RuleBasedCollator *sub_19534F430(uint64_t a1, const icu::UnicodeString *a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a3 + 8);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 < 0)
  {
    v6 = *(a3 + 12);
  }

  if (!v6)
  {
    return 0;
  }

  v11 = (*(**(a1 + 96) + 200))(*(a1 + 96));
  v13 = *(a3 + 8);
  if ((v13 & 0x8000u) == 0)
  {
    v14 = (v13 >> 5);
  }

  else
  {
    v14 = *(a3 + 12);
  }

  v15 = *(a2 + 4);
  if (!v11)
  {
    if (v13)
    {
      v18 = v15 & 1;
    }

    else if (v15)
    {
      v18 = 0;
    }

    else
    {
      if ((v13 & 2) != 0)
      {
        v17 = a3 + 10;
      }

      else
      {
        v17 = *(a3 + 24);
      }

      v18 = icu::UnicodeString::doEqualsSubstring(a2, 0, v14, v17, v14 & (v14 >> 31), v14 & ~(v14 >> 31));
    }

    if (v18)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_42:
    if (*(a3 + 8) < 0)
    {
      return *(a3 + 12);
    }

    else
    {
      return (*(a3 + 8) >> 5);
    }
  }

  if ((v15 & 1) == 0)
  {
    v16 = (v13 & 2) != 0 ? a3 + 10 : *(a3 + 24);
    if (icu::UnicodeString::doEqualsSubstring(a2, 0, v14, v16, v14 & (v14 >> 31), v14 & ~(v14 >> 31)))
    {
      goto LABEL_42;
    }
  }

LABEL_24:
  Collator = icu::RuleBasedNumberFormat::getCollator(*(a1 + 96), v12, v14);
  v20 = Collator;
  if (Collator)
  {
    CollationElementIterator = icu::RuleBasedCollator::createCollationElementIterator(Collator, a2);
    v35 = CollationElementIterator;
    v22 = icu::RuleBasedCollator::createCollationElementIterator(v20, a3);
    v34 = v22;
    if (CollationElementIterator && (v23 = v22) != 0)
    {
      v33 = U_ZERO_ERROR;
      v24 = icu::CollationElementIterator::next(CollationElementIterator, &v33);
      v25 = icu::CollationElementIterator::next(v23, &v33);
      if (v25 != -1)
      {
        for (i = v25; i != -1; i = icu::CollationElementIterator::next(v23, &v33))
        {
          if (!HIWORD(v24))
          {
            do
            {
              v27 = icu::CollationElementIterator::next(CollationElementIterator, &v33);
            }

            while (v27 < 0x10000);
            v24 = v27;
          }

          v28 = HIWORD(i);
          if (!v28)
          {
            do
            {
              v29 = icu::CollationElementIterator::next(v23, &v33);
            }

            while (v29 < 0x10000);
            i = v29;
          }

          if (i == -1)
          {
            break;
          }

          v20 = 0;
          if (v24 == -1)
          {
            goto LABEL_48;
          }

          v28 = (i ^ v24) >> 16;
          if (v28)
          {
            goto LABEL_48;
          }

          v24 = icu::CollationElementIterator::next(CollationElementIterator, &v33);
        }
      }

      Offset = icu::CollationElementIterator::getOffset(CollationElementIterator);
      v28 = v24 != -1;
      v20 = (Offset - v28);
    }

    else
    {
      v20 = 0;
      v28 = 7;
      *a4 = 7;
    }

LABEL_48:
    sub_19534FF24(&v34, v28);
    sub_19534FF24(&v35, v31);
  }

  else
  {
    *a4 = 7;
  }

  return v20;
}

BOOL sub_19534F6CC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 12);
  }

  if (!v5)
  {
    return 1;
  }

  if (!(*(**(a1 + 96) + 200))(*(a1 + 96)))
  {
    return 0;
  }

  Collator = icu::RuleBasedNumberFormat::getCollator(*(a1 + 96), v9, v10);
  if (Collator)
  {
    CollationElementIterator = icu::RuleBasedCollator::createCollationElementIterator(Collator, a2);
    v13 = CollationElementIterator;
    v18 = CollationElementIterator;
    if (CollationElementIterator)
    {
      v17 = U_ZERO_ERROR;
      v14 = icu::CollationElementIterator::next(CollationElementIterator, &v17);
      v15 = HIWORD(v14);
      if (!v15)
      {
        do
        {
          v14 = icu::CollationElementIterator::next(v13, &v17);
        }

        while (v14 < 0x10000);
      }

      v13 = v14 == -1;
    }

    else
    {
      v15 = 7;
      *a3 = 7;
    }

    sub_19534FF24(&v18, v15);
  }

  else
  {
    v13 = 0;
    *a3 = 7;
  }

  return v13;
}

uint64_t sub_19534F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    memset(v62, 0, 112);
    icu::Formattable::Formattable(v62);
    v53 = 0;
    v50 = &unk_1F093AD90;
    v52 = a4;
    v51 = 0;
    icu::PluralFormat::parseType(*(a1 + 104), a2, a1, v62, &v50);
    v10 = v52;
    if (v52 < 0)
    {
      goto LABEL_65;
    }

    if (*(a1 + 24) < 0)
    {
      v12 = *(a1 + 28);
      v11 = v12 & (v12 >> 31);
    }

    else
    {
      v11 = 0;
      v12 = *(a1 + 24) >> 5;
    }

    v21 = icu::UnicodeString::indexOf(a1 + 16, "$", 0, -1, v11, v12 - v11);
    v22 = v21;
    v23 = *(a1 + 24);
    if (v21 < 0)
    {
      v25 = 0;
      if ((v23 & 0x8000) != 0)
      {
        v24 = *(a1 + 28);
      }

      else
      {
        v24 = v23 >> 5;
      }
    }

    else if ((v23 & 0x8000) != 0)
    {
      v24 = *(a1 + 28);
      if (v24 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = *(a1 + 28);
      }
    }

    else
    {
      v24 = v23 >> 5;
      if (v24 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v24;
      }
    }

    v32 = icu::UnicodeString::indexOf(a1 + 16, L")$", 0, -1, v25, v24 - v25);
    v34 = v53;
    v61 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    icu::UnicodeString::tempSubString(&v58, (a1 + 16), 0, v22);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    icu::UnicodeString::tempSubString(&v54, (a1 + 16), v32 + 2, 0x7FFFFFFF);
    if (BYTE8(v58))
    {
      v37 = *(a2 + 8);
      if ((v37 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if ((SWORD4(v58) & 0x8000u) == 0)
      {
        v35 = WORD4(v58) >> 5;
      }

      else
      {
        v35 = HIDWORD(v58);
      }

      if ((BYTE8(v58) & 2) != 0)
      {
        v36 = &v58 | 0xA;
      }

      else
      {
        v36 = *(&v59 + 1);
      }

      if (icu::UnicodeString::doCompare(a2, v10 - v35, v35, v36, v35 & (v35 >> 31), v35 & ~(v35 >> 31)))
      {
        goto LABEL_63;
      }
    }

    if ((BYTE8(v54) & 1) == 0)
    {
      if ((SWORD4(v54) & 0x8000u) == 0)
      {
        v38 = WORD4(v54) >> 5;
      }

      else
      {
        v38 = HIDWORD(v54);
      }

      if ((BYTE8(v54) & 2) != 0)
      {
        v39 = &v54 | 0xA;
      }

      else
      {
        v39 = *(&v55 + 1);
      }

      if (icu::UnicodeString::doCompare(a2, v34, v38, v39, v38 & (v38 >> 31), v38 & ~(v38 >> 31)))
      {
        goto LABEL_63;
      }

LABEL_69:
      v40 = 0;
      v43 = WORD4(v58) >> 5;
      if (SWORD4(v58) < 0)
      {
        v43 = HIDWORD(v58);
      }

      v44 = WORD4(v54) >> 5;
      if (SWORD4(v54) < 0)
      {
        v44 = HIDWORD(v54);
      }

      v37 = (v34 - v10 + v43 + v44);
      *a5 = v37;
      v32 = (v10 - v43);
LABEL_64:
      icu::UnicodeString::~UnicodeString(v37, &v54);
      icu::UnicodeString::~UnicodeString(v41, &v58);
      if (!v40)
      {
LABEL_66:
        icu::FieldPosition::~FieldPosition(v9, &v50);
        icu::Formattable::~Formattable(v42, v62);
        return v32;
      }

LABEL_65:
      *a5 = 0;
      v32 = 0xFFFFFFFFLL;
      goto LABEL_66;
    }

    v37 = *(a2 + 8);
    if (v37)
    {
      goto LABEL_69;
    }

LABEL_63:
    v40 = 1;
    goto LABEL_64;
  }

  v14 = (*(**(a1 + 96) + 200))(*(a1 + 96));
  v15 = *(a3 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 < 0)
  {
    v17 = *(a3 + 12);
  }

  *a5 = v17;
  v18 = *(a2 + 8);
  if (v14)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v19 = 0;
    }

    else if ((v18 & 0x8000) != 0)
    {
      v19 = *(a2 + 12);
      v20 = a4;
      if (v19 >= a4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = v18 >> 5;
      v20 = a4;
      if (v18 >> 5 >= a4)
      {
LABEL_30:
        v27 = *(a3 + 8);
        if ((v27 & 0x8000u) == 0)
        {
          v28 = v27 >> 5;
        }

        else
        {
          v28 = *(a3 + 12);
        }

        if ((v27 & 1) == 0 && v28 >= 1)
        {
          v29 = v18;
          v30 = v18 >> 5;
          if (v29 < 0)
          {
            v30 = *(a2 + 12);
          }

          v31 = (v27 & 2) != 0 ? a3 + 10 : *(a3 + 24);
          v32 = icu::UnicodeString::indexOf(a2, v31, 0, v28, v20, v30 - v20);
          if ((v32 & 0x80000000) == 0)
          {
            return v32;
          }
        }

        return sub_19534FD08(a1, a2, a3, a4, a5);
      }
    }

    v20 = v19;
    goto LABEL_30;
  }

  if ((a4 & 0x80000000) != 0)
  {
    v26 = 0;
    goto LABEL_76;
  }

  if ((v18 & 0x8000) == 0)
  {
    v26 = v18 >> 5;
    if (v18 >> 5 >= a4)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v26 = *(a2 + 12);
  if (v26 < a4)
  {
LABEL_76:
    LODWORD(a4) = v26;
  }

LABEL_77:
  v45 = *(a3 + 8);
  if ((v45 & 0x8000u) == 0)
  {
    v46 = v45 >> 5;
  }

  else
  {
    v46 = *(a3 + 12);
  }

  v32 = 0xFFFFFFFFLL;
  if ((v45 & 1) != 0 || v46 < 1)
  {
    return v32;
  }

  v47 = v18;
  v48 = v18 >> 5;
  if (v47 < 0)
  {
    v48 = *(a2 + 12);
  }

  if ((v45 & 2) != 0)
  {
    v49 = a3 + 10;
  }

  else
  {
    v49 = *(a3 + 24);
  }

  return icu::UnicodeString::indexOf(a2, v49, 0, v46, a4, v48 - a4);
}

uint64_t sub_19534FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  v16 = 0;
  for (i = -a4; ; --i)
  {
    v11 = *(a2 + 8);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = *(a2 + 12);
      if (v6 >= v12)
      {
        break;
      }
    }

    else
    {
      v11 = *(a2 + 8);
      if (v6 >= (v11 >> 5))
      {
        break;
      }

      v12 = v11 >> 5;
    }

    icu::UnicodeString::unBogus(&v17);
    v13 = (v18 & 0x8000u) == 0 ? v18 >> 5 : DWORD1(v18);
    icu::UnicodeString::doReplace(&v17, 0, v13, a2, v6, (v12 + i));
    v14 = sub_19534F430(a1, &v17, a3, &v16);
    v11 = v16;
    if (v16 > 0)
    {
      break;
    }

    if (v14)
    {
      goto LABEL_13;
    }

    v6 = (v6 + 1);
  }

  v14 = 0;
  v6 = 0xFFFFFFFFLL;
LABEL_13:
  *a5 = v14;
  icu::UnicodeString::~UnicodeString(v11, &v17);
  return v6;
}

uint64_t sub_19534FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    sub_1953506D0(v4);
  }

  result = *(a1 + 88);
  if (result)
  {

    return sub_1953506D0(result);
  }

  return result;
}

void **sub_19534FEE0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_19534CCF8(v2);
    MEMORY[0x19A8B2600](v3, 0x10F2C40E3085301);
  }

  return a1;
}

icu::CollationElementIterator **sub_19534FF24@<X0>(icu::CollationElementIterator **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    icu::CollationElementIterator::~CollationElementIterator(v3, a2);
    MEMORY[0x19A8B2600]();
  }

  return a1;
}

void sub_19534FF68(icu::UObject *this)
{
  *this = &unk_1F093E560;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;

  icu::UObject::~UObject(this);
}

void sub_19534FFEC(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195350028(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195350064(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953500A0(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953500DC(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195350118(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195350154(icu::UObject *a1)
{
  sub_19534FF68(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19535018C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = *(a6 + 8);
  if (*(a6 + 8) < 0)
  {
    if (!*(a6 + 12))
    {
      return 0;
    }
  }

  else if (v7 < 0x20)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    v9 = (a6 + 10);
  }

  else
  {
    v9 = *(a6 + 24);
  }

  v10 = *v9;
  switch(v10)
  {
    case '>':
      if ((*a2 + 4) < 3)
      {
        operator new();
      }

      if (*a2 == -1)
      {
        operator new();
      }

      if (!*(a4 + 160))
      {
        operator new();
      }

      break;
    case '=':
      operator new();
    case '<':
      if ((*a2 + 4) < 3)
      {
        operator new();
      }

      if (*a2 != -1)
      {
        if (*(a4 + 160))
        {
          operator new();
        }

        operator new();
      }

      break;
  }

  result = 0;
  *a7 = 9;
  return result;
}

uint64_t sub_195350410(uint64_t a1, int a2, uint64_t a3, UChar **a4, UErrorCode *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F093E560;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v9 = (a1 + 16);
  *(a1 + 24) = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  icu::UnicodeString::UnicodeString(&v20, a4);
  v10 = *(a4 + 4);
  if (a4[1] < 0)
  {
    v12 = *(a4 + 3);
    if (v12 <= 1)
    {
      goto LABEL_40;
    }

    v13 = a4[3];
    if ((v10 & 2) != 0)
    {
      v13 = a4 + 5;
    }

    if (*v13 != v13[v12 - 1])
    {
LABEL_40:
      if (*(a4 + 3))
      {
        goto LABEL_33;
      }

      goto LABEL_16;
    }

LABEL_12:
    v14 = v10;
    v15 = v10 >> 5;
    if (v14 < 0)
    {
      v15 = *(a4 + 3);
    }

    icu::UnicodeString::doReplace(&v20, v15 - 1, 1, 0, 0, 0);
    icu::UnicodeString::doReplace(&v20, 0, 1, 0, 0, 0);
    goto LABEL_16;
  }

  if (v10 > 0x3F)
  {
    v11 = a4 + 5;
    if ((v10 & 2) == 0)
    {
      v11 = a4[3];
    }

    if (*v11 == *(v11 + ((*(a4 + 4) >> 4) & 0xFFE) - 2))
    {
      goto LABEL_12;
    }
  }

  if (v10 >> 5)
  {
    goto LABEL_33;
  }

LABEL_16:
  v16 = WORD4(v20);
  if (SWORD4(v20) < 0)
  {
    if (!HIDWORD(v20))
    {
      goto LABEL_18;
    }

LABEL_20:
    v17 = (&v20 | 0xA);
    if ((BYTE8(v20) & 2) == 0)
    {
      v17 = *(&v21 + 1);
    }

    v18 = *v17;
    if (v18 == 37)
    {
      *v9 = icu::RuleBasedNumberFormat::findRuleSet(*(a3 + 136), &v20, a5);
      goto LABEL_35;
    }

    LODWORD(v16) = WORD4(v20) >> 5;
    if ((SWORD4(v20) & 0x8000u) == 0)
    {
      v16 = v16;
    }

    else
    {
      v16 = HIDWORD(v20);
    }

    if (v16)
    {
      switch(v18)
      {
        case '#':
          goto LABEL_41;
        case '>':
          *(a1 + 16) = a3;
          *(a1 + 24) = 0;
          goto LABEL_35;
        case '0':
LABEL_41:
          if (icu::RuleBasedNumberFormat::getDecimalFormatSymbols(*(a3 + 136)))
          {
            operator new();
          }

          v16 = 2;
          goto LABEL_34;
      }
    }

LABEL_33:
    v16 = 9;
LABEL_34:
    *a5 = v16;
    goto LABEL_35;
  }

  if (WORD4(v20) > 0x1Fu)
  {
    goto LABEL_20;
  }

LABEL_18:
  *v9 = a3;
LABEL_35:
  icu::UnicodeString::~UnicodeString(v16, &v20);
  return a1;
}

uint64_t sub_1953506D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 336))();
  }

  return result;
}

uint64_t sub_195350714(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (*(a1 + 8) != *(a2 + 8) || (*(a1 + 16) == 0) == (*(a2 + 16) != 0))
    {
      return 0;
    }

    else
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(*v5 + 24);

        return v6();
      }

      else
      {
        return *(a2 + 24) == 0;
      }
    }
  }

  return result;
}

void *sub_1953507F8(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a2 + 8) & 0x1E;
  }

  *(a2 + 8) = v4;
  LOWORD(v11) = (*(*a1 + 104))(a1);
  icu::UnicodeString::doAppend(a2, &v11, 0, 1);
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v14 = 0u;
  v11 = &unk_1F0935D00;
  LOWORD(v12) = 2;
  v5 = a1[2];
  if (v5)
  {
    icu::UnicodeString::copyFrom(&v11, (v5 + 8), 0);
  }

  else
  {
    v6 = a1[3];
    if (v6)
    {
      (*(*v6 + 552))(v6, &v11);
    }
  }

  if ((v12 & 0x8000u) == 0)
  {
    v7 = v12 >> 5;
  }

  else
  {
    v7 = DWORD1(v12);
  }

  icu::UnicodeString::doAppend(a2, &v11, 0, v7);
  v10 = (*(*a1 + 104))(a1);
  icu::UnicodeString::doAppend(a2, &v10, 0, 1);
  return icu::UnicodeString::~UnicodeString(v8, &v11);
}

void sub_1953509A4(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, int a4, int a5, UErrorCode *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = (*(*a1 + 64))(a1, a2);
    v14 = (*(a1 + 8) + a4);

    sub_19534B86C(v10, v12, a3, v14, a5, a6, v13);
  }

  else
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      if (a2 > 0x1FFFFFFFFFFFFFLL)
      {
        v17 = (*(*a1 + 64))(a1);
        v23 = 0u;
        v26 = 0;
        v25 = 0u;
        v24 = 0u;
        v22 = &unk_1F0935D00;
        LOWORD(v23) = 2;
        v15 = *(a1 + 24);
        icu::Formattable::Formattable(v21, v17);
      }

      else
      {
        v23 = 0u;
        v26 = 0;
        v25 = 0u;
        v24 = 0u;
        v22 = &unk_1F0935D00;
        LOWORD(v23) = 2;
        v16 = (*(*a1 + 72))(a1, a2);
        icu::Formattable::Formattable(v21, v16);
      }

      icu::Format::format(v15, v21, &v22, a6);
      icu::Formattable::~Formattable(v18, v21);
      if ((v23 & 0x8000u) == 0)
      {
        v19 = v23 >> 5;
      }

      else
      {
        v19 = DWORD1(v23);
      }

      icu::UnicodeString::doReplace(a3, (*(a1 + 8) + a4), 0, &v22, 0, v19);
      icu::UnicodeString::~UnicodeString(v20, &v22);
    }
  }
}

void sub_195350C08(uint64_t a1, icu::UnicodeString *a2, int a3, uint64_t a4, UErrorCode *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = (*(*a1 + 72))(a1);
  if (uprv_isInfinite(v10))
  {
    v11 = *(a1 + 16);
    v12.n128_f64[0] = uprv_getInfinity();
    v13 = sub_19534BA80(v11, v12);
    v14 = (*(a1 + 8) + a3);

    sub_19534E5B4(v13, a2, v14, a4, a5, v10);
    return;
  }

  v15.n128_f64[0] = uprv_floor(v10);
  v16 = *(a1 + 16);
  if (v10 == v15.n128_f64[0])
  {
    if (v16)
    {
      v17 = sub_19534BD80(v10);
      v19 = (*(a1 + 8) + a3);

      sub_19534B86C(v16, v17, a2, v19, a4, a5, v18);
      return;
    }

    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_14:
    v22 = *(a1 + 24);
    if (v22)
    {
      v26 = 0u;
      v27 = 0u;
      v29 = 0;
      v28 = 0u;
      v25 = &unk_1F0935D00;
      LOWORD(v26) = 2;
      icu::NumberFormat::format(v22, v10, &v25);
      if ((v26 & 0x8000u) == 0)
      {
        v23 = v26 >> 5;
      }

      else
      {
        v23 = DWORD1(v26);
      }

      icu::UnicodeString::doReplace(a2, (*(a1 + 8) + a3), 0, &v25, 0, v23);
      icu::UnicodeString::~UnicodeString(v24, &v25);
    }

    return;
  }

  v20 = (*(a1 + 8) + a3);
  v21 = *(a1 + 16);
  v15.n128_f64[0] = v10;

  sub_19534B9EC(v21, a2, v20, a4, a5, v15);
}

uint64_t sub_195350E8C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, icu::Formattable *a7, double a8, double a9)
{
  (*(*a1 + 96))(a1, a9);
  v18 = a1[2];
  if (v18)
  {
    sub_19534BDE4(v18, a2, a3, a5, a6, a7, 0, v17);
    if (a4)
    {
      if (!*(a1[2] + 160) && *(a3 + 8) == 0)
      {
        v28 = 0;
        Instance = icu::NumberFormat::createInstance(&v28, v19);
        v22 = Instance;
        if (v28 <= 0)
        {
          (*(*Instance + 160))(Instance, a2, a7, a3);
        }

        else if (!Instance)
        {
          goto LABEL_15;
        }

        (*(*v22 + 8))(v22);
      }
    }
  }

  else
  {
    v23 = a1[3];
    if (v23)
    {
      (*(*v23 + 160))(v23, a2, a7, a3);
    }
  }

LABEL_15:
  if (*(a3 + 8))
  {
    v27 = U_ZERO_ERROR;
    Double = icu::Formattable::getDouble(a7, &v27);
    v25 = (*(*a1 + 88))(a1, Double, a8);
    icu::Formattable::setDouble(a7, v25);
    return 1;
  }

  else
  {
    icu::Formattable::setLong(a7, 0);
    return 0;
  }
}

uint64_t sub_1953510A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  *sub_195350410(a1, a2, a3, a4, a5) = &unk_1F093E5F0;
  v8 = *(a4 + 8);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a4 + 12);
  }

  if (!icu::UnicodeString::doCompare(a4, 0, v11, L"==", 0, 2))
  {
    *a5 = U_PARSE_ERROR;
  }

  return a1;
}

uint64_t sub_195351168(uint64_t a1, uint64_t a2)
{
  result = sub_195350714(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t sub_1953511A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, UChar **a6, UErrorCode *a7)
{
  *sub_195350410(a1, a2, a5, a6, a7) = &unk_1F093E680;
  v12 = sub_19534E1BC(a3);
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  if (!v12)
  {
    *a7 = U_PARSE_ERROR;
  }

  v13 = *(a6 + 4);
  v14 = v13;
  v15 = v13 >> 5;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a6 + 3);
  }

  if (!icu::UnicodeString::doCompare(a6, 0, v16, ">", 0, 3))
  {
    *(a1 + 40) = a4;
  }

  return a1;
}

uint64_t sub_195351288(uint64_t a1, uint64_t a2)
{
  result = sub_195350714(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

void sub_1953512DC(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, int a4, uint64_t a5, UErrorCode *a6)
{
  if (*(a1 + 40))
  {
    v11 = (*(*a1 + 64))(a1, a2);
    v12 = *(a1 + 40);
    v13 = (*(a1 + 8) + a4);

    sub_19534E258(v12, v11, a3, v13, a5, a6);
  }

  else
  {

    sub_1953509A4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1953513B0(uint64_t a1, icu::UnicodeString *a2, int a3, uint64_t a4, UErrorCode *a5)
{
  if (*(a1 + 40))
  {
    (*(*a1 + 72))(a1);
    v11 = *(a1 + 40);
    v12 = (*(a1 + 8) + a3);

    sub_19534E5B4(v11, a2, v12, a4, a5, v10);
  }

  else
  {

    sub_195350C08(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_195351480(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, icu::Formattable *a7, double a8, double a9)
{
  v13 = a1[5];
  if (v13)
  {
    sub_19534E9EC(v13, a2, a3, 0, a5, a6, a7, 1, a9);
    if (*(a3 + 8))
    {
      v17 = U_ZERO_ERROR;
      Double = icu::Formattable::getDouble(a7, &v17);
      v15 = (*(*a1 + 88))(a1, Double, a8);
      icu::Formattable::setDouble(a7, v15);
    }

    return 1;
  }

  else
  {

    return sub_195350E8C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void *sub_19535156C(void *a1, uint64_t a2)
{
  if (a1[5])
  {
    if (*(a2 + 8))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(a2 + 8) & 0x1E;
    }

    *(a2 + 8) = v4;
    v6 = (*(*a1 + 104))(a1);
    icu::UnicodeString::doAppend(a2, &v6, 0, 1);
    v7 = (*(*a1 + 104))(a1);
    icu::UnicodeString::doAppend(a2, &v7, 0, 1);
    v8 = (*(*a1 + 104))(a1);
    return icu::UnicodeString::doAppend(a2, &v8, 0, 1);
  }

  else
  {

    return sub_1953507F8(a1, a2);
  }
}

uint64_t sub_1953516AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v8 = sub_195350410(a1, a2, a3, a4, a5);
  *v8 = &unk_1F093E710;
  *(v8 + 32) = 256;
  v9 = *(a4 + 8);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a4 + 12);
  }

  if (icu::UnicodeString::doCompare(a4, 0, v12, ">", 0, 2) && ((v13 = *(a4 + 8), v14 = v13, v15 = v13 >> 5, v14 >= 0) ? (v16 = v15) : (v16 = *(a4 + 12)), icu::UnicodeString::doCompare(a4, 0, v16, ">", 0, 3) && *(a1 + 16) != a3))
  {
    *(*(a1 + 16) + 160) = 1;
  }

  else
  {
    *(a1 + 32) = 1;
    v17 = *(a4 + 8);
    v18 = v17;
    v19 = v17 >> 5;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = *(a4 + 12);
    }

    if (!icu::UnicodeString::doCompare(a4, 0, v20, ">", 0, 3))
    {
      *(a1 + 33) = 0;
    }
  }

  return a1;
}

void sub_195351828(uint64_t a1, icu::UnicodeString *a2, int a3, uint64_t a4, UErrorCode *a5, double a6)
{
  v7 = a4;
  if (*(a1 + 32))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v20);
    icu::number::impl::DecimalQuantity::setToDouble(v20, a6);
    icu::number::impl::DecimalQuantity::roundToMagnitude(v20, 4294967276, 4, a5);
    LowerDisplayMagnitude = icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(v20);
    if (LowerDisplayMagnitude < 0)
    {
      v14 = LowerDisplayMagnitude;
      v15 = 1;
      do
      {
        if ((v15 & 1) == 0)
        {
          if (*(a1 + 33))
          {
            v16 = *(a1 + 8);
            v22 = 32;
            icu::UnicodeString::doReplace(a2, (v16 + a3), 0, &v22, 0, 1);
          }
        }

        Digit = icu::number::impl::DecimalQuantity::getDigit(v20, v14);
        sub_19534B86C(*(a1 + 16), Digit, a2, (*(a1 + 8) + a3), v7, a5, v18);
        v15 = 0;
      }

      while (!__CFADD__(v14++, 1));
    }

    else
    {
      sub_19534B86C(*(a1 + 16), 0, a2, (*(a1 + 8) + a3), v7, a5, v13);
    }

    icu::number::impl::DecimalQuantity::~DecimalQuantity(v20);
  }

  else
  {

    sub_195350C08(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1953519B8(uint64_t *a1, UChar **a2, uint64_t a3, int a4, uint64_t a5, int a6, icu::Formattable *a7, double a8)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    icu::UnicodeString::UnicodeString(&v36, a2);
    v33 = &unk_1F0932C70;
    v34 = 0xFFFFFFFF00000001;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v31);
    v15 = 0;
    v16 = WORD4(v36) >> 5;
    if (SWORD4(v36) < 0)
    {
      v16 = HIDWORD(v36);
    }

    if (v16 >= 1 && v34)
    {
      v17 = 0;
      v15 = 0;
      while (1)
      {
        LODWORD(v34) = 0;
        memset(v35, 0, sizeof(v35));
        icu::Formattable::Formattable(v35);
        sub_19534BDE4(a1[2], &v36, &v33, a5, a6, v35, 0, 10.0);
        v30 = U_ZERO_ERROR;
        Long = icu::Formattable::getLong(v35, &v30);
        if (!a4)
        {
          goto LABEL_11;
        }

        if (v34)
        {
          goto LABEL_12;
        }

        if (v17)
        {
          break;
        }

        v30 = U_ZERO_ERROR;
        Instance = icu::NumberFormat::createInstance(&v30, v18);
        v17 = Instance;
        if (v30 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          if (Instance)
          {
            break;
          }
        }

        else if (Instance)
        {
          (*(*Instance + 8))(Instance);
          v17 = 0;
        }

LABEL_11:
        v20 = v34;
        if (v34)
        {
LABEL_12:
          icu::number::impl::DecimalQuantity::appendDigit(v31, Long, 0, 1);
          ++v15;
          v21 = v34;
          *(a3 + 8) += v34;
          icu::UnicodeString::doReplace(&v36, 0, v21, 0, 0, 0);
          while (1)
          {
            v20 = WORD4(v36);
            if (SWORD4(v36) < 0)
            {
              if (*(&v36 + 1) <= 0)
              {
                break;
              }
            }

            else if (WORD4(v36) < 0x20u)
            {
              break;
            }

            v22 = ((BYTE8(v36) & 2) != 0 ? &v36 | 0xA : *(&v37 + 1));
            v20 = *v22;
            if (v20 != 32)
            {
              break;
            }

            icu::UnicodeString::doReplace(&v36, 0, 1, 0, 0, 0);
            ++*(a3 + 8);
          }
        }

        icu::Formattable::~Formattable(v20, v35);
        v23 = WORD4(v36) >> 5;
        if (SWORD4(v36) < 0)
        {
          v23 = HIDWORD(v36);
        }

        if (v23 < 1 || v34 == 0)
        {
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          goto LABEL_40;
        }
      }

      (*(*v17 + 160))(v17, &v36, v35, &v33);
      Long = icu::Formattable::getLong(v35, &v30);
      goto LABEL_11;
    }

LABEL_40:
    icu::number::impl::DecimalQuantity::adjustMagnitude(v31, -v15);
    v27 = icu::number::impl::DecimalQuantity::toDouble(v31);
    v28 = (*(*a1 + 88))(a1, v27, a8);
    icu::Formattable::setDouble(a7, v28);
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v31);
    icu::ParsePosition::~ParsePosition(&v33);
    icu::UnicodeString::~UnicodeString(v29, &v36);
    return 1;
  }

  else
  {

    return sub_195350E8C(a1, a2, a3, a4, a5, a6, a7, a8, 0.0);
  }
}

uint64_t sub_195351DDC(uint64_t a1, uint64_t a2)
{
  result = sub_195350714(a1, a2);
  if (result)
  {
    return *(a2 + 32) == *(a1 + 32);
  }

  return result;
}

void sub_195351E30(uint64_t a1, uint64_t a2, unsigned int a3, int a4, UErrorCode *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = (*(*a1 + 72))(a1);
  v11 = sub_19534BD80(v10);
  v13 = v11;
  v14 = *(a1 + 16);
  if (*(a1 + 48))
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(a2 + 8);
    v17 = v16;
    v18 = v16 >> 5;
    v19 = *(a2 + 12);
    if (v17 >= 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = *(a2 + 12);
    }

    v21 = 10 * v11;
    if (*(a1 + 32) > (10 * v11))
    {
      do
      {
        v22 = *(a1 + 8);
        v30[0] = 32;
        icu::UnicodeString::doReplace(a2, v22 + a3, 0, v30, 0, 1);
        sub_19534B86C(v14, 0, a2, *(a1 + 8) + a3, a4, a5, v23);
        v21 *= 10;
      }

      while (*(a1 + 32) > v21);
      v17 = *(a2 + 8);
      v19 = *(a2 + 12);
      v18 = v17 >> 5;
    }

    if ((v17 & 0x8000u) == 0)
    {
      v24 = v18;
    }

    else
    {
      v24 = v19;
    }

    a3 = a3 - v20 + v24;
  }

  if (v10 != v13 || v14 == 0)
  {
    if (v14)
    {
      v12.n128_f64[0] = v10;
      sub_19534B9EC(v14, a2, *(a1 + 8) + a3, a4, a5, v12);
    }

    else
    {
      v32 = 0u;
      v35 = 0;
      v34 = 0u;
      v33 = 0u;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      v26 = *(a1 + 24);
      icu::Formattable::Formattable(v30, v10);
      icu::Format::format(v26, v30, &v31, a5);
      icu::Formattable::~Formattable(v27, v30);
      if ((v32 & 0x8000u) == 0)
      {
        v28 = v32 >> 5;
      }

      else
      {
        v28 = DWORD1(v32);
      }

      icu::UnicodeString::doReplace(a2, *(a1 + 8) + a3, 0, &v31, 0, v28);
      icu::UnicodeString::~UnicodeString(v29, &v31);
    }
  }

  else
  {
    v12.n128_f64[0] = v13;
    sub_19534B86C(v14, v13, a2, *(a1 + 8) + a3, a4, a5, v12);
  }
}

uint64_t sub_1953520B4(uint64_t a1, UChar **a2, uint64_t a3, double a4, double a5, uint64_t a6, uint64_t a7, int a8, icu::Formattable *a9)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = U_ZERO_ERROR;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  icu::UnicodeString::UnicodeString(&v35, a2);
  if (*(a1 + 48))
  {
    v31 = &unk_1F0932C70;
    v32 = 0xFFFFFFFF00000001;
    memset(v34, 0, sizeof(v34));
    icu::Formattable::Formattable(v34);
    v17 = 0;
    v18 = WORD4(v35) >> 5;
    if (SWORD4(v35) < 0)
    {
      v18 = HIDWORD(v35);
    }

    if (v18 >= 1)
    {
      v17 = 0;
      do
      {
        LODWORD(v32) = 0;
        sub_19534BDE4(*(a1 + 16), &v35, &v31, a7, a8, v34, 0, 1.0);
        v19 = v32;
        if (!v32)
        {
          break;
        }

        *(a3 + 8) += v32;
        if (v19 == 0x7FFFFFFF)
        {
          v20 = (BYTE8(v35) & 1) != 0 ? 2 : BYTE8(v35) & 0x1E;
          WORD4(v35) = v20;
        }

        else
        {
          icu::UnicodeString::doReplace(&v35, 0, v19, 0, 0, 0);
        }

        ++v17;
        while (1)
        {
          if (SWORD4(v35) < 0)
          {
            if (*(&v35 + 1) <= 0)
            {
              break;
            }
          }

          else if (WORD4(v35) < 0x20u)
          {
            break;
          }

          v21 = *(&v36 + 1);
          if ((BYTE8(v35) & 2) != 0)
          {
            v21 = (&v35 | 0xA);
          }

          if (*v21 != 32)
          {
            break;
          }

          icu::UnicodeString::doReplace(&v35, 0, 1, 0, 0, 0);
          ++*(a3 + 8);
        }

        v22 = WORD4(v35) >> 5;
        if (SWORD4(v35) < 0)
        {
          v22 = HIDWORD(v35);
        }
      }

      while (v22 >= 1 && v32 != 0);
    }

    icu::UnicodeString::operator=(&v35, a2);
    v24 = *(a3 + 8);
    if (v24 == 0x7FFFFFFF)
    {
      if (BYTE8(v35))
      {
        v25 = 2;
      }

      else
      {
        v25 = BYTE8(v35) & 0x1E;
      }

      WORD4(v35) = v25;
    }

    else
    {
      icu::UnicodeString::doReplace(&v35, 0, v24, 0, 0, 0);
    }

    *(a3 + 8) = 0;
    icu::Formattable::~Formattable(v25, v34);
    icu::ParsePosition::~ParsePosition(&v31);
    if (*(a1 + 48))
    {
      a4 = 1.0;
    }
  }

  else
  {
    v17 = 0;
  }

  sub_195350E8C(a1, &v35, a3, 0, a7, a8, a9, a4, a5);
  v26 = *(a1 + 48);
  if (*(a1 + 48))
  {
    Long = icu::Formattable::getLong(a9, &v33);
    v28 = 1;
    if (Long >= 1)
    {
      do
      {
        v28 *= 10;
      }

      while (v28 <= Long);
    }

    if (v17 >= 1)
    {
      v29 = v17 + 1;
      do
      {
        v28 *= 10;
        --v29;
      }

      while (v29 > 1);
    }

    icu::Formattable::setDouble(a9, Long / v28);
  }

  icu::UnicodeString::~UnicodeString(v26, &v35);
  return 1;
}

uint64_t sub_195352418(uint64_t a1, uint64_t a2)
{
  result = sub_195350714(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t sub_19535247C(uint64_t a1, uint64_t a2, unsigned __int16 a3, _DWORD *a4)
{
  result = sub_19534C43C(a2, a3);
  *(a1 + 32) = result;
  if (!result)
  {
    *a4 = 9;
  }

  return result;
}

double sub_1953524CC(void *a1, double a2)
{
  if (!a1[2] && (sub_19534E1CC(a1[5]) & 1) == 0 && (*(**(a1[5] + 96) + 272))(*(a1[5] + 96)) != 1)
  {
    return a2 / a1[4];
  }

  v4 = a2 / a1[4];

  return uprv_floor(v4);
}

uint64_t sub_1953525A4(uint64_t a1, uint64_t a2, unsigned __int16 a3, _DWORD *a4)
{
  result = sub_19534C43C(a2, a3);
  *(a1 + 32) = result;
  if (!result)
  {
    *a4 = 9;
  }

  return result;
}

uint64_t sub_1953526D0(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    return a2;
  }

  else
  {
    return -a2;
  }
}

uint64_t sub_195352730(uint64_t a1, int a2, uint64_t a3, uint64_t a4, UErrorCode *a5, double a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = *(a4 + 8);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 < 0)
  {
    v14 = *(a4 + 12);
  }

  if (icu::UnicodeString::doEqualsSubstring(a4, v14 - 2, 2, "<", 0, 2))
  {
    memset(v23, 0, sizeof(v23));
    v15 = *(a4 + 8);
    v16 = v15;
    v17 = v15 >> 5;
    if (v16 < 0)
    {
      v17 = *(a4 + 12);
    }

    icu::UnicodeString::UnicodeString(v23, a4, 0, v17 - 1);
  }

  else
  {
    icu::UnicodeString::UnicodeString(v23, a4);
  }

  sub_195350410(a1, a2, a3, v23, a5);
  icu::UnicodeString::~UnicodeString(v18, v23);
  *a1 = &unk_1F093E9F8;
  *(a1 + 32) = a6;
  *(a1 + 40) = sub_19534BD80(a6);
  v19 = *(a4 + 8);
  v20 = v19;
  v21 = v19 >> 5;
  if (v20 < 0)
  {
    v21 = *(a4 + 12);
  }

  *(a1 + 48) = icu::UnicodeString::doEqualsSubstring(a4, v21 - 2, 2, "<", 0, 2);
  return a1;
}

uint64_t sub_1953528D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, UChar **a5, UErrorCode *a6)
{
  *sub_195350410(a1, a2, a4, a5, a6) = &unk_1F093E7D0;
  v9 = sub_19534E1BC(a3);
  *(a1 + 32) = v9;
  *(a1 + 40) = a3;
  if (!v9)
  {
    *a6 = U_PARSE_ERROR;
  }

  return a1;
}

void sub_195352960()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = "A";
  v0 = icu::UnicodeString::UnicodeString(v2, 1, &v1, -1);
  icu::Transliterator::_registerFactory(v0, sub_195352D04, "nfc");
}

void *sub_195352D04(const icu::UnicodeString *a1, char *__s)
{
  v3 = __s[strlen(__s) + 1];
  v5 = 0;
  icu::Normalizer2::getInstance(0, __s, v3, &v5);
  result = 0;
  if (v5 <= 0)
  {
    operator new();
  }

  return result;
}

void sub_195352DB0(icu::Transliterator *a1@<X0>, void *a2@<X8>)
{
  icu::Transliterator::~Transliterator(a1, a2);

  JUMPOUT(0x19A8B2600);
}

void *sub_195352E4C(void *result, uint64_t a2, _DWORD *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3[2];
  v5 = a3[3];
  if (v4 >= v5)
  {
    return result;
  }

  v9 = result;
  v22 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v30 = 0u;
  v27 = 0;
  v28 = &unk_1F0935D00;
  LOWORD(v29) = 2;
  v24 = 0u;
  v26 = 0u;
  v25 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  v10 = (*(*a2 + 80))(a2, v4);
  LODWORD(v11) = v4;
  while (1)
  {
    v12 = (v29 & 1) != 0 ? 2 : v29 & 0x1E;
    LOWORD(v29) = v12;
    do
    {
      icu::UnicodeString::append(&v28, v10);
      if (v10 < 0x10000)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v11 = (v13 + v11);
      if (v11 >= v5)
      {
        break;
      }

      v14 = v9[11];
      v10 = (*(*a2 + 80))(a2, v11);
    }

    while (!(*(*v14 + 120))(v14, v10));
    if (a4 && v11 == v5 && !(*(*v9[11] + 128))(v9[11], v10))
    {
      break;
    }

    (*(*v9[11] + 24))(v9[11], &v28, &v23, &v22);
    if (v22 > 0)
    {
      goto LABEL_37;
    }

    if ((v29 & 1) == 0)
    {
      if ((v29 & 0x8000u) == 0)
      {
        v15 = v29 >> 5;
      }

      else
      {
        v15 = DWORD1(v29);
      }

      if ((v24 & 0x8000u) == 0)
      {
        v16 = v24 >> 5;
      }

      else
      {
        v16 = DWORD1(v24);
      }

      if ((v24 & 1) == 0 && v15 == v16)
      {
        v17 = (v24 & 2) != 0 ? (&v24 + 2) : v25;
        if (icu::UnicodeString::doEquals(&v28, v17, v15))
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      (*(*a2 + 32))(a2, v4, v11, &v23);
      v18 = v24 >> 5;
      if ((v24 & 0x8000u) != 0)
      {
        v18 = DWORD1(v24);
      }

      v19 = v4 + v5 - v11;
      v11 = (v18 + v4);
      v5 = v19 + v18;
      goto LABEL_34;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v4 = v11;
    if (v11 >= v5)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v11) = v4;
LABEL_37:
  v20 = (v5 - a3[3] + a3[1]);
  a3[1] = v20;
  a3[2] = v11;
  a3[3] = v5;
  icu::UnicodeString::~UnicodeString(v20, &v23);
  return icu::UnicodeString::~UnicodeString(v21, &v28);
}

icu::Transliterator *sub_1953531B8(icu::Transliterator *a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v4 = "A";
  icu::UnicodeString::UnicodeString(v5, 1, &v4, -1);
  icu::Transliterator::Transliterator(a1, v5, 0);
  icu::UnicodeString::~UnicodeString(v2, v5);
  *a1 = &unk_1F093EB50;
  return a1;
}

void sub_195353278(icu::Transliterator *a1@<X0>, void *a2@<X8>)
{
  icu::Transliterator::~Transliterator(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::number::impl::AffixUtils::estimateLength(icu::number::impl::AffixUtils *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v3 = *(this + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(this + 3);
  }

  if (v5 < 1)
  {
    return 0;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v10 = 0;
  do
  {
    v11 = icu::UnicodeString::char32At(this, v10);
    v12 = v11 != 39;
    if (v11 == 39)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    if (v11 == 39)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (v8 != 2)
    {
      v12 = 1;
      v13 = v14;
    }

    v15 = v11 != 39;
    v16 = v11 == 39;
    v17 = 2 * v15;
    if (v8)
    {
      v15 = 1;
      v16 = v17;
    }

    if (v8 > 1)
    {
      v8 = v13;
    }

    else
    {
      v12 = v15;
      v8 = v16;
    }

    v9 = (v9 + v12);
    if (v11 < 0x10000)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v10 += v18;
    v19 = *(this + 4);
    v20 = v19;
    v21 = v19 >> 5;
    if (v20 < 0)
    {
      v21 = *(this + 3);
    }
  }

  while (v10 < v21);
  if ((v8 - 1) <= 1)
  {
    *a2 = 1;
  }

  return v9;
}

uint64_t icu::number::impl::AffixUtils::escape@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v3 = *(this + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(this + 12);
  }

  if (v5 >= 1)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = icu::UnicodeString::char32At(v6, v8);
      v10 = v9;
      if (v9 > 44)
      {
        if (v9 != 45 && v9 != 164 && v9 != 8240)
        {
          goto LABEL_16;
        }
      }

      else if (v9 != 37)
      {
        if (v9 == 39)
        {
          this = icu::UnicodeString::doAppend(a2, L"''", 0, 0xFFFFFFFFLL);
          goto LABEL_19;
        }

        if (v9 != 43)
        {
LABEL_16:
          if (v7 == 2)
          {
            v16 = 39;
            icu::UnicodeString::doAppend(a2, &v16, 0, 1);
            this = icu::UnicodeString::append(a2, v10);
            v7 = 0;
            goto LABEL_19;
          }

          goto LABEL_14;
        }
      }

      if (!v7)
      {
        v15 = 39;
        icu::UnicodeString::doAppend(a2, &v15, 0, 1);
        this = icu::UnicodeString::append(a2, v10);
        v7 = 2;
        goto LABEL_19;
      }

LABEL_14:
      this = icu::UnicodeString::append(a2, v9);
LABEL_19:
      if (v10 < 0x10000)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      v8 += v11;
      v12 = *(v6 + 8);
      v13 = v12;
      v14 = v12 >> 5;
      if (v13 < 0)
      {
        v14 = *(v6 + 12);
      }

      if (v8 >= v14)
      {
        if (v7 == 2)
        {
          v17 = 39;
          return icu::UnicodeString::doAppend(a2, &v17, 0, 1);
        }

        return this;
      }
    }
  }

  return this;
}