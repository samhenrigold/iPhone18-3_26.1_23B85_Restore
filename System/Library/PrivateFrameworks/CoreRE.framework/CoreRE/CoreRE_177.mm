uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v28);
  if (HIDWORD(v29) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 416 * HIDWORD(v29) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v29, v28);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v10 = *(a3 + 144);
  v9 = *(a3 + 160);
  v11 = *(a3 + 128);
  *(v7 + 128) = *(a3 + 112);
  *(v7 + 144) = v11;
  *(v7 + 160) = v10;
  *(v7 + 176) = v9;
  v13 = *(a3 + 80);
  v12 = *(a3 + 96);
  v14 = *(a3 + 64);
  *(v7 + 64) = *(a3 + 48);
  *(v7 + 80) = v14;
  *(v7 + 96) = v13;
  *(v7 + 112) = v12;
  v16 = *(a3 + 16);
  v15 = *(a3 + 32);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v16;
  *(v7 + 48) = v15;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 192) = 0;
  v17 = *(a3 + 184);
  *(v7 + 192) = *(a3 + 176);
  *(v7 + 200) = v17;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v18 = *(v7 + 208);
  *(v7 + 208) = *(a3 + 192);
  *(a3 + 192) = v18;
  *(v7 + 216) = *(a3 + 200);
  *(a3 + 200) = 0;
  v19 = *(a3 + 320);
  v21 = *(a3 + 272);
  v20 = *(a3 + 288);
  *(v7 + 320) = *(a3 + 304);
  *(v7 + 336) = v19;
  *(v7 + 288) = v21;
  *(v7 + 304) = v20;
  v22 = *(a3 + 336);
  v23 = *(a3 + 352);
  v24 = *(a3 + 384);
  *(v7 + 384) = *(a3 + 368);
  *(v7 + 400) = v24;
  *(v7 + 352) = v22;
  *(v7 + 368) = v23;
  v25 = *(a3 + 208);
  v26 = *(a3 + 224);
  v27 = *(a3 + 256);
  *(v7 + 256) = *(a3 + 240);
  *(v7 + 272) = v27;
  *(v7 + 224) = v25;
  *(v7 + 240) = v26;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 416 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void *re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 416 * *result;
    v3 = result + 26;
    do
    {
      v4 = v3[3];
      if (v4)
      {

        v3[3] = 0;
      }

      result = re::FixedArray<CoreIKTransform>::deinit(v3);
      *(v3 - 24) = 0;
      v3 += 52;
      v2 -= 416;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 416 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 416 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 416 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 416 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 416 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 416 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 416 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 416 * v4;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 224;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 224) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 - 216) ^ (*(v7 - 216) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = (*(a2 + 16) + v6);
        *(result + 8) = *(v10 - 27);
        v11 = *(v10 - 13);
        v12 = *(v10 - 11);
        *(result + 32) = *(v10 - 12);
        *(result + 48) = v12;
        *(result + 16) = v11;
        v14 = *(v10 - 10);
        v13 = *(v10 - 9);
        v15 = *(v10 - 7);
        *(result + 96) = *(v10 - 8);
        *(result + 112) = v15;
        *(result + 64) = v14;
        *(result + 80) = v13;
        v17 = *(v10 - 6);
        v16 = *(v10 - 5);
        v18 = *(v10 - 3);
        *(result + 160) = *(v10 - 4);
        *(result + 176) = v18;
        *(result + 128) = v17;
        *(result + 144) = v16;
        *(result + 192) = 0;
        *(result + 200) = 0;
        *(result + 208) = 0;
        v19 = *(v10 - 3);
        *(result + 192) = *(v10 - 4);
        *(result + 200) = v19;
        *(v10 - 4) = 0;
        *(v10 - 3) = 0;
        v20 = *(result + 208);
        *(result + 208) = *(v10 - 2);
        *(v10 - 2) = v20;
        *(result + 216) = *(v10 - 1);
        *(v10 - 1) = 0;
        v21 = v10[7];
        v23 = v10[4];
        v22 = v10[5];
        *(result + 320) = v10[6];
        *(result + 336) = v21;
        *(result + 288) = v23;
        *(result + 304) = v22;
        v24 = v10[8];
        v25 = v10[9];
        v26 = v10[11];
        *(result + 384) = v10[10];
        *(result + 400) = v26;
        *(result + 352) = v24;
        *(result + 368) = v25;
        v27 = v10[1];
        v29 = v10[2];
        v28 = v10[3];
        *(result + 224) = *v10;
        *(result + 240) = v27;
        *(result + 256) = v29;
        *(result + 272) = v28;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < v2);
  }

  return result;
}

double re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16) + 416 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    *(v2 + 8) = 0;
    v3 = *(v2 + 216);
    if (v3)
    {

      *(v2 + 216) = 0;
    }

    return re::FixedArray<CoreIKTransform>::deinit((v2 + 192));
  }

  return result;
}

void re::CameraStreamContext::~CameraStreamContext(re::CameraStreamContext *this)
{
  v2 = *(this + 230);
  if (v2)
  {

    *(this + 230) = 0;
  }

  v3 = *(this + 229);
  if (v3)
  {

    *(this + 229) = 0;
  }

  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(this + 16);
}

{
  v2 = *(this + 230);
  if (v2)
  {

    *(this + 230) = 0;
  }

  v3 = *(this + 229);
  if (v3)
  {

    *(this + 229) = 0;
  }

  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::SmallHashTable(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0;
  *(a1 + 1732) = 0x7FFFFFFFLL;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::copy(v4, (a2 + 16));
    ++*(a1 + 24);
  }

  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=((a1 + 1696), a2 + 1696);
  return a1;
}

unsigned int *re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (a1[6] < v4)
        {
          re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(a1, a2);
        ++a1[10];
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::copy(unint64_t *a1, unint64_t *a2)
{
  v3 = (a2 + 2);
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(v3, &v3[52 * *a1], v5);
    if (*a1 != v4)
    {
      v10 = &v3[52 * v4];
      v11 = 416 * *a1 + 208;
      v12 = a2 + v11;
      v13 = a1 + v11;
      do
      {
        *(v13 - 24) = *(v12 - 24);
        v14 = *(v12 - 11);
        v15 = *(v12 - 9);
        *(v13 - 10) = *(v12 - 10);
        *(v13 - 9) = v15;
        *(v13 - 11) = v14;
        v16 = *(v12 - 8);
        v17 = *(v12 - 7);
        v18 = *(v12 - 5);
        *(v13 - 6) = *(v12 - 6);
        *(v13 - 5) = v18;
        *(v13 - 8) = v16;
        *(v13 - 7) = v17;
        v19 = *(v12 - 4);
        v20 = *(v12 - 3);
        v21 = *(v12 - 1);
        *(v13 - 2) = *(v12 - 2);
        *(v13 - 1) = v21;
        *(v13 - 4) = v19;
        *(v13 - 3) = v20;
        re::FixedArray<double>::FixedArray(v13, v12);
        *(v13 + 3) = *(v12 + 3);
        v22 = *(v12 + 5);
        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        *(v13 + 4) = *(v12 + 4);
        *(v13 + 5) = v22;
        *(v13 + 2) = v24;
        *(v13 + 3) = v23;
        v25 = *(v12 + 9);
        v27 = *(v12 + 6);
        v26 = *(v12 + 7);
        *(v13 + 8) = *(v12 + 8);
        *(v13 + 9) = v25;
        *(v13 + 6) = v27;
        *(v13 + 7) = v26;
        v28 = *(v12 + 13);
        v30 = *(v12 + 10);
        v29 = *(v12 + 11);
        *(v13 + 12) = *(v12 + 12);
        *(v13 + 13) = v28;
        *(v13 + 10) = v30;
        *(v13 + 11) = v29;
        v31 = v12 + 224;
        v12 += 416;
        v13 += 416;
      }

      while (v31 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(v3, &v3[52 * v4], v5);
    if (v4 != *a1)
    {
      v6 = -416 * v4 + 416 * *a1;
      v7 = &a1[52 * v4 + 26];
      do
      {
        v8 = v7[3];
        if (v8)
        {

          v7[3] = 0;
        }

        re::FixedArray<CoreIKTransform>::deinit(v7);
        *(v7 - 24) = 0;
        v7 += 52;
        v6 -= 416;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 192;
    v5 = a1 + 208;
    do
    {
      v6 = v5 - 208;
      *(v4 - 192) = *(v5 - 208);
      v7 = (v4 - 192);
      v8 = *(v5 - 192);
      v9 = *(v5 - 160);
      v7[2] = *(v5 - 176);
      v7[3] = v9;
      v7[1] = v8;
      v10 = *(v5 - 144);
      v11 = *(v5 - 128);
      v12 = *(v5 - 96);
      v7[6] = *(v5 - 112);
      v7[7] = v12;
      v7[4] = v10;
      v7[5] = v11;
      v13 = *(v5 - 80);
      v14 = *(v5 - 64);
      v15 = *(v5 - 32);
      v7[10] = *(v5 - 48);
      v7[11] = v15;
      v7[8] = v13;
      v7[9] = v14;
      if (v4 - 192 != v5 - 208)
      {
        v16 = *(v5 - 16);
        if (*v4)
        {
          if (!v16)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v16)
        {
          re::FixedArray<double>::init<>(v4, v16, *(v5 - 8));
LABEL_9:
          re::FixedArray<double>::copy(v4, *(v5 - 8), *v5);
        }
      }

LABEL_10:
      NS::SharedPtr<MTL::Buffer>::operator=((v4 + 24), (v5 + 8));
      v17 = *(v5 + 64);
      v19 = *(v5 + 16);
      v18 = *(v5 + 32);
      *(v4 + 64) = *(v5 + 48);
      *(v4 + 80) = v17;
      *(v4 + 32) = v19;
      *(v4 + 48) = v18;
      v20 = *(v5 + 128);
      v22 = *(v5 + 80);
      v21 = *(v5 + 96);
      *(v4 + 128) = *(v5 + 112);
      *(v4 + 144) = v20;
      *(v4 + 96) = v22;
      *(v4 + 112) = v21;
      result = *(v5 + 176);
      v24 = *(v5 + 192);
      v26 = *(v5 + 144);
      v25 = *(v5 + 160);
      *(v4 + 192) = result;
      *(v4 + 208) = v24;
      *(v4 + 160) = v26;
      *(v4 + 176) = v25;
      v4 += 416;
      v5 += 416;
    }

    while (v6 + 416 != a2);
  }

  return result;
}

void *re::FixedArray<double>::copy(void *result, uint64_t a2, const void *a3)
{
  if (result[1] == a2)
  {
    if (a2)
    {
      v5 = result[2];

      return memmove(v5, a3, 8 * a2);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v3, v4);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

void *re::FixedArray<double>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<double>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<double>::copy(a1, *(a2 + 8), *(a2 + 16));
  }

  return a1;
}

unsigned int *re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(unsigned int *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % v4[6], v9);
        v11 = *(a2 + 16) + v5;
        *(v10 + 8) = *(v11 + 8);
        v13 = *(v11 + 32);
        v12 = *(v11 + 48);
        *(v10 + 16) = *(v11 + 16);
        *(v10 + 32) = v13;
        *(v10 + 48) = v12;
        v14 = *(v11 + 112);
        v16 = *(v11 + 64);
        v15 = *(v11 + 80);
        *(v10 + 96) = *(v11 + 96);
        *(v10 + 112) = v14;
        *(v10 + 64) = v16;
        *(v10 + 80) = v15;
        v17 = *(v11 + 176);
        v19 = *(v11 + 128);
        v18 = *(v11 + 144);
        *(v10 + 160) = *(v11 + 160);
        *(v10 + 176) = v17;
        *(v10 + 128) = v19;
        *(v10 + 144) = v18;
        re::FixedArray<double>::FixedArray((v10 + 192), v11 + 192);
        result = *(v11 + 216);
        *(v10 + 216) = result;
        v20 = *(v11 + 272);
        v22 = *(v11 + 224);
        v21 = *(v11 + 240);
        *(v10 + 256) = *(v11 + 256);
        *(v10 + 272) = v20;
        *(v10 + 224) = v22;
        *(v10 + 240) = v21;
        v23 = *(v11 + 336);
        v25 = *(v11 + 288);
        v24 = *(v11 + 304);
        *(v10 + 320) = *(v11 + 320);
        *(v10 + 336) = v23;
        *(v10 + 288) = v25;
        *(v10 + 304) = v24;
        v26 = *(v11 + 400);
        v28 = *(v11 + 352);
        v27 = *(v11 + 368);
        *(v10 + 384) = *(v11 + 384);
        *(v10 + 400) = v26;
        *(v10 + 352) = v28;
        *(v10 + 368) = v27;
        v2 = *(a2 + 32);
      }

      v5 += 416;
    }
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((a1 + 16));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a1 + 1696));
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit((a1 + 1696));
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((a1 + 16));
  return a1;
}

char *re::MeshInstanceCollection::make(re::MeshInstanceCollection *this)
{
  if (this <= 3)
  {
    v1 = 3;
  }

  else
  {
    v1 = this;
  }

  v2 = objc_opt_class();
  Instance = class_createInstance(v2, 0xA8uLL);
  *(Instance + 24) = 0u;
  *(Instance + 10) = 0;
  *(Instance + 8) = 0u;
  *(Instance + 44) = 0x7FFFFFFFLL;
  *(Instance + 11) = 0;
  *(Instance + 8) = 0;
  *(Instance + 9) = 0;
  *(Instance + 20) = 0;
  *(Instance + 7) = 0;
  v5 = re::DynamicArray<re::StringID>::setCapacity(Instance + 7, v1);
  ++*(Instance + 20);
  *(Instance + 16) = 0;
  *(Instance + 13) = 0;
  *(Instance + 14) = 0;
  *(Instance + 30) = 0;
  *(Instance + 12) = 0;
  v6 = re::DynamicArray<re::StringID>::setCapacity(Instance + 12, v1);
  ++*(Instance + 30);
  *(Instance + 21) = 0;
  *(Instance + 18) = 0;
  *(Instance + 19) = 0;
  *(Instance + 40) = 0;
  *(Instance + 17) = 0;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(Instance + 17, v1);
  ++*(Instance + 40);
  return Instance;
}

id re::MeshInstanceCollection::makeCopy(re::MeshInstanceCollection *this, const re::MeshInstanceCollection *a2)
{
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, 0xA8uLL);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(Instance + 8, this + 8);
  re::DynamicArray<re::StringID>::DynamicArray(Instance + 56, this + 7);
  re::DynamicArray<re::StringID>::DynamicArray(Instance + 96, this + 12);
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray(Instance + 136, this + 17);
  return Instance;
}

void re::MeshInstanceCollection::beginCOWMutation(re::MeshInstanceCollection **this, re::MeshInstanceCollection **a2)
{
  if (CFGetRetainCount(*this) != 1)
  {
    v4 = *this;
    *this = re::MeshInstanceCollection::makeCopy(*this, v3);

    CFRelease(v4);
  }
}

uint64_t re::DrawCallRecorder::evaluteRecorderMode(re::DrawCallRecorder *this, const re::RenderManager *a2)
{
  if (qword_1EE1B8868 != -1)
  {
    dispatch_once(&qword_1EE1B8868, &__block_literal_global_39);
  }

  if (_MergedGlobals_439)
  {
    return 1;
  }

  result = *(this + 12);
  if (result)
  {
    v10 = 0x422F4464C0EC2900;
    v11 = "drawcallrecording:takeSnapshotNow";
    v12 = 0;
    v4 = re::DebugSettingsManager::getWithErrorCode<BOOL>(result, &v10, &v12);
    if (v4)
    {
      if (v10)
      {
        if (v10)
        {
        }
      }
    }

    else
    {
      v5 = v12;
      if (v10)
      {
        if (v10)
        {
        }
      }

      if (v5)
      {
        v9 = *(this + 12);
        v10 = 0x422F4464C0EC2900;
        v11 = "drawcallrecording:takeSnapshotNow";
        v12 = 0;
        re::DebugSettingsManager::setWithErrorCode<BOOL>(v9, &v10, &v12);
        re::StringID::destroyString(&v10);
        return 1;
      }
    }

    v6 = *(this + 12);
    v10 = 0x184FB450F9DBB738;
    v11 = "drawcallrecording:record";
    v12 = 0;
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v6, &v10, &v12);
    if (v7)
    {
      if (v10)
      {
        if (v10)
        {
        }
      }

      return 0;
    }

    v8 = v12;
    if (v10)
    {
      if (v10)
      {
      }
    }

    return (v8 & 1) != 0;
  }

  return result;
}

uint64_t re::DrawCallRecorder::DrawCallRecorder(uint64_t a1, const re::RenderManager *a2, re::DrawCallRecorder *this, uint64_t a4)
{
  *a1 = re::DrawCallRecorder::evaluteRecorderMode(this, a2);
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  re::BucketArray<re::DrawCallRecorderGroup,16ul>::init(a1 + 16, a4, 1uLL);
  v8 = *(a1 + 8);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 108) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 72, v8, 3);
  v9 = *(a1 + 8);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 156) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 120, v9, 3);
  *(a1 + 168) = *a2;
  *(a1 + 176) = *(this + 371) & *this;
  return a1;
}

unint64_t re::DrawCallRecorder::allocateDrawCallRecorderGroup(re::Allocator **this, const char *a2, const char *a3)
{
  re::DrawCallRecorderGroup::DrawCallRecorderGroup(&v18, a2, a3, this[1]);
  v4 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::addUninitialized((this + 2));
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = v19;
  *v4 = v18;
  v6 = v20;
  *(v4 + 24) = v21;
  v21 = 0;
  v7 = *(v4 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  v18 = 0;
  v19 = v7;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v8 = *(&v22 + 1);
  *(v4 + 32) = v22;
  v20 = 0;
  v9 = v23;
  *(v4 + 56) = *(&v23 + 1);
  *(&v23 + 1) = 0;
  v10 = *(v4 + 40);
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  *&v23 = 0;
  *&v22 = 0;
  *(&v22 + 1) = v10;
  *(v4 + 96) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0u;
  v11 = v26;
  *(v4 + 64) = v24;
  *(v4 + 104) = 0;
  *(v4 + 80) = v11;
  v12 = *(&v26 + 1);
  *(v4 + 72) = v25;
  v25 = 0;
  *(v4 + 88) = v12;
  v26 = 0u;
  *(v4 + 104) = v28;
  ++v27;
  ++*(v4 + 96);
  *(v4 + 144) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 112) = *(&v28 + 1);
  v28 = 0u;
  *(v4 + 120) = v29;
  v29 = 0u;
  *(v4 + 136) = v30;
  *(v4 + 144) = DWORD2(v30);
  *(v4 + 148) = 0x17FFFFFFFLL;
  *(v4 + 148) = HIDWORD(v30);
  v30 = xmmword_1E3058120;
  *(v4 + 192) = 0;
  *(v4 + 184) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = 0u;
  v13 = v32;
  *(v4 + 160) = v31;
  *(v4 + 168) = v13;
  v31 = 0;
  *(v4 + 176) = *(&v32 + 1);
  v32 = 0u;
  *(v4 + 192) = v34;
  v34 = 0;
  ++v33;
  ++*(v4 + 184);
  LODWORD(v9) = v35;
  *(v4 + 208) = v35;
  if (v9 == 1)
  {
    v14 = v37;
    *(v4 + 224) = v36;
    *(v4 + 240) = v14;
  }

  re::DynamicArray<re::EncodedDrawCallDetails>::deinit(&v31);
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v28 + 1);
  re::DynamicArray<re::DirectionalLightInfo>::deinit(&v25);
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  v16 = this[7];
  if (v16)
  {
    return re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[]((this + 2), v16 - 1);
  }

  re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
  result = _os_crash("assertion failure: (m_size > 0) Array is empty");
  __break(1u);
  return result;
}

re::DynamicString *re::DrawCallRecorder::savePerEntityDebugInformation(re::DrawCallRecorder *this, unint64_t a2, const re::DynamicString *a3, const re::DynamicString *a4)
{
  v8 = this + 72;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (!*(this + 9) || (v11 = *(*(this + 10) + 4 * (v10 % *(this + 24))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    v13 = *(this + 1);
    memset(v16, 0, 36);
    *&v16[36] = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v16, v13, 3);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v17, v8, a2, v10);
    if (HIDWORD(v18) == 0x7FFFFFFF)
    {
      v14 = re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v8, v18, v17);
      *(v14 + 8) = a2;
      *(v14 + 16) = *v16;
      *v16 = 0uLL;
      *(v14 + 32) = *&v16[16];
      *&v16[16] = 0;
      *(v14 + 40) = *&v16[24];
      *&v16[24] = xmmword_1E3058120;
      *(v14 + 56) = 1;
      ++*(this + 28);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v16);
  }

  else
  {
    v12 = *(this + 11);
    while (*(v12 + 72 * v11 + 8) != a2)
    {
      v11 = *(v12 + 72 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v16, v8, a2, v10);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(*(this + 11) + 72 * *&v16[12] + 16, a3, a4);
}

__n128 re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a1 + 16);
      if (*(v11 + 96 * v10 + 8) == v6)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v10) = *(v11 + 96 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v11 + 96 * v10 + 8) == v6)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v12 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  *(v12 + 8) = *a2;
  result = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 48);
  *(v12 + 48) = *(a3 + 32);
  *(v12 + 64) = v15;
  *(v12 + 16) = result;
  *(v12 + 32) = v14;
  ++*(a1 + 40);
  return result;
}

re::DynamicString **re::DrawCallRecorder::saveSortingDebugInformation(re::DynamicString **result, _anonymous_namespace_ *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 1) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = result;
    v6 = *(v2 + 80);
    if (v6)
    {
      v7 = 0;
      v8 = *(v2 + 64);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v2 + 80);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v7 != v6)
    {
      do
      {
        v10 = (*(v2 + 64) + 40 * v7);
        v12 = v10[1];
        v11 = v10[2];
        v13 = v10[3];
        v29 = a2;
        v30 = v5;
        re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(&v29, v12, v11, "RenderPassGroup", 0);
        result = re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(&v29, v12, v13, "FadeGroup", 1);
        v14 = *(v2 + 80);
        if (v14 <= v7 + 1)
        {
          v14 = v7 + 1;
        }

        while (v14 - 1 != v7)
        {
          LODWORD(v7) = v7 + 1;
          if ((*(*(v2 + 64) + 40 * v7) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v7) = v14;
LABEL_18:
        ;
      }

      while (v7 != v6);
      v2 = *a2;
    }

    v15 = *(v2 + 32);
    if (v15)
    {
      v16 = 0;
      v17 = *(v2 + 16);
      while (1)
      {
        v18 = *v17;
        v17 += 32;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(v2 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    while (v16 != v15)
    {
      v19 = *(v2 + 16) + (v16 << 7);
      v21 = *(v19 + 8);
      v20 = *(v19 + 16);
      v22 = *(v19 + 24);
      re::DynamicString::format(&v27, v5[1], "%llu", v23, v20);
      re::DrawCallRecorder::savePerEntityDebugInformation(v5, v21, &v29, &v27);
      if (v27 && (v28 & 1) != 0)
      {
        (*(*v27 + 40))();
      }

      v24 = v29;
      if (v29 && (v30 & 1) != 0)
      {
        v24 = (*(*v29 + 5))();
      }

      re::DynamicString::format(&v27, v5[1], "%d", v25, v22);
      re::DrawCallRecorder::savePerEntityDebugInformation(v5, v21, &v29, &v27);
      if (v27 && (v28 & 1) != 0)
      {
        (*(*v27 + 40))();
      }

      result = v29;
      if (v29 && (v30 & 1) != 0)
      {
        result = (*(*v29 + 5))();
      }

      v26 = *(v2 + 32);
      if (v26 <= v16 + 1)
      {
        v26 = v16 + 1;
      }

      while (v26 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(*(v2 + 16) + (v16 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v16) = v26;
LABEL_46:
      ;
    }
  }

  return result;
}

uint64_t re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(re::DynamicString ***a1, unint64_t a2, unint64_t a3, const char *a4, char a5)
{
  v36 = a3;
  v6 = *a1;
  v7 = **a1;
  result = v7 + 144;
  if (*(v7 + 144))
  {
    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    v10 = v9 ^ (v9 >> 31);
    v11 = *(*(v7 + 152) + 4 * (v10 % *(v7 + 168)));
    if (v11 != 0x7FFFFFFF)
    {
      v15 = a1[1];
      v16 = *(v7 + 160);
      while (*(v16 + 176 * v11 + 8) != a3)
      {
        v11 = *(v16 + 176 * v11) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      v17 = v6[1];
      if (*v17)
      {
        v18 = *(*(v17 + 8) + 4 * (v10 % *(v17 + 24)));
        if (v18 != 0x7FFFFFFF)
        {
          v19 = *(v17 + 16);
          while (*(v19 + (v18 << 7) + 8) != a3)
          {
            v18 = *(v19 + (v18 << 7)) & 0x7FFFFFFF;
            if (v18 == 0x7FFFFFFF)
            {
              return result;
            }
          }

          re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(result, &v36, v10, &v37);
          v20 = *(v7 + 160) + 176 * v39;
          v21 = *(v20 + 80);
          v22 = (*a1)[1];
          v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
          v24 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v22, &v36, v23 ^ (v23 >> 31), &v37);
          v26 = *(*(v22 + 2) + (v39 << 7) + 16);
          if (v21)
          {
            v27 = re::DynamicString::format(&v33, v15[1], "group sort-point based on %d custom sort point(s)", v25, v21);
          }

          else
          {
          }

          if (v34)
          {
            v29 = *&v35[7];
          }

          else
          {
            v29 = v35;
          }

          re::DynamicString::format(&v31, v15[1], "%llu with group distance %f (%s)", v28, v36, v26, v29);
          re::DrawCallRecorder::savePerEntityDebugInformation(v15, a2, &v37, &v31);
          if (v31 && (v32 & 1) != 0)
          {
            (*(*v31 + 40))();
          }

          if (v37 && (v38 & 1) != 0)
          {
            (*(*v37 + 40))();
          }

          v31 = v36;
          v37 = 0;
          v38 = a5;
          v40 = *(v20 + 16);
          v41 = *(v20 + 32);
          v42 = *(v20 + 64);
          v30 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((v15 + 15), &v31, &v37);
          result = v33;
          if (v33)
          {
            if (v34)
            {
              return (*(*v33 + 40))(v30);
            }
          }
        }
      }
    }
  }

  return result;
}

const char *getCompareFunctionCString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Never";
  }

  else
  {
    return off_1E871F420[(a1 - 1)];
  }
}

void *boxStringForVisualizer(re::DynamicString *a1, re::DynamicString *this, float32x4_t *a3, float *a4)
{
  v4 = a4[1];
  v5 = a4[2];
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = vmulq_n_f32(*a3, *a4);
  v10 = vmlaq_n_f32(v9, v6, v4);
  v11 = vaddq_f32(v8, vmlaq_n_f32(v10, v7, v5));
  v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
  v13 = a4[5];
  v14 = vmulq_n_f32(*a3, a4[4]);
  v15 = vmlaq_n_f32(v14, v6, v4);
  v16 = vaddq_f32(v8, vmlaq_n_f32(v15, v7, v5));
  v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  v18 = vmlaq_n_f32(v14, v6, v13);
  v19 = vaddq_f32(v8, vmlaq_n_f32(v18, v7, v5));
  v20 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
  v21 = vmlaq_n_f32(v9, v6, v13);
  v22 = vaddq_f32(v8, vmlaq_n_f32(v21, v7, v5));
  v23 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
  v24 = a4[6];
  v25 = vaddq_f32(v8, vmlaq_n_f32(v10, v7, v24));
  v26 = vdivq_f32(v25, vdupq_laneq_s32(v25, 3));
  v27 = vaddq_f32(v8, vmlaq_n_f32(v15, v7, v24));
  v28 = vdivq_f32(v27, vdupq_laneq_s32(v27, 3));
  v29 = vaddq_f32(v8, vmlaq_n_f32(v18, v7, v24));
  v30 = vdivq_f32(v29, vdupq_laneq_s32(v29, 3));
  v31 = vaddq_f32(v8, vmlaq_n_f32(v21, v7, v24));
  v32 = vdivq_f32(v31, vdupq_laneq_s32(v31, 3));
  return re::DynamicString::format(a1, this, "%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f", a3, v12.f32[0], v12.f32[1], v12.f32[2], v17.f32[0], v17.f32[1], v17.f32[2], v20.f32[0], v20.f32[1], v20.f32[2], v23.f32[0], v23.f32[1], v23.f32[2], v26.f32[0], v26.f32[1], v26.f32[2], v28.f32[0], v28.f32[1], v28.f32[2], v30.f32[0], v30.f32[1], v30.f32[2], v32.f32[0], v32.f32[1], v32.f32[2]);
}

uint64_t re::DrawCallRecorder::dumpDrawCallsToTextFile(re::DrawCallRecorder *this)
{
  v8 = this;
  v255 = *MEMORY[0x1E69E9840];
  v9 = *(this + 7);
  if (v9)
  {
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      v10 += *(re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](v8 + 16, i) + 176);
    }

    v12 = v10 << 10;
  }

  else
  {
    v12 = 0;
  }

  re::basicLocalWallTime("HH.mm.ss.SSS", &buf);
  if (BYTE8(buf))
  {
    v14 = v245;
  }

  else
  {
    v14 = &buf + 9;
  }

  if (buf && (BYTE8(buf) & 1) != 0)
  {
    (*(*buf + 40))();
  }

  v15 = *(v8 + 1);
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = v15;
  re::DynamicString::setCapacity(&v228, v12);
  v16 = *(v8 + 1);
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = v16;
  re::DynamicString::setCapacity(&v224, v12);
  re::DynamicString::appendf(&v228, "DrawCallRecorder Version %s\n", "2.0.0");
  re::DynamicString::appendf(&v228, "Frame: %llu\n", *(v8 + 21) & 0xFFFFFFFFFFFFFFFLL);
  if (v233)
  {
    v17 = v235;
  }

  else
  {
    v17 = v234;
  }

  v18 = re::DynamicString::appendf(&v228, "Local Time: %s\n\n", v17);
  v174 = v8;
  v168 = *(v8 + 7);
  if (v168)
  {
    v19 = 0;
    v20 = 0;
    v173 = 0;
    while (1)
    {
      v169 = v20;
      v18 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](v8 + 16, v20);
      if (v18[22])
      {
        v21 = v18;
        re::DynamicString::DynamicString(&v222, v18);
        v22 = 0;
        v23 = BYTE8(v222);
        if (BYTE8(v222))
        {
          v24 = v223;
        }

        else
        {
          v24 = &v222 + 9;
        }

        do
        {
          v25 = strcmp(v24, off_1E871F3E0[v22]);
          if (v25)
          {
            v26 = v22 == 3;
          }

          else
          {
            v26 = 1;
          }

          ++v22;
        }

        while (!v26);
        v176 = v25;
        if (v222)
        {
          if (v23)
          {
            (*(*v222 + 40))();
          }

          v222 = 0u;
          v223 = 0u;
        }

        v27 = (v21[1] & 1) != 0 ? v21[2] : v21 + 9;
        v28 = (v21[5] & 1) != 0 ? v21[6] : v21 + 41;
        v18 = re::DynamicString::appendf(&v228, "Group [%s] [%s]\n\n", v27, v28);
        if (v21[22])
        {
          break;
        }
      }

LABEL_253:
      v20 = v169 + 1;
      if (v169 + 1 == v168)
      {
        v1 = v7;
        v6 = *&v6;
        v4 = *&v4;
        v3 = v170;
        v2 = v171;
        v5 = *&v5;
        goto LABEL_256;
      }
    }

    v29 = 0;
    v177 = v21;
    while (1)
    {
      v175 = v29;
      v30 = v21[24] + 344 * v29;
      re::DynamicString::appendf(&v228, "          Draw-Call #: %zu\n", v19);
      if (*(v30 + 336) == 1)
      {
        re::DynamicString::appendf(&v228, "          Technique: (VFX, details unavailable)\n");
      }

      else
      {
        re::DynamicString::appendf(&v228, "          Technique: %s VertexShader: %s FragmentShader: %s\n");
      }

      if (*(v30 + 96) == 1)
      {
        v31 = *(v30 + 104);
        v32 = *(v30 + 120);
        v33 = *(v30 + 136);
        v216 = *(v30 + 152);
        v214 = v32;
        v215 = v33;
        v213 = v31;
        v217 = *(v30 + 156);
        if (v217 == 1)
        {
          v218 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v219, (v30 + 160));
        v34 = *(v30 + 200);
        buf = v213;
        v245 = v214;
        v246 = v215;
        LODWORD(v247) = v216;
        BYTE4(v247) = v217;
        if (v217 == 1)
        {
          BYTE5(v247) = v218;
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v247 + 8, v219);
        v36 = (v34 & 2) == 0 && DWORD1(v246) != 0;
        if (v249)
        {
          v37 = v248;
          if (v248)
          {
            v38 = (v249 + 28);
            do
            {
              v39 = (v34 & 2) == 0 && *v38 != 0;
              v36 |= v39;
              v38 += 8;
              --v37;
            }

            while (v37);
          }

          if (*(&v247 + 1))
          {
            (*(**(&v247 + 1) + 40))(*(&v247 + 1));
          }
        }

        if (v36)
        {
          v40 = "On";
        }

        else
        {
          v40 = "Off";
        }

        v41 = *(v30 + 104);
        v42 = *(v30 + 120);
        v43 = *(v30 + 136);
        v206 = *(v30 + 152);
        v204 = v42;
        v205 = v43;
        v203 = v41;
        v207 = *(v30 + 156);
        if (v207 == 1)
        {
          v208 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v209, (v30 + 160));
        v44 = v203;
        v45 = BYTE1(v203);
        v172 = v19;
        if (v212)
        {
          v46 = v210;
          if (v210)
          {
            v47 = (v212 + 1);
            do
            {
              v44 = (*(v47 - 1) | v44 & 1) != 0;
              v48 = *v47;
              v47 += 32;
              v45 = (v48 | v45 & 1) != 0;
              --v46;
            }

            while (v46);
          }
        }

        v49 = "FixedFunction";
        if ((v45 & *(v8 + 176)) != 0)
        {
          v49 = "Programmable";
        }

        if (v44)
        {
          v50 = v49;
        }

        else
        {
          v50 = "Off";
        }

        v51 = *(v30 + 104);
        v52 = *(v30 + 120);
        v53 = *(v30 + 136);
        v197 = *(v30 + 152);
        v195 = v52;
        v196 = v53;
        v194 = v51;
        v198 = *(v30 + 156);
        if (v198 == 1)
        {
          v199 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v200, (v30 + 160));
        if ((BYTE2(v194) & ~*(v30 + 200)) != 0)
        {
          v54 = "On";
        }

        else
        {
          v54 = "Off";
        }

        v55 = *(v30 + 120);
        v56 = *(v30 + 136);
        v57 = *(v30 + 104);
        v188 = *(v30 + 152);
        v186 = v55;
        v187 = v56;
        v185 = v57;
        v189 = *(v30 + 156);
        if (v189 == 1)
        {
          v190 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v191, (v30 + 160));
        if ((*(v30 + 200) & 4) != 0)
        {
          v58 = 7;
        }

        else
        {
          v58 = BYTE10(v185);
        }

        CompareFunctionCString = getCompareFunctionCString(v58);
        v60 = 0;
        v61 = *(v30 + 201);
        v62 = *(v30 + 209);
        *&buf = v61;
        *(&buf + 1) = v62;
        do
        {
          v63 = 0;
          v64 = *(&buf + v60 + 2);
          v65 = *(&buf + v60 + 4);
          v66 = *(&buf + v60 + 5);
          LOBYTE(v178) = *(&buf + v60 + 6);
          BYTE1(v178) = v66;
          BYTE2(v178) = v65;
          do
          {
            if (*(&v178 + v63))
            {
              v67 = v64 == 0;
            }

            else
            {
              v67 = 1;
            }

            if (!v67)
            {
              v68 = CompareFunctionCString;
              v69 = v40;
              v70 = "On";
              goto LABEL_95;
            }

            ++v63;
          }

          while (v63 != 3);
          v60 += 8;
        }

        while (v60 != 16);
        v68 = CompareFunctionCString;
        v69 = v40;
        v70 = "Off";
LABEL_95:
        v71 = 0;
        *&buf = v61;
        *(&buf + 1) = v62;
        while (1)
        {
          v72 = &buf + v71;
          if (*(&buf + v71))
          {
            v73 = v72[3];
            if (v72[3])
            {
              v74 = v73 == 7;
            }

            else
            {
              v74 = 1;
            }

            if (!v74)
            {
              CompareFunctionCString = getCompareFunctionCString(v72[3]);
            }

            if (v73 != 7 && v73 != 0)
            {
              break;
            }
          }

          v71 += 8;
          if (v71 == 16)
          {
            CompareFunctionCString = "None";
            break;
          }
        }

        re::DynamicString::appendf(&v228, "          State: ColorWrite: %s AlphaBlending: %s DepthWrite: %s DepthCompare: %s StencilWrite: %s StencilTest: %s\n", v69, v50, v54, v68, v70, CompareFunctionCString);
        v19 = v172;
        v8 = v174;
        if (v191[0])
        {
          v76 = v193;
          if (v193)
          {
            (*(*v191[0] + 40))();
          }

          v193 = 0;
          memset(v191, 0, sizeof(v191));
          ++v192;
        }

        if (v200[0])
        {
          v76 = v202;
          if (v202)
          {
            (*(*v200[0] + 40))();
          }

          v202 = 0;
          memset(v200, 0, sizeof(v200));
          ++v201;
        }

        if (v209[0])
        {
          v76 = v212;
          if (v212)
          {
            (*(*v209[0] + 40))();
          }

          v212 = 0;
          v209[1] = 0;
          v210 = 0;
          v209[0] = 0;
          ++v211;
        }

        if (v219[0])
        {
          v76 = v221;
          if (v221)
          {
            (*(*v219[0] + 40))();
          }

          v221 = 0;
          memset(v219, 0, sizeof(v219));
          ++v220;
        }

        v77 = *(v30 + 200);
        if (v77)
        {
          v78 = v77 & 3;
          if (v78 == 1)
          {
            v79 = "ColorOnly";
          }

          else
          {
            v79 = "DepthOnly";
            if (v78 != 2)
            {
              v79 = "";
              if (v78 == 3)
              {
                v79 = "NoWrite";
              }
            }
          }

          v26 = (v77 & 4) == 0;
          v80 = "NoDepthCompare";
          if (v26)
          {
            v80 = "";
          }

          re::DynamicString::format(&buf, "%s%s", v76, v79, v80);
          v81 = &buf + 9;
          if (BYTE8(buf))
          {
            v81 = v245;
          }

          re::DynamicString::appendf(&v228, "          StateOverride: %s\n", v81);
          if (buf && (BYTE8(buf) & 1) != 0)
          {
            (*(*buf + 40))();
          }
        }
      }

      re::DynamicString::appendf(&v228, "          Draw Details: ");
      if (*(v30 + 336) == 1)
      {
        re::DynamicString::appendf(&v228, "(VFX, details unavailable)\n");
      }

      else
      {
        v82 = (*(v30 + 256) & 1) != 0 ? *(v30 + 264) : v30 + 257;
        v166 = *(v30 + 244);
        v167 = v82;
        v165 = *(v30 + 240);
        re::DynamicString::appendf(&v228, "InstanceCount: %zu InstanceOffset: %d VertexCount: %d IndexCount: %d TechniqueIndex: %d DrawCallType: %s\n");
      }

      if (*(v30 + 280) == 1 && *(v30 + 312))
      {
        break;
      }

LABEL_247:
      v21 = v177;
      if (*(v177 + 208) == 1)
      {
        v7 = *(v177 + 224);
        LODWORD(v6) = *(v177 + 228);
        LODWORD(v4) = *(v177 + 232);
        v170 = *(v177 + 240);
        v171 = *(v177 + 244);
        if (v173)
        {
          v134 = v173;
        }

        else
        {
          v134 = 1;
        }

        v173 = v134;
        LODWORD(v5) = *(v177 + 248);
      }

      ++v19;
      v18 = re::DynamicString::appendf(&v228, "\n");
      v29 = v175 + 1;
      if ((v175 + 1) >= *(v177 + 176))
      {
        goto LABEL_253;
      }
    }

    v83 = 0;
    while (1)
    {
      v84 = (*(v30 + 328) + 56 * v83);
      re::DynamicString::appendf(&v228, "          Mesh %zu: \n", v83);
      if (*v84)
      {
        re::DynamicString::appendf(&v228, "             Entity ID: %llu\n", *v84);
      }

      if (*(v84 + 8) == 1)
      {
        if (v84[3])
        {
          v85 = v84[4];
        }

        else
        {
          v85 = v84 + 25;
        }

        re::DynamicString::appendf(&v228, "             MeshPart Name: %s\n", v85);
      }

      if (*(v84 + 48) != 1)
      {
        goto LABEL_221;
      }

      v86 = *(v84 + 13);
      if (*(v177 + 88) <= v86)
      {
        goto LABEL_221;
      }

      v183[0] = *(v84 + 48);
      v184 = v86;
      SortingContextUnsafe = re::DrawCallRecorderGroup::getSortingContextUnsafe(v177, v183);
      v88 = SortingContextUnsafe;
      v89 = (*(SortingContextUnsafe + 8) & 1) != 0 ? *(SortingContextUnsafe + 16) : (SortingContextUnsafe + 9);
      re::DynamicString::appendf(&v228, "             Sort Key: %s\n", v89);
      if (v176)
      {
        goto LABEL_221;
      }

      v90 = *(v8 + 1);
      v91 = re::DynamicString::DynamicString(&v181, v177);
      v92 = *v84;
      if ((*(v30 + 96) & 1) == 0)
      {
        break;
      }

      v93 = v19;
      v94 = *(v30 + 104);
      v95 = *(v30 + 120);
      v96 = *(v30 + 136);
      LODWORD(v247) = *(v30 + 152);
      v245 = v95;
      v246 = v96;
      buf = v94;
      BYTE4(v247) = *(v30 + 156);
      if (BYTE4(v247) == 1)
      {
        BYTE5(v247) = *(v30 + 157);
      }

      v91 = re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v247 + 8, (v30 + 160));
      v98 = (*(v30 + 200) & 2) == 0 && DWORD1(v246) != 0;
      if (!v249)
      {
        goto LABEL_181;
      }

      v99 = v248;
      if (v248)
      {
        v100 = (v249 + 28);
        do
        {
          v101 = (*(v30 + 200) & 2) == 0 && *v100 != 0;
          v98 |= v101;
          v100 += 8;
          --v99;
        }

        while (v99);
      }

      v91 = *(&v247 + 1);
      if (*(&v247 + 1))
      {
        v91 = (*(**(&v247 + 1) + 40))(*(&v247 + 1));
        if ((v98 & 1) == 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
LABEL_181:
        if ((v98 & 1) == 0)
        {
          goto LABEL_183;
        }
      }

      v102 = "color_enabled";
LABEL_184:
      v104 = v182;
      if ((BYTE8(v181) & 1) == 0)
      {
        v104 = &v181 + 9;
      }

      v19 = v93;
      re::DynamicString::format(&v240, v90, "%s_entity%llu_draw%zu_mesh%zu", v103, v104, v92, v93, v83, v166, v167);
      v105 = *(v88 + 128);
      v106 = *(v88 + 144);
      v107 = *(v88 + 148);
      v108 = *(v88 + 152);
      if (v241)
      {
        v109 = v243;
      }

      else
      {
        v109 = v242;
      }

      if (v179)
      {
        v110 = v180[0];
      }

      else
      {
        v110 = &v179 + 1;
      }

      v111 = *(v88 + 80);
      buf = *(v88 + 64);
      v245 = v111;
      v112 = *(v88 + 112);
      v246 = *(v88 + 96);
      v247 = v112;
      v113 = *(v88 + 48);
      v236[0] = *(v88 + 32);
      v236[1] = v113;
      boxStringForVisualizer(&v237, v90, &buf, v236);
      v115 = v239;
      if (v238)
      {
        v115 = *&v239[7];
      }

      if (v105)
      {
        v116 = v106;
      }

      else
      {
        v116 = 0.0;
      }

      if (v105)
      {
        v117 = v107;
      }

      else
      {
        v117 = 0.0;
      }

      if (v105)
      {
        v118 = v108;
      }

      else
      {
        v118 = 0.0;
      }

      re::DynamicString::format(&v253, v90, "visualize mesh_part %zu %s %s %s %d %f %f %f\n", v114, v19, v109, v110, v115, *(v88 + 128), *&v116, *&v117, *&v118);
      if (v237 && (v238 & 1) != 0)
      {
        (*(*v237 + 40))();
      }

      v119 = &v253 + 9;
      if (BYTE8(v253))
      {
        v119 = v254;
      }

      re::DynamicString::appendf(&v224, "%s", v119);
      if (v253 && (BYTE8(v253) & 1) != 0)
      {
        (*(*v253 + 40))();
      }

      v8 = v174;
      if (v240 && (v241 & 1) != 0)
      {
        (*(*v240 + 40))();
      }

      if (v178 && (v179 & 1) != 0)
      {
        (*(*v178 + 40))();
      }

      if (v181)
      {
        if (BYTE8(v181))
        {
          (*(*v181 + 40))();
        }

        v181 = 0u;
        v182 = 0u;
      }

LABEL_221:
      v120 = *v84;
      if (*v84)
      {
        v121 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v120 ^ (v120 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v120 ^ (v120 >> 30))) >> 27));
        v122 = v121 ^ (v121 >> 31);
        re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, v8 + 72, *v84, v122);
        if (HIDWORD(buf) != 0x7FFFFFFF)
        {
          re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, v8 + 72, v120, v122);
          v123 = *(v8 + 11) + 72 * HIDWORD(buf);
          v124 = *(v123 + 48);
          if (v124)
          {
            v125 = 0;
            v126 = *(v123 + 32);
            while (1)
            {
              v127 = *v126;
              v126 += 20;
              if (v127 < 0)
              {
                break;
              }

              if (v124 == ++v125)
              {
                LODWORD(v125) = *(v123 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v125) = 0;
          }

          if (v125 != v124)
          {
            v128 = *(v123 + 32);
            do
            {
              v129 = v128 + 80 * v125;
              if (*(v129 + 16))
              {
                v130 = *(v129 + 24);
              }

              else
              {
                v130 = (v129 + 17);
              }

              v131 = v129 + 40;
              if (*(v131 + 8))
              {
                v132 = *(v131 + 16);
              }

              else
              {
                v132 = (v131 + 9);
              }

              re::DynamicString::appendf(&v228, "             %s: %s\n", v130, v132);
              if (*(v123 + 48) <= (v125 + 1))
              {
                v133 = v125 + 1;
              }

              else
              {
                v133 = *(v123 + 48);
              }

              v128 = *(v123 + 32);
              while (v133 - 1 != v125)
              {
                LODWORD(v125) = v125 + 1;
                if ((*(v128 + 80 * v125) & 0x80000000) != 0)
                {
                  goto LABEL_245;
                }
              }

              LODWORD(v125) = v133;
LABEL_245:
              ;
            }

            while (v125 != v124);
          }
        }
      }

      if (++v83 >= *(v30 + 312))
      {
        goto LABEL_247;
      }
    }

    v93 = v19;
LABEL_183:
    v102 = "color_disabled";
    goto LABEL_184;
  }

  LOBYTE(v173) = 0;
LABEL_256:
  v135 = *(v8 + 38);
  if (v135)
  {
    v136 = 0;
    v137 = *(v8 + 17);
    while (1)
    {
      v138 = *v137;
      v137 += 24;
      if (v138 < 0)
      {
        break;
      }

      if (v135 == ++v136)
      {
        LODWORD(v136) = *(v8 + 38);
        break;
      }
    }
  }

  else
  {
    LODWORD(v136) = 0;
  }

  while (v136 != v135)
  {
    v139 = *(v8 + 17) + 96 * v136;
    v140 = v8;
    if (*(v139 + 24))
    {
      v141 = "fade";
    }

    else
    {
      v141 = "default";
    }

    if (v179)
    {
      v142 = v180[0];
    }

    else
    {
      v142 = &v179 + 1;
    }

    v143 = *(v139 + 8);
    v144 = *(v140 + 1);
    buf = xmmword_1E3047670;
    v245 = xmmword_1E3047680;
    v246 = xmmword_1E30476A0;
    v247 = xmmword_1E30474D0;
    v253 = *(v139 + 32);
    v254 = *(v139 + 48);
    boxStringForVisualizer(&v240, v144, &buf, &v253);
    if (v241)
    {
      v145 = v243;
    }

    else
    {
      v145 = v242;
    }

    re::DynamicString::appendf(&v224, "visualize rpg %s %llu %s\n", v142, v143, v145);
    if (v240 && (v241 & 1) != 0)
    {
      (*(*v240 + 40))();
    }

    v18 = v178;
    if (v178 && (v179 & 1) != 0)
    {
      v18 = (*(*v178 + 40))();
    }

    v8 = v174;
    v146 = *(v174 + 38);
    if (v146 <= v136 + 1)
    {
      v146 = v136 + 1;
    }

    while (v146 - 1 != v136)
    {
      LODWORD(v136) = v136 + 1;
      if ((*(*(v174 + 17) + 96 * v136) & 0x80000000) != 0)
      {
        goto LABEL_284;
      }
    }

    LODWORD(v136) = v146;
LABEL_284:
    ;
  }

  if (v173)
  {
    re::DynamicString::appendf(&v224, "visualize sorting_camera %f %f %f %f %f %f\n", v1, v6, v4, v3, v2, v5);
  }

  if (v225)
  {
    v147 = v226;
  }

  else
  {
    v147 = &v225 + 1;
  }

  re::DynamicString::appendf(&v228, "\n\nDrawCallRecorder Visualizer commands:\n%s", v147);
  re::defaultTemporaryDirectoryPath(&v178);
  if (v178)
  {
    if (v180[0])
    {
      v150 = v180[1];
    }

    else
    {
      v150 = v180 + 1;
    }

    v151 = v234;
    if (v233)
    {
      v151 = v235;
    }

    re::DynamicString::format(&v240, *(v8 + 1), "%s/draw_calls__timestamp%s__frame%llu.txt", v149, v150, v151, *(v8 + 21) & 0xFFFFFFFFFFFFFFFLL, v165);
    v250.__loc_ = 0;
    *&buf = &unk_1F5D049C0;
    v250.__vftable = &unk_1F5D049E8;
    *(&buf + 1) = 0;
    std::ios_base::init(&v250, &v245 + 8);
    v252 = -1;
    v251 = 0;
    MEMORY[0x1E6906010](&v245 + 8);
    v152 = std::filebuf::open();
    v153 = (&buf + *(buf - 24));
    if (v152)
    {
      v154 = 0;
    }

    else
    {
      v154 = v153->__rdstate_ | 4;
    }

    std::ios_base::clear(v153, v154);
    if ((*(&v246 + *(buf - 24)) & 5) != 0)
    {
      v157 = *re::graphicsLogObjects(v156);
      if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
LABEL_318:
        MEMORY[0x1E6906020](&v245 + 8);
        std::iostream::~basic_iostream();
        MEMORY[0x1E6906460](&v250);
        if (v240 && (v241 & 1) != 0)
        {
          (*(*v240 + 40))();
        }

        goto LABEL_321;
      }

      if (v241)
      {
        v158 = v243;
      }

      else
      {
        v158 = v242;
      }

      LODWORD(v253) = 136315138;
      *(&v253 + 4) = v158;
      v159 = "DrawCallRecorder couldn't write to file %s";
    }

    else
    {
      if (v229)
      {
        v160 = v230;
      }

      else
      {
        v160 = &v229 + 1;
      }

      v161 = strlen(v160);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v245, v160, v161);
      v162 = std::filebuf::close();
      if (!v162)
      {
        std::ios_base::clear((&buf + *(buf - 24)), *(&v246 + *(buf - 24)) | 4);
      }

      v157 = *re::graphicsLogObjects(v162);
      if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_318;
      }

      if (v241)
      {
        v163 = v243;
      }

      else
      {
        v163 = v242;
      }

      LODWORD(v253) = 136315138;
      *(&v253 + 4) = v163;
      v159 = "DrawCallRecorder wrote to %s";
    }

    _os_log_impl(&dword_1E1C61000, v157, OS_LOG_TYPE_DEFAULT, v159, &v253, 0xCu);
    goto LABEL_318;
  }

  v155 = *re::graphicsLogObjects(v148);
  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_DEFAULT, "DrawCallRecorder couldn't determine a path to write to", &buf, 2u);
  }

LABEL_321:
  if (v178 == 1 && v179 && (v180[0] & 1) != 0)
  {
    (*(*v179 + 40))();
  }

  if (v224 && (v225 & 1) != 0)
  {
    (*(*v224 + 40))();
  }

  if (v228 && (v229 & 1) != 0)
  {
    (*(*v228 + 40))();
  }

  result = v232;
  if (v232)
  {
    if (v233)
    {
      return (*(*v232 + 40))();
    }
  }

  return result;
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x1E6906020](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v2);
  return a1;
}

void re::DrawCallRecorder::~DrawCallRecorder(re::DrawCallRecorder *this)
{
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 15);
  re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::BucketArray<re::DrawCallRecorderGroup,16ul>::deinit(this + 16);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
}

void ___ZL45drawCallRecordingEnabledByEnvironmentVariablev_block_invoke()
{
  re::readBooleanEnvironmentVariable("ENABLE_DRAW_CALL_RECORDER", v1);
  if (v1[0])
  {
    v0 = v1[1];
  }

  else
  {
    v0 = 0;
  }

  _MergedGlobals_439 = v0;
}

uint64_t re::DynamicArray<re::EncodedDrawCallDetails>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 344 * v4;
        do
        {
          v7 = v3 + v5;
          if (*(v3 + v5 + 280) == 1)
          {
            re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v7 + 296);
          }

          re::DynamicString::deinit((v7 + 248));
          if (*(v7 + 96) == 1)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + v5 + 160);
          }

          re::DynamicString::deinit((v3 + v5 + 64));
          re::DynamicString::deinit((v3 + v5 + 32));
          re::DynamicString::deinit((v3 + v5));
          v5 += 344;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 56 * v4;
        v6 = (v3 + 16);
        do
        {
          if (*(v6 - 8) == 1)
          {
            re::DynamicString::deinit(v6);
          }

          v6 = (v6 + 56);
          v5 -= 56;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x1E6906020](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E6906460);
}

{
  v1 = a1 + 52;
  MEMORY[0x1E6906020](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1);

  JUMPOUT(0x1E6906520);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6906020](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E6906460);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6906020](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1 + 54);

  JUMPOUT(0x1E6906520);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x1E6906020](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DebugSettingsManager::setWithErrorCode<BOOL>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  std::mutex::lock((a1 + 48));
  v6 = re::DebugSettingsManager::contains<BOOL>(a1, a2);
  if (!v6)
  {
    v7 = *a3 | 0x200000000;
    v8 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v13);
    v9 = *(a1 + 16) + 40 * v14;
    v11 = *(v9 + 24);
    v10 = v9 + 24;
    if ((v11 & 1) == 0)
    {
      *v10 = 1;
    }

    *(v10 + 4) = v7;
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

_anonymous_namespace_ *re::BucketArray<re::DrawCallRecorderGroup,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 16 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 4096, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_18, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_103, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](a1, i);
      re::DynamicArray<re::EncodedDrawCallDetails>::deinit((v4 + 20));
      re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v4 + 14);
      re::DynamicArray<re::DirectionalLightInfo>::deinit((v4 + 9));
      re::DynamicString::deinit((v4 + 4));
      re::DynamicString::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

double re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 16 * v3)
  {
    re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(a1, (v2 + 16) >> 4);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 4)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 4;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 0xF) << 8);
}

unint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + ((a2 & 0xF) << 8);
}

uint64_t re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          *&v27[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v13 = *&v27[32];
          *(a1 + 24) = v14;
          ++*&v27[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v27[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(*&v27[16] + v16 + 64) % *(a1 + 24), *(*&v27[16] + v16 + 64));
                v19 = *&v27[16] + v16;
                v20 = *(*&v27[16] + v16 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v20;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v18, (v19 + 16));
                v15 = *&v27[32];
              }

              ++v17;
              v16 += 72;
            }

            while (v17 < v15);
          }

          re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 72 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 64) = a3;
  ++*(a1 + 28);
  return v21 + 72 * v5;
}

uint64_t re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v17 + 80) % *(a1 + 24), *(v13 + v17 + 80));
                v13 = *&v30[16];
                v20 = (*&v30[16] + v17);
                *(v19 + 8) = *(*&v30[16] + v17 + 8);
                v22 = v20[3];
                v21 = v20[4];
                v23 = v20[2];
                *(v19 + 16) = v20[1];
                *(v19 + 32) = v23;
                *(v19 + 48) = v22;
                *(v19 + 64) = v21;
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 96;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 96 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 96 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 96 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 80) = a3;
  ++*(a1 + 28);
  return v24 + 96 * v5;
}

uint64_t re::determineClippingNeeds(uint64_t a1, void *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v8 = *a4;
  v7 = a4[1];
  v9 = vsubq_f32(v7, *a4);
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v9, 0);
  if (vmuls_lane_f32(vmuls_lane_f32(v10.f32[0], *v10.f32, 1), v10, 2) <= 0.00001)
  {
    return 3;
  }

  v11 = 0;
  v12 = 0;
  v76 = 0uLL;
  v77 = 0uLL;
  v74 = 0uLL;
  v75 = 0uLL;
  v72 = 0uLL;
  v73 = 0uLL;
  v70 = 0uLL;
  v71 = 0uLL;
  v13.i64[0] = 0x7F0000007FLL;
  v13.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v13);
  v15 = *a6;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  do
  {
    if ((v12 & 2) != 0)
    {
      v19 = 20;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a5 + v19);
    if (v12 >= 4)
    {
      v21 = 24;
    }

    else
    {
      v21 = 8;
    }

    v22 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, *(a5 + (v11 & 0x10))), v16, v20), v17, *(a5 + v21)));
    v23 = vdupq_laneq_s32(v22, 3);
    v24 = vdivq_f32(v22, v23);
    *(&v70 + v12) = v24;
    v14.i32[3] = 0;
    v24.i32[3] = 0;
    v14 = vminnmq_f32(v14, v24);
    v13.i32[3] = 0;
    v13 = vmaxnmq_f32(v13, v24);
    ++v12;
    v11 += 16;
  }

  while (v12 != 8);
  v25 = vcgtq_f32(v8, vaddq_f32(v14, vdupq_n_s32(0x3C23D70Au)));
  v25.i32[3] = v25.i32[2];
  if ((vmaxvq_u32(v25) & 0x80000000) != 0 || (v26 = vcgtq_f32(vaddq_f32(v14, vdupq_n_s32(0xBC23D70A)), v7), v26.i32[3] = v26.i32[2], (vmaxvq_u32(v26) & 0x80000000) != 0) || (v27 = vcgtq_f32(v8, vaddq_f32(v13, vdupq_n_s32(0x3C23D70Au))), v27.i32[3] = v27.i32[2], (vmaxvq_u32(v27) & 0x80000000) != 0) || (v28 = vcgtq_f32(vaddq_f32(v13, vdupq_n_s32(0xBC23D70A)), v7), v28.i32[3] = v28.i32[2], (vmaxvq_u32(v28) & 0x80000000) != 0))
  {
    v65 = vcgtq_f32(v8, v13);
    v65.i32[3] = v65.i32[2];
    if ((vmaxvq_u32(v65) & 0x80000000) == 0)
    {
      v66 = vcgtq_f32(v14, v7);
      v66.i32[3] = v66.i32[2];
      if ((vmaxvq_u32(v66) & 0x80000000) == 0)
      {
        return a3 == 0;
      }
    }

    return 3;
  }

  v29 = *(a1 + 8);
  if (!v29)
  {
    return 2;
  }

  v30 = 0;
  v31 = *(a1 + 32);
  if (*(a1 + 16))
  {
    v31 = a1 + 24;
  }

  v32 = a2[1];
  v33 = vdupq_n_s32(0xBC23D70A);
  __asm { FMOV            V3.4S, #1.0 }

  v38.i64[0] = 0x3F0000003F000000;
  v38.i64[1] = 0x3F0000003F000000;
  result = 2;
  while (1)
  {
    if (v32 <= *(v31 + 2 * v30))
    {
      re::internal::assertLog(6, a2, a3, 0.0, 0.0, *v33.i64, *_Q3.i64, 0.0000305175853, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v31 + 2 * v30), v32, v70, v71, v72, v73, v74, v75, v76, v77);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v69);
      __break(1u);
      return result;
    }

    v40 = 0;
    v41 = *a2 + 96 * *(v31 + 2 * v30);
    v42 = vcgtz_f32(*(v41 + 64));
    v16.i64[0] = *v41;
    v43.i64[0] = 0;
    v43.i64[1] = *(v41 + 8);
    v23.i64[0] = *(v41 + 16);
    v44.i64[0] = 0;
    v44.i64[1] = *(v41 + 24);
    v6.i64[0] = *(v41 + 32);
    v45.i64[0] = 0;
    v45.i64[1] = *(v41 + 40);
    v46 = vzip1q_s32(v16, v6);
    v47 = vzip2q_s32(v43, v45);
    v48 = vzip1q_s32(v23, 0);
    v49 = vzip2q_s32(v44, xmmword_1E30474D0);
    v23 = vzip1q_s32(v46, v48);
    v50 = vzip2q_s32(v46, v48);
    v6 = vzip1q_s32(v47, v49);
    v51 = vzip2q_s32(v47, v49);
    v52.i64[0] = 0x7F0000007FLL;
    v52.i64[1] = 0x7F0000007FLL;
    v53 = vnegq_f32(v52);
    do
    {
      v18.i32[2] = *(v41 + 44);
      v18.i32[1] = *(v41 + 28);
      v18.i32[0] = *(v41 + 12);
      v54 = vsubq_f32(*(&v70 + v40), v18);
      v55 = vaddq_f32(v51, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v54.f32[0]), v50, *v54.f32, 1), v6, v54, 2));
      v56 = vdivq_f32(v55, vdupq_laneq_s32(v55, 3));
      v53.i32[3] = 0;
      v56.i32[3] = 0;
      v53 = vminnmq_f32(v53, v56);
      v52.i32[3] = 0;
      v52 = vmaxnmq_f32(v52, v56);
      v40 += 16;
    }

    while (v40 != 128);
    v57 = vpmin_u32(v42, v42).u32[0];
    if (v57 < 0)
    {
      break;
    }

    v58.i64[0] = vcvtq_f32_f16(*(v41 + 48)).u64[0];
    _H7 = *(v41 + 52);
    __asm { FCVT            S7, H7 }

    v58.i64[1] = _S7;
    v61.i64[0] = vcvtq_f32_f16(*(v41 + 56)).u64[0];
    _H17 = *(v41 + 60);
    __asm { FCVT            S17, H17 }

    v61.i64[1] = _S17;
    v64 = vmulq_f32(vsubq_f32(_Q3, vaddq_f32(vmaxnmq_f32(v58, v61), v33)), v38);
    v18 = vcgeq_f32(v64, vabsq_f32(v53));
    v18.i32[3] = v18.i32[2];
    if ((vminvq_u32(v18) & 0x80000000) == 0)
    {
      break;
    }

    v16 = vcgeq_f32(v64, vabsq_f32(v52));
    v16.i32[3] = v16.i32[2];
    if ((vminvq_u32(v16) & 0x80000000) == 0)
    {
      break;
    }

    if (++v30 == v29)
    {
      return result;
    }
  }

  return v30 >= a3 && v57 >= 0;
}

uint64_t re::RenderFrame::RenderFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 112);
  if (v15)
  {
    v15 = *(v15 + 296);
  }

  *a1 = v15;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a3;
  re::RenderGraphDataStore::RenderGraphDataStore(a1 + 32, a5);
  re::RenderFrameData::RenderFrameData(a1 + 264, *(*(*(a2 + 112) + 296) + 688), a6);
  *(a1 + 352) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 360) = &str_122;
  *(a1 + 368) = &str_122;
  *(a1 + 376) = 0;
  *(a1 + 384) = a5;
  *(a1 + 392) = a6;
  *(a1 + 400) = a7;
  *(a1 + 408) = a8;
  *(a1 + 416) = a5;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 484) = 0u;
  *(a1 + 500) = 0x7FFFFFFFLL;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x7FFFFFFFLL;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 660) = 0u;
  *(a1 + 676) = 0x7FFFFFFFLL;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 1;
  *(a1 + 3296) = 0u;
  *(a1 + 3352) = 0;
  *(a1 + 3360) = 0;
  *(a1 + 3336) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0;
  *(a1 + 3520) = 0;
  *(a1 + 3504) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3400) = 0;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3440) = 0;
  *(a1 + 3556) = 0u;
  *(a1 + 3528) = 0u;
  *(a1 + 3544) = 0u;
  *(a1 + 3572) = 0x7FFFFFFFLL;
  *(a1 + 3616) = 0;
  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  *(a1 + 3620) = 0x7FFFFFFFLL;
  *(a1 + 3664) = 0;
  *(a1 + 3656) = 0;
  *(a1 + 3648) = 0;
  *(a1 + 3632) = 0u;
  v16 = re::RenderGraphResourceDescriptions::RenderGraphResourceDescriptions((a1 + 3672));
  *(a1 + 3992) = 0;
  *(a1 + 3984) = 0;
  *(a1 + 3968) = 0u;
  *(a1 + 4000) = 0u;
  *(a1 + 4016) = 0u;
  *(a1 + 4032) = 0;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4068) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = 0u;
  *(a1 + 4120) = 0;
  *(a1 + 4128) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4160) = 0;
  *(a1 + 4200) = 0;
  *(a1 + 4168) = 0u;
  *(a1 + 4184) = 0u;
  *(a1 + 4240) = 0;
  *(a1 + 4224) = 0u;
  *(a1 + 4208) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0;
  *(a1 + 4288) = 0u;
  *(a1 + 4304) = 0u;
  *(a1 + 4320) = 0;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4360) = 0;
  *(a1 + 4368) = 0u;
  *(a1 + 4384) = 0u;
  *(a1 + 4400) = 0;
  *(a1 + 4408) = 0u;
  *(a1 + 4424) = 0u;
  *(a1 + 4440) = 0u;
  *(a1 + 4452) = 0u;
  *(a1 + 4500) = 0u;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4516) = 0x7FFFFFFFLL;
  *(a1 + 4528) = 850045863;
  *(a1 + 4600) = 0;
  *(a1 + 4568) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0u;
  *(a1 + 4608) = 1;
  *(a1 + 4616) = 0u;
  if (a4)
  {
    v18 = re::globalAllocators(v16);
    v19 = (*(*v18[2] + 32))(v18[2], 160, 8);
    ArcSharedObject::ArcSharedObject(v19, 0);
    *v19 = &unk_1F5D04B08;
    v20 = re::Allocator::Allocator((v19 + 24), "RenderGraphStringAllocator", 1);
    *(v19 + 24) = &unk_1F5D046F8;
    *(v19 + 112) = 0u;
    *(v19 + 128) = 0u;
    *(v19 + 144) = 0;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 92) = 0u;
    *(v19 + 148) = 0x7FFFFFFFLL;
    v21 = *(a1 + 4048);
    *(a1 + 4048) = v19;
    if (v21)
    {

      v19 = *(a1 + 4048);
    }

    *(v19 + 64) = 0;
    *(v19 + 72) = 1024;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 88) = 0;
    *(v19 + 96) = 0;
    v26 = 0;
    v27 = 0xEE74EC71D35974;
    v25 = 0x6A3DF053A9B45F3DLL;
    re::RenderFrame::registerExternalTexture(a1, &v26, &v27, &v25, 0);
    *(a1 + 560) = *(a1 + 392);
    re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity((a1 + 560), 0);
    ++*(a1 + 584);
    *(a1 + 600) = *(a1 + 392);
    re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity((a1 + 600), 0);
    ++*(a1 + 624);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 464, *(a1 + 392), 3);
    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 512, *(a1 + 392), 3);
    re::make::shared::object<re::RenderFrameBounds>(v22, &v27);
    v23 = *(a1 + 456);
    *(a1 + 456) = v27;
    v27 = v23;
    if (v23)
    {
    }

    return a1;
  }

  else
  {
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) RenderFrame requires a ColorManager", "colorManager", "RenderFrame", 155);
    result = _os_crash("assertion failure: (colorManager) RenderFrame requires a ColorManager");
    __break(1u);
  }

  return result;
}

void re::RenderFrame::registerExternalTexture(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 352) == 1 && (*(a1 + 449) & 1) == 0)
  {
    re::DynamicString::format(&v11, "External texture '%s' cannot be registered inside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a2, a5, *(a1 + 360), *(a1 + 368));
    v14.n128_u64[0] = 2002;
    v14.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v15 = v11;
    v17 = v13;
    v16 = v12;
    v9 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v14);
    if (v15)
    {
      if (v16)
      {
        (*(*v15 + 40))(v9);
      }
    }
  }

  v10 = *a2;
  v14.n128_u64[0] = ((*a3 << 6) + (*a3 >> 2) + *a4 - 0x61C8864680B583E9) ^ *a3;
  re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(a1 + 3536, v14.n128_u64, &v10);
  if (v10)
  {
  }
}

void re::RenderFrame::~RenderFrame(re::RenderFrame *this)
{
  v2 = *(this + 524);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(this + 526);
      v5 = *(v4 + 8 * i);
      if (v5)
      {

        *(v4 + 8 * i) = 0;
        v2 = *(this + 524);
      }
    }
  }

  re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(this + 560);
  re::DynamicArray<re::RenderFrame::PickupAction>::deinit(this + 600);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 58);
  v6.n128_f64[0] = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 64);
  if (*(this + 409))
  {
    v7 = *(this + 410);
    if (v7)
    {
      if (*(this + 3288))
      {
        v8 = (this + 3296);
      }

      else
      {
        v8 = *(this + 413);
      }

      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        (*(*v10 + 2))(v10, v6);
        objc_destroyWeak(v10 + 1);
        v10[1] = 0;
        v9 -= 8;
      }

      while (v9);
    }
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
  v11 = *(this + 57);
  if (v11)
  {

    *(this + 57) = 0;
  }

  v12 = *(this + 506);
  if (v12)
  {

    *(this + 506) = 0;
  }

  re::RenderFrame::onCommandBuffersComplete(this);
  re::RenderFrame::onFrameComplete(this);
  if (*(this + 574))
  {
    v13 = *(this + 575);
    if (v13)
    {
      if (*(this + 4608))
      {
        v14 = this + 4616;
      }

      else
      {
        v14 = *(this + 578);
      }

      v15 = 24 * v13;
      v16 = (v14 + 16);
      do
      {
        v17 = *v16;
        v16 += 3;

        v15 -= 24;
      }

      while (v15);
    }

    v18 = *(this + 1152);
    if ((v18 & 1) == 0)
    {
      (*(**(this + 574) + 40))(*(this + 574), *(this + 578));
      v18 = *(this + 1152);
    }

    *(this + 574) = 0;
    *(this + 575) = 0;
    *(this + 1152) = (v18 | 1) + 2;
  }

  std::mutex::~mutex((this + 4528));
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 560);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 4440);
  if (*(this + 552))
  {
    v19 = *(this + 553);
    if (v19)
    {
      v20 = *(this + 554);
      v21 = 32 * v19;
      do
      {
        v22 = *v20;
        v20 += 4;

        v21 -= 32;
      }

      while (v21);
      (*(**(this + 552) + 40))(*(this + 552), *(this + 554));
      *(this + 553) = 0;
      *(this + 554) = 0;
    }

    *(this + 552) = 0;
  }

  v23 = *(this + 547);
  if (v23)
  {
    v24 = *(this + 551);
    if (v24)
    {
      v25 = *(this + 549);
      if (v25)
      {
        v26 = v24 + 48 * v25;
        v27 = *(this + 551);
        do
        {
          *v27 = 0;
          ++*(v27 + 8);
          v27 += 48;
        }

        while (v27 != v26);
      }

      (*(*v23 + 40))(v23);
    }

    *(this + 551) = 0;
    *(this + 548) = 0;
    *(this + 549) = 0;
    *(this + 547) = 0;
    ++*(this + 1100);
  }

  v28 = *(this + 542);
  if (v28)
  {
    v29 = *(this + 546);
    if (v29)
    {
      v30 = *(this + 544);
      if (v30)
      {
        v31 = 8 * v30;
        do
        {
          if (*v29)
          {

            *v29 = 0;
          }

          ++v29;
          v31 -= 8;
        }

        while (v31);
        v28 = *(this + 542);
        v29 = *(this + 546);
      }

      (*(*v28 + 40))(v28, v29);
    }

    *(this + 546) = 0;
    *(this + 543) = 0;
    *(this + 544) = 0;
    *(this + 542) = 0;
    ++*(this + 1090);
  }

  v32 = *(this + 537);
  if (v32)
  {
    v33 = *(this + 541);
    if (v33)
    {
      v34 = *(this + 539);
      if (v34)
      {
        v35 = 24 * v34;
        do
        {
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v33);
          v33 = (v33 + 24);
          v35 -= 24;
        }

        while (v35);
        v32 = *(this + 537);
        v33 = *(this + 541);
      }

      (*(*v32 + 40))(v32, v33);
    }

    *(this + 541) = 0;
    *(this + 538) = 0;
    *(this + 539) = 0;
    *(this + 537) = 0;
    ++*(this + 1080);
  }

  v36 = (this + 4176);
  v37 = *(this + 532);
  if (v37)
  {
    v38 = *(this + 536);
    if (v38)
    {
      v39 = *(this + 534);
      if (v39)
      {
        v40 = 8 * v39;
        do
        {
          if (*v38)
          {

            *v38 = 0;
          }

          ++v38;
          v40 -= 8;
        }

        while (v40);
        v37 = *(this + 532);
        v38 = *(this + 536);
      }

      (*(*v37 + 40))(v37, v38);
    }

    *(this + 536) = 0;
    *(this + 533) = 0;
    *(this + 534) = 0;
    *(this + 532) = 0;
    ++*(this + 1070);
  }

  v41 = *(this + 527);
  if (v41)
  {
    v42 = *(this + 531);
    if (v42)
    {
      v43 = *(this + 529);
      if (v43)
      {
        v44 = 104 * v43;
        v45 = (v42 + 32);
        do
        {
          re::DynamicString::deinit(v45);
          v46 = *(v45 - 2);
          if (v46)
          {

            *(v45 - 2) = 0;
          }

          v47 = *(v45 - 3);
          if (v47)
          {

            *(v45 - 3) = 0;
          }

          *(v45 - 4) = 0;
          v45 = (v45 + 104);
          v44 -= 104;
        }

        while (v44);
        v41 = *(this + 527);
        v42 = *(this + 531);
      }

      (*(*v41 + 40))(v41, v42);
    }

    *(this + 531) = 0;
    *(this + 528) = 0;
    *(this + 529) = 0;
    *(this + 527) = 0;
    ++*(this + 1060);
  }

  v48 = *v36;
  if (*v36)
  {
    v49 = *(this + 526);
    if (v49)
    {
      v50 = *(this + 524);
      if (v50)
      {
        v51 = 8 * v50;
        do
        {
          if (*v49)
          {

            *v49 = 0;
          }

          v49 += 8;
          v51 -= 8;
        }

        while (v51);
        v48 = *(this + 522);
        v49 = *(this + 526);
      }

      (*(*v48 + 40))(v48, v49);
    }

    *(this + 526) = 0;
    *(this + 523) = 0;
    *(this + 524) = 0;
    *v36 = 0;
    ++*(this + 1050);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 4136);
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(this + 4096);
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(this + 4056);
  v52 = *(this + 506);
  if (v52)
  {

    *(this + 506) = 0;
  }

  re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(this + 4008);
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 3968);
  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions((this + 3672));
  re::DynamicArray<re::RenderGraph>::deinit(this + 3632);
  re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 448);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 442);
  re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer((this + 3416));
  re::DynamicArray<re::DetailedError>::deinit(this + 3376);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 3336);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 688);
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 80);
  re::DynamicArray<re::RenderFrame::PickupAction>::deinit(this + 600);
  re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(this + 560);
  re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 64);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 58);
  v53 = *(this + 57);
  if (v53)
  {

    *(this + 57) = 0;
  }

  re::RenderFrameData::~RenderFrameData((this + 264));
  re::RenderGraphDataStore::deinit((this + 32));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 26);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 144);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 12);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 6);
}

void re::RenderFrame::onCommandBuffersComplete(re::RenderFrame *this)
{
  std::mutex::lock((this + 4528));
  v2 = *(this + 514);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 516) + 32);
    do
    {
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, this + 384);
      v3 -= 40;
    }

    while (v3);
  }

  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::clear(this + 512);

  std::mutex::unlock((this + 4528));
}

uint64_t re::RenderFrame::onFrameComplete(uint64_t this)
{
  if ((*(this + 424) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 4072);
    if (v2)
    {
      v3 = 40 * v2;
      v4 = (*(this + 4088) + 32);
      do
      {
        v5 = *v4;
        v4 += 5;
        this = (*(*v5 + 16))(v5, v1 + 384);
        v3 -= 40;
      }

      while (v3);
    }

    *(v1 + 424) = 1;
  }

  return this;
}

uint64_t re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = (v3 + 16);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          v6 += 5;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderFrame::PickupAction>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 80 * v4;
        v6 = (v3 + 40);
        do
        {
          *(v6 + 4) = 0;
          re::DynamicString::deinit(v6);
          re::DynamicString::deinit((v6 - 32));
          v6 = (v6 + 80);
          v5 -= 80;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 48;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

unint64_t re::RenderFrame::setRenderGraphScopes(re::RenderFrame *this, const char *__s, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  *(this + 45) = __s;
  *(this + 46) = a3;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v10);
    v8 = (v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
  }

  else
  {
    v8 = 0;
  }

  result = strlen(a3);
  if (result)
  {
    result = MurmurHash3_x64_128(a3, result, 0, &v10);
    v6 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  *(this + 47) = ((v8 >> 2) + (v8 << 6) + v6) ^ v8;
  return result;
}

void re::RenderFrame::emitGraph(re::RenderFrame *this, const char *__s, const char *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!__s || !*__s)
  {
LABEL_62:
    re::internal::assertLog(4, __s, a3, "assertion failure: '%s' (%s:line %i) ", "typeScope != nullptr && strlen(typeScope) > 0", "emitGraph", 231);
    _os_crash("assertion failure: (typeScope != nullptr && strlen(typeScope) > 0) ");
    __break(1u);
    goto LABEL_63;
  }

  if (!a3 || !*a3)
  {
LABEL_63:
    re::internal::assertLog(4, __s, "assertion failure: '%s' (%s:line %i) ", "graphScope != nullptr && strlen(graphScope) > 0", "emitGraph", 232);
    _os_crash("assertion failure: (graphScope != nullptr && strlen(graphScope) > 0) ");
    __break(1u);
  }

  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, buf);
    v7 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a3);
  if (v8)
  {
    v8 = MurmurHash3_x64_128(a3, v8, 0, buf);
    v9 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  v10 = ((v7 >> 2) + (v7 << 6) + v9) ^ v7;
  v45 = v10;
  v11 = *(this + 122);
  if (v11)
  {
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v13 = *(*(this + 59) + 4 * ((v12 ^ (v12 >> 31)) % v11));
    if (v13 != 0x7FFFFFFF)
    {
      v34 = *(this + 60);
      if (*(v34 + 24 * v13 + 16) == v10)
      {
LABEL_43:
        v35 = *re::graphicsLogObjects(v8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = __s;
          *&buf[12] = 2080;
          *&buf[14] = a3;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Duplicate graph was emitted and skipped: %s::%s", buf, 0x16u);
        }

        return;
      }

      while (1)
      {
        LODWORD(v13) = *(v34 + 24 * v13 + 8) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v34 + 24 * v13 + 16) == v10)
        {
          goto LABEL_43;
        }
      }
    }
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 464, &v45);
  v14 = strlen(__s);
  v15 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v14 + 1, 0);
  memcpy(v15, __s, v14);
  *(v15 + v14) = 0;
  v16 = strlen(a3);
  v17 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v16 + 1, 0);
  memcpy(v17, a3, v16);
  *(v17 + v16) = 0;
  re::RenderFrame::setRenderGraphScopes(this, v15, v17);
  if (*(this + 449) == 1)
  {
    re::RenderGraphManager::getProviderPointers(buf, *this, __s, *(this + 49));
    if (!*&buf[8])
    {
      goto LABEL_54;
    }

    v15 = *&buf[16];
    v19 = (8 * *&buf[8]);
    while (1)
    {
      v20 = *v15;
      if (!*v15)
      {
        break;
      }

      if ((*(*v20 + 16))(*v15, __s, a3, this))
      {
        *(this + 352) = 1;
        (*(*v20 + 24))(v20, __s, a3, this);
        *(this + 352) = 0;
      }

      ++v15;
      v19 -= 8;
      if (!v19)
      {
        v21 = *buf;
        if (*buf && *&buf[8])
        {
          v22 = *&buf[16];
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "provider", "emitGraph", 247);
    _os_crash("assertion failure: (provider) ");
    __break(1u);
LABEL_57:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "providerList[index]", "emitGraph", 262);
    _os_crash("assertion failure: (providerList[index]) ");
    __break(1u);
LABEL_58:
    v46 = 0;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    v56 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v50 = 468;
    v51 = 2048;
    v52 = v20;
    v53 = 2048;
    v54 = v15;
    _os_log_send_and_compose_impl(v39, &v46, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  re::RenderGraphManager::getProviderPointers(&v42, *this, __s, *(this + 49));
  if (v43)
  {
    v20 = 0;
    v19 = buf;
    do
    {
      v24 = *(v44 + 8 * v20);
      if (!v24)
      {
        goto LABEL_57;
      }

      v25 = (*(*v24 + 16))(v24, __s, a3, this);
      v15 = v43;
      if (!v25)
      {
        if (v43 <= v20)
        {
          goto LABEL_58;
        }

        *(v44 + 8 * v20) = 0;
      }

      *(this + 41) ^= v25 - 0x61C8864680B583E9 + (*(this + 41) << 6) + (*(this + 41) >> 2);
      ++v20;
    }

    while (v20 < v15);
    if (v15)
    {
      *buf = *(this + 360);
      v26 = re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(&buf[16], &v42);
      v27 = *(this + 72);
      v28 = *(this + 71);
      if (v27 >= v28)
      {
        v29 = v27 + 1;
        if (v28 < v27 + 1)
        {
          if (*(this + 70))
          {
            v30 = 2 * v28;
            v31 = v28 == 0;
            v32 = 8;
            if (!v31)
            {
              v32 = v30;
            }

            if (v32 <= v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = v32;
            }

            re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(this + 70, v33);
          }

          else
          {
            re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(this + 70, v29);
            ++*(this + 146);
          }
        }

        v27 = *(this + 72);
      }

      v36 = *(this + 74) + 40 * v27;
      *v36 = *buf;
      re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray((v36 + 16), &buf[16]);
      ++*(this + 72);
      ++*(this + 146);
      if (*&buf[16] && *&buf[24])
      {
        (*(**&buf[16] + 40))();
      }
    }
  }

  v21 = v42;
  if (v42 && v43)
  {
    v22 = v44;
LABEL_53:
    (*(*v21 + 40))(v21, v22);
  }

LABEL_54:
  *(this + 45) = &str_122;
  *(this + 46) = &str_122;
  *(this + 47) = 0;
}

void re::RenderFrame::addTargetOutput(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "addTargetOutput", 315);
    _os_crash("assertion failure: (index < m_scopeOutputs.size()) ");
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::addTargetToLane(v14, &v16, v15, 1);
  }
}

unint64_t re::RenderFrame::getScopeOutputIndex(re::RenderFrame *this, const char *__s)
{
  v2 = *(this + 498);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 500);
  v5 = strlen(__s);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v4 + 136 * v6;
    if (*(v8 + 8) == v5 && !memcmp(*v8, __s, v5))
    {
      break;
    }

    v6 = (v7 + 1);
    v7 = v6;
    if (v2 <= v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t *re::DynamicArray<re::RenderGraphScopeOutput>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphScopeOutput>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 136 * v4;
  *v5 = *a2;
  v6 = *(a2 + 16);
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = &str_67;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 76) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 40), (a2 + 40));
  *(v5 + 88) = 0u;
  v5 += 88;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, (a2 + 88));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderFrame::inheritLaneProperties(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "inheritLaneProperties", 344);
    _os_crash("assertion failure: (index < m_scopeOutputs.size()) ");
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::inheritPropertiesFromLane(v14, &v16, v15);
  }
}

{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "inheritLaneProperties", 402);
    _os_crash("assertion failure: (index < m_scopeOutputs.size()) ");
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::inheritPropertiesFromLane(v14, &v16, v15);
  }
}

void re::RenderFrame::addBufferOutput(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "addBufferOutput", 373);
    _os_crash("assertion failure: (index < m_scopeOutputs.size()) ");
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::addBufferToLane(v14, &v16, v15, 1);
  }
}

void re::RenderFrame::createTarget(uint64_t *__return_ptr a1@<X8>, re::RenderFrame *this@<X0>, const re::RenderGraphTargetDescription *a3@<X1>, const char *__s@<X2>)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format(&v9, "Target '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a3, __s, *(this + 45), *(this + 46));
    v12.n128_u64[0] = 2001;
    v12.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v13 = v9;
    v15 = v11;
    v14 = v10;
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v12);
    if (v13)
    {
      if (v14)
      {
        (*(*v13 + 40))(v8);
      }
    }
  }

  re::RenderGraphResourceDescriptions::addTarget(this + 459, a3, __s, a1);
}

void re::RenderFrame::createBuffer(uint64_t *__return_ptr a1@<X8>, re::RenderFrame *this@<X0>, const re::RenderGraphBufferDescription *a3@<X1>, const char *__s@<X2>)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format(&v9, "Buffer '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a3, __s, *(this + 45), *(this + 46));
    v12.n128_u64[0] = 3001;
    v12.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v13 = v9;
    v15 = v11;
    v14 = v10;
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v12);
    if (v13)
    {
      if (v14)
      {
        (*(*v13 + 40))(v8);
      }
    }
  }

  re::RenderGraphResourceDescriptions::addBuffer(this + 459, a3, __s, a1);
}

uint64_t re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, id *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  *(v6 + 8) = *a2;
  *(v6 + 16) = *a3;
  v7 = v6 + 16;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addInternal<unsigned long long const&,re::BufferSlice const&>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 56 * HIDWORD(v8) + 16;
  }
}

id re::RenderFrame::getExternalTexture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1 + 3536, (a2 + 96), *(a2 + 96), v6);
  if (v7 == 0x7FFFFFFF)
  {
    result = 0;
  }

  else
  {
    result = *(*(a1 + 3552) + 24 * v7 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t re::RenderFrame::registerExternalBuffer(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 352) == 1 && (*(a1 + 449) & 1) == 0)
  {
    re::DynamicString::format(&v14, "External buffer '%s' cannot be registered inside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a2, a5, *(a1 + 360), *(a1 + 368));
    v17.n128_u64[0] = 3002;
    v17.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v18 = v14;
    v20 = v16;
    v19 = v15;
    v9 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v17);
    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))(v18, *(&v19 + 1), v9);
      }
    }
  }

  v11[0] = 0;
  v12 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11, a2);
  v13 = *(a2 + 32);
  v17.n128_u64[0] = ((*a3 << 6) + (*a3 >> 2) + *a4 - 0x61C8864680B583E9) ^ *a3;
  result = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(a1 + 3584, v17.n128_u64, v11);
  if (v12 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[v12])(&v17, v11);
  }

  return result;
}

uint64_t re::RenderFrame::getExternalBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1 + 3584, (a2 + 40), *(a2 + 40), v7);
  if (v8 == 0x7FFFFFFF)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v6 = *(a1 + 3600) + 56 * v8;
    *a3 = 0;
    *(a3 + 24) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a3, v6 + 16);
    *(a3 + 32) = *(v6 + 48);
  }

  return result;
}

double re::RenderFrame::tryGetInputTarget@<D0>(double *__return_ptr a1@<X8>, re::RenderFrame *this@<X0>, const char *a3@<X1>, const char *__s@<X2>)
{
  v4 = __s;
  v27 = *MEMORY[0x1E69E9840];
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format(v25, "Input target (lane '%s', override scope '%s') cannot be retrieved outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a3, a3, __s, *(this + 45), *(this + 46));
    v26[0].n128_u64[0] = 2003;
    v26[0].n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v26[1].n128_u64[0] = *v25;
    v26[2].n128_u64[1] = *&v25[24];
    *(&v26[1] + 8) = *&v25[8];
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), v26);
    if (v26[1].n128_u64[0])
    {
      if (v26[1].n128_u8[8])
      {
        (*(*v26[1].n128_u64[0] + 40))(v8);
      }
    }
  }

  if (!v4)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    goto LABEL_19;
  }

  v10 = ScopeOutputIndex;
  v11 = *(this + 498);
  if (v11 <= ScopeOutputIndex)
  {
    v24 = 0;
    memset(v26, 0, sizeof(v26));
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *&v25[14] = 797;
    *&v25[18] = 2048;
    *&v25[20] = v10;
    *&v25[28] = 2048;
    *&v25[30] = v11;
    _os_log_send_and_compose_impl(v21, &v24, v26, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(this + 500) + 136 * ScopeOutputIndex;
  if (a3)
  {
    v13 = *a3;
    if (*a3)
    {
      v14 = a3[1];
      if (v14)
      {
        v15 = a3 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26[0].n128_u64[0] = v13;
  v17 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 40, v26);
  if (!v17)
  {
LABEL_19:
    *a1 = 0.0;
    result = NAN;
    a1[1] = NAN;
  }

  else
  {
    *a1 = *(v17 + 80);
    result = *(v17 + 88);
    a1[1] = result;
  }

  return result;
}

double re::RenderFrame::tryGetInputBuffer@<D0>(double *__return_ptr a1@<X8>, re::RenderFrame *this@<X0>, const char *a3@<X1>, const char *__s@<X2>)
{
  v4 = __s;
  v27 = *MEMORY[0x1E69E9840];
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format(v25, "Input buffer (lane '%s', override scope '%s') cannot be retrieved outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a3, a3, __s, *(this + 45), *(this + 46));
    v26[0].n128_u64[0] = 3003;
    v26[0].n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v26[1].n128_u64[0] = *v25;
    v26[2].n128_u64[1] = *&v25[24];
    *(&v26[1] + 8) = *&v25[8];
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), v26);
    if (v26[1].n128_u64[0])
    {
      if (v26[1].n128_u8[8])
      {
        (*(*v26[1].n128_u64[0] + 40))(v8);
      }
    }
  }

  if (!v4)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    goto LABEL_19;
  }

  v10 = ScopeOutputIndex;
  v11 = *(this + 498);
  if (v11 <= ScopeOutputIndex)
  {
    v24 = 0;
    memset(v26, 0, sizeof(v26));
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *&v25[14] = 797;
    *&v25[18] = 2048;
    *&v25[20] = v10;
    *&v25[28] = 2048;
    *&v25[30] = v11;
    _os_log_send_and_compose_impl(v21, &v24, v26, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(this + 500) + 136 * ScopeOutputIndex;
  if (a3)
  {
    v13 = *a3;
    if (*a3)
    {
      v14 = a3[1];
      if (v14)
      {
        v15 = a3 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26[0].n128_u64[0] = v13;
  v17 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 88, v26);
  if (!v17)
  {
LABEL_19:
    *a1 = 0.0;
    result = NAN;
    a1[1] = NAN;
  }

  else
  {
    *a1 = *(v17 + 96);
    result = *(v17 + 104);
    a1[1] = result;
  }

  return result;
}

uint64_t re::RenderFrame::specifyScopeLane(void *a1, uint64_t *a2, void **a3, const char *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicString::setCapacity(&v16, 0);
  HIBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xFFFFFFFFLL;
  v22 = 0;
  v12 = *a2;
  NS::SharedPtr<MTL::Buffer>::operator=(&v13, a3);
  v8 = strlen(a4);
  v23[0] = a4;
  v23[1] = v8;
  re::DynamicString::operator=(&v16, v23);
  v18 = 257;
  v9 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), &v12);
  v10 = a1[529];
  if (v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))(v9);
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {
  }

  return (v10 - 1);
}

__n128 re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 56) = *(a2 + 56);
  v6 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = *(a2 + 48);
  *(a2 + 56) = 0;
  v9 = *(v5 + 40);
  v8 = *(v5 + 48);
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  result = *(a2 + 64);
  v11 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = result;
  *(v5 + 80) = v11;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 24) = *(a2 + 24);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = result;
  *(v5 + 80) = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::frameReuse_specifyScopeLane(uint64_t a1, uint64_t *a2, void **a3, char *__s1)
{
  v4 = *(a1 + 4232);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = *a2;
  for (i = *(a1 + 4248) + 65; ; i += 104)
  {
    if (*(i - 65) == v9)
    {
      v11 = (*(i - 25) & 1) != 0 ? *(i - 17) : (i - 24);
      v12 = strcmp(__s1, v11);
      if (!v12)
      {
        break;
      }
    }

    if (v4 == ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v18 = 0uLL;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  *v16 = 0u;
  *v17 = 0u;
  LODWORD(v17[1]) = -1;
  v19 = 0uLL;
  re::DynamicString::setCapacity(&v18, 0);
  BYTE1(v20) = 0;
  *(&v20 + 1) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0xFFFFFFFFLL;
  LOBYTE(v22) = 0;
  *(i - 65) = 0;
  NS::SharedPtr<MTL::Texture>::operator=((i - 57), &v16[1]);
  NS::SharedPtr<MTL::Texture>::operator=((i - 49), v17);
  *(i - 41) = v17[1];
  re::DynamicString::operator=((i - 33), &v18);
  v13 = v20;
  v14 = v21;
  *(i + 31) = v22;
  *(i + 15) = v14;
  *(i - 1) = v13;
  if (v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v17[0])
  {

    v17[0] = 0;
  }

  if (v16[1])
  {
  }

  *(i - 65) = *a2;
  NS::SharedPtr<MTL::Buffer>::operator=((i - 57), a3);
  v16[0] = __s1;
  v16[1] = strlen(__s1);
  re::DynamicString::operator=((i - 33), v16);
  *(i - 1) = 257;
  return v8;
}

char *re::RenderFrame::currentCommandBuffer(re::RenderFrame *this)
{
  v1 = *(this + 575);
  if (v1 && ((*(this + 4608) & 1) != 0 ? (v2 = this + 4616) : (v2 = *(this + 578)), *&v2[24 * v1 - 8]))
  {
    return &v2[24 * v1 - 24];
  }

  else
  {
    return re::RenderFrame::createQueuedCommandBuffer(this);
  }
}

uint64_t re::RenderFrame::createQueuedCommandBuffer(re::RenderFrame *this)
{
  re::RenderFrame::createCommandBuffer(&v5, this);
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(this + 4592, &v5);
  if (*(this + 4608))
  {
    v2 = this + 4616;
  }

  else
  {
    v2 = *(this + 578);
  }

  v3 = &v2[24 * *(this + 575) - 24];

  return v3;
}

void re::RenderFrame::createCommandBuffer(id *__return_ptr a1@<X8>, re::RenderFrame *this@<X0>)
{
  *a1 = -1;
  a1[1] = 0;
  a1[2] = 0;
  v4 = [objc_msgSend(MEMORY[0x1E6974008] alloc)];
  [v4 setErrorOptions_];
  if (*(*(this + 1) + 321) == 1 && (([v4 respondsToSelector_] & 1) != 0 || objc_msgSend(v4, sel_methodSignatureForSelector_, sel_setDisableFineGrainedComputePreemption_)))
  {
    [v4 setDisableFineGrainedComputePreemption_];
  }

  re::mtl::CommandQueue::makeCommandBufferWithDescriptor((*(this + 3) + 280), v4, &v5);
  re::ObjCObject::operator=(a1 + 2, &v5);
  a1[1] = 0;

  if (v4)
  {
  }
}

__n128 re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = (v4 + 24 * *(a1 + 8));
  result = *a2;
  *v5 = *a2;
  v7 = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v5[1].n128_u64[0] = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::RenderFrame::specifyScopeLane(re::RenderFrame *this, const re::WeakStringID *a2, const unsigned int *a3, const char *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicString::setCapacity(&v16, 0);
  HIBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xFFFFFFFFLL;
  v22 = 0;
  v12 = *a2;
  v15 = *a3;
  v8 = strlen(a4);
  v23[0] = a4;
  v23[1] = v8;
  re::DynamicString::operator=(&v16, v23);
  v18 = 257;
  v9 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((this + 4216), &v12);
  v10 = *(this + 529);
  if (v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))(v9);
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {
  }

  return (v10 - 1);
}

uint64_t re::RenderFrame::specifyScopeLane(void *a1, char *a2, void **a3, const char *a4, int a5)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = -1;
  v23 = 0uLL;
  *(&v22 + 1) = 0;
  re::DynamicString::setCapacity(&v22, 0);
  HIBYTE(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0xFFFFFFFFLL;
  v28 = 0;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = a2 + 2;
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v10;
  NS::SharedPtr<MTL::Buffer>::operator=(&v20, a3);
  v14 = strlen(a4);
  v29[0] = a4;
  v29[1] = v14;
  re::DynamicString::operator=(&v22, v29);
  v24 = 257;
  HIDWORD(v27) = a5;
  v15 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), &v18);
  v16 = a1[529];
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v15);
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v20)
  {

    v20 = 0;
  }

  if (v19)
  {
  }

  return (v16 - 1);
}

void *re::RenderFrame::getStreamNameForWorldRoot(re::DynamicString **this, const re::StringID *a2, const char *a3)
{
  v4 = &a3[64 * (*a2 >> 1) - 0x61C8864680B583E9 + (*a2 >> 3)] ^ (*a2 >> 1);
  v11 = v4;
  if (!this[64] || (v5 = *(this[65] + v4 % *(this + 134)), v5 == 0x7FFFFFFF))
  {
LABEL_6:
    re::DynamicString::format(&v9, this[49], "%s_W%llu", a3, *(a2 + 1), a3);
    v7 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add((this + 64), &v11, &v9);
    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  else
  {
    v6 = this[66];
    while (*(v6 + 6 * v5 + 1) != v4)
    {
      v5 = *(v6 + 12 * v5) & 0x7FFFFFFF;
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    return (v6 + 48 * v5 + 16);
  }

  return v7;
}

void *re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v14);
  if (HIDWORD(v15) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 48 * HIDWORD(v15) + 16);
  }

  v6 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v15, v14);
  v7 = *a2;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  result = (v6 + 16);
  result[3] = a3[3];
  v9 = *a3;
  v10 = a3[1];
  *(result - 1) = v7;
  *result = v9;
  *a3 = 0;
  v11 = a3[2];
  a3[3] = 0;
  v13 = result[1];
  v12 = result[2];
  result[1] = v10;
  result[2] = v11;
  a3[1] = v13;
  a3[2] = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t re::RenderFrame::applyPropertiesToScopeLane(re::RenderFrame *this, const char *a2, const re::RenderGraphTargetDescription *a3, const char *__s)
{
  v4 = __s;
  v46 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    re::DynamicString::format(v45, "applyPropertiesToScopeLane called on unknown graphScope %s.", v9, v4);
    re::RenderFrame::addError(this, v45);
    result = *&v45[0];
    if (*&v45[0] && (BYTE8(v45[0]) & 1) != 0)
    {
      return (*(**&v45[0] + 40))();
    }
  }

  else
  {
    v10 = ScopeOutputIndex;
    v11 = *(this + 498);
    if (v11 <= ScopeOutputIndex)
    {
      v36 = 0;
      memset(v45, 0, sizeof(v45));
      v33 = MEMORY[0x1E69E9C10];
      v37 = 136315906;
      v38 = "operator[]";
      v39 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v40 = 789;
      v41 = 2048;
      v42 = v10;
      v43 = 2048;
      v44 = v11;
      _os_log_send_and_compose_impl(v34, &v36, v45, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v35);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(this + 500) + 136 * ScopeOutputIndex;
    if (a2)
    {
      v13 = *a2;
      if (*a2)
      {
        v14 = a2[1];
        if (v14)
        {
          v15 = a2 + 2;
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v13 &= ~0x8000000000000000;
      }
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v45[0] = v13;
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 40, v45);
    if (result)
    {
      v18 = result;
      if (*(result + 16))
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = (v18[4] + v19);
          *&v45[0] = 0;
          *(&v45[0] + 1) = -1;
          v45[0] = *v21;
          result = re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v45);
          if (*result == 3)
          {
            if (!*(result + 4))
            {
              *(result + 4) = *(a3 + 1);
            }

            if (*(result + 12) == -1)
            {
              v23 = *(a3 + 3);
              *(result + 12) = v23;
              v22 = v23 == -1;
            }

            else
            {
              v22 = 0;
            }

            if (*(result + 16) == -1)
            {
              v25 = *(a3 + 4);
              *(result + 16) = v25;
              v24 = v25 == -1;
            }

            else
            {
              v24 = 0;
            }

            if (*(result + 20) == -1)
            {
              v27 = *(a3 + 5);
              *(result + 20) = v27;
              v26 = v27 == -1;
            }

            else
            {
              v26 = 0;
            }

            if (*(result + 24) == -1)
            {
              v29 = *(a3 + 6);
              *(result + 24) = v29;
              v28 = v29 == -1;
            }

            else
            {
              v28 = 0;
            }

            if (!v22 && !v24 && !v26 && !v28)
            {
              *(result + 8) = *(a3 + 2);
            }

            if (*(result + 28) == -1)
            {
              *(result + 28) = *(a3 + 7);
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 8);
            }

            if (*(result + 88) == -1)
            {
              *(result + 88) = *(a3 + 11);
            }
          }

          ++v20;
          v19 += 16;
        }

        while (v18[2] > v20);
      }

      if (v18[7])
      {
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = (v18[9] + v30);
          *&v45[0] = 0;
          *(&v45[0] + 1) = -1;
          v45[0] = *v32;
          result = re::RenderGraphResourceDescriptions::bufferDescription((this + 3672), v45);
          if (*result == 3)
          {
            if (*(result + 8) == -1)
            {
              *(result + 8) = (*(result + 20) * (*(a3 + 4) * *(a3 + 3)));
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 11);
            }
          }

          ++v31;
          v30 += 16;
        }

        while (v18[7] > v31);
      }
    }
  }

  return result;
}

uint64_t re::RenderFrame::applyPropertiesToScopeLane(re::RenderFrame *this, const char *a2, const re::RenderGraphBufferDescription *a3, const char *__s)
{
  v4 = __s;
  v38 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    re::DynamicString::format(v37, "applyPropertiesToScopeLane called on unknown graphScope %s.", v9, v4);
    re::RenderFrame::addError(this, v37);
    result = *&v37[0];
    if (*&v37[0] && (BYTE8(v37[0]) & 1) != 0)
    {
      return (*(**&v37[0] + 40))();
    }
  }

  else
  {
    v10 = ScopeOutputIndex;
    v11 = *(this + 498);
    if (v11 <= ScopeOutputIndex)
    {
      v28 = 0;
      memset(v37, 0, sizeof(v37));
      v25 = MEMORY[0x1E69E9C10];
      v29 = 136315906;
      v30 = "operator[]";
      v31 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v32 = 789;
      v33 = 2048;
      v34 = v10;
      v35 = 2048;
      v36 = v11;
      _os_log_send_and_compose_impl(v26, &v28, v37, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(this + 500) + 136 * ScopeOutputIndex;
    if (a2)
    {
      v13 = *a2;
      if (*a2)
      {
        v14 = a2[1];
        if (v14)
        {
          v15 = a2 + 2;
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v13 &= ~0x8000000000000000;
      }
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v37[0] = v13;
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 88, v37);
    if (result)
    {
      v18 = result;
      if (*(result + 56))
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = (v18[9] + v19);
          *&v37[0] = 0;
          *(&v37[0] + 1) = -1;
          v37[0] = *v21;
          result = re::RenderGraphResourceDescriptions::bufferDescription((this + 3672), v37);
          if (*result == 3)
          {
            if (*(result + 8) == -1)
            {
              *(result + 8) = *(a3 + 1);
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 4);
            }
          }

          ++v20;
          v19 += 16;
        }

        while (v18[7] > v20);
      }

      if (v18[2])
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = (v18[4] + v22);
          *&v37[0] = 0;
          *(&v37[0] + 1) = -1;
          v37[0] = *v24;
          result = re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v37);
          if (*result == 3)
          {
            if (*(result + 12) == -1)
            {
              *(result + 12) = (*(result + 44) * *(a3 + 1));
            }

            if (*(result + 16) == -1)
            {
              *(result + 16) = (*(result + 48) * *(a3 + 1));
            }

            if (*(result + 88) == -1)
            {
              *(result + 88) = *(a3 + 4);
            }
          }

          ++v23;
          v22 += 16;
        }

        while (v18[2] > v23);
      }
    }
  }

  return result;
}

void re::RenderFrame::pickupScopeLane(re::RenderFrame *this, const char *a2, const char *__s, const char *a4)
{
  v4 = a4;
  if (a4)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v4 = *(this + 46);
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    if (v7)
    {
      v8 = a2 + 2;
      do
      {
        v6 = 31 * v6 + v7;
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  if (*(this + 449) == 1)
  {
    v20 = v10;
    re::RenderFrame::pickupScopeLaneInternal(this, &v20, __s, v4);
  }

  else
  {
    v11 = *(this + 72);
    re::DynamicString::DynamicString(&v14, __s, *(this + 49));
    re::DynamicString::DynamicString(v13, v4, *(this + 49));
    v16 = v11;
    re::DynamicString::DynamicString(v17, &v14);
    re::DynamicString::DynamicString(v18, v13);
    v19 = v10;
    v12 = re::DynamicArray<re::RenderFrame::PickupAction>::add((this + 600), &v16);
    v19 = 0;
    if (v18[0])
    {
      if (v18[1])
      {
        (*(*v18[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v18, 0, sizeof(v18));
    }

    if (v17[0])
    {
      if (v17[1])
      {
        (*(*v17[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v17, 0, sizeof(v17));
    }

    if (*&v13[0])
    {
      if (BYTE8(v13[0]))
      {
        (*(**&v13[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v13, 0, sizeof(v13));
    }

    if (v14)
    {
      if (v15)
      {
        (*(*v14 + 40))(v12);
      }
    }
  }
}

double re::RenderFrame::pickupScopeLaneInternal(void *a1, unint64_t *a2, const char *a3, const char *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, a3);
  if (ScopeOutputIndex == -1)
  {
    v44 = a3;
    v14 = "pickupScopeLane called with unknown srcScopeName %s.";
LABEL_6:
    re::DynamicString::format(&v56, v14, v9, v44);
    re::RenderFrame::addError(a1, &v56);
    if (v56)
    {
      if (BYTE8(v56))
      {
        (*(*v56 + 40))();
      }
    }

    return result;
  }

  v10 = ScopeOutputIndex;
  v11 = ScopeOutputIndex;
  v12 = a1[498];
  if (v12 <= ScopeOutputIndex)
  {
    v55 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v11;
    v67 = 2048;
    v68 = v12;
    _os_log_send_and_compose_impl(v37, &v55, &v56, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1[500] + 136 * ScopeOutputIndex + 40, a2, (0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31), &v56);
  if (HIDWORD(v56) == 0x7FFFFFFF)
  {
    v14 = "pickupScopeLane called with missing lane.";
    goto LABEL_6;
  }

  v16 = re::RenderFrame::getScopeOutputIndex(a1, a4);
  if (v16 == -1)
  {
    if (a1[46] != a4)
    {
      v17 = strlen(a4);
      v18 = re::GrowableLinearAllocator::alloc((a1[506] + 24), v17 + 1, 0);
      memcpy(v18, a4, v17);
      *(v18 + v17) = 0;
      a4 = v18;
    }

    v19 = strlen(a4);
    *&v56 = a4;
    *(&v56 + 1) = v19;
    *&v57 = 0;
    *(&v57 + 1) = &str_67;
    *v58 = 0;
    a4 = &v56;
    memset(&v58[8], 0, 48);
    v60 = 0u;
    memset(v59, 0, sizeof(v59));
    *&v58[44] = 0x7FFFFFFF;
    DWORD1(v60) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((a1 + 496), &v56);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v59);
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v58[8]);
    if (v57)
    {
      if (v57)
      {
      }
    }

    v16 = (*(a1 + 996) - 1);
  }

  if (v10 != v16)
  {
    v10 = a1[498];
    if (v10 > v11)
    {
      a4 = v16;
      if (v10 > v16)
      {
        v21 = a1[500];
        v22 = v21 + 136 * v11;
        v23 = (v21 + 136 * v16);
        v24 = *v23;
        *&v56 = 0;
        *(&v56 + 1) = &str_67;
        v25 = re::StringID::operator=((v22 + 16), &v56);
        if (v56)
        {
          if (v56)
          {
          }
        }

        v26 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v22 + 40, a2);
        if (v26)
        {
          v27 = v26;
          v28 = *(v26 + 88);
          if (v28 != -1)
          {
            v29 = *(v26 + 92);
            if (v29 != -1)
            {
              v54 = *a2;
              v51 = *(v26 + 80);
              v52 = v28;
              v53 = v29;
              re::RenderGraphScopeOutput::addTargetToLane(v23, &v54, &v51, 0);
              v54 = 0;
            }
          }

          if (*(v27 + 16))
          {
            v30 = 0;
            v31 = 0;
            do
            {
              v50 = *a2;
              v32 = (*(v27 + 32) + v30);
              v48 = 0;
              v49 = -1;
              v48 = *v32;
              v49 = v32[1];
              re::RenderGraphScopeOutput::inheritPropertiesFromLane(v23, &v50, &v48);
              v50 = 0;
              ++v31;
              v30 += 16;
            }

            while (*(v27 + 16) > v31);
          }

          if (*(v27 + 56))
          {
            v33 = 0;
            v34 = 0;
            do
            {
              v47 = *a2;
              v35 = (*(v27 + 72) + v33);
              v45 = 0;
              v46 = -1;
              v45 = *v35;
              v46 = v35[1];
              re::RenderGraphScopeOutput::inheritPropertiesFromLane(v23, &v47, &v45);
              v47 = 0;
              ++v34;
              v33 += 16;
            }

            while (*(v27 + 56) > v34);
          }

          *(v27 + 80) = 0;
          result = NAN;
          *(v27 + 88) = -1;
          *(v27 + 16) = 0;
          ++*(v27 + 24);
          *(v27 + 56) = 0;
          ++*(v27 + 64);
        }

        return result;
      }

LABEL_42:
      v55 = 0;
      v57 = 0u;
      memset(v58, 0, 48);
      v56 = 0u;
      v41 = MEMORY[0x1E69E9C10];
      v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v42)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      v64 = 789;
      v65 = 2048;
      v66 = a4;
      v67 = 2048;
      v68 = v10;
      _os_log_send_and_compose_impl(v43, &v55, &v56, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v45, v46);
      _os_crash_msg();
      __break(1u);
    }

LABEL_38:
    v55 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v11;
    v67 = 2048;
    v68 = v10;
    _os_log_send_and_compose_impl(v40, &v55, &v56, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

__n128 re::DynamicArray<re::RenderFrame::PickupAction>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::PickupAction>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = a2->n128_u32[0];
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = a2[2].n128_u64[0];
  v6 = a2[1].n128_u64[0];
  *(v5 + 8) = a2->n128_u64[1];
  a2->n128_u64[1] = 0;
  v7 = a2[1].n128_u64[1];
  a2[2].n128_u64[0] = 0;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  a2[1].n128_u64[0] = v9;
  a2[1].n128_u64[1] = v8;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 40) = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v10;
  result = a2[4];
  *(v5 + 64) = result;
  a2[4].n128_u64[0] = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::makeRenderGraph(re::RenderFrame *this, const char *a2, unint64_t a3)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format(&v12, "Render graph '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", a2, a2, *(this + 45), *(this + 46));
    v8.n128_u64[0] = 1001;
    v8.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v9 = v12;
    v11 = v14;
    v10 = v13;
    v6 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v8);
    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))(v6);
      }
    }
  }

  re::RenderGraph::RenderGraph(&v8, a2, a3, *(this + 45), *(this + 46), *(this + 47));
  re::DynamicArray<re::RenderGraph>::add((this + 3632), &v8);
  re::RenderGraph::~RenderGraph(&v8);
  return *(this + 458) + 112 * *(this + 456) - 112;
}

uint64_t re::DynamicArray<re::RenderGraph>::add(_anonymous_namespace_ *this, re::RenderGraph *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraph>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::RenderGraph::RenderGraph(*(this + 4) + 112 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphExecutable::targetDescription(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 12);
  v3 = *(a1 + 8);
  if (v3 <= v2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 112 * v2;
}

void anonymous namespace::resourcesWithInvalidTextureBound(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_440))
  {
    byte_1EE1B8890 = 0;
    qword_1EE1B8880 = &unk_1F5CCF7F8;
    unk_1EE1B8888 = "RenderFrame allocator";
    __cxa_guard_release(&_MergedGlobals_440);
  }

  if ((atomic_load_explicit(&qword_1EE1B8878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8878))
  {
    dword_1EE1B88B8 = 0;
    xmmword_1EE1B88A8 = 0u;
    xmmword_1EE1B8898 = 0u;
    *algn_1EE1B88BC = 0x7FFFFFFFLL;
    re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&xmmword_1EE1B8898, &qword_1EE1B8880, 3);

    __cxa_guard_release(&qword_1EE1B8878);
  }
}

uint64_t re::RenderGraphExecutable::bufferDescription(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 12);
  v3 = *(a1 + 32);
  if (v3 <= v2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 40) + 48 * v2;
}

re *re::RenderFrame::buildOrRetainCachedGraph(re::RenderFrame *this, re::RenderGraphStats *a2)
{
  v7 = this;
  v431 = *MEMORY[0x1E69E9840];
  v8 = *(this + 41);
  v9 = *(this + 529);
  if (!*(this + 42))
  {
    *(this + 42) = v8;
    *(this + 43) = v9;
  }

  v411 = 0;
  __s = 0;
  v413 = 0;
  v10 = *(this + 49);
  *v420 = 0;
  re::FixedArray<unsigned long long>::init<int>(&v411, v10, v9, v420);
  v12 = *(v7 + 49);
  v13 = *(v7 + 529);
  v402 = v13;
  v397 = a2;
  if (v13)
  {
    if (v13 >> 61)
    {
      goto LABEL_606;
    }

    v14 = 8 * v13;
    v2 = *(v7 + 529);
    v15 = (*(*v12 + 32))(v12, 8 * v13, 8);
    if (!v15)
    {
LABEL_607:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_608:
      v415[0] = 0;
      memset(v420, 0, 80);
      v363 = MEMORY[0x1E69E9C10];
      v364 = v46;
      v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v365)
      {
        v366 = 3;
      }

      else
      {
        v366 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v4;
      v426 = 2048;
      v427 = v364;
      _os_log_send_and_compose_impl(v366, v415, v420, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_612:
      v415[0] = 0;
      memset(v420, 0, 80);
      v367 = MEMORY[0x1E69E9C10];
      v368 = v47;
      v369 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v369)
      {
        v370 = 3;
      }

      else
      {
        v370 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v8;
      v426 = 2048;
      v427 = v368;
      _os_log_send_and_compose_impl(v370, v415, v420, 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_616:
      v415[0] = 0;
      memset(v420, 0, 80);
      v371 = MEMORY[0x1E69E9C10];
      v372 = v47;
      v373 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v373)
      {
        v374 = 3;
      }

      else
      {
        v374 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v4;
      v426 = 2048;
      v427 = v372;
      _os_log_send_and_compose_impl(v374, v415, v420, 80, &dword_1E1C61000, v371, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_620:
      v415[0] = 0;
      memset(v420, 0, 80);
      v375 = MEMORY[0x1E69E9C10];
      v376 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v376)
      {
        v377 = 3;
      }

      else
      {
        v377 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v8;
      v426 = 2048;
      v427 = v400;
      _os_log_send_and_compose_impl(v377, v415, v420, 80, &dword_1E1C61000, v375, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_624:
      v415[0] = 0;
      memset(v420, 0, 80);
      v378 = MEMORY[0x1E69E9C10];
      v379 = v47;
      v380 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v380)
      {
        v381 = 3;
      }

      else
      {
        v381 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v4;
      v426 = 2048;
      v427 = v379;
      _os_log_send_and_compose_impl(v381, v415, v420, 80, &dword_1E1C61000, v378, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_628:
      v415[0] = 0;
      memset(v420, 0, 80);
      v382 = MEMORY[0x1E69E9C10];
      v383 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v383)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      *&v423[14] = 468;
      v424 = 2048;
      v425 = v4;
      v426 = 2048;
      v427 = v400;
      _os_log_send_and_compose_impl(v384, v415, v420, 80, &dword_1E1C61000, v382, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_632:
      v419 = 0;
      v429 = 0u;
      v430 = 0u;
      memset(v428, 0, sizeof(v428));
      v385 = MEMORY[0x1E69E9C10];
      v386 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v386)
      {
        v387 = 3;
      }

      else
      {
        v387 = 2;
      }

      *&v423[14] = 797;
      v424 = 2048;
      v425 = i;
      v426 = 2048;
      v427 = v3;
      _os_log_send_and_compose_impl(v387, &v419, v428, 80, &dword_1E1C61000, v385, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_636:
      v411 = 0;
      v429 = 0u;
      v430 = 0u;
      memset(v428, 0, sizeof(v428));
      v388 = MEMORY[0x1E69E9C10];
      v389 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v423 = 136315906;
      *&v423[4] = "operator[]";
      *&v423[12] = 1024;
      if (v389)
      {
        v390 = 3;
      }

      else
      {
        v390 = 2;
      }

      *&v423[14] = 797;
      v424 = 2048;
      v425 = i;
      v426 = 2048;
      v427 = v3;
      _os_log_send_and_compose_impl(v390, &v411, v428, 80, &dword_1E1C61000, v388, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
      _os_crash_msg();
      __break(1u);
LABEL_640:
      re::internal::assertLog(4, v229, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
      goto LABEL_641;
    }

    v3 = v15;
    v17 = v15;
    v18 = v2;
    if (v2 != 1)
    {
      v19 = v14 - 8;
      memset(v15, 255, v19);
      v18 = v402;
      v17 = (v3 + v19);
    }

    v20 = 0;
    *v17 = -1;
    v21 = xmmword_1E3049620;
    v22 = vdupq_n_s64(v2 - 1);
    v23 = vdupq_n_s64(2uLL);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, v21));
      if (v24.i8[0])
      {
        *(v3 + 8 * v20) = v20;
      }

      if (v24.i8[4])
      {
        *(v3 + 8 * v20 + 8) = v20 + 1;
      }

      v20 += 2;
      v21 = vaddq_s64(v21, v23);
    }

    while (((v18 + 1) & 0x3FFFFFFFFFFFFFFELL) != v20);
    v25 = *(v7 + 49);
    v26 = *(v7 + 529);
  }

  else
  {
    v26 = 0;
    v3 = 0;
    v25 = *(v7 + 49);
  }

  i = 0xBF58476D1CE4E5B9;
  v408 = 0;
  v409 = 0;
  v410 = 0;
  *v420 = 0;
  re::FixedArray<unsigned long long>::init<int>(&v408, v25, v26, v420);
  v27 = *(v7 + 49);
  if (*(v7 + 1058) <= 1u)
  {
    v28 = 1;
  }

  else
  {
    v28 = *(v7 + 1058);
  }

  memset(v428, 0, 36);
  *(&v428[2].var0 + 1) = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v428, v27, v28);
  if (!*(v7 + 529))
  {
    v4 = 0;
    v404 = v409;
    goto LABEL_88;
  }

  v395 = v12;
  v396 = v8;
  v4 = 0;
  v29 = v410;
  v404 = v409;
  v30 = 104;
  v31 = v413;
  v398 = 0;
  v400 = __s;
  do
  {
    v8 = *(v7 + 531) + 104 * v4;
    v419 = re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(v8);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v428, &v419))
    {
      goto LABEL_69;
    }

    v33 = *(v8 + 8);
    if (v33 || *(v8 + 16))
    {
      i = 0;
      v34 = 1;
      v35 = v402;
      v36 = v404;
      while (1)
      {
        if (v33)
        {
          v2 = *(v7 + 529);
          if (v2 <= i)
          {
            v415[0] = 0;
            memset(v420, 0, 80);
            v266 = MEMORY[0x1E69E9C10];
            v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v423 = 136315906;
            *&v423[4] = "operator[]";
            *&v423[12] = 1024;
            if (v267)
            {
              v268 = 3;
            }

            else
            {
              v268 = 2;
            }

            *&v423[14] = 789;
            v424 = 2048;
            v425 = i;
            v426 = 2048;
            v427 = v2;
            _os_log_send_and_compose_impl(v268, v415, v420, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
            _os_crash_msg();
            __break(1u);
LABEL_490:
            v415[0] = 0;
            memset(v420, 0, 80);
            v269 = MEMORY[0x1E69E9C10];
            v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v423 = 136315906;
            *&v423[4] = "operator[]";
            *&v423[12] = 1024;
            if (v270)
            {
              v271 = 3;
            }

            else
            {
              v271 = 2;
            }

            *&v423[14] = 789;
            v424 = 2048;
            v425 = i;
            v426 = 2048;
            v427 = v2;
            _os_log_send_and_compose_impl(v271, v415, v420, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
            _os_crash_msg();
            __break(1u);
LABEL_494:
            *v423 = 0;
            memset(v420, 0, 80);
            v272 = MEMORY[0x1E69E9C10];
            v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v428[0].var0 = 136315906;
            *(&v428[0].var0 + 1) = "operator[]";
            WORD2(v428[0].var1) = 1024;
            if (v273)
            {
              v274 = 3;
            }

            else
            {
              v274 = 2;
            }

            *(&v428[0].var1 + 6) = 789;
            *(&v428[1].var0 + 1) = 2048;
            *(&v428[1].var0 + 1) = v2;
            WORD2(v428[1].var1) = 2048;
            *(&v428[1].var1 + 6) = v8;
            _os_log_send_and_compose_impl(v274, v423, v420, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
            _os_crash_msg();
            __break(1u);
LABEL_498:
            *v423 = 0;
            memset(v420, 0, 80);
            v275 = MEMORY[0x1E69E9C10];
            v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v428[0].var0 = 136315906;
            *(&v428[0].var0 + 1) = "operator[]";
            WORD2(v428[0].var1) = 1024;
            if (v276)
            {
              v277 = 3;
            }

            else
            {
              v277 = 2;
            }

            *(&v428[0].var1 + 6) = 789;
            *(&v428[1].var0 + 1) = 2048;
            *(&v428[1].var0 + 1) = v2;
            WORD2(v428[1].var1) = 2048;
            *(&v428[1].var1 + 6) = v3;
            _os_log_send_and_compose_impl(v277, v423, v420, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
            _os_crash_msg();
            __break(1u);
            goto LABEL_502;
          }

          if (*(*(v7 + 531) + 104 * i + 8) == v33)
          {
            break;
          }
        }

        v37 = *(v8 + 16);
        if (v37)
        {
          v2 = *(v7 + 529);
          if (v2 <= i)
          {
            goto LABEL_490;
          }

          v38 = *(v7 + 531) + 104 * i;
          if (*(v38 + 16) == v37 && *(v38 + 92) == *(v8 + 92))
          {
            break;
          }
        }

        i = v34;
        _CF = v4 >= v34++;
        if (!_CF)
        {
          goto LABEL_39;
        }
      }

      if (v402 <= v4)
      {
        goto LABEL_566;
      }

      *(v3 + 8 * v4) = i;
      if (v404 <= i)
      {
        goto LABEL_570;
      }

      if (v404 <= v4)
      {
        goto LABEL_574;
      }

      *(v29 + 8 * v4) = *(v29 + 8 * i);
      if (v400 <= i)
      {
        goto LABEL_578;
      }

      *(v31 + 8 * i) ^= v419;
LABEL_39:
      if (v402 <= v4)
      {
        goto LABEL_534;
      }

      if (*(v3 + 8 * v4) == v4)
      {
        i = 0xBF58476D1CE4E5B9;
        if (v33)
        {
          v33 = [v33 protectionOptions];
          v36 = v404;
        }

        if (v36 <= v4)
        {
          goto LABEL_558;
        }

        v40 = *(v29 + 8 * v4) | v33;
        *(v29 + 8 * v4) = v40;
        v41 = *(v8 + 16);
        if (v41)
        {
          v41 = [v41 protectionOptions];
          v40 = *(v29 + 8 * v4);
        }

        v42 = v41 | v40;
        *(v29 + 8 * v4) = v42;
        v43 = *(v7 + 55) & v42;
        *(v29 + 8 * v4) = v43;
        if (v400 <= v4)
        {
LABEL_562:
          v415[0] = 0;
          memset(v420, 0, 80);
          v327 = MEMORY[0x1E69E9C10];
          v328 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v328)
          {
            v329 = 3;
          }

          else
          {
            v329 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v4;
          v426 = 2048;
          v427 = v400;
          _os_log_send_and_compose_impl(v329, v415, v420, 80, &dword_1E1C61000, v327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_566:
          v415[0] = 0;
          memset(v420, 0, 80);
          v330 = MEMORY[0x1E69E9C10];
          v331 = v35;
          v332 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v332)
          {
            v333 = 3;
          }

          else
          {
            v333 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v4;
          v426 = 2048;
          v427 = v331;
          _os_log_send_and_compose_impl(v333, v415, v420, 80, &dword_1E1C61000, v330, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_570:
          v415[0] = 0;
          memset(v420, 0, 80);
          v334 = MEMORY[0x1E69E9C10];
          v335 = v36;
          v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v336)
          {
            v337 = 3;
          }

          else
          {
            v337 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = i;
          v426 = 2048;
          v427 = v335;
          _os_log_send_and_compose_impl(v337, v415, v420, 80, &dword_1E1C61000, v334, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_574:
          v415[0] = 0;
          memset(v420, 0, 80);
          v338 = MEMORY[0x1E69E9C10];
          v29 = v36;
          v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v339)
          {
            v340 = 3;
          }

          else
          {
            v340 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v4;
          v426 = 2048;
          v427 = v29;
          _os_log_send_and_compose_impl(v340, v415, v420, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_578:
          v415[0] = 0;
          memset(v420, 0, 80);
          v341 = MEMORY[0x1E69E9C10];
          v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v342)
          {
            v343 = 3;
          }

          else
          {
            v343 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = i;
          v426 = 2048;
          v427 = v400;
          _os_log_send_and_compose_impl(v343, v415, v420, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_582:
          *v423 = 0;
          memset(v420, 0, 80);
          v344 = MEMORY[0x1E69E9C10];
          v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v428[0].var0 = 136315906;
          *(&v428[0].var0 + 1) = "operator[]";
          WORD2(v428[0].var1) = 1024;
          if (v345)
          {
            v346 = 3;
          }

          else
          {
            v346 = 2;
          }

          *(&v428[0].var1 + 6) = 789;
          *(&v428[1].var0 + 1) = 2048;
          *(&v428[1].var0 + 1) = v29;
          WORD2(v428[1].var1) = 2048;
          *(&v428[1].var1 + 6) = v2;
          _os_log_send_and_compose_impl(v346, v423, v420, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_586:
          v419 = 0;
          v429 = 0u;
          v430 = 0u;
          memset(v428, 0, sizeof(v428));
          v347 = MEMORY[0x1E69E9C10];
          v348 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v348)
          {
            v349 = 3;
          }

          else
          {
            v349 = 2;
          }

          *&v423[14] = 789;
          v424 = 2048;
          v425 = v8;
          v426 = 2048;
          v427 = i;
          _os_log_send_and_compose_impl(v349, &v419, v428, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_590:
          v411 = 0;
          v166 = v423;
          v429 = 0u;
          v430 = 0u;
          memset(v428, 0, sizeof(v428));
          v350 = MEMORY[0x1E69E9C10];
          v351 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v351)
          {
            v352 = 3;
          }

          else
          {
            v352 = 2;
          }

          *&v423[14] = 789;
          v424 = 2048;
          v425 = v8;
          v426 = 2048;
          v427 = v3;
          _os_log_send_and_compose_impl(v352, &v411, v428, 80, &dword_1E1C61000, v350, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_594:
          v411 = 0;
          v171 = v423;
          v429 = 0u;
          v430 = 0u;
          memset(v428, 0, sizeof(v428));
          v353 = MEMORY[0x1E69E9C10];
          v354 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v354)
          {
            v355 = 3;
          }

          else
          {
            v355 = 2;
          }

          *&v423[14] = 789;
          v424 = 2048;
          v425 = v166;
          v426 = 2048;
          v427 = v4;
          _os_log_send_and_compose_impl(v355, &v411, v428, 80, &dword_1E1C61000, v353, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_598:
          v411 = 0;
          v3 = v423;
          v429 = 0u;
          v430 = 0u;
          memset(v428, 0, sizeof(v428));
          v356 = MEMORY[0x1E69E9C10];
          v357 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v357)
          {
            v358 = 3;
          }

          else
          {
            v358 = 2;
          }

          *&v423[14] = 789;
          v424 = 2048;
          v425 = v166;
          v426 = 2048;
          v427 = v171;
          _os_log_send_and_compose_impl(v358, &v411, v428, 80, &dword_1E1C61000, v356, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_602:
          v415[0] = 0;
          memset(v420, 0, 80);
          v359 = MEMORY[0x1E69E9C10];
          v360 = v46;
          v361 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v361)
          {
            v362 = 3;
          }

          else
          {
            v362 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v4;
          v426 = 2048;
          v427 = v360;
          _os_log_send_and_compose_impl(v362, v415, v420, 80, &dword_1E1C61000, v359, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_606:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v13);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v391, v392);
          __break(1u);
          goto LABEL_607;
        }

        v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27));
        *(v31 + 8 * v4) ^= (v44 >> 31) ^ v44;
        goto LABEL_68;
      }
    }

    else
    {
      v45 = *(v8 + 24);
      v46 = v402;
      v47 = v404;
      if (v45 == -1)
      {
        re::DynamicString::format(v420, "SpecifyScopeLaneParameters index %lu does not specify a texture, texture descriptor, or render layer handle.", v32, v4);
        re::RenderFrame::addError(v7, v420);
        if (*v420 && (v420[8] & 1) != 0)
        {
          (*(**v420 + 40))();
        }

        goto LABEL_68;
      }

      v8 = 0;
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
      v398 ^= v48 ^ (v48 >> 31) ^ (((v48 ^ (v48 >> 31)) << 6) - 0x61C8864680B583E9 + ((v48 ^ (v48 >> 31)) >> 2) + v419);
      i = *(v7 + 529);
      v49 = 1;
      while (1)
      {
        if (i <= v8)
        {
          goto LABEL_526;
        }

        if (*(*(v7 + 531) + 104 * v8 + 24) == v45)
        {
          break;
        }

        v8 = v49;
        _CF = v4 >= v49++;
        if (!_CF)
        {
          goto LABEL_62;
        }
      }

      if (v402 <= v4)
      {
        goto LABEL_608;
      }

      *(v3 + 8 * v4) = v8;
      if (v404 <= v8)
      {
        goto LABEL_612;
      }

      if (v404 <= v4)
      {
        goto LABEL_616;
      }

      *(v29 + 8 * v4) = *(v29 + 8 * v8);
      if (v400 <= v8)
      {
        goto LABEL_620;
      }

      *(v31 + 8 * v8) ^= v419;
LABEL_62:
      if (v402 <= v4)
      {
        goto LABEL_602;
      }

      if (*(v3 + 8 * v4) == v4)
      {
        i = 0xBF58476D1CE4E5B9;
        if (*(v7 + 553) > v45 && (v50 = *(*(v7 + 554) + 32 * v45)) != 0)
        {
          v51 = v50;
          v52 = [v51 protectionOptions];
          v47 = v404;
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        if (v47 <= v4)
        {
          goto LABEL_624;
        }

        v54 = *(v29 + 8 * v4) | v52;
        *(v29 + 8 * v4) = v54;
        v55 = *(v7 + 55) & v54;
        *(v29 + 8 * v4) = v55;
        if (v400 <= v4)
        {
          goto LABEL_628;
        }

        v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v55 ^ (v55 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v55 ^ (v55 >> 30))) >> 27));
        *(v31 + 8 * v4) ^= (v56 >> 31) ^ v56;

        goto LABEL_68;
      }
    }

    i = 0xBF58476D1CE4E5B9;
LABEL_68:
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v428, &v419);
LABEL_69:
    ++v4;
    v53 = *(v7 + 529);
  }

  while (v4 < v53);
  if (v53)
  {
    v57 = 0;
    v30 = 0;
    v58 = v402;
    v59 = v404;
    v4 = v398;
    v8 = v400;
    do
    {
      if (v400 == v30)
      {
        goto LABEL_530;
      }

      v60 = *(v31 + 8 * v30);
      v61 = *(v7 + 531);
      if (v60)
      {
        *(v61 + v57 + 80) = v60;
        if (v404 <= v30)
        {
          goto LABEL_538;
        }

        v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) >> 27));
        v4 ^= (v62 >> 31) ^ v62;
      }

      else
      {
        *(v61 + v57 + 96) = 1;
        if (v402 <= v30)
        {
          goto LABEL_546;
        }

        v2 = *(v3 + 8 * v30);
        if (v400 <= v2)
        {
LABEL_550:
          v415[0] = 0;
          memset(v420, 0, 80);
          v316 = MEMORY[0x1E69E9C10];
          v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v317)
          {
            v318 = 3;
          }

          else
          {
            v318 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v2;
          v426 = 2048;
          v427 = v8;
          _os_log_send_and_compose_impl(v318, v415, v420, 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_554:
          v415[0] = 0;
          memset(v420, 0, 80);
          v319 = MEMORY[0x1E69E9C10];
          v320 = v59;
          v321 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v321)
          {
            v322 = 3;
          }

          else
          {
            v322 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v30;
          v426 = 2048;
          v427 = v320;
          _os_log_send_and_compose_impl(v322, v415, v420, 80, &dword_1E1C61000, v319, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_558:
          v415[0] = 0;
          memset(v420, 0, 80);
          v323 = MEMORY[0x1E69E9C10];
          v324 = v36;
          v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          *&v423[12] = 1024;
          if (v325)
          {
            v326 = 3;
          }

          else
          {
            v326 = 2;
          }

          *&v423[14] = 468;
          v424 = 2048;
          v425 = v4;
          v426 = 2048;
          v427 = v324;
          _os_log_send_and_compose_impl(v326, v415, v420, 80, &dword_1E1C61000, v323, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
          goto LABEL_562;
        }

        *(v61 + v57 + 80) = *(v31 + 8 * v2);
        if (v404 <= v30)
        {
          goto LABEL_554;
        }
      }

      *(v61 + v57 + 72) = *(v29 + 8 * v30++);
      v57 += 104;
    }

    while (v53 != v30);
    v12 = v395;
    v8 = v396;
  }

  else
  {
    v12 = v395;
    v8 = v396;
    v4 = v398;
  }

LABEL_88:
  v63.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v428);
  if (v408 && v404)
  {
    (*(*v408 + 40))(v63.n128_f64[0]);
  }

  if (v12 && v402)
  {
    (*(*v12 + 40))(v12, v3, v63);
  }

  if (v411 && __s)
  {
    (*(*v411 + 40))(v63);
  }

  v64 = ((v8 << 6) - 0x61C8864680B583E9 + (v8 >> 2) + v4) ^ v8;
  *(v7 + 41) = v64;
  v65 = *(v7 + 77);
  if (v65)
  {
    v3 = 0;
    v8 = 0;
    v66 = *(v7 + 79);
    v67 = 80 * v65;
    do
    {
      v68 = v66 + v3;
      if (*(v66 + v3 + 16))
      {
        v69 = *(v68 + 24);
      }

      else
      {
        v69 = (v68 + 17);
      }

      v70 = strlen(v69);
      if (v70)
      {
        MurmurHash3_x64_128(v69, v70, 0, v420);
        v4 = (*&v420[8] - 0x61C8864680B583E9 + (*v420 << 6) + (*v420 >> 2)) ^ *v420;
      }

      else
      {
        v4 = 0;
      }

      v71 = v66 + v3;
      if (*(v66 + v3 + 48))
      {
        v72 = *(v71 + 56);
      }

      else
      {
        v72 = (v71 + 49);
      }

      v73 = strlen(v72);
      v74 = 0x9E3779B97F4A7C17;
      if (v73)
      {
        MurmurHash3_x64_128(v72, v73, 0, v420);
        v74 = ((*&v420[8] - 0x61C8864680B583E9 + (*v420 << 6) + (*v420 >> 2)) ^ *v420) - 0x61C8864680B583E9;
      }

      v75 = ((v4 >> 2) + (v4 << 6) + v74) ^ v4;
      v76 = 0xBF58476D1CE4E5B9 * (*(v66 + v3) ^ (*(v66 + v3) >> 30));
      v77 = ((v8 << 6) - 0x61C8864680B583E9 + (v8 >> 2) + ((0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) ^ ((0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) >> 31))) ^ v8;
      v8 = (((*(v66 + v3 + 72) - 0x61C8864680B583E9 + (v75 << 6) + (v75 >> 2)) ^ v75) - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
      v3 += 80;
    }

    while (v67 != v3);
  }

  else
  {
    v8 = 0;
  }

  v78 = ((v64 << 6) - 0x61C8864680B583E9 + (v64 >> 2) + v8) ^ v64;
  *(v7 + 256) = 1;
  v79 = (*(v7 + 24) - 0x61C8864680B583E9 + (v78 << 6) + (v78 >> 2)) ^ v78;
  *(v7 + 41) = v79;
  v80 = *(v7 + 48);
  if (*(v7 + 449) == 1)
  {
    v79 = v80 & 0xFFFFFFFFFFFFFFFLL;
    *(v7 + 41) = v80 & 0xFFFFFFFFFFFFFFFLL;
  }

  v81 = *v7;
  *v420 = v79;
  v82 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v81 + 424), v420);
  if (v82 != -1)
  {
    *(*(v81 + 432) + 24 * v82 + 16) = v80;
    CachedGraph = re::RenderGraphManager::getCachedGraph(*v7, *(v7 + 41), *(v7 + 48));
    v84 = re::RenderFrame::fillSpecifyParameterScopeOutputs(*(v7 + 529), *(v7 + 531), CachedGraph[97], CachedGraph[95]);
    v399 = CachedGraph;
    v85 = CachedGraph[100];
    if (v85)
    {
      v86 = CachedGraph[102];
      v401 = &v86[5 * v85];
      do
      {
        v87 = *(v86 + 24);
        if (v87 == 1)
        {
          i = v86[4];
        }

        v405 = *v86;
        v88 = *(v86 + 3);
        v403 = *(v86 + 2);
        v89 = *(v86 + 16);
        memset(v420, 0, 24);
        *&v420[24] = -1;
        memset(&v420[32], 0, 32);
        re::DynamicString::setCapacity(&v420[32], 0);
        v420[65] = 0;
        *&v420[72] = 0;
        *&v420[80] = 0;
        *&v420[88] = 0xFFFFFFFFLL;
        LOBYTE(v421) = 0;
        if (v87)
        {
          v90 = *(v7 + 529);
          if (v90)
          {
            v91 = 0;
            v92 = *(v7 + 531);
            v93 = 104 * v90;
            while (1)
            {
              v94 = v92 + v91;
              if (re::RenderFrame::SpecifyScopeLaneParameters::scopeHash((v92 + v91)) == i)
              {
                break;
              }

              v91 += 104;
              if (v93 == v91)
              {
                goto LABEL_127;
              }
            }

            *v420 = *v94;
            NS::SharedPtr<MTL::Buffer>::operator=(&v420[8], (v94 + 8));
            NS::SharedPtr<MTL::Buffer>::operator=(&v420[16], (v94 + 16));
            *&v420[24] = *(v94 + 24);
            re::DynamicString::operator=(&v420[32], (v94 + 32));
            v95 = *(v94 + 64);
            v96 = *(v94 + 80);
            LOBYTE(v421) = *(v94 + 96);
            *&v420[64] = v95;
            *&v420[80] = v96;
          }
        }

LABEL_127:
        *v420 = v405;
        *&v420[24] = v403;
        *&v420[88] = v88;
        v420[64] = v89;
        v97 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((v7 + 4216), v420);
        if (*&v420[32])
        {
          if (v420[40])
          {
            (*(**&v420[32] + 40))(v97);
          }

          memset(&v420[32], 0, 32);
        }

        if (*&v420[16])
        {

          *&v420[16] = 0;
        }

        v84 = *&v420[8];
        if (*&v420[8])
        {
        }

        v86 += 5;
      }

      while (v86 != v401);
    }

    v29 = v397;
    v98 = v399[81];
    v99 = v399[79];
    if (v397)
    {
      v100 = 8;
      goto LABEL_138;
    }

    goto LABEL_140;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v415, 5099, *(v7 + 449) != 1, *(v7 + 72), 0, 0);
  *(v7 + 352) = 1;
  if (*(v7 + 72))
  {
    v110 = 0;
    v111 = 0;
    LODWORD(v3) = 0;
    do
    {
      v8 = *(v7 + 74) + 40 * v110;
      re::RenderFrame::setRenderGraphScopes(v7, *v8, *(v8 + 8));
      if (*(v7 + 77) > v111)
      {
        v113 = v111;
        while (1)
        {
          v114 = *(v7 + 79) + 80 * v113;
          if (*v114 > v3)
          {
            break;
          }

          v414 = *(v114 + 72);
          if (*(v114 + 16))
          {
            v115 = *(v114 + 24);
          }

          else
          {
            v115 = (v114 + 17);
          }

          if (*(v114 + 48))
          {
            v116 = *(v114 + 56);
          }

          else
          {
            v116 = (v114 + 49);
          }

          v113 = (v111 + 1);
          v112.n128_f64[0] = re::RenderFrame::pickupScopeLaneInternal(v7, &v414, v115, v116);
          v414 = 0;
          v111 = v113;
          if (*(v7 + 77) <= v113)
          {
            goto LABEL_168;
          }
        }
      }

      v113 = v111;
LABEL_168:
      v117 = *(v8 + 24);
      if (v117)
      {
        v118 = *(v8 + 32);
        v4 = 8 * v117;
        do
        {
          if (*v118)
          {
            (*(**v118 + 24))(*v118, *v8, *(v8 + 8), v7, v112);
          }

          ++v118;
          v4 -= 8;
        }

        while (v4);
      }

      *(v7 + 45) = &str_122;
      *(v7 + 46) = &str_122;
      *(v7 + 47) = 0;
      v110 = (v3 + 1);
      v111 = v113;
      v3 = v110;
    }

    while (*(v7 + 72) > v110);
  }

  re::RenderFrame::fillSpecifyParameterScopeOutputs(*(v7 + 529), *(v7 + 531), *(v7 + 500), *(v7 + 498));
  v2 = *(v7 + 498);
  if (v2)
  {
    v119 = *(v7 + 500);
    v120 = (v2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v121 = xmmword_1E3049640;
    v122 = xmmword_1E3049620;
    v123 = vdupq_n_s64(v2 - 1);
    v124 = vdupq_n_s64(4uLL);
    do
    {
      v125 = vmovn_s64(vcgeq_u64(v123, v122));
      if (vuzp1_s16(v125, *v121.i8).u8[0])
      {
        v119[8] = 0;
      }

      if (vuzp1_s16(v125, *&v121).i8[2])
      {
        v119[42] = 0;
      }

      if (vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v123, *&v121))).i32[1])
      {
        v119[76] = 0;
        v119[110] = 0;
      }

      v121 = vaddq_s64(v121, v124);
      v122 = vaddq_s64(v122, v124);
      v119 += 136;
      v120 -= 4;
    }

    while (v120);
    v29 = 0;
    v3 = 136;
    v30 = 144;
    v8 = 1;
    do
    {
      v126 = *(v7 + 500) + 136 * v29;
      v127 = *(v126 + 72);
      if (v127)
      {
        v128 = 0;
        v129 = *(v126 + 56);
        while (1)
        {
          v130 = *v129;
          v129 += 36;
          if (v130 < 0)
          {
            break;
          }

          if (v127 == ++v128)
          {
            LODWORD(v128) = *(v126 + 72);
            break;
          }
        }
      }

      else
      {
        LODWORD(v128) = 0;
      }

      if (v128 != v127)
      {
        do
        {
          v2 = *(v126 + 56) + 144 * v128;
          if (*(v2 + 104) != -1 && *(v2 + 108) != -1 && *re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), (v2 + 96)) == 3)
          {
            *(v2 + 128) = 1;
            v4 = *(v7 + 498);
            if (v4 <= v29)
            {
              goto LABEL_510;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

          v131 = *(v2 + 32);
          if (v131)
          {
            v4 = 0;
            for (i = 0; v131 > i; ++i)
            {
              v132 = *(v2 + 48) + v4;
              if (*(v132 + 12) != *(v2 + 108))
              {
                if (*re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v132) == 3)
                {
                  *(v2 + 128) = 1;
                  v4 = *(v7 + 498);
                  if (v4 > v29)
                  {
                    ++*(*(v7 + 500) + 136 * v29 + 32);
                    break;
                  }

LABEL_502:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v278 = MEMORY[0x1E69E9C10];
                  v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v279)
                  {
                    v280 = 3;
                  }

                  else
                  {
                    v280 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl(v280, v423, v420, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_506;
                }

                v131 = *(v2 + 32);
              }

              v4 += 16;
            }
          }

          if ((*(v2 + 128) & 1) == 0 && *(v2 + 72))
          {
            v4 = 0;
            i = 0;
            while (*re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), (*(v2 + 88) + v4)) != 3)
            {
              ++i;
              v4 += 16;
              if (*(v2 + 72) <= i)
              {
                goto LABEL_213;
              }
            }

            *(v2 + 128) = 1;
            v2 = *(v7 + 498);
            if (v2 <= v29)
            {
              goto LABEL_518;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

LABEL_213:
          v133 = *(v126 + 72);
          if (v133 <= v128 + 1)
          {
            v134 = v128 + 1;
          }

          else
          {
            v134 = *(v126 + 72);
          }

          while (v134 - 1 != v128)
          {
            LODWORD(v128) = v128 + 1;
            if ((*(*(v126 + 56) + 144 * v128) & 0x80000000) != 0)
            {
              goto LABEL_220;
            }
          }

          LODWORD(v128) = v134;
LABEL_220:
          ;
        }

        while (v128 != v133);
        v2 = *(v7 + 498);
      }

      if (v2 <= v29)
      {
        goto LABEL_542;
      }

      v135 = *(v7 + 500) + 136 * v29;
      v136 = *(v135 + 120);
      if (v136)
      {
        v137 = 0;
        v138 = *(v135 + 104);
        while (1)
        {
          v139 = *v138;
          v138 += 36;
          if (v139 < 0)
          {
            break;
          }

          if (v136 == ++v137)
          {
            LODWORD(v137) = *(v135 + 120);
            break;
          }
        }
      }

      else
      {
        LODWORD(v137) = 0;
      }

      if (v137 != v136)
      {
        do
        {
          v2 = *(v135 + 104) + 144 * v137;
          if (*(v2 + 120) != -1 && *(v2 + 124) != -1 && *re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), (v2 + 112)) == 3)
          {
            *(v2 + 128) = 1;
            v4 = *(v7 + 498);
            if (v4 <= v29)
            {
              goto LABEL_514;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

          v140 = *(v2 + 72);
          if (v140)
          {
            v4 = 0;
            for (i = 0; v140 > i; ++i)
            {
              v141 = *(v2 + 88) + v4;
              if (*(v141 + 12) != *(v2 + 124))
              {
                if (*re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v141) == 3)
                {
                  *(v2 + 128) = 1;
                  v4 = *(v7 + 498);
                  if (v4 > v29)
                  {
                    ++*(*(v7 + 500) + 136 * v29 + 32);
                    break;
                  }

LABEL_506:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v281 = MEMORY[0x1E69E9C10];
                  v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v282)
                  {
                    v283 = 3;
                  }

                  else
                  {
                    v283 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl(v283, v423, v420, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_510:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v284 = MEMORY[0x1E69E9C10];
                  v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v285)
                  {
                    v286 = 3;
                  }

                  else
                  {
                    v286 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl(v286, v423, v420, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_514:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v287 = MEMORY[0x1E69E9C10];
                  v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v288)
                  {
                    v289 = 3;
                  }

                  else
                  {
                    v289 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl(v289, v423, v420, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_518:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v290 = MEMORY[0x1E69E9C10];
                  v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v291)
                  {
                    v292 = 3;
                  }

                  else
                  {
                    v292 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl(v292, v423, v420, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_522:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v293 = MEMORY[0x1E69E9C10];
                  v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v294)
                  {
                    v295 = 3;
                  }

                  else
                  {
                    v295 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl(v295, v423, v420, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_526:
                  v415[0] = 0;
                  memset(v420, 0, 80);
                  v296 = MEMORY[0x1E69E9C10];
                  v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v423 = 136315906;
                  *&v423[4] = "operator[]";
                  *&v423[12] = 1024;
                  if (v297)
                  {
                    v298 = 3;
                  }

                  else
                  {
                    v298 = 2;
                  }

                  *&v423[14] = 789;
                  v424 = 2048;
                  v425 = v8;
                  v426 = 2048;
                  v427 = i;
                  _os_log_send_and_compose_impl(v298, v415, v420, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_530:
                  v415[0] = 0;
                  memset(v420, 0, 80);
                  v299 = MEMORY[0x1E69E9C10];
                  v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v423 = 136315906;
                  *&v423[4] = "operator[]";
                  *&v423[12] = 1024;
                  if (v300)
                  {
                    v301 = 3;
                  }

                  else
                  {
                    v301 = 2;
                  }

                  *&v423[14] = 468;
                  v424 = 2048;
                  v425 = v8;
                  v426 = 2048;
                  v427 = v8;
                  _os_log_send_and_compose_impl(v301, v415, v420, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_534:
                  v415[0] = 0;
                  memset(v420, 0, 80);
                  v302 = MEMORY[0x1E69E9C10];
                  v303 = v35;
                  v304 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v423 = 136315906;
                  *&v423[4] = "operator[]";
                  *&v423[12] = 1024;
                  if (v304)
                  {
                    v305 = 3;
                  }

                  else
                  {
                    v305 = 2;
                  }

                  *&v423[14] = 468;
                  v424 = 2048;
                  v425 = v4;
                  v426 = 2048;
                  v427 = v303;
                  _os_log_send_and_compose_impl(v305, v415, v420, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_538:
                  v415[0] = 0;
                  memset(v420, 0, 80);
                  v306 = MEMORY[0x1E69E9C10];
                  v29 = v59;
                  v307 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v423 = 136315906;
                  *&v423[4] = "operator[]";
                  *&v423[12] = 1024;
                  if (v307)
                  {
                    v308 = 3;
                  }

                  else
                  {
                    v308 = 2;
                  }

                  *&v423[14] = 468;
                  v424 = 2048;
                  v425 = v30;
                  v426 = 2048;
                  v427 = v29;
                  _os_log_send_and_compose_impl(v308, v415, v420, 80, &dword_1E1C61000, v306, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_542:
                  *v423 = 0;
                  memset(v420, 0, 80);
                  v309 = MEMORY[0x1E69E9C10];
                  v310 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v428[0].var0 = 136315906;
                  *(&v428[0].var0 + 1) = "operator[]";
                  WORD2(v428[0].var1) = 1024;
                  if (v310)
                  {
                    v311 = 3;
                  }

                  else
                  {
                    v311 = 2;
                  }

                  *(&v428[0].var1 + 6) = 789;
                  *(&v428[1].var0 + 1) = 2048;
                  *(&v428[1].var0 + 1) = v29;
                  WORD2(v428[1].var1) = 2048;
                  *(&v428[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl(v311, v423, v420, 80, &dword_1E1C61000, v309, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
LABEL_546:
                  v415[0] = 0;
                  memset(v420, 0, 80);
                  v312 = MEMORY[0x1E69E9C10];
                  v313 = v58;
                  v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v423 = 136315906;
                  *&v423[4] = "operator[]";
                  *&v423[12] = 1024;
                  if (v314)
                  {
                    v315 = 3;
                  }

                  else
                  {
                    v315 = 2;
                  }

                  *&v423[14] = 468;
                  v424 = 2048;
                  v425 = v30;
                  v426 = 2048;
                  v427 = v313;
                  _os_log_send_and_compose_impl(v315, v415, v420, 80, &dword_1E1C61000, v312, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v393, v394);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_550;
                }

                v140 = *(v2 + 72);
              }

              v4 += 16;
            }
          }

          if ((*(v2 + 128) & 1) == 0 && *(v2 + 32))
          {
            v4 = 0;
            i = 0;
            while (*re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), (*(v2 + 48) + v4)) != 3)
            {
              ++i;
              v4 += 16;
              if (*(v2 + 32) <= i)
              {
                goto LABEL_252;
              }
            }

            *(v2 + 128) = 1;
            v2 = *(v7 + 498);
            if (v2 <= v29)
            {
              goto LABEL_522;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

LABEL_252:
          v142 = *(v135 + 120);
          if (v142 <= v137 + 1)
          {
            v143 = v137 + 1;
          }

          else
          {
            v143 = *(v135 + 120);
          }

          while (v143 - 1 != v137)
          {
            LODWORD(v137) = v137 + 1;
            if ((*(*(v135 + 104) + 144 * v137) & 0x80000000) != 0)
            {
              goto LABEL_259;
            }
          }

          LODWORD(v137) = v143;
LABEL_259:
          ;
        }

        while (v137 != v142);
        v2 = *(v7 + 498);
      }

      ++v29;
    }

    while (v2 > v29);
  }

  v144 = *(v7 + 529);
  if (v144)
  {
    v145 = 0;
    v146 = *(v7 + 531);
    do
    {
      v147 = (v146 + 104 * v145);
      v29 = *(v147 + 22);
      if (v2 >= v29)
      {
        if (v2 <= v29)
        {
          goto LABEL_582;
        }

        v148 = *(v7 + 500) + 136 * v29;
        v149 = *(v148 + 32);
        if (v149)
        {
          v150 = *(v148 + 72);
          if (v150)
          {
            v151 = 0;
            v152 = *(v148 + 56);
            while (1)
            {
              v153 = *v152;
              v152 += 36;
              if (v153 < 0)
              {
                break;
              }

              if (v150 == ++v151)
              {
                LODWORD(v151) = *(v148 + 72);
                break;
              }
            }
          }

          else
          {
            LODWORD(v151) = 0;
          }

          if (v151 != v150)
          {
            v154 = *(v148 + 56);
            v155 = *v147;
            do
            {
              v156 = v154 + 144 * v151;
              if (v155 == *(v156 + 8) && *(v156 + 128) == 1)
              {
                *(v156 + 128) = 0;
                *(v156 + 136) = v145;
                *(v148 + 32) = --v149;
              }

              if (v150 <= v151 + 1)
              {
                v157 = v151 + 1;
              }

              else
              {
                v157 = v150;
              }

              while (v157 - 1 != v151)
              {
                LODWORD(v151) = v151 + 1;
                if ((*(v154 + 144 * v151) & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              LODWORD(v151) = v157;
LABEL_285:
              ;
            }

            while (v151 != v150);
          }

          v158 = *(v148 + 120);
          if (v158)
          {
            v159 = 0;
            v160 = *(v148 + 104);
            while (1)
            {
              v161 = *v160;
              v160 += 36;
              if (v161 < 0)
              {
                break;
              }

              if (v158 == ++v159)
              {
                LODWORD(v159) = *(v148 + 120);
                break;
              }
            }
          }

          else
          {
            LODWORD(v159) = 0;
          }

          if (v159 != v158)
          {
            v162 = *(v148 + 104);
            v163 = *v147;
            do
            {
              v164 = v162 + 144 * v159;
              if (v163 == *(v164 + 8) && *(v164 + 128) == 1)
              {
                *(v164 + 128) = 0;
                *(v164 + 136) = v145;
                *(v148 + 32) = --v149;
              }

              if (v158 <= v159 + 1)
              {
                v165 = v159 + 1;
              }

              else
              {
                v165 = v158;
              }

              while (v165 - 1 != v159)
              {
                LODWORD(v159) = v159 + 1;
                if ((*(v162 + 144 * v159) & 0x80000000) != 0)
                {
                  goto LABEL_304;
                }
              }

              LODWORD(v159) = v165;
LABEL_304:
              ;
            }

            while (v159 != v158);
          }
        }
      }

      ++v145;
    }

    while (v145 != v144);
  }

  if (v2)
  {
    v166 = 0;
    v167 = 0;
    i = 257;
    do
    {
      v168 = *(v7 + 500) + 136 * v166;
      if (*(v168 + 32))
      {
        *v420 = 65290051;
        v169 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v168 + 40, v420);
        if (v169)
        {
          v170 = v169;
          if (*(v169 + 112) == 1)
          {
            memset(v420, 0, 24);
            *&v420[24] = -1;
            memset(&v420[32], 0, 32);
            re::DynamicString::setCapacity(&v420[32], 0);
            v420[65] = 0;
            *&v420[72] = 0;
            *&v420[80] = 0;
            *&v420[88] = 0xFFFFFFFFLL;
            LOBYTE(v421) = 0;
            v4 = *(v7 + 498);
            if (v4 <= v166)
            {
              goto LABEL_594;
            }

            re::DynamicString::operator=(&v420[32], *(v7 + 500) + 136 * v166);
            *&v420[88] = v167;
            *v420 = 65290051;
            *&v420[24] = 0;
            *&v420[64] = 257;
            re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((v7 + 4216), v420);
            *&v428[0].var0 = *v420;
            v428[0].var1 = __PAIR64__(*&v420[88], *&v420[24]);
            *&v428[1].var0 = *&v420[64];
            LOBYTE(v428[1].var1) = 0;
            re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add((v7 + 4008), v428);
            *(v170 + 112) = 0;
            *(v170 + 15) = *(v7 + 529) - 1;
            v171 = *(v7 + 498);
            if (v171 <= v166)
            {
              goto LABEL_598;
            }

            --*(*(v7 + 500) + 136 * v166 + 32);
            if (*&v420[32])
            {
              if (v420[40])
              {
                (*(**&v420[32] + 40))();
              }

              memset(&v420[32], 0, 32);
            }

            if (*&v420[16])
            {

              *&v420[16] = 0;
            }

            if (*&v420[8])
            {
            }
          }
        }
      }

      v166 = ++v167;
    }

    while (*(v7 + 498) > v167);
  }

  re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(v7, re::RenderFrame::kDepthOutputLaneID);
  re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(v7, re::RenderFrame::kStencilOutputLaneID);
  v173 = *(v7 + 553);
  __asm { FMOV            V8.2S, #1.0 }

  if (v173)
  {
    v177 = 0;
    v178 = 0;
    i = 1;
    do
    {
      if (v173 > v178 && *(*(v7 + 554) + v177))
      {
        *v420 = 3;
        memset(&v420[12], 255, 24);
        *&v420[8] = 2;
        *&v420[36] = 0;
        v420[40] = 0;
        *&v420[44] = _D8;
        *&v420[52] = xmmword_1E30A3B60;
        *&v420[68] = 0x2000000000;
        memset(&v420[76], 255, 20);
        v421 = 0;
        v422 = 0;
        *v420 = 2;
        v179 = re::StringID::StringID(v423, v428);
        v421 = ((*v423 >> 3) + 0x8756A0D28FEDB54 + (*v423 >> 1 << 6)) ^ (*v423 >> 1);
        if (v423[0])
        {
          if (v423[0])
          {
          }
        }

        *&v423[8] = &str_67;
        *v423 = 0;
        v422 = 1;
        re::RenderFrame::createTarget(&v411, v7, v420, v428[0].var1);
        re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 3800), &v411);
        if (*&v428[0].var0)
        {
          if (*&v428[0].var0)
          {
          }
        }
      }

      else
      {
        *v420 = 0;
        *&v420[8] = -1;
        re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 3800), v420);
      }

      ++v178;
      v173 = *(v7 + 553);
      v177 += 32;
    }

    while (v173 > v178);
  }

  if (*(v7 + 529))
  {
    v181 = 0;
    i = 0;
    v182 = &off_1E871F520;
    do
    {
      v183 = *(v7 + 531);
      v184 = v183 + v181;
      if ((*(v183 + v181 + 96) & 1) == 0)
      {
        if (*(v184 + 8))
        {
          if (*(v183 + v181 + 88) != -1)
          {
            goto LABEL_345;
          }
        }

        else
        {
          if (*(v183 + v181 + 16))
          {
            _ZF = *(v183 + v181 + 88) == -1;
          }

          else
          {
            _ZF = 1;
          }

          if (!_ZF)
          {
LABEL_345:
            *&v420[4] = 0x200000000;
            memset(&v420[12], 255, 24);
            *&v420[36] = 0;
            v420[40] = 0;
            *&v420[44] = _D8;
            *&v420[52] = xmmword_1E30A3B60;
            *&v420[68] = 0x2000000000;
            memset(&v420[76], 255, 20);
            *v420 = 2;
            v190 = v183 + v181;
            v421 = ((*(v183 + v181 + 80) << 6) + 0x8756A0D28FEDB54 + (*(v183 + v181 + 80) >> 2)) ^ *(v183 + v181 + 80);
            v422 = 1;
            if (i > 0x1F)
            {
              {
              }

              v192 = re::DynamicString::format(v428, "SpecifyLaneOp%d", v172, i);
              if (v428[0].var1)
              {
                v193 = *&v428[1].var0;
              }

              else
              {
                v193 = &v428[0].var1 + 1;
              }

              v411 = 0;
              __s = &str_67;
              if (*&v428[0].var0 && (v428[0].var1 & 1) != 0)
              {
                (*(**&v428[0].var0 + 40))();
              }

              v191 = __s;
            }

            else
            {
              v191 = *v182;
              v411 = 2 * *(v182 - 1);
              __s = v191;
            }

            re::RenderFrame::createTarget(v428, v7, v420, v191);
            if (v411)
            {
              if (v411)
              {
              }
            }

            v411 = *(v190 + 80);
            v186 = v7 + 3840;
            v187 = &v411;
            v188 = v428;
            goto LABEL_360;
          }
        }
      }

      v185 = *(v184 + 80);
      *v420 = 0;
      *&v420[8] = -1;
      *&v428[0].var0 = v185;
      v186 = v7 + 3840;
      v187 = v428;
      v188 = v420;
LABEL_360:
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v186, v187, v188);
      ++i;
      v182 += 2;
      v181 += 104;
    }

    while (*(v7 + 529) > i);
  }

  v195 = *(v7 + 498);
  if (v195)
  {
    v29 = *(v7 + 500);
    v406 = v29 + 136 * v195;
    v30 = 144;
    do
    {
      v4 = *(v29 + 72);
      if (v4)
      {
        i = 0;
        v196 = *(v29 + 56);
        do
        {
          v197 = *v196;
          v196 += 36;
          if (v197 < 0)
          {
            goto LABEL_369;
          }

          ++i;
        }

        while (v4 != i);
        i = *(v29 + 72);
      }

      else
      {
        i = 0;
      }

LABEL_369:
      while (i != v4)
      {
        v3 = *(v29 + 56) + 144 * i;
        v2 = *(v3 + 136);
        if (v2 == -1)
        {
          for (j = *(v29 + 24); ; j = *(v212 + 24))
          {
            ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(v7, j);
            if (ScopeOutputIndex == -1)
            {
              goto LABEL_382;
            }

            v210 = ScopeOutputIndex;
            v211 = *(v7 + 498);
            if (v211 <= ScopeOutputIndex)
            {
              break;
            }

            v212 = *(v7 + 500) + 136 * ScopeOutputIndex;
            if (!re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v212 + 40, (v3 + 8)))
            {
              v2 = MEMORY[0x78];
              if (MEMORY[0x78] != -1)
              {
                goto LABEL_371;
              }
            }
          }

          *v423 = 0;
          memset(v420, 0, 80);
          v7 = MEMORY[0x1E69E9C10];
          v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v428[0].var0 = 136315906;
          *(&v428[0].var0 + 1) = "operator[]";
          WORD2(v428[0].var1) = 1024;
          if (v264)
          {
            v265 = 3;
          }

          else
          {
            v265 = 2;
          }

          *(&v428[0].var1 + 6) = 789;
          *(&v428[1].var0 + 1) = 2048;
          *(&v428[1].var0 + 1) = v210;
          WORD2(v428[1].var1) = 2048;
          *(&v428[1].var1 + 6) = v211;
          _os_log_send_and_compose_impl(v265, v423, v420, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v393, v394);
          _os_crash_msg();
          __break(1u);
LABEL_483:
          re::RenderGraphManager::addGraphToCache(*v7, *(v7 + 41), v210, *(v7 + 48));
          v98 = *(v210 + 648);
          v99 = *(v210 + 632);
          if (v29)
          {
            v100 = 12;
LABEL_138:
            v101 = 4;
LABEL_139:
            ++*(v29 + v101);
            ++*(v29 + v100);
          }

          goto LABEL_140;
        }

LABEL_371:
        v8 = *(v7 + 529);
        if (v8 <= v2)
        {
          goto LABEL_494;
        }

        v198 = *(v7 + 531) + 104 * v2;
        v199 = *(v3 + 32);
        if (v199)
        {
          v200 = *(v3 + 48);
          v201 = 16 * v199;
          do
          {
            v202 = re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v200);
            if (*(v202 + 88) == -1)
            {
              *(v202 + 88) = *(v198 + 72);
            }

            v200 += 2;
            v201 -= 16;
          }

          while (v201);
        }

        v203 = *(v3 + 72);
        if (v203)
        {
          v204 = *(v3 + 88);
          v205 = 16 * v203;
          do
          {
            v206 = re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v204);
            if (*(v206 + 32) == -1)
            {
              *(v206 + 32) = *(v198 + 72);
            }

            v204 += 2;
            v205 -= 16;
          }

          while (v205);
        }

LABEL_382:
        LODWORD(v207) = *(v29 + 72);
        if (v207 <= i + 1)
        {
          v207 = (i + 1);
        }

        else
        {
          v207 = v207;
        }

        while (v207 - 1 != i)
        {
          i = (i + 1);
          if ((*(*(v29 + 56) + 144 * i) & 0x80000000) != 0)
          {
            goto LABEL_369;
          }
        }

        i = v207;
      }

      v4 = *(v29 + 120);
      if (v4)
      {
        i = 0;
        v213 = *(v29 + 104);
        do
        {
          v214 = *v213;
          v213 += 36;
          if (v214 < 0)
          {
            goto LABEL_420;
          }

          ++i;
        }

        while (v4 != i);
        i = *(v29 + 120);
      }

      else
      {
        i = 0;
      }

LABEL_420:
      while (i != v4)
      {
        v8 = *(v29 + 104) + 144 * i;
        v2 = *(v8 + 136);
        if (v2 != -1)
        {
          v3 = *(v7 + 529);
          if (v3 <= v2)
          {
            goto LABEL_498;
          }

          v215 = *(v7 + 531) + 104 * v2;
          v216 = *(v8 + 32);
          if (v216)
          {
            v217 = *(v8 + 48);
            v218 = 16 * v216;
            do
            {
              v219 = re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v217);
              if (*(v219 + 88) == -1)
              {
                *(v219 + 88) = *(v215 + 72);
              }

              v217 += 2;
              v218 -= 16;
            }

            while (v218);
          }

          v220 = *(v8 + 72);
          if (v220)
          {
            v221 = *(v8 + 88);
            v222 = 16 * v220;
            do
            {
              v223 = re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v221);
              if (*(v223 + 32) == -1)
              {
                *(v223 + 32) = *(v215 + 72);
              }

              v221 += 2;
              v222 -= 16;
            }

            while (v222);
          }
        }

        LODWORD(v224) = *(v29 + 120);
        if (v224 <= i + 1)
        {
          v224 = (i + 1);
        }

        else
        {
          v224 = v224;
        }

        while (v224 - 1 != i)
        {
          i = (i + 1);
          if ((*(*(v29 + 104) + 144 * i) & 0x80000000) != 0)
          {
            goto LABEL_420;
          }
        }

        i = v224;
      }

      v29 += 136;
    }

    while (v29 != v406);
  }

  v3 = v7 + 3376;
  re::RenderGraphBuilder::RenderGraphBuilder(v420, (v7 + 3672), v7 + 3968, v7 + 3376);
  v225 = *(v7 + 456);
  if (v225)
  {
    v226 = *(v7 + 458);
    v227 = 112 * v225;
    do
    {
      re::RenderGraph::setup(v226, v420, (v7 + 32));
      v226 += 112;
      v227 -= 112;
    }

    while (v227);
  }

  CompiledGraph = re::RenderGraphBuilder::createCompiledGraph(v420, v7 + 3632);
  v210 = CompiledGraph;
  if ((CompiledGraph + 784) != (v7 + 4008))
  {
    v230 = *(CompiledGraph + 784);
    v231 = *(v7 + 501);
    if (v230)
    {
      v232 = v231 == 0;
    }

    else
    {
      v232 = 1;
    }

    if (!v232 && v230 != v231)
    {
      goto LABEL_640;
    }

    *(CompiledGraph + 784) = v231;
    *(v7 + 501) = v230;
    v234 = *(CompiledGraph + 792);
    *(CompiledGraph + 792) = *(v7 + 502);
    *(v7 + 502) = v234;
    v235 = *(CompiledGraph + 800);
    *(CompiledGraph + 800) = *(v7 + 503);
    *(v7 + 503) = v235;
    v236 = *(CompiledGraph + 816);
    *(CompiledGraph + 816) = *(v7 + 505);
    *(v7 + 505) = v236;
    ++*(v7 + 1008);
    ++*(CompiledGraph + 808);
  }

  v407 = (v7 + 3376);
  v237 = *(v7 + 506);
  v238 = *(CompiledGraph + 824);
  if (v238 != v237)
  {
    if (v237)
    {
      v239 = (v237 + 8);
      v238 = *(v210 + 824);
    }

    if (v238)
    {
    }

    *(v210 + 824) = v237;
  }

  v240 = *(v7 + 529);
  if (v240)
  {
    v241 = 0;
    v242 = 0;
    v244 = *(v210 + 320);
    v243 = *(v210 + 328);
    v4 = 136;
    do
    {
      v245 = *(v7 + 531);
      v8 = *(v245 + v241 + 88);
      if (v8 != -1)
      {
        i = *(v210 + 760);
        if (i <= v8)
        {
          goto LABEL_586;
        }

        v246 = *(v210 + 776) + 136 * v8;
        v3 = v245 + v241;
        v418 = *(v245 + v241 + 80);
        if (*(v245 + v241 + 8) || *(v3 + 16))
        {
          v417 = *v3;
          v247 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v243, &v418);
          v411 = *v247;
          __s = *(v247 + 8);
          re::RenderFrame::specifyScopeLaneInternal(&v417, &v411, v246, *(v3 + 64), v210);
          v417 = 0;
        }

        else
        {
          i = *(v245 + v241 + 24);
          if (i != -1 && *(v7 + 553) > i && *(*(v7 + 554) + 32 * i))
          {
            v416 = *(v245 + v241);
            v3 = *(v244 + 16);
            if (v3 <= i)
            {
              goto LABEL_632;
            }

            v248 = (*(v244 + 32) + 16 * i);
            v408 = *v248;
            v409 = v248[1];
            re::RenderFrame::specifyScopeLaneInternal(&v416, &v408, v246, *(v245 + v241 + 64), v210);
            v416 = 0;
          }
        }

        v240 = *(v7 + 529);
      }

      ++v242;
      v241 += 104;
    }

    while (v240 > v242);
    if (v240)
    {
      v249 = 0;
      v250 = 0;
      v252 = *(v210 + 320);
      v251 = *(v210 + 328);
      v4 = 136;
      do
      {
        v253 = *(v7 + 531);
        v254 = (v253 + v249);
        v8 = *(v253 + v249 + 88);
        if (v8 != -1)
        {
          v3 = *(v210 + 760);
          if (v3 <= v8)
          {
            goto LABEL_590;
          }

          v255 = *(v210 + 776) + 136 * v8;
          v408 = *(v253 + v249 + 80);
          if (*(v253 + v249 + 8) || *(v253 + v249 + 16))
          {
            v419 = *v254;
            re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v251, &v408);
            re::RenderFrame::makeRenderGraphManagedInternal(&v419, v255, v210);
            v419 = 0;
          }

          else
          {
            i = *(v253 + v249 + 24);
            if (i != -1 && *(v7 + 553) > i && *(*(v7 + 554) + 32 * i))
            {
              v418 = *v254;
              v3 = *(v252 + 16);
              if (v3 <= i)
              {
                goto LABEL_636;
              }

              re::RenderFrame::makeRenderGraphManagedInternal(&v418, v255, v210);
              v418 = 0;
            }
          }

          v240 = *(v7 + 529);
        }

        ++v250;
        v249 += 104;
      }

      while (v240 > v250);
    }
  }

  re::RenderGraphResourceDescriptions::resolveResourceSources(v210);
  *(v7 + 352) = 0;
  re::RenderGraphBuilder::~RenderGraphBuilder(v420);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v415, v256, v257);
  re::RenderGraphProcessorManager::process(*v7, v210, v7 + 427);
  v29 = v397;
  if (v407 != (v210 + 576))
  {
    v259 = *v407;
    v260 = *(v210 + 576);
    if (!*v407 || !v260 || v259 == v260)
    {
      *(v7 + 422) = v260;
      *(v210 + 576) = v259;
      v261 = *(v7 + 423);
      *(v7 + 423) = *(v210 + 584);
      *(v210 + 584) = v261;
      v262 = *(v7 + 424);
      *(v7 + 424) = *(v210 + 592);
      *(v210 + 592) = v262;
      v263 = *(v7 + 426);
      *(v7 + 426) = *(v210 + 608);
      *(v210 + 608) = v263;
      ++*(v210 + 600);
      ++*(v7 + 850);
      goto LABEL_476;
    }

LABEL_641:
    re::internal::assertLog(4, v258, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

LABEL_476:
  re::RenderGraphCompiled::validateAttachmentsDuringGraphBuild(v210, *(v7 + 49));
  if (!*(v7 + 424))
  {
    goto LABEL_483;
  }

  re::internal::destroyPersistent<re::RenderGraphCompiled>("buildOrRetainCachedGraph", 1017, v210);
  if (v397)
  {
    v99 = 0;
    v98 = 0;
    ++*(v397 + 1);
    v100 = 16;
    v101 = 12;
    goto LABEL_139;
  }

  v98 = 0;
  v99 = 0;
LABEL_140:
  if (*(v7 + 1127))
  {
    v102 = *(v7 + 1126);
    if (v102)
    {
      memset_pattern16(*(v7 + 561), &unk_1E304C660, 4 * v102);
    }

    if (*(v7 + 1128))
    {
      v103 = 0;
      do
      {
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(v7 + 4480, v103++);
      }

      while (v103 < *(v7 + 1128));
    }

    *(v7 + 1129) = 0x7FFFFFFF;
    *(v7 + 4508) = 0;
    ++*(v7 + 1130);
  }

  if (v99)
  {
    v104 = v98 + 112 * v99;
    do
    {
      v105 = *(v98 + 16);
      if (v105)
      {
        v106 = *(v98 + 32);
        v107 = 8 * v105;
        do
        {
          v108 = *v106++;
          (*(*v108 + 32))(v108, v7 + 4480);
          v107 -= 8;
        }

        while (v107);
      }

      v98 += 112;
    }

    while (v98 != v104);
  }

  return re::RenderGraphManager::deleteRemovedProviders(*v7);
}