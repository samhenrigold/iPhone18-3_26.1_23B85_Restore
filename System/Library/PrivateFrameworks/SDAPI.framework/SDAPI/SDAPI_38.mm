void sub_262788340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t *TrigramData::fillTrigramRecordLookup(uint64_t a1, unsigned int a2, unsigned __int16 **a3, _WORD **a4, void *a5)
{
  v10 = (*a3)[*(a3 + 2) - 1];
  result = TrigramData::allocLookup(a1, a2, v10);
  if (*(a1 + 40))
  {
    if (v10)
    {
      v12 = 0;
      v13 = (v10 + 1);
      if (v13 <= 2)
      {
        v13 = 2;
      }

      v14 = v13 - 1;
      do
      {
        *(*(a1 + 328) + (v12 + *(*(a1 + 280) + 4 * a2))) = 0;
        ++v12;
      }

      while (v14 != v12);
    }

    if (*(a3 + 2))
    {
      v15 = 0;
      do
      {
        *(*(a1 + 328) + (*a3)[v15] + *(*(a1 + 280) + 4 * a2) - 1) = *(*a5 + v15);
        ++v15;
      }

      while (v15 < *(a3 + 2));
    }
  }

  else
  {
    if (v10)
    {
      v16 = *(*(a1 + 280) + 4 * a2);
      v17 = *(a1 + 312);
      if ((v10 + 1) <= 2u)
      {
        v18 = 2;
      }

      else
      {
        v18 = (v10 + 1);
      }

      v19 = v18 - 1;
      do
      {
        *(v17 + 2 * v16++) = 20000;
        --v19;
      }

      while (v19);
    }

    v20 = *(a3 + 2);
    if (v20)
    {
      v21 = *a3;
      v22 = *a4;
      v23 = *(*(a1 + 280) + 4 * a2);
      v24 = *(a1 + 312);
      do
      {
        v26 = *v21++;
        v25 = v26;
        LOWORD(v26) = *v22++;
        *(v24 + 2 * (v25 + v23 - 1)) = v26;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t *TrigramData::allocSearch(uint64_t *this, unsigned int a2, int a3)
{
  v3 = this;
  *(this[37] + 2 * a2) = a3;
  if (a3 == 1)
  {
    *(this[35] + 4 * a2) = -65536;
  }

  else
  {
    v5 = *(this + 88);
    *(this[35] + 4 * a2) = v5;
    v6 = v5 + a3;
    v7 = *(this + 89);
    if (v6 > v7)
    {
      this = DgnPrimArray<short>::reallocElts((this + 43), v6 - v7, 1);
      v6 = *(v3 + 88) + a3;
    }

    *(v3 + 88) = v6;
    if (*(v3 + 2))
    {
      v8 = *(v3 + 96) + a3;
      v9 = *(v3 + 97);
      if (v8 > v9)
      {
        this = DgnPrimArray<char>::reallocElts((v3 + 47), v8 - v9, 1);
        v8 = *(v3 + 96) + a3;
      }

      *(v3 + 96) = v8;
    }

    else
    {
      v10 = *(v3 + 92) + a3;
      v11 = *(v3 + 93);
      if (v10 > v11)
      {
        this = DgnPrimArray<short>::reallocElts((v3 + 45), v10 - v11, 1);
        v10 = *(v3 + 92) + a3;
      }

      *(v3 + 92) = v10;
    }
  }

  return this;
}

uint64_t TrigramData::setSearchSuccIdForIndex(uint64_t this, unsigned int a2, int a3, unsigned __int16 a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = *(v4 + 4 * a2) | (a4 << 16);
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 440);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 344);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

uint64_t TrigramData::setSearchQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 472);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 376);
    }

    *(v7 + v6) = a4;
  }

  return this;
}

uint64_t TrigramData::setSearchScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 456);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 360);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

uint64_t *TrigramData::allocLookup(uint64_t *this, unsigned int a2, int a3)
{
  v5 = this;
  v6 = this[35];
  if (*(this + 2))
  {
    v7 = *(this + 84);
    *(v6 + 4 * a2) = v7;
    v8 = v7 + a3;
    v9 = *(this + 85);
    if (v8 > v9)
    {
      this = DgnPrimArray<char>::reallocElts((this + 41), v8 - v9, 1);
      v8 = *(v5 + 84) + a3;
    }

    *(v5 + 84) = v8;
  }

  else
  {
    v10 = *(this + 80);
    *(v6 + 4 * a2) = v10;
    v11 = v10 + a3;
    v12 = *(this + 81);
    if (v11 > v12)
    {
      this = DgnPrimArray<short>::reallocElts((this + 39), v11 - v12, 1);
      v11 = *(v5 + 80) + a3;
    }

    *(v5 + 80) = v11;
  }

  *(v5[37] + 2 * a2) = a3;
  *(v5[16] + 4 * (a2 >> 5)) |= 1 << a2;
  return this;
}

uint64_t *TrigramData::fillTrigramRecordPreload(TrigramData *this, unsigned int a2, uint64_t a3, __int16 **a4, void *a5)
{
  v10 = 3;
  if (!*(this + 10))
  {
    v10 = 4;
  }

  if (v10 * *(a3 + 8) >= *(*a3 + 2 * (*(a3 + 8) - 1)) << (*(this + 10) == 0))
  {

    return TrigramData::fillTrigramRecordLookup(this, a2, a3, a4, a5);
  }

  else
  {
    result = TrigramData::allocSearch(this, a2, *(a3 + 8));
    v12 = *(a3 + 8);
    if (*(this + 10))
    {
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = v13 + *(*(this + 35) + 4 * a2);
          *(*(this + 43) + 2 * v14) = *(*a3 + 2 * v13);
          *(*(this + 47) + v14) = *(*a5 + v13++);
        }

        while (v13 < *(a3 + 8));
      }
    }

    else if (v12)
    {
      v15 = *a3;
      v16 = *(*(this + 35) + 4 * a2);
      v17 = *(this + 43);
      v18 = *a4;
      v19 = *(this + 45);
      do
      {
        v20 = *v15++;
        *(v17 + 2 * v16) = v20;
        v21 = *v18++;
        *(v19 + 2 * v16++) = v21;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *TrigramData::addTrigramBackoffWeightQuantization(uint64_t *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  *(this + 1) = 1;
  v5 = *(this + 6);
  if (!v5)
  {
    if (*(this + 7))
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 2), 1, 1);
      v6 = *(v4 + 6);
    }

    *(v4[2] + 2 * v6) = 20000;
    v5 = v6 + 1;
    *(v4 + 6) = v5;
  }

  if (v5 == *(v4 + 7))
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 2), 1, 1);
    v5 = *(v4 + 6);
  }

  *(v4[2] + 2 * v5) = a3;
  *(v4 + 6) = v5 + 1;
  return this;
}

uint64_t *TrigramData::addTrigramScoreQuantization(uint64_t *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  *(this + 2) = 1;
  v5 = *(this + 10);
  if (!v5)
  {
    if (*(this + 11))
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 4), 1, 1);
      v6 = *(v4 + 10);
    }

    *(v4[4] + 2 * v6) = 20000;
    v5 = v6 + 1;
    *(v4 + 10) = v5;
  }

  if (v5 == *(v4 + 11))
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 4), 1, 1);
    v5 = *(v4 + 10);
  }

  *(v4[4] + 2 * v5) = a3;
  *(v4 + 10) = v5 + 1;
  return this;
}

uint64_t *TrigramData::allocLoaded(uint64_t *this, unsigned int a2)
{
  v3 = this;
  v4 = this[35];
  v5 = *(v4 + 4 * a2);
  v6 = *(this + 104);
  *(v4 + 4 * a2) = v6;
  if (v6 == *(this + 105))
  {
    this = DgnPrimArray<unsigned int>::reallocElts((this + 51), 1, 1);
    v6 = *(v3 + 416);
  }

  *(*(v3 + 408) + 4 * v6) = v5;
  ++*(v3 + 416);
  v7 = *(v3 + 448);
  v8 = *(v3 + 432);
  if (v8 == *(v3 + 436))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 424, 1, 1);
    v8 = *(v3 + 432);
  }

  *(*(v3 + 424) + 4 * v8) = v7;
  ++*(v3 + 432);
  v9 = *(*(v3 + 296) + 2 * a2);
  v10 = *(v3 + 448) + v9;
  v11 = *(v3 + 452);
  if (v10 > v11)
  {
    this = DgnPrimArray<short>::reallocElts(v3 + 440, v10 - v11, 1);
    v10 = *(v3 + 448) + v9;
  }

  *(v3 + 448) = v10;
  if (*(v3 + 8))
  {
    v12 = *(v3 + 480) + v9;
    v13 = *(v3 + 484);
    if (v12 > v13)
    {
      this = DgnPrimArray<char>::reallocElts(v3 + 472, v12 - v13, 1);
      v12 = *(v3 + 480) + v9;
    }

    *(v3 + 480) = v12;
  }

  else
  {
    v14 = *(v3 + 464) + v9;
    v15 = *(v3 + 468);
    if (v14 > v15)
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 456, v14 - v15, 1);
      v14 = *(v3 + 464) + v9;
    }

    *(v3 + 464) = v14;
  }

  *(*(v3 + 160) + 4 * (a2 >> 5)) |= 1 << a2;
  v16 = *(v3 + 400);
  if (v16 == *(v3 + 404))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 392, 1, 1);
    v16 = *(v3 + 400);
  }

  *(*(v3 + 392) + 4 * v16) = a2;
  ++*(v3 + 400);
  return this;
}

void QuadgramData::QuadgramData(QuadgramData *this)
{
  *(this + 1) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  DgnString::DgnString((this + 112));
  DgnString::DgnString((this + 128));
  DgnString::DgnString((this + 144));
  *(this + 10) = 0u;
  *this = 0;
  *(this + 2) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 70) = 0;
  QuadgramData::allocQuad1(this, 0, 0);
}

void sub_262788C70(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 520);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 488);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 248);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v3);
  BitArray::~BitArray((v2 + 144));
  BitArray::~BitArray((v2 + 128));
  BitArray::~BitArray((v1 + 96));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void QuadgramData::allocQuad1(uint64_t this, unsigned int a2, int a3)
{
  v6 = *(this + 56);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(this + 60))
      {
        DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
        v6 = *(this + 56);
      }

      *(*(this + 48) + 2 * v6) = 0;
      *(this + 56) = v6 + 1;
      v8 = *(this + 72);
      if (v8 == *(this + 76))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 1);
        v8 = *(this + 72);
      }

      v7 = *(this + 64);
      *(v7 + 4 * v8) = -1;
      ++*(this + 72);
      v6 = *(this + 56);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = *(this + 64);
  }

  *(*(this + 48) + 2 * a2) = a3;
  v9 = *(this + 88);
  *(v7 + 4 * a2) = v9;
  v10 = v9 + a3;
  v11 = *(this + 92);
  if (v10 > v11)
  {
    DgnPrimArray<short>::reallocElts(this + 80, v10 - v11, 1);
    v10 = *(this + 88) + a3;
  }

  *(this + 88) = v10;
  if (*this)
  {
    BitArray::addSize((this + 112), a3);
    BitArray::addSize((this + 128), a3);
    BitArray::addSize((this + 144), a3);
  }

  v12 = *(this + 256) + a3;
  v13 = *(this + 260);
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 248, v12 - v13, 1);
    v12 = *(this + 256) + a3;
  }

  *(this + 256) = v12;
  v14 = *(this + 108);
  v15 = *(this + 104) + a3;
  if (v15 > v14)
  {
    DgnPrimArray<short>::reallocElts(this + 96, v15 - v14, 1);
    v15 = *(this + 104) + a3;
  }

  *(this + 104) = v15;
}

void QuadgramData::~QuadgramData(QuadgramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 520);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 488);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 160);
  BitArray::~BitArray((this + 144));
  BitArray::~BitArray((this + 128));
  BitArray::~BitArray((this + 112));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void **QuadgramData::compact(void **this)
{
  DgnPrimArray<unsigned short>::compact((this + 6));
  DgnPrimArray<unsigned int>::compact((this + 8));
  DgnPrimArray<unsigned short>::compact((this + 10));
  DgnPrimArray<unsigned short>::compact((this + 12));
  BitArray::compact((this + 14));
  BitArray::compact((this + 16));
  DgnPrimArray<unsigned int>::compact((this + 31));
  DgnPrimArray<unsigned short>::compact((this + 33));
  DgnPrimArray<unsigned short>::compact((this + 35));
  DgnPrimArray<unsigned short>::compact((this + 37));
  DgnPrimArray<unsigned char>::compact(this + 39);
  DgnPrimArray<unsigned int>::compact((this + 41));
  DgnPrimArray<unsigned short>::compact((this + 43));
  DgnPrimArray<unsigned short>::compact((this + 45));
  DgnPrimArray<unsigned char>::compact(this + 47);
  DgnPrimArray<unsigned int>::compact((this + 49));
  DgnPrimArray<unsigned int>::compact((this + 51));
  DgnPrimArray<unsigned int>::compact((this + 53));
  DgnPrimArray<unsigned short>::compact((this + 55));
  DgnPrimArray<unsigned short>::compact((this + 57));
  DgnPrimArray<unsigned char>::compact(this + 59);
  DgnPrimArray<unsigned int>::compact((this + 61));
  DgnPrimArray<unsigned short>::compact((this + 63));
  DgnPrimArray<unsigned short>::compact((this + 65));
  DgnPrimArray<unsigned short>::compact((this + 67));

  return DgnPrimArray<unsigned char>::compact(this + 69);
}

void QuadgramData::printSize(QuadgramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2771);
  if (v234)
  {
    v13 = v233;
  }

  else
  {
    v13 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v13);
  DgnString::~DgnString(&v233);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CFB0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v18 = v233;
  }

  else
  {
    v18 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v233);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v20 = v233;
  }

  else
  {
    v20 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v233);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v22 = v233;
  }

  else
  {
    v22 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v232 = a3;
  DgnString::~DgnString(&v233);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 12;
  }

  else
  {
    v23 = 16;
  }

  v24 = *(this + 6);
  v25 = *(this + 7);
  if (v25 >= v24)
  {
    v26 = 0;
    if (v24 > 0)
    {
      v23 += 2 * (v24 - 1) + 2;
    }

    v27 = v23 + 2 * (v25 - v24);
  }

  else
  {
    v26 = 2 * v24;
    v27 = v23;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v29 = v233;
  }

  else
  {
    v29 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_26288CFB0, v16, v16, v29, v27, v23, v26);
  DgnString::~DgnString(&v233);
  *a4 += v27;
  *a5 += v23;
  *a6 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  else
  {
    v30 = 16;
  }

  v31 = *(this + 10);
  v32 = *(this + 11);
  if (v32 >= v31)
  {
    v33 = 0;
    if (v31 > 0)
    {
      v30 += 2 * (v31 - 1) + 2;
    }

    v34 = v30 + 2 * (v32 - v31);
  }

  else
  {
    v33 = 2 * v31;
    v34 = v30;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v36 = v233;
  }

  else
  {
    v36 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, &unk_26288CFB0, v16, v16, v36, v34, v30, v33);
  DgnString::~DgnString(&v233);
  *a4 += v34;
  *a5 += v30;
  *a6 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 14);
  v39 = *(this + 15);
  if (v39 >= v38)
  {
    v40 = 0;
    if (v38 > 0)
    {
      v37 += 2 * (v38 - 1) + 2;
    }

    v41 = v37 + 2 * (v39 - v38);
  }

  else
  {
    v40 = 2 * v38;
    v41 = v37;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v43 = v233;
  }

  else
  {
    v43 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_26288CFB0, v16, v16, v43, v41, v37, v40);
  DgnString::~DgnString(&v233);
  *a4 += v41;
  *a5 += v37;
  *a6 += v40;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 12;
  }

  else
  {
    v44 = 16;
  }

  v45 = *(this + 18);
  v46 = *(this + 19);
  if (v46 >= v45)
  {
    v47 = 0;
    if (v45 > 0)
    {
      v44 += 4 * (v45 - 1) + 4;
    }

    v48 = v44 + 4 * (v46 - v45);
  }

  else
  {
    v47 = 4 * v45;
    v48 = v44;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v50 = v233;
  }

  else
  {
    v50 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v15, &unk_26288CFB0, v16, v16, v50, v48, v44, v47);
  DgnString::~DgnString(&v233);
  *a4 += v48;
  *a5 += v44;
  *a6 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 22);
  v53 = *(this + 23);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 2 * (v52 - 1) + 2;
    }

    v55 = v51 + 2 * (v53 - v52);
  }

  else
  {
    v54 = 2 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v57 = v233;
  }

  else
  {
    v57 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_26288CFB0, v16, v16, v57, v55, v51, v54);
  DgnString::~DgnString(&v233);
  *a4 += v55;
  *a5 += v51;
  *a6 += v54;
  v58 = BitArray::sizeObject(this + 112, 0);
  v59 = BitArray::sizeObject(this + 112, 1);
  v60 = BitArray::sizeObject(this + 112, 3);
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v62 = v233;
  }

  else
  {
    v62 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &unk_26288CFB0, v16, v16, v62, v58, v59, v60);
  DgnString::~DgnString(&v233);
  *a4 += v58;
  *a5 += v59;
  *a6 += v60;
  v63 = BitArray::sizeObject(this + 128, 0);
  v64 = BitArray::sizeObject(this + 128, 1);
  v65 = BitArray::sizeObject(this + 128, 3);
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v67 = v233;
  }

  else
  {
    v67 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v15, &unk_26288CFB0, v16, v16, v67, v63, v64, v65);
  DgnString::~DgnString(&v233);
  *a4 += v63;
  *a5 += v64;
  *a6 += v65;
  v68 = BitArray::sizeObject(this + 144, 0);
  v69 = BitArray::sizeObject(this + 144, 1);
  v70 = BitArray::sizeObject(this + 144, 3);
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v72 = v233;
  }

  else
  {
    v72 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &unk_26288CFB0, v16, v16, v72, v68, v69, v70);
  DgnString::~DgnString(&v233);
  *a4 += v68;
  *a5 += v69;
  *a6 += v70;
  v73 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 0);
  v74 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 1);
  v75 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 3);
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v77 = v233;
  }

  else
  {
    v77 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v15, &unk_26288CFB0, v16, v16, v77, v73, v74, v75);
  DgnString::~DgnString(&v233);
  *a4 += v73;
  *a5 += v74;
  *a6 += v75;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v78 = 12;
  }

  else
  {
    v78 = 16;
  }

  v79 = *(this + 64);
  v80 = *(this + 65);
  if (v80 >= v79)
  {
    v81 = 0;
    if (v79 > 0)
    {
      v78 += 4 * (v79 - 1) + 4;
    }

    v82 = v78 + 4 * (v80 - v79);
  }

  else
  {
    v81 = 4 * v79;
    v82 = v78;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v84 = v233;
  }

  else
  {
    v84 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v15, &unk_26288CFB0, v16, v16, v84, v82, v78, v81);
  DgnString::~DgnString(&v233);
  *a4 += v82;
  *a5 += v78;
  *a6 += v81;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v85 = 12;
  }

  else
  {
    v85 = 16;
  }

  v86 = *(this + 26);
  v87 = *(this + 27);
  if (v87 >= v86)
  {
    v88 = 0;
    if (v86 > 0)
    {
      v85 += 2 * (v86 - 1) + 2;
    }

    v89 = v85 + 2 * (v87 - v86);
  }

  else
  {
    v88 = 2 * v86;
    v89 = v85;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v91 = v233;
  }

  else
  {
    v91 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v15, &unk_26288CFB0, v16, v16, v91, v89, v85, v88);
  DgnString::~DgnString(&v233);
  *a4 += v89;
  *a5 += v85;
  *a6 += v88;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v92 = 12;
  }

  else
  {
    v92 = 16;
  }

  v93 = *(this + 68);
  v94 = *(this + 69);
  if (v94 >= v93)
  {
    v95 = 0;
    if (v93 > 0)
    {
      v92 += 2 * (v93 - 1) + 2;
    }

    v96 = v92 + 2 * (v94 - v93);
  }

  else
  {
    v95 = 2 * v93;
    v96 = v92;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v98 = v233;
  }

  else
  {
    v98 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v15, &unk_26288CFB0, v16, v16, v98, v96, v92, v95);
  DgnString::~DgnString(&v233);
  *a4 += v96;
  *a5 += v92;
  *a6 += v95;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v99 = 12;
  }

  else
  {
    v99 = 16;
  }

  v100 = *(this + 76);
  v101 = *(this + 77);
  if (v101 >= v100)
  {
    v102 = 0;
    if (v100 > 0)
    {
      v99 += 2 * (v100 - 1) + 2;
    }

    v103 = v99 + 2 * (v101 - v100);
  }

  else
  {
    v102 = 2 * v100;
    v103 = v99;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v105 = v233;
  }

  else
  {
    v105 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v15, &unk_26288CFB0, v16, v16, v105, v103, v99, v102);
  DgnString::~DgnString(&v233);
  *a4 += v103;
  *a5 += v99;
  *a6 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  else
  {
    v106 = 16;
  }

  v107 = *(this + 80);
  v108 = *(this + 81);
  v109 = v108 >= v107;
  v110 = v108 - v107;
  if (v109)
  {
    if (v107 > 0)
    {
      v111 = (v107 - 1) + v106 + 1;
    }

    else
    {
      v111 = v106;
    }

    v106 = v111 + v110;
    v107 = 0;
  }

  else
  {
    v111 = v106;
  }

  v112 = v107;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v114 = v233;
  }

  else
  {
    v114 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v15, &unk_26288CFB0, v16, v16, v114, v106, v111, v112);
  DgnString::~DgnString(&v233);
  *a4 += v106;
  *a5 += v111;
  *a6 += v112;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v115 = 12;
  }

  else
  {
    v115 = 16;
  }

  v116 = *(this + 84);
  v117 = *(this + 85);
  if (v117 >= v116)
  {
    v118 = 0;
    if (v116 > 0)
    {
      v115 += 4 * (v116 - 1) + 4;
    }

    v119 = v115 + 4 * (v117 - v116);
  }

  else
  {
    v118 = 4 * v116;
    v119 = v115;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v121 = v233;
  }

  else
  {
    v121 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v15, &unk_26288CFB0, v16, v16, v121, v119, v115, v118);
  DgnString::~DgnString(&v233);
  *a4 += v119;
  *a5 += v115;
  *a6 += v118;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 12;
  }

  else
  {
    v122 = 16;
  }

  v123 = *(this + 72);
  v124 = *(this + 73);
  if (v124 >= v123)
  {
    v125 = 0;
    if (v123 > 0)
    {
      v122 += 2 * (v123 - 1) + 2;
    }

    v126 = v122 + 2 * (v124 - v123);
  }

  else
  {
    v125 = 2 * v123;
    v126 = v122;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v128 = v233;
  }

  else
  {
    v128 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v15, &unk_26288CFB0, v16, v16, v128, v126, v122, v125);
  DgnString::~DgnString(&v233);
  *a4 += v126;
  *a5 += v122;
  *a6 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v129 = 12;
  }

  else
  {
    v129 = 16;
  }

  v130 = *(this + 88);
  v131 = *(this + 89);
  if (v131 >= v130)
  {
    v132 = 0;
    if (v130 > 0)
    {
      v129 += 2 * (v130 - 1) + 2;
    }

    v133 = v129 + 2 * (v131 - v130);
  }

  else
  {
    v132 = 2 * v130;
    v133 = v129;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v135 = v233;
  }

  else
  {
    v135 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v15, &unk_26288CFB0, v16, v16, v135, v133, v129, v132);
  DgnString::~DgnString(&v233);
  *a4 += v133;
  *a5 += v129;
  *a6 += v132;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v136 = 12;
  }

  else
  {
    v136 = 16;
  }

  v137 = *(this + 92);
  v138 = *(this + 93);
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

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v142 = v233;
  }

  else
  {
    v142 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v15, &unk_26288CFB0, v16, v16, v142, v140, v136, v139);
  DgnString::~DgnString(&v233);
  *a4 += v140;
  *a5 += v136;
  *a6 += v139;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v143 = 12;
  }

  else
  {
    v143 = 16;
  }

  v144 = *(this + 96);
  v145 = *(this + 97);
  v109 = v145 >= v144;
  v146 = v145 - v144;
  if (v109)
  {
    if (v144 > 0)
    {
      v147 = (v144 - 1) + v143 + 1;
    }

    else
    {
      v147 = v143;
    }

    v143 = v147 + v146;
    v144 = 0;
  }

  else
  {
    v147 = v143;
  }

  v148 = v144;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v150 = v233;
  }

  else
  {
    v150 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v15, &unk_26288CFB0, v16, v16, v150, v143, v147, v148);
  DgnString::~DgnString(&v233);
  *a4 += v143;
  *a5 += v147;
  *a6 += v148;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v151 = 12;
  }

  else
  {
    v151 = 16;
  }

  v152 = *(this + 100);
  v153 = *(this + 101);
  if (v153 >= v152)
  {
    v154 = 0;
    if (v152 > 0)
    {
      v151 += 4 * (v152 - 1) + 4;
    }

    v155 = v151 + 4 * (v153 - v152);
  }

  else
  {
    v154 = 4 * v152;
    v155 = v151;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v157 = v233;
  }

  else
  {
    v157 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v156, v15, &unk_26288CFB0, v16, v16, v157, v155, v151, v154);
  DgnString::~DgnString(&v233);
  *a4 += v155;
  *a5 += v151;
  *a6 += v154;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v158 = 12;
  }

  else
  {
    v158 = 16;
  }

  v159 = *(this + 104);
  v160 = *(this + 105);
  if (v160 >= v159)
  {
    v161 = 0;
    if (v159 > 0)
    {
      v158 += 4 * (v159 - 1) + 4;
    }

    v162 = v158 + 4 * (v160 - v159);
  }

  else
  {
    v161 = 4 * v159;
    v162 = v158;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v164 = v233;
  }

  else
  {
    v164 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v15, &unk_26288CFB0, v16, v16, v164, v162, v158, v161);
  DgnString::~DgnString(&v233);
  *a4 += v162;
  *a5 += v158;
  *a6 += v161;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 12;
  }

  else
  {
    v165 = 16;
  }

  v166 = *(this + 108);
  v167 = *(this + 109);
  if (v167 >= v166)
  {
    v168 = 0;
    if (v166 > 0)
    {
      v165 += 4 * (v166 - 1) + 4;
    }

    v169 = v165 + 4 * (v167 - v166);
  }

  else
  {
    v168 = 4 * v166;
    v169 = v165;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v171 = v233;
  }

  else
  {
    v171 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v15, &unk_26288CFB0, v16, v16, v171, v169, v165, v168);
  DgnString::~DgnString(&v233);
  *a4 += v169;
  *a5 += v165;
  *a6 += v168;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v172 = 12;
  }

  else
  {
    v172 = 16;
  }

  v173 = *(this + 112);
  v174 = *(this + 113);
  if (v174 >= v173)
  {
    v175 = 0;
    if (v173 > 0)
    {
      v172 += 2 * (v173 - 1) + 2;
    }

    v176 = v172 + 2 * (v174 - v173);
  }

  else
  {
    v175 = 2 * v173;
    v176 = v172;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v178 = v233;
  }

  else
  {
    v178 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v15, &unk_26288CFB0, v16, v16, v178, v176, v172, v175);
  DgnString::~DgnString(&v233);
  *a4 += v176;
  *a5 += v172;
  *a6 += v175;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 12;
  }

  else
  {
    v179 = 16;
  }

  v180 = *(this + 116);
  v181 = *(this + 117);
  if (v181 >= v180)
  {
    v182 = 0;
    if (v180 > 0)
    {
      v179 += 2 * (v180 - 1) + 2;
    }

    v183 = v179 + 2 * (v181 - v180);
  }

  else
  {
    v182 = 2 * v180;
    v183 = v179;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v185 = v233;
  }

  else
  {
    v185 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v15, &unk_26288CFB0, v16, v16, v185, v183, v179, v182);
  DgnString::~DgnString(&v233);
  *a4 += v183;
  *a5 += v179;
  *a6 += v182;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v186 = 12;
  }

  else
  {
    v186 = 16;
  }

  v187 = *(this + 120);
  v188 = *(this + 121);
  v109 = v188 >= v187;
  v189 = v188 - v187;
  if (v109)
  {
    if (v187 > 0)
    {
      v190 = (v187 - 1) + v186 + 1;
    }

    else
    {
      v190 = v186;
    }

    v186 = v190 + v189;
    v187 = 0;
  }

  else
  {
    v190 = v186;
  }

  v191 = v187;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v193 = v233;
  }

  else
  {
    v193 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v15, &unk_26288CFB0, v16, v16, v193, v186, v190, v191);
  DgnString::~DgnString(&v233);
  *a4 += v186;
  *a5 += v190;
  *a6 += v191;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v194 = 12;
  }

  else
  {
    v194 = 16;
  }

  v195 = *(this + 124);
  v196 = *(this + 125);
  if (v196 >= v195)
  {
    v197 = 0;
    if (v195 > 0)
    {
      v194 += 4 * (v195 - 1) + 4;
    }

    v198 = v194 + 4 * (v196 - v195);
  }

  else
  {
    v197 = 4 * v195;
    v198 = v194;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v200 = v233;
  }

  else
  {
    v200 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v15, &unk_26288CFB0, v16, v16, v200, v198, v194, v197);
  DgnString::~DgnString(&v233);
  *a4 += v198;
  *a5 += v194;
  *a6 += v197;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v201 = 12;
  }

  else
  {
    v201 = 16;
  }

  v202 = *(this + 128);
  v203 = *(this + 129);
  if (v203 >= v202)
  {
    v204 = 0;
    if (v202 > 0)
    {
      v201 += 2 * (v202 - 1) + 2;
    }

    v205 = v201 + 2 * (v203 - v202);
  }

  else
  {
    v204 = 2 * v202;
    v205 = v201;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v207 = v233;
  }

  else
  {
    v207 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v15, &unk_26288CFB0, v16, v16, v207, v205, v201, v204);
  DgnString::~DgnString(&v233);
  *a4 += v205;
  *a5 += v201;
  *a6 += v204;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v208 = 12;
  }

  else
  {
    v208 = 16;
  }

  v209 = *(this + 132);
  v210 = *(this + 133);
  if (v210 >= v209)
  {
    v211 = 0;
    if (v209 > 0)
    {
      v208 += 2 * (v209 - 1) + 2;
    }

    v212 = v208 + 2 * (v210 - v209);
  }

  else
  {
    v211 = 2 * v209;
    v212 = v208;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v214 = v233;
  }

  else
  {
    v214 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v15, &unk_26288CFB0, v16, v16, v214, v212, v208, v211);
  DgnString::~DgnString(&v233);
  *a4 += v212;
  *a5 += v208;
  *a6 += v211;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v215 = 12;
  }

  else
  {
    v215 = 16;
  }

  v216 = *(this + 136);
  v217 = *(this + 137);
  if (v217 >= v216)
  {
    v218 = 0;
    if (v216 > 0)
    {
      v215 += 2 * (v216 - 1) + 2;
    }

    v219 = v215 + 2 * (v217 - v216);
  }

  else
  {
    v218 = 2 * v216;
    v219 = v215;
  }

  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v221 = v233;
  }

  else
  {
    v221 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v15, &unk_26288CFB0, v16, v16, v221, v219, v215, v218);
  DgnString::~DgnString(&v233);
  *a4 += v219;
  *a5 += v215;
  *a6 += v218;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v222 = 12;
  }

  else
  {
    v222 = 16;
  }

  v223 = *(this + 140);
  v224 = *(this + 141);
  v109 = v224 >= v223;
  v225 = v224 - v223;
  if (v109)
  {
    if (v223 > 0)
    {
      v226 = (v223 - 1) + v222 + 1;
    }

    else
    {
      v226 = v222;
    }

    v222 = v226 + v225;
    v223 = 0;
  }

  else
  {
    v226 = v222;
  }

  v227 = v223;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775);
  if (v234)
  {
    v229 = v233;
  }

  else
  {
    v229 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v15, &unk_26288CFB0, v16, v16, v229, v222, v226, v227);
  DgnString::~DgnString(&v233);
  *a4 += v222;
  *a5 += v226;
  *a6 += v227;
  getShipObjectSizeDescription(&v233, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2776);
  if (v234)
  {
    v231 = v233;
  }

  else
  {
    v231 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v232, &unk_26288CFB0, (35 - v232), (35 - v232), v231, *a4, *a5, *a6);
  DgnString::~DgnString(&v233);
}

void sub_26278A9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void **QuadgramData::copyQuadgramData(QuadgramData *this, const QuadgramData *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  DgnPrimArray<unsigned short>::copyArraySlice(this + 2, a2 + 2, 0, *(a2 + 6));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 4, a2 + 4, 0, *(a2 + 10));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 6, a2 + 6, 0, *(a2 + 14));
  DgnPrimArray<int>::copyArraySlice(this + 8, a2 + 8, 0, *(a2 + 18));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 10, a2 + 10, 0, *(a2 + 22));
  BitArray::operator=(this + 14, a2 + 112);
  BitArray::operator=(this + 16, a2 + 128);
  BitArray::operator=(this + 18, a2 + 144);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(this + 20, a2 + 160);
  DgnPrimArray<int>::copyArraySlice(this + 31, a2 + 31, 0, *(a2 + 64));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 12, a2 + 12, 0, *(a2 + 26));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 33, a2 + 33, 0, *(a2 + 68));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 37, a2 + 37, 0, *(a2 + 76));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 39, a2 + 39, 0, *(a2 + 80));
  DgnPrimArray<int>::copyArraySlice(this + 41, a2 + 41, 0, *(a2 + 84));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 35, a2 + 35, 0, *(a2 + 72));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 43, a2 + 43, 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 45, a2 + 45, 0, *(a2 + 92));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 47, a2 + 47, 0, *(a2 + 96));
  DgnPrimArray<int>::copyArraySlice(this + 49, a2 + 49, 0, *(a2 + 100));
  DgnPrimArray<int>::copyArraySlice(this + 51, a2 + 51, 0, *(a2 + 104));
  DgnPrimArray<int>::copyArraySlice(this + 53, a2 + 53, 0, *(a2 + 108));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 55, a2 + 55, 0, *(a2 + 112));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 57, a2 + 57, 0, *(a2 + 116));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 59, a2 + 59, 0, *(a2 + 120));
  DgnPrimArray<int>::copyArraySlice(this + 61, a2 + 61, 0, *(a2 + 124));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 63, a2 + 63, 0, *(a2 + 128));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 65, a2 + 65, 0, *(a2 + 132));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 67, a2 + 67, 0, *(a2 + 136));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 69, a2 + 69, 0, *(a2 + 140));

  return QuadgramData::compact(this);
}

uint64_t QuadgramData::saveBinary(QuadgramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject<short>(a2, this + 16, a3);
  writeObject<unsigned short>(a2, this + 32, a3);
  writeObject<unsigned short>(a2, this + 48, a3);
  writeObject<unsigned int>(a2, this + 64, a3);
  writeObject<unsigned short>(a2, this + 80, a3);
  writeObject(a2, this + 112, a3);
  writeObject(a2, this + 128, a3);
  writeObject(a2, this + 144, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 160, a2, a3);
  writeObject<unsigned int>(a2, this + 248, a3);
  writeObject<unsigned short>(a2, this + 96, a3);
  writeObject<unsigned short>(a2, this + 264, a3);
  writeObject<short>(a2, this + 296, a3);
  writeObject<unsigned char>(a2, this + 312, a3);
  writeObject<unsigned int>(a2, this + 328, a3);
  writeObject<unsigned short>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 344, a3);
  writeObject<unsigned short>(a2, this + 360, a3);
  writeObject<unsigned char>(a2, this + 376, a3);
  writeObject<unsigned int>(a2, this + 392, a3);
  writeObject<unsigned int>(a2, this + 408, a3);
  writeObject<unsigned int>(a2, this + 424, a3);
  writeObject<unsigned short>(a2, this + 440, a3);
  writeObject<short>(a2, this + 456, a3);
  writeObject<unsigned char>(a2, this + 472, a3);
  writeObject<unsigned int>(a2, this + 488, a3);
  writeObject<unsigned short>(a2, this + 504, a3);
  writeObject<unsigned short>(a2, this + 520, a3);
  writeObject<unsigned short>(a2, this + 536, a3);

  return writeObject<unsigned char>(a2, this + 552, a3);
}

void QuadgramData::loadBinary(QuadgramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject(a2, this + 2, a3);
  readObject<short>(a2, this + 16, a3);
  readObject<unsigned short>(a2, this + 32, a3);
  readObject<unsigned short>(a2, this + 48, a3);
  readObject<unsigned int>(a2, this + 64, a3);
  readObject<unsigned short>(a2, this + 80, a3);
  readObject(a2, (this + 112), a3);
  readObject(a2, (this + 128), a3);
  readObject(a2, (this + 144), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 20, a2, a3);
  readObject<unsigned int>(a2, this + 248, a3);
  readObject<unsigned short>(a2, this + 96, a3);
  readObject<unsigned short>(a2, this + 264, a3);
  readObject<short>(a2, this + 296, a3);
  readObject<unsigned char>(a2, this + 312, a3);
  readObject<unsigned int>(a2, this + 328, a3);
  readObject<unsigned short>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 344, a3);
  readObject<unsigned short>(a2, this + 360, a3);
  readObject<unsigned char>(a2, this + 376, a3);
  readObject<unsigned int>(a2, this + 392, a3);
  readObject<unsigned int>(a2, this + 408, a3);
  readObject<unsigned int>(a2, this + 424, a3);
  readObject<unsigned short>(a2, this + 440, a3);
  readObject<short>(a2, this + 456, a3);
  readObject<unsigned char>(a2, this + 472, a3);
  readObject<unsigned int>(a2, this + 488, a3);
  readObject<unsigned short>(a2, this + 504, a3);
  readObject<unsigned short>(a2, this + 520, a3);
  readObject<unsigned short>(a2, this + 536, a3);

  readObject<unsigned char>(a2, this + 552, a3);
}

char *QuadgramData::saveBinaryShared(QuadgramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeObject(a2, this + 2, a4);
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject(a2, (this + 112), a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 160, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject(a2, (this + 112), a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 248, a4);
  writeSharedObject<short>(a2, this + 96, a4);
  writeSharedObject<short>(a2, this + 264, a4);
  writeSharedObject<short>(a2, this + 296, a4);
  writeSharedObject<unsigned char>(a2, this + 312, a4);
  writeSharedObject<unsigned int>(a2, this + 328, a4);
  writeSharedObject<short>(a2, this + 280, a4);
  writeSharedObject<short>(a2, this + 344, a4);
  writeSharedObject<short>(a2, this + 360, a4);
  writeSharedObject<unsigned char>(a2, this + 376, a4);
  writeSharedObject<unsigned int>(a2, this + 392, a4);
  writeSharedObject<unsigned int>(a2, this + 408, a4);
  writeSharedObject<unsigned int>(a2, this + 424, a4);
  writeSharedObject<short>(a2, this + 440, a4);
  writeSharedObject<short>(a2, this + 456, a4);
  writeSharedObject<unsigned char>(a2, this + 472, a4);
  writeSharedObject<unsigned int>(a2, this + 488, a4);
  writeSharedObject<short>(a2, this + 504, a4);
  writeSharedObject<short>(a2, this + 520, a4);
  writeSharedObject<short>(a2, this + 536, a4);

  return writeSharedObject<unsigned char>(a2, this + 552, a4);
}

int *QuadgramData::loadBinaryShared(QuadgramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readObject(a2, this + 2, a4);
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject(a2, (this + 112), a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 20, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject(a2, (this + 112), a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
  }

  readSharedObject<unsigned int>(a2, this + 248, a4);
  readSharedObject<short>(a2, this + 96, a4);
  readSharedObject<short>(a2, this + 264, a4);
  readSharedObject<short>(a2, this + 296, a4);
  readSharedObject<unsigned char>(a2, this + 312, a4);
  readSharedObject<unsigned int>(a2, this + 328, a4);
  readSharedObject<short>(a2, this + 280, a4);
  readSharedObject<short>(a2, this + 344, a4);
  readSharedObject<short>(a2, this + 360, a4);
  readSharedObject<unsigned char>(a2, this + 376, a4);
  readSharedObject<unsigned int>(a2, this + 392, a4);
  readSharedObject<unsigned int>(a2, this + 408, a4);
  readSharedObject<unsigned int>(a2, this + 424, a4);
  readSharedObject<short>(a2, this + 440, a4);
  readSharedObject<short>(a2, this + 456, a4);
  readSharedObject<unsigned char>(a2, this + 472, a4);
  readSharedObject<unsigned int>(a2, this + 488, a4);
  readSharedObject<short>(a2, this + 504, a4);
  readSharedObject<short>(a2, this + 520, a4);
  readSharedObject<short>(a2, this + 536, a4);

  return readSharedObject<unsigned char>(a2, this + 552, a4);
}

uint64_t QuadgramData::computeLocalPreloadableBytes(QuadgramData *this)
{
  v16 = *(this + 14);
  if (v16 < 2)
  {
    return 0;
  }

  result = 0;
  for (i = 1; i != v16; ++i)
  {
    if (i < *(this + 14))
    {
      v18 = *(*(this + 6) + 2 * i);
      if (*(*(this + 6) + 2 * i))
      {
        v4 = 0;
        v5 = *(this + 12);
        v17 = i;
        do
        {
          v6 = (*(*(this + 8) + 4 * i) + v4);
          if (*(v5 + 2 * v6))
          {
            v19 = v4;
            v20 = result;
            v7 = 0;
            v8 = 0;
            v9 = 0;
            do
            {
              v10 = 0;
              v11 = 9;
              if (!*(this + 6))
              {
                v11 = 10;
              }

              v8 += v11;
              while (1)
              {
                v12 = *(*(this + 31) + 4 * v6);
                if (*this && (*(*(this + 14) + 4 * (v6 >> 5)) & (1 << v6)) != 0)
                {
                  v12 = *(*(this + 53) + 4 * v12);
                  v13 = 504;
                }

                else
                {
                  v13 = 280;
                }

                if (v10 >= *(*(this + v13) + 2 * (v12 + v7)))
                {
                  break;
                }

                if (QuadgramData::getScoreForIndex(this, v6, v7, v10) != 20000)
                {
                  if (*(this + 10))
                  {
                    v14 = 3;
                  }

                  else
                  {
                    v14 = 4;
                  }

                  v8 += v14;
                  v9 = 1;
                }

                ++v10;
              }

              ++v7;
              v5 = *(this + 12);
            }

            while (v7 < *(v5 + 2 * v6));
            if (v9)
            {
              v15 = v8;
            }

            else
            {
              v15 = 0;
            }

            result = v20;
            i = v17;
            v4 = v19;
          }

          else
          {
            v15 = 0;
          }

          result += v15;
          ++v4;
        }

        while (v4 != v18);
      }
    }
  }

  return result;
}

uint64_t QuadgramData::getScoreForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = (*(*(this + 61) + 4 * (*(*(this + 53) + 4 * v4) + a3)) + a4);
    if (!*(this + 10))
    {
      v7 = *(this + 67);
      return *(v7 + 2 * v5);
    }

    v6 = *(this + 69);
  }

  else
  {
    v5 = (*(*(this + 41) + 4 * (v4 + a3)) + a4);
    if (!*(this + 2))
    {
      v7 = *(this + 45);
      return *(v7 + 2 * v5);
    }

    v6 = *(this + 47);
  }

  v5 = *(v6 + v5);
  v7 = *(this + 4);
  return *(v7 + 2 * v5);
}

uint64_t QuadgramData::initNewQuadgramData(uint64_t a1, TrigramData *this, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = this;
  v8 = *(a1 + 56);
  TrigramData::configureTrigramData(this, 1, *(a1 + 24), *(a1 + 16), *(a1 + 40), *(a1 + 32));
  QuadgramData::preAllocateStaticQuadgramData(v6, v8, *(a1 + 88));
  QuadgramData::preAllocateDynamicQuadgramData(v6, *(a1 + 272), *(a1 + 352));
  v58 = 0;
  v59 = 0;
  if (v8 >= 2)
  {
    v9 = 1;
    v44 = a4;
    v45 = v6;
    v42 = v8;
    do
    {
      *v47 = v9;
      if (v9 < *(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = *(v10 + 2 * v9);
        if (*(v10 + 2 * v9))
        {
          v12 = v9;
          QuadgramData::allocQuad1(v6, v9, *(v10 + 2 * v9));
          v13 = 0;
          v14 = 0;
          v43 = *(a4 + 8);
          v46 = v11;
          do
          {
            v15 = *(*(a1 + 64) + 4 * v12) + v14;
            v16 = *(*(a1 + 80) + 2 * v15);
            v17 = *(*(v6 + 8) + 4 * v12) + v14;
            *(*(v6 + 10) + 2 * v17) = 0;
            QuadgramData::quad2SetUnallocated(v6, v17);
            *(*(v6 + 10) + 2 * v17) = v16;
            LODWORD(v59) = 0;
            if (*(*(a1 + 96) + 2 * v15))
            {
              v51 = v17;
              v48 = v16;
              v49 = v14;
              v50 = v13;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v55 = v15 >> 5;
              v21 = 1 << v15;
              do
              {
                v22 = *(*(a1 + 248) + 4 * v15);
                if (*a1 && (*(*(a1 + 112) + 4 * v55) & v21) != 0)
                {
                  v23 = *(*(a1 + 424) + 4 * v22);
                  v24 = 440;
                }

                else
                {
                  v24 = 264;
                  v23 = *(*(a1 + 248) + 4 * v15);
                }

                v25 = 0;
                v26 = 0;
                v52 = *(*(a1 + v24) + 2 * (v23 + v18));
                v53 = v18 + 1;
                v27 = 9;
                if (!*(a1 + 24))
                {
                  v27 = 10;
                }

                v19 += v27;
                if (!*a1)
                {
LABEL_23:
                  v31 = 280;
                  goto LABEL_24;
                }

                while (1)
                {
                  if ((*(*(a1 + 112) + 4 * v55) & v21) == 0)
                  {
                    goto LABEL_23;
                  }

                  v22 = *(*(a1 + 424) + 4 * v22);
                  v31 = 504;
LABEL_24:
                  if (v26 >= *(*(a1 + v31) + 2 * (v22 + v18)))
                  {
                    break;
                  }

                  Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(a1, v15, v18, v26);
                  if (QuadgramData::getScoreForIndex(a1, v15, v18, v26) != 20000)
                  {
                    v29 = *(a1 + 40);
                    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, Quad3SuccIdForIndex);
                    ++v20;
                    v30 = 3;
                    if (!v29)
                    {
                      v30 = 4;
                    }

                    v19 += v30;
                    ++v25;
                  }

                  ++v26;
                  v22 = *(*(a1 + 248) + 4 * v15);
                  if (!*a1)
                  {
                    goto LABEL_23;
                  }
                }

                if (v25)
                {
                  HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, v25);
                  v32 = v59;
                  if (v59 == HIDWORD(v59))
                  {
                    DgnPrimArray<short>::reallocElts(&v58, 1, 1);
                    v32 = v59;
                  }

                  v58[v32] = v52;
                  LODWORD(v59) = v32 + 1;
                }

                ++v18;
              }

              while (v53 < *(*(a1 + 96) + 2 * v15));
              a4 = v44;
              v12 = *v47;
              if (v59)
              {
                v6 = v45;
                *(*(v45 + 14) + 4 * (v51 >> 5)) |= 1 << v51;
                *(*(v45 + 12) + 2 * v51) = v59;
                HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v58);
                v33 = *(v44 + 8);
                if (v33 == *(v44 + 12))
                {
                  DgnArray<DiskNgramContext>::reallocElts(v44, 1, 1);
                  LODWORD(v33) = *(v44 + 8);
                }

                v34 = *v44 + 56 * v33;
                *v34 = 0;
                *(v34 + 8) = 0;
                *(v34 + 16) = 0;
                *(v34 + 24) = -1;
                strcpy((v34 + 32), " N");
                LODWORD(v34) = *(v44 + 8);
                *(v44 + 8) = v34 + 1;
                v35 = *v44 + 56 * v34;
                *(v35 + 34) = 4;
                *(v35 + 24) = v47[0];
                *(v35 + 28) = v48;
                *(v35 + 36) = v15;
                *(v35 + 40) = v51;
                *(v35 + 44) = v53;
                *(v35 + 48) = v20;
                *(v35 + 8) = v19;
                *(v35 + 16) = 0;
                v13 = v19 + v50;
              }

              else
              {
                v6 = v45;
                v13 = v50;
              }

              v11 = v46;
              v14 = v49;
            }

            ++v14;
          }

          while (v14 != v11);
          v36 = *(a4 + 8);
          v8 = v42;
          if (v43 < v36)
          {
            v37 = *(*a5 + 8 * *v47);
            v38 = (*a4 + 56 * v43 + 16);
            v39 = v36 - v43;
            do
            {
              *(v38 - 3) = v37;
              *v38 = v13;
              v38 += 14;
              --v39;
            }

            while (v39);
          }
        }
      }

      v9 = *v47 + 1;
    }

    while (*v47 + 1 != v8);
  }

  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v56);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v6 + 20, v56);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v56);
  QuadgramData::compact(v6);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v58);
}

void QuadgramData::preAllocateStaticQuadgramData(QuadgramData *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 15);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    DgnPrimArray<short>::reallocElts(this + 48, v8, 0);
  }

  v9 = *(this + 19);
  if (a2 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, a2 - v9, 0);
  }

  v10 = *(this + 27);
  if (a3 > v10)
  {
    DgnPrimArray<short>::reallocElts(this + 96, a3 - v10, 0);
  }

  v11 = *(this + 65);
  if (a3 > v11)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 248, a3 - v11, 0);
  }

  v12 = *(this + 23);
  if (a3 > v12)
  {
    DgnPrimArray<short>::reallocElts(this + 80, a3 - v12, 0);
  }

  if (*this)
  {
    BitArray::preAllocate((this + 112), a3);
    BitArray::preAllocate((this + 128), a3);

    BitArray::preAllocate((this + 144), a3);
  }
}

uint64_t *QuadgramData::preAllocateDynamicQuadgramData(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 73);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts((this + 35), v8, 0);
  }

  v9 = *(v5 + 69);
  if (a2 > v9)
  {
    this = DgnPrimArray<short>::reallocElts((v5 + 33), a2 - v9, 0);
  }

  v10 = *(v5 + 85);
  if (a2 > v10)
  {
    this = DgnPrimArray<unsigned int>::reallocElts((v5 + 41), a2 - v10, 0);
  }

  if (*(v5 + 1))
  {
    if (*(v5 + 81) < a2)
    {
      v14 = 0;
      this = realloc_array(v5[39], &v14, a2, *(v5 + 80), *(v5 + 80), 1);
      *(v5 + 81) = this;
      v5[39] = v14;
    }
  }

  else
  {
    v11 = *(v5 + 77);
    if (a2 > v11)
    {
      this = DgnPrimArray<short>::reallocElts((v5 + 37), a2 - v11, 0);
    }
  }

  v12 = *(v5 + 89);
  if (a3 > v12)
  {
    this = DgnPrimArray<short>::reallocElts((v5 + 43), a3 - v12, 0);
  }

  if (*(v5 + 2))
  {
    if (*(v5 + 97) < a3)
    {
      v14 = 0;
      this = realloc_array(v5[47], &v14, a3, *(v5 + 96), *(v5 + 96), 1);
      *(v5 + 97) = this;
      v5[47] = v14;
    }
  }

  else
  {
    v13 = *(v5 + 93);
    if (a3 > v13)
    {
      return DgnPrimArray<short>::reallocElts((v5 + 45), a3 - v13, 0);
    }
  }

  return this;
}

uint64_t QuadgramData::getQuad3SuccIdForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v4 = *(*(this + 53) + 4 * v4);
    v5 = 520;
    v6 = 488;
  }

  else
  {
    v5 = 344;
    v6 = 328;
  }

  return *(*(this + v5) + 2 * (*(*(this + v6) + 4 * (v4 + a3)) + a4));
}

uint64_t QuadgramData::savePersistentAndFillInNewQuadgramData(QuadgramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  if (*(*(this + 12) + 2 * a6))
  {
    v9 = 0;
    v10 = a6 >> 5;
    v11 = 1 << a6;
    do
    {
      v12 = *(*(this + 31) + 4 * a6);
      v13 = *this;
      if (*this && (*(*(this + 14) + 4 * v10) & v11) != 0)
      {
        v14 = *(*(this + 53) + 4 * v12);
        v15 = 440;
      }

      else
      {
        v15 = 264;
        v14 = *(*(this + 31) + 4 * a6);
      }

      v16 = 0;
      v17 = 0;
      v44 = *(*(this + v15) + 2 * (v14 + v9));
      if (!v13)
      {
LABEL_23:
        v27 = 280;
        v26 = v12;
        goto LABEL_24;
      }

      while (1)
      {
        if ((*(*(this + 14) + 4 * v10) & v11) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(*(this + 53) + 4 * v12);
        v27 = 504;
LABEL_24:
        if (v16 >= *(*(this + v27) + 2 * (v26 + v9)))
        {
          break;
        }

        Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(this, a6, v9, v16);
        ScoreForIndex = QuadgramData::getScoreForIndex(this, a6, v9, v16);
        v20 = ScoreForIndex;
        if (ScoreForIndex != 20000)
        {
          v21 = v62;
          if (v62 == HIDWORD(v62))
          {
            DgnPrimArray<short>::reallocElts(&v61, 1, 1);
            v21 = v62;
          }

          v61[v21] = Quad3SuccIdForIndex;
          LODWORD(v62) = v21 + 1;
          if (*(this + 10))
          {
            QuantizedScoreForIndex = QuadgramData::getQuantizedScoreForIndex(this, a6, v9, v16);
            v23 = v52;
            if (v52 == HIDWORD(v52))
            {
              DgnPrimArray<char>::reallocElts(&v51, 1, 1);
              v23 = v52;
            }

            v51[v23] = QuantizedScoreForIndex;
            v24 = v52;
            v25 = &v52;
          }

          else
          {
            v24 = v54;
            if (v54 == HIDWORD(v54))
            {
              DgnPrimArray<short>::reallocElts(&v53, 1, 1);
              v24 = v54;
            }

            v53[v24] = v20;
            v25 = &v54;
          }

          ++v17;
          *v25 = v24 + 1;
        }

        ++v16;
        v12 = *(*(this + 31) + 4 * a6);
        v13 = *this;
        if (!*this)
        {
          goto LABEL_23;
        }
      }

      if (v17)
      {
        if (*(this + 6))
        {
          if (v13 && (*(*(this + 14) + 4 * v10) & v11) != 0)
          {
            v12 = *(*(this + 53) + 4 * v12);
            v28 = 472;
          }

          else
          {
            v28 = 312;
          }

          v29 = *(*(this + v28) + v12 + v9);
          v30 = v56;
          if (v56 == HIDWORD(v56))
          {
            DgnPrimArray<char>::reallocElts(&v55, 1, 1);
            v30 = v56;
          }

          v55[v30] = v29;
          v31 = v56;
          v32 = &v56;
        }

        else
        {
          BackoffWeight = QuadgramData::getBackoffWeight(this, a6, v9);
          v31 = v58;
          if (v58 == HIDWORD(v58))
          {
            DgnPrimArray<short>::reallocElts(&v57, 1, 1);
            v31 = v58;
          }

          v57[v31] = BackoffWeight;
          v32 = &v58;
        }

        *v32 = v31 + 1;
        v34 = v64;
        if (v64 == HIDWORD(v64))
        {
          DgnPrimArray<short>::reallocElts(&v63, 1, 1);
          v34 = v64;
        }

        v63[v34] = v44;
        LODWORD(v64) = v34 + 1;
        v35 = v60;
        if (v60 == HIDWORD(v60))
        {
          DgnPrimArray<short>::reallocElts(&v59, 1, 1);
          v35 = v60;
        }

        v59[v35] = v17;
        LODWORD(v60) = v35 + 1;
      }

      ++v9;
    }

    while (v9 < *(*(this + 12) + 2 * a6));
  }

  *(*(a4 + 248) + 4 * a7) = (*(*a2 + 48))(a2);
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v63, &v47, a4 + 160);
  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a5, &v59, &v49);
  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a5, &v61, &v45);
  v37 = 4 * ((v48 + 1) + (v50 + 1) + (v46 + 1)) + 12 < 2 * ((v64 + 1) + (v60 + 1) + (v62 + 1)) + 4 && v50 < 0x10000;
  if (v37)
  {
    *(*(a4 + 144) + 4 * (a7 >> 5)) |= 1 << a7;
    LOWORD(v65[0]) = v50;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v49, v50, a3);
    LOWORD(v65[0]) = v48;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v47, v48, a3);
  }

  else
  {
    writeObjectArray(a2, v59, v60, a3);
    writeObjectArray(a2, v63, v64, a3);
  }

  if (*(this + 6))
  {
    writeObjectArray(a2, v55, v56, a3);
  }

  else
  {
    writeObjectArray(a2, v57, v58, a3);
  }

  v65[0] = v62;
  writeObject(a2, v65, a3);
  if (v37)
  {
    v65[0] = v46;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v45, v46, a3);
  }

  else
  {
    writeObjectArray(a2, v61, v62, a3);
  }

  if (*(this + 10))
  {
    writeObjectArray(a2, v51, v52, a3);
  }

  else
  {
    writeObjectArray(a2, v53, v54, a3);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v63);
}

void sub_26278C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 112);
  _Unwind_Resume(a1);
}

uint64_t QuadgramData::getQuantizedScoreForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v4 = *(*(this + 53) + 4 * v4);
    v5 = 552;
    v6 = 488;
  }

  else
  {
    v5 = 376;
    v6 = 328;
  }

  return *(*(this + v5) + (*(*(this + v6) + 4 * (v4 + a3)) + a4));
}

uint64_t QuadgramData::getBackoffWeight(QuadgramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 31) + 4 * a2);
  if (!*this || ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) == 0)
  {
    if (*(this + 1))
    {
      v5 = v3 + a3;
      v6 = *(this + 39);
      goto LABEL_7;
    }

    v8 = v3 + a3;
    v9 = *(this + 37);
LABEL_10:
    v7 = (v9 + 2 * v8);
    return *v7;
  }

  v4 = *(*(this + 53) + 4 * v3);
  if (!*(this + 1))
  {
    v8 = v4 + a3;
    v9 = *(this + 57);
    goto LABEL_10;
  }

  v5 = v4 + a3;
  v6 = *(this + 59);
LABEL_7:
  v7 = (*(this + 2) + 2 * *(v6 + v5));
  return *v7;
}

void HuffmanEncoder<unsigned short,unsigned int>::encodeValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 32;
    do
    {
      v10 = *Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::findBucket(a1 + 8, (*a2 + v6));
      if (!v10)
      {
        throwEncodeUnknownSymbol(*(*a2 + v6));
      }

      v11 = v10[2];
      v13 = *v11;
      v12 = v11[1];
      if (v12 >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11[1];
      }

      v15 = v8 << v14;
      if (v12 == v9)
      {
        v16 = *(a3 + 8);
        if (v16 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v16 = *(a3 + 8);
        }

        v8 = 0;
        *(*a3 + 4 * v16) = v15 | v13;
        ++*(a3 + 8);
        v9 = 32;
      }

      else
      {
        v17 = v12 - v9;
        if (v12 <= v9)
        {
          v8 = v15 | v13;
          v9 -= v12;
        }

        else
        {
          v18 = *(a3 + 8);
          if (v18 == *(a3 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
            v18 = *(a3 + 8);
          }

          *(*a3 + 4 * v18) = v15 | (v13 >> v17);
          ++*(a3 + 8);
          v9 = 32 - v17;
          v8 = (0xFFFFFFFF >> -v17) & v13;
        }
      }

      ++v7;
      v6 += 2;
    }

    while (v7 < *(a2 + 8));
  }

  else
  {
    v8 = 0;
    LOBYTE(v9) = 32;
  }

  v19 = *(a3 + 8);
  if (v19)
  {
    v20 = v8 == 0;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    if (v19 == *(a3 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
      v19 = *(a3 + 8);
    }

    *(*a3 + 4 * v19) = v8 << v9;
    ++*(a3 + 8);
  }
}

uint64_t QuadgramData::fillInFullyLoadedQuadgramData(QuadgramData *this, QuadgramData *a2)
{
  v2 = a2;
  v4 = *(this + 14);
  TrigramData::configureTrigramData(a2, 0, *(this + 6), *(this + 2), *(this + 10), *(this + 4));
  QuadgramData::preAllocateStaticQuadgramData(v2, v4, *(this + 22));
  QuadgramData::preAllocateDynamicQuadgramData(v2, *(this + 68), *(this + 88));
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v48 = v4;
  if (v4 >= 2)
  {
    v5 = 1;
    v49 = v2;
    do
    {
      if (v5 < *(this + 14))
      {
        v50 = *(*(this + 6) + 2 * v5);
        if (*(*(this + 6) + 2 * v5))
        {
          QuadgramData::allocQuad1(v2, v5, v50);
          v6 = 0;
          v52 = v5;
          do
          {
            v7 = (*(*(this + 8) + 4 * v5) + v6);
            v51 = *(*(this + 10) + 2 * v7);
            LODWORD(v72) = 0;
            if (v70 >= 1)
            {
              v8 = 16 * v70 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v69 + v8);
                v8 -= 16;
              }

              while (v8 != -16);
            }

            LODWORD(v70) = 0;
            LODWORD(v68) = 0;
            LODWORD(v66) = 0;
            if (v64 >= 1)
            {
              v9 = 16 * v64 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v63 + v9);
                v9 -= 16;
              }

              while (v9 != -16);
            }

            v53 = v6;
            LODWORD(v64) = 0;
            if (v62 >= 1)
            {
              v10 = 16 * v62 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v61 + v10);
                v10 -= 16;
              }

              while (v10 != -16);
            }

            LODWORD(v62) = 0;
            if (*(*(this + 12) + 2 * v7))
            {
              v11 = 0;
              v12 = v7 >> 5;
              v13 = 1 << v7;
              do
              {
                v14 = *(this + 31);
                v15 = *(v14 + 4 * v7);
                v16 = *this;
                if (*this && (*(*(this + 14) + 4 * v12) & v13) != 0)
                {
                  v15 = *(*(this + 53) + 4 * v15);
                  v17 = 440;
                }

                else
                {
                  v17 = 264;
                }

                v18 = 0;
                v54 = *(*(this + v17) + 2 * (v15 + v11));
                LODWORD(v60) = 0;
                LODWORD(v58) = 0;
                LODWORD(v56) = 0;
                while (1)
                {
                  v19 = *(v14 + 4 * v7);
                  if (v16 && (*(*(this + 14) + 4 * v12) & v13) != 0)
                  {
                    v20 = *(*(this + 53) + 4 * v19);
                    v21 = 504;
                  }

                  else
                  {
                    v21 = 280;
                    v20 = v19;
                  }

                  if (v18 >= *(*(this + v21) + 2 * (v20 + v11)))
                  {
                    break;
                  }

                  Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(this, v7, v11, v18);
                  ScoreForIndex = QuadgramData::getScoreForIndex(this, v7, v11, v18);
                  v24 = ScoreForIndex;
                  if (ScoreForIndex != 20000)
                  {
                    v25 = v60;
                    if (v60 == HIDWORD(v60))
                    {
                      DgnPrimArray<short>::reallocElts(&v59, 1, 1);
                      v25 = v60;
                    }

                    *(v59 + 2 * v25) = Quad3SuccIdForIndex;
                    LODWORD(v60) = v25 + 1;
                    if (*(this + 10))
                    {
                      QuantizedScoreForIndex = QuadgramData::getQuantizedScoreForIndex(this, v7, v11, v18);
                      v27 = v56;
                      if (v56 == HIDWORD(v56))
                      {
                        DgnPrimArray<char>::reallocElts(&v55, 1, 1);
                        v27 = v56;
                      }

                      *(v55 + v27) = QuantizedScoreForIndex;
                      v28 = v56;
                      v29 = &v56;
                    }

                    else
                    {
                      v28 = v58;
                      if (v58 == HIDWORD(v58))
                      {
                        DgnPrimArray<short>::reallocElts(&v57, 1, 1);
                        v28 = v58;
                      }

                      *(v57 + 2 * v28) = v24;
                      v29 = &v58;
                    }

                    *v29 = v28 + 1;
                  }

                  ++v18;
                  v14 = *(this + 31);
                  v16 = *this;
                }

                if (v58 | v56)
                {
                  if (*(this + 6))
                  {
                    if (v16 && (*(*(this + 14) + 4 * v12) & v13) != 0)
                    {
                      v19 = *(*(this + 53) + 4 * v19);
                      v30 = 472;
                    }

                    else
                    {
                      v30 = 312;
                    }

                    v31 = *(*(this + v30) + v19 + v11);
                    v32 = v66;
                    if (v66 == HIDWORD(v66))
                    {
                      DgnPrimArray<char>::reallocElts(&v65, 1, 1);
                      v32 = v66;
                    }

                    *(v65 + v32) = v31;
                    v33 = v66;
                    v34 = &v66;
                  }

                  else
                  {
                    BackoffWeight = QuadgramData::getBackoffWeight(this, v7, v11);
                    v33 = v68;
                    if (v68 == HIDWORD(v68))
                    {
                      DgnPrimArray<short>::reallocElts(&v67, 1, 1);
                      v33 = v68;
                    }

                    *(v67 + 2 * v33) = BackoffWeight;
                    v34 = &v68;
                  }

                  *v34 = v33 + 1;
                  v36 = v72;
                  if (v72 == HIDWORD(v72))
                  {
                    DgnPrimArray<short>::reallocElts(&v71, 1, 1);
                    v36 = v72;
                  }

                  *(v71 + 2 * v36) = v54;
                  LODWORD(v72) = v36 + 1;
                  v37 = v70;
                  if (v70 == HIDWORD(v70))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v69, 1, 1);
                    v37 = v70;
                  }

                  v38 = (v69 + 16 * v37);
                  *v38 = 0;
                  v38[1] = 0;
                  DgnPrimArray<unsigned short>::copyArraySlice(v38, &v59, 0, v60);
                  LODWORD(v70) = v70 + 1;
                  v39 = v62;
                  if (v62 == HIDWORD(v62))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v61, 1, 1);
                    v39 = v62;
                  }

                  v40 = (v61 + 16 * v39);
                  *v40 = 0;
                  v40[1] = 0;
                  DgnPrimArray<unsigned char>::copyArraySlice(v40, &v55, 0, v56);
                  LODWORD(v62) = v62 + 1;
                  v41 = v64;
                  if (v64 == HIDWORD(v64))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v63, 1, 1);
                    v41 = v64;
                  }

                  v42 = (v63 + 16 * v41);
                  *v42 = 0;
                  v42[1] = 0;
                  DgnPrimArray<unsigned short>::copyArraySlice(v42, &v57, 0, v58);
                  LODWORD(v64) = v64 + 1;
                }

                ++v11;
              }

              while (v11 < *(*(this + 12) + 2 * v7));
            }

            v2 = v49;
            v43 = *(*(v49 + 8) + 4 * v52) + v53;
            *(*(v49 + 10) + 2 * v43) = 0;
            QuadgramData::quad2SetUnallocated(v49, v43);
            *(*(v49 + 10) + 2 * v43) = v51;
            if (v72)
            {
              QuadgramData::fillQuad2BackoffWeights(v49, v7, &v71, &v67, &v65);
              v44 = *(this + 12);
              if (*(v44 + 2 * v7))
              {
                v45 = 0;
                v46 = 0;
                do
                {
                  if (*(v69 + v45 + 8))
                  {
                    QuadgramData::fillQuadgramRecord(v49, v7, v46, v69 + v45, (v63 + v45), (v61 + v45));
                    v44 = *(this + 12);
                  }

                  ++v46;
                  v45 += 16;
                }

                while (v46 < *(v44 + 2 * v7));
              }
            }

            v6 = v53 + 1;
            v5 = v52;
          }

          while (v53 + 1 != v50);
        }
      }

      ++v5;
    }

    while (v5 != v48);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v61);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v63);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v65);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v69);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
}

void sub_26278D0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 136);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v27 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 104);
  _Unwind_Resume(a1);
}

uint64_t *QuadgramData::fillQuad2BackoffWeights(QuadgramData *a1, unsigned int a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  result = QuadgramData::allocQuad2(a1, a2, *(a3 + 4));
  v11 = *(a3 + 2);
  if (*(a1 + 1))
  {
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = *(*a3 + 2 * v12);
        v14 = *(*(a1 + 31) + 4 * a2);
        if (*a1 && (*(*(a1 + 14) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
        {
          LODWORD(v14) = *(*(a1 + 53) + 4 * v14);
          *(*(a1 + 55) + 2 * (v12 + v14)) = v13;
          v15 = (*a5 + v12);
          v16 = 472;
        }

        else
        {
          *(*(a1 + 33) + 2 * (v12 + v14)) = v13;
          v15 = (*a5 + v12);
          v16 = 312;
        }

        *(*(a1 + v16) + (v14 + v12++)) = *v15;
        v17 = *(a3 + 2);
      }

      while (v12 < v17);
      goto LABEL_19;
    }

LABEL_18:
    LOWORD(v17) = 0;
    goto LABEL_19;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v18 = 0;
  v19 = *(*(a1 + 31) + 4 * a2);
  v20 = *a3;
  v21 = *a1;
  v22 = *a4;
  do
  {
    v23 = *(v20 + 2 * v18);
    if (v21 && (*(*(a1 + 14) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
    {
      v24 = *(*(a1 + 53) + 4 * v19);
      *(*(a1 + 55) + 2 * (v18 + v24)) = v23;
      v25 = 456;
    }

    else
    {
      *(*(a1 + 33) + 2 * (v19 + v18)) = v23;
      v25 = 296;
      v24 = v19;
    }

    result = *(v22 + 2 * v18);
    *(*(a1 + v25) + 2 * (v24 + v18++)) = result;
  }

  while (v11 != v18);
  LOWORD(v17) = v11;
LABEL_19:
  *(*(a1 + 12) + 2 * a2) = v17;
  return result;
}

uint64_t QuadgramData::fillQuadgramRecord(uint64_t a1, unsigned int a2, int a3, uint64_t a4, void *a5, void *a6)
{
  result = QuadgramData::allocScoresForIndex(a1, a2, a3, *(a4 + 8));
  LODWORD(v13) = *(a4 + 8);
  if (*(a1 + 8))
  {
    if (v13)
    {
      v14 = 0;
      do
      {
        QuadgramData::setQuad3SuccIdForIndex(a1, a2, a3, v14, *(*a4 + 2 * v14));
        result = QuadgramData::setQuantizedScoreForIndex(a1, a2, a3, v14, *(*a6 + v14));
        ++v14;
        v13 = *(a4 + 8);
      }

      while (v14 < v13);
    }
  }

  else if (v13)
  {
    v15 = 0;
    do
    {
      QuadgramData::setQuad3SuccIdForIndex(a1, a2, a3, v15, *(*a4 + 2 * v15));
      result = QuadgramData::setScoreForIndex(a1, a2, a3, v15, *(*a5 + 2 * v15));
      ++v15;
      v13 = *(a4 + 8);
    }

    while (v15 < v13);
  }

  v16 = *(*(a1 + 248) + 4 * a2);
  if (*a1 && ((*(*(a1 + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v16 = *(*(a1 + 424) + 4 * v16);
    v17 = 504;
  }

  else
  {
    v17 = 280;
  }

  *(*(a1 + v17) + 2 * (v16 + a3)) = v13;
  return result;
}

uint64_t *QuadgramData::allocQuad2(uint64_t *this, unsigned int a2, int a3)
{
  v5 = this;
  v6 = *(this + 68);
  *(this[31] + 4 * a2) = v6;
  v7 = v6 + a3;
  v8 = *(this + 69);
  if (v7 > v8)
  {
    this = DgnPrimArray<short>::reallocElts((this + 33), v7 - v8, 1);
    v7 = *(v5 + 272) + a3;
  }

  *(v5 + 272) = v7;
  if (*(v5 + 4))
  {
    v9 = *(v5 + 320) + a3;
    v10 = *(v5 + 324);
    if (v9 > v10)
    {
      this = DgnPrimArray<char>::reallocElts(v5 + 312, v9 - v10, 1);
      v9 = *(v5 + 320) + a3;
    }

    *(v5 + 320) = v9;
  }

  else
  {
    v11 = *(v5 + 304) + a3;
    v12 = *(v5 + 308);
    if (v11 > v12)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 296, v11 - v12, 1);
      v11 = *(v5 + 304) + a3;
    }

    *(v5 + 304) = v11;
  }

  *(*(v5 + 96) + 2 * a2) = a3;
  v13 = *(v5 + 288) + a3;
  v14 = *(v5 + 292);
  if (v13 > v14)
  {
    this = DgnPrimArray<short>::reallocElts(v5 + 280, v13 - v14, 1);
    v13 = *(v5 + 288) + a3;
  }

  *(v5 + 288) = v13;
  v15 = *(v5 + 336) + a3;
  v16 = *(v5 + 340);
  if (v15 > v16)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v5 + 328, v15 - v16, 1);
    v15 = *(v5 + 336) + a3;
  }

  *(v5 + 336) = v15;
  return this;
}

uint64_t *QuadgramData::allocScoresForIndex(uint64_t *this, unsigned int a2, int a3, int a4)
{
  v5 = this;
  v6 = *(this + 88);
  v7 = *(this[31] + 4 * a2) + a3;
  *(this[41] + 4 * v7) = v6;
  v8 = v6 + a4;
  v9 = *(this + 89);
  if (v8 > v9)
  {
    this = DgnPrimArray<short>::reallocElts((this + 43), v8 - v9, 1);
    v8 = *(v5 + 352) + a4;
  }

  *(v5 + 352) = v8;
  if (*(v5 + 8))
  {
    v10 = *(v5 + 384) + a4;
    v11 = *(v5 + 388);
    if (v10 > v11)
    {
      this = DgnPrimArray<char>::reallocElts(v5 + 376, v10 - v11, 1);
      v10 = *(v5 + 384) + a4;
    }

    *(v5 + 384) = v10;
  }

  else
  {
    v12 = *(v5 + 368) + a4;
    v13 = *(v5 + 372);
    if (v12 > v13)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 360, v12 - v13, 1);
      v12 = *(v5 + 368) + a4;
    }

    *(v5 + 368) = v12;
  }

  *(*(v5 + 280) + 2 * v7) = a4;
  return this;
}

uint64_t QuadgramData::setQuad3SuccIdForIndex(uint64_t this, unsigned int a2, int a3, int a4, __int16 a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 520;
    v7 = 488;
  }

  else
  {
    v6 = 344;
    v7 = 328;
  }

  *(*(this + v6) + 2 * (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

uint64_t QuadgramData::setQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4, char a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 552;
    v7 = 488;
  }

  else
  {
    v6 = 376;
    v7 = 328;
  }

  *(*(this + v6) + (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

uint64_t QuadgramData::setScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4, __int16 a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 536;
    v7 = 488;
  }

  else
  {
    v6 = 360;
    v7 = 328;
  }

  *(*(this + v6) + 2 * (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

uint64_t *QuadgramData::allocLoaded(uint64_t *result, unsigned int a2, void *a3)
{
  v5 = result;
  v6 = result[31];
  v7 = *(v6 + 4 * a2);
  v8 = *(result + 104);
  *(v6 + 4 * a2) = v8;
  if (v8 == *(result + 105))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 51), 1, 1);
    v8 = *(v5 + 416);
  }

  *(*(v5 + 408) + 4 * v8) = v7;
  ++*(v5 + 416);
  v9 = *(v5 + 448);
  v10 = *(v5 + 432);
  if (v10 == *(v5 + 436))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 424, 1, 1);
    v10 = *(v5 + 432);
  }

  *(*(v5 + 424) + 4 * v10) = v9;
  ++*(v5 + 432);
  v11 = *(*(v5 + 96) + 2 * a2);
  v12 = *(v5 + 496) + v11;
  v13 = *(v5 + 500);
  if (v12 > v13)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 488, v12 - v13, 1);
    v12 = *(v5 + 496) + v11;
  }

  *(v5 + 496) = v12;
  v14 = *(v5 + 448) + v11;
  v15 = *(v5 + 452);
  if (v14 > v15)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 440, v14 - v15, 1);
    v14 = *(v5 + 448) + v11;
  }

  *(v5 + 448) = v14;
  v16 = *(v5 + 512) + v11;
  v17 = *(v5 + 516);
  if (v16 > v17)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 504, v16 - v17, 1);
    v16 = *(v5 + 512) + v11;
  }

  *(v5 + 512) = v16;
  if (*(v5 + 4))
  {
    v18 = *(v5 + 480) + v11;
    v19 = *(v5 + 484);
    if (v18 > v19)
    {
      result = DgnPrimArray<char>::reallocElts(v5 + 472, v18 - v19, 1);
      v18 = *(v5 + 480) + v11;
    }

    *(v5 + 480) = v18;
    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_19:
    v22 = 0;
    v23 = 2 * v11;
    do
    {
      v24 = *(v5 + 528);
      *(*(v5 + 488) + 4 * v9) = v24;
      v25 = *(*a3 + v22);
      *(*(v5 + 504) + 2 * v9) = v25;
      v26 = v24 + v25;
      v27 = *(v5 + 532);
      if (v26 > v27)
      {
        result = DgnPrimArray<short>::reallocElts(v5 + 520, v26 - v27, 1);
        v26 = *(v5 + 528) + v25;
      }

      *(v5 + 528) = v26;
      v28 = *(*a3 + v22);
      if (*(v5 + 8))
      {
        v29 = *(v5 + 560) + v28;
        v30 = *(v5 + 564);
        if (v29 > v30)
        {
          result = DgnPrimArray<char>::reallocElts(v5 + 552, v29 - v30, 1);
          v29 = *(v5 + 560) + v28;
        }

        *(v5 + 560) = v29;
      }

      else
      {
        v31 = *(v5 + 544) + v28;
        v32 = *(v5 + 548);
        if (v31 > v32)
        {
          result = DgnPrimArray<short>::reallocElts(v5 + 536, v31 - v32, 1);
          v31 = *(v5 + 544) + v28;
        }

        *(v5 + 544) = v31;
      }

      v22 += 2;
      ++v9;
    }

    while (v23 != v22);
    goto LABEL_30;
  }

  v20 = *(v5 + 464) + v11;
  v21 = *(v5 + 468);
  if (v20 > v21)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 456, v20 - v21, 1);
    v20 = *(v5 + 464) + v11;
  }

  *(v5 + 464) = v20;
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_30:
  *(*(v5 + 128) + 4 * (a2 >> 5)) |= 1 << a2;
  v33 = *(v5 + 400);
  if (v33 == *(v5 + 404))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 392, 1, 1);
    v33 = *(v5 + 400);
  }

  *(*(v5 + 392) + 4 * v33) = a2;
  ++*(v5 + 400);
  return result;
}

void WordLanguageModel::WordLanguageModel(WordLanguageModel *this, int a2, const WordList *a3)
{
  LanguageModel::LanguageModel(this, a2, a3);
  *v4 = &unk_287526A40;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  BigramData::BigramData((v4 + 360));
  TrigramData::TrigramData((this + 744));
  QuadgramData::QuadgramData((this + 1232));
  *(this + 16) = 0;
  *(this + 68) = 1;
  *(this + 9) = -1;
  *(this + 80) = 0;
  *(this + 29) = -1;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 100) = xmmword_26288CF70;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = -1;
  *(this + 122) = 0;
  *(this + 225) = 0;
  *(this + 84) = 0;
  *(this + 92) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 269) = 0;
}

void sub_26278DAE4(_Unwind_Exception *a1)
{
  TrigramData::~TrigramData((v1 + 93));
  BigramData::~BigramData((v1 + 45));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 43));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 41));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 39));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 37));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnIArray<Utterance *>::~DgnIArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  LanguageModel::~LanguageModel(v1);
  _Unwind_Resume(a1);
}

void WordLanguageModel::~WordLanguageModel(WordLanguageModel *this)
{
  *this = &unk_287526A40;
  DgnDelete<LanguageModel>(*(this + 29));
  *(this + 29) = 0;
  DgnDelete<DgnStream>(*(this + 28));
  *(this + 28) = 0;
  DgnDelete<RealDFile>(*(this + 5));
  *(this + 5) = 0;
  DgnDelete<RecentBuffer>(*(this + 1));
  *(this + 1) = 0;
  QuadgramData::~QuadgramData((this + 1232));
  TrigramData::~TrigramData((this + 744));
  BigramData::~BigramData((this + 360));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);

  LanguageModel::~LanguageModel(this);
}

{
  WordLanguageModel::~WordLanguageModel(this);

  JUMPOUT(0x26672B1B0);
}

void WordLanguageModel::printSize(WordLanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3657);
  if (v177)
  {
    v13 = v176;
  }

  else
  {
    v13 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v13);
  DgnString::~DgnString(&v176);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CFB0);
  v175 = 0;
  v176 = 0;
  v15 = (a3 + 1);
  v174 = 0;
  LanguageModel::printSize(this, 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  v16 = *(this + 5);
  if (v16)
  {
    v175 = 0;
    v176 = 0;
    v174 = 0;
    (*(*v16 + 16))(v16, 0xFFFFFFFFLL, (a3 + 1), &v176, &v175, &v174);
    *a4 += v176;
    *a5 += v175;
    *a6 += v174;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  v173 = a3;
  v18 = (34 - a3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3663);
  if (v177)
  {
    v20 = v176;
  }

  else
  {
    v20 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, v15, &unk_26288CFB0, v18, v18, v20, v17, v17, 0);
  DgnString::~DgnString(&v176);
  *a4 += v17;
  *a5 += v17;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 12;
  }

  else
  {
    v21 = 16;
  }

  v22 = *(this + 14);
  v23 = *(this + 15);
  if (v23 >= v22)
  {
    v24 = 0;
    if (v22 > 0)
    {
      v21 += 8 * (v22 - 1) + 8;
    }

    v25 = v21 + 8 * (v23 - v22);
  }

  else
  {
    v24 = 8 * v22;
    v25 = v21;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3665);
  if (v177)
  {
    v27 = v176;
  }

  else
  {
    v27 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_26288CFB0, v18, v18, v27, v25, v21, v24);
  DgnString::~DgnString(&v176);
  *a4 += v25;
  *a5 += v21;
  *a6 += v24;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3666);
  if (v177)
  {
    v29 = v176;
  }

  else
  {
    v29 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_26288CFB0, v18, v18, v29, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3668);
  if (v177)
  {
    v31 = v176;
  }

  else
  {
    v31 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &unk_26288CFB0, v18, v18, v31, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3670);
  if (v177)
  {
    v33 = v176;
  }

  else
  {
    v33 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, &unk_26288CFB0, v18, v18, v33, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3671);
  if (v177)
  {
    v35 = v176;
  }

  else
  {
    v35 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &unk_26288CFB0, v18, v18, v35, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3672);
  if (v177)
  {
    v37 = v176;
  }

  else
  {
    v37 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, &unk_26288CFB0, v18, v18, v37, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3674);
  if (v177)
  {
    v39 = v176;
  }

  else
  {
    v39 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_26288CFB0, v18, v18, v39, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3676);
  if (v177)
  {
    v41 = v176;
  }

  else
  {
    v41 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &unk_26288CFB0, v18, v18, v41, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3678);
  if (v177)
  {
    v43 = v176;
  }

  else
  {
    v43 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_26288CFB0, v18, v18, v43, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 12;
  }

  else
  {
    v44 = 16;
  }

  v45 = *(this + 32);
  v46 = *(this + 33);
  if (v46 >= v45)
  {
    v47 = 0;
    if (v45 > 0)
    {
      v44 += 4 * (v45 - 1) + 4;
    }

    v48 = v44 + 4 * (v46 - v45);
  }

  else
  {
    v47 = 4 * v45;
    v48 = v44;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3681);
  if (v177)
  {
    v50 = v176;
  }

  else
  {
    v50 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v15, &unk_26288CFB0, v18, v18, v50, v48, v44, v47);
  DgnString::~DgnString(&v176);
  *a4 += v48;
  *a5 += v44;
  *a6 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 36);
  v53 = *(this + 37);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 2 * (v52 - 1) + 2;
    }

    v55 = v51 + 2 * (v53 - v52);
  }

  else
  {
    v54 = 2 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3683);
  if (v177)
  {
    v57 = v176;
  }

  else
  {
    v57 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_26288CFB0, v18, v18, v57, v55, v51, v54);
  DgnString::~DgnString(&v176);
  *a4 += v55;
  *a5 += v51;
  *a6 += v54;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 40);
  v60 = *(this + 41);
  v61 = v60 >= v59;
  v62 = v60 - v59;
  if (v61)
  {
    if (v59 > 0)
    {
      v63 = (v59 - 1) + v58 + 1;
    }

    else
    {
      v63 = v58;
    }

    v58 = v63 + v62;
    v59 = 0;
  }

  else
  {
    v63 = v58;
  }

  v64 = v59;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3685);
  if (v177)
  {
    v66 = v176;
  }

  else
  {
    v66 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v15, &unk_26288CFB0, v18, v18, v66, v58, v63, v64);
  DgnString::~DgnString(&v176);
  *a4 += v58;
  *a5 += v63;
  *a6 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = *(this + 44);
  v69 = *(this + 45);
  if (v69 >= v68)
  {
    v70 = 0;
    if (v68 > 0)
    {
      v67 += 2 * (v68 - 1) + 2;
    }

    v71 = v67 + 2 * (v69 - v68);
  }

  else
  {
    v70 = 2 * v68;
    v71 = v67;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3688);
  if (v177)
  {
    v73 = v176;
  }

  else
  {
    v73 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, &unk_26288CFB0, v18, v18, v73, v71, v67, v70);
  DgnString::~DgnString(&v176);
  *a4 += v71;
  *a5 += v67;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 4;
  }

  else
  {
    v74 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3690);
  if (v177)
  {
    v76 = v176;
  }

  else
  {
    v76 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, &unk_26288CFB0, v18, v18, v76, v74, v74, 0);
  DgnString::~DgnString(&v176);
  *a4 += v74;
  *a5 += v74;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v77 = 4;
  }

  else
  {
    v77 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3692);
  if (v177)
  {
    v79 = v176;
  }

  else
  {
    v79 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v15, &unk_26288CFB0, v18, v18, v79, v77, v77, 0);
  DgnString::~DgnString(&v176);
  *a4 += v77;
  *a5 += v77;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 4;
  }

  else
  {
    v80 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3694);
  if (v177)
  {
    v82 = v176;
  }

  else
  {
    v82 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v15, &unk_26288CFB0, v18, v18, v82, v80, v80, 0);
  DgnString::~DgnString(&v176);
  *a4 += v80;
  *a5 += v80;
  v83 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  v84 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v84 = 3;
  }

  v85 = *(this + 54);
  v86 = (((*(this + 55) - v85) + v85) << v84) + v83;
  v87 = (v85 << v84) + v83;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3696);
  if (v177)
  {
    v89 = v176;
  }

  else
  {
    v89 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v15, &unk_26288CFB0, v18, v18, v89, v86, v87, 0);
  DgnString::~DgnString(&v176);
  *a4 += v86;
  *a5 += v87;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3700);
  if (v177)
  {
    v91 = v176;
  }

  else
  {
    v91 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v15, &unk_26288CFB0, v18, v18, v91, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  v92 = *(this + 28);
  if (v92)
  {
    v175 = 0;
    v176 = 0;
    v174 = 0;
    (*(*v92 + 16))(v92, 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
    *a4 += v176;
    *a5 += v175;
    *a6 += v174;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v93 = 4;
  }

  else
  {
    v93 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3704);
  if (v177)
  {
    v95 = v176;
  }

  else
  {
    v95 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v15, &unk_26288CFB0, v18, v18, v95, v93, v93, 0);
  DgnString::~DgnString(&v176);
  *a4 += v93;
  *a5 += v93;
  v96 = *(this + 29);
  if (v96)
  {
    v175 = 0;
    v176 = 0;
    v174 = 0;
    (*(*v96 + 16))(v96, 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
    *a4 += v176;
    *a5 += v175;
    *a6 += v174;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v97 = 4;
  }

  else
  {
    v97 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3706);
  if (v177)
  {
    v99 = v176;
  }

  else
  {
    v99 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v15, &unk_26288CFB0, v18, v18, v99, v97, v97, 0);
  DgnString::~DgnString(&v176);
  *a4 += v97;
  *a5 += v97;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3708);
  if (v177)
  {
    v101 = v176;
  }

  else
  {
    v101 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v15, &unk_26288CFB0, v18, v18, v101, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3710);
  if (v177)
  {
    v103 = v176;
  }

  else
  {
    v103 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v15, &unk_26288CFB0, v18, v18, v103, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3712);
  if (v177)
  {
    v105 = v176;
  }

  else
  {
    v105 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v15, &unk_26288CFB0, v18, v18, v105, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3714);
  if (v177)
  {
    v107 = v176;
  }

  else
  {
    v107 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v15, &unk_26288CFB0, v18, v18, v107, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3717);
  if (v177)
  {
    v109 = v176;
  }

  else
  {
    v109 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v15, &unk_26288CFB0, v18, v18, v109, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3719);
  if (v177)
  {
    v111 = v176;
  }

  else
  {
    v111 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v15, &unk_26288CFB0, v18, v18, v111, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3721);
  if (v177)
  {
    v113 = v176;
  }

  else
  {
    v113 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v15, &unk_26288CFB0, v18, v18, v113, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3722);
  if (v177)
  {
    v115 = v176;
  }

  else
  {
    v115 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v15, &unk_26288CFB0, v18, v18, v115, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3723);
  if (v177)
  {
    v117 = v176;
  }

  else
  {
    v117 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v15, &unk_26288CFB0, v18, v18, v117, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3725);
  if (v177)
  {
    v119 = v176;
  }

  else
  {
    v119 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v15, &unk_26288CFB0, v18, v18, v119, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3727);
  if (v177)
  {
    v121 = v176;
  }

  else
  {
    v121 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v15, &unk_26288CFB0, v18, v18, v121, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 12;
  }

  else
  {
    v122 = 16;
  }

  v123 = *(this + 72);
  v124 = *(this + 73);
  if (v124 >= v123)
  {
    v125 = 0;
    if (v123 > 0)
    {
      v122 += 4 * (v123 - 1) + 4;
    }

    v126 = v122 + 4 * (v124 - v123);
  }

  else
  {
    v125 = 4 * v123;
    v126 = v122;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3729);
  if (v177)
  {
    v128 = v176;
  }

  else
  {
    v128 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v15, &unk_26288CFB0, v18, v18, v128, v126, v122, v125);
  DgnString::~DgnString(&v176);
  *a4 += v126;
  *a5 += v122;
  *a6 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v129 = 12;
  }

  else
  {
    v129 = 16;
  }

  v130 = *(this + 76);
  v131 = *(this + 77);
  if (v131 >= v130)
  {
    v132 = 0;
    if (v130 > 0)
    {
      v129 += 2 * (v130 - 1) + 2;
    }

    v133 = v129 + 2 * (v131 - v130);
  }

  else
  {
    v132 = 2 * v130;
    v133 = v129;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3731);
  if (v177)
  {
    v135 = v176;
  }

  else
  {
    v135 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v15, &unk_26288CFB0, v18, v18, v135, v133, v129, v132);
  DgnString::~DgnString(&v176);
  *a4 += v133;
  *a5 += v129;
  *a6 += v132;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v136 = 12;
  }

  else
  {
    v136 = 16;
  }

  v137 = *(this + 80);
  v138 = *(this + 81);
  v61 = v138 >= v137;
  v139 = v138 - v137;
  if (v61)
  {
    if (v137 > 0)
    {
      v140 = (v137 - 1) + v136 + 1;
    }

    else
    {
      v140 = v136;
    }

    v136 = v140 + v139;
    v137 = 0;
  }

  else
  {
    v140 = v136;
  }

  v141 = v137;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3733);
  if (v177)
  {
    v143 = v176;
  }

  else
  {
    v143 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v15, &unk_26288CFB0, v18, v18, v143, v136, v140, v141);
  DgnString::~DgnString(&v176);
  *a4 += v136;
  *a5 += v140;
  *a6 += v141;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v144 = 12;
  }

  else
  {
    v144 = 16;
  }

  v145 = *(this + 84);
  v146 = *(this + 85);
  if (v146 >= v145)
  {
    v147 = 0;
    if (v145 > 0)
    {
      v144 += 2 * (v145 - 1) + 2;
    }

    v148 = v144 + 2 * (v146 - v145);
  }

  else
  {
    v147 = 2 * v145;
    v148 = v144;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3735);
  if (v177)
  {
    v150 = v176;
  }

  else
  {
    v150 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v15, &unk_26288CFB0, v18, v18, v150, v148, v144, v147);
  DgnString::~DgnString(&v176);
  *a4 += v148;
  *a5 += v144;
  *a6 += v147;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v151 = 12;
  }

  else
  {
    v151 = 16;
  }

  v152 = *(this + 88);
  v153 = *(this + 89);
  if (v153 >= v152)
  {
    v154 = 0;
    if (v152 > 0)
    {
      v151 += 2 * (v152 - 1) + 2;
    }

    v155 = v151 + 2 * (v153 - v152);
  }

  else
  {
    v154 = 2 * v152;
    v155 = v151;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3737);
  if (v177)
  {
    v157 = v176;
  }

  else
  {
    v157 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v156, v15, &unk_26288CFB0, v18, v18, v157, v155, v151, v154);
  DgnString::~DgnString(&v176);
  *a4 += v155;
  *a5 += v151;
  *a6 += v154;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  BigramData::printSize((this + 360), 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3741);
  if (v177)
  {
    v159 = v176;
  }

  else
  {
    v159 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v15, &unk_26288CFB0, v18, v18, v159, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3743);
  if (v177)
  {
    v161 = v176;
  }

  else
  {
    v161 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v15, &unk_26288CFB0, v18, v18, v161, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  TrigramData::printSize((this + 744), 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3748);
  if (v177)
  {
    v163 = v176;
  }

  else
  {
    v163 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v15, &unk_26288CFB0, v18, v18, v163, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3750);
  if (v177)
  {
    v165 = v176;
  }

  else
  {
    v165 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v15, &unk_26288CFB0, v18, v18, v165, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  QuadgramData::printSize((this + 1232), 0xFFFFFFFFLL, v15, &v176, &v175, &v174);
  *a4 += v176;
  *a5 += v175;
  *a6 += v174;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v166 = 4;
  }

  else
  {
    v166 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3756);
  if (v177)
  {
    v168 = v176;
  }

  else
  {
    v168 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v15, &unk_26288CFB0, v18, v18, v168, v166, v166, 0);
  DgnString::~DgnString(&v176);
  *a4 += v166;
  *a5 += v166;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3760);
  if (v177)
  {
    v170 = v176;
  }

  else
  {
    v170 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v15, &unk_26288CFB0, v18, v18, v170, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3761);
  if (v177)
  {
    v172 = v176;
  }

  else
  {
    v172 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v173, &unk_26288CFB0, (35 - v173), (35 - v173), v172, *a4, *a5, *a6);
  DgnString::~DgnString(&v176);
}

void sub_26278F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void WordLanguageModel::initializeScoreToProb(WordLanguageModel *this, double a2, double a3)
{
  v3 = (20 * *(this + 8)) | 1;
  if (v3 != *(this + 14))
  {
    v5 = *(this + 15);
    if (v5 <= 20 * *(this + 8))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 48, v3 - v5, 0);
    }

    v6 = 0;
    *(this + 14) = v3;
    do
    {
      LODWORD(a3) = *(this + 8);
      *(*(this + 6) + 8 * v6) = DgnExp(-v6 / *&a3);
      ++v6;
    }

    while (v6 < *(this + 14));
  }
}

uint64_t WordLanguageModel::maybeAddAlienWordLmId(uint64_t this, double a2, double a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 72) == -1)
  {
    v9 = this;
    v10 = *(this + 104);
    if (v10 >= 0xFFFFF1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3792, "lm/wordlm", 2, "%u", *(this + 104));
      v10 = *(v9 + 104);
    }

    WordLanguageModel::allocLmId(v9, v10);
    this = WordLanguageModel::computeAlienScore(v9, a4, a2, a3);
    *(*(v9 + 168) + 2 * v10) = this;
    if (*(v9 + 64) >= 2u)
    {
      if (*(v9 + 336))
      {
        this = WordLanguageModel::computeAlienScore(v9, a5, a2, a3);
        *(*(v9 + 328) + 2 * v10) = this;
      }

      *(*(v9 + 344) + 2 * v10) = 0;
    }

    *(v9 + 72) = v10;
  }

  return this;
}

uint64_t *WordLanguageModel::allocLmId(uint64_t *this, unsigned int a2)
{
  v3 = this;
  if (*(this + 26) < a2 + 1)
  {
    *(this + 26) = a2 + 1;
  }

  for (i = *(this + 44); i <= a2; *(v3 + 176) = i)
  {
    if (i == *(v3 + 180))
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 168, 1, 1);
      i = *(v3 + 176);
    }

    *(*(v3 + 168) + 2 * i++) = 20000;
  }

  if (*(v3 + 64) >= 2u)
  {
    v5 = *(v3 + 336);
    if (v5 - 1 < a2)
    {
      do
      {
        if (v5 == *(v3 + 340))
        {
          this = DgnPrimArray<short>::reallocElts(v3 + 328, 1, 1);
          v5 = *(v3 + 336);
        }

        *(*(v3 + 328) + 2 * v5++) = 20000;
        *(v3 + 336) = v5;
      }

      while (v5 <= a2);
    }

    for (j = *(v3 + 352); j <= a2; *(v3 + 352) = j)
    {
      if (j == *(v3 + 356))
      {
        this = DgnPrimArray<short>::reallocElts(v3 + 344, 1, 1);
        j = *(v3 + 352);
      }

      *(*(v3 + 344) + 2 * j++) = 20000;
    }

    if (*(v3 + 560) > a2)
    {

      return BigramData::bi1SetEmpty(v3 + 360, a2);
    }
  }

  return this;
}

uint64_t WordLanguageModel::computeAlienScore(WordLanguageModel *this, uint64_t a2, double a3, double a4)
{
  v5 = a2;
  if (a3 == -1.0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2 * a3;
  }

  v7 = DgnExp(-20.0) * v5;
  if (v6 >= v7)
  {
    v7 = v6;
    if (v6 > v5)
    {
      v7 = v5;
    }
  }

  v8 = DgnLog(v7 / v5);
  LODWORD(v9) = *(this + 8);
  return (0.5 - v8 * v9);
}

void WordLanguageModel::loadLM(const WordList **this, FileSpec **a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, unsigned int a6, BOOL a7, int a8, unsigned int a9, unsigned int a10, __int16 a11, BOOL *a13, BOOL *a14, double *a15)
{
  v40 = -1.0;
  v41[0] = -1.0;
  if (DFile::subFileExists(a2, 0x73u))
  {
    WordLanguageModel::loadWns(this, a2, v41, &v40);
    if (a15)
    {
      *a15 = v40;
    }
  }

  v20 = DFile::subFileExists(a2, 0x74u);
  v21 = DFile::subFileExists(a2, 0x6Fu);
  v22 = v21;
  if (v20)
  {
    if ((v21 & 1) != 0 || DFile::subFileExists(a2, 0x70u))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3858, "lm/wordlm", 16, "%s", &unk_26288CFB0);
    }

    if ((a6 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3860, "lm/wordlm", 53, "%s", &errStr_lm_wordlm_E_CANT_LOAD_TEXT_LANGUAGE_MODEL);
    }

    WordLanguageModel::loadText(this, a2, a8, a9, a10, v41[0], v40);
  }

  else
  {
    v25 = DFile::subFileExists(a2, 0x70u);
    if (v22)
    {
      if (v25)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3871, "lm/wordlm", 17, "%s", &errStr_lm_wordlm_E_WNB_WITH_OTHER_LM_FILE);
      }

      if (a6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3873, "lm/wordlm", 52, "%s", &errStr_lm_wordlm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
      }

      v26 = this;
      if (!a5)
      {
        WordLanguageModel::loadBinary(this, a2, a4, a8, a9, a10);
        goto LABEL_27;
      }

      v27 = a5;
      v28 = a2;
      v29 = a4;
      v30 = 111;
    }

    else
    {
      if (!v25)
      {
        v23 = errThrowInternal(v25, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3910, "lm/wordlm", 48, "%s", &errStr_lm_wordlm_E_NO_LM_FILE);
        goto LABEL_27;
      }

      if (a6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3890, "lm/wordlm", 52, "%s", &errStr_lm_wordlm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
      }

      if (!a5)
      {
        WordLanguageModel::loadDynamic(this, a2, a3, a4, a11, HIBYTE(a11), a13, a14, a8, a9, a10);
        goto LABEL_27;
      }

      v26 = this;
      v27 = a5;
      v28 = a2;
      v29 = a4;
      v30 = 112;
    }

    WordLanguageModel::loadBinaryShared(v26, v27, v28, v29, v30, 1);
  }

LABEL_27:
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v39 = 1;
    DFile::pushCurrentSubDirComponent(a2, &v39);
    if (a3)
    {
      v39 = 1;
      DFile::pushCurrentSubDirComponent(a3, &v39);
    }

    this[29] = LanguageModel::CreateAndLoadLanguageModel(a2, a3, a4, a5, *(this + 24), a6, 0, 1u, *(this + 8), v37, this[2], a8, a9, a10, a11, a13, a14, 0);
    DFile::popCurrentSubDirComponent(a2);
    if (a3)
    {
      DFile::popCurrentSubDirComponent(a3);
    }
  }

  v31 = *(this + 26);
  if (v31 >= 0xFFFF)
  {
    v31 = 0xFFFF;
  }

  *(this + 27) = v31;
  if (a6)
  {
    WordLanguageModel::checkWordListLMAgreement(this);
  }

  WordLanguageModel::initializeScoreToProb(this, v23, v24);
  v32 = *(this + 28);
  if (v32 != -1)
  {
    v33 = *(this[21] + v32);
    if (v33 != 20000 && *(this + 14) <= v33)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3968, "lm/wordlm", 59, "%.500s %u %u", "unigram", *(this[21] + v32), v32);
    }
  }

  v34 = *(this + 29);
  if (v34 != -1 && *(this + 14) <= *(this[21] + v34))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3975, "lm/wordlm", 67, "%.500s %u %u", "unigram", *(this[21] + v34), v34);
  }

  v35 = *(this + 28);
  if (v35 != -1 && *(this + 84) && *(this + 14) <= *(this[41] + v35))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3983, "lm/wordlm", 59, "%.500s %u %u", "unigram backoff", *(this[41] + v35), v35);
  }

  v36 = *(this + 29);
  if (v36 != -1 && *(this + 84) && *(this + 14) <= *(this[41] + v36))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3991, "lm/wordlm", 67, "%.500s %u %u", "unigram backoff", *(this[41] + v36), v36);
  }
}

void WordLanguageModel::loadWns(WordLanguageModel *this, FileSpec **a2, double *a3, double *a4)
{
  DgnTextFileParser::DgnTextFileParser(v29);
  DgnTextFileParser::openDgnTextFileParser(v29, a2, 115, 1);
  DgnTextFileParser::verifyMatchingFileType(v29, "WordNGramSpec");
  v28[0] = 0;
  v28[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v29, sWNS_Versions, v28);
  DgnTextFileParser::verifyFileVersionInRange(v29, v28);
  v27 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v29, "Depth", &v27, 1, 1u, 4u);
  *(this + 16) = v27;
  FileVersion = DgnTextFile::getFileVersion(v29);
  v9 = FileVersion;
  v10 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v10 != 12)
    {
      goto LABEL_12;
    }
  }

  else if (FileVersion != 24 || (HIDWORD(FileVersion) - 13) > 1)
  {
    goto LABEL_12;
  }

  DgnTextFile::getHeaderFieldReal(v29, "AlienWordProbability", a3, 1, -1.0, 1.0);
  if (*a3 != -1.0 && *a3 < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4843, "lm/wordlm", 4, "%.500s", "AlienWordProbability");
  }

  DgnTextFile::getHeaderFieldReal(v29, "AlienWordMinimumCount", a4, 1, -1.0, 1.0);
  if (*a4 != -1.0 && *a4 < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4849, "lm/wordlm", 4, "%.500s", "AlienWordMinimumCount");
  }

LABEL_12:
  v25[0] = 0;
  DgnTextFile::getHeaderFieldInteger(v29, "AlienWordLmId", v25, 1, -1, 16777200);
  v11 = v25[0];
  if (!v25[0])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4857, "lm/wordlm", 4, "%.500s", "AlienWordLmId");
    v11 = v25[0];
  }

  *(this + 18) = v11;
  if (v9 == 19)
  {
    if (v10 != 12)
    {
      goto LABEL_27;
    }

LABEL_19:
    v12 = *a3 != -1.0;
    if (*a4 != -1.0)
    {
      ++v12;
    }

    if (v11 == -1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    if (v13 != 1)
    {
      if (v13)
      {
        v14 = &errStr_lm_wordlm_E_WNS_NEW_WORD_BEHAVIOR_SPECIFIED_TWICE;
        v15 = 13;
        v16 = 4878;
      }

      else
      {
        v14 = &errStr_lm_wordlm_E_WNS_NEW_WORD_BEHAVIOR_NOT_SPECIFIED;
        v15 = 12;
        v16 = 4876;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", v16, "lm/wordlm", v15, "%s", v14);
    }

    goto LABEL_31;
  }

  if (v9 == 24 && (v10 - 13) <= 1)
  {
    goto LABEL_19;
  }

LABEL_27:
  if (v11 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4883, "lm/wordlm", 97, "%s", &errStr_lm_wordlm_E_WNS_ALIEN_WORD_LMID_NOT_SPECIFIED);
  }

LABEL_31:
  DgnTextFile::getHeaderFieldBool(v29, "AllowNewWordCloning", this + 80, 1);
  v26 = 0;
  DgnTextFile::getHeaderFieldInteger(v29, "IgnoreInContextLmId", &v26, 1, -1, 16777200);
  v17 = v26;
  if (!v26)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4893, "lm/wordlm", 4, "%.500s", "IgnoreInContextLmId");
    v17 = v26;
  }

  *(this + 25) = v17;
  if (*(this + 16) >= 2u)
  {
    DgnTextFile::getHeaderFieldInteger(v29, "UnknownContextLmId", &v26, 1, -1, 16777200);
    v18 = v26;
    if (!v26)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4907, "lm/wordlm", 4, "%.500s", "UnknownContextLmId");
      v18 = v26;
    }

    if (v18 != -1 && *(this + 18) == -1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4915, "lm/wordlm", 14, "%s", &errStr_lm_wordlm_E_UNKNOWNCONTEXTLMID_WITHOUT_ALIENWORDLMID);
      v18 = v26;
    }

    *(this + 60) = v18;
    if (v9 == 19 && v10 == 12)
    {
      v19 = -1;
    }

    else
    {
      v26 = 0;
      DgnTextFile::getHeaderFieldInteger(v29, "AlienWordContextLmId", &v26, 1, -1, 16777200);
      v19 = v26;
      if (!v26)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4932, "lm/wordlm", 4, "%.500s", "AlienWordContextLmId");
        v19 = v26;
      }
    }

    *(this + 19) = v19;
    DgnString::DgnString(v25);
    v24 = 0;
    HeaderField = DgnTextFile::getHeaderField(v29, "BackoffSubDirectory", v25, 0);
    HeaderFieldUnsigned = DgnTextFile::getHeaderFieldUnsigned(v29, "BackoffAfterDepth", &v24, 0, 2u, 2u);
    if (HeaderField != HeaderFieldUnsigned)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4950, "lm/wordlm", 3, "%s", &errStr_lm_wordlm_E_WNS_ONLY_ONE_BACKOFF_FIELD);
    }

    if ((HeaderField & HeaderFieldUnsigned) == 1)
    {
      v23 = 1;
      if (!SubDirExtension::isString(&v23, v25))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4956, "lm/wordlm", 4, "%.500s", "BackoffSubDirectory");
      }

      v22 = 1;
      if (*(this + 16) <= 1u)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4957, "lm/wordlm", 1, "%s", &errStr_lm_wordlm_E_BAD_UPPER_LM);
      }
    }

    else
    {
      v22 = 0;
    }

    *(this + 244) = v22;
    DgnTextFile::getHeaderFieldBool(v29, "HasStaticComponentOnDisk", this + 245, 1);
    DgnTextFile::getHeaderFieldBool(v29, "LoadNgrams", this + 68, 1);
    if (v9 == 19)
    {
      if (v10 != 12)
      {
LABEL_61:
        DgnString::~DgnString(v25);
        goto LABEL_62;
      }
    }

    else if (v9 != 24 || v10 != 13)
    {
      goto LABEL_61;
    }

    DgnTextFile::getHeaderFieldInteger(v29, "BuildMaximumBigramCountToDiscount", this + 21, 1, -1, 0x7FFFFFFF);
    DgnTextFile::getHeaderFieldInteger(v29, "BuildMaximumNumBigramRecords", this + 22, 1, -1, 0x7FFFFFFF);
    DgnString::~DgnString(v25);
    if (*(this + 16) > 2u)
    {
      if (v9 != 19)
      {
        if (v10 != 13)
        {
          goto LABEL_62;
        }

LABEL_64:
        DgnTextFile::getHeaderFieldInteger(v29, "BuildMaximumTrigramCountToDiscount", this + 23, 1, -1, 0x7FFFFFFF);
        DgnTextFile::getHeaderFieldInteger(v29, "BuildMaximumNumTrigramRecords", this + 24, 1, -1, 0x7FFFFFFF);
        goto LABEL_62;
      }

      if (v10 == 12)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_62:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v29);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v29, 0);
  DgnTextFileParser::verifyNoBodyLines(v29);
  DgnIArray<Utterance *>::~DgnIArray(v28);
  DgnTextFileParser::~DgnTextFileParser(v29);
}

void sub_262790690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileParser::~DgnTextFileParser(va2);
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadText(WordLanguageModel *this, FileSpec **a2, int a3, unsigned int a4, unsigned int a5, double a6, double a7)
{
  DgnTextFileParser::DgnTextFileParser(v503);
  DgnTextFileParser::openDgnTextFileParser(v503, a2, 116, 1);
  DgnTextFileParser::verifyMatchingFileType(v503, "WordNGramText");
  v502[1] = 0;
  v502[0] = 0;
  DgnTextFile::legalDgnTextFileVersions(v503, sWNT_Versions, v502);
  DgnTextFileParser::verifyFileVersionInRange(v503, v502);
  FileVersion = DgnTextFile::getFileVersion(v503);
  LODWORD(v498) = 0;
  DgnTextFile::getHeaderFieldUnsigned(v503, "Depth", &v498, 1, *(this + 16), *(this + 16));
  LODWORD(v498) = 0;
  DgnTextFile::getHeaderFieldUnsigned(v503, "LMScale", &v498, 1, *(this + 8), *(this + 8));
  WordLanguageModel::initializeScoreToProb(this, v12, v13);
  DgnTextFile::getHeaderFieldUnsigned(v503, "NumLmIds", this + 26, 1, 2u, 0xFFFFF0u);
  WordLanguageModel::allocLmId(this, *(this + 26) - 1);
  v14 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v14 != 5)
    {
      goto LABEL_7;
    }

LABEL_6:
    LODWORD(v498) = 0;
    DgnTextFile::getHeaderFieldUnsigned(v503, "NumPermanentLmIds", &v498, 1, 1u, *(this + 26));
    goto LABEL_7;
  }

  if (FileVersion == 24 && (HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
  {
    goto LABEL_6;
  }

LABEL_7:
  LODWORD(v498) = 0;
  DgnTextFile::getHeaderFieldInteger(v503, "BegLmId", &v498, 1, -1, *(this + 26) - 1);
  *(this + 28) = LODWORD(v498);
  LODWORD(v498) = 0;
  DgnTextFile::getHeaderFieldInteger(v503, "EndLmId", &v498, 1, -1, *(this + 26) - 1);
  *(this + 29) = LODWORD(v498);
  v501 = 0;
  v437 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v14 == 5)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (FileVersion == 24)
  {
    if ((HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
    {
LABEL_9:
      DgnTextFile::getHeaderFieldUnsigned64(v503, "UnigramTotalCount", &v501, 1, 1uLL, 0xFFFFFFFFuLL);
      v500 = 0;
      if (*(this + 16) > 1u)
      {
        if (FileVersion == 19)
        {
          if (v437 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_31;
    }

LABEL_15:
    v500 = 0;
    if (*(this + 16) <= 1u)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  v500 = 0;
  if (*(this + 16) > 1u)
  {
LABEL_18:
    if (FileVersion == 24 && (HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
    {
LABEL_20:
      DgnTextFile::getHeaderFieldUnsigned64(v503, "UnigramBackoffTotalCount", &v500, 1, 1uLL, 0xFFFFFFFFuLL);
    }

LABEL_21:
    DgnTextFile::getHeaderFieldUnsigned(v503, "ContextSkipDistance", this + 68, 1, 0, 1u);
    if (*(this + 16) >= 3u)
    {
      v15 = *(this + 68);
      if (v15)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5545, "lm/wordlm", 32, "%d %d", *(this + 16), v15);
      }
    }

    if (FileVersion == 19)
    {
      if (v437 != 5)
      {
        goto LABEL_30;
      }
    }

    else if (FileVersion != 24 || (HIDWORD(FileVersion) & 0xFFFFFFFE) != 6)
    {
      goto LABEL_30;
    }

    v498 = 0.0;
    DgnTextFile::getHeaderFieldReal(v503, "BigramAbsoluteDiscount", &v498, 1, 0.0, 1.0);
LABEL_30:
    DgnTextFile::getHeaderFieldBool(v503, "HasWordIdToContextLmId", this + 276, 1);
  }

LABEL_31:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v503);
  v498 = 0.0;
  v499 = 0;
  DgnTextFile::getLineFieldNames(v503, &v498);
  v497[0] = 0;
  v497[1] = 0;
  DgnTextFile::getLineFieldFormats(v503, v497);
  v432 = FileVersion;
  if (!v499)
  {
    v444 = -1;
    v445 = -1;
    v440 = -1;
    v441 = -1;
    v438 = -1;
    goto LABEL_91;
  }

  v16 = 0;
  v17 = 0;
  v441 = -1;
  v442 = -1;
  v444 = -1;
  v445 = -1;
  v440 = -1;
  v438 = -1;
  do
  {
    v18 = (*&v498 + v16);
    v19 = *(*&v498 + v16 + 8);
    if (v19)
    {
      v20 = *v18;
      if (!strcmp(*v18, "TableName"))
      {
        if (*(v497[0] + 4 * v17))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5580, "lm/wordlm", 39, "%.500s %.500s", v20, "String");
        }

        v442 = v17;
        goto LABEL_77;
      }
    }

    else
    {
      v20 = &unk_26288CFB0;
    }

    if (!strcmp(v20, "Index1"))
    {
      if (*(v497[0] + 4 * v17) != 3)
      {
        if (v19)
        {
          v23 = *v18;
        }

        else
        {
          v23 = &unk_26288CFB0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5588, "lm/wordlm", 39, "%.500s %.500s", v23, "Unsigned");
      }

      v444 = v17;
    }

    else
    {
      v21 = *(this + 16);
      if (v21 >= 2)
      {
        if (v19)
        {
          v22 = *v18;
        }

        else
        {
          v22 = &unk_26288CFB0;
        }

        if (!strcmp(v22, "Index2"))
        {
          if (*(v497[0] + 4 * v17) != 3)
          {
            if (v19)
            {
              v25 = *v18;
            }

            else
            {
              v25 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5596, "lm/wordlm", 39, "%.500s %.500s", v25, "Unsigned");
          }

          v445 = v17;
          goto LABEL_77;
        }

        if (v21 != 2)
        {
          if (v19)
          {
            v24 = *v18;
          }

          else
          {
            v24 = &unk_26288CFB0;
          }

          if (!strcmp(v24, "Index3"))
          {
            if (*(v497[0] + 4 * v17) != 3)
            {
              if (v19)
              {
                v27 = *v18;
              }

              else
              {
                v27 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5604, "lm/wordlm", 39, "%.500s %.500s", v27, "Unsigned");
            }

            v440 = v17;
            goto LABEL_77;
          }

          if (v21 >= 4)
          {
            v26 = v19 ? *v18 : &unk_26288CFB0;
            if (!strcmp(v26, "Index4"))
            {
              if (*(v497[0] + 4 * v17) != 3)
              {
                if (v19)
                {
                  v29 = *v18;
                }

                else
                {
                  v29 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5612, "lm/wordlm", 39, "%.500s %.500s", v29, "Unsigned");
              }

              v438 = v17;
              goto LABEL_77;
            }
          }
        }
      }

      if (!v19)
      {
        v28 = &unk_26288CFB0;
LABEL_76:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5624, "lm/wordlm", 37, "%.500s %u", v28, v21);
        goto LABEL_77;
      }

      v28 = *v18;
      if (strcmp(*v18, "EntryValue1"))
      {
        goto LABEL_76;
      }

      if (*(v497[0] + 4 * v17) != 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5620, "lm/wordlm", 39, "%.500s %.500s", v28, "Integer");
      }

      v441 = v17;
    }

LABEL_77:
    ++v17;
    v16 += 16;
  }

  while (v17 < v499);
  if (v442 == -1)
  {
LABEL_91:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5626, "lm/wordlm", 38, "%.500s", "TableName");
    v442 = -1;
  }

  if (v444 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5627, "lm/wordlm", 38, "%.500s", "Index1");
  }

  v30 = *(this + 16);
  if (v30 >= 2 && v445 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5629, "lm/wordlm", 38, "%.500s", "Index2");
    v30 = *(this + 16);
  }

  if (v30 >= 3 && v440 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5631, "lm/wordlm", 38, "%.500s", "Index3");
    v30 = *(this + 16);
  }

  if (v30 >= 4 && v438 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5633, "lm/wordlm", 38, "%.500s", "Index4");
  }

  if (v441 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5634, "lm/wordlm", 38, "%.500s", "EntryValue1");
  }

  DgnString::DgnString(&v495);
  v443 = 0;
  v31 = 0;
  v431 = 0;
  v436 = 0;
  v439 = 0;
  v453 = 0;
  v446 = 0;
  v450 = 0;
  v493 = 0;
  v494 = 0;
  v491 = 0;
  v492 = 0;
  v489 = 0;
  v490 = 0;
  v487 = 0;
  *v488 = 0;
  v485 = 0;
  v486 = 0;
  v483 = 0;
  v484 = 0;
  v481 = 0;
  v482 = 0;
  v479 = 0;
  v480 = 0;
  v477 = 0;
  v478 = 0;
  v475 = 0;
  *v476 = 0;
  v473 = 0;
  v474 = 0;
  v471 = 0;
  v472 = 0;
  v469 = 0;
  v470 = 0;
  v467 = 0;
  v468 = 0;
  v465 = 0;
  v466 = 0;
  v463 = 0;
  v464 = 0;
  v32 = -1;
  v457 = -1;
  v448 = -1;
  v458 = -1;
  v33 = 0xFFFFFFFFLL;
  v34 = 0xFFFFFFFFLL;
  v35 = -1;
  v452 = -1;
  while (2)
  {
    Line = DgnTextFileParser::parseNextLine(v503);
    DgnString::DgnString(&v461);
    v455 = v35;
    v454 = v34;
    if (!Line)
    {
      LineFieldUnsigned = 0;
      LineFieldInteger = 0;
      goto LABEL_124;
    }

    LineFieldString = DgnTextFileParser::getLineFieldString(v503, v442);
    DgnString::operator=(&v461, LineFieldString);
    LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v503, v444);
    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(v503, v441);
    if (v450)
    {
      if (v462)
      {
        v38 = v461;
      }

      else
      {
        v38 = &unk_26288CFB0;
      }

      if (v496)
      {
        v39 = v495;
      }

      else
      {
        v39 = &unk_26288CFB0;
      }

      v40 = strcmp(v38, v39) != 0;
      if (v40)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v40 = 0;
    }

    if (LineFieldUnsigned < v453)
    {
      CurrentLine = DgnTextFile::getCurrentLine(v503);
      if (*(CurrentLine + 8))
      {
        v42 = *CurrentLine;
      }

      else
      {
        v42 = &unk_26288CFB0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5688, "lm/wordlm", 40, "%.500s", v42);
    }

LABEL_123:
    if (v40)
    {
LABEL_124:
      if (v452 != -1)
      {
        v43 = 1;
        v451 = Line;
        goto LABEL_129;
      }

      v451 = Line;
LABEL_133:
      v452 = -1;
      if (v35 != -1)
      {
        v44 = 1;
        goto LABEL_140;
      }

      goto LABEL_150;
    }

    v43 = 0;
    if (LineFieldUnsigned == v453 || (v451 = 0, v452 == -1))
    {
      v451 = 0;
    }

    else
    {
LABEL_129:
      if (v452 >= *(this + 88) || *(*(this + 43) + 2 * v452) == 20000)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5696, "lm/wordlm", 42, "%u", v452);
      }

      BigramData::fillBigramRecord((this + 360), v452, &v493, &v491, &v489);
      LODWORD(v494) = 0;
      LODWORD(v492) = 0;
      LODWORD(v490) = 0;
      if (v43)
      {
        goto LABEL_133;
      }

      v452 = -1;
    }

    if (LineFieldUnsigned == v453 || v35 == -1)
    {
      goto LABEL_153;
    }

    v44 = 0;
LABEL_140:
    TrigramData::allocTri1((this + 744), v35, v488[0]);
    if (*v488)
    {
      v45 = 0;
      do
      {
        v46 = v45 + *(*(this + 101) + 4 * v455);
        v47 = v46;
        *(*(this + 103) + 2 * v46) = 0;
        if (*(this + 187))
        {
          *(*(this + 107) + v46) = 0;
        }

        else
        {
          *(*(this + 105) + 2 * v46) = 20000;
        }

        TrigramData::tri2SetUnallocated(this + 744, v46);
        *(*(this + 103) + 2 * v47) = *(v487 + 2 * v45);
        if (*(this + 192))
        {
          *(*(this + 107) + v47) = *(v483 + v45);
        }

        else
        {
          *(*(this + 105) + 2 * v47) = *(v485 + 2 * v45);
        }

        ++v45;
      }

      while (v45 < *v488);
    }

    *v488 = 0;
    LODWORD(v486) = 0;
    LODWORD(v484) = 0;
    if ((v44 & 1) == 0)
    {
      v455 = -1;
LABEL_153:
      v48 = 1;
      if (LineFieldUnsigned != v453)
      {
        v49 = v458;
        if (v458 != -1)
        {
LABEL_155:
          QuadgramData::allocQuad1(this + 1232, v49, v476[0]);
          if (*v476)
          {
            v50 = 0;
            v51 = 0;
            do
            {
              v52 = v51 + *(*(this + 162) + 4 * v458);
              *(*(this + 164) + 2 * v52) = 0;
              QuadgramData::quad2SetUnallocated(this + 1232, v52);
              *(*(this + 164) + 2 * v52) = *(v475 + 2 * v51);
              QuadgramData::fillQuad2BackoffWeights((this + 1232), v52, (v473 + v50), (v471 + v50), (v469 + v50));
              v31 += *(v473 + v50 + 8);
              ++v51;
              v50 += 16;
            }

            while (v51 < *v476);
          }

          *v476 = 0;
          if (v474 >= 1)
          {
            v53 = 16 * v474 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v473 + v53);
              v53 -= 16;
            }

            while (v53 != -16);
          }

          LODWORD(v474) = 0;
          if (v472 >= 1)
          {
            v54 = 16 * v472 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v471 + v54);
              v54 -= 16;
            }

            while (v54 != -16);
          }

          LODWORD(v472) = 0;
          if (v470 >= 1)
          {
            v55 = 16 * v470 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v469 + v55);
              v55 -= 16;
            }

            while (v55 != -16);
          }

          LODWORD(v470) = 0;
          v458 = -1;
        }
      }

      if (!v48 || LineFieldUnsigned != v453)
      {
        v447 = LineFieldUnsigned == v453;
        goto LABEL_178;
      }

      v56 = v33;
      if (*(this + 16) >= 3u && (v462 ? (v57 = v461) : (v57 = &unk_26288CFB0), !strcmp(v57, "TriSc")))
      {
        v58 = 1;
        if (DgnTextFileParser::getLineFieldUnsigned(v503, v445) == v439)
        {
          LineFieldUnsigned = v453;
          v447 = 1;
          v56 = v33;
        }

        else
        {
          v447 = 1;
          LineFieldUnsigned = v453;
          v56 = v33;
          if (v454 == -1)
          {
            LineFieldUnsigned = v453;
            v447 = 1;
          }

          else
          {
LABEL_180:
            if (*(this + 200) > v454 && (v59 = *(this + 99), LODWORD(v60) = *(v59 + 2 * v454), *(v59 + 2 * v454)) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5774, "lm/wordlm", 47, "%u %u", v454, v56), v61 = *(this + 99), LODWORD(v60) = *(v61 + 2 * v454), LODWORD(v56) = v33, *(v61 + 2 * v454)))
            {
              v62 = *(*(this + 101) + 4 * v454);
              v60 = v60;
              while (v56 != *(*(this + 103) + 2 * v62))
              {
                ++v62;
                if (!--v60)
                {
                  goto LABEL_186;
                }
              }

              TrigramData::fillTrigramRecord((this + 744), v62, &v481, &v479, &v477);
            }

            else
            {
LABEL_186:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5794, "lm/wordlm", 47, "%u %u", v454, v56);
            }

            LODWORD(v482) = 0;
            LODWORD(v480) = 0;
            LODWORD(v478) = 0;
            v56 = 0xFFFFFFFFLL;
            v454 = 0xFFFFFFFFLL;
            if (!v58)
            {
              goto LABEL_202;
            }
          }
        }
      }

      else
      {
        v447 = 1;
        LineFieldUnsigned = v453;
      }

      if (*(this + 16) >= 4u)
      {
        v63 = v462 ? v461 : &unk_26288CFB0;
        if (!strcmp(v63, "QuadSc"))
        {
          v64 = v56;
          if (DgnTextFileParser::getLineFieldUnsigned(v503, v445) != v439)
          {
            goto LABEL_202;
          }

          if (DgnTextFileParser::getLineFieldUnsigned(v503, v440) != v436 && v448 != -1)
          {
LABEL_204:
            if (*(this + 322) > v448 && (v65 = *(this + 160), v66 = *(v65 + 2 * v448), *(v65 + 2 * v448)) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5815, "lm/wordlm", 54, "%u %u %u", v448, v457, v32), v67 = *(this + 160), v66 = *(v67 + 2 * v448), *(v67 + 2 * v448)))
            {
              v68 = 0;
              v69 = 0;
              while (2)
              {
                v70 = *(*(this + 162) + 4 * v448);
                while (1)
                {
                  v71 = (v70 + v69);
                  if (v457 == *(*(this + 164) + 2 * v71))
                  {
                    if (*(*(this + 166) + 2 * v71))
                    {
                      break;
                    }
                  }

LABEL_218:
                  if (++v69 == v66)
                  {
                    if (v68)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_223;
                  }
                }

                v72 = 0;
                while (1)
                {
                  if (*(this + 308) && (*(*(this + 168) + 4 * (v71 >> 5)) & (1 << (v70 + v69))) != 0)
                  {
                    v73 = *(*(this + 207) + 4 * *(*(this + 185) + 4 * v71));
                    v74 = 440;
                  }

                  else
                  {
                    v74 = 264;
                    v73 = *(*(this + 185) + 4 * v71);
                  }

                  if (v32 == *(*(this + v74 + 1232) + 2 * (v73 + v72)))
                  {
                    break;
                  }

                  if (*(*(this + 166) + 2 * v71) == ++v72)
                  {
                    goto LABEL_218;
                  }
                }

                QuadgramData::fillQuadgramRecord(this + 1232, v71, v72, &v467, &v465, &v463);
                ++v69;
                v68 = 1;
                if (v69 != v66)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
LABEL_223:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5848, "lm/wordlm", 54, "%u %u %u", v448, v457, v32);
            }

LABEL_224:
            ++v443;
            LODWORD(v468) = 0;
            LODWORD(v466) = 0;
            LODWORD(v464) = 0;
            v32 = -1;
            v457 = -1;
            v448 = -1;
          }

          v56 = v64;
        }
      }

      if (!Line)
      {
        break;
      }

      goto LABEL_227;
    }

LABEL_150:
    if (v458 != -1)
    {
      v48 = 0;
      v455 = -1;
      v49 = v458;
      goto LABEL_155;
    }

    v447 = LineFieldUnsigned == v453;
    v458 = -1;
    v455 = -1;
LABEL_178:
    v56 = v33;
    if (v454 != -1)
    {
      v58 = 0;
      goto LABEL_180;
    }

    v454 = 0xFFFFFFFFLL;
LABEL_202:
    if (v448 != -1)
    {
      v64 = v56;
      goto LABEL_204;
    }

    v448 = -1;
    if (Line)
    {
LABEL_227:
      if (v462)
      {
        v75 = v461;
      }

      else
      {
        v75 = &unk_26288CFB0;
      }

      if (!strcmp(v75, "UniSc"))
      {
        if ((v450 & v451) == 1)
        {
          v102 = DgnTextFile::getCurrentLine(v503);
          if (*(v102 + 8))
          {
            v103 = *v102;
          }

          else
          {
            v103 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5867, "lm/wordlm", 40, "%.500s", v103);
        }

        if (*(this + 16) >= 2u)
        {
          if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
          {
            v104 = DgnTextFile::getCurrentLine(v503);
            if (*(v104 + 8))
            {
              v105 = *v104;
            }

            else
            {
              v105 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5871, "lm/wordlm", 40, "%.500s", v105);
          }

          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v106 = DgnTextFile::getCurrentLine(v503);
              if (*(v106 + 8))
              {
                v107 = *v106;
              }

              else
              {
                v107 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5875, "lm/wordlm", 40, "%.500s", v107);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v108 = DgnTextFile::getCurrentLine(v503);
              if (*(v108 + 8))
              {
                v109 = *v108;
              }

              else
              {
                v109 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5879, "lm/wordlm", 40, "%.500s", v109);
            }
          }
        }

        if (((v451 ^ 1) & v447) == 1)
        {
          v110 = DgnTextFile::getCurrentLine(v503);
          if (*(v110 + 8))
          {
            v111 = *v110;
          }

          else
          {
            v111 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5882, "lm/wordlm", 40, "%.500s", v111);
        }

        if (!LineFieldUnsigned || LineFieldUnsigned >= *(this + 26))
        {
          v112 = DgnTextFile::getCurrentLine(v503);
          if (*(v112 + 8))
          {
            v113 = *v112;
          }

          else
          {
            v113 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5886, "lm/wordlm", 40, "%.500s", v113);
        }

        if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
        {
          v114 = DgnTextFile::getCurrentLine(v503);
          if (*(v114 + 8))
          {
            v115 = *v114;
          }

          else
          {
            v115 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5893, "lm/wordlm", 40, "%.500s", v115);
        }

        *(*(this + 21) + 2 * LineFieldUnsigned) = LineFieldInteger;
        v446 = LineFieldUnsigned;
        goto LABEL_814;
      }

      if (!strcmp(v75, "WordIdToLmId"))
      {
        if (v451)
        {
          v116 = v496 ? v495 : &unk_26288CFB0;
          if (strcmp(v116, "UniSc"))
          {
            v117 = DgnTextFile::getCurrentLine(v503);
            if (*(v117 + 8))
            {
              v118 = *v117;
            }

            else
            {
              v118 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5901, "lm/wordlm", 40, "%.500s", v118);
          }
        }

        if (*(this + 16) >= 2u)
        {
          if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
          {
            v119 = DgnTextFile::getCurrentLine(v503);
            if (*(v119 + 8))
            {
              v120 = *v119;
            }

            else
            {
              v120 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5905, "lm/wordlm", 40, "%.500s", v120);
          }

          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v121 = DgnTextFile::getCurrentLine(v503);
              if (*(v121 + 8))
              {
                v122 = *v121;
              }

              else
              {
                v122 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5909, "lm/wordlm", 40, "%.500s", v122);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v123 = DgnTextFile::getCurrentLine(v503);
              if (*(v123 + 8))
              {
                v124 = *v123;
              }

              else
              {
                v124 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5913, "lm/wordlm", 40, "%.500s", v124);
            }
          }
        }

        if (((v451 ^ 1) & v447) == 1)
        {
          v125 = DgnTextFile::getCurrentLine(v503);
          if (*(v125 + 8))
          {
            v126 = *v125;
          }

          else
          {
            v126 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5916, "lm/wordlm", 40, "%.500s", v126);
        }

        if (LineFieldUnsigned > 0xFFFFF3)
        {
          v127 = DgnTextFile::getCurrentLine(v503);
          if (*(v127 + 8))
          {
            v128 = *v127;
          }

          else
          {
            v128 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5919, "lm/wordlm", 40, "%.500s", v128);
        }

        v129 = *(this + 2);
        if (*(v129 + 388) <= LineFieldUnsigned || !*(*(v129 + 104) + LineFieldUnsigned))
        {
          v130 = DgnTextFile::getCurrentLine(v503);
          if (*(v130 + 8))
          {
            v131 = *v130;
          }

          else
          {
            v131 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5923, "lm/wordlm", 40, "%.500s", v131);
        }

        if (LineFieldInteger < 1 || LineFieldInteger > v446 || *(*(this + 21) + 2 * LineFieldInteger) == 20000)
        {
          v132 = DgnTextFile::getCurrentLine(v503);
          if (*(v132 + 8))
          {
            v133 = *v132;
          }

          else
          {
            v133 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5928, "lm/wordlm", 40, "%.500s", v133);
        }

        WordLanguageModel::recordWordIdLmIdUsage(this, LineFieldUnsigned, LineFieldInteger);
        goto LABEL_814;
      }

      v76 = *(this + 16);
      if (v76 >= 2)
      {
        if (!strcmp(v75, "WordIdToContextLmId"))
        {
          if (!v451 || (v496 ? (v134 = v495) : (v134 = &unk_26288CFB0), !strcmp(v134, "UniSc") || !strcmp(v134, "WordIdToLmId") || ((v135 = DgnTextFile::getCurrentLine(v503), *(v135 + 8)) ? (v136 = *v135) : (v136 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5938, "lm/wordlm", 40, "%.500s", v136), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v137 = DgnTextFile::getCurrentLine(v503);
              if (*(v137 + 8))
              {
                v138 = *v137;
              }

              else
              {
                v138 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5942, "lm/wordlm", 40, "%.500s", v138);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v139 = DgnTextFile::getCurrentLine(v503);
                if (*(v139 + 8))
                {
                  v140 = *v139;
                }

                else
                {
                  v140 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5946, "lm/wordlm", 40, "%.500s", v140);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v141 = DgnTextFile::getCurrentLine(v503);
                if (*(v141 + 8))
                {
                  v142 = *v141;
                }

                else
                {
                  v142 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5950, "lm/wordlm", 40, "%.500s", v142);
              }
            }

            if (((v451 ^ 1) & v447) == 1)
            {
              v143 = DgnTextFile::getCurrentLine(v503);
              if (*(v143 + 8))
              {
                v144 = *v143;
              }

              else
              {
                v144 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5953, "lm/wordlm", 40, "%.500s", v144);
            }
          }

          if (LineFieldUnsigned > 0xFFFFF3)
          {
            v145 = DgnTextFile::getCurrentLine(v503);
            if (*(v145 + 8))
            {
              v146 = *v145;
            }

            else
            {
              v146 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5956, "lm/wordlm", 40, "%.500s", v146);
          }

          v147 = *(this + 2);
          if (*(v147 + 388) <= LineFieldUnsigned || !*(*(v147 + 104) + LineFieldUnsigned))
          {
            v148 = DgnTextFile::getCurrentLine(v503);
            if (*(v148 + 8))
            {
              v149 = *v148;
            }

            else
            {
              v149 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5960, "lm/wordlm", 40, "%.500s", v149);
          }

          if (LineFieldInteger < 1 || LineFieldInteger >= *(this + 26))
          {
            v150 = DgnTextFile::getCurrentLine(v503);
            if (*(v150 + 8))
            {
              v151 = *v150;
            }

            else
            {
              v151 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5964, "lm/wordlm", 40, "%.500s", v151);
          }

          if ((*(this + 276) & 1) == 0)
          {
            v152 = DgnTextFile::getCurrentLine(v503);
            if (*(v152 + 8))
            {
              v153 = *v152;
            }

            else
            {
              v153 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5967, "lm/wordlm", 40, "%.500s", v153);
          }

          v154 = v446;
          if (v446 <= LineFieldInteger)
          {
            v154 = LineFieldInteger;
          }

          v446 = v154;
          WordLanguageModel::recordWordIdContextLmIdUsage(this, LineFieldUnsigned, LineFieldInteger);
          goto LABEL_814;
        }

        if (!strcmp(v75, "UniBoSc"))
        {
          if (!v451 || (v496 ? (v155 = v495) : (v155 = &unk_26288CFB0), !strcmp(v155, "UniSc") || !strcmp(v155, "WordIdToLmId") || !strcmp(v155, "WordIdToContextLmId") || ((v156 = DgnTextFile::getCurrentLine(v503), *(v156 + 8)) ? (v157 = *v156) : (v157 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5982, "lm/wordlm", 40, "%.500s", v157), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v158 = DgnTextFile::getCurrentLine(v503);
              if (*(v158 + 8))
              {
                v159 = *v158;
              }

              else
              {
                v159 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5986, "lm/wordlm", 40, "%.500s", v159);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v160 = DgnTextFile::getCurrentLine(v503);
                if (*(v160 + 8))
                {
                  v161 = *v160;
                }

                else
                {
                  v161 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5990, "lm/wordlm", 40, "%.500s", v161);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v162 = DgnTextFile::getCurrentLine(v503);
                if (*(v162 + 8))
                {
                  v163 = *v162;
                }

                else
                {
                  v163 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5994, "lm/wordlm", 40, "%.500s", v163);
              }
            }

            if (((v451 ^ 1) & v447) == 1)
            {
              v164 = DgnTextFile::getCurrentLine(v503);
              if (*(v164 + 8))
              {
                v165 = *v164;
              }

              else
              {
                v165 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5997, "lm/wordlm", 40, "%.500s", v165);
            }
          }

          if (LineFieldUnsigned - 1 >= v446 || *(*(this + 21) + 2 * LineFieldUnsigned) == 20000)
          {
            v166 = DgnTextFile::getCurrentLine(v503);
            if (*(v166 + 8))
            {
              v167 = *v166;
            }

            else
            {
              v167 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6002, "lm/wordlm", 40, "%.500s", v167);
          }

          if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
          {
            v168 = DgnTextFile::getCurrentLine(v503);
            if (*(v168 + 8))
            {
              v169 = *v168;
            }

            else
            {
              v169 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6007, "lm/wordlm", 40, "%.500s", v169);
          }

          if (*(this + 84))
          {
            v170 = *(this + 41);
          }

          else
          {
            v205 = *(this + 26);
            v206 = *(this + 85);
            v207 = v205;
            if (v205 > v206)
            {
              DgnPrimArray<short>::reallocElts(this + 328, v205 - v206, 0);
              v207 = *(this + 26);
            }

            *(this + 84) = v205;
            v170 = *(this + 41);
            if (v207)
            {
              memset_pattern16(*(this + 41), &unk_262888330, 2 * v207);
            }
          }

          *(v170 + 2 * LineFieldUnsigned) = LineFieldInteger;
          goto LABEL_814;
        }

        if (!strcmp(v75, "BoWt"))
        {
          if (!v451 || (v496 ? (v171 = v495) : (v171 = &unk_26288CFB0), !strcmp(v171, "UniSc") || !strcmp(v171, "WordIdToLmId") || !strcmp(v171, "WordIdToContextLmId") || !strcmp(v171, "UniBoSc") || ((v172 = DgnTextFile::getCurrentLine(v503), *(v172 + 8)) ? (v173 = *v172) : (v173 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6026, "lm/wordlm", 40, "%.500s", v173), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v174 = DgnTextFile::getCurrentLine(v503);
              if (*(v174 + 8))
              {
                v175 = *v174;
              }

              else
              {
                v175 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6030, "lm/wordlm", 40, "%.500s", v175);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v176 = DgnTextFile::getCurrentLine(v503);
                if (*(v176 + 8))
                {
                  v177 = *v176;
                }

                else
                {
                  v177 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6034, "lm/wordlm", 40, "%.500s", v177);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v178 = DgnTextFile::getCurrentLine(v503);
                if (*(v178 + 8))
                {
                  v179 = *v178;
                }

                else
                {
                  v179 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6038, "lm/wordlm", 40, "%.500s", v179);
              }
            }

            if (((v451 ^ 1) & v447) == 1)
            {
              v180 = DgnTextFile::getCurrentLine(v503);
              if (*(v180 + 8))
              {
                v181 = *v180;
              }

              else
              {
                v181 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6041, "lm/wordlm", 40, "%.500s", v181);
            }
          }

          if (!LineFieldUnsigned || LineFieldUnsigned >= *(this + 26))
          {
            v182 = DgnTextFile::getCurrentLine(v503);
            if (*(v182 + 8))
            {
              v183 = *v182;
            }

            else
            {
              v183 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6045, "lm/wordlm", 40, "%.500s", v183);
          }

          v184 = v446;
          if (v446 <= LineFieldUnsigned)
          {
            v184 = LineFieldUnsigned;
          }

          v446 = v184;
          v185 = *(this + 14);
          if (LineFieldInteger <= -v185 || LineFieldInteger >= v185)
          {
            v186 = DgnTextFile::getCurrentLine(v503);
            if (*(v186 + 8))
            {
              v187 = *v186;
            }

            else
            {
              v187 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6054, "lm/wordlm", 40, "%.500s", v187);
          }

          *(*(this + 43) + 2 * LineFieldUnsigned) = LineFieldInteger;
          goto LABEL_814;
        }

        if (!strcmp(v75, "BiScQuant"))
        {
          if (!v451 || (v496 ? (v188 = v495) : (v188 = &unk_26288CFB0), !strcmp(v188, "UniSc") || !strcmp(v188, "WordIdToLmId") || !strcmp(v188, "WordIdToContextLmId") || !strcmp(v188, "UniBoSc") || !strcmp(v188, "BoWt") || ((v189 = DgnTextFile::getCurrentLine(v503), *(v189 + 8)) ? (v190 = *v189) : (v190 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6066, "lm/wordlm", 40, "%.500s", v190), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v191 = DgnTextFile::getCurrentLine(v503);
              if (*(v191 + 8))
              {
                v192 = *v191;
              }

              else
              {
                v192 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6070, "lm/wordlm", 40, "%.500s", v192);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v193 = DgnTextFile::getCurrentLine(v503);
                if (*(v193 + 8))
                {
                  v194 = *v193;
                }

                else
                {
                  v194 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6074, "lm/wordlm", 40, "%.500s", v194);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v195 = DgnTextFile::getCurrentLine(v503);
                if (*(v195 + 8))
                {
                  v196 = *v195;
                }

                else
                {
                  v196 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6078, "lm/wordlm", 40, "%.500s", v196);
              }
            }
          }

          v197 = v451;
          if (LineFieldUnsigned == 1)
          {
            v197 = 0;
          }

          if (v197)
          {
            goto LABEL_616;
          }

          v198 = v451;
          if (LineFieldUnsigned == v453 + 1)
          {
            v198 = 1;
          }

          if ((v198 & 1) == 0)
          {
LABEL_616:
            v199 = DgnTextFile::getCurrentLine(v503);
            if (*(v199 + 8))
            {
              v200 = *v199;
            }

            else
            {
              v200 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6082, "lm/wordlm", 40, "%.500s", v200);
          }

          if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
          {
            v201 = DgnTextFile::getCurrentLine(v503);
            if (*(v201 + 8))
            {
              v202 = *v201;
            }

            else
            {
              v202 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6085, "lm/wordlm", 40, "%.500s", v202);
          }

          if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
          {
            v203 = DgnTextFile::getCurrentLine(v503);
            if (*(v203 + 8))
            {
              v204 = *v203;
            }

            else
            {
              v204 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6089, "lm/wordlm", 40, "%.500s", v204);
          }

          BigramData::addBigramScoreQuantization(this + 45, 0, LineFieldInteger);
          goto LABEL_814;
        }

        if (!strcmp(v75, "BiSc"))
        {
          if (v451)
          {
            v208 = v496 ? v495 : &unk_26288CFB0;
            if (strcmp(v208, "UniSc") && strcmp(v208, "WordIdToLmId") && strcmp(v208, "WordIdToContextLmId") && strcmp(v208, "UniBoSc") && strcmp(v208, "BoWt") && strcmp(v208, "BiScQuant"))
            {
              v209 = DgnTextFile::getCurrentLine(v503);
              if (*(v209 + 8))
              {
                v210 = *v209;
              }

              else
              {
                v210 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6103, "lm/wordlm", 40, "%.500s", v210);
            }
          }

          v211 = DgnTextFileParser::getLineFieldUnsigned(v503, v445);
          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v212 = DgnTextFile::getCurrentLine(v503);
              if (*(v212 + 8))
              {
                v213 = *v212;
              }

              else
              {
                v213 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6108, "lm/wordlm", 40, "%.500s", v213);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v214 = DgnTextFile::getCurrentLine(v503);
              if (*(v214 + 8))
              {
                v215 = *v214;
              }

              else
              {
                v215 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6112, "lm/wordlm", 40, "%.500s", v215);
            }
          }

          if (!(v451 & 1 | !v447) && v211 <= v439)
          {
            v216 = DgnTextFile::getCurrentLine(v503);
            if (*(v216 + 8))
            {
              v217 = *v216;
            }

            else
            {
              v217 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6116, "lm/wordlm", 40, "%.500s", v217);
          }

          if (LineFieldUnsigned - 1 >= v446 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
          {
            v218 = DgnTextFile::getCurrentLine(v503);
            if (*(v218 + 8))
            {
              v219 = *v218;
            }

            else
            {
              v219 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6122, "lm/wordlm", 40, "%.500s", v219);
          }

          if (v211 - 1 >= v446 || *(*(this + 21) + 2 * v211) == 20000 || v211 > 0xFFFE || v211 >= *(this + 26))
          {
            v220 = DgnTextFile::getCurrentLine(v503);
            if (*(v220 + 8))
            {
              v221 = *v220;
            }

            else
            {
              v221 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6129, "lm/wordlm", 40, "%.500s", v221);
          }

          v222 = v494;
          if (v494 == HIDWORD(v494))
          {
            DgnPrimArray<short>::reallocElts(&v493, 1, 1);
            v222 = v494;
          }

          *(v493 + 2 * v222) = v211;
          LODWORD(v494) = v222 + 1;
          v223 = *(this + 94);
          if (v223)
          {
            if (LineFieldInteger < 1 || LineFieldInteger >= v223)
            {
              v224 = DgnTextFile::getCurrentLine(v503);
              if (*(v224 + 8))
              {
                v225 = *v224;
              }

              else
              {
                v225 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6143, "lm/wordlm", 40, "%.500s", v225);
            }

            v226 = v490;
            if (v490 == HIDWORD(v490))
            {
              DgnPrimArray<char>::reallocElts(&v489, 1, 1);
              v226 = v490;
            }

            *(v489 + v226) = LineFieldInteger;
            LODWORD(v490) = v490 + 1;
          }

          else
          {
            if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
            {
              v227 = DgnTextFile::getCurrentLine(v503);
              if (*(v227 + 8))
              {
                v228 = *v227;
              }

              else
              {
                v228 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6151, "lm/wordlm", 40, "%.500s", v228);
            }

            v229 = v492;
            if (v492 == HIDWORD(v492))
            {
              DgnPrimArray<short>::reallocElts(&v491, 1, 1);
              v229 = v492;
            }

            *(v491 + 2 * v229) = LineFieldInteger;
            LODWORD(v492) = v229 + 1;
          }

          v452 = LineFieldUnsigned;
          goto LABEL_706;
        }

        if (v76 != 2)
        {
          if (!strcmp(v75, "TriBoWtQuant"))
          {
            if (v451)
            {
              v230 = v496 ? v495 : &unk_26288CFB0;
              if (strcmp(v230, "UniSc") && strcmp(v230, "WordIdToLmId") && strcmp(v230, "WordIdToContextLmId") && strcmp(v230, "UniBoSc") && strcmp(v230, "BoWt") && strcmp(v230, "BiScQuant") && strcmp(v230, "BiSc"))
              {
                v231 = DgnTextFile::getCurrentLine(v503);
                if (*(v231 + 8))
                {
                  v232 = *v231;
                }

                else
                {
                  v232 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6167, "lm/wordlm", 40, "%.500s", v232);
              }
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v233 = DgnTextFile::getCurrentLine(v503);
              if (*(v233 + 8))
              {
                v234 = *v233;
              }

              else
              {
                v234 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6170, "lm/wordlm", 40, "%.500s", v234);
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v235 = DgnTextFile::getCurrentLine(v503);
              if (*(v235 + 8))
              {
                v236 = *v235;
              }

              else
              {
                v236 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6173, "lm/wordlm", 40, "%.500s", v236);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v237 = DgnTextFile::getCurrentLine(v503);
              if (*(v237 + 8))
              {
                v238 = *v237;
              }

              else
              {
                v238 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6177, "lm/wordlm", 40, "%.500s", v238);
            }

            v239 = v451;
            if (LineFieldUnsigned == 1)
            {
              v239 = 0;
            }

            if (v239)
            {
              goto LABEL_744;
            }

            v240 = v451;
            if (LineFieldUnsigned == v453 + 1)
            {
              v240 = 1;
            }

            if ((v240 & 1) == 0)
            {
LABEL_744:
              v241 = DgnTextFile::getCurrentLine(v503);
              if (*(v241 + 8))
              {
                v242 = *v241;
              }

              else
              {
                v242 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6181, "lm/wordlm", 40, "%.500s", v242);
            }

            if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
            {
              v243 = DgnTextFile::getCurrentLine(v503);
              if (*(v243 + 8))
              {
                v244 = *v243;
              }

              else
              {
                v244 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6184, "lm/wordlm", 40, "%.500s", v244);
            }

            v245 = *(this + 14);
            if (LineFieldInteger <= -v245 || LineFieldInteger >= v245)
            {
              v246 = DgnTextFile::getCurrentLine(v503);
              if (*(v246 + 8))
              {
                v247 = *v246;
              }

              else
              {
                v247 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6188, "lm/wordlm", 40, "%.500s", v247);
            }

            TrigramData::addTrigramBackoffWeightQuantization(this + 93, 0, LineFieldInteger);
            goto LABEL_814;
          }

          if (!strcmp(v75, "TriScQuant"))
          {
            if (v451)
            {
              v248 = v496 ? v495 : &unk_26288CFB0;
              if (strcmp(v248, "UniSc") && strcmp(v248, "WordIdToLmId") && strcmp(v248, "WordIdToContextLmId") && strcmp(v248, "UniBoSc") && strcmp(v248, "BoWt") && strcmp(v248, "BiScQuant") && strcmp(v248, "BiSc") && strcmp(v248, "TriBoWtQuant"))
              {
                v249 = DgnTextFile::getCurrentLine(v503);
                if (*(v249 + 8))
                {
                  v250 = *v249;
                }

                else
                {
                  v250 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6204, "lm/wordlm", 40, "%.500s", v250);
              }
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
            {
              v251 = DgnTextFile::getCurrentLine(v503);
              if (*(v251 + 8))
              {
                v252 = *v251;
              }

              else
              {
                v252 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6207, "lm/wordlm", 40, "%.500s", v252);
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v253 = DgnTextFile::getCurrentLine(v503);
              if (*(v253 + 8))
              {
                v254 = *v253;
              }

              else
              {
                v254 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6210, "lm/wordlm", 40, "%.500s", v254);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v255 = DgnTextFile::getCurrentLine(v503);
              if (*(v255 + 8))
              {
                v256 = *v255;
              }

              else
              {
                v256 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6214, "lm/wordlm", 40, "%.500s", v256);
            }

            v257 = v451;
            if (LineFieldUnsigned == 1)
            {
              v257 = 0;
            }

            if (v257)
            {
              goto LABEL_798;
            }

            v258 = v451;
            if (LineFieldUnsigned == v453 + 1)
            {
              v258 = 1;
            }

            if ((v258 & 1) == 0)
            {
LABEL_798:
              v259 = DgnTextFile::getCurrentLine(v503);
              if (*(v259 + 8))
              {
                v260 = *v259;
              }

              else
              {
                v260 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6218, "lm/wordlm", 40, "%.500s", v260);
            }

            if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
            {
              v261 = DgnTextFile::getCurrentLine(v503);
              if (*(v261 + 8))
              {
                v262 = *v261;
              }

              else
              {
                v262 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6221, "lm/wordlm", 40, "%.500s", v262);
            }

            if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
            {
              v263 = DgnTextFile::getCurrentLine(v503);
              if (*(v263 + 8))
              {
                v264 = *v263;
              }

              else
              {
                v264 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6225, "lm/wordlm", 40, "%.500s", v264);
            }

            TrigramData::addTrigramScoreQuantization(this + 93, 0, LineFieldInteger);
            goto LABEL_814;
          }

          if (!strcmp(v75, "TriBoWt"))
          {
            if (v451)
            {
              v265 = v496 ? v495 : &unk_26288CFB0;
              if (strcmp(v265, "UniSc") && strcmp(v265, "WordIdToLmId") && strcmp(v265, "WordIdToContextLmId") && strcmp(v265, "UniBoSc") && strcmp(v265, "BoWt") && strcmp(v265, "BiScQuant") && strcmp(v265, "BiSc") && strcmp(v265, "TriBoWtQuant") && strcmp(v265, "TriScQuant"))
              {
                v266 = DgnTextFile::getCurrentLine(v503);
                if (*(v266 + 8))
                {
                  v267 = *v266;
                }

                else
                {
                  v267 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6242, "lm/wordlm", 40, "%.500s", v267);
              }
            }

            v211 = DgnTextFileParser::getLineFieldUnsigned(v503, v445);
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
            {
              v268 = DgnTextFile::getCurrentLine(v503);
              if (*(v268 + 8))
              {
                v269 = *v268;
              }

              else
              {
                v269 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6246, "lm/wordlm", 40, "%.500s", v269);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v270 = DgnTextFile::getCurrentLine(v503);
              if (*(v270 + 8))
              {
                v271 = *v270;
              }

              else
              {
                v271 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6250, "lm/wordlm", 40, "%.500s", v271);
            }

            if (!(v451 & 1 | !v447) && v211 <= v439)
            {
              v272 = DgnTextFile::getCurrentLine(v503);
              if (*(v272 + 8))
              {
                v273 = *v272;
              }

              else
              {
                v273 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6254, "lm/wordlm", 40, "%.500s", v273);
            }

            if (LineFieldUnsigned - 1 >= v446 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v274 = DgnTextFile::getCurrentLine(v503);
              if (*(v274 + 8))
              {
                v275 = *v274;
              }

              else
              {
                v275 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6260, "lm/wordlm", 40, "%.500s", v275);
            }

            if (v211 - 1 >= v446 || *(*(this + 43) + 2 * v211) == 20000 || v211 > 0xFFFE || v211 >= *(this + 26))
            {
              v276 = DgnTextFile::getCurrentLine(v503);
              if (*(v276 + 8))
              {
                v277 = *v276;
              }

              else
              {
                v277 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6267, "lm/wordlm", 40, "%.500s", v277);
            }

            v278 = *v488;
            if (*v488 == *&v488[2])
            {
              DgnPrimArray<short>::reallocElts(&v487, 1, 1);
              v278 = *v488;
            }

            *(v487 + 2 * v278) = v211;
            *v488 = v278 + 1;
            v279 = *(this + 192);
            if (v279)
            {
              if (LineFieldInteger < 1 || LineFieldInteger >= v279)
              {
                v280 = DgnTextFile::getCurrentLine(v503);
                if (*(v280 + 8))
                {
                  v281 = *v280;
                }

                else
                {
                  v281 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6282, "lm/wordlm", 40, "%.500s", v281);
              }

              v282 = v484;
              if (v484 == HIDWORD(v484))
              {
                DgnPrimArray<char>::reallocElts(&v483, 1, 1);
                v282 = v484;
              }

              *(v483 + v282) = LineFieldInteger;
              LODWORD(v484) = v484 + 1;
            }

            else
            {
              v305 = *(this + 14);
              if (LineFieldInteger <= -v305 || LineFieldInteger >= v305)
              {
                v306 = DgnTextFile::getCurrentLine(v503);
                if (*(v306 + 8))
                {
                  v307 = *v306;
                }

                else
                {
                  v307 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6290, "lm/wordlm", 40, "%.500s", v307);
              }

              v308 = v486;
              if (v486 == HIDWORD(v486))
              {
                DgnPrimArray<short>::reallocElts(&v485, 1, 1);
                v308 = v486;
              }

              *(v485 + 2 * v308) = LineFieldInteger;
              LODWORD(v486) = v308 + 1;
            }

            v455 = LineFieldUnsigned;
            goto LABEL_706;
          }

          if (!strcmp(v75, "TriSc"))
          {
            if (v451)
            {
              v283 = v496 ? v495 : &unk_26288CFB0;
              if (strcmp(v283, "UniSc") && strcmp(v283, "WordIdToLmId") && strcmp(v283, "WordIdToContextLmId") && strcmp(v283, "UniBoSc") && strcmp(v283, "BoWt") && strcmp(v283, "BiScQuant") && strcmp(v283, "BiSc") && strcmp(v283, "TriBoWtQuant") && strcmp(v283, "TriScQuant") && strcmp(v283, "TriBoWt"))
              {
                v284 = DgnTextFile::getCurrentLine(v503);
                if (*(v284 + 8))
                {
                  v285 = *v284;
                }

                else
                {
                  v285 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6309, "lm/wordlm", 40, "%.500s", v285);
              }
            }

            v211 = DgnTextFileParser::getLineFieldUnsigned(v503, v445);
            v286 = DgnTextFileParser::getLineFieldUnsigned(v503, v440);
            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v287 = DgnTextFile::getCurrentLine(v503);
              if (*(v287 + 8))
              {
                v288 = *v287;
              }

              else
              {
                v288 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6315, "lm/wordlm", 40, "%.500s", v288);
            }

            v289 = (v451 ^ 1) & v447;
            if (v289 == 1 && v211 < v439)
            {
              v290 = DgnTextFile::getCurrentLine(v503);
              if (*(v290 + 8))
              {
                v291 = *v290;
              }

              else
              {
                v291 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6319, "lm/wordlm", 40, "%.500s", v291);
            }

            if (v289 && v211 == v439 && v286 <= v436)
            {
              v292 = DgnTextFile::getCurrentLine(v503);
              if (*(v292 + 8))
              {
                v293 = *v292;
              }

              else
              {
                v293 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6323, "lm/wordlm", 40, "%.500s", v293);
            }

            if (LineFieldUnsigned - 1 >= v446 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v294 = DgnTextFile::getCurrentLine(v503);
              if (*(v294 + 8))
              {
                v295 = *v294;
              }

              else
              {
                v295 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6329, "lm/wordlm", 40, "%.500s", v295);
            }

            if (v211 - 1 >= v446 || *(*(this + 43) + 2 * v211) == 20000 || v211 > 0xFFFE || v211 >= *(this + 26))
            {
              v296 = DgnTextFile::getCurrentLine(v503);
              if (*(v296 + 8))
              {
                v297 = *v296;
              }

              else
              {
                v297 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6336, "lm/wordlm", 40, "%.500s", v297);
            }

            if (v286 - 1 >= v446 || *(*(this + 21) + 2 * v286) == 20000 || v286 > 0xFFFE || v286 >= *(this + 26))
            {
              v298 = DgnTextFile::getCurrentLine(v503);
              if (*(v298 + 8))
              {
                v299 = *v298;
              }

              else
              {
                v299 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6343, "lm/wordlm", 40, "%.500s", v299);
            }

            v300 = v482;
            if (v482 == HIDWORD(v482))
            {
              DgnPrimArray<short>::reallocElts(&v481, 1, 1);
              v300 = v482;
            }

            v56 = v211;
            *(v481 + 2 * v300) = v286;
            LODWORD(v482) = v300 + 1;
            v301 = *(this + 196);
            if (v301)
            {
              if (LineFieldInteger < 1 || LineFieldInteger >= v301)
              {
                v302 = DgnTextFile::getCurrentLine(v503);
                if (*(v302 + 8))
                {
                  v303 = *v302;
                }

                else
                {
                  v303 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6362, "lm/wordlm", 40, "%.500s", v303);
              }

              v304 = v478;
              if (v478 == HIDWORD(v478))
              {
                DgnPrimArray<char>::reallocElts(&v477, 1, 1);
                v304 = v478;
              }

              *(v477 + v304) = LineFieldInteger;
              LODWORD(v478) = v478 + 1;
            }

            else
            {
              if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
              {
                v309 = DgnTextFile::getCurrentLine(v503);
                if (*(v309 + 8))
                {
                  v310 = *v309;
                }

                else
                {
                  v310 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6370, "lm/wordlm", 40, "%.500s", v310);
              }

              v311 = v480;
              if (v480 == HIDWORD(v480))
              {
                DgnPrimArray<short>::reallocElts(&v479, 1, 1);
                v311 = v480;
              }

              *(v479 + 2 * v311) = LineFieldInteger;
              LODWORD(v480) = v311 + 1;
            }

            v454 = LineFieldUnsigned;
LABEL_968:
            v436 = v286;
LABEL_706:
            v439 = v211;
            goto LABEL_814;
          }

          if (v76 >= 4)
          {
            if (!strcmp(v75, "QuadBoWtQuant"))
            {
              if (v451)
              {
                v312 = v496 ? v495 : &unk_26288CFB0;
                if (strcmp(v312, "UniSc") && strcmp(v312, "WordIdToLmId") && strcmp(v312, "WordIdToContextLmId") && strcmp(v312, "UniBoSc") && strcmp(v312, "BoWt") && strcmp(v312, "BiScQuant") && strcmp(v312, "BiSc") && strcmp(v312, "TriBoWtQuant") && strcmp(v312, "TriScQuant") && strcmp(v312, "TriBoWt") && strcmp(v312, "TriSc"))
                {
                  v313 = DgnTextFile::getCurrentLine(v503);
                  if (*(v313 + 8))
                  {
                    v314 = *v313;
                  }

                  else
                  {
                    v314 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6391, "lm/wordlm", 40, "%.500s", v314);
                }
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
              {
                v315 = DgnTextFile::getCurrentLine(v503);
                if (*(v315 + 8))
                {
                  v316 = *v315;
                }

                else
                {
                  v316 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6394, "lm/wordlm", 40, "%.500s", v316);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v317 = DgnTextFile::getCurrentLine(v503);
                if (*(v317 + 8))
                {
                  v318 = *v317;
                }

                else
                {
                  v318 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6397, "lm/wordlm", 40, "%.500s", v318);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v319 = DgnTextFile::getCurrentLine(v503);
                if (*(v319 + 8))
                {
                  v320 = *v319;
                }

                else
                {
                  v320 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6400, "lm/wordlm", 40, "%.500s", v320);
              }

              v321 = v451;
              if (LineFieldUnsigned == 1)
              {
                v321 = 0;
              }

              if (v321)
              {
                goto LABEL_1009;
              }

              v322 = v451;
              if (LineFieldUnsigned == v453 + 1)
              {
                v322 = 1;
              }

              if ((v322 & 1) == 0)
              {
LABEL_1009:
                v323 = DgnTextFile::getCurrentLine(v503);
                if (*(v323 + 8))
                {
                  v324 = *v323;
                }

                else
                {
                  v324 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6404, "lm/wordlm", 40, "%.500s", v324);
              }

              if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
              {
                v325 = DgnTextFile::getCurrentLine(v503);
                if (*(v325 + 8))
                {
                  v326 = *v325;
                }

                else
                {
                  v326 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6407, "lm/wordlm", 40, "%.500s", v326);
              }

              v327 = *(this + 14);
              if (LineFieldInteger <= -v327 || LineFieldInteger >= v327)
              {
                v328 = DgnTextFile::getCurrentLine(v503);
                if (*(v328 + 8))
                {
                  v329 = *v328;
                }

                else
                {
                  v329 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6411, "lm/wordlm", 40, "%.500s", v329);
              }

              TrigramData::addTrigramBackoffWeightQuantization(this + 154, 0, LineFieldInteger);
              goto LABEL_814;
            }

            if (!strcmp(v75, "QuadScQuant"))
            {
              if (v451)
              {
                v330 = v496 ? v495 : &unk_26288CFB0;
                if (strcmp(v330, "UniSc") && strcmp(v330, "WordIdToLmId") && strcmp(v330, "WordIdToContextLmId") && strcmp(v330, "UniBoSc") && strcmp(v330, "BoWt") && strcmp(v330, "BiScQuant") && strcmp(v330, "BiSc") && strcmp(v330, "TriBoWtQuant") && strcmp(v330, "TriScQuant") && strcmp(v330, "TriBoWt") && strcmp(v330, "TriSc") && strcmp(v330, "QuadBoWtQuant"))
                {
                  v331 = DgnTextFile::getCurrentLine(v503);
                  if (*(v331 + 8))
                  {
                    v332 = *v331;
                  }

                  else
                  {
                    v332 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6431, "lm/wordlm", 40, "%.500s", v332);
                }
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v445))
              {
                v333 = DgnTextFile::getCurrentLine(v503);
                if (*(v333 + 8))
                {
                  v334 = *v333;
                }

                else
                {
                  v334 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6434, "lm/wordlm", 40, "%.500s", v334);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v440))
              {
                v335 = DgnTextFile::getCurrentLine(v503);
                if (*(v335 + 8))
                {
                  v336 = *v335;
                }

                else
                {
                  v336 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6437, "lm/wordlm", 40, "%.500s", v336);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v503, v438))
              {
                v337 = DgnTextFile::getCurrentLine(v503);
                if (*(v337 + 8))
                {
                  v338 = *v337;
                }

                else
                {
                  v338 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6440, "lm/wordlm", 40, "%.500s", v338);
              }

              v339 = v451;
              if (LineFieldUnsigned == 1)
              {
                v339 = 0;
              }

              if (v339)
              {
                goto LABEL_1066;
              }

              v340 = v451;
              if (LineFieldUnsigned == v453 + 1)
              {
                v340 = 1;
              }

              if ((v340 & 1) == 0)
              {
LABEL_1066:
                v341 = DgnTextFile::getCurrentLine(v503);
                if (*(v341 + 8))
                {
                  v342 = *v341;
                }

                else
                {
                  v342 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6444, "lm/wordlm", 40, "%.500s", v342);
              }

              if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
              {
                v343 = DgnTextFile::getCurrentLine(v503);
                if (*(v343 + 8))
                {
                  v344 = *v343;
                }

                else
                {
                  v344 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6447, "lm/wordlm", 40, "%.500s", v344);
              }

              if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
              {
                v345 = DgnTextFile::getCurrentLine(v503);
                if (*(v345 + 8))
                {
                  v346 = *v345;
                }

                else
                {
                  v346 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6451, "lm/wordlm", 40, "%.500s", v346);
              }

              TrigramData::addTrigramScoreQuantization(this + 154, 0, LineFieldInteger);
              goto LABEL_814;
            }

            if (strcmp(v75, "QuadBoWt"))
            {
              if (!strcmp(v75, "QuadSc"))
              {
                if (v451)
                {
                  v77 = v496 ? v495 : &unk_26288CFB0;
                  if (strcmp(v77, "UniSc") && strcmp(v77, "WordIdToLmId") && strcmp(v77, "WordIdToContextLmId") && strcmp(v77, "UniBoSc") && strcmp(v77, "BoWt") && strcmp(v77, "BiScQuant") && strcmp(v77, "BiSc") && strcmp(v77, "TriBoWtQuant") && strcmp(v77, "TriScQuant") && strcmp(v77, "TriBoWt") && strcmp(v77, "TriSc") && strcmp(v77, "QuadBoWtQuant") && strcmp(v77, "QuadScQuant") && strcmp(v77, "QuadBoWt"))
                  {
                    v78 = DgnTextFile::getCurrentLine(v503);
                    if (*(v78 + 8))
                    {
                      v79 = *v78;
                    }

                    else
                    {
                      v79 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6564, "lm/wordlm", 40, "%.500s", v79);
                  }
                }

                v80 = DgnTextFileParser::getLineFieldUnsigned(v503, v445);
                v81 = DgnTextFileParser::getLineFieldUnsigned(v503, v440);
                v82 = DgnTextFileParser::getLineFieldUnsigned(v503, v438);
                v83 = (v451 ^ 1) & v447;
                if (v83 == 1 && v80 < v439)
                {
                  v84 = DgnTextFile::getCurrentLine(v503);
                  if (*(v84 + 8))
                  {
                    v85 = *v84;
                  }

                  else
                  {
                    v85 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6571, "lm/wordlm", 40, "%.500s", v85);
                }

                if (v80 != v439)
                {
                  v83 = 0;
                }

                if (v83 == 1 && v81 < v436)
                {
                  v86 = DgnTextFile::getCurrentLine(v503);
                  if (*(v86 + 8))
                  {
                    v87 = *v86;
                  }

                  else
                  {
                    v87 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6575, "lm/wordlm", 40, "%.500s", v87);
                }

                if (v83 && v81 == v436 && v82 <= v431)
                {
                  v88 = DgnTextFile::getCurrentLine(v503);
                  if (*(v88 + 8))
                  {
                    v89 = *v88;
                  }

                  else
                  {
                    v89 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6580, "lm/wordlm", 40, "%.500s", v89);
                }

                if (LineFieldUnsigned - 1 >= v446 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
                {
                  v90 = DgnTextFile::getCurrentLine(v503);
                  if (*(v90 + 8))
                  {
                    v91 = *v90;
                  }

                  else
                  {
                    v91 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6586, "lm/wordlm", 40, "%.500s", v91);
                }

                if (v80 - 1 >= v446 || *(*(this + 43) + 2 * v80) == 20000 || v80 > 0xFFFE || v80 >= *(this + 26))
                {
                  v92 = DgnTextFile::getCurrentLine(v503);
                  if (*(v92 + 8))
                  {
                    v93 = *v92;
                  }

                  else
                  {
                    v93 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6593, "lm/wordlm", 40, "%.500s", v93);
                }

                if (v81 - 1 >= v446 || *(*(this + 43) + 2 * v81) == 20000 || v81 > 0xFFFE || v81 >= *(this + 26))
                {
                  v94 = DgnTextFile::getCurrentLine(v503);
                  if (*(v94 + 8))
                  {
                    v95 = *v94;
                  }

                  else
                  {
                    v95 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6600, "lm/wordlm", 40, "%.500s", v95);
                }

                if (v82 - 1 >= v446 || *(*(this + 21) + 2 * v82) == 20000 || v82 > 0xFFFE || v82 >= *(this + 26))
                {
                  v96 = DgnTextFile::getCurrentLine(v503);
                  if (*(v96 + 8))
                  {
                    v97 = *v96;
                  }

                  else
                  {
                    v97 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6607, "lm/wordlm", 40, "%.500s", v97);
                }

                v98 = v468;
                if (v468 == HIDWORD(v468))
                {
                  DgnPrimArray<short>::reallocElts(&v467, 1, 1);
                  v98 = v468;
                }

                v457 = v80;
                v32 = v81;
                *(v467 + 2 * v98) = v82;
                LODWORD(v468) = v98 + 1;
                v99 = *(this + 318);
                if (v99)
                {
                  if (LineFieldInteger < 1 || LineFieldInteger >= v99)
                  {
                    v100 = DgnTextFile::getCurrentLine(v503);
                    if (*(v100 + 8))
                    {
                      v101 = *v100;
                    }

                    else
                    {
                      v101 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6629, "lm/wordlm", 40, "%.500s", v101);
                  }

                  DgnPrimArray<unsigned char>::add(&v463, LineFieldInteger);
                  v448 = LineFieldUnsigned;
                  v431 = v82;
                  v436 = v81;
                  v439 = v80;
                }

                else
                {
                  if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
                  {
                    v398 = DgnTextFile::getCurrentLine(v503);
                    if (*(v398 + 8))
                    {
                      v399 = *v398;
                    }

                    else
                    {
                      v399 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6637, "lm/wordlm", 40, "%.500s", v399);
                  }

                  DgnPrimArray<unsigned short>::add(&v465, LineFieldInteger);
                  v448 = LineFieldUnsigned;
                  v431 = v82;
                  v436 = v81;
                  v439 = v80;
                }
              }

              goto LABEL_814;
            }

            if (v451)
            {
              v347 = v496 ? v495 : &unk_26288CFB0;
              if (strcmp(v347, "UniSc") && strcmp(v347, "WordIdToLmId") && strcmp(v347, "WordIdToContextLmId") && strcmp(v347, "UniBoSc") && strcmp(v347, "BoWt") && strcmp(v347, "BiScQuant") && strcmp(v347, "BiSc") && strcmp(v347, "TriBoWtQuant") && strcmp(v347, "TriScQuant") && strcmp(v347, "TriBoWt") && strcmp(v347, "TriSc") && strcmp(v347, "QuadBoWtQuant") && strcmp(v347, "QuadScQuant"))
              {
                v348 = DgnTextFile::getCurrentLine(v503);
                if (*(v348 + 8))
                {
                  v349 = *v348;
                }

                else
                {
                  v349 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6472, "lm/wordlm", 40, "%.500s", v349);
              }
            }

            v211 = DgnTextFileParser::getLineFieldUnsigned(v503, v445);
            v350 = LineFieldInteger;
            v286 = DgnTextFileParser::getLineFieldUnsigned(v503, v440);
            if (DgnTextFileParser::getLineFieldUnsigned(v503, v438))
            {
              v351 = DgnTextFile::getCurrentLine(v503);
              if (*(v351 + 8))
              {
                v352 = *v351;
              }

              else
              {
                v352 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6477, "lm/wordlm", 40, "%.500s", v352);
            }

            v353 = (v451 ^ 1) & v447;
            if (v353 == 1 && v211 < v439)
            {
              v354 = DgnTextFile::getCurrentLine(v503);
              if (*(v354 + 8))
              {
                v355 = *v354;
              }

              else
              {
                v355 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6481, "lm/wordlm", 40, "%.500s", v355);
            }

            if (v353 && v211 == v439 && v286 <= v436)
            {
              v356 = DgnTextFile::getCurrentLine(v503);
              if (*(v356 + 8))
              {
                v357 = *v356;
              }

              else
              {
                v357 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6485, "lm/wordlm", 40, "%.500s", v357);
            }

            if (LineFieldUnsigned - 1 >= v446 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v358 = DgnTextFile::getCurrentLine(v503);
              if (*(v358 + 8))
              {
                v359 = *v358;
              }

              else
              {
                v359 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6491, "lm/wordlm", 40, "%.500s", v359);
            }

            if (v211 - 1 >= v446 || *(*(this + 43) + 2 * v211) == 20000 || v211 > 0xFFFE || v211 >= *(this + 26))
            {
              v360 = DgnTextFile::getCurrentLine(v503);
              if (*(v360 + 8))
              {
                v361 = *v360;
              }

              else
              {
                v361 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6498, "lm/wordlm", 40, "%.500s", v361);
            }

            if (v286 - 1 >= v446 || *(*(this + 43) + 2 * v286) == 20000 || v286 > 0xFFFE || v286 >= *(this + 26))
            {
              v362 = DgnTextFile::getCurrentLine(v503);
              if (*(v362 + 8))
              {
                v363 = *v362;
              }

              else
              {
                v363 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6505, "lm/wordlm", 40, "%.500s", v363);
            }

            v364 = v451;
            if (LineFieldUnsigned > v453)
            {
              v364 = 1;
            }

            if ((v364 & 1) != 0 || v211 > v439)
            {
              v365 = *v476;
              if (*v476 == *&v476[2])
              {
                DgnPrimArray<short>::reallocElts(&v475, 1, 1);
                v365 = *v476;
              }

              *(v475 + 2 * v365) = v211;
              *v476 = v365 + 1;
              v366 = v474;
              v367 = v474 + 1;
              if ((v474 + 1) > HIDWORD(v474))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v473, (v474 + 1 - HIDWORD(v474)), 1);
                v366 = v474;
                v367 = v474 + 1;
              }

              if (v366 <= v367)
              {
                if (v366 < v367)
                {
                  v370 = v367 - v366;
                  v371 = 16 * v366;
                  do
                  {
                    v372 = (v473 + v371);
                    *v372 = 0;
                    v372[1] = 0;
                    v371 += 16;
                    --v370;
                  }

                  while (v370);
                }
              }

              else if (v366 > v367)
              {
                v368 = v366;
                v369 = 16 * v366 - 16;
                do
                {
                  --v368;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v473 + v369);
                  v369 -= 16;
                }

                while (v368 > v367);
              }

              LODWORD(v474) = v367;
              v373 = v472;
              v374 = v472 + 1;
              if ((v472 + 1) > HIDWORD(v472))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v471, (v472 + 1 - HIDWORD(v472)), 1);
                v373 = v472;
                v374 = v472 + 1;
              }

              if (v373 <= v374)
              {
                if (v373 < v374)
                {
                  v377 = v374 - v373;
                  v378 = 16 * v373;
                  do
                  {
                    v379 = (v471 + v378);
                    *v379 = 0;
                    v379[1] = 0;
                    v378 += 16;
                    --v377;
                  }

                  while (v377);
                }
              }

              else if (v373 > v374)
              {
                v375 = v373;
                v376 = 16 * v373 - 16;
                do
                {
                  --v375;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v471 + v376);
                  v376 -= 16;
                }

                while (v375 > v374);
              }

              LODWORD(v472) = v374;
              v380 = v470;
              v381 = v470 + 1;
              if ((v470 + 1) > HIDWORD(v470))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v469, (v470 + 1 - HIDWORD(v470)), 1);
                v380 = v470;
                v381 = v470 + 1;
              }

              if (v380 <= v381)
              {
                if (v380 < v381)
                {
                  v384 = v381 - v380;
                  v385 = 16 * v380;
                  do
                  {
                    v386 = (v469 + v385);
                    *v386 = 0;
                    v386[1] = 0;
                    v385 += 16;
                    --v384;
                  }

                  while (v384);
                }
              }

              else if (v380 > v381)
              {
                v382 = v380;
                v383 = 16 * v380 - 16;
                do
                {
                  --v382;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v469 + v383);
                  v383 -= 16;
                }

                while (v382 > v381);
              }

              LODWORD(v470) = v381;
              v350 = LineFieldInteger;
            }

            v387 = v473 + 16 * (v474 - 1);
            v388 = *(v387 + 8);
            if (v388 == *(v387 + 12))
            {
              DgnPrimArray<short>::reallocElts(v473 + 16 * (v474 - 1), 1, 1);
              v388 = *(v387 + 8);
            }

            *(*v387 + 2 * v388) = v286;
            *(v387 + 8) = v388 + 1;
            v389 = *(this + 318);
            if (v389)
            {
              if (v350 < 1 || v350 >= v389)
              {
                v390 = DgnTextFile::getCurrentLine(v503);
                if (*(v390 + 8))
                {
                  v391 = *v390;
                }

                else
                {
                  v391 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6531, "lm/wordlm", 40, "%.500s", v391);
              }

              v392 = v469 + 16 * (v470 - 1);
              v393 = *(v392 + 8);
              if (v393 == *(v392 + 12))
              {
                DgnPrimArray<char>::reallocElts(v469 + 16 * (v470 - 1), 1, 1);
                v393 = *(v392 + 8);
              }

              *(*v392 + v393) = v350;
              v394 = *(v392 + 8);
            }

            else
            {
              v395 = *(this + 14);
              if (v350 <= -v395 || v350 >= v395)
              {
                v396 = DgnTextFile::getCurrentLine(v503);
                if (*(v396 + 8))
                {
                  v397 = *v396;
                }

                else
                {
                  v397 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6540, "lm/wordlm", 40, "%.500s", v397);
              }

              v392 = v471 + 16 * (v472 - 1);
              v394 = *(v392 + 8);
              if (v394 == *(v392 + 12))
              {
                DgnPrimArray<short>::reallocElts(v471 + 16 * (v472 - 1), 1, 1);
                v394 = *(v392 + 8);
              }

              *(*v392 + 2 * v394) = v350;
            }

            *(v392 + 8) = v394 + 1;
            v458 = LineFieldUnsigned;
            goto LABEL_968;
          }
        }
      }

LABEL_814:
      DgnString::operator=(&v495, &v461);
      DgnString::~DgnString(&v461);
      v450 = 1;
      v35 = v455;
      v453 = LineFieldUnsigned;
      v33 = v56;
      v34 = v454;
      continue;
    }

    break;
  }

  DgnString::~DgnString(&v461);
  if (v31 != v443)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6651, "lm/wordlm", 57, "%u %u", v31, v443);
  }

  v400 = *(this + 28);
  if (v400 != -1)
  {
    if (!v400 || v400 > v446 || (*(this + 16) < 2u ? (v401 = *(this + 21)) : (v401 = *(this + 43)), *(v401 + 2 * v400) == 20000))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6686, "lm/wordlm", 43, "%u", *(this + 28));
    }
  }

  v402 = *(this + 29);
  if (v402 != -1 && (!v402 || v402 > v446 || *(*(this + 21) + 2 * v402) == 20000))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6693, "lm/wordlm", 44, "%u", *(this + 29));
  }

  if (*(this + 16) >= 2u && v446)
  {
    v403 = 1;
    do
    {
      v404 = v403;
      if (*(*(this + 21) + 2 * v403) != 20000)
      {
        if (*(this + 84) && *(*(this + 41) + 2 * v403) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6703, "lm/wordlm", 41, "%u", v403);
        }

        if (*(*(this + 43) + 2 * v404) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6705, "lm/wordlm", 42, "%u", v404);
        }
      }

      v403 = v404 + 1;
    }

    while (v404 + 1 <= v446);
  }

  WordLanguageModel::throwOnBadBoWt(this);
  WordLanguageModel::throwOnBadTriBoWt(this);
  v461 = 0;
  v462 = 0;
  v405 = *(this + 26);
  if (!v405)
  {
    LODWORD(v462) = 0;
    v459 = 0;
    v460 = 0;
    goto LABEL_1242;
  }

  v459 = 0;
  v406 = realloc_array(0, &v459, v405, 0, 0, 1);
  v460 = 0;
  v461 = v459;
  v407 = *(this + 26);
  v462 = __PAIR64__(v406, v405);
  v459 = 0;
  if (!v407)
  {
LABEL_1242:
    LODWORD(v460) = 0;
    goto LABEL_1243;
  }

  v504 = 0;
  v408 = realloc_array(0, &v504, v407, 0, 0, 1);
  v409 = v504;
  v459 = v504;
  v410 = *(this + 26);
  v460 = __PAIR64__(v408, v407);
  if (v410)
  {
    v411 = v461;
    do
    {
      *v411++ = 0;
      *v409++ = 0;
      --v410;
    }

    while (v410);
  }

LABEL_1243:
  v412 = *(*(this + 2) + 388);
  v413 = *(this + 32);
  if (!v413)
  {
    v413 = *(this + 36);
    if (!v413)
    {
      v413 = *(this + 40);
    }
  }

  if (v413 >= v412)
  {
    if (v412)
    {
      goto LABEL_1250;
    }
  }

  else
  {
    WordLanguageModel::recordWordIdInvalidLmIdUsage(this, v412 - 1);
    if (*(this + 276) == 1)
    {
      WordLanguageModel::recordWordIdInvalidContextLmIdUsage(this, v412 - 1);
    }

LABEL_1250:
    v414 = 0;
    do
    {
      v415 = *(this + 2);
      if (v414 < *(v415 + 388))
      {
        if (*(*(v415 + 104) + v414))
        {
          v416 = *(*(v415 + 256) + 4 * v414);
          if (v414 != v416)
          {
            if (*(this + 32))
            {
              v417 = *(this + 15);
              v418 = *(v417 + 4 * v414);
              v419 = *(v417 + 4 * v416);
            }

            else
            {
              if (*(this + 36))
              {
                v420 = *(this + 17);
                v418 = *(v420 + 2 * v414);
                if (v418 == 0xFFFF)
                {
                  v418 = -1;
                }

                v419 = *(v420 + 2 * v416);
                v421 = v419 == 0xFFFF;
              }

              else
              {
                v422 = *(this + 19);
                v418 = *(v422 + v414);
                if (v418 == 255)
                {
                  v418 = -1;
                }

                v419 = *(v422 + v416);
                v421 = v419 == 255;
              }

              if (v421)
              {
                v419 = -1;
              }
            }

            if (v418 != v419)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6745, "lm/wordlm", 46, "%u %u", v414, v416);
            }

            if (*(this + 276) == 1)
            {
              if (*(this + 72))
              {
                v423 = *(this + 35);
                v424 = *(v423 + 4 * v414);
                v425 = *(v423 + 4 * v416);
              }

              else
              {
                if (*(this + 76))
                {
                  v426 = *(this + 37);
                  v424 = *(v426 + 2 * v414);
                  if (v424 == 0xFFFF)
                  {
                    v424 = -1;
                  }

                  v425 = *(v426 + 2 * v416);
                  v427 = v425 == 0xFFFF;
                }

                else
                {
                  v428 = *(this + 39);
                  v424 = *(v428 + v414);
                  if (v424 == 255)
                  {
                    v424 = -1;
                  }

                  v425 = *(v428 + v416);
                  v427 = v425 == 255;
                }

                if (v427)
                {
                  v425 = -1;
                }
              }

              if (v424 != v425)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6754, "lm/wordlm", 61, "%u %u", v414, v416);
              }
            }
          }
        }
      }

      ++v414;
    }

    while (v412 != v414);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v459);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v461);
  if (v432 == 19)
  {
    if (v437 != 5)
    {
      goto LABEL_1290;
    }

LABEL_1289:
    WordLanguageModel::maybeAddAlienWordLmId(this, a6, a7, v501, v500);
    goto LABEL_1290;
  }

  if (v432 == 24 && (v437 & 0xFFFFFFFE) == 6)
  {
    goto LABEL_1289;
  }

LABEL_1290:
  if (*(this + 18) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6770, "lm/wordlm", 98, "%s", &errStr_lm_wordlm_E_WNT_ALIEN_WORD_LMID_NOT_SPECIFIED);
  }

  if (v432 == 19)
  {
    if (v437 != 5)
    {
      goto LABEL_1299;
    }
  }

  else if (v432 != 24 || v437 != 6)
  {
    goto LABEL_1299;
  }

  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }

LABEL_1299:
  if (*(this + 276) != 1 || *(this + 19) == -1 && (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6781, "lm/wordlm", 66, "%s", &errStr_lm_wordlm_E_BAD_HAS_WORDID_TO_CONTEXT_LMID), (*(this + 276) & 1) == 0))
  {
    if (*(this + 19) != -1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6783, "lm/wordlm", 65, "%s", &errStr_lm_wordlm_E_ALIEN_WORD_CONTEXT_LMID_WITHOUT_CONTEXT_LMIDS);
    }
  }

  BigramData::compact(this + 45);
  TrigramData::compact(this + 93);
  QuadgramData::compact(this + 154);
  v430 = v432 == 19 && v437 == 5;
  WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, v430, a3, a4, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v463);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v465);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v467);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v469);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v471);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v473);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v475);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v477);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v479);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v481);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v483);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v485);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v487);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v491);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v493);
  DgnString::~DgnString(&v495);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v497);
  DgnArray<DgnString>::releaseAll(&v498);
  DgnIArray<Utterance *>::~DgnIArray(v502);
  DgnTextFileParser::~DgnTextFileParser(v503);
}

void sub_262795D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  DgnString::~DgnString(&a34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a36);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a42);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a44);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a50);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a52);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a54);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a58);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a60);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a62);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a65);
  DgnString::~DgnString(&a66);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a67);
  DgnArray<DgnString>::releaseAll(&a68);
  DgnIArray<Utterance *>::~DgnIArray(&STACK[0x218]);
  DgnTextFileParser::~DgnTextFileParser(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadBinary(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, int a4, unsigned int a5, unsigned int a6)
{
  v29 = 0;
  v10 = 1;
  v11 = OpenAndReadMrecHeader(a2, 0x6Fu, 1, "LMWNGBIN", &v29 + 1, &v29);
  v12 = v29;
  v13 = HIDWORD(v29) == 19 && v29 == 13;
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = 19;
    v12 = 13;
LABEL_12:
    v17 = 1;
LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

  switch(v29)
  {
    case 0x170000000ELL:
      v15 = 0;
      v16 = 23;
      goto LABEL_12;
    case 0x180000000FLL:
      v10 = 0;
      v15 = 0;
      v17 = 1;
LABEL_31:
      v16 = 24;
      goto LABEL_13;
    case 0x1800000010:
      v10 = 0;
      v15 = 1;
      v16 = 24;
      goto LABEL_12;
    case 0x1800000011:
      v10 = 0;
      v17 = 0;
      v15 = 1;
      goto LABEL_31;
  }

  if (*(a2 + 6))
  {
    v21 = *(a2 + 2);
  }

  else
  {
    v21 = &unk_26288CFB0;
  }

  MrecHeaderCheckVersions(v21, "LMWNGBIN", HIDWORD(v29), v29, 0x18u, 0x12u);
  v10 = 0;
  v17 = 0;
  v18 = 0;
  v12 = v29;
  v16 = HIDWORD(v29);
  v15 = 1;
LABEL_14:
  MrecHeaderCheckLatestVersionIfShared(a2, "LMWNGBIN", v16, v12, 24, 18);
  if (DFile::subFileExists(a2, 0x73u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5207, "lm/wordlm", 84, "%s", &errStr_lm_wordlm_E_WNS_WNB_MISMATCH);
  }

  v28 = 0;
  v26 = -1.0;
  v27 = -1.0;
  readObject(v11, this + 16, &v28);
  readObject(v11, this + 68, &v28);
  if (v18)
  {
    readObject(v11, &v27, &v28);
    readObject(v11, &v26, &v28);
  }

  readObject(v11, this + 18, &v28);
  if (v15)
  {
    readObject(v11, this + 19, &v28);
  }

  readObject(v11, this + 80, &v28);
  if (v17)
  {
    readObject(v11, this + 21, &v28);
    readObject(v11, this + 22, &v28);
    readObject(v11, this + 23, &v28);
    readObject(v11, this + 24, &v28);
  }

  readObject(v11, this + 25, &v28);
  readObject(v11, this + 60, &v28);
  readObject(v11, this + 244, &v28);
  readObject(v11, this + 245, &v28);
  v25 = 0;
  WordLanguageModel::loadUnigramMembersBinary(this, v11, &v28, v18, &v25);
  v24 = 0;
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::loadBigramMembersBinary(this, v11, &v28, v18, &v24);
    BigramData::loadBinary((this + 360), v11, &v28);
    WordLanguageModel::verifyBoWtForBiSc(this);
    WordLanguageModel::throwOnBadBoWt(this);
    if (v14)
    {
      WordLanguageModel::verifyUniScForBiSc(this);
    }

    if (*(this + 16) >= 3u)
    {
      TrigramData::loadBinary((this + 744), v11, &v28);
      WordLanguageModel::throwOnBadTriBoWt(this);
      if (v14)
      {
        WordLanguageModel::verifyUniScForTriSc(this);
        if (*(this + 16) > 3u)
        {
          QuadgramData::loadBinary((this + 1232), v11, &v28);
          WordLanguageModel::verifyUniScForQuadSc(this);
        }
      }

      else if (*(this + 16) >= 4u)
      {
        QuadgramData::loadBinary((this + 1232), v11, &v28);
      }
    }
  }

  v19 = v28;
  *(this + 456) = v28;
  readObjectChecksumAndVerify(v11, v19);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 111, v28);
  DgnDelete<DgnStream>(v11);
  if (v10)
  {
    WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, 1, a4, a5, a6);
    if (!v18)
    {
      goto LABEL_38;
    }

LABEL_41:
    WordLanguageModel::maybeAddAlienWordLmId(this, v27, v26, v25, v24);
    if (v15)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v18)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v15)
  {
    return;
  }

LABEL_42:
  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }
}

void WordLanguageModel::loadBinaryShared(uint64_t a1, DgnStream *a2, DFile *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a3)
  {
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    if (a5 == 112)
    {
      v12 = "LMWNGDYN";
    }

    else
    {
      v12 = "LMWNGBIN";
    }

    v13 = OpenAndReadMrecHeader(a3, a5, 1, v12, &v16, &v15);
    DgnDelete<DgnStream>(v13);
  }

  v17 = 0;
  v16 = 0;
  if (a6)
  {
    readObject(a2, (a1 + 64), &v17);
    readObject(a2, (a1 + 68), &v17);
    readObject(a2, (a1 + 72), &v17);
    readObject(a2, (a1 + 76), &v17);
    readObject(a2, (a1 + 80), &v17);
    readObject(a2, (a1 + 100), &v17);
    readObject(a2, (a1 + 240), &v17);
    readObject(a2, (a1 + 244), &v17);
    readObject(a2, (a1 + 245), &v17);
    WordLanguageModel::loadUnigramMembersBinary(a1, a2, &v17, 0, &v16);
    v15 = 0;
    if (*(a1 + 64) <= 1u)
    {
LABEL_14:
      readObject(a2, (a1 + 1824), &v17);
      goto LABEL_15;
    }

    WordLanguageModel::loadBigramMembersBinary(a1, a2, &v17, 0, &v15);
  }

  else
  {
    v15 = 0;
    if (*(a1 + 64) <= 1u)
    {
      goto LABEL_15;
    }
  }

  BigramData::loadBinaryShared((a1 + 360), a2, a6, &v17);
  if (*(a1 + 64) >= 3u)
  {
    TrigramData::loadBinaryShared((a1 + 744), a2, a6, &v17);
    if (*(a1 + 64) >= 4u)
    {
      QuadgramData::loadBinaryShared((a1 + 1232), a2, a6, &v17);
    }
  }

  if (a6)
  {
    goto LABEL_14;
  }

LABEL_15:
  readObjectChecksumAndVerify(a2, v17);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a3);
    DFileChecksums::addChecksum(a4, CurrentSubDirComponents, a5, *(a1 + 1824));
  }
}

void WordLanguageModel::loadDynamic(WordLanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, int a5, int a6, BOOL *a7, BOOL *a8, BOOL a9, unsigned int a10, unsigned int a11)
{
  v47 = 0;
  v16 = 1;
  v17 = OpenAndReadMrecHeader(a2, 0x70u, 1, "LMWNGDYN", &v47 + 1, &v47);
  v18 = v47;
  v19 = HIDWORD(v47) == 19 && v47 == 12;
  v20 = v19;
  if (v19)
  {
    v21 = 0;
    v22 = 19;
    v18 = 12;
LABEL_12:
    v23 = 1;
    goto LABEL_22;
  }

  switch(v47)
  {
    case 0x180000000DLL:
      v21 = 0;
      v22 = 24;
      goto LABEL_12;
    case 0x180000000ELL:
      v22 = 24;
      v23 = 1;
      break;
    case 0x180000000FLL:
      v16 = 0;
      v23 = 1;
      v22 = 24;
      break;
    default:
      if (*(a2 + 6))
      {
        v24 = *(a2 + 2);
      }

      else
      {
        v24 = &unk_26288CFB0;
      }

      MrecHeaderCheckVersions(v24, "LMWNGDYN", HIDWORD(v47), v47, 0x18u, 0x10u);
      v16 = 0;
      v23 = 0;
      v18 = v47;
      v22 = HIDWORD(v47);
      break;
  }

  v21 = 1;
LABEL_22:
  MrecHeaderCheckLatestVersionIfShared(a2, "LMWNGDYN", v22, v18, 24, 16);
  if (DFile::subFileExists(a2, 0x73u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8772, "lm/wordlm", 85, "%s", &errStr_lm_wordlm_E_WNS_WND_PRESENCE_MISMATCH);
  }

  v46 = 0;
  v44 = -1.0;
  v45 = -1.0;
  readObject(v17, this + 16, &v46);
  readObject(v17, this + 68, &v46);
  if (v23)
  {
    readObject(v17, &v45, &v46);
    readObject(v17, &v44, &v46);
  }

  readObject(v17, this + 18, &v46);
  if (v21)
  {
    readObject(v17, this + 19, &v46);
  }

  readObject(v17, this + 80, &v46);
  if (v16)
  {
    readObject(v17, this + 21, &v46);
    readObject(v17, this + 22, &v46);
    readObject(v17, this + 23, &v46);
    readObject(v17, this + 24, &v46);
  }

  readObject(v17, this + 25, &v46);
  readObject(v17, this + 60, &v46);
  readObject(v17, this + 244, &v46);
  readObject(v17, this + 245, &v46);
  v25 = *(this + 16);
  if (v25 > 1 && !a3 && a6 && (*(this + 245) & 1) != 0)
  {
    v26 = 1;
    *(this + 16) = 1;
    *(this + 68) = 1;
    *(this + 60) = -1;
    *(this + 19) = -1;
    *(this + 122) = 0;
    *(this + 92) = 0;
    *(this + 84) = 0;
    *a7 = 1;
    if ((*(this + 245) & 1) == 0)
    {
      v43 = 0;
      WordLanguageModel::loadUnigramMembersBinary(this, v17, &v46, v23, &v43);
      v42 = 0;
      goto LABEL_41;
    }

LABEL_38:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8810, "lm/wordlm", 6, "%s", &errStr_lm_wordlm_E_NO_STATIC_VOC);
    v27 = v26;
    goto LABEL_39;
  }

  if ((*(this + 245) & 1) == 0)
  {
    v28 = *(this + 5);
    goto LABEL_44;
  }

  v26 = 0;
  v27 = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_39:
  v28 = (*(*a3 + 88))(a3);
  *(this + 5) = v28;
  if (v27)
  {
    v43 = 0;
    WordLanguageModel::loadUnigramMembersBinary(this, v17, &v46, v23, &v43);
    v42 = 0;
    if (v25 < 2)
    {
LABEL_42:
      v31 = v46;
      *(this + 456) = v46;
      readObjectChecksumAndVerify(v17, v31);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a4, CurrentSubDirComponents, 112, v46);
      DgnDelete<DgnStream>(v17);
      v33 = v20;
      goto LABEL_57;
    }

LABEL_41:
    v29 = MemChunkAlloc(0x728uLL, 0);
    WordLanguageModel::WordLanguageModel(v29, *(this + 8), *(this + 2));
    WordLanguageModel::loadBigramMembersBinary(v30, v17, &v46, v23, &v42);
    DgnDelete<LanguageModel>(v29);
    goto LABEL_42;
  }

LABEL_44:
  if (!v28 || (DFile::subFileExists(v28, 0x72u) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8817, "lm/wordlm", 18, "%s", &errStr_lm_wordlm_E_WND_WITH_NO_WNP_FILE);
  }

  v34 = *(this + 5);
  v33 = v20;
  if (!v34 || (DFile::subFileExists(v34, 0x71u) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8820, "lm/wordlm", 19, "%s", &errStr_lm_wordlm_E_WND_WITH_NO_WNI_FILE);
  }

  v43 = 0;
  WordLanguageModel::loadUnigramMembersBinary(this, v17, &v46, v23, &v43);
  v42 = 0;
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::loadBigramMembersBinary(this, v17, &v46, v23, &v42);
  }

  v35 = v46;
  *(this + 456) = v46;
  readObjectChecksumAndVerify(v17, v35);
  v36 = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a4, v36, 112, v46);
  DgnDelete<DgnStream>(v17);
  PersistentAndIndex = WordLanguageModel::loadPersistentAndIndex(this);
  if (a5)
  {
    v38 = PersistentAndIndex;
    WordLanguageModel::reabsorbStaticLM(this);
    *a8 = 1;
    if (v38)
    {
      WordLanguageModel::verifyUniScForBiSc(this);
      if (*(this + 16) >= 3u)
      {
        WordLanguageModel::verifyUniScForTriSc(this);
        if (*(this + 16) >= 4u)
        {
          WordLanguageModel::verifyUniScForQuadSc(this);
        }
      }
    }
  }

LABEL_57:
  if (v33)
  {
    WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, 1, a9, a10, a11);
    if (!v23)
    {
      goto LABEL_59;
    }
  }

  else if (!v23)
  {
LABEL_59:
    if (v21)
    {
      return;
    }

    goto LABEL_63;
  }

  WordLanguageModel::maybeAddAlienWordLmId(this, v45, v44, v43, v42);
  if (v21)
  {
    return;
  }

LABEL_63:
  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }
}