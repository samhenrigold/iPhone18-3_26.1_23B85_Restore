void icu::CollationElementIterator::~CollationElementIterator(icu::CollationElementIterator *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UnicodeString::~UnicodeString(a2, (this + 40));

  icu::UObject::~UObject(this);
}

{
  icu::CollationElementIterator::~CollationElementIterator(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::CollationElementIterator::getOffset(icu::CollationElementIterator *this)
{
  if ((*(this + 28) & 0x80000000) == 0)
  {
    return (*(**(this + 1) + 40))();
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return (*(**(this + 1) + 40))();
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return (*(**(this + 1) + 40))();
  }

  result = 0;
  if (*(this + 6))
  {
    v5 = *(*(this + 1) + 24) + 1;
  }

  else
  {
    v5 = *(*(this + 1) + 24);
  }

  if ((v5 & 0x80000000) == 0 && v4 > v5)
  {
    return *(*(v3 + 24) + 4 * v5);
  }

  return result;
}

uint64_t icu::CollationElementIterator::next(icu::CollationElementIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 28) < 2)
  {
    if (*(this + 28) >= 2u)
    {
      *a2 = U_INVALID_STATE_ERROR;
      return 0xFFFFFFFFLL;
    }

    *(this + 28) = 2;
  }

  else
  {
    result = *(this + 6);
    if (result)
    {
      *(this + 6) = 0;
      return result;
    }
  }

  v4 = *(this + 1);
  if (*(v4 + 92) == *(v4 + 6))
  {
    *(v4 + 6) = 0;
    *(v4 + 92) = 0;
  }

  v5 = sub_1952C5F10(v4, a2);
  if (v5 == 0x101000100)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v5 >> 8) & 0xFF00 | (HIDWORD(v5) << 16);
  result = HIDWORD(v5) & 0xFFFF0000 | WORD1(v5) & 0xFF00 | BYTE1(v5);
  v8 = v7 & 0xFFFFFFC0 | v6 & 0x3F;
  if (v8)
  {
    *(this + 6) = v8 | 0xC0;
  }

  return result;
}

unint64_t sub_1952C5F10(icu::CollationIterator::CEBuffer *this, UErrorCode *a2)
{
  v4 = (this + 24);
  v3 = *(this + 6);
  v5 = *(this + 92);
  if (v5 < v3)
  {
    *(this + 92) = v5 + 1;
    return *(*(this + 4) + 8 * v5);
  }

  if (v3 >= 40)
  {
    if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a2))
    {
      return 0x101000100;
    }

    v3 = *v4;
  }

  *(this + 6) = v3 + 1;
  v13 = 0;
  v8 = (*(*this + 64))(this, &v13, a2);
  v9 = v8;
  if (v8 <= 0xBFu)
  {
LABEL_7:
    v10 = *(this + 92);
    *(this + 92) = v10 + 1;
    result = (v8 << 16) & 0xFF000000 | (((v8 & 0xFFFF0000) >> 16) << 48) | (v9 << 8);
    *(*(this + 4) + 8 * v10) = result;
    return result;
  }

  if (v8 == 192)
  {
    if (v13 < 0)
    {
      result = 0x101000100;
      v12 = *(this + 92);
      *(this + 92) = v12 + 1;
      goto LABEL_18;
    }

    v11 = *(*(this + 2) + 32);
    v8 = sub_1952C6CA0(v11, v13);
    v9 = v8;
    if (v8 <= 0xBFu)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *(this + 2);
  }

  if (v9 != 193)
  {
    return icu::CollationIterator::nextCEFromCE32(this, v11, v13, v8, a2);
  }

  v12 = *(this + 92);
  *(this + 92) = v12 + 1;
  result = ((v8 - 193) << 32) | 0x5000500;
LABEL_18:
  *(*(this + 4) + 8 * v12) = result;
  return result;
}

uint64_t icu::CollationElementIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 != v5)
  {
    result = icu::RuleBasedCollator::operator==(v4, v5);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(a1 + 28);
  if (v7 == 1)
  {
    v7 = 0;
  }

  v8 = *(a2 + 28);
  if (v8 == 1)
  {
    v8 = 0;
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (*(a2 + 48))
    {
LABEL_27:
      v14 = *(**(a1 + 8) + 24);

      return v14();
    }

    return 0;
  }

  if ((v9 & 0x8000) != 0)
  {
    v10 = *(a1 + 52);
  }

  else
  {
    v10 = v9 >> 5;
  }

  result = 0;
  v11 = *(a2 + 48);
  if ((v11 & 0x8000u) == 0)
  {
    v12 = v11 >> 5;
  }

  else
  {
    v12 = *(a2 + 52);
  }

  if ((v11 & 1) == 0 && v10 == v12)
  {
    v13 = (v11 & 2) != 0 ? (a2 + 50) : *(a2 + 64);
    result = icu::UnicodeString::doEquals(a1 + 40, v13, v10);
    if (result)
    {
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t icu::CollationElementIterator::previous(icu::CollationElementIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 28) < 0)
  {
    v2 = *(this + 6);
    if (v2)
    {
      *(this + 6) = 0;
      return v2;
    }

LABEL_15:
    v8 = *(this + 4);
    if (!v8)
    {
      operator new();
    }

    v9 = *(this + 1);
    if (*(v9 + 6))
    {
      v10 = 0;
    }

    else
    {
      v10 = (*(*v9 + 40))(v9);
      v9 = *(this + 1);
      v8 = *(this + 4);
    }

    v11 = icu::CollationIterator::previousCE(v9, v8, a2);
    if (v11 == 0x101000100)
    {
      return 0xFFFFFFFFLL;
    }

    v2 = HIDWORD(v11) & 0xFFFF0000 | WORD1(v11) & 0xFF00 | BYTE1(v11);
    v12 = (v11 >> 8) & 0xFF00 | (HIDWORD(v11) << 16) | v11 & 0x3F;
    if (!v12)
    {
      return v2;
    }

    v13 = *(this + 4);
    if (*(v13 + 8))
    {
      goto LABEL_33;
    }

    v14 = (*(**(this + 1) + 40))(*(this + 1));
    v15 = *(v13 + 8);
    if (v15 < -1 || *(v13 + 12) <= v15)
    {
      if (!icu::UVector32::expandCapacity(v13, v15 + 1, a2))
      {
        goto LABEL_28;
      }

      v15 = *(v13 + 8);
    }

    *(*(v13 + 24) + 4 * v15) = v14;
    ++*(v13 + 8);
LABEL_28:
    v16 = *(this + 4);
    v17 = *(v16 + 8);
    if (v17 >= -1 && *(v16 + 12) > v17)
    {
      goto LABEL_32;
    }

    if (icu::UVector32::expandCapacity(*(this + 4), v17 + 1, a2))
    {
      v17 = *(v16 + 8);
LABEL_32:
      *(*(v16 + 24) + 4 * v17) = v10;
      ++*(v16 + 8);
    }

LABEL_33:
    *(this + 6) = v2;
    return v12 | 0xC0u;
  }

  if (*(this + 28) == 1)
  {
LABEL_14:
    *(this + 28) = -1;
    goto LABEL_15;
  }

  if (!*(this + 28))
  {
    v6 = *(this + 1);
    if (*(this + 24) < 0)
    {
      v7 = *(this + 13);
    }

    else
    {
      v7 = *(this + 24) >> 5;
    }

    (*(*v6 + 32))(v6, v7);
    goto LABEL_14;
  }

  *a2 = U_INVALID_STATE_ERROR;
  return 0xFFFFFFFFLL;
}

uint64_t icu::CollationElementIterator::reset(icu::CollationElementIterator *this)
{
  result = (*(**(this + 1) + 32))(*(this + 1), 0);
  *(this + 6) = 0;
  *(this + 28) = 0;
  return result;
}

uint64_t icu::CollationElementIterator::setOffset(uint64_t this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (a2 < 1)
    {
      goto LABEL_29;
    }

    v6 = *(this + 48) < 0 ? *(this + 52) : *(this + 48) >> 5;
    if (v6 <= a2)
    {
      goto LABEL_29;
    }

    v7 = a2;
    do
    {
      v8 = *(v4 + 48);
      if (*(v4 + 48) < 0)
      {
        v9 = *(v4 + 52);
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v9 <= v7)
      {
        v11 = 0xFFFFLL;
      }

      else
      {
        v10 = v4 + 50;
        if ((v8 & 2) == 0)
        {
          v10 = *(v4 + 64);
        }

        v11 = *(v10 + 2 * v7);
      }

      if (!icu::RuleBasedCollator::isUnsafe(*(v4 + 16), v11))
      {
        break;
      }

      if ((v11 & 0xFC00) == 0xD800)
      {
        v12 = *(v4 + 16);
        v13 = icu::UnicodeString::char32At((v4 + 40), v7);
        if (!icu::RuleBasedCollator::isUnsafe(v12, v13))
        {
          break;
        }
      }

      v7 = (v7 - 1);
    }

    while (v7);
    if (v7 >= a2)
    {
LABEL_29:
      v7 = a2;
LABEL_30:
      this = (*(**(v4 + 8) + 32))(*(v4 + 8), v7);
      *(v4 + 24) = 0;
      *(v4 + 28) = 1;
    }

    else
    {
LABEL_21:
      (*(**(v4 + 8) + 32))(*(v4 + 8), v7);
      while (1)
      {
        this = sub_1952C5F10(*(v4 + 8), a3);
        if (*a3 > 0)
        {
          break;
        }

        v14 = (*(**(v4 + 8) + 40))(*(v4 + 8));
        if (v14 != v7)
        {
          if (v14 <= a2)
          {
            v7 = v14;
          }

          else
          {
            v7 = v7;
          }

          if (v14 < a2)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }
    }
  }

  return this;
}

UChar **icu::CollationElementIterator::setText(UChar **this, UChar **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = this;
    icu::UnicodeString::operator=(this + 5, a2);
    if ((*(*(v3[2] + 2) + 24) & 1) == 0)
    {
      operator new();
    }

    operator new();
  }

  return this;
}

UChar **icu::CollationElementIterator::setText(UChar **this, icu::CharacterIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    (*(*a2 + 208))(a2, this + 5);

    return icu::CollationElementIterator::setText(v5, v5 + 5, a3);
  }

  return this;
}

uint64_t icu::CollationElementIterator::strengthOrder(icu::CollationElementIterator *this, uint64_t a2)
{
  v2 = *(*(*(this + 2) + 16) + 24) >> 12;
  if (v2 == 1)
  {
    return a2 & 0xFFFFFF00;
  }

  if (!v2)
  {
    return a2 & 0xFFFF0000;
  }

  return a2;
}

icu::CollationElementIterator *icu::CollationElementIterator::CollationElementIterator(icu::CollationElementIterator *this, UChar **a2, const icu::RuleBasedCollator *a3, UErrorCode *a4)
{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

icu::CollationElementIterator *icu::CollationElementIterator::CollationElementIterator(icu::CollationElementIterator *this, const icu::CharacterIterator *a2, const icu::RuleBasedCollator *a3, UErrorCode *a4)
{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

void **icu::CollationElementIterator::computeMaxExpansions(uint64_t **this, const icu::CollationData *a2, UErrorCode *a3)
{
  v15[41] = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = uhash_open(uhash_hashLong, uhash_compareLong, uhash_compareLong, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v6 = v5;
  v11[0] = &unk_1F0937F50;
  v11[1] = v5;
  v11[2] = a2;
  sub_1952C6ED4(v12, 0, 0, v11, 1);
  sub_1952DF260(v12, this, a2);
  icu::UnicodeString::~UnicodeString(v8, v15);
  icu::UnicodeSet::~UnicodeSet(v9, &v14);
  icu::UnicodeSet::~UnicodeSet(v10, &v13);
  if (*a2 >= 1)
  {
    uhash_close(v6);
    v6 = 0;
  }

  nullsub_17();
  return v6;
}

uint64_t icu::CollationElementIterator::getMaxExpansion(icu::CollationElementIterator *this, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = *(*(*(this + 2) + 24) + 384);
  if (!v3 || (result = uhash_igeti(v3, a2), !result))
  {
    if ((~a2 & 0xC0) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t icu::CollationElementIterator::getMaxExpansion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!a1 || (result = uhash_igeti(a1, a2), !result))
  {
    if ((~a2 & 0xC0) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1952C6CA0(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  if (a2 >> 11 > 0x1A)
  {
    if (HIWORD(a2))
    {
      if (HIWORD(a2) > 0x10u)
      {
        v6 = 128;
        return *(*(*a1 + 16) + 4 * v6);
      }

      if (*(v2 + 11) <= a2)
      {
        v6 = *(v2 + 12);
        return *(*(*a1 + 16) + 4 * v6);
      }

      v3 = *v2;
      v4 = ((a2 >> 5) & 0x3F) + *(v3 + 2 * (a2 >> 11) + 4160);
    }

    else
    {
      v3 = *v2;
      if (a2 >> 10 >= 0x37)
      {
        v5 = 0;
      }

      else
      {
        v5 = 320;
      }

      v4 = v5 + (a2 >> 5);
    }
  }

  else
  {
    v3 = *v2;
    v4 = a2 >> 5;
  }

  v6 = (a2 & 0x1F) + 4 * *(v3 + 2 * v4);
  return *(*(*a1 + 16) + 4 * v6);
}

uint64_t sub_1952C6D30(uint64_t result, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(result + 8) = *a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = result + 48;
  *(result + 40) = 40;
  *(result + 44) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = -1;
  *(result + 388) = a3;
  *(result + 392) = a4;
  *(result + 400) = a5;
  *(result + 408) = a6;
  *(result + 416) = a4;
  *result = &unk_1F0944580;
  *(result + 424) = a5;
  *(result + 432) = 0;
  *(result + 440) = a6;
  *(result + 448) = a2[6];
  *(result + 456) = &unk_1F0935D00;
  *(result + 464) = 2;
  *(result + 520) = 1;
  return result;
}

void sub_1952C6DC8()
{
  nullsub_17();

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952C6E04(uint64_t result, uint64_t *a2, int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = 0;
    v5 = a3;
    v6 = a2;
    do
    {
      v7 = *v6++;
      if ((v7 & 0xFFFF00FF003FLL) != 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v4 += v8;
      --v5;
    }

    while (v5);
    v9 = a2[a3 - 1];
    v10 = HIDWORD(a2[a3 - 1]);
    v11 = (v9 >> 8) & 0xFF00 | (v10 << 16) | v9 & 0x3F;
    v12 = v10 & 0xFFFF0000 | HIWORD(v9) & 0xFF00 | BYTE1(v9);
    if (v11)
    {
      v13 = v11 | 0xC0;
    }

    else
    {
      v13 = v12;
    }

    result = uhash_igeti(*(result + 8), v13);
    if (v4 > result)
    {
      v14 = *(v3 + 8);
      v15 = *(v3 + 16);

      return uhash_iputi(v14, v13, v4, v15);
    }
  }

  return result;
}

uint64_t sub_1952C6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 33) = 0;
  icu::UnicodeSet::UnicodeSet((a1 + 40));
  icu::UnicodeSet::UnicodeSet((a1 + 240));
  *(a1 + 440) = &unk_1F0935D00;
  *(a1 + 448) = 2;
  *(a1 + 504) = 0;
  *(a1 + 760) = 0;
  return a1;
}

icu::RuleBasedCollator *icu::Collator::createInstance(icu::Collator *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Collator::createInstance(Default, this, v4);
}

icu::RuleBasedCollator *icu::Collator::createInstance(icu::Collator *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    if (*(this + 216))
    {
      v3 = 0;
      *a2 = 1;
      return v3;
    }

    Instance = icu::Collator::makeInstance(this, a2, a3);
    if (*a2 <= 0)
    {
      v3 = Instance;
      sub_1952C70B4(this, Instance, a2);
      if (*a2 < 1)
      {
        return v3;
      }

      (*(*v3 + 8))(v3);
    }
  }

  return 0;
}

icu::RuleBasedCollator *icu::Collator::makeInstance(icu::Collator *this, const icu::Locale *a2, UErrorCode *a3)
{
  v4 = sub_195401894(this, a2);
  if (*a2 <= 0)
  {
    operator new();
  }

  if (v4)
  {
    icu::SharedObject::removeRef(v4);
  }

  return 0;
}

void sub_1952C70B4(icu::Locale *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return;
  }

  v6 = *(a1 + 5);
  BaseName = icu::Locale::getBaseName(a1);
  if (!strcmp(v6, BaseName))
  {
    return;
  }

  memset(__s1, 0, 25);
  bzero(__dst, 0x400uLL);
  for (i = *(a1 + 5); ; ++i)
  {
    v9 = *i;
    if ((v9 | 0x40) == 0x40)
    {
      break;
    }
  }

  v10 = (v9 == 64 ? i + 1 : i);
  v11 = *v10;
  if (!*v10)
  {
    return;
  }

  v12 = 0x6F6974616C6C6F63;
  while (1)
  {
    while (1)
    {
      if (!v11)
      {
        goto LABEL_37;
      }

      if (v11 != 32)
      {
        break;
      }

      v13 = *++v10;
      v11 = v13;
    }

    v14 = strchr(v10, 61);
    v15 = strchr(v10, 59);
    if (!v14)
    {
      goto LABEL_96;
    }

    v16 = v15;
    if (v15)
    {
      if (v15 < v14)
      {
        goto LABEL_96;
      }
    }

    v17 = v14 - v10;
    if (v14 - v10 > 24)
    {
      break;
    }

    if (v17 < 1)
    {
      goto LABEL_96;
    }

    v18 = v12;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v10[v19];
      if (v21 != 32)
      {
        __s1[v20++] = uprv_asciitolower(v21);
      }

      ++v19;
    }

    while (v17 > v19);
    if (!v20)
    {
      goto LABEL_96;
    }

    __s1[v20] = 0;
    v22 = v16 - v14;
    do
    {
      LODWORD(v23) = v22;
      v25 = *++v14;
      v24 = v25;
      --v22;
    }

    while (v25 == 32);
    if (!v24 || v14 == v16)
    {
LABEL_96:
      v46 = 3;
      goto LABEL_98;
    }

    if (v16)
    {
      v27 = v16 - 1;
      v12 = v18;
      do
      {
        v28 = *v27--;
        LODWORD(v23) = v23 - 1;
      }

      while (v28 == 32);
      v10 = v16 + 1;
    }

    else
    {
      v39 = strlen(v14);
      v12 = v18;
      if (!v39)
      {
        v10 = 0;
        LODWORD(v23) = 0;
        goto LABEL_36;
      }

      v23 = v39;
      while (v14[v23 - 1] == 32)
      {
        if (!--v23)
        {
          v10 = 0;
          goto LABEL_36;
        }
      }

      v10 = 0;
    }

    if (v23 >= 1025)
    {
      break;
    }

LABEL_36:
    strncpy(__dst, v14, v23);
    __dst[v23] = 0;
LABEL_37:
    if (*a3 > 0)
    {
      return;
    }

    if (*__s1 != v12 || *&__s1[8] != 110)
    {
      v31 = *__s1 == 0x67617269686C6F63 && *&__s1[8] == 0x6574617571616E61 && *&__s1[14] == 0x7972616E726574;
      if (v31 || (*__s1 == 0x656C626169726176 ? (v32 = *&__s1[8] == 7368564) : (v32 = 0), v32))
      {
        v46 = 16;
        goto LABEL_98;
      }

      v33 = 7;
      v34 = &dword_1E740C068;
      do
      {
        if (!strcmp(__s1, *(v34 - 1)))
        {
          v37 = 11;
          v38 = &dword_1E740C0D8;
          while (uprv_stricmp(__dst, *(v38 - 1)))
          {
            v38 += 4;
            if (!--v37)
            {
              goto LABEL_97;
            }
          }

          (*(*a2 + 184))(a2, *v34, *v38, a3);
          goto LABEL_68;
        }

        v34 += 4;
        --v33;
      }

      while (v33);
      if (*__s1 == 0x64726F65726C6F63 && *&__s1[3] == 0x726564726F6572)
      {
        bzero(v47, 0x354uLL);
        v40 = 0;
        v41 = __dst;
        while (v40 != 213)
        {
          for (j = 0; ; ++j)
          {
            v43 = v41[j];
            if (!v41[j] || v43 == 45)
            {
              break;
            }
          }

          v41[j] = 0;
          if (j == 4)
          {
            PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, v41);
          }

          else
          {
            v45 = 0;
            while (uprv_stricmp(v41, off_1E740C180[v45]))
            {
              if (++v45 == 5)
              {
                goto LABEL_97;
              }
            }

            PropertyValueEnum = v45 + 4096;
          }

          if (PropertyValueEnum < 0)
          {
            break;
          }

          v47[v40] = PropertyValueEnum;
          v41 += j + 1;
          ++v40;
          if (!v43)
          {
            (*(*a2 + 168))(a2, v47);
            v12 = 0x6F6974616C6C6F63;
            goto LABEL_68;
          }
        }

        goto LABEL_97;
      }

      if (!(*__s1 ^ 0x766B | __s1[2]))
      {
        v36 = sub_1952C816C(__dst);
        if ((v36 & 0x80000000) == 0)
        {
          (*(*a2 + 200))(a2, v36, a3);
          goto LABEL_68;
        }

LABEL_97:
        v46 = 1;
        goto LABEL_98;
      }

LABEL_68:
      if (*a3 >= 1)
      {
        *a3 = 1;
      }
    }

    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        continue;
      }
    }

    return;
  }

  v46 = 5;
LABEL_98:
  *a3 = v46;
}

uint64_t icu::Collator::compare(icu::Collator *this, UCharIterator *a2, UCharIterator *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t icu::Collator::compareUTF8(icu::Collator *this, const icu::StringPiece *a2, const icu::StringPiece *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v12 = v4;
  v13 = v5;
  memset(&iter, 0, sizeof(iter));
  memset(&v10, 0, sizeof(v10));
  uiter_setUTF8(&iter, *a2, *(a2 + 2));
  uiter_setUTF8(&v10, *a3, *(a3 + 2));
  return (*(*this + 96))(this, &iter, &v10, a4);
}

uint64_t icu::Collator::getAvailableLocales(icu::Collator *this, int *a2)
{
  v5 = 0;
  *this = 0;
  if (atomic_load_explicit(&dword_1EAEC9C20, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9C20))
  {
    if (dword_1EAEC9C24 > 0 || v5 > 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1952C81C8(&v5);
    dword_1EAEC9C24 = v5;
    icu::umtx_initImplPostInit(&dword_1EAEC9C20);
    if (v5 > 0)
    {
      return 0;
    }
  }

  result = qword_1EAEC9C10;
  *this = dword_1EAEC9C18;
  return result;
}

icu::UnicodeString *icu::Collator::getDisplayName(icu::Collator *this, const icu::Locale *a2, icu::UnicodeString *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayName(this, Default, a2);
}

BOOL icu::Collator::operator==(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*a1 - 8);
  v4 = *(*a2 - 8);

  return sub_19520B9EC(v3, v4);
}

uint64_t icu::Collator::getTailoredSet(icu::Collator *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_1952C7AF4(icu::StringEnumeration *a1)
{
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Collator::getAvailableLocales(icu::Collator *this)
{
  v3 = 0;
  if (atomic_load_explicit(&dword_1EAEC9C20, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9C20))
  {
    sub_1952C81C8(&v3);
    dword_1EAEC9C24 = v3;
    icu::umtx_initImplPostInit(&dword_1EAEC9C20);
    if (v3 > 0)
    {
      return 0;
    }

LABEL_10:
    operator new();
  }

  if (dword_1EAEC9C24 <= 0 && v3 <= 0)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t icu::Collator::getKeywords(icu::Collator *this, UErrorCode *a2)
{
  Keywords = ucol_getKeywords(this);

  return icu::UStringEnumeration::fromUEnumeration(Keywords, this);
}

uint64_t icu::Collator::getKeywordValues(icu::Collator *this, char *a2, UErrorCode *a3)
{
  KeywordValues = ucol_getKeywordValues(this, a2);

  return icu::UStringEnumeration::fromUEnumeration(KeywordValues, a2);
}

uint64_t icu::Collator::getKeywordValuesForLocale(icu::Collator *this, char **a2, const icu::Locale *a3, UErrorCode *a4, UErrorCode *a5)
{
  KeywordValuesForLocale = ucol_getKeywordValuesForLocale(this, a2[5], a3, a4);

  return icu::UStringEnumeration::fromUEnumeration(KeywordValuesForLocale, a4);
}

icu::Locale *icu::Collator::getFunctionalEquivalent@<X0>(icu::Collator *this@<X0>, char **a2@<X1>, const icu::Locale *a3@<X2>, signed __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 157);
  ucol_getFunctionalEquivalent(v8, 157, this, a2[5], a3, a4);
  if (*a4 >= 1)
  {
    LOBYTE(v8[0]) = 0;
  }

  return icu::Locale::createFromName(v8, a5);
}

void icu::Collator::setMaxVariable(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    *a3 = 16;
  }
}

uint64_t icu::Collator::getReorderCodes(icu::Collator *this, int *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

void icu::Collator::setReorderCodes(icu::Collator *this, const int *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }
}

uint64_t icu::Collator::getEquivalentReorderCodes(icu::Collator *this, UErrorCode *a2, int *a3, icu::CollationRoot *a4, UErrorCode *a5)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  if ((a3 & 0x80000000) != 0 || (v8 = this, !a2) && a3)
  {
    *a4 = 1;
    return 0;
  }

  Data = icu::CollationRoot::getData(a4, a2);
  if (*a4 > 0)
  {
    return 0;
  }

  return icu::CollationData::getEquivalentScripts(Data, v8, a2, v6, a4);
}

uint64_t icu::Collator::internalGetShortDefinitionString(icu::Collator *this, const char *a2, char *a3, int a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t icu::Collator::internalCompareUTF8(icu::Collator *this, const char *__s, int a3, const char *a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v18 = v6;
  v19 = v7;
  v10 = a5;
  if ((__s || !a3) && (a4 || !a5))
  {
    if (a3 < 0)
    {
      a3 = strlen(__s);
    }

    v16 = __s;
    v17 = a3;
    if (v10 < 0)
    {
      v10 = strlen(a4);
    }

    v14 = a4;
    v15 = v10;
    return (*(*this + 104))(this, &v16, &v14, a6);
  }

  else
  {
    result = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

uint64_t icu::Collator::internalNextSortKeyPart(icu::Collator *this, UCharIterator *a2, unsigned int *a3, unsigned __int8 *a4, int a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    *a6 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t sub_1952C8080(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 116);
  if (v3 >= dword_1EAEC9C18)
  {
    v6 = 0;
    if (a2)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = qword_1EAEC9C10;
    *(a1 + 116) = v3 + 1;
    v5 = v4 + 224 * v3;
    v6 = *(v5 + 40);
    if (a2)
    {
      v7 = strlen(*(v5 + 40));
LABEL_6:
      *a2 = v7;
    }
  }

  return v6;
}

char *sub_1952C80F4(icu::StringEnumeration *a1, UErrorCode *a2)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  return icu::StringEnumeration::setChars(a1, v4, v6, a2);
}

uint64_t sub_1952C816C(_BYTE *a1)
{
  v2 = 0;
  while (uprv_stricmp(a1, off_1E740C180[v2]))
  {
    if (++v2 == 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v2 + 4096);
}

void sub_1952C81C8(UErrorCode *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  icu::StackUResourceBundle::StackUResourceBundle(v3);
  v2 = ures_openDirect("icudt76l-coll", "res_index", a1);
  ures_getByKey(v2, "InstalledLocales", v3, a1);
  if (*a1 <= 0)
  {
    dword_1EAEC9C18 = ures_getSize(v3);
    is_mul_ok(dword_1EAEC9C18, 0xE0uLL);
    operator new[]();
  }

  ures_close(v2);
  sub_195400588(0x1Du, sub_1952C839C);
  icu::StackUResourceBundle::~StackUResourceBundle(v3);
}

uint64_t sub_1952C839C()
{
  if (qword_1EAEC9C10)
  {
    v0 = qword_1EAEC9C10 - 16;
    v1 = *(qword_1EAEC9C10 - 8);
    if (v1)
    {
      v2 = (qword_1EAEC9C10 + 224 * v1 - 224);
      v3 = (32 * v1);
      v4 = -224 * v1;
      do
      {
        v2 = (icu::Locale::~Locale(v3, v2) - 224);
        v4 += 224;
      }

      while (v4);
    }

    MEMORY[0x19A8B25E0](v0, 0x1091C80EF191B47);
    qword_1EAEC9C10 = 0;
  }

  dword_1EAEC9C18 = 0;
  atomic_store(0, &dword_1EAEC9C20);
  return 1;
}

uint64_t icu::Collation::incTwoBytePrimaryByOffset(icu::Collation *this, int a2, int a3)
{
  if (a2)
  {
    v3 = -4;
  }

  else
  {
    v3 = -2;
  }

  if (a2)
  {
    v4 = 251;
  }

  else
  {
    v4 = 254;
  }

  if (a2)
  {
    v5 = 0x40000;
  }

  else
  {
    v5 = 0x20000;
  }

  return ((this & 0xFF000000) + (((v3 + BYTE2(this) + a3) / v4) << 24)) | (v5 + (((v3 + BYTE2(this) + a3) % v4) << 16));
}

uint64_t icu::Collation::incThreeBytePrimaryByOffset(icu::Collation *this, int a2, int a3)
{
  if (a2)
  {
    v3 = -4;
  }

  else
  {
    v3 = -2;
  }

  if (a2)
  {
    v4 = 251;
  }

  else
  {
    v4 = 254;
  }

  if (a2)
  {
    v5 = 0x40000;
  }

  else
  {
    v5 = 0x20000;
  }

  return (v5 + (((v3 + BYTE2(this) + (a3 + BYTE1(this) - 2) / 254) % v4) << 16)) | ((((a3 + BYTE1(this) - 2) % 254) << 8) + 512) | ((this & 0xFF000000) + (((v3 + BYTE2(this) + (a3 + BYTE1(this) - 2) / 254) / v4) << 24));
}

uint64_t icu::Collation::decTwoBytePrimaryByOneStep(icu::Collation *this, int a2, int a3)
{
  v3 = BYTE2(this) - a3;
  v4 = v3 + 254;
  v5 = this - 0x1000000;
  if (v3 <= 1)
  {
    v6 = this - 0x1000000;
  }

  else
  {
    v6 = this;
  }

  if (v3 > 1)
  {
    v4 = BYTE2(this) - a3;
  }

  if (v3 <= 3)
  {
    v3 += 251;
  }

  else
  {
    v5 = this;
  }

  if (!a2)
  {
    v5 = v6;
    v3 = v4;
  }

  return v5 & 0xFF000000 | (v3 << 16);
}

uint64_t icu::Collation::decThreeBytePrimaryByOneStep(icu::Collation *this, int a2, int a3)
{
  v3 = BYTE1(this) - a3;
  v4 = BYTE2(this) - 1;
  if (a2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  if (a2)
  {
    v6 = 254;
  }

  else
  {
    v6 = 255;
  }

  if (BYTE2(this) >= v5)
  {
    v7 = this;
  }

  else
  {
    v7 = this - 0x1000000;
  }

  if (BYTE2(this) < v5)
  {
    v4 = v6;
  }

  v8 = v7 & 0xFF000000 | ((v3 << 8) + 65024) | (v4 << 16);
  if (v3 >= 2)
  {
    return this & 0xFFFF0000 | (v3 << 8);
  }

  else
  {
    return v8;
  }
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this)
{
  v2 = icu::Collator::Collator(this);
  *v2 = &unk_1F0942170;
  *(v2 + 1) = 0u;
  *(v2 + 3) = 0u;
  icu::Locale::Locale((v2 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  return this;
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this, UErrorCode *a2, UErrorCode *a3)
{
  v6 = icu::Collator::Collator(this);
  *v6 = &unk_1F0942170;
  *(v6 + 1) = 0u;
  *(v6 + 3) = 0u;
  icu::Locale::Locale((v6 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(this, a2, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0, 0, a3);
  return this;
}

void icu::RuleBasedCollator::internalBuildTailoring(icu::RuleBasedCollator *a1, UErrorCode *a2, uint64_t a3, uint64_t a4, UParseError *a5, icu::UnicodeString *a6, icu::CollationRoot *this)
{
  v13 = *MEMORY[0x1E69E9840];
  Root = icu::CollationRoot::getRoot(this, a2);
  if (*this <= 0)
  {
    v10 = Root;
    if (a6)
    {
      if (*(a6 + 4))
      {
        v11 = 2;
      }

      else
      {
        v11 = *(a6 + 4) & 0x1E;
      }

      *(a6 + 4) = v11;
    }

    bzero(v12, 0x268uLL);
    icu::CollationBuilder::CollationBuilder(v12, v10, 0, this);
  }
}

uint64_t icu::RuleBasedCollator::RuleBasedCollator(uint64_t a1, UErrorCode *a2, uint64_t a3, icu::CollationRoot *a4)
{
  v8 = icu::Collator::Collator(a1);
  *v8 = &unk_1F0942170;
  *(v8 + 1) = 0u;
  *(v8 + 3) = 0u;
  icu::Locale::Locale((v8 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, a3, 0xFFFFFFFFLL, 0, 0, a4);
  return a1;
}

{
  v8 = icu::Collator::Collator(a1);
  *v8 = &unk_1F0942170;
  *(v8 + 1) = 0u;
  *(v8 + 3) = 0u;
  icu::Locale::Locale((v8 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, 0xFFFFFFFFLL, a3, 0, 0, a4);
  return a1;
}

uint64_t icu::RuleBasedCollator::RuleBasedCollator(uint64_t a1, UErrorCode *a2, uint64_t a3, uint64_t a4, icu::CollationRoot *a5)
{
  v10 = icu::Collator::Collator(a1);
  *v10 = &unk_1F0942170;
  *(v10 + 1) = 0u;
  *(v10 + 3) = 0u;
  icu::Locale::Locale((v10 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, a3, a4, 0, 0, a5);
  return a1;
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this, UErrorCode *a2, UParseError *a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  v10 = icu::Collator::Collator(this);
  *v10 = &unk_1F0942170;
  *(v10 + 1) = 0u;
  *(v10 + 3) = 0u;
  icu::Locale::Locale((v10 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(this, a2, 0xFFFFFFFFLL, 0xFFFFFFFFLL, a3, a4, a5);
  return this;
}

void icu::CollationBuilder::CollationBuilder(icu::CollationBuilder *this, UErrorCode *a2, UErrorCode *a3)
{
  icu::CollationBuilder::CollationBuilder(this, a2, 0, a3);
}

{
  icu::CollationBuilder::CollationBuilder(this, a2, 0, a3);
}

uint64_t icu::CollationBuilder::parseAndBuild(icu::CollationBuilder *this, const icu::UnicodeString *a2, const unsigned __int8 *a3, icu::CollationRuleParser::Importer *a4, UParseError *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    if (*(*(this + 5) + 128))
    {
      operator new();
    }

    *a6 = U_MISSING_RESOURCE_ERROR;
    *(this + 36) = "missing root elements data, tailoring not supported";
  }

  return 0;
}

void icu::CollationBuilder::CollationBuilder(icu::CollationBuilder *this, UErrorCode *a2, signed __int8 a3, UErrorCode *a4)
{
  *this = &unk_1F0938178;
  *(this + 1) = icu::Normalizer2::getNFDInstance(a4, a2);
  *(this + 2) = icu::Normalizer2Factory::getFCDInstance(a4, v7);
  *(this + 3) = icu::Normalizer2Factory::getNFCImpl(a4, v8);
  *(this + 4) = a2;
  v9 = *(a2 + 3);
  v10 = *(v9 + 128);
  v11 = *(v9 + 136);
  *(this + 5) = v9;
  *(this + 6) = v10;
  *(this + 14) = v11;
  *(this + 16) = 0;
  operator new();
}

void icu::CollationBuilder::~CollationBuilder(icu::CollationBuilder *this)
{
  *this = &unk_1F0938178;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UVector64::~UVector64(this + 73);
  icu::UVector32::~UVector32(this + 69);
  icu::UnicodeSet::~UnicodeSet(v3, (this + 88));

  icu::CollationRuleParser::Sink::~Sink(this);
}

{
  icu::CollationBuilder::~CollationBuilder(this);

  JUMPOUT(0x19A8B2600);
}

atomic_uint *sub_1952C9150(atomic_uint **a1)
{
  v1 = *a1;
  if (icu::SharedObject::getRefCount(*a1) >= 2)
  {
    operator new();
  }

  return v1;
}

void icu::CollationBuilder::makeTailoredCEs(icu::Collation *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return;
  }

  v49 = v2;
  v50 = v3;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  icu::CollationWeights::CollationWeights(v47);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  icu::CollationWeights::CollationWeights(v45);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  icu::CollationWeights::CollationWeights(v43);
  if (*(this + 140) < 1)
  {
    return;
  }

  v5 = 0;
  v6 = *(this + 76);
  v39 = this;
  while (1)
  {
    Primary = 0;
    v41 = v5;
    v7 = *(v6 + 8 * *(*(this + 72) + 4 * v5));
    Weight = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      LODWORD(v9) = 1280;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (HIDWORD(v7))
    {
      Primary = icu::CollationRootElements::findPrimary((this + 48), HIDWORD(v7));
    }

    v10 = (v7 >> 8) & 0xFFFFF;
    if (v10)
    {
      break;
    }

LABEL_81:
    v5 = v41 + 1;
    if (v41 + 1 >= *(this + 140))
    {
      return;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LODWORD(v15) = v9;
  while (1)
  {
    v16 = *(v6 + 8 * v10);
    v17 = (v16 >> 8) & 0xFFFFF;
    if ((v16 & 3) <= 1)
    {
      break;
    }

    if ((v16 & 3) == 2)
    {
      if ((v16 & 8) != 0)
      {
        if (!v11)
        {
          if (v17)
          {
            v22 = 0;
            v23 = (v16 >> 8) & 0xFFFFF;
            do
            {
              v24 = *(v6 + 8 * v23);
              if ((v24 & 3u) < 2uLL)
              {
                break;
              }

              if ((v24 & 3) == 2)
              {
                if ((v24 & 8) == 0)
                {
                  break;
                }

                ++v22;
              }

              v23 = (v24 >> 8) & 0xFFFFF;
            }

            while (v23);
            v25 = v22 + 1;
          }

          else
          {
            v25 = 1;
          }

          v40 = v25;
          if (v15)
          {
            if (v13 | v12)
            {
              if (v15 == 256)
              {
                TertiaryAfter = 1280;
                LODWORD(v15) = 256;
              }

              else
              {
                TertiaryAfter = *(*(this + 6) + 16) << 8;
              }
            }

            else
            {
              TertiaryAfter = icu::CollationRootElements::getTertiaryAfter(this + 6, Primary, v9, v15);
            }
          }

          else
          {
            v35 = *(this + 6);
            LODWORD(v15) = (v35[4] << 8) - 256;
            TertiaryAfter = v35[*v35] & 0x3F3F;
          }

          icu::CollationWeights::initForTertiary(v43);
          v36 = icu::CollationWeights::allocWeights(v43, v15, TertiaryAfter, v40);
          this = v39;
          if (!v36)
          {
            v37 = "tertiary tailoring gap too small";
            goto LABEL_87;
          }
        }

        LODWORD(v15) = icu::CollationWeights::nextWeight(v43);
        v14 = 0;
        v11 = 1;
        if ((v16 & 8) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v14 = 0;
        v11 = 0;
        v15 = HIWORD(v16);
      }
    }

    else
    {
      if (v14 == 3)
      {
        v37 = "quaternary tailoring gap too small";
        goto LABEL_87;
      }

      ++v14;
      if ((v16 & 8) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_75:
    v10 = (v16 >> 8) & 0xFFFFF;
    if (!v17)
    {
      goto LABEL_81;
    }
  }

  if ((v16 & 3) == 0)
  {
    if (!v13)
    {
      if (v17)
      {
        v18 = 0;
        v19 = (v16 >> 8) & 0xFFFFF;
        do
        {
          v20 = *(v6 + 8 * v19);
          if ((v20 & 3) == 0)
          {
            if ((v20 & 8) == 0)
            {
              break;
            }

            ++v18;
          }

          v19 = (v20 >> 8) & 0xFFFFF;
        }

        while (v19);
        v21 = v18 + 1;
      }

      else
      {
        v21 = 1;
      }

      v31 = *(*(*(this + 5) + 72) + (Weight >> 24));
      PrimaryAfter = icu::CollationRootElements::getPrimaryAfter((this + 48), Weight, Primary, v31);
      icu::CollationWeights::initForPrimary(v47, v31);
      if (!icu::CollationWeights::allocWeights(v47, Weight, PrimaryAfter, v21))
      {
        v37 = "primary tailoring gap too small";
        goto LABEL_87;
      }
    }

    Weight = icu::CollationWeights::nextWeight(v47);
    v14 = 0;
    v12 = 0;
    v11 = 0;
    LODWORD(v15) = 1280;
    v13 = 1;
    LODWORD(v9) = 1280;
    if ((v16 & 8) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if ((v16 & 8) == 0)
  {
    v12 = 0;
    v9 = HIWORD(v16);
    goto LABEL_70;
  }

  if (v12)
  {
    goto LABEL_69;
  }

  if (!v17)
  {
    v29 = 1;
    if (v9)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  v26 = 0;
  v27 = (v16 >> 8) & 0xFFFFF;
  do
  {
    v28 = *(v6 + 8 * v27);
    if ((v28 & 3) == 1)
    {
      if ((v28 & 8) == 0)
      {
        break;
      }

      ++v26;
    }

    else if ((v28 & 3) == 0)
    {
      break;
    }

    v27 = (v28 >> 8) & 0xFFFFF;
  }

  while (v27);
  v29 = v26 + 1;
  if (!v9)
  {
LABEL_61:
    v34 = *(this + 6);
    LODWORD(v9) = (*(v34 + 18) << 8) - 256;
    SecondaryAfter = *(v34 + 4 * *(v34 + 4) + 2);
    goto LABEL_66;
  }

LABEL_48:
  if (v13)
  {
    if (v9 == 256)
    {
      LODWORD(v9) = 256;
      SecondaryAfter = 1280;
      goto LABEL_68;
    }

    SecondaryAfter = *(*(this + 6) + 18) << 8;
  }

  else
  {
    SecondaryAfter = icu::CollationRootElements::getSecondaryAfter((this + 48), Primary, v9);
  }

LABEL_66:
  if (v9 == 1280)
  {
    LODWORD(v9) = *(*(this + 6) + 19) << 8;
  }

LABEL_68:
  icu::CollationWeights::initForSecondary(v45);
  if (icu::CollationWeights::allocWeights(v45, v9, SecondaryAfter, v29))
  {
LABEL_69:
    LODWORD(v9) = icu::CollationWeights::nextWeight(v45);
    v12 = 1;
LABEL_70:
    v14 = 0;
    v11 = 0;
    if (v9)
    {
      LODWORD(v15) = 1280;
    }

    else
    {
      LODWORD(v15) = 0;
    }

    if ((v16 & 8) == 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    *(v6 + 8 * v10) = (v9 << 16) | (Weight << 32) | v15 | (v14 << 6);
    goto LABEL_75;
  }

  v37 = "secondary tailoring gap too small";
LABEL_87:
  *a2 = U_BUFFER_OVERFLOW_ERROR;
  *(this + 36) = v37;
}

void icu::CollationBuilder::closeOverComposites(icu::CollationBuilder *this, UErrorCode *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = "[";
  icu::UnicodeString::UnicodeString(&v19, 1, &v11, -1);
  icu::UnicodeSet::UnicodeSet(v12, &v19, a2);
  icu::UnicodeString::~UnicodeString(v4, &v19);
  v5 = *a2;
  if (v5 <= 0)
  {
    icu::UnicodeSet::remove(v12, 0xAC00u, 0xD7A3u);
    v20 = 0u;
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v18 = 0;
    v19 = &unk_1F0935D00;
    LOWORD(v20) = 2;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = &unk_1F0935D00;
    LOWORD(v15) = 2;
    memset(v10, 0, sizeof(v10));
    icu::UnicodeSetIterator::UnicodeSetIterator(v10, v12);
    while (icu::UnicodeSetIterator::next(v10))
    {
      (*(**(this + 1) + 56))(*(this + 1), DWORD2(v10[0]), &v14);
      CEs = icu::CollationDataBuilder::getCEs(*(this + 9), &v14, this + 37, 0);
      *(this + 136) = CEs;
      if (CEs <= 31)
      {
        String = icu::UnicodeSetIterator::getString(v10);
        icu::CollationBuilder::addIfDifferent(this, &v19, String, this + 37, *(this + 136), 0xFFFFFFFFLL, a2);
      }
    }

    icu::UnicodeSetIterator::~UnicodeSetIterator(v10);
    icu::UnicodeString::~UnicodeString(v8, &v14);
    icu::UnicodeString::~UnicodeString(v9, &v19);
  }

  icu::UnicodeSet::~UnicodeSet(v5, v12);
}

void icu::CollationBuilder::finalizeCEs(icu::CollationBuilder *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v6;
    v13 = v7;
    operator new();
  }
}

uint64_t icu::CollationBuilder::addReset(uint64_t this, unsigned int a2, const icu::UnicodeString *a3, const char **a4, UErrorCode *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = this;
    v9 = *(a3 + 4);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(a3 + 3);
    }

    if (v10)
    {
      v11 = (v9 & 2) != 0 ? (a3 + 10) : *(a3 + 3);
      if (*v11 == -2)
      {
        this = icu::CollationBuilder::getSpecialResetPosition(this, a3, a4, a5);
        *(v8 + 296) = this;
        *(v8 + 544) = 1;
        if (a2 == 15 || *a5 > 0)
        {
          return this;
        }

LABEL_20:
        this = icu::CollationBuilder::findOrInsertNodeForCEs(v8, a2, a4, a5);
        if (*a5 > 0)
        {
          return this;
        }

        v16 = this;
        if ((this & 0x80000000) != 0 || *(v8 + 592) <= this)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(v8 + 608) + 8 * this);
        }

        for (i = v17 & 3; i > a2; i = v17 & 3)
        {
          v16 = (v17 >> 28) & 0xFFFFF;
          if (*(v8 + 592) <= v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = *(*(v8 + 608) + 8 * v16);
          }
        }

        if ((v17 & 8) != 0 && i == a2)
        {
          v19 = v17 >> 28;
LABEL_33:
          if (*a5 < 1)
          {
            *(v8 + 8 * *(v8 + 544) + 288) = (((v19 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v19 & 0xFE000) >> 13) & 0x7F) << 56) | ((v19 & 0x3F) << 24)) + (a2 << 8) + 0x4040000006002000;
            return this;
          }

          v20 = "inserting reset position for &[before n]";
LABEL_35:
          *a4 = v20;
          return this;
        }

        if (!a2)
        {
          v24 = HIDWORD(v17);
          if (!HIDWORD(v17))
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v20 = "reset primary-before ignorable not possible";
            goto LABEL_35;
          }

          this = v8 + 48;
          if (*(*(v8 + 48) + 4 * *(*(v8 + 48) + 8)) >= HIDWORD(v17))
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v20 = "reset primary-before first non-ignorable not supported";
            goto LABEL_35;
          }

          if (v24 == 4278321664)
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v20 = "reset primary-before [first trailing] not supported";
            goto LABEL_35;
          }

          PrimaryBefore = icu::CollationRootElements::getPrimaryBefore(this, v24, *(*(*(v8 + 40) + 72) + HIBYTE(v17)));
          this = icu::CollationBuilder::findOrInsertNodeForPrimary(v8, PrimaryBefore, a5);
          while (1)
          {
            LODWORD(v19) = this;
            if ((this & 0x80000000) != 0 || *(v8 + 592) <= this)
            {
              goto LABEL_83;
            }

            a2 = 0;
            this = (*(*(v8 + 608) + 8 * this) >> 8) & 0xFFFFF;
            if (!this)
            {
              goto LABEL_33;
            }
          }
        }

        this = icu::CollationBuilder::findCommonNode(v8, v16, 1);
        v22 = this;
        if (a2 != 1)
        {
          this = icu::CollationBuilder::findCommonNode(v8, this, 2);
          v22 = this;
        }

        if ((v22 & 0x80000000) != 0 || *(v8 + 592) <= v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(*(v8 + 608) + 8 * v22);
        }

        if ((v23 & 3) == a2)
        {
          if (!HIWORD(v23))
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v20 = "reset secondary-before secondary ignorable not possible";
            if (a2 != 1)
            {
              v20 = "reset tertiary-before completely ignorable not possible";
            }

            goto LABEL_35;
          }

          this = icu::CollationBuilder::getWeight16Before(v8, v21, v23, a2);
          v19 = (v23 >> 28) & 0xFFFFF;
          LODWORD(v28) = v19;
          while (1)
          {
            if (*(v8 + 592) <= v28)
            {
              v29 = 0;
            }

            else
            {
              v29 = *(*(v8 + 608) + 8 * v28);
            }

            if ((v29 & 3) < a2)
            {
              LODWORD(v30) = 1280;
              goto LABEL_76;
            }

            if ((v29 & 8) == 0 && (v29 & 3) == a2)
            {
              break;
            }

            v28 = (v29 >> 28) & 0xFFFFF;
          }

          v30 = HIWORD(v29);
LABEL_76:
          if (v30 == this)
          {
            goto LABEL_53;
          }

          this = icu::CollationBuilder::insertNodeBetween(v8, v19, v22, a2 | (this << 48), a5);
        }

        else
        {
          Weight16Before = icu::CollationBuilder::getWeight16Before(v8, v21, v23, a2);
          this = icu::CollationBuilder::findOrInsertWeakNode(v8, v22, Weight16Before, a2, a5);
        }

        LODWORD(v19) = this;
LABEL_53:
        v26 = *(v8 + 8 * *(v8 + 544) + 288);
        if ((v26 - 1174405120) >> 30 == 3)
        {
          a2 = (v26 >> 8) & 3;
          goto LABEL_33;
        }

        if (!HIBYTE(v26))
        {
          if (v26)
          {
            v27 = 2;
          }

          else
          {
            v27 = 15;
          }

          if ((v26 & 0xFF000000) != 0)
          {
            a2 = 1;
          }

          else
          {
            a2 = v27;
          }

          goto LABEL_33;
        }

LABEL_83:
        a2 = 0;
        goto LABEL_33;
      }
    }

    v12 = *(this + 8);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v32 = &unk_1F0935D00;
    LOWORD(v33) = 2;
    (*(*v12 + 24))(v12, a3, &v32, a5);
    if (*a5 <= 0)
    {
      CEs = icu::CollationDataBuilder::getCEs(*(v8 + 72), &v32, (v8 + 296), 0);
      *(v8 + 544) = CEs;
      if (CEs < 32)
      {
        this = icu::UnicodeString::~UnicodeString(v15, &v32);
        if (a2 == 15)
        {
          return this;
        }

        goto LABEL_20;
      }

      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
      v13 = "reset position maps to too many collation elements (more than 31)";
    }

    else
    {
      v13 = "normalizing the reset position";
    }

    *a4 = v13;
    return icu::UnicodeString::~UnicodeString(v13, &v32);
  }

  return this;
}

unint64_t icu::CollationBuilder::getSpecialResetPosition(icu::CollationData **this, const icu::UnicodeString *a2, const char **a3, UErrorCode *a4)
{
  v4 = *(a2 + 4);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 3);
  }

  if (v5 < 2)
  {
LABEL_90:
    abort();
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = *(v6 + 1);
  v10 = 0;
  v11 = 0;
  CEWithPrimaryAtLeast = 0xFF02020005000500;
  v13 = 1;
  switch(v7)
  {
    case 10240:
    case 10241:
      return v11;
    case 10242:
      inserted = icu::CollationBuilder::findOrInsertNodeForRootCE(this, 0, 2, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      if ((inserted & 0x80000000) == 0 && (v15 = *(this + 148), v15 > inserted) && ((v16 = this[76], v17 = *(v16 + inserted), (v18 = (v17 >> 8) & 0xFFFFF) != 0) ? (v19 = v15 > v18) : (v19 = 0), v19 && (*(v16 + v18) & 0xBLL) == 0xA))
      {
        return (((((v17 >> 8) & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | (((((v17 >> 8) & 0xFE000) >> 13) & 0x7F) << 56) | (((v17 >> 8) & 0x3F) << 24)) + 0x4040000006002000) | 0x200;
      }

      else
      {
        return *(this[6] + *this[6]) & 0xFFFFFF7F;
      }

    case 10243:
      v13 = 0;
      CEWithPrimaryAtLeast = *(this[6] + (*(this[6] + 1) - 1)) & 0xFFFFFF7F;
      v10 = 2;
      goto LABEL_44;
    case 10244:
      v22 = icu::CollationBuilder::findOrInsertNodeForRootCE(this, 0, 1, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      if ((v22 & 0x80000000) != 0 || *(this + 148) <= v22)
      {
        LODWORD(v23) = 0;
      }

      else
      {
        v23 = *(this[76] + v22);
      }

      break;
    case 10245:
      v13 = 0;
      v24 = *(this[6] + (*(this[6] + 2) - 1));
      goto LABEL_43;
    case 10246:
      v10 = 0;
      CEWithPrimaryAtLeast = (*(this[6] + *(this[6] + 2)) << 32) | 0x5000500;
      goto LABEL_44;
    case 10247:
      CEWithPrimaryBefore = icu::CollationRootElements::lastCEWithPrimaryBefore((this + 6), *(this + 16) + 1);
      goto LABEL_33;
    case 10248:
      CEWithPrimaryAtLeast = icu::CollationRootElements::firstCEWithPrimaryAtLeast((this + 6), (*(this + 16) + 1));
      goto LABEL_34;
    case 10249:
      FirstPrimaryForGroup = icu::CollationData::getFirstPrimaryForGroup(this[5], 17);
      CEWithPrimaryBefore = icu::CollationRootElements::firstCEWithPrimaryAtLeast((this + 6), FirstPrimaryForGroup);
      goto LABEL_33;
    case 10250:
      CEWithPrimaryBefore = icu::CollationData::getSingleCE(this[5], 0x4E00, a4);
LABEL_33:
      CEWithPrimaryAtLeast = CEWithPrimaryBefore;
      v13 = 0;
LABEL_34:
      v10 = 0;
      goto LABEL_44;
    case 10251:
      v11 = 0;
      *a4 = U_UNSUPPORTED_ERROR;
      v21 = "reset to [last implicit] not supported";
      goto LABEL_29;
    case 10252:
      goto LABEL_44;
    case 10253:
      v11 = 0;
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      v21 = "LDML forbids tailoring to U+FFFF";
LABEL_29:
      *a3 = v21;
      return v11;
    default:
      goto LABEL_90;
  }

  do
  {
    v26 = (v23 >> 8) & 0xFFFFF;
    if (v26)
    {
      v27 = *(this + 148);
      if (v27 > v26)
      {
        v28 = this[76];
        v23 = *(v28 + v26);
        if ((*(v28 + 2 * v26) & 3) != 0)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  while ((v23 & 3) != 1);
  if ((v23 & 8) != 0)
  {
    if ((v23 & 0x20) != 0)
    {
      v43 = (v23 >> 8) & 0xFFFFF;
      if (v27 <= v43)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v28 + v43) >> 8;
      }
    }

    return ((((v26 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v26 & 0xFE000) >> 13) & 0x7F) << 56) | ((v26 & 0x3F) << 24)) + 0x4040000006002000) | 0x100;
  }

LABEL_42:
  v13 = 0;
  v24 = *(this[6] + *(this[6] + 1));
LABEL_43:
  CEWithPrimaryAtLeast = v24 & 0xFFFFFFFFFFFFFF7FLL;
  v10 = 1;
LABEL_44:
  v29 = icu::CollationBuilder::findOrInsertNodeForRootCE(this, CEWithPrimaryAtLeast, v10, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  if (v29 < 0 || *(this + 148) <= v29)
  {
    LODWORD(v31) = 0;
    if (v7)
    {
LABEL_50:
      for (i = (v31 >> 8) & 0xFFFFF; i; v29 = v33)
      {
        v33 = i;
        if (*(this + 148) <= i)
        {
          LODWORD(v34) = 0;
        }

        else
        {
          v34 = *(this[76] + i);
        }

        if ((v34 & 3u) < v10)
        {
          break;
        }

        i = (v34 >> 8) & 0xFFFFF;
        LOBYTE(v31) = v34;
      }

      v11 = CEWithPrimaryAtLeast;
      if ((v31 & 8) != 0)
      {
        return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
      }

      return v11;
    }
  }

  else
  {
    v31 = *(this[76] + v29);
    if (v7)
    {
      goto LABEL_50;
    }
  }

  v35 = v13 ^ 1;
  if ((v31 & 0x60) != 0)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    v29 = (v31 >> 8) & 0xFFFFF;
    if (v29)
    {
      v36 = v31 >> 8;
      if (*(this + 148) <= v29)
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = *(this[76] + v29);
      }

      CEWithPrimaryAtLeast = ((v10 << 8) | 0x4040000006002000) + ((v36 & 0xFE000) << 43) + ((v36 & 0x1FC0) << 42) + ((v36 & 0x3F) << 24);
    }

    else
    {
      Primary = icu::CollationRootElements::findPrimary((this + 6), HIDWORD(CEWithPrimaryAtLeast));
      PrimaryAfter = icu::CollationRootElements::getPrimaryAfter((this + 6), HIDWORD(CEWithPrimaryAtLeast), Primary, *(*(this[5] + 9) + HIBYTE(CEWithPrimaryAtLeast)));
      if (*a4 > 0)
      {
        return 0;
      }

      v39 = PrimaryAfter;
      v29 = icu::CollationBuilder::findOrInsertNodeForPrimary(this, PrimaryAfter, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      CEWithPrimaryAtLeast = (v39 << 32) | 0x5000500;
      if (v29 < 0 || *(this + 148) <= v29)
      {
        return CEWithPrimaryAtLeast;
      }

      v31 = *(this[76] + v29);
    }
  }

  v11 = CEWithPrimaryAtLeast;
  if ((v31 & 0x60) != 0)
  {
    if ((v31 & 0x40) != 0)
    {
      v40 = (v31 >> 8) & 0xFFFFF;
      v41 = *(this + 148);
      if (v41 <= v40)
      {
        v29 = 0;
      }

      else
      {
        v29 = (*(this[76] + v40) >> 8) & 0xFFFFF;
      }

      if (v41 <= v29)
      {
        return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
      }

      v31 = *(this[76] + v29);
    }

    if ((v31 & 0x20) != 0)
    {
      v42 = (v31 >> 8) & 0xFFFFF;
      if (*(this + 148) <= v42)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(this[76] + v42) >> 8;
      }
    }

    return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
  }

  return v11;
}

unint64_t icu::CollationBuilder::findOrInsertNodeForCEs(icu::CollationBuilder *this, int a2, const char **a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = *(this + 136);
  if (!v6)
  {
LABEL_18:
    v8 = 0;
    *(this + 37) = 0;
    *(this + 136) = 1;
    return icu::CollationBuilder::findOrInsertNodeForRootCE(this, v8, a2, a4);
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = *(this + v6 + 36);
    if ((v8 - 1174405120) >> 30 != 3)
    {
      break;
    }

    if (((v8 >> 8) & 3) <= a2)
    {
      return ((v8 - 0x4040000006002000) >> 43) & 0xFE000 | ((v8 - 0x4040000006002000) >> 42) & 0x1FC0 | ((v8 - 100671488) >> 24) & 0x3F;
    }

LABEL_17:
    *(this + 136) = v7--;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  if (HIBYTE(v8))
  {
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 15;
    }

    if ((v8 & 0xFF000000) != 0)
    {
      v9 = 1;
    }
  }

  if (v9 > a2)
  {
    goto LABEL_17;
  }

  if (HIBYTE(v8) != 254)
  {
    return icu::CollationBuilder::findOrInsertNodeForRootCE(this, v8, a2, a4);
  }

  result = 0;
  *a4 = U_UNSUPPORTED_ERROR;
  *a3 = "tailoring relative to an unassigned code point not supported";
  return result;
}

uint64_t icu::CollationBuilder::findOrInsertNodeForPrimary(icu::CollationBuilder *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = *(this + 140);
  v8 = *(this + 76);
  if (!v7)
  {
    v10 = -1;
    goto LABEL_19;
  }

  v9 = *(this + 72);
  v10 = v7 / 2;
  v11 = *(v8 + 8 * *(v9 + 4 * (v7 / 2)) + 4);
  if (v11 == a2)
  {
LABEL_15:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v3 = *(this + 148);
    v14 = v3 + 1;
    if (v3 < -1 || *(this + 149) <= v3)
    {
      if (!icu::UVector64::expandCapacity((this + 584), v14, a3))
      {
LABEL_25:
        icu::UVector32::insertElementAt((this + 552), v3, ~v10, a3);
        return v3;
      }

      v15 = *(this + 148);
      v14 = v15 + 1;
      v8 = *(this + 76);
    }

    else
    {
      v15 = *(this + 148);
    }

    *(v8 + 8 * v15) = a2 << 32;
    *(this + 148) = v14;
    goto LABEL_25;
  }

  v12 = 0;
  v13 = *(this + 140);
  while (v11 <= a2)
  {
    if (v10 == v12)
    {
      v10 = -2 - v10;
      goto LABEL_15;
    }

    v12 = v10;
LABEL_11:
    v10 = (v12 + v13) / 2;
    v11 = *(v8 + 8 * *(v9 + 4 * v10) + 4);
    if (v11 == a2)
    {
      goto LABEL_15;
    }
  }

  if (v10 != v12)
  {
    v13 = v10;
    goto LABEL_11;
  }

  v10 = ~v10;
  if (v10 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v7 > v10)
  {
    return *(v9 + 4 * v10);
  }

  return 0;
}

uint64_t icu::CollationBuilder::findCommonNode(icu::CollationBuilder *this, uint64_t a2, int a3)
{
  if ((a2 & 0x80000000) != 0 || *(this + 148) <= a2)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = *(*(this + 76) + 8 * a2);
  }

  if ((v3 & 3) < a3)
  {
    if (a3 == 1)
    {
      if ((v3 & 0x40) == 0)
      {
        return a2;
      }
    }

    else if ((v3 & 0x20) == 0)
    {
      return a2;
    }

    v4 = (v3 >> 8) & 0xFFFFF;
    v5 = *(this + 148);
    if (v5 <= v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = *(*(this + 76) + 8 * v4);
    }

    do
    {
      do
      {
        a2 = (v6 >> 8) & 0xFFFFF;
        LODWORD(v6) = 0;
      }

      while (v5 <= a2);
      v6 = *(*(this + 76) + 8 * a2);
    }

    while ((v6 & 8) != 0 || (v6 & 3) > a3 || HIBYTE(v6) < 5u);
  }

  return a2;
}

uint64_t icu::CollationBuilder::getWeight16Before(icu::CollationBuilder *this, int a2, unint64_t a3, int a4)
{
  if ((a3 & 3) == 2)
  {
    v4 = HIWORD(a3);
  }

  else
  {
    v4 = 1280;
  }

  v5 = a3 & 3;
  if (v5 < 2)
  {
LABEL_7:
    if ((a3 & 8) != 0)
    {
      return 256;
    }

    if (v5)
    {
      v7 = HIWORD(a3);
      goto LABEL_12;
    }
  }

  else
  {
    while (1)
    {
      v6 = (a3 >> 28) & 0xFFFFF;
      if (*(this + 148) <= v6)
      {
        break;
      }

      a3 = *(*(this + 76) + 8 * v6);
      v5 = a3 & 3;
      if (v5 <= 1)
      {
        goto LABEL_7;
      }
    }

    a3 = 0;
  }

  LODWORD(v7) = 1280;
LABEL_12:
  if ((a3 & 3) != 0)
  {
    while (1)
    {
      v8 = (a3 >> 28) & 0xFFFFF;
      if (*(this + 148) <= v8)
      {
        break;
      }

      a3 = *(*(this + 76) + 8 * v8);
      if ((a3 & 3) == 0)
      {
        goto LABEL_15;
      }
    }

    HIDWORD(a3) = 0;
    goto LABEL_18;
  }

LABEL_15:
  if ((a3 & 8) != 0)
  {
    return 256;
  }

LABEL_18:
  v10 = (this + 48);
  if (a4 == 1)
  {
    return icu::CollationRootElements::getSecondaryBefore(v10, HIDWORD(a3), v7);
  }

  else
  {
    return icu::CollationRootElements::getTertiaryBefore(v10, HIDWORD(a3), v7, v4);
  }
}

uint64_t icu::CollationBuilder::insertNodeBetween(icu::CollationBuilder *this, signed int a2, signed int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v10 = *(this + 148);
  v11 = v10 + 1;
  if (v10 < -1 || *(this + 149) <= v10)
  {
    if (!icu::UVector64::expandCapacity((this + 584), v11, a5))
    {
      goto LABEL_8;
    }

    v12 = *(this + 148);
    v11 = v12 + 1;
  }

  else
  {
    v12 = *(this + 148);
  }

  *(*(this + 76) + 8 * v12) = a4 | (a2 << 28) | (a3 << 8);
  *(this + 148) = v11;
LABEL_8:
  if (*a5 > 0)
  {
    return 0;
  }

  if (a2 < 0 || *(this + 148) <= a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(this + 76) + 8 * a2) & 0xFFFFFFFFF00000FFLL;
  }

  icu::UVector64::setElementAt(this + 584, v14 | (v10 << 8), a2);
  if (a3)
  {
    if (a3 < 0 || *(this + 148) <= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(this + 76) + 8 * a3) & 0xFFFF00000FFFFFFFLL;
    }

    icu::UVector64::setElementAt(this + 584, v15 | (v10 << 28), a3);
  }

  return v10;
}

uint64_t icu::CollationBuilder::findOrInsertWeakNode(icu::CollationBuilder *this, uint64_t a2, uint64_t a3, unsigned int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v8 = a2;
  if (a3 == 1280)
  {

    return icu::CollationBuilder::findCommonNode(this, a2, a4);
  }

  else
  {
    if ((a2 & 0x80000000) != 0 || *(this + 148) <= a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(*(this + 76) + 8 * a2);
    }

    if ((a3 - 1) <= 0x4FE)
    {
      v12 = 32;
      if (a4 == 1)
      {
        v12 = 64;
      }

      if ((v11 & v12) == 0)
      {
        v14 = a4;
        if (a4 == 1)
        {
          v15 = v11 & 0x20;
        }

        else
        {
          v15 = 0;
        }

        v16 = a4 | 0x500000000000000;
        if (a4 == 1)
        {
          v17 = v11 & 0xFFFFFFFFFFFFFFDFLL;
        }

        else
        {
          v17 = v11;
        }

        icu::UVector64::setElementAt(this + 584, v17 | v12, a2);
        v18 = (v17 >> 8) & 0xFFFFF;
        inserted = icu::CollationBuilder::insertNodeBetween(this, v8, v18, v14 | (a3 << 48), a5);
        icu::CollationBuilder::insertNodeBetween(this, inserted, v18, v15 | v16, a5);
        return inserted;
      }
    }

    while (1)
    {
      inserted = (v11 >> 8) & 0xFFFFF;
      if (!inserted)
      {
        break;
      }

      v11 = *(this + 148) <= inserted ? 0 : *(*(this + 76) + 8 * inserted);
      if ((v11 & 3) <= a4)
      {
        if ((v11 & 3) < a4)
        {
          break;
        }

        if ((v11 & 8) == 0)
        {
          if (HIWORD(v11) == a3)
          {
            return inserted;
          }

          if (HIWORD(v11) > a3)
          {
            break;
          }
        }
      }

      v8 = inserted;
    }

    v13 = a4 | (a3 << 48);

    return icu::CollationBuilder::insertNodeBetween(this, v8, inserted, v13, a5);
  }
}

uint64_t icu::CollationBuilder::ceStrength(unint64_t this)
{
  if (this)
  {
    v1 = 2;
  }

  else
  {
    v1 = 15;
  }

  if ((this & 0xFF000000) != 0)
  {
    v1 = 1;
  }

  if (HIBYTE(this))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  if ((this - 1174405120) >> 30 == 3)
  {
    return (this >> 8) & 3;
  }

  else
  {
    return v2;
  }
}

uint64_t icu::CollationBuilder::findOrInsertNodeForRootCE(icu::CollationBuilder *this, unint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = a2;
  inserted = icu::CollationBuilder::findOrInsertNodeForPrimary(this, HIDWORD(a2), a4);
  if (a3 < 1)
  {
    return inserted;
  }

  inserted = icu::CollationBuilder::findOrInsertWeakNode(this, inserted, HIWORD(v8), 1u, a4);
  if (a3 == 1)
  {
    return inserted;
  }

  return icu::CollationBuilder::findOrInsertWeakNode(this, inserted, v8 & 0x3F3F, 2u, a4);
}

uint64_t *icu::CollationBuilder::addRelation(uint64_t *this, int a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, const char **a6, UErrorCode *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v13 = this;
    v14 = 0uLL;
    v53 = 0u;
    v56 = 0;
    v55 = 0u;
    v54 = 0u;
    v52 = &unk_1F0935D00;
    LOWORD(v53) = 2;
    if (*(a3 + 4) >= 0x20u)
    {
      (*(*this[1] + 24))(this[1], a3, &v52, a7);
      v14 = 0uLL;
      if (*a7 >= 1)
      {
        v15 = "normalizing the relation prefix";
        *a6 = "normalizing the relation prefix";
        return icu::UnicodeString::~UnicodeString(v15, &v52);
      }
    }

    v16 = v13[1];
    v48 = v14;
    v49 = v14;
    v50 = v14;
    v51 = 0;
    v47 = &unk_1F0935D00;
    LOWORD(v48) = 2;
    (*(*v16 + 24))(v16, a4, &v47, a7);
    if (*a7 >= 1)
    {
      v17 = "normalizing the relation string";
LABEL_7:
      *a6 = v17;
LABEL_8:
      icu::UnicodeString::~UnicodeString(v17, &v47);
      return icu::UnicodeString::~UnicodeString(v15, &v52);
    }

    if (v48 < 0)
    {
      v18 = DWORD1(v48);
      if (SDWORD1(v48) <= 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v48 < 0x40u)
      {
        goto LABEL_30;
      }

      v18 = v48 >> 5;
    }

    v19 = &v48 + 1;
    if ((v48 & 2) == 0)
    {
      v19 = v49;
    }

    v20 = *v19;
    v21 = v20 - 4371;
    v22 = v20 - 4470;
    if (v21 > 0xFFFFFFEC || v22 >= 0xFFFFFFEB)
    {
      *a7 = U_UNSUPPORTED_ERROR;
      v17 = "contractions starting with conjoining Jamo L or V not supported";
      goto LABEL_7;
    }

    v24 = v18 - 1;
    v25 = v48 >> 5;
    if ((v48 & 0x8000u) != 0)
    {
      v25 = DWORD1(v48);
    }

    if (v25 > v24)
    {
      v26 = v19[v24];
      if ((v26 - 4371) > 0xFFFFFFEC || (v26 - 4470) >= 0xFFFFFFEB && (v27 = v18 - 2, v25 > v27) && v19[v27] - 4371 >= 0xFFFFFFED)
      {
        *a7 = U_UNSUPPORTED_ERROR;
        v17 = "contractions ending with conjoining Jamo L or L+V not supported";
        goto LABEL_7;
      }
    }

LABEL_30:
    if (a2 != 15)
    {
      inserted = icu::CollationBuilder::findOrInsertNodeForCEs(v13, a2, a6, a7);
      v32 = v13[*(v13 + 136) + 36];
      if (a2)
      {
        v33 = v32 == 0;
        if (a2 == 3 && !v32)
        {
          *a7 = U_UNSUPPORTED_ERROR;
          v17 = "tailoring quaternary after tertiary ignorables not supported";
          goto LABEL_7;
        }
      }

      else
      {
        if ((v32 - 1174405120) >> 30 != 3 && HIDWORD(v32) == 0)
        {
          *a7 = U_UNSUPPORTED_ERROR;
          v17 = "tailoring primary after ignorables not supported";
          goto LABEL_7;
        }

        v33 = v32 == 0;
      }

      v35 = icu::CollationBuilder::insertTailoredNodeAfter(v13, inserted, a2, a7);
      if (*a7 >= 1)
      {
        v17 = "modifying collation elements";
        goto LABEL_7;
      }

      if ((v32 - 1174405120) >> 30 == 3)
      {
        v36 = (v32 >> 8) & 3;
      }

      else if (HIBYTE(v32))
      {
        v36 = 0;
      }

      else
      {
        if (v33)
        {
          v36 = 15;
        }

        else
        {
          v36 = 2;
        }

        if ((v32 & 0xFF000000) != 0)
        {
          v36 = 1;
        }
      }

      if (v36 >= a2)
      {
        v36 = a2;
      }

      v13[*(v13 + 136) + 36] = (((v35 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v35 & 0xFE000) >> 13) & 0x7F) << 56) | ((v35 & 0x3F) << 24)) + (v36 << 8) + 0x4040000006002000;
    }

    icu::CollationBuilder::setCaseBits(v13, &v47, a6, a7);
    v17 = *a7;
    if (v17 > 0)
    {
      goto LABEL_8;
    }

    v28 = *(v13 + 136);
    if (*(a5 + 4) >= 0x20u)
    {
      v29 = v13[1];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v42 = &unk_1F0935D00;
      LOWORD(v43) = 2;
      (*(*v29 + 24))(v29, a5, &v42, a7);
      if (*a7 > 0)
      {
        v30 = "normalizing the relation extension";
LABEL_58:
        *a6 = v30;
        icu::UnicodeString::~UnicodeString(v30, &v42);
        goto LABEL_8;
      }

      CEs = icu::CollationDataBuilder::getCEs(v13[9], &v42, v13 + 37, *(v13 + 136));
      *(v13 + 136) = CEs;
      if (CEs >= 32)
      {
        *a7 = U_ILLEGAL_ARGUMENT_ERROR;
        v30 = "extension string adds too many collation elements (more than 31 total)";
        goto LABEL_58;
      }

      icu::UnicodeString::~UnicodeString(v38, &v42);
    }

    if (*(v13 + 81))
    {
      v39 = *(v13 + 136);
      v40 = 0xFFFFFFFFLL;
      goto LABEL_75;
    }

    if (sub_1952CB634(a3, &v52))
    {
      if (*a7 > 0)
      {
LABEL_73:
        v40 = 0xFFFFFFFFLL;
        goto LABEL_74;
      }
    }

    else
    {
      v41 = sub_1952CB634(a4, &v47);
      v40 = 0xFFFFFFFFLL;
      if (!v41 || *a7 >= 1)
      {
        goto LABEL_74;
      }
    }

    if (!(*(*v13[2] + 88))(v13[2], a3, a7) || icu::CollationBuilder::ignoreString(v13, a4, a7))
    {
      goto LABEL_73;
    }

    v40 = icu::CollationBuilder::addIfDifferent(v13, a3, a4, v13 + 37, *(v13 + 136), 0xFFFFFFFFLL, a7);
LABEL_74:
    v39 = *(v13 + 136);
    if (!*(v13 + 81))
    {
      icu::CollationBuilder::addWithClosure(v13, &v52, &v47, v13 + 37, v39, v40, a7);
      goto LABEL_76;
    }

LABEL_75:
    icu::CollationBuilder::addIfDifferent(v13, &v52, &v47, v13 + 37, v39, v40, a7);
LABEL_76:
    v17 = *a7;
    if (v17 < 1)
    {
      *(v13 + 136) = v28;
      goto LABEL_8;
    }

    v17 = "writing collation elements";
    goto LABEL_7;
  }

  return this;
}

uint64_t icu::CollationBuilder::insertTailoredNodeAfter(icu::CollationBuilder *this, uint64_t CommonNode, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 >= 1)
  {
    CommonNode = icu::CollationBuilder::findCommonNode(this, CommonNode, 1);
    if (a3 != 1)
    {
      LODWORD(CommonNode) = icu::CollationBuilder::findCommonNode(this, CommonNode, 2);
    }
  }

  if ((CommonNode & 0x80000000) != 0 || (v9 = *(this + 148), v9 <= CommonNode) || (v10 = (*(*(this + 76) + 8 * CommonNode) >> 8) & 0xFFFFF) == 0)
  {
LABEL_15:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v11 = v10;
      if (v9 <= v10)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v12 = *(*(this + 76) + 8 * v10);
      }

      if ((v12 & 3) <= a3)
      {
        break;
      }

      v10 = (v12 >> 8) & 0xFFFFF;
      LODWORD(CommonNode) = v11;
      if (!v10)
      {
        LODWORD(CommonNode) = v11;
        goto LABEL_15;
      }
    }
  }

  return icu::CollationBuilder::insertNodeBetween(this, CommonNode, v11, a3 | 8, a4);
}

void icu::CollationBuilder::setCaseBits(icu::CollationBuilder *this, const icu::UnicodeString *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v45 = v4;
  v46 = v5;
  v7 = *(this + 136);
  if (v7 < 1)
  {
    return;
  }

  v10 = 0;
  v11 = (this + 296);
  v12 = *(this + 136);
  v13 = (this + 296);
  do
  {
    v15 = *v13++;
    v14 = v15;
    if ((v15 - 1174405120) >> 30 != 3)
    {
      if (!HIBYTE(v14))
      {
        goto LABEL_7;
      }

LABEL_6:
      v10 = (v10 + 1);
      goto LABEL_7;
    }

    if ((v14 & 0x300) == 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    --v12;
  }

  while (v12);
  if (v10 <= 0)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v16 = *(a2 + 4);
  if ((v16 & 0x11) != 0)
  {
    v17 = 0;
  }

  else if ((v16 & 2) != 0)
  {
    v17 = a2 + 10;
  }

  else
  {
    v17 = *(a2 + 3);
  }

  v40 = 0u;
  v41 = 0u;
  v19 = v16;
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v20 = *(this + 5);
  v21 = v16 >> 5;
  if (v19 < 0)
  {
    v21 = *(a2 + 3);
  }

  v37[1] = *v20;
  v37[2] = v20;
  *(&v38 + 1) = v39 + 8;
  LODWORD(v39[0]) = 40;
  DWORD2(v40) = 0;
  DWORD2(v41) = -1;
  v37[0] = &unk_1F09444F0;
  v42 = v17;
  v43 = v17;
  v44 = &v17[2 * v21];
  CEs = icu::CollationIterator::fetchCEs(v37, a4);
  if (*a4 > 0)
  {
    *a3 = "fetching root CEs for tailored string";
    icu::UTF16CollationIterator::~UTF16CollationIterator(v37, "fetching root CEs for tailored string");
    return;
  }

  if (CEs < 2)
  {
    v23 = 0;
    v25 = 0;
    LODWORD(v30) = 0;
    goto LABEL_34;
  }

  v23 = 0;
  v24 = 0;
  LODWORD(v25) = 0;
  v26 = (CEs - 1);
  v27 = *(&v38 + 1);
  while (2)
  {
    v29 = *v27++;
    v28 = v29;
    if (!HIDWORD(v29))
    {
      v30 = v24;
      goto LABEL_31;
    }

    v30 = (v24 + 1);
    v31 = v28 >> 14;
    if (v30 < v10)
    {
      v23 |= v31 << (2 * v24);
      goto LABEL_31;
    }

    if (v30 == v10)
    {
      LODWORD(v25) = v31;
      v30 = v10;
      goto LABEL_31;
    }

    if (v31 == v25)
    {
LABEL_31:
      v24 = v30;
      if (!--v26)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  LODWORD(v25) = 1;
LABEL_32:
  v25 = v25;
LABEL_34:
  v32 = v25 << (2 * v10 - 2);
  if (v30 < v10)
  {
    v32 = 0;
  }

  v18 = v32 | v23;
  icu::UTF16CollationIterator::~UTF16CollationIterator(v37, v23);
  v7 = *(this + 136);
LABEL_37:
  if (v7 >= 1)
  {
    v33 = v7;
    while (1)
    {
      v34 = *v11;
      v35 = *v11 & 0xFFFFFFFFFFFF3FFFLL;
      if ((v35 - 1174405120) >> 30 != 3)
      {
        break;
      }

      v36 = (v35 >> 8) & 3;
      if (v36 == 2)
      {
        goto LABEL_47;
      }

      if (!v36)
      {
        goto LABEL_46;
      }

LABEL_48:
      *v11++ = v35;
      if (!--v33)
      {
        return;
      }
    }

    if (!HIBYTE(v34))
    {
      if ((v34 & 0xFF000000) != 0 || !v35)
      {
        goto LABEL_48;
      }

LABEL_47:
      v35 |= 0x8000uLL;
      goto LABEL_48;
    }

LABEL_46:
    v35 |= (v18 & 3) << 14;
    v18 >>= 2;
    goto LABEL_48;
  }
}

uint64_t sub_1952CB634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(a2 + 8) & 1;
  }

  else
  {
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(a1 + 12);
    }

    else
    {
      v3 = v2 >> 5;
    }

    v4 = 0;
    v5 = *(a2 + 8);
    if ((v5 & 0x8000u) == 0)
    {
      v6 = v5 >> 5;
    }

    else
    {
      v6 = *(a2 + 12);
    }

    if ((v5 & 1) == 0 && v3 == v6)
    {
      if ((v5 & 2) != 0)
      {
        v7 = (a2 + 10);
      }

      else
      {
        v7 = *(a2 + 24);
      }

      v4 = icu::UnicodeString::doEquals(a1, v7, v3);
    }
  }

  return v4 ^ 1u;
}

BOOL icu::CollationBuilder::ignoreString(icu::CollationBuilder *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 1;
  }

  if (!(*(**(this + 2) + 88))(*(this + 2)))
  {
    return 1;
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  if (!v6)
  {
    return 0;
  }

  if ((v5 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  return (*v7 - 44032) >> 2 < 0xAE9;
}

uint64_t icu::CollationBuilder::addIfDifferent(icu::CollationDataBuilder **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    if (icu::CollationDataBuilder::getCEs(this[9], a2, a3, v19, 0) != a5)
    {
      goto LABEL_9;
    }

    if (a5 >= 1)
    {
      if (*a4 != *&v19[0])
      {
        goto LABEL_9;
      }

      v14 = 1;
      do
      {
        v15 = v14;
        if (a5 == v14)
        {
          break;
        }

        v16 = a4[v14];
        v17 = *(v19 + v14++);
      }

      while (v16 == v17);
      if (v15 < a5)
      {
LABEL_9:
        if (a6 == -1)
        {
          a6 = (*(*this[9] + 32))(this[9], a4, a5, a7);
        }

        icu::CollationDataBuilder::addCE32(this[9], a2, a3, a6, a7);
      }
    }
  }

  return a6;
}

uint64_t icu::CollationBuilder::addWithClosure(icu::CollationDataBuilder **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v13 = icu::CollationBuilder::addIfDifferent(this, a2, a3, a4, a5, a6, a7);
  v14 = icu::CollationBuilder::addOnlyClosure(this, a2, a3, a4, a5, v13, a7);
  icu::CollationBuilder::addTailComposites(this, a2, a3, a7);
  return v14;
}

void icu::CollationBuilder::suppressContractions(uint64_t this, const icu::UnicodeSet *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    icu::CollationDataBuilder::suppressContractions(*(this + 72), a2, a4);
    if (*a4 >= 1)
    {
      *a3 = "application of [suppressContractions [set]] failed";
    }
  }
}

icu::UVector **icu::CollationBuilder::optimize(icu::UVector **this, const icu::UnicodeSet *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    return icu::UnicodeSet::addAll(this + 11, a2);
  }

  return this;
}

uint64_t icu::CollationBuilder::addOnlyClosure(icu::CollationDataBuilder **this, UErrorCode *a2, UErrorCode *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return a6;
  }

  if (*(a2 + 4) <= 0x1Fu)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    icu::CanonicalIterator::CanonicalIterator(&v48, a3, a7);
    if (*a7 >= 1)
    {
      goto LABEL_78;
    }

    memset(v42 + 8, 0, 56);
    *&v42[0] = &unk_1F0935D00;
    WORD4(v42[0]) = 2;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    icu::CanonicalIterator::next(&v48, &v44);
    v14 = WORD4(v44);
    if (BYTE8(v44))
    {
      goto LABEL_77;
    }

    v15 = 3002;
    while (1)
    {
      if (!--v15)
      {
        v14 = 31;
        *a7 = U_INPUT_TOO_LONG_ERROR;
LABEL_77:
        icu::UnicodeString::~UnicodeString(v14, &v44);
        icu::UnicodeString::~UnicodeString(v36, v42);
        goto LABEL_78;
      }

      if (!icu::CollationBuilder::ignoreString(this, &v44, a7))
      {
        if (BYTE8(v44))
        {
          v14 = *(a3 + 4);
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((SWORD4(v44) & 0x8000u) == 0)
          {
            v16 = WORD4(v44) >> 5;
          }

          else
          {
            v16 = HIDWORD(v44);
          }

          v17 = *(a3 + 4);
          if ((v17 & 0x8000u) == 0)
          {
            v18 = v17 >> 5;
          }

          else
          {
            v18 = *(a3 + 3);
          }

          if ((v17 & 1) != 0 || v16 != v18 || ((v17 & 2) != 0 ? (v19 = a3 + 10) : (v19 = *(a3 + 3)), !icu::UnicodeString::doEquals(&v44, v19, v16)))
          {
LABEL_25:
            a6 = icu::CollationBuilder::addIfDifferent(this, v42, &v44, a4, a5, a6, a7);
            v14 = *a7;
            if (v14 >= 1)
            {
              goto LABEL_77;
            }
          }
        }
      }

      icu::UnicodeString::~UnicodeString(v14, &v44);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      icu::CanonicalIterator::next(&v48, &v44);
      v14 = WORD4(v44);
      if (BYTE8(v44))
      {
        goto LABEL_77;
      }
    }
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  icu::CanonicalIterator::CanonicalIterator(&v48, a2, a7);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  icu::CanonicalIterator::CanonicalIterator(v42, a3, a7);
  if (*a7 > 0)
  {
    goto LABEL_73;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  icu::CanonicalIterator::next(&v48, &v44);
  v20 = WORD4(v44);
  if (BYTE8(v44))
  {
LABEL_72:
    icu::UnicodeString::~UnicodeString(v20, &v44);
    goto LABEL_73;
  }

  v21 = 0;
  while (1)
  {
    v22 = *a7;
    if (v22 > 0 || !(*(*this[2] + 88))(this[2], &v44, a7))
    {
      goto LABEL_71;
    }

    if (BYTE8(v44))
    {
      v23 = a2[2] & 1;
    }

    else
    {
      v23 = 0;
      if ((SWORD4(v44) & 0x8000u) == 0)
      {
        v24 = WORD4(v44) >> 5;
      }

      else
      {
        v24 = HIDWORD(v44);
      }

      v25 = *(a2 + 4);
      if ((v25 & 0x8000u) == 0)
      {
        v26 = v25 >> 5;
      }

      else
      {
        v26 = *(a2 + 3);
      }

      if ((v25 & 1) == 0 && v24 == v26)
      {
        if ((v25 & 2) != 0)
        {
          v27 = a2 + 10;
        }

        else
        {
          v27 = *(a2 + 3);
        }

        v23 = icu::UnicodeString::doEquals(&v44, v27, v24);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    icu::CanonicalIterator::next(v42, &v38);
    v28 = WORD4(v38);
    if ((BYTE8(v38) & 1) == 0)
    {
      break;
    }

LABEL_70:
    icu::UnicodeString::~UnicodeString(v28, &v38);
    icu::CanonicalIterator::reset(v42);
LABEL_71:
    icu::UnicodeString::~UnicodeString(v22, &v44);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    icu::CanonicalIterator::next(&v48, &v44);
    v20 = WORD4(v44);
    if (BYTE8(v44))
    {
      goto LABEL_72;
    }
  }

  if (v21 <= 3001)
  {
    v29 = 3001;
  }

  else
  {
    v29 = v21;
  }

  while (v29 != v21)
  {
    if (!icu::CollationBuilder::ignoreString(this, &v38, a7))
    {
      if (v23)
      {
        if (BYTE8(v38))
        {
          v30 = *(a3 + 4);
          if (v30)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if ((SWORD4(v38) & 0x8000u) == 0)
          {
            v31 = WORD4(v38) >> 5;
          }

          else
          {
            v31 = HIDWORD(v38);
          }

          v32 = *(a3 + 4);
          if ((v32 & 0x8000u) == 0)
          {
            v33 = v32 >> 5;
          }

          else
          {
            v33 = *(a3 + 3);
          }

          if ((v32 & 1) == 0 && v31 == v33)
          {
            v34 = (v32 & 2) != 0 ? (a3 + 10) : *(a3 + 3);
            if (icu::UnicodeString::doEquals(&v38, v34, v31))
            {
              goto LABEL_69;
            }
          }
        }
      }

      a6 = icu::CollationBuilder::addIfDifferent(this, &v44, &v38, a4, a5, a6, a7);
      v30 = *a7;
      if (v30 >= 1)
      {
        goto LABEL_75;
      }
    }

LABEL_69:
    icu::UnicodeString::~UnicodeString(v30, &v38);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    icu::CanonicalIterator::next(v42, &v38);
    v28 = WORD4(v38);
    ++v21;
    if (BYTE8(v38))
    {
      goto LABEL_70;
    }
  }

  v30 = 31;
  *a7 = U_INPUT_TOO_LONG_ERROR;
LABEL_75:
  icu::UnicodeString::~UnicodeString(v30, &v38);
  icu::UnicodeString::~UnicodeString(v35, &v44);
LABEL_73:
  icu::CanonicalIterator::~CanonicalIterator(v42);
LABEL_78:
  icu::CanonicalIterator::~CanonicalIterator(&v48);
  return a6;
}

void icu::CollationBuilder::addTailComposites(icu::CollationBuilder *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v5 = *(a3 + 4);
    v6 = v5;
    v7 = v5 >> 5;
    v8 = v6 >= 0 ? v7 : *(a3 + 3);
    if (v8)
    {
      while (1)
      {
        v12 = icu::UnicodeString::char32At(a3, v8 - 1);
        if (!(*(**(this + 1) + 80))(*(this + 1), v12))
        {
          break;
        }

        if (v12 >= 0x10000)
        {
          v13 = -2;
        }

        else
        {
          v13 = -1;
        }

        v8 = (v13 + v8);
        if (!v8)
        {
          return;
        }
      }

      if ((v12 - 4371) <= 0xFFFFFFEC)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        icu::UnicodeSet::UnicodeSet(v23);
        if (icu::Normalizer2Impl::getCanonStartSet(*(this + 3), v12, v23))
        {
          v52 = 0u;
          v55 = 0;
          v54 = 0u;
          v53 = 0u;
          v50 = 0;
          v51 = &unk_1F0935D00;
          LOWORD(v52) = 2;
          v47 = 0u;
          v49 = 0u;
          v48 = 0u;
          v46 = &unk_1F0935D00;
          LOWORD(v47) = 2;
          v42 = 0u;
          v45 = 0;
          v44 = 0u;
          v43 = 0u;
          v41 = &unk_1F0935D00;
          LOWORD(v42) = 2;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *v25 = 0u;
          memset(v22, 0, sizeof(v22));
          icu::UnicodeSetIterator::UnicodeSetIterator(v22, v23);
          while (icu::UnicodeSetIterator::next(v22))
          {
            v15 = DWORD2(v22[0]);
            (*(**(this + 1) + 56))(*(this + 1), DWORD2(v22[0]), &v51);
            if (icu::CollationBuilder::mergeCompositeIntoString(this, a3, v8, v15, &v51, &v46, &v41, a4))
            {
              CEs = icu::CollationDataBuilder::getCEs(*(this + 9), a2, &v46, v25, 0);
              if (CEs <= 31)
              {
                v17 = CEs;
                v18 = icu::CollationBuilder::addIfDifferent(this, a2, &v41, v25, CEs, 0xFFFFFFFFLL, a4);
                if (v18 != -1)
                {
                  icu::CollationBuilder::addOnlyClosure(this, a2, &v46, v25, v17, v18, a4);
                }
              }
            }
          }

          icu::UnicodeSetIterator::~UnicodeSetIterator(v22);
          icu::UnicodeString::~UnicodeString(v19, &v41);
          icu::UnicodeString::~UnicodeString(v20, &v46);
          icu::UnicodeString::~UnicodeString(v21, &v51);
        }

        icu::UnicodeSet::~UnicodeSet(v14, v23);
      }
    }
  }
}

uint64_t icu::CollationBuilder::mergeCompositeIntoString(icu::CollationBuilder *this, const icu::UnicodeString *a2, uint64_t a3, unsigned int a4, const icu::UnicodeString *a5, icu::UnicodeString *a6, icu::UnicodeString *a7, UErrorCode *a8)
{
  if (*a8 > 0)
  {
    return 0;
  }

  v16 = icu::UnicodeString::moveIndex32(a5, 0, 1);
  v17 = *(a5 + 4);
  if ((v17 & 0x8000u) == 0)
  {
    v18 = v17 >> 5;
  }

  else
  {
    v18 = *(a5 + 3);
  }

  if (v16 == v18)
  {
    return 0;
  }

  v19 = v16;
  if ((v17 & 1) == 0)
  {
    if (v16 < 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
      v21 = v19;
      if (v18 >= v19)
      {
LABEL_16:
        if ((v17 & 2) != 0)
        {
          v22 = a5 + 10;
        }

        else
        {
          v22 = *(a5 + 3);
        }

        result = icu::UnicodeString::doCompare(a2, a3, 0x7FFFFFFF, v22, v21, v18 - v21);
        if (result)
        {
          goto LABEL_20;
        }

        return result;
      }
    }

    v21 = v20;
    goto LABEL_16;
  }

  result = (*(a2 + 8) & 1) == 0;
  if ((*(a2 + 8) & 1) == 0)
  {
LABEL_20:
    icu::UnicodeString::unBogus(a6);
    v23 = *(a6 + 4);
    v24 = v23;
    v25 = v23 >> 5;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a6 + 3);
    }

    icu::UnicodeString::doReplace(a6, 0, v26, a2, 0, a3);
    icu::UnicodeString::unBogus(a7);
    v27 = *(a7 + 4);
    v28 = v27;
    v29 = v27 >> 5;
    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = *(a7 + 3);
    }

    v50 = a7;
    v31 = icu::UnicodeString::doReplace(a7, 0, v30, a2, 0, (a3 - v19));
    icu::UnicodeString::append(v31, a4);
    v32 = 0;
LABEL_27:
    v33 = *(a2 + 4);
    v34 = v33;
    v35 = v33 >> 5;
    if (v34 < 0)
    {
      v35 = *(a2 + 3);
    }

    if (a3 >= v35)
    {
      v39 = *(a5 + 4);
      v41 = *(a5 + 3);
      v40 = v39 >> 5;
    }

    else
    {
      v36 = icu::UnicodeString::char32At(a2, a3);
      v37 = (*(**(this + 1) + 80))(*(this + 1), v36);
      while (1)
      {
        v38 = *(a5 + 4);
        v39 = v38;
        v40 = v38 >> 5;
        v41 = *(a5 + 3);
        v42 = v39 >= 0 ? v40 : *(a5 + 3);
        if (v19 >= v42)
        {
          break;
        }

        v43 = icu::UnicodeString::char32At(a5, v19);
        v44 = (*(**(this + 1) + 80))(*(this + 1), v43);
        if ((v44 - 1) >= v37)
        {
          return 0;
        }

        v32 = v44;
        if (v44 >= v37)
        {
          if (v43 != v36)
          {
            return 0;
          }

          icu::UnicodeString::append(a6, v36);
          if (v36 < 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }

          LODWORD(a3) = v45 + a3;
          LODWORD(v36) = -1;
        }

        else
        {
          icu::UnicodeString::append(a6, v43);
          if (v43 < 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }
        }

        v19 += v45;
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      if ((v36 & 0x80000000) == 0)
      {
        if (v37 < v32)
        {
          return 0;
        }

        icu::UnicodeString::doAppend(a6, a2, a3, 0x7FFFFFFFLL);
        v46 = v50;
        v47 = a2;
        v48 = a3;
        goto LABEL_56;
      }
    }

    if ((v39 & 0x8000u) == 0)
    {
      v49 = v40;
    }

    else
    {
      v49 = v41;
    }

    if (v19 >= v49)
    {
      return 1;
    }

    v46 = a6;
    v47 = a5;
    v48 = v19;
LABEL_56:
    icu::UnicodeString::doAppend(v46, v47, v48, 0x7FFFFFFFLL);
    return 1;
  }

  return result;
}

BOOL icu::CollationBuilder::sameCEs(icu::CollationBuilder *this, const uint64_t *a2, void *a3, const uint64_t *a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  if (*this != *a3)
  {
    return 0;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (a2 == v4)
    {
      break;
    }

    v6 = *(this + v4);
    v7 = a3[v4++];
  }

  while (v6 == v7);
  return v5 >= a2;
}

uint64_t icu::CollationBuilder::countTailoredNodes(icu::CollationBuilder *this, const uint64_t *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(this + a2);
    if ((v5 & 3) < a3)
    {
      break;
    }

    if ((v5 & 3) == a3)
    {
      if ((v5 & 8) == 0)
      {
        return result;
      }

      result = (result + 1);
    }

    LODWORD(a2) = (v5 >> 8) & 0xFFFFF;
  }

  while (a2);
  return result;
}

void sub_1952CC6C0(icu::CollationDataBuilder::CEModifier *a1)
{
  icu::CollationDataBuilder::CEModifier::~CEModifier(a1);

  JUMPOUT(0x19A8B2600);
}

icu::RuleBasedCollator *ucol_openRules(const UChar *a1, unsigned int a2, uint64_t a3, uint64_t a4, UParseError *a5, icu::CollationRoot *a6)
{
  if (*a6 <= 0)
  {
    if (a1 || !a2)
    {
      operator new();
    }

    *a6 = 1;
  }

  return 0;
}

void ucol_getUnsafeSet(uint64_t a1, icu::UnicodeSet *a2, UErrorCode *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x400uLL);
  uset_clear(a2);
  uset_applyPattern(a2, "[", 24, 1, a3);
  uset_addRange(a2, 0xD800u, 0xDFFFu);
  uset_open(0, 0);
}

uint64_t sub_1952CC9FC(uint64_t a1, unsigned int a2)
{
  result = 0x101000100;
  if ((a2 & 0xFE) != 0 && ((a2 >> 8) & 0xFE) - 70 >= 0xFFFFFFC0)
  {
    return *(*(a1 + 8) + 8 * (((a2 - 1077937696) >> 11) & 0xFE000 | ((a2 - 1077937696) >> 10) & 0x1FC0 | ((a2 - 1077937696) >> 8) & 0x3F)) | (a2 << 8) & 0xC000;
  }

  return result;
}

uint64_t sub_1952CCA5C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1174405120) >> 30 == 3)
  {
    return *(*(a1 + 8) + 8 * (((a2 - 0x4040000006002000) >> 43) & 0xFE000 | ((a2 - 0x4040000006002000) >> 42) & 0x1FC0 | ((a2 - 0x4040000006002000) >> 24) & 0x3F)) | a2 & 0xC000;
  }

  else
  {
    return 0x101000100;
  }
}

void sub_1952CCAB4(icu::CollationRuleParser::Importer *a1)
{
  icu::CollationRuleParser::Importer::~Importer(a1);

  JUMPOUT(0x19A8B2600);
}

unint64_t icu::CollationCompare::compareUpToQuaternary(icu::CollationCompare *this, icu::CollationIterator *a2, icu::CollationIterator *a3, UErrorCode *a4, UErrorCode *a5)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a3 + 6);
  if ((v11 & 0xC) != 0)
  {
    v12 = *(a3 + 7) + 1;
  }

  else
  {
    v12 = 0;
  }

  do
  {
    while (1)
    {
      v13 = sub_1952C5F10(this, a4);
      v14 = HIDWORD(v13);
      if (v13 > 0x2000000FFFFFFFFLL && v12 > HIDWORD(v13))
      {
        break;
      }

      if (v14)
      {
        goto LABEL_15;
      }
    }

    do
    {
      for (*(*(this + 4) + 8 * *(this + 92) - 8) = v13 & 0xFFFFFFFF00000000; ; *(*(this + 4) + 8 * *(this + 92) - 8) = 0)
      {
        v13 = sub_1952C5F10(this, a4);
        if (HIDWORD(v13))
        {
          break;
        }
      }

      v14 = HIDWORD(v13);
      v10 = 1;
    }

    while (v13 > 0x2000000FFFFFFFFLL && v12 > HIDWORD(v13));
LABEL_15:
    while (1)
    {
      result = sub_1952C5F10(a2, a4);
      v15 = HIDWORD(result);
      if (result > 0x2000000FFFFFFFFLL && v12 > HIDWORD(result))
      {
        break;
      }

      if (v15)
      {
        goto LABEL_24;
      }
    }

    do
    {
      for (*(*(a2 + 4) + 8 * *(a2 + 92) - 8) = result & 0xFFFFFFFF00000000; ; *(*(a2 + 4) + 8 * *(a2 + 92) - 8) = 0)
      {
        result = sub_1952C5F10(a2, a4);
        if (HIDWORD(result))
        {
          break;
        }
      }

      v15 = HIDWORD(result);
      v10 = 1;
    }

    while (result > 0x2000000FFFFFFFFLL && v12 > HIDWORD(result));
LABEL_24:
    if (v14 != v15)
    {
      v16 = *(a3 + 4);
      if (v16)
      {
        if (v14 == 1 || *(v16 + (v14 >> 24)))
        {
          LODWORD(v14) = v14 & 0xFFFFFF | (*(v16 + (v14 >> 24)) << 24);
        }

        else
        {
          LODWORD(v14) = icu::CollationSettings::reorderEx(a3, v14);
          v16 = *(a3 + 4);
        }

        v28 = *(v16 + (v15 >> 24));
        if (v15 < 2 || v28)
        {
          LODWORD(v15) = v15 & 0xFFFFFF | (v28 << 24);
        }

        else
        {
          LODWORD(v15) = icu::CollationSettings::reorderEx(a3, v15);
        }
      }

      v29 = v14 >= v15;
      goto LABEL_54;
    }
  }

  while (v14 != 1);
  if (*a4 > 0)
  {
    return 0;
  }

  v17 = v11 >> 12;
  if (v11 >> 12 < 1)
  {
LABEL_100:
    if ((v11 & 0x400) != 0)
    {
      LODWORD(v54) = 0;
      LODWORD(v55) = 0;
      v56 = *(this + 4);
      v57 = *(a2 + 4);
      while (1)
      {
        v54 = v54;
        if (v11 >= 0x1000)
        {
          do
          {
            v58 = *(v56 + 8 * v54++);
          }

          while (v58 < 0x10000);
          v55 = v55;
          do
          {
            v60 = *(v57 + 8 * v55++);
          }

          while (v60 < 0x10000);
        }

        else
        {
          do
          {
            v58 = *(v56 + 8 * v54++);
            if (HIDWORD(v58))
            {
              v59 = v58 == 0;
            }

            else
            {
              v59 = 1;
            }
          }

          while (v59);
          v55 = v55;
          do
          {
            v60 = *(v57 + 8 * v55++);
            if (HIDWORD(v60))
            {
              v61 = v60 == 0;
            }

            else
            {
              v61 = 1;
            }
          }

          while (v61);
        }

        v62 = v60 & 0xC000;
        if ((v58 & 0xC000) != v62)
        {
          break;
        }

        if (WORD1(v58) == 256)
        {
          goto LABEL_118;
        }
      }

      v29 = (v58 & 0xC000) >= v62;
      if ((v11 & 0x100) != 0)
      {
        v30 = 1;
LABEL_55:
        if (v29)
        {
          return -v30;
        }

        else
        {
          return v30;
        }
      }
    }

    else
    {
LABEL_118:
      if (v17 < 2)
      {
        return 0;
      }

      LODWORD(v63) = 0;
      LODWORD(v64) = 0;
      v65 = 0;
      if ((v11 & 0x600) == 0x200)
      {
        v66 = 65343;
      }

      else
      {
        v66 = 16191;
      }

      v67 = *(this + 4);
      v68 = *(a2 + 4);
      do
      {
        v63 = v63;
        do
        {
          v69 = *(v67 + 8 * v63++);
          v65 |= v69;
          v70 = v66 & v69;
        }

        while ((v66 & v69) == 0);
        v64 = v64;
        do
        {
          v71 = *(v68 + 8 * v64++);
          v65 |= v71;
          v72 = v66 & v71;
        }

        while ((v66 & v71) == 0);
        if (v70 != v72)
        {
          v87 = v11 & 0x700;
          v88 = v70 + 0x4000;
          if (v69 >= 0x10000)
          {
            v88 = v70 ^ 0xC000;
          }

          if (v70 < 0x101)
          {
            v88 = v66 & v69;
          }

          v89 = v72 + 0x4000;
          if (v71 >= 0x10000)
          {
            v89 = v72 ^ 0xC000;
          }

          if (v72 < 0x101)
          {
            v89 = v66 & v71;
          }

          v90 = v87 == 768;
          if (v87 == 768)
          {
            v91 = v88;
          }

          else
          {
            v91 = v66 & v69;
          }

          if (v90)
          {
            v92 = v89;
          }

          else
          {
            v92 = v66 & v71;
          }

          v29 = v91 >= v92;
          goto LABEL_54;
        }
      }

      while (v70 != 256);
      if (v17 == 2 || !(v10 | v65 & 0xC0))
      {
        return 0;
      }

      LODWORD(v73) = 0;
      LODWORD(v74) = 0;
      while (1)
      {
        v73 = v73;
        do
        {
          v75 = (v67 + 8 * v73++);
          v77 = v75;
          LODWORD(v75) = *v75;
          v76 = v77[1];
          v78 = v75;
          v79 = v75 | 0xFFFFFF3F;
          if (v78 >= 0x101)
          {
            v80 = v79;
          }

          else
          {
            v80 = v76;
          }
        }

        while (!v80);
        v74 = v74;
        do
        {
          v81 = (v68 + 8 * v74++);
          v83 = v81;
          LODWORD(v81) = *v81;
          v82 = v83[1];
          v84 = v81;
          v85 = v81 | 0xFFFFFF3F;
          if (v84 >= 0x101)
          {
            v86 = v85;
          }

          else
          {
            v86 = v82;
          }
        }

        while (!v86);
        if (v80 != v86)
        {
          break;
        }

        result = 0;
        if (v80 == 1)
        {
          return result;
        }
      }

      if (*(a3 + 4))
      {
        LODWORD(v80) = sub_1952CD0C0(a3, v80);
        LODWORD(v86) = sub_1952CD0C0(a3, v86);
      }

      v29 = v80 >= v86;
    }

LABEL_54:
    v30 = -1;
    goto LABEL_55;
  }

  v18 = *(this + 4);
  v19 = *(a2 + 4);
  if ((v11 & 0x800) != 0)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = v31;
      v34 = (v18 + 8 * v31);
      do
      {
        v35 = *v34++;
        ++v33;
      }

      while ((v35 - 0x200000100000000) >> 57 != 127);
      v36 = v32;
      v37 = (v19 + 8 * v32);
      do
      {
        v39 = *v37++;
        v38 = v39;
        ++v36;
      }

      while ((v39 - 0x200000100000000) >> 57 != 127);
      v40 = v33 - 1;
      v41 = v36 - 1;
      do
      {
        if (v40 <= v31)
        {
          v45 = 0;
          v46 = 28;
        }

        else
        {
          v42 = v40 - 1;
          do
          {
            v43 = *(v18 + 8 * v42);
            --v40;
            if (WORD1(v43))
            {
              v44 = 1;
            }

            else
            {
              v44 = v42 <= v31;
            }

            --v42;
          }

          while (!v44);
          v45 = WORD1(v43);
          if (v43 >= 0x10000)
          {
            v46 = 0;
          }

          else
          {
            v46 = 28;
          }
        }

        if (v41 <= v32)
        {
          v50 = 0;
        }

        else
        {
          v47 = v41 - 1;
          do
          {
            v48 = *(v19 + 8 * v47);
            --v41;
            if (WORD1(v48))
            {
              v49 = 1;
            }

            else
            {
              v49 = v47 <= v32;
            }

            --v47;
          }

          while (!v49);
          v50 = WORD1(v48);
        }

        v51 = v45 == v50;
        if (v45 < v50)
        {
          v52 = -1;
        }

        else
        {
          v52 = 1;
        }

        if (v51)
        {
          v53 = v46;
        }

        else
        {
          v53 = 1;
        }

        if (v51)
        {
          result = result;
        }

        else
        {
          result = v52;
        }
      }

      while (!v53);
      if (v53 == 28)
      {
        if ((v38 & 0x3FFFFFF00000000) == 0x100000000)
        {
          goto LABEL_100;
        }

        v53 = 0;
        v31 = v33;
        v32 = v36;
      }
    }

    while (!v53);
  }

  else
  {
    LODWORD(v20) = 0;
    LODWORD(v21) = 0;
    do
    {
      v20 = v20;
      do
      {
        v22 = *(v18 + 8 * v20++);
      }

      while (v22 < 0x10000);
      v21 = v21;
      do
      {
        v23 = *(v19 + 8 * v21++);
      }

      while (v23 < 0x10000);
      v24 = WORD1(v22);
      v25 = v24 == WORD1(v23);
      if (v24 < WORD1(v23))
      {
        v26 = -1;
      }

      else
      {
        v26 = 1;
      }

      v27 = 16 * (v24 == 256);
      if (v25)
      {
        result = result;
      }

      else
      {
        v27 = 1;
        result = v26;
      }
    }

    while (!v27);
    if (v27 == 16)
    {
      goto LABEL_100;
    }
  }

  return result;
}

uint64_t sub_1952CD0C0(icu::CollationSettings *a1, uint64_t a2)
{
  if (a2 < 2 || *(*(a1 + 4) + (a2 >> 24)))
  {
    return a2 & 0xFFFFFF | (*(*(a1 + 4) + (a2 >> 24)) << 24);
  }

  else
  {
    return icu::CollationSettings::reorderEx(a1, a2);
  }
}

uint64_t icu::CollationData::getIndirectCE32(icu::CollationData *this, uint64_t a2)
{
  v2 = a2 & 0xF;
  switch(v2)
  {
    case 13:
      return 0xFFFFFFFFLL;
    case 11:
      return **(this + 1);
    case 10:
      return *(*(this + 1) + 4 * (a2 >> 13));
  }

  return a2;
}

uint64_t icu::CollationData::getFinalCE32(icu::CollationData *this, uint64_t a2)
{
  if ((~a2 & 0xC0) == 0)
  {
    v2 = a2 & 0xF;
    switch(v2)
    {
      case 13:
        return 0xFFFFFFFFLL;
      case 11:
        return **(this + 1);
      case 10:
        return *(*(this + 1) + 4 * (a2 >> 13));
    }
  }

  return a2;
}

uint64_t icu::CollationData::getSingleCE(icu::CollationData *this, icu::Collation *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = this;
  v7 = sub_1952C6CA0(this, a2);
  if (v7 == 192)
  {
    v6 = v6[4];
    v7 = sub_1952C6CA0(v6, a2);
  }

  while (2)
  {
    if ((~v7 & 0xC0) != 0)
    {
      return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
    }

    switch(v7 & 0xF)
    {
      case 1u:
        return (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
      case 2u:
        return v7 & 0xFFFFFF00;
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xCu:
      case 0xDu:
        goto LABEL_15;
      case 5u:
        if ((v7 & 0x1F00) == 0x100)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      case 6u:
        if ((v7 & 0x1F00) == 0x100)
        {
          result = *(v6[2] + 8 * (v7 >> 13));
        }

        else
        {
LABEL_15:
          result = 0;
          v9 = U_UNSUPPORTED_ERROR;
LABEL_16:
          *a3 = v9;
        }

        break;
      case 0xAu:
LABEL_8:
        v8 = (v6[1] + 4 * (v7 >> 13));
        goto LABEL_10;
      case 0xBu:
        v8 = v6[1];
LABEL_10:
        v7 = *v8;
        continue;
      case 0xEu:
        ThreeBytePrimaryForOffsetData = icu::Collation::getThreeBytePrimaryForOffsetData(a2, *(v6[2] + 8 * (v7 >> 13)));
        return (ThreeBytePrimaryForOffsetData << 32) | 0x5000500;
      case 0xFu:
        ThreeBytePrimaryForOffsetData = icu::Collation::unassignedPrimaryFromCodePoint(a2);
        return (ThreeBytePrimaryForOffsetData << 32) | 0x5000500;
      default:
        result = 0;
        v9 = U_INTERNAL_PROGRAM_ERROR;
        goto LABEL_16;
    }

    return result;
  }
}

uint64_t icu::CollationData::getFirstPrimaryForGroup(icu::CollationData *this, signed int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 25);
  if (v2 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
  }

  else
  {
    v3 = (*(this + 13) + 2 * a2);
  }

  v4 = *v3;
  if (v4)
  {
    return *(*(this + 14) + 2 * v4) << 16;
  }

  return 0;
}

uint64_t icu::CollationData::getScriptIndex(icu::CollationData *this, signed int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(this + 25);
    if (v2 > a2)
    {
      v3 = (*(this + 13) + 2 * a2);
      return *v3;
    }

    if ((a2 & 0x7FFFFFF8) == 0x1000)
    {
      v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
      return *v3;
    }
  }

  return 0;
}

uint64_t icu::CollationData::getLastPrimaryForGroup(icu::CollationData *this, signed int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 25);
  if (v2 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
  }

  else
  {
    v3 = (*(this + 13) + 2 * a2);
  }

  v4 = *v3;
  if (v4)
  {
    return (*(*(this + 14) + 2 * v4 + 2) << 16) - 1;
  }

  return 0;
}

uint64_t icu::CollationData::getGroupForPrimary(icu::CollationData *this, unsigned int a2)
{
  v2 = HIWORD(a2);
  v3 = *(this + 14);
  if (HIWORD(a2) < *(v3 + 2) || v2 >= *(v3 + 2 * *(this + 30) - 2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = v3 + 4;
  do
  {
    v6 = *(v5 + 2 * v4++);
  }

  while (v6 <= v2);
  v7 = *(this + 25);
  v8 = *(this + 13);
  if (v7 < 1)
  {
LABEL_9:
    v10 = 0;
    v11 = v8 + 2 * v7;
    while (*(v11 + 2 * v10) != v4)
    {
      if (++v10 == 8)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return (v10 + 4096);
  }

  else
  {
    result = 0;
    while (*(v8 + 2 * result) != v4)
    {
      if (v7 == ++result)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t icu::CollationData::getEquivalentScripts(icu::CollationData *this, signed int a2, unsigned int *a3, int a4, UErrorCode *a5)
{
  v5 = 0;
  if (a2 < 0 || *a5 > 0)
  {
    return v5;
  }

  v6 = *(this + 25);
  if (v6 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v7 = *(this + 13);
    v8 = (v7 + 2 * (a2 + v6 - 4096));
  }

  else
  {
    v7 = *(this + 13);
    v8 = (v7 + 2 * a2);
  }

  v9 = *v8;
  if (!*v8)
  {
    return 0;
  }

  if (a2 <= 0xFFF)
  {
    if (v6 < 1)
    {
      v5 = 0;
    }

    else
    {
      v10 = 0;
      v5 = 0;
      do
      {
        if (v9 == *(v7 + 2 * v10))
        {
          if (v5 < a4)
          {
            a3[v5] = v10;
            v6 = *(this + 25);
          }

          v5 = (v5 + 1);
        }

        ++v10;
      }

      while (v10 < v6);
    }

    if (v5 > a4)
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  else
  {
    if (a4 < 1)
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      *a3 = a2;
    }

    return 1;
  }

  return v5;
}

int64_t icu::CollationData::makeReorderRanges(int64_t this, const int *a2, unsigned int a3, int a4, icu::UVector32 *a5, UErrorCode *a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return this;
  }

  v11 = this;
  this = icu::UVector32::removeAllElements(a5);
  if (!a3 || a3 == 1 && *a2 == 103)
  {
    return this;
  }

  memset(v60, 0, sizeof(v60));
  v12 = *(v11 + 104);
  v13 = *(v11 + 100);
  v14 = v12 + 2 * v13;
  if (*(v14 + 28))
  {
    *(v60 + *(v14 + 28)) = -1;
  }

  if (*(v14 + 30))
  {
    *(v60 + *(v14 + 30)) = -1;
  }

  v15 = *(v11 + 112);
  v16 = *(v15 + 2);
  v17 = *(v11 + 120);
  v18 = *(v15 + 2 * v17 - 2);
  v19 = a3;
  if (a3 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = a3;
    v22 = a2;
    do
    {
      v23 = *v22++;
      v24 = 1 << v23;
      if ((v23 & 0xFFFFFFF8) != 0x1000)
      {
        v24 = 0;
      }

      v20 |= v24;
      --v21;
    }

    while (v21);
  }

  v25 = 0;
  this = v60;
  do
  {
    v26 = *(v14 + 2 * v25);
    if (*(v14 + 2 * v25) && ((v20 >> v25) & 1) == 0)
    {
      v27 = (v15 + 2 * v26);
      v28 = *v27;
      if (*v27 < v16)
      {
        LOWORD(v16) = v16 + 256;
      }

      *(v60 + v26) = BYTE1(v16);
      v16 = (((v27[1] & 0xFF00) - (v28 & 0xFF00)) & 0xFFFFFF00 | v27[1]) + (v16 & 0xFF00);
    }

    ++v25;
  }

  while (v25 != 8);
  v29 = 0;
  if (!v20 && !a4 && *a2 == 25)
  {
    v29 = (*(v15 + 2 * *(v12 + 50)) - v16) & 0xFF00;
    v16 = *(v15 + 2 * *(v12 + 50));
  }

  if (a3 < 1)
  {
LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  v30 = v13 - 4096;
  this = 1;
  v31 = a2;
  v32 = 1;
  while (1)
  {
    v34 = *v31++;
    v33 = v34;
    if (v34 == -1)
    {
LABEL_96:
      v43 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_97:
      *a6 = v43;
      return this;
    }

    if (v33 == 103)
    {
      break;
    }

    if ((v33 & 0x80000000) == 0)
    {
      if (v13 > v33)
      {
        goto LABEL_36;
      }

      if ((v33 & 0x7FFFFFF8) == 0x1000)
      {
        v33 = v30 + v33;
LABEL_36:
        v35 = *(v12 + 2 * v33);
        if (*(v12 + 2 * v33))
        {
          if (*(v60 + v35))
          {
            goto LABEL_96;
          }

          v36 = (v15 + 2 * v35);
          v37 = *v36;
          if (*v36 < v16)
          {
            LOWORD(v16) = v16 + 256;
          }

          *(v60 + v35) = BYTE1(v16);
          v16 = (((v36[1] & 0xFF00) - (v37 & 0xFF00)) & 0xFFFFFF00 | v36[1]) + (v16 & 0xFF00);
        }
      }
    }

    v32 = this++ < a3;
    if (this - a3 == 1)
    {
      goto LABEL_42;
    }
  }

  if (this < a3)
  {
    while (1)
    {
      v52 = a2[v19 - 1];
      v53 = v52 == 103 || v52 == -1;
      if (v53)
      {
        goto LABEL_96;
      }

      if ((v52 & 0x80000000) == 0)
      {
        if (v13 > v52)
        {
          goto LABEL_89;
        }

        if ((v52 & 0x7FFFFFF8) == 0x1000)
        {
          break;
        }
      }

LABEL_94:
      if (this >= --v19)
      {
        goto LABEL_43;
      }
    }

    v52 = v30 + v52;
LABEL_89:
    v54 = *(v12 + 2 * v52);
    if (v54)
    {
      if (*(v60 + v54))
      {
        goto LABEL_96;
      }

      v55 = (v15 + 2 * v54);
      v56 = v55[1];
      if (v56 > v18)
      {
        LOWORD(v18) = v18 - 256;
      }

      v57 = *v55;
      v58 = (v18 & 0xFF00) + (v57 & 0xFF00) - (v56 & 0xFF00);
      v59 = v58 >> 8;
      v18 = v58 & 0xFFFFFF00 | v57;
      *(v60 + v54) = v59;
    }

    goto LABEL_94;
  }

LABEL_43:
  if (v17 >= 3)
  {
    v38 = (v15 + 4);
    v39 = v60 + 1;
    v40 = (v17 - 1) - 1;
    do
    {
      if (!*v39)
      {
        v41 = *(v38 - 1);
        if (v16 <= v41)
        {
          v42 = *(v38 - 1);
        }

        else
        {
          v42 = v16;
        }

        if (!v32)
        {
          LOWORD(v16) = v42;
        }

        if (*(v38 - 1) < v16)
        {
          LOWORD(v16) = v16 + 256;
        }

        *v39 = BYTE1(v16);
        this = *v38 & 0xFF00;
        v16 = ((this - (v41 & 0xFF00)) & 0xFFFFFF00 | *v38) + (v16 & 0xFF00);
      }

      ++v38;
      ++v39;
      --v40;
    }

    while (v40);
  }

  if (v16 <= v18)
  {
    v44 = 0;
    LODWORD(v45) = 1;
    while (1)
    {
      v46 = v44;
      v47 = v17 - 1;
      if (v45 >= v47)
      {
LABEL_65:
        v44 = v46;
        if (!v46)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v45 = v45;
        while (1)
        {
          v48 = *(v60 + v45);
          if (v48 != 255)
          {
            v44 = v48 - *(*(v11 + 112) + 2 * v45 + 1);
            if (v44 != v46)
            {
              break;
            }
          }

          if (v47 == ++v45)
          {
            LODWORD(v45) = v47;
            goto LABEL_65;
          }
        }

        if (!v46)
        {
LABEL_66:
          if (v45 >= v47)
          {
            goto LABEL_75;
          }
        }
      }

      v49 = *(*(v11 + 112) + 2 * v45);
      v50 = *(a5 + 2);
      if (v50 >= -1 && *(a5 + 3) > v50)
      {
        goto LABEL_74;
      }

      this = icu::UVector32::expandCapacity(a5, v50 + 1, a6);
      if (this)
      {
        v50 = *(a5 + 2);
LABEL_74:
        *(*(a5 + 3) + 4 * v50) = v46 | (v49 << 16);
        ++*(a5 + 2);
      }

LABEL_75:
      LODWORD(v17) = *(v11 + 120);
      v53 = v45 == v17 - 1;
      LODWORD(v45) = v45 + 1;
      if (v53)
      {
        return this;
      }
    }
  }

  if (v16 - v29 > v18)
  {
    v43 = U_BUFFER_OVERFLOW_ERROR;
    goto LABEL_97;
  }

  return icu::CollationData::makeReorderRanges(v11, a2, a3, 1, a5, a6);
}

uint64_t icu::CollationData::addLowScriptRange(icu::CollationData *this, unsigned __int8 *a2, int a3, __int16 a4)
{
  v4 = *(*(this + 14) + 2 * a3);
  if (v4 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 + 256;
  }

  a2[a3] = HIBYTE(v5);
  return ((*(*(this + 14) + 2 * a3 + 2) & 0xFF00) - (v4 & 0xFF00) + (v5 & 0xFF00)) & 0xFFFFFF00 | *(*(this + 14) + 2 * a3 + 2);
}

uint64_t icu::CollationData::addHighScriptRange(icu::CollationData *this, unsigned __int8 *a2, int a3, __int16 a4)
{
  v4 = (*(this + 14) + 2 * a3);
  v5 = v4[1];
  if (v5 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 - 256;
  }

  v7 = *v4;
  v8 = (v6 & 0xFF00) + (v7 & 0xFF00) - (v5 & 0xFF00);
  v9 = v8 >> 8;
  result = v8 & 0xFFFFFF00 | v7;
  a2[a3] = v9;
  return result;
}

uint64_t sub_1952CDB2C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    icu::UnicodeString::~UnicodeString(a2, (result + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1952CDB80(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(result + 400);
  *(result + 16) = result + 400;
  *(result + 24) = 0;
  *(result + 32) = result + 48;
  *(result + 40) = 40;
  *(result + 44) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = -1;
  *(result + 388) = 0;
  *result = &unk_1F0938270;
  *(result + 392) = a2;
  v2 = *(a2 + 8);
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = v2;
  *(result + 456) = 301989888;
  *(result + 528) = 0;
  *(result + 536) = 0;
  *(result + 460) = 0u;
  *(result + 476) = 0u;
  *(result + 492) = 0u;
  *(result + 508) = 0u;
  *(result + 816) = 0;
  *(result + 824) = 0;
  *(result + 432) = *(a2 + 16);
  v3 = xmmword_19544D5E0;
  v4 = xmmword_19544D5F0;
  v5 = xmmword_19547B440;
  v6 = 544;
  v7 = vdupq_n_s64(0x13uLL);
  v8 = vdupq_n_s32(0x1180u);
  v9 = vdupq_n_s32(0x114Eu);
  v10.i64[0] = 0x110000001100;
  v10.i64[1] = 0x110000001100;
  v11 = vdupq_n_s32(0x1C7u);
  v12 = vdupq_n_s64(0x43uLL);
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  v14 = vdupq_n_s64(4uLL);
  do
  {
    v15 = vdupq_n_s64(0x28uLL);
    v16 = vorrq_s8(vshlq_n_s32(vaddq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v7, v4), vcgtq_u64(v7, v3)), v10, vbslq_s8(vuzp1q_s32(vcgtq_u64(v15, v4), vcgtq_u64(v15, v3)), v9, v8)), v5), 0xDuLL), v11);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v4)), *v3.i8).u8[0])
    {
      *(result + v6) = v16.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v4)), *&v3).i8[2])
    {
      *(result + v6 + 4) = v16.i32[1];
    }

    if (vuzp1_s16(*&v3, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v3))).i32[1])
    {
      *(result + v6 + 8) = v16.i64[1];
    }

    v3 = vaddq_s64(v3, v14);
    v4 = vaddq_s64(v4, v14);
    v5 = vaddq_s32(v5, v13);
    v6 += 16;
  }

  while (v6 != 816);
  *(result + 440) = result + 544;
  return result;
}

void sub_1952CDD48(icu::CollationIterator *a1@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952CDD80(icu::CollationIterator *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 49);
  v11 = (this + 400);
  v12 = *(v10 + 96);
  *(this + 51) = *(v10 + 64);
  *(this + 52) = v12;
  v13 = *(v10 + 352);
  if ((v13 & 0x11) != 0)
  {
    v14 = 0;
  }

  else if ((v13 & 2) != 0)
  {
    v14 = v10 + 354;
  }

  else
  {
    v14 = *(v10 + 368);
  }

  *(this + 53) = v14;
  icu::CollationIterator::reset(this);
  *(this + 102) = a2;
  *(this + 206) = a3;
  v27 = U_ZERO_ERROR;
  do
  {
    v15 = *(this + 102);
    if (*(v15 + 8) < 0)
    {
      v16 = *(v15 + 12);
    }

    else
    {
      v16 = *(v15 + 8) >> 5;
    }

    v17 = *(this + 206);
    if (v17 >= v16)
    {
      break;
    }

    *(this + 6) = 0;
    *(this + 92) = 0;
    v18 = icu::UnicodeString::char32At(v15, v17);
    if (v18 < 0x10000)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *(this + 206) += v19;
    v20 = utrie2_get32(*(*(this + 49) + 32), v18);
    v21 = v11;
    if (v20 == 192)
    {
      v21 = *(*(this + 49) + 16);
      v20 = sub_1952C6CA0(v21, v18);
    }

    icu::CollationIterator::appendCEsFromCE32(this, v21, v18, v20, 1, &v27);
    v22 = *(this + 6);
    if (v22 >= 1)
    {
      v23 = *(this + 4);
      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25)
        {
          if (a5 <= 30)
          {
            *(a4 + 8 * a5) = v24;
          }

          a5 = (a5 + 1);
        }

        --v22;
      }

      while (v22);
    }
  }

  while (v27 <= U_ZERO_ERROR);
  return a5;
}

uint64_t sub_1952CDF04(icu::CollationIterator *a1, int a2)
{
  result = icu::CollationIterator::reset(a1);
  *(a1 + 206) = a2;
  return result;
}

unint64_t sub_1952CDF38(uint64_t a1)
{
  v2 = *(a1 + 824);
  v3 = *(a1 + 816);
  if (*(v3 + 8) < 0)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = *(v3 + 8) >> 5;
  }

  if (v2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = icu::UnicodeString::char32At(v3, v2);
  if (result < 0x10000)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 824) += v6;
  return result;
}

unint64_t sub_1952CDFA4(uint64_t a1)
{
  v1 = *(a1 + 824);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  result = icu::UnicodeString::char32At(*(a1 + 816), v1 - 1);
  if (result >= 0x10000)
  {
    v4 = -2;
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 824) += v4;
  return result;
}

uint64_t sub_1952CDFFC(uint64_t a1, int a2)
{
  result = icu::UnicodeString::moveIndex32(*(a1 + 816), *(a1 + 824), a2);
  *(a1 + 824) = result;
  return result;
}

uint64_t sub_1952CE030(uint64_t a1, int a2)
{
  result = icu::UnicodeString::moveIndex32(*(a1 + 816), *(a1 + 824), -a2);
  *(a1 + 824) = result;
  return result;
}

uint64_t sub_1952CE074(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v12 = a2 >> 13;
    v13 = *(*(a1 + 392) + 32);

    return utrie2_get32(v13, v12);
  }

  else
  {
    result = icu::UVector::elementAt((*(a1 + 392) + 104), a2 >> 13);
    if (result)
    {
      v6 = result;
      result = *(result + 80);
      if (result == 1 || *(v6 + 84) != *(*(a1 + 392) + 408))
      {
        result = icu::CollationDataBuilder::buildContext(*(a1 + 392), v6, a3);
        *(v6 + 80) = result;
        if (*a3 == U_BUFFER_OVERFLOW_ERROR)
        {
          *a3 = U_ZERO_ERROR;
          v7 = *(a1 + 392);
          if (*(v7 + 352))
          {
            v8 = 2;
          }

          else
          {
            v8 = *(v7 + 352) & 0x1E;
          }

          *(v7 + 352) = v8;
          ++*(v7 + 408);
          result = icu::CollationDataBuilder::buildContext(*(a1 + 392), v6, a3);
          *(v6 + 80) = result;
        }

        v9 = *(a1 + 392);
        *(v6 + 84) = *(v9 + 408);
        v10 = *(v9 + 352);
        if ((v10 & 0x11) != 0)
        {
          v11 = 0;
        }

        else if ((v10 & 2) != 0)
        {
          v11 = v9 + 354;
        }

        else
        {
          v11 = *(v9 + 368);
        }

        *(a1 + 424) = v11;
      }
    }

    else
    {
      *a3 = U_INTERNAL_PROGRAM_ERROR;
    }
  }

  return result;
}

uint64_t icu::CollationDataBuilder::buildContext(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  memset(v71, 0, sizeof(v71));
  icu::UCharsTrieBuilder::UCharsTrieBuilder(v71, a3);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  icu::UCharsTrieBuilder::UCharsTrieBuilder(&v64, a3);
  if (*a3 > 0)
  {
    goto LABEL_4;
  }

  v56 = a2;
  while (2)
  {
    v8 = *(a2 + 16);
    if (*(a2 + 16) < 0)
    {
      v9 = *(a2 + 20);
    }

    else
    {
      v9 = v8 >> 5;
    }

    if (v9)
    {
      if ((v8 & 2) != 0)
      {
        v10 = (a2 + 18);
      }

      else
      {
        v10 = *(a2 + 32);
      }

      v11 = *v10;
    }

    else
    {
      v11 = 0xFFFF;
    }

    v62 = 0uLL;
    v63 = 0uLL;
    v12 = v11 + 1;
    v60 = 0uLL;
    v61 = 0uLL;
    icu::UnicodeString::UnicodeString(&v60, (a2 + 8), 0, (v11 + 1));
    v13 = a2;
    while (1)
    {
      v14 = v13;
      *(v13 + 76) = 1;
      v15 = *(v13 + 88);
      if (v15 < 0)
      {
        break;
      }

      v16 = icu::UVector::elementAt((a1 + 104), v15);
      v13 = v16;
      if ((SWORD4(v60) & 0x8000u) == 0)
      {
        v17 = WORD4(v60) >> 5;
      }

      else
      {
        v17 = HIDWORD(v60);
      }

      v18 = *(v16 + 16);
      if (BYTE8(v60))
      {
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v18)
        {
          break;
        }

        v19 = (BYTE8(v60) & 2) != 0 ? (&v60 + 10) : *(&v61 + 1);
        if (!icu::UnicodeString::doEqualsSubstring(v16 + 8, 0, v17, v19, v17 & (v17 >> 31), v17 & ~(v17 >> 31)))
        {
          break;
        }
      }
    }

    if (*(v14 + 16) < 0)
    {
      v20 = *(v14 + 20);
    }

    else
    {
      v20 = *(v14 + 16) >> 5;
    }

    if (v20 == v12)
    {
      v3 = *(v14 + 72);
      goto LABEL_110;
    }

    if (BYTE8(v65))
    {
      v21 = 2;
    }

    else
    {
      v21 = BYTE8(v65) & 0x1E;
    }

    WORD4(v65) = v21;
    HIDWORD(v69) = 0;
    HIDWORD(v70) = 0;
    if (*(a2 + 16) < 0)
    {
      v22 = *(a2 + 20);
    }

    else
    {
      v22 = *(a2 + 16) >> 5;
    }

    v57 = a2;
    if (v22 == v12)
    {
      v58 = *(a2 + 72);
      v23 = icu::UVector::elementAt((a1 + 104), *(a2 + 88));
      v24 = 512;
      goto LABEL_83;
    }

    v25 = 0;
    for (i = v56; ; i = icu::UVector::elementAt((a1 + 104), *(i + 88)))
    {
      v27 = *(i + 16);
      v28 = *(i + 16) < 0 ? *(i + 20) : v27 >> 5;
      v29 = 0uLL;
      if (v28)
      {
        v30 = (v27 & 2) != 0 ? (i + 18) : *(i + 32);
        v31 = *v30;
      }

      else
      {
        v31 = 0xFFFF;
      }

      if (v31 == v11)
      {
        break;
      }

      if (*(i + 76) == 1)
      {
        continue;
      }

      if (!v31)
      {
        v25 = *(i + 76);
        continue;
      }

      v32 = v27 >> 5;
      if ((v27 & 0x8000u) != 0)
      {
        v32 = *(i + 20);
      }

      if (v32 >= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      if (v32 - v33 >= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v32 - v33;
      }

      v35 = WORD4(v60) >> 5;
      if (SWORD4(v60) < 0)
      {
        v35 = HIDWORD(v60);
      }

      if (v27)
      {
        if ((BYTE8(v60) & 1) == 0)
        {
          continue;
        }

LABEL_77:
        v25 = *(i + 76);
        continue;
      }

      v36 = v33 & ~(v33 >> 31);
      if (v32 - v33 < 0)
      {
        v37 = 0;
LABEL_80:
        v38 = v37;
        if (BYTE8(v60))
        {
          continue;
        }

        goto LABEL_70;
      }

      v37 = v32 - v36;
      v38 = v34;
      if (v37 < v34)
      {
        goto LABEL_80;
      }

      if (BYTE8(v60))
      {
        continue;
      }

LABEL_70:
      if ((v27 & 2) != 0)
      {
        v39 = i + 18;
      }

      else
      {
        v39 = *(i + 32);
      }

      if (icu::UnicodeString::doEqualsSubstring(&v60, v35 - v34, v34, v39, v36, v38))
      {
        goto LABEL_77;
      }
    }

    v58 = v25;
    v24 = 768;
    v23 = a2;
    while (1)
    {
      v59[2] = v29;
      v59[3] = v29;
      v59[0] = v29;
      v59[1] = v29;
      icu::UnicodeString::UnicodeString(v59, (v23 + 8), v11 + 1);
      v40 = *(a1 + 8);
      v41 = icu::UnicodeString::char32At(v59, 0);
      if (sub_1951FAB08(v40, v41) < 0x100)
      {
        v24 &= ~0x200u;
      }

      v42 = *(a1 + 8);
      v43 = WORD4(v59[0]) >> 5;
      if (SWORD4(v59[0]) < 0)
      {
        v43 = HIDWORD(v59[0]);
      }

      v44 = icu::UnicodeString::char32At(v59, v43 - 1);
      if (sub_1951FAB08(v42, v44) > 0xFF)
      {
        v24 |= 0x400u;
      }

      if (*(a1 + 617) && (v24 & 0x800) == 0)
      {
        v45 = WORD4(v59[0]) >> 5;
        if (SWORD4(v59[0]) < 0)
        {
          v45 = HIDWORD(v59[0]);
        }

        if (v45 >= 1)
        {
          v46 = 0;
          while (1)
          {
            v47 = icu::UnicodeString::char32At(v59, v46);
            if (!u_getCombiningClass(v47))
            {
              break;
            }

            if (v47 < 0x10000)
            {
              v48 = 1;
            }

            else
            {
              v48 = 2;
            }

            v46 += v48;
            v49 = WORD4(v59[0]) >> 5;
            if (SWORD4(v59[0]) < 0)
            {
              v49 = HIDWORD(v59[0]);
            }

            if (v46 >= v49)
            {
              goto LABEL_105;
            }
          }

          v24 |= 0x800u;
        }
      }

LABEL_105:
      icu::UCharsTrieBuilder::add(&v64, v59, *(v23 + 72), a3);
      if (v23 == v14)
      {
        break;
      }

      v23 = icu::UVector::elementAt((a1 + 104), *(v23 + 88));
      icu::UnicodeString::~UnicodeString(v51, v59);
LABEL_83:
      v29 = 0uLL;
    }

    icu::UnicodeString::~UnicodeString(v50, v59);
    v52 = icu::CollationDataBuilder::addContextTrie(a1, v58, &v64, a3);
    v53 = *a3;
    if (v53 > 0)
    {
      v3 = 0;
LABEL_124:
      icu::UnicodeString::~UnicodeString(v53, &v60);
      goto LABEL_5;
    }

    if (v52 >= 0x80000)
    {
      v3 = 0;
      v53 = 15;
      *a3 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_124;
    }

    v3 = v24 | (v52 << 13) | 0xC9u;
    v14 = v23;
    a2 = v57;
LABEL_110:
    *(a2 + 76) = v3;
    if (!v11)
    {
      v53 = *(v14 + 88);
      if ((v53 & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

LABEL_117:
      icu::UnicodeString::~UnicodeString(v53, &v60);
      a2 = icu::UVector::elementAt((a1 + 104), *(v14 + 88));
      if (*a3 >= 1)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  icu::UnicodeString::doReplace(&v60, 0, 1, 0, 0, 0);
  if ((SWORD4(v60) & 0x8000u) == 0)
  {
    v54 = WORD4(v60) >> 5;
  }

  else
  {
    v54 = HIDWORD(v60);
  }

  icu::UnicodeString::doReverse(&v60, 0, v54);
  icu::UCharsTrieBuilder::add(v71, &v60, v3, a3);
  v53 = *(v14 + 88);
  if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_117;
  }

  icu::UnicodeString::~UnicodeString(v53, &v60);
  v55 = icu::CollationDataBuilder::addContextTrie(a1, *(v56 + 76), v71, a3);
  if (*a3 > 0)
  {
LABEL_4:
    v3 = 0;
    goto LABEL_5;
  }

  if (v55 < 0x80000)
  {
    v3 = (v55 << 13) | 0xC8u;
  }

  else
  {
    v3 = 0;
    *a3 = U_BUFFER_OVERFLOW_ERROR;
  }

LABEL_5:
  icu::UCharsTrieBuilder::~UCharsTrieBuilder(&v64);
  icu::UCharsTrieBuilder::~UCharsTrieBuilder(v71);
  return v3;
}

uint64_t icu::CollationDataBuilder::clearContexts(uint64_t this)
{
  if (*(this + 352))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(this + 352) & 0x1E;
  }

  *(this + 352) = v1;
  ++*(this + 408);
  return this;
}

icu::CollationDataBuilder *icu::CollationDataBuilder::CollationDataBuilder(icu::CollationDataBuilder *this, UErrorCode *a2, UErrorCode *a3)
{
  v4 = a2;
  *this = &unk_1F0938300;
  *(this + 1) = icu::Normalizer2Factory::getNFCImpl(a3, a2);
  *(this + 2) = 0;
  *(this + 24) = 0u;
  icu::UVector32::UVector32((this + 40), a3);
  icu::UVector64::UVector64((this + 72), a3);
  icu::UVector::UVector((this + 104), a3);
  icu::UnicodeSet::UnicodeSet((this + 144));
  *(this + 43) = &unk_1F0935D00;
  *(this + 176) = 2;
  *(this + 102) = 0;
  icu::UnicodeSet::UnicodeSet((this + 416));
  *(this + 616) = 0;
  *(this + 617) = v4;
  *(this + 618) = 0;
  *(this + 39) = 0u;
  if (!v4)
  {
    v6 = *(this + 12);
    if (v6 >= -1 && *(this + 13) > v6)
    {
      goto LABEL_6;
    }

    if (icu::UVector32::expandCapacity((this + 40), v6 + 1, a3))
    {
      v6 = *(this + 12);
LABEL_6:
      *(*(this + 8) + 4 * v6) = 0;
      ++*(this + 12);
    }
  }

  icu::UVector::setDeleter((this + 104), sub_1952CDB2C);
  return this;
}

void icu::CollationDataBuilder::~CollationDataBuilder(icu::CollationDataBuilder *this)
{
  *this = &unk_1F0938300;
  utrie2_close(*(this + 4));
  v3 = *(this + 78);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 79);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UnicodeSet::~UnicodeSet(v2, (this + 416));
  icu::UnicodeString::~UnicodeString(v5, (this + 344));
  icu::UnicodeSet::~UnicodeSet(v6, (this + 144));
  icu::UVector::~UVector(this + 13);
  icu::UVector64::~UVector64(this + 9);
  icu::UVector32::~UVector32(this + 5);

  icu::UObject::~UObject(this);
}

{
  icu::CollationDataBuilder::~CollationDataBuilder(this);

  JUMPOUT(0x19A8B2600);
}

icu::UVector **icu::CollationDataBuilder::initForTailoring(icu::UVector **this, const icu::UnicodeSet **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (this[4])
    {
      v5 = U_INVALID_STATE_ERROR;
LABEL_4:
      *a3 = v5;
      return this;
    }

    if (!a2)
    {
      v5 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_4;
    }

    this[2] = a2;
    if (*(this + 617))
    {
      v7 = 192;
    }

    else
    {
      v7 = -195323;
    }

    this = utrie2_open(192, v7, a3);
    v4[4] = this;
    if (!*(v4 + 617))
    {
      v8 = 192;
      do
      {
        utrie2_set32(v4[4], v8, 192, a3);
        v8 = (v8 + 1);
      }

      while (v8 != 256);
      utrie2_setRange32(v4[4], 44032, 0xD7A3u, 0xCCu, 1, a3);
      v9 = a2[10];

      return icu::UnicodeSet::addAll(v4 + 52, v9);
    }
  }

  return this;
}

uint64_t icu::CollationDataBuilder::maybeSetPrimaryRange(icu::CollationDataBuilder *this, uint64_t a2, int a3, uint64_t a4, unsigned int a5, UErrorCode *a6)
{
  if (*a6 > 0 || a5 - 2 > 0x7D)
  {
    return 0;
  }

  v10 = (a3 >> 5) - (a2 >> 5);
  if (v10 > 2 || (v11 = 0, (a3 & 0x1Fu) >= 3) && (a2 & 0x1Fu) <= 0x1C && v10 >= 1)
  {
    v12 = (a2 << 8) | (a4 << 32) | a5;
    if ((*(*this + 24))(this, BYTE3(a4)))
    {
      v13 = v12 | 0x80;
    }

    else
    {
      v13 = v12;
    }

    v14 = icu::CollationDataBuilder::addCE(this, v13, a6);
    if (*a6 > 0)
    {
      return 0;
    }

    if (v14 < 0x80000)
    {
      v11 = 1;
      utrie2_setRange32(*(this + 4), a2, a3, (v14 << 13) | 0xCE, 1, a6);
      *(this + 616) = 1;
    }

    else
    {
      v11 = 0;
      *a6 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  return v11;
}

uint64_t icu::CollationDataBuilder::addCE(icu::CollationDataBuilder *this, uint64_t a2, UErrorCode *a3)
{
  v5 = *(this + 20);
  if (v5 < 1)
  {
LABEL_5:
    v7 = v5 + 1;
    if (v5 < -1 || *(this + 21) <= v5)
    {
      if (!icu::UVector64::expandCapacity((this + 72), v7, a3))
      {
        return v5;
      }

      v8 = *(this + 20);
      v7 = v8 + 1;
    }

    else
    {
      v8 = *(this + 20);
    }

    *(*(this + 12) + 8 * v8) = a2;
    *(this + 20) = v7;
    return v5;
  }

  v6 = 0;
  while (*(*(this + 12) + 8 * v6) != a2)
  {
    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }

  return v6;
}

icu::Collation *icu::CollationDataBuilder::setPrimaryRangeAndReturnNext(icu::CollationDataBuilder *this, uint64_t a2, int a3, icu::Collation *a4, unsigned int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = a4;
  v13 = (*(*this + 24))(this, a4 >> 24);
  if (!icu::CollationDataBuilder::maybeSetPrimaryRange(this, a2, a3, v6, a5, a6))
  {
    if (a3 <= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    v15 = v14 + 1;
    do
    {
      utrie2_set32(*(this + 4), a2, v6 | 0xC1, a6);
      a2 = (a2 + 1);
      v6 = icu::Collation::incThreeBytePrimaryByOffset(v6, v13, a5);
    }

    while (v15 != a2);
    return v6;
  }

  return icu::Collation::incThreeBytePrimaryByOffset(v6, v13, a5 + a5 * (a3 - a2));
}

uint64_t icu::CollationDataBuilder::getCE32FromOffsetCE32(icu::CollationDataBuilder *this, int a2, icu::Collation *a3, unsigned int a4)
{
  v4 = a4 >> 13;
  if (a2)
  {
    v5 = (*(this + 2) + 16);
  }

  else
  {
    if (*(this + 20) <= v4)
    {
      v6 = 0;
      return icu::Collation::getThreeBytePrimaryForOffsetData(a3, v6) | 0xC1;
    }

    v5 = (this + 96);
  }

  v6 = *(*v5 + 8 * v4);
  return icu::Collation::getThreeBytePrimaryForOffsetData(a3, v6) | 0xC1;
}

uint64_t icu::CollationDataBuilder::getLongPrimaryIfSingleCE(uint64_t **this, unsigned int a2)
{
  v2 = utrie2_get32(this[4], a2);
  if ((v2 & 0xCF) == 0xC1)
  {
    return v2 & 0xFFFFFF00;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::CollationDataBuilder::getSingleCE(uint64_t **this, icu::Collation *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = utrie2_get32(this[4], a2);
  v8 = v7;
  if (v7 == 192)
  {
    v7 = sub_1952C6CA0(this[2], a2);
  }

  if ((~v7 & 0xC0) != 0)
  {
    return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
  }

  while (2)
  {
    switch(v7 & 0xF)
    {
      case 1u:
        return (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
      case 2u:
        return v7 & 0xFFFFFF00;
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xCu:
      case 0xDu:
        goto LABEL_37;
      case 5u:
        if ((v7 & 0x1F00) != 0x100)
        {
          goto LABEL_37;
        }

        v9 = v7 >> 13;
        if (v8 == 192)
        {
          v10 = this[2][1];
        }

        else
        {
          if (*(this + 12) <= v9)
          {
LABEL_29:
            v7 = 0;
            return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
          }

LABEL_22:
          v10 = this[8];
        }

        v7 = *(v10 + v9);
LABEL_26:
        if ((~v7 & 0xC0) != 0)
        {
          return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
        }

        continue;
      case 6u:
        if ((v7 & 0x1F00) == 0x100)
        {
          v16 = v7 >> 13;
          if (v8 == 192)
          {
            v17 = this[2][2];
            return v17[v16];
          }

          if (*(this + 20) > v16)
          {
            v17 = this[12];
            return v17[v16];
          }

          result = 0;
        }

        else
        {
LABEL_37:
          result = 0;
          v15 = U_UNSUPPORTED_ERROR;
LABEL_38:
          *a3 = v15;
        }

        break;
      case 0xAu:
        if (*(this + 12) <= (v7 >> 13))
        {
          goto LABEL_29;
        }

        v9 = v7 >> 13;
        goto LABEL_22;
      case 0xBu:
        if (v8 == 192)
        {
          v13 = this[2][1];
        }

        else
        {
          if (*(this + 12) < 1)
          {
            goto LABEL_29;
          }

          v13 = this[8];
        }

        v7 = *v13;
        goto LABEL_26;
      case 0xEu:
        v11 = v7 >> 13;
        if (v8 == 192)
        {
          v12 = this[2] + 2;
LABEL_17:
          v14 = *(*v12 + 8 * v11);
          goto LABEL_25;
        }

        v12 = (this + 12);
        if (*(this + 20) > v11)
        {
          goto LABEL_17;
        }

        v14 = 0;
LABEL_25:
        v7 = icu::Collation::getThreeBytePrimaryForOffsetData(a2, v14) | 0xC1;
        goto LABEL_26;
      case 0xFu:
        return (icu::Collation::unassignedPrimaryFromCodePoint(a2) << 32) | 0x5000500;
      default:
        result = 0;
        v15 = U_INTERNAL_PROGRAM_ERROR;
        goto LABEL_38;
    }

    return result;
  }
}

uint64_t icu::CollationDataBuilder::addCE32(icu::CollationDataBuilder *this, int a2, UErrorCode *a3)
{
  v5 = *(this + 12);
  if (v5 < 1)
  {
LABEL_5:
    if (v5 < -1 || (v7 = *(this + 12), *(this + 13) <= v5))
    {
      if (!icu::UVector32::expandCapacity((this + 40), v5 + 1, a3))
      {
        return v5;
      }

      v7 = *(this + 12);
    }

    *(*(this + 8) + 4 * v7) = a2;
    ++*(this + 12);
    return v5;
  }

  v6 = 0;
  while (*(*(this + 8) + 4 * v6) != a2)
  {
    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }

  return v6;
}

uint64_t icu::CollationDataBuilder::addConditionalCE32(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (*(this + 28) < 0x80000)
    {
      operator new();
    }

    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::CollationDataBuilder::add(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, UErrorCode *a6)
{
  v10 = (*(*this + 32))(this, a4, a5, a6);

  return icu::CollationDataBuilder::addCE32(this, a2, a3, v10, a6);
}

uint64_t icu::CollationDataBuilder::addCE32(uint64_t this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, uint64_t a4, UErrorCode *a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return this;
  }

  if (*(a3 + 4) <= 0x1Fu)
  {
    v10 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_7;
  }

  v7 = this;
  this = *(this + 32);
  if (!this || (this = utrie2_isFrozen(this), this))
  {
    v10 = U_INVALID_STATE_ERROR;
LABEL_7:
    *a5 = v10;
    return this;
  }

  v11 = icu::UnicodeString::char32At(a3, 0);
  v12 = 1;
  if (v11 < 0x10000)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v15 = utrie2_get32(*(v7 + 32), v11);
  if (*(a2 + 4) <= 0x1Fu)
  {
    v16 = *(a3 + 4);
    v17 = v16;
    v18 = v16 >> 5;
    if (v17 < 0)
    {
      v18 = *(a3 + 3);
    }

    v12 = v18 > v13;
  }

  if (*(v7 + 617))
  {
    NFDInstance = icu::Normalizer2::getNFDInstance(a5, v14);
    memset(v69 + 8, 0, 56);
    *&v69[0] = &unk_1F0935D00;
    WORD4(v69[0]) = 2;
    (*(*NFDInstance + 24))(NFDInstance, a3, v69, a5);
    v20 = *(a3 + 4);
    if (v20)
    {
      v24 = WORD4(v69[0]);
      if ((BYTE8(v69[0]) & 1) == 0)
      {
        return icu::UnicodeString::~UnicodeString(v24, v69);
      }
    }

    else
    {
      v21 = v20;
      v22 = v20 >> 5;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = *(a3 + 3);
      }

      v24 = WORD4(v69[0]);
      if ((SWORD4(v69[0]) & 0x8000u) == 0)
      {
        v25 = WORD4(v69[0]) >> 5;
      }

      else
      {
        v25 = HIDWORD(v69[0]);
      }

      if ((BYTE8(v69[0]) & 1) != 0 || v23 != v25)
      {
        return icu::UnicodeString::~UnicodeString(v24, v69);
      }

      v26 = (BYTE8(v69[0]) & 2) != 0 ? (v69 + 10) : *(&v69[1] + 1);
      if (!icu::UnicodeString::doEquals(a3, v26, v23))
      {
        return icu::UnicodeString::~UnicodeString(v24, v69);
      }
    }

    if (*(a2 + 4) >= 0x20u)
    {
      memset(v68 + 8, 0, 56);
      *&v68[0] = &unk_1F0935D00;
      WORD4(v68[0]) = 2;
      (*(*NFDInstance + 24))(NFDInstance, a2, v68, a5);
      if (!sub_195213DE4(a2, v68))
      {
        goto LABEL_39;
      }

      v27 = icu::UnicodeString::countChar32(a2, 0, 0x7FFFFFFF);
      if (v27 > 2)
      {
        goto LABEL_39;
      }

      v28 = v27;
      *c = 0;
      v67 = 0;
      if (icu::UnicodeString::toUTF32(a2, c, 4, a5) != v27)
      {
        v30 = 27;
        goto LABEL_40;
      }

      if (u_getCombiningClass(c[0]) || v28 == 2 && (v29 = (c[1] - 12441), v29 > 1))
      {
LABEL_39:
        v30 = 16;
LABEL_40:
        *a5 = v30;
        goto LABEL_41;
      }

      icu::UnicodeString::~UnicodeString(v29, v68);
    }

    v31 = *(a3 + 4);
    v32 = *(a3 + 3);
    if ((v31 & 0x8000u) == 0)
    {
      v33 = v31 >> 5;
    }

    else
    {
      v33 = *(a3 + 3);
    }

    if (v33 > v13)
    {
      v34 = 0;
      v35 = a3 + 10;
      if ((v31 & 2) == 0)
      {
        v35 = *(a3 + 3);
      }

      while (1)
      {
        if ((v31 & 0x8000) != 0)
        {
          v36 = v32;
          if (v34 >= v32)
          {
            break;
          }
        }

        else
        {
          v36 = v31 >> 5;
          if (v34 >= v31 >> 5)
          {
            break;
          }
        }

        if (v36 <= v34)
        {
          v37 = 0xFFFF;
        }

        else
        {
          v37 = *&v35[2 * v34];
        }

        ++v34;
        if (vmaxv_u16(vcgt_u16(0x2BA4001C00150013, vadd_s16(vdup_n_s16(v37), 0x5400EE59EE9FEF00))))
        {
          v24 = 16;
          *a5 = U_UNSUPPORTED_ERROR;
          return icu::UnicodeString::~UnicodeString(v24, v69);
        }
      }
    }

    icu::UnicodeString::~UnicodeString(v31, v69);
  }

  if (v15 == 192)
  {
    v38 = *(v7 + 16);
    v39 = sub_1952C6CA0(v38, v11);
    FinalCE32 = icu::CollationData::getFinalCE32(v38, v39);
    v41 = (FinalCE32 & 0xCE) == 0xC8 || v12;
    if (v41 != 1)
    {
      goto LABEL_73;
    }

    v42 = icu::CollationDataBuilder::copyFromBaseCE32(v7, v11, FinalCE32, 1, a5);
    v15 = v42;
    this = utrie2_set32(*(v7 + 32), v11, v42, a5);
    if (*a5 > 0)
    {
      return this;
    }
  }

  v43 = v15 & 0xCF;
  if (!v12)
  {
    if (v43 == 199)
    {
      this = icu::UVector::elementAt((v7 + 104), v15 >> 13);
      *(this + 80) = 1;
      *(this + 72) = a4;
LABEL_106:
      *(v7 + 616) = 1;
      return this;
    }

LABEL_73:
    this = utrie2_set32(*(v7 + 32), v11, a4, a5);
    goto LABEL_106;
  }

  if (v43 == 199)
  {
    v44 = icu::UVector::elementAt((v7 + 104), v15 >> 13);
    *(v44 + 80) = 1;
  }

  else
  {
    icu::UnicodeString::UnicodeString(v69, 0);
    v45 = icu::CollationDataBuilder::addConditionalCE32(v7, v69, v15, a5);
    this = icu::UnicodeString::~UnicodeString(v46, v69);
    if (*a5 > 0)
    {
      return this;
    }

    utrie2_set32(*(v7 + 32), v11, (v45 << 13) | 0xC7u, a5);
    icu::UnicodeSet::add((v7 + 144), v11);
    v44 = icu::UVector::elementAt((v7 + 104), v45);
  }

  memset(v69, 0, sizeof(v69));
  icu::UnicodeString::UnicodeString(v69, a3, v13);
  memset(v68, 0, sizeof(v68));
  v47 = *(a2 + 4);
  v48 = v47;
  v49 = v47 >> 5;
  if (v48 < 0)
  {
    LOWORD(v49) = *(a2 + 3);
  }

  icu::UnicodeString::UnicodeString(v68, v49);
  v50 = *(a2 + 4);
  v51 = v50;
  v52 = v50 >> 5;
  if (v51 >= 0)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(a2 + 3);
  }

  v54 = icu::UnicodeString::doAppend(v68, a2, 0, v53);
  if ((SWORD4(v69[0]) & 0x8000u) == 0)
  {
    v55 = WORD4(v69[0]) >> 5;
  }

  else
  {
    v55 = HIDWORD(v69[0]);
  }

  icu::UnicodeString::doAppend(v54, v69, 0, v55);
  icu::UnicodeSet::addAll((v7 + 416), v69);
  while (1)
  {
    v56 = *(v44 + 88);
    if (v56 < 0)
    {
      v63 = icu::CollationDataBuilder::addConditionalCE32(v7, v68, a4, a5);
      v30 = *a5;
      if (v30 > 0)
      {
        goto LABEL_41;
      }

      *(v44 + 88) = v63;
      goto LABEL_105;
    }

    v57 = icu::UVector::elementAt((v7 + 104), *(v44 + 88));
    v58 = v57;
    v30 = *(v57 + 16);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v62 = (BYTE8(v68[0]) & 1) == 0;
LABEL_99:
    v44 = v58;
    if (!v62)
    {
      *(v58 + 72) = a4;
LABEL_105:
      icu::UnicodeString::~UnicodeString(v30, v68);
      this = icu::UnicodeString::~UnicodeString(v65, v69);
      goto LABEL_106;
    }
  }

  if ((SWORD4(v68[0]) & 0x8000u) == 0)
  {
    v59 = WORD4(v68[0]) >> 5;
  }

  else
  {
    v59 = HIDWORD(v68[0]);
  }

  if ((v30 & 0x8000u) == 0)
  {
    v60 = v30 >> 5;
  }

  else
  {
    v60 = *(v57 + 20);
  }

  if ((v30 & 2) != 0)
  {
    v61 = v57 + 18;
  }

  else
  {
    v61 = *(v57 + 32);
  }

  v62 = icu::UnicodeString::doCompare(v68, 0, v59, v61, v60 & (v60 >> 31), v60 & ~(v60 >> 31));
  if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  v64 = icu::CollationDataBuilder::addConditionalCE32(v7, v68, a4, a5);
  v30 = *a5;
  if (v30 <= 0)
  {
    *(v44 + 88) = v64;
    *(icu::UVector::elementAt((v7 + 104), v64) + 88) = v56;
    goto LABEL_105;
  }

LABEL_41:
  icu::UnicodeString::~UnicodeString(v30, v68);
  return icu::UnicodeString::~UnicodeString(v24, v69);
}

uint64_t icu::CollationDataBuilder::copyFromBaseCE32(icu::CollationDataBuilder *this, icu::Collation *a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0;
  }

  v5 = a3;
  if ((~a3 & 0xC0) != 0)
  {
    return v5;
  }

  for (i = a4 == 0; ; i = 1)
  {
    v10 = v5 & 0xF;
    if (v10 <= 8)
    {
      break;
    }

    if ((v5 & 0xFu) > 0xB)
    {
      switch(v10)
      {
        case 0xCu:
          *a5 = U_UNSUPPORTED_ERROR;
          break;
        case 0xEu:
          return icu::Collation::getThreeBytePrimaryForOffsetData(a2, *(*(*(this + 2) + 16) + 8 * (v5 >> 13))) | 0xC1;
        case 0xFu:
          v15 = icu::Collation::unassignedPrimaryFromCodePoint(a2);
          return icu::CollationDataBuilder::encodeOneCE(this, ((v15 << 32) | 0x5000500), a5);
        default:
LABEL_51:
          abort();
      }

      return v5;
    }

    if (v10 != 9)
    {
      goto LABEL_51;
    }

    if (!i)
    {
      *&v30 = 0;
      v31 = 0u;
      v34[0] = 0u;
      HIDWORD(v34[1]) = 0;
      v32 = 0u;
      v33 = 0u;
      *(&v30 + 1) = &unk_1F0935D00;
      LOWORD(v31) = 2;
      *(v34 + 12) = xmmword_195487A70;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      icu::UnicodeString::UnicodeString(&v38, 0);
      icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, &v38, a2, v5, &v30, a5);
      v5 = (DWORD2(v34[1]) << 13) | 0xC7u;
      icu::UnicodeSet::add((this + 144), a2);
      icu::UnicodeString::~UnicodeString(v16, &v38);
      icu::UnicodeString::~UnicodeString(v17, (&v30 + 8));
      return v5;
    }

    v13 = (*(*(this + 2) + 24) + 2 * (v5 >> 13));
    v5 = v13[1] | (*v13 << 16);
LABEL_14:
    if ((~v5 & 0xC0) != 0)
    {
      return v5;
    }
  }

  if ((v5 & 0xFu) <= 5)
  {
    if (v10 - 1 >= 2 && v10 != 4)
    {
      if (v10 == 5)
      {
        return icu::CollationDataBuilder::encodeExpansion32(this, (*(*(this + 2) + 8) + 4 * (v5 >> 13)), (v5 >> 8) & 0x1F, a5);
      }

      goto LABEL_51;
    }

    return v5;
  }

  if (v10 != 8)
  {
    if (v10 != 6)
    {
      goto LABEL_51;
    }

    return icu::CollationDataBuilder::encodeExpansion(this, (*(*(this + 2) + 16) + 8 * (v5 >> 13)), (v5 >> 8) & 0x1F, a5);
  }

  v11 = (*(*(this + 2) + 24) + 2 * (v5 >> 13));
  v12 = v11[1];
  v5 = v12 | (*v11 << 16);
  if (i)
  {
    goto LABEL_14;
  }

  *&v38 = 0;
  v39 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v41 = 0u;
  *(&v38 + 1) = &unk_1F0935D00;
  LOWORD(v39) = 2;
  *&v42[3] = xmmword_195487A70;
  memset(v37, 0, sizeof(v37));
  icu::UnicodeString::UnicodeString(v37, 0);
  if ((v12 & 0xCF) == 0xC9)
  {
    v18 = icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, v37, a2, v5, &v38, a5);
  }

  else
  {
    v5 = icu::CollationDataBuilder::copyFromBaseCE32(this, a2, v5, 1, a5);
    v18 = icu::CollationDataBuilder::addConditionalCE32(this, v37, v5, a5);
    v42[6] = v18;
  }

  v19 = *a5;
  if (v19 <= 0)
  {
    v21 = icu::UVector::elementAt((this + 104), v18);
    v36 = 0;
    *v35 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v28 = v11 + 2;
    icu::UCharsTrie::Iterator::Iterator(&v30, &v28, 0, a5);
    if (icu::UCharsTrie::Iterator::next(&v30, a5))
    {
      while (1)
      {
        icu::UnicodeString::operator=(v37, &v32 + 1);
        if (SLOWORD(v37[1]) >= 0)
        {
          v22 = LOWORD(v37[1]) >> 5;
        }

        else
        {
          v22 = HIDWORD(v37[1]);
        }

        icu::UnicodeString::doReverse(v37, 0, v22);
        v23 = LOWORD(v37[1]) >> 5;
        if (SLOWORD(v37[1]) < 0)
        {
          LOWORD(v23) = WORD2(v37[1]);
        }

        v29 = v23;
        icu::UnicodeString::doReplace(v37, 0, 0, &v29, 0, 1);
        v5 = v35[3];
        if ((v35[3] & 0xCF) == 0xC9)
        {
          v24 = icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, v37, a2, v35[3], v21, a5);
        }

        else
        {
          v5 = icu::CollationDataBuilder::copyFromBaseCE32(this, a2, v35[3], 1, a5);
          v24 = icu::CollationDataBuilder::addConditionalCE32(this, v37, v5, a5);
          *(v21 + 88) = v24;
        }

        v25 = *a5;
        if (v25 > 0)
        {
          break;
        }

        v21 = icu::UVector::elementAt((this + 104), v24);
        if (!icu::UCharsTrie::Iterator::next(&v30, a5))
        {
          goto LABEL_46;
        }
      }

      v20 = 1;
    }

    else
    {
LABEL_46:
      v5 = (v42[6] << 13) | 0xC7u;
      icu::UnicodeSet::add((this + 144), a2);
      v20 = 0;
    }

    icu::UCharsTrie::Iterator::~Iterator(&v30, v25);
  }

  else
  {
    v20 = 1;
  }

  icu::UnicodeString::~UnicodeString(v19, v37);
  icu::UnicodeString::~UnicodeString(v26, (&v38 + 8));
  if (v20)
  {
    return 0;
  }

  return v5;
}

uint64_t icu::CollationDataBuilder::encodeOneCEAsCE32(unint64_t this)
{
  if (this)
  {
    v1 = 0;
  }

  else
  {
    v1 = HIDWORD(this) == 0;
  }

  v2 = this | 0xC2;
  if (!v1)
  {
    v2 = 1;
  }

  if ((this & 0xFFFFFFFFFFLL) == 0x5000500)
  {
    v3 = HIDWORD(this) | 0xC1;
  }

  else
  {
    v3 = v2;
  }

  if ((this & 0xFFFF00FF00FFLL) != 0)
  {
    return v3;
  }

  else
  {
    return BYTE1(this) | WORD1(this) | HIDWORD(this);
  }
}

uint64_t icu::CollationDataBuilder::encodeOneCE(icu::CollationDataBuilder *this, icu::CollationDataBuilder *a2, UErrorCode *a3)
{
  result = icu::CollationDataBuilder::encodeOneCEAsCE32(a2);
  if (result == 1)
  {
    v7 = icu::CollationDataBuilder::addCE(this, a2, a3);
    if (*a3 <= 0)
    {
      if (v7 < 0x80000)
      {
        return (v7 << 13) | 0x1C6u;
      }

      else
      {
        result = 0;
        *a3 = U_BUFFER_OVERFLOW_ERROR;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::CollationDataBuilder::encodeCEs(icu::CollationDataBuilder *this, unint64_t *a2, uint64_t a3, UErrorCode *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  v4 = a3;
  if (a3 >= 0x20)
  {
    v4 = 0;
    v6 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_8:
    *a4 = v6;
    return v4;
  }

  v8 = *(this + 4);
  if (!v8 || utrie2_isFrozen(v8))
  {
    v4 = 0;
    v6 = U_INVALID_STATE_ERROR;
    goto LABEL_8;
  }

  if (!v4)
  {
    return v4;
  }

  if (v4 == 2)
  {
    if (!*(this + 617))
    {
      v12 = *a2;
      if ((*a2 & 0xFFFFFFFFFF00FFLL) == 0x5000000)
      {
        if (HIDWORD(v12))
        {
          v13 = a2[1];
          if ((v13 & 0xFFFFFFFF00FFFFFFLL) == 0x500)
          {
            return HIDWORD(v12) | (v12 << 8) | (v13 >> 16) | 0xC4;
          }
        }
      }
    }

LABEL_21:
    v14 = 0;
    memset(v17, 0, 124);
    while (1)
    {
      v15 = icu::CollationDataBuilder::encodeOneCEAsCE32(a2[v14]);
      if (v15 == 1)
      {
        break;
      }

      *(v17 + v14++) = v15;
      if (v4 == v14)
      {
        return icu::CollationDataBuilder::encodeExpansion32(this, v17, v4, a4);
      }
    }

    return icu::CollationDataBuilder::encodeExpansion(this, a2, v4, a4);
  }

  if (v4 != 1)
  {
    goto LABEL_21;
  }

  v11 = *a2;

  return icu::CollationDataBuilder::encodeOneCE(this, v11, a4);
}

uint64_t icu::CollationDataBuilder::encodeExpansion32(icu::CollationDataBuilder *this, const int *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = a2;
  v9 = *(this + 12);
  if (v9 >= a3)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 >= v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(this + 8) + 4 * v10);
      }

      if (*a2 == v12)
      {
        if (v10 >> 19)
        {
          goto LABEL_5;
        }

        v13 = a3 - 1;
        v14 = a2 + 1;
        v15 = v11;
        if (a3 == 1)
        {
LABEL_21:
          v17 = (a3 << 8) | (v10 << 13);
          return v17 | 0xC5u;
        }

        while (1)
        {
          v16 = v9 <= v15 ? 0 : *(*(this + 8) + 4 * v15);
          if (v16 != *v14)
          {
            break;
          }

          ++v15;
          ++v14;
          if (!--v13)
          {
            goto LABEL_21;
          }
        }
      }

      ++v10;
      ++v11;
    }

    while (v10 != v9 - a3 + 1);
  }

  if (v9 >= 0x80000)
  {
LABEL_5:
    result = 0;
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    return result;
  }

  if (a3 >= 1)
  {
    v18 = a3;
    while (1)
    {
      v20 = *v7++;
      v19 = v20;
      v21 = *(this + 12);
      if (v21 >= -1 && *(this + 13) > v21)
      {
        goto LABEL_28;
      }

      if (icu::UVector32::expandCapacity((this + 40), v21 + 1, a4))
      {
        break;
      }

LABEL_29:
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v21 = *(this + 12);
LABEL_28:
    *(*(this + 8) + 4 * v21) = v19;
    ++*(this + 12);
    goto LABEL_29;
  }

LABEL_30:
  v17 = (a3 << 8) | (v9 << 13);
  return v17 | 0xC5u;
}

uint64_t icu::CollationDataBuilder::encodeExpansion(icu::CollationDataBuilder *this, const uint64_t *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = a2;
  v9 = *(this + 20);
  if (v9 >= a3)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 >= v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(this + 12) + 8 * v10);
      }

      if (*a2 == v12)
      {
        if (v10 >> 19)
        {
          goto LABEL_5;
        }

        v13 = a3 - 1;
        v14 = a2 + 1;
        v15 = v11;
        if (a3 == 1)
        {
LABEL_21:
          v17 = (a3 << 8) | (v10 << 13);
          return v17 | 0xC6u;
        }

        while (1)
        {
          v16 = v9 <= v15 ? 0 : *(*(this + 12) + 8 * v15);
          if (v16 != *v14)
          {
            break;
          }

          ++v15;
          ++v14;
          if (!--v13)
          {
            goto LABEL_21;
          }
        }
      }

      ++v10;
      ++v11;
    }

    while (v10 != v9 - a3 + 1);
  }

  if (v9 >= 0x80000)
  {
LABEL_5:
    result = 0;
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    return result;
  }

  if (a3 >= 1)
  {
    v18 = a3;
    while (1)
    {
      v20 = *v7++;
      v19 = v20;
      v21 = *(this + 20);
      v22 = v21 + 1;
      if (v21 >= -1 && *(this + 21) > v21)
      {
        goto LABEL_28;
      }

      if (icu::UVector64::expandCapacity((this + 72), v22, a4))
      {
        break;
      }

LABEL_29:
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v21 = *(this + 20);
    v22 = v21 + 1;
LABEL_28:
    *(*(this + 12) + 8 * v21) = v19;
    *(this + 20) = v22;
    goto LABEL_29;
  }

LABEL_30:
  v17 = (a3 << 8) | (v9 << 13);
  return v17 | 0xC6u;
}

uint64_t icu::CollationDataBuilder::copyContractionsFromBaseCE32(icu::CollationDataBuilder *this, uint64_t a2, icu::Collation *a3, unsigned int a4, uint64_t a5, UErrorCode *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0;
  }

  v12 = (*(*(this + 2) + 24) + 2 * (a4 >> 13));
  if ((a4 & 0x100) != 0)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = icu::CollationDataBuilder::copyFromBaseCE32(this, a3, v12[1] | (*v12 << 16), 1, a6);
    v14 = icu::CollationDataBuilder::addConditionalCE32(this, a2, v13, a6);
    *(a5 + 88) = v14;
    if (*a6 > 0)
    {
      return 0;
    }

    v6 = v14;
    a5 = icu::UVector::elementAt((this + 104), v14);
  }

  v15 = *(a2 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a2 + 12);
  }

  v33 = 0;
  v31 = 0u;
  *v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v26 = v12 + 2;
  icu::UCharsTrie::Iterator::Iterator(v27, &v26, 0, a6);
  if (icu::UCharsTrie::Iterator::next(v27, a6))
  {
    while (1)
    {
      v20 = (v29 & 0x8000u) == 0 ? v29 >> 5 : DWORD1(v29);
      icu::UnicodeString::doAppend(a2, (&v28 + 8), 0, v20);
      v21 = icu::CollationDataBuilder::copyFromBaseCE32(this, a3, v32[3], 1, a6);
      v22 = icu::CollationDataBuilder::addConditionalCE32(this, a2, v21, a6);
      *(a5 + 88) = v22;
      v19 = *a6;
      if (v19 > 0)
      {
        break;
      }

      v6 = v22;
      a5 = icu::UVector::elementAt((this + 104), v22);
      v23 = *(a2 + 8);
      if (v18 || (v23 & 1) == 0)
      {
        if ((v23 & 0x8000u) == 0)
        {
          v24 = v23 >> 5;
        }

        else
        {
          v24 = *(a2 + 12);
        }

        if (v24 > v18)
        {
          if (v18 > 1023)
          {
            *(a2 + 8) = v23 | 0xFFE0;
            *(a2 + 12) = v18;
          }

          else
          {
            *(a2 + 8) = *(a2 + 8) & 0x1F | (32 * v18);
          }
        }
      }

      else
      {
        icu::UnicodeString::unBogus(a2);
      }

      if (!icu::UCharsTrie::Iterator::next(v27, a6))
      {
        goto LABEL_28;
      }
    }

    v6 = 0;
  }

LABEL_28:
  icu::UCharsTrie::Iterator::~Iterator(v27, v19);
  return v6;
}

uint64_t *icu::CollationDataBuilder::copyFrom(uint64_t *this, uint64_t **a2, const icu::CollationDataBuilder::CEModifier *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v27 = v4;
    v28 = v5;
    v7 = this;
    this = this[4];
    if (this && (this = utrie2_isFrozen(this), !this))
    {
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v10[0] = a2;
      v10[1] = v7;
      v10[2] = a3;
      SDWORD2(v26) = *a4;
      this = utrie2_enum(a2[4], 0, sub_1952D08FC, v10);
      *a4 = SDWORD2(v26);
      *(v7 + 616) |= *(a2 + 616);
    }

    else
    {
      *a4 = U_INVALID_STATE_ERROR;
    }
  }

  return this;
}

BOOL sub_1952D08FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a4 != -1 && a4 != 192)
  {
    return sub_1952D1AC4(a1, a2, a3, a4);
  }

  return result;
}

void icu::CollationDataBuilder::optimize(icu::CollationDataBuilder *this, const icu::UnicodeSet *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v14 = v3;
    v15 = v4;
    if (!icu::UnicodeSet::isEmpty(a2))
    {
      memset(v13, 0, sizeof(v13));
      icu::UnicodeSetIterator::UnicodeSetIterator(v13, a2);
      while (icu::UnicodeSetIterator::next(v13))
      {
        v8 = DWORD2(v13[0]);
        if ((DWORD2(v13[0]) & 0x80000000) != 0)
        {
          break;
        }

        if (utrie2_get32(*(this + 4), DWORD2(v13[0])) == 192)
        {
          v9 = *(this + 2);
          v10 = sub_1952C6CA0(v9, v8);
          FinalCE32 = icu::CollationData::getFinalCE32(v9, v10);
          v12 = icu::CollationDataBuilder::copyFromBaseCE32(this, v8, FinalCE32, 1, a3);
          utrie2_set32(*(this + 4), v8, v12, a3);
        }
      }

      *(this + 616) = 1;
      icu::UnicodeSetIterator::~UnicodeSetIterator(v13);
    }
  }
}

void icu::CollationDataBuilder::suppressContractions(uint64_t **this, const icu::UnicodeSet *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v16 = v3;
    v17 = v4;
    if (!icu::UnicodeSet::isEmpty(a2))
    {
      memset(v15, 0, sizeof(v15));
      icu::UnicodeSetIterator::UnicodeSetIterator(v15, a2);
      while (icu::UnicodeSetIterator::next(v15))
      {
        v8 = DWORD2(v15[0]);
        if ((DWORD2(v15[0]) & 0x80000000) != 0)
        {
          break;
        }

        v9 = utrie2_get32(this[4], DWORD2(v15[0]));
        if (v9 == 192)
        {
          v10 = this[2];
          v11 = sub_1952C6CA0(v10, v8);
          FinalCE32 = icu::CollationData::getFinalCE32(v10, v11);
          if ((FinalCE32 & 0xCE) == 0xC8)
          {
            v13 = icu::CollationDataBuilder::copyFromBaseCE32(this, v8, FinalCE32, 0, a3);
            utrie2_set32(this[4], v8, v13, a3);
          }
        }

        else if ((v9 & 0xCF) == 0xC7)
        {
          v14 = icu::UVector::elementAt((this + 13), v9 >> 13);
          utrie2_set32(this[4], v8, *(v14 + 72), a3);
          icu::UnicodeSet::remove((this + 18), v8);
        }
      }

      *(this + 616) = 1;
      icu::UnicodeSetIterator::~UnicodeSetIterator(v15);
    }
  }
}

BOOL icu::CollationDataBuilder::getJamoCE32s(icu::CollationDataBuilder *this, unsigned int *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(this + 2) == 0;
  v24 = this + 96;
  do
  {
    if (v6 >= 0x28)
    {
      LODWORD(v9) = 4480;
    }

    else
    {
      LODWORD(v9) = 4430;
    }

    if (v6 >= 0x13)
    {
      v9 = v9;
    }

    else
    {
      v9 = 4352;
    }

    v10 = (v6 + v9);
    v11 = utrie2_get32(*(this + 4), v6 + v9);
    v12 = v11;
    v13 = v11 != -1 && v11 != 192;
    if (v11 == 192)
    {
      v11 = sub_1952C6CA0(*(this + 2), v10);
    }

    if ((~v11 & 0xC0) != 0)
    {
      goto LABEL_29;
    }

    v14 = v11 & 0xF;
    if (v14 > 9)
    {
      if (v14 != 14)
      {
        if (v14 == 15)
        {
          v11 = 192;
          v7 = 1;
        }

        else if (v14 - 10 < 4)
        {
          goto LABEL_61;
        }

        goto LABEL_29;
      }

      v15 = v11 >> 13;
      if (v12 == 192)
      {
        v16 = (*(this + 2) + 16);
      }

      else
      {
        v16 = v24;
        if (*(this + 20) <= v15)
        {
          v17 = 0;
          goto LABEL_40;
        }
      }

      v17 = *(*v16 + 8 * v15);
LABEL_40:
      v11 = icu::Collation::getThreeBytePrimaryForOffsetData(v10, v17) | 0xC1;
      goto LABEL_29;
    }

    if ((v11 & 0xF) > 6)
    {
      if (v14 - 8 < 2)
      {
LABEL_26:
        if (v12 == 192)
        {
          v7 = 1;
        }

        v11 = v12;
        goto LABEL_29;
      }

      if (v14 == 7)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v14 - 5 < 2)
      {
        goto LABEL_26;
      }

      if ((v11 & 0xF) == 0 || v14 == 3)
      {
LABEL_61:
        result = 0;
        *a3 = U_INTERNAL_PROGRAM_ERROR;
        return result;
      }
    }

LABEL_29:
    v8 |= v13;
    a2[v6++] = v11;
  }

  while (v6 != 67);
  if (v8)
  {
    v18 = v7 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    for (i = 0; i != 67; ++i)
    {
      if (a2[i] == 192)
      {
        if (i >= 0x28)
        {
          v20 = 4480;
        }

        else
        {
          v20 = 4430;
        }

        if (i >= 0x13)
        {
          v21 = v20;
        }

        else
        {
          v21 = 4352;
        }

        v22 = sub_1952C6CA0(*(this + 2), i + v21);
        a2[i] = icu::CollationDataBuilder::copyFromBaseCE32(this, (i + v21), v22, 1, a3);
      }
    }
  }

  return v8 && *a3 < U_ILLEGAL_ARGUMENT_ERROR;
}

void icu::CollationDataBuilder::setDigitTags(uint64_t **this, UErrorCode *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = L"[:Nd:]";
  icu::UnicodeString::UnicodeString(v16, 1, &v13, -1);
  icu::UnicodeSet::UnicodeSet(v14, v16, a2);
  v5 = icu::UnicodeString::~UnicodeString(v4, v16);
  v6 = *a2;
  if (v6 > 0)
  {
    goto LABEL_12;
  }

  memset(v16, 0, sizeof(v16));
  v7 = icu::UnicodeSetIterator::UnicodeSetIterator(v5, v14);
  if (!icu::UnicodeSetIterator::next(v7))
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = DWORD2(v16[0]);
    v9 = utrie2_get32(this[4], DWORD2(v16[0]));
    if (v9 == -1 || v9 == 192)
    {
      goto LABEL_8;
    }

    v10 = icu::CollationDataBuilder::addCE32(this, v9, a2);
    if (*a2 > 0)
    {
      goto LABEL_11;
    }

    v11 = v10;
    if (v10 >= 0x80000)
    {
      break;
    }

    v12 = u_charDigitValue(v8);
    utrie2_set32(this[4], v8, (v11 << 13) | (v12 << 8) | 0xCAu, a2);
LABEL_8:
    if (!icu::UnicodeSetIterator::next(v16))
    {
      goto LABEL_11;
    }
  }

  *a2 = U_BUFFER_OVERFLOW_ERROR;
LABEL_11:
  icu::UnicodeSetIterator::~UnicodeSetIterator(v16);
LABEL_12:
  icu::UnicodeSet::~UnicodeSet(v6, v14);
}

uint64_t icu::CollationDataBuilder::setLeadSurrogates(uint64_t **this, UErrorCode *a2)
{
  v4 = 55296;
  v5 = 1024;
  do
  {
    v7 = -1;
    utrie2_enumForLeadSurrogate(this[4], v4, 0, sub_1952D1008, &v7);
    result = utrie2_set32ForLeadSurrogateCodeUnit(this[4], v4, v7 | 0xCDu, a2);
    v4 = (v4 + 1);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1952D1008(int *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == -1)
  {
    v4 = 0;
  }

  else
  {
    if (a4 != 192)
    {
      goto LABEL_8;
    }

    v4 = 256;
  }

  if (*a1 < 0)
  {
    v5 = 1;
    goto LABEL_10;
  }

  if (*a1 != v4)
  {
LABEL_8:
    v5 = 0;
    v4 = 512;
LABEL_10:
    *a1 = v4;
    return v5;
  }

  return 1;
}

uint64_t icu::CollationDataBuilder::build(icu::CollationDataBuilder *this, icu::CollationData *a2, UErrorCode *a3)
{
  icu::CollationDataBuilder::buildMappings(this, a2, a3);
  v6 = *(this + 2);
  if (v6)
  {
    *(a2 + 14) = *(v6 + 56);
    *(a2 + 9) = *(v6 + 72);
    *(a2 + 25) = *(v6 + 100);
    *(a2 + 104) = *(v6 + 104);
    *(a2 + 30) = *(v6 + 120);
  }

  return icu::CollationDataBuilder::buildFastLatinTable(this, a2, a3);
}

void icu::CollationDataBuilder::buildMappings(icu::CollationDataBuilder *this, icu::CollationData *a2, UErrorCode *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return;
  }

  v5 = *(this + 4);
  if (!v5 || utrie2_isFrozen(v5))
  {
    *a3 = U_INVALID_STATE_ERROR;
    return;
  }

  icu::CollationDataBuilder::buildContexts(this, a3);
  v39 = 0u;
  memset(v40, 0, 188);
  v37 = 0u;
  v38 = 0u;
  *v35 = 0u;
  v36 = 0u;
  if (!icu::CollationDataBuilder::getJamoCE32s(this, v35, a3))
  {
    v12 = 44032;
    do
    {
      v13 = sub_1952C6CA0(*(this + 2), v12);
      utrie2_setRange32(*(this + 4), v12, v12 + 587, v13, 1, a3);
      v14 = v12 >= 0xD558;
      v12 = (v12 + 588);
    }

    while (!v14);
    v15 = -1;
    goto LABEL_33;
  }

  v7 = 0;
  v8 = *(this + 12);
  v9 = v8;
  while (1)
  {
    v10 = v35[v7];
    if (v9 < -1 || *(this + 13) <= v9)
    {
      if (!icu::UVector32::expandCapacity((this + 40), v9 + 1, a3))
      {
        goto LABEL_13;
      }

      v9 = *(this + 12);
    }

    *(*(this + 8) + 4 * v9) = v10;
    ++*(this + 12);
LABEL_13:
    if (v7 == 66)
    {
      break;
    }

    v9 = *(this + 12);
    ++v7;
  }

  if ((~HIDWORD(v39) & 0xC0) != 0)
  {
    v16 = v40;
    v17 = -19;
    do
    {
      v18 = v17;
      if (v17 == -66)
      {
        break;
      }

      v19 = *v16++;
      --v17;
    }

    while ((~v19 & 0xC0) != 0);
    v11 = -v18 > 0x41;
  }

  else
  {
    v11 = 0;
  }

  v20 = 0;
  v21 = 44032;
  do
  {
    if (v11)
    {
      if ((~v35[v20] & 0xC0) != 0)
      {
        v22 = 460;
      }

      else
      {
        v22 = 204;
      }
    }

    else
    {
      v22 = 204;
    }

    utrie2_setRange32(*(this + 4), v21, v21 + 587, v22, 1, a3);
    ++v20;
    v21 = (v21 + 588);
  }

  while (v20 != 19);
  v15 = v8;
LABEL_33:
  icu::CollationDataBuilder::setDigitTags(this, a3);
  icu::CollationDataBuilder::setLeadSurrogates(this, a3);
  if (!*(this + 617))
  {
    v23 = utrie2_get32(*(this + 4), 0);
    icu::UVector32::setElementAt(this + 40, v23, 0);
    utrie2_set32(*(this + 4), 0, 203, a3);
  }

  utrie2_freeze(*(this + 4), 1u, a3);
  if (*a3 <= 0)
  {
    v24 = 0x10000;
    v25 = 55296;
    do
    {
      if (!icu::UnicodeSet::containsNone((this + 416), v24, v24 + 1023))
      {
        icu::UnicodeSet::add((this + 416), v25);
      }

      ++v25;
      v26 = v24 == 1113088;
      v24 += 1024;
    }

    while (!v26);
    icu::UnicodeSet::freeze((this + 416));
    v27 = *(this + 8);
    *a2 = *(this + 4);
    *(a2 + 1) = v27;
    *(a2 + 2) = *(this + 12);
    v28 = *(this + 176);
    if ((v28 & 0x11) != 0)
    {
      v29 = 0;
    }

    else if ((v28 & 2) != 0)
    {
      v29 = this + 354;
    }

    else
    {
      v29 = *(this + 46);
    }

    *(a2 + 3) = v29;
    v30 = *(this + 20);
    *(a2 + 15) = *(this + 12);
    *(a2 + 16) = v30;
    v31 = *(this + 176);
    if ((v31 & 0x8000) != 0)
    {
      v32 = *(this + 89);
    }

    else
    {
      v32 = v31 >> 5;
    }

    *(a2 + 17) = v32;
    v33 = *(this + 2);
    *(a2 + 4) = v33;
    if ((v15 & 0x80000000) != 0)
    {
      v34 = *(v33 + 40);
    }

    else
    {
      v34 = v27 + 4 * v15;
    }

    *(a2 + 5) = v34;
    *(a2 + 10) = this + 416;
  }
}

uint64_t icu::CollationDataBuilder::buildFastLatinTable(uint64_t this, icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 <= 0 && *(this + 618))
  {
    v3 = *(this + 624);
    if (v3)
    {
      (*(*v3 + 8))(v3, a2);
    }

    operator new();
  }

  return this;
}

void icu::CollationDataBuilder::buildContexts(icu::CollationDataBuilder *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v12 = v2;
    v13 = v3;
    if (*(this + 176))
    {
      v6 = 2;
    }

    else
    {
      v6 = *(this + 176) & 0x1E;
    }

    *(this + 176) = v6;
    ++*(this + 102);
    memset(v11, 0, sizeof(v11));
    icu::UnicodeSetIterator::UnicodeSetIterator(v11, (this + 144));
    if (*a2 <= 0)
    {
      while (icu::UnicodeSetIterator::next(v11))
      {
        v7 = DWORD2(v11[0]);
        v8 = utrie2_get32(*(this + 4), DWORD2(v11[0]));
        if ((v8 & 0xCF) != 0xC7)
        {
          *a2 = U_INTERNAL_PROGRAM_ERROR;
          break;
        }

        v9 = icu::UVector::elementAt((this + 104), v8 >> 13);
        v10 = icu::CollationDataBuilder::buildContext(this, v9, a2);
        utrie2_set32(*(this + 4), v7, v10, a2);
        if (*a2 >= 1)
        {
          break;
        }
      }
    }

    icu::UnicodeSetIterator::~UnicodeSetIterator(v11);
  }
}

uint64_t icu::CollationDataBuilder::addContextTrie(icu::CollationDataBuilder *this, int a2, icu::UCharsTrieBuilder *a3, UErrorCode *a4)
{
  v6 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v32 = 0;
  v31 = 0u;
  v28 = &unk_1F0935D00;
  LOWORD(v29) = 2;
  LOWORD(v23) = HIWORD(a2);
  v8 = icu::UnicodeString::doAppend(&v28, &v23, 0, 1);
  LOWORD(v23) = v6;
  icu::UnicodeString::doAppend(v8, &v23, 0, 1);
  v24 = 0u;
  v25 = 0u;
  v27 = 0;
  v26 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  v9 = icu::UCharsTrieBuilder::buildUnicodeString(a3, 1, &v23, a4);
  v10 = *(v9 + 4);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(v9 + 3);
  }

  icu::UnicodeString::doAppend(&v28, v9, 0, v13);
  v14 = *a4;
  if (v14 > 0)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if ((v29 & 0x8000u) == 0)
  {
    v16 = v29 >> 5;
  }

  else
  {
    v16 = DWORD1(v29);
  }

  v17 = *(this + 176);
  if (v17 < 0)
  {
    v18 = *(this + 89);
    if (v29)
    {
LABEL_19:
      if ((v17 & 0x8000) != 0)
      {
        v15 = *(this + 89);
      }

      else
      {
        v15 = v17 >> 5;
      }

      if ((v29 & 0x8000u) == 0)
      {
        v20 = v29 >> 5;
      }

      else
      {
        v20 = DWORD1(v29);
      }

      icu::UnicodeString::doAppend(this + 344, &v28, 0, v20);
      goto LABEL_26;
    }
  }

  else
  {
    v18 = *(this + 176) >> 5;
    if (v29)
    {
      goto LABEL_19;
    }
  }

  if (v16 < 1)
  {
    goto LABEL_19;
  }

  if ((v29 & 2) != 0)
  {
    v19 = &v29 + 2;
  }

  else
  {
    v19 = v30;
  }

  v15 = icu::UnicodeString::indexOf(this + 344, v19, 0, v16, 0, v18);
  if ((v15 & 0x80000000) != 0)
  {
    LOWORD(v17) = *(this + 176);
    goto LABEL_19;
  }

LABEL_26:
  icu::UnicodeString::~UnicodeString(v14, &v23);
  icu::UnicodeString::~UnicodeString(v21, &v28);
  return v15;
}

uint64_t icu::CollationDataBuilder::getCEs(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, int a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(this + 79);
  if (!v5)
  {
    operator new();
  }

  return sub_1952CDD80(v5, a2, a3, a4, a5);
}

uint64_t icu::CollationDataBuilder::getCEs(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, uint64_t *a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  if (v11)
  {
    icu::operator+(a2, a3, v15);
    CEs = icu::CollationDataBuilder::getCEs(this, v15, v11, a4, a5);
    icu::UnicodeString::~UnicodeString(v13, v15);
    return CEs;
  }

  else
  {

    return icu::CollationDataBuilder::getCEs(this, a3, 0, a4, a5);
  }
}

BOOL sub_1952D1AC4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1952D1B5C(a1, a4);
  v8 = v7;
  utrie2_setRange32(*(*(a1 + 8) + 32), a2, a3, v7, 1, (a1 + 272));
  if ((v8 & 0xCF) == 0xC7)
  {
    icu::UnicodeSet::add((*(a1 + 8) + 144), a2, a3);
  }

  return *(a1 + 272) < 1;
}

uint64_t sub_1952D1B5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v50 = *MEMORY[0x1E69E9840];
  if ((~a2 & 0xC0) != 0)
  {
    v20 = (*(**(a1 + 16) + 24))(*(a1 + 16), a2);
    if (v20 != 0x101000100)
    {
      v21 = v20;
      v22 = *(a1 + 8);

      return icu::CollationDataBuilder::encodeOneCE(v22, v21, (a1 + 272));
    }

    return v2;
  }

  v4 = a2 & 0xF;
  if (v4 == 7)
  {
    v33 = icu::UVector::elementAt((*a1 + 104), a2 >> 13);
    v34 = *(a1 + 8);
    v35 = sub_1952D1B5C(a1, v33[18]);
    v36 = icu::CollationDataBuilder::addConditionalCE32(v34, (v33 + 2), v35, (a1 + 272));
    v2 = (v36 << 13) | 0xC7u;
    v37 = v33[22];
    if (v37 < 0)
    {
      return v2;
    }

    v38 = v36;
    while (1)
    {
      v39 = icu::UVector::elementAt((*a1 + 104), v37);
      v40 = icu::UVector::elementAt((*(a1 + 8) + 104), v38);
      v41 = *(a1 + 8);
      v42 = sub_1952D1B5C(a1, *(v39 + 72));
      v38 = icu::CollationDataBuilder::addConditionalCE32(v41, (v39 + 8), v42, (a1 + 272));
      v43 = *(v39 + 16);
      if ((v43 & 0x8000) != 0)
      {
        if (*(v39 + 20))
        {
LABEL_54:
          if ((v43 & 2) != 0)
          {
            v44 = (v39 + 18);
          }

          else
          {
            v44 = *(v39 + 32);
          }

          v45 = *v44 + 1;
          goto LABEL_60;
        }
      }

      else if (v43 >> 5)
      {
        goto LABEL_54;
      }

      v45 = 0x10000;
LABEL_60:
      v46 = *(a1 + 8);
      icu::UnicodeString::tempSubString(v49, (v39 + 8), v45, 0x7FFFFFFF);
      icu::UnicodeSet::addAll((v46 + 416), v49);
      icu::UnicodeString::~UnicodeString(v47, v49);
      *(v40 + 88) = v38;
      v37 = *(v39 + 88);
      if (v37 < 0)
      {
        return v2;
      }
    }
  }

  if (v4 == 6)
  {
    v23 = (*(*a1 + 96) + 8 * (a2 >> 13));
    v24 = (a2 >> 8) & 0x1F;
    if (!v24)
    {
LABEL_47:
      v32 = *(a1 + 8);

      return icu::CollationDataBuilder::encodeExpansion(v32, v23, v24, (a1 + 272));
    }

    v25 = 0;
    v26 = 0;
    v27 = a1 + 24;
    while (1)
    {
      v28 = v23[v25];
      v29 = (*(**(a1 + 16) + 32))(*(a1 + 16), v28);
      if (v29 != 0x101000100)
      {
        break;
      }

      v29 = v28;
      if (v26)
      {
        goto LABEL_44;
      }

      v30 = 1;
LABEL_45:
      if (++v25 == v24)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      }
    }

    if (!v26 && v25)
    {
      for (i = 0; i != v25; ++i)
      {
        *(v27 + 8 * i) = v23[i];
      }
    }

LABEL_44:
    v30 = 0;
    *(v27 + 8 * v25) = v29;
    v26 = 1;
    goto LABEL_45;
  }

  if (v4 != 5)
  {
    return v2;
  }

  v5 = (*(*a1 + 64) + 4 * (a2 >> 13));
  v6 = (a2 >> 8) & 0x1F;
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + 24;
  do
  {
    v10 = v5[v7];
    if ((~v10 & 0xC0) != 0 && (v11 = (*(**(a1 + 16) + 24))(*(a1 + 16), v5[v7]), v11 != 0x101000100))
    {
      if (!v8 && v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v14 = v5[j];
          v15 = v14;
          v16 = v14 & 0xFFFFFF00;
          if ((v14 & 0xF) == 1)
          {
            v16 = ((v14 & 0xFFFFFF00) << 32) | 0x5000500;
          }

          v17 = (v14 << 16) & 0xFF000000 | (((v14 & 0xFFFF0000) >> 16) << 48) | (v14 << 8);
          if (v15 > 0xBF)
          {
            v17 = v16;
          }

          *(v9 + 8 * j) = v17;
        }
      }
    }

    else
    {
      if (!v8)
      {
        v12 = 1;
        goto LABEL_26;
      }

      if (v10 > 0xBFu)
      {
        if ((v10 & 0xF) == 1)
        {
          v11 = ((v10 & 0xFFFFFF00) << 32) | 0x5000500;
        }

        else
        {
          v11 = v10 & 0xFFFFFF00;
        }
      }

      else
      {
        v11 = (v10 << 16) & 0xFF000000 | (((v10 & 0xFFFF0000) >> 16) << 48) | (v10 << 8);
      }
    }

    v12 = 0;
    *(v9 + 8 * v7) = v11;
    v8 = 1;
LABEL_26:
    ++v7;
  }

  while (v7 != v6);
  if (v12)
  {
LABEL_28:
    v18 = *(a1 + 8);

    return icu::CollationDataBuilder::encodeExpansion32(v18, v5, v6, (a1 + 272));
  }

LABEL_62:
  v48 = *(**(a1 + 8) + 32);

  return v48();
}