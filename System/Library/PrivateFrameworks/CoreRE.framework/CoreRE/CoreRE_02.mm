re::DynamicString *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        result = re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v8 + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

double re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 56;
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

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(&v14, *(a2 + 32), *(a2 + 32) + 96 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 96 * v8;
      v12 = 96 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        re::StringID::StringID((v10 + v11 + 40), (v9 + v11 + 40));
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v10 + v11 + 56, (v9 + v11 + 56));
        v9 += 96;
        v12 -= 96;
        v10 += 96;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(&v13, *(a2 + 32), *(a2 + 32) + 96 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 96 * v4;
      v7 = 96 * v5 - 96 * v4;
      do
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v6 + 56);
        re::StringID::destroyString((v6 + 40));
        re::DynamicString::deinit(v6);
        v6 += 96;
        v7 -= 96;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 96 * v9);
        v11 = (v7 + 7);
        v12 = (v8 + 56);
        do
        {
          *(v11 - 40) = 0u;
          *(v11 - 56) = 0u;
          *(v11 - 56) = *(v12 - 7);
          *(v12 - 7) = 0;
          *(v11 - 32) = *(v12 - 4);
          *(v12 - 4) = 0;
          v14 = *(v11 - 48);
          v13 = *(v11 - 40);
          v15 = *(v12 - 5);
          *(v11 - 48) = *(v12 - 6);
          *(v11 - 40) = v15;
          *(v12 - 6) = v14;
          *(v12 - 5) = v13;
          *(v11 - 24) = *(v12 - 24);
          re::StringID::StringID((v11 - 16), v12 - 1);
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v11, v12);
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v12);
          re::StringID::destroyString((v12 - 2));
          re::DynamicString::deinit((v12 - 7));
          v11 += 96;
          v16 = v12 + 5;
          v12 += 12;
        }

        while (v16 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(&v13, *(a2 + 32), (*(a2 + 32) + 32 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = (*(a2 + 32) + 32 * v8);
      v10 = *(a1 + 32) + 32 * v8;
      v11 = 32 * v4 - 32 * v8;
      do
      {
        re::StringID::StringID(v10, v9);
        re::StringID::StringID((v10 + 16), v9 + 1);
        v9 += 2;
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(&v12, *(a2 + 32), (*(a2 + 32) + 32 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + 32 * v4;
      v7 = 32 * v5 - 32 * v4;
      do
      {
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 32;
        v7 -= 32;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void *re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 4;
          v8 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::StringID::operator=(a4 + 2, v5 + 2);
      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *,re::Pair<re::DynamicString,re::RigDataTypeClass,true> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::DynamicString::operator=((a4 + v7), (a2 + v7));
    *(a4 + v7 + 32) = *(a2 + v7 + 32);
    re::StringID::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(a4 + v7 + 56, (a2 + v7 + 56));
    v7 += 96;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 32 * v2;
    do
    {
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  ++*(result + 24);
}

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::operator=(v13, v11);
        v11 = (v11 + 40);
        v13 = (v13 + 40);
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = (v11 + 8 * v15);
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::RigDataValue>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::operator=(v6, v7);
        v7 = (v7 + 40);
        v6 = (v6 + 40);
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::RigDataValue>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::RigDataValue>::deinit(v8);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::operator=(re::RigDataValue *a1, re::RigDataValue *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigDataValue>::copy(a1, a2);
        ++*(a1 + 6);
      }

      else
      {
        re::DynamicArray<re::RigDataValue>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = *(a2 + 2);
      *a1 = v4;
      re::DynamicArray<re::RigDataValue>::setCapacity(a1, v5);
      ++*(a1 + 6);
      re::DynamicArray<re::RigDataValue>::copy(a1, a2);
    }
  }

  return a1;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::copy(re::RigDataValue *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::RigDataValue>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 288 * v12;
      do
      {
        result = re::RigDataValue::operator=(v13, v11);
        v11 += 288;
        v13 += 36;
        v14 -= 288;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 9 * v12;
      v16 = (v11 + 32 * v15);
      result = &v13[4 * v15];
      v17 = 288 * v4 - 32 * v15;
      do
      {
        v18 = re::RigDataValue::RigDataValue(result, v16);
        v16 = (v16 + 288);
        result = (v18 + 288);
        v17 -= 288;
      }

      while (v17);
    }
  }

  else
  {
    v6 = *(result + 4);
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 288 * v4;
      do
      {
        result = re::RigDataValue::operator=(v6, v7);
        v7 += 288;
        v6 += 36;
        v8 -= 288;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = &v6[36 * v4];
      v9 = 288 * v5 - 288 * v4;
      do
      {
        re::RigDataValue::~RigDataValue(result);
        result = (v10 + 288);
        v9 -= 288;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::clear(re::RigDataValue *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 288 * v2;
    do
    {
      re::RigDataValue::~RigDataValue(result);
      result = (v4 + 288);
      v3 -= 288;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void *re::DynamicArray<re::RigDataValue>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RigDataValue>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x120uLL))
        {
          v2 = 288 * a2;
          result = (*(*result + 32))(result, 288 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 288, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 288 * v9;
        v11 = v7;
        do
        {
          re::RigDataValue::RigDataValue(v11, v8);
          re::RigDataValue::~RigDataValue(v8);
          v8 = (v8 + 288);
          v11 = (v11 + 288);
          v10 -= 288;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::RigDataValue>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigDataValue>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigDataValue>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::StringID>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::StringID>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::StringID>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::StringID>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 16 * v13;
      do
      {
        v16 = re::StringID::operator=(v14, v12);
        v12 += 2;
        v14 = v16 + 2;
        v15 -= 16;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = &v12[2 * v13];
      v18 = &v14[2 * v13];
      v19 = 16 * v4 - 16 * v13;
      do
      {
        v20 = re::StringID::StringID(v18, v17++);
        v18 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 16 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v7 += 2;
        v6 = v9 + 2;
        v8 -= 16;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[2 * v4];
      v11 = 16 * v5 - 16 * v4;
      do
      {
        re::StringID::destroyString(v10);
        v10 = (v10 + 16);
        v11 -= 16;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::StringID>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::StringID>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          re::StringID::destroyString(v8);
          v8 = (v8 + 16);
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<unsigned long>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<unsigned long>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::RigHierarchyJointTransform>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 160 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 160 * v5, (*(a2 + 32) + 160 * v5), 160 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 160 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 160 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::StringID>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 16);
          v5 -= 16;
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

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(uint64_t a1)
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
        do
        {
          re::DynamicArray<re::RigDataValue>::deinit(v3);
          v3 += 40;
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

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v3 + 56);
          re::StringID::destroyString((v3 + 40));
          re::DynamicString::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

uint64_t re::RigDataValue::getRuntimeValue<int>(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v8 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v8 + 224);
    if (v6 > v5)
    {
      v7 = *(v8 + 232);
      return v7 + 4 * v5;
    }

LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v13, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    v6 = *(v4 + 8);
    if (v6 > v5)
    {
      v7 = *(v4 + 16);
      return v7 + 4 * v5;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v10, &v17, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected runtime value type: %u", v14);
  __break(1u);
  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAD088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 48);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::CollisionCastHit,10ul>::operator[](a1, i);
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

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(uint64_t *a1)
{
  v2 = *a1;
  if (a1[2])
  {
    v3 = a1 + 3;
  }

  else
  {
    v3 = a1[4];
  }

  result = (*(*v2 + 40))(v2, v3[a1[1] - 1]);
  v5 = *(a1 + 4);
  --a1[1];
  *(a1 + 4) = v5 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v3 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v3 | 1) + 2;
  }

  return result;
}

unint64_t re::BucketArray<re::CollisionCastHit,10ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 / 0xA;
  v3 = *(a1 + 8);
  if (v3 <= a2 / 0xA)
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

  return *(v5 + 8 * v2) + 80 * (a2 % 0xA);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
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

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 / 0xA;
  v3 = *(a1 + 8);
  if (v3 <= a2 / 0xA)
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

  return *(v5 + 8 * v2) + 80 * (a2 % 0xA);
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAD108;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 48);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_AnimationBlendTreeNodeDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18DE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DF10, "AnimationBlendTreeNodeDescription");
    __cxa_guard_release(&qword_1EE18DE58);
  }

  return &unk_1EE18DF10;
}

void re::initInfo_AnimationBlendTreeNodeDescription(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x9EA2DEB19834991ELL;
  v32[1] = "AnimationBlendTreeNodeDescription";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE18DE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE60))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18DEA0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "type";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18DEA8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "path";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE18DEB0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "defaultValue";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE18DEB8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::StringID>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "weightPath";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x4000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE18DEC0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "defaultWeight";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x5000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE18DEC8 = v30;
    __cxa_guard_release(&qword_1EE18DE60);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18DEA0;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationBlendTreeNodeDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationBlendTreeNodeDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationBlendTreeNodeDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationBlendTreeNodeDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void *re::IntrospectionInfo<re::StringID>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionStringID::IntrospectionStringID(&re::IntrospectionInfo<re::StringID>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized)
    {
LABEL_8:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::IntrospectionInfo<re::StringID>::get(BOOL)::info, a2);
  xmmword_1EE1863E0 = v9;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::AnimationBlendTreeNodeDescription>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
  a3[6] = 0;
  a3[7] = &str_67;
  a3[8] = 0;
  a3[9] = &str_67;
}

void re::internal::defaultDestruct<re::AnimationBlendTreeNodeDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::AnimationBlendTreeNodeDescription>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  result[6] = 0;
  result[7] = &str_67;
  result[8] = 0;
  result[9] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationBlendTreeNodeDescription>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_AnimationBlendTreeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18DE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DFA0, "AnimationBlendTreeDefinition");
    __cxa_guard_release(&qword_1EE18DE70);
  }

  return &unk_1EE18DFA0;
}

void re::initInfo_AnimationBlendTreeDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0xD8F7C530701B187CLL;
  v26[1] = "AnimationBlendTreeDefinition";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE18DE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE78))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AnimationBlendTreeNodeDescription>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "nodes";
    *(v8 + 16) = &qword_1EE18DED0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE18DE88 = v8;
    v9 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(1, v10, v11, v12, v13, v14);
    v16 = (*(*v9 + 32))(v9, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "connections";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2800000002;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE18DE90 = v16;
    v17 = re::introspectionAllocator();
    v23 = re::introspect_BlendSpaceDefinition(1, v18, v19, v20, v21, v22);
    v24 = (*(*v17 + 32))(v17, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "blendSpace";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x5000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE18DE98 = v24;
    __cxa_guard_release(&qword_1EE18DE78);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18DE88;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationBlendTreeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationBlendTreeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationBlendTreeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationBlendTreeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v25 = v27;
}

void re::IntrospectionInfo<re::DynamicArray<re::AnimationBlendTreeNodeDescription>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18DE80, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18DE80);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18DED0);
      qword_1EE18DED0 = &unk_1F5CAD188;
      __cxa_guard_release(&qword_1EE18DE80);
    }
  }

  if ((_MergedGlobals_10 & 1) == 0)
  {
    v1 = qword_1EE18DE68;
    if (qword_1EE18DE68 || (v1 = re::allocInfo_AnimationBlendTreeNodeDescription(a1), qword_1EE18DE68 = v1, re::initInfo_AnimationBlendTreeNodeDescription(v1, v2, v3, v4), (_MergedGlobals_10 & 1) == 0))
    {
      _MergedGlobals_10 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18DED0, 0);
      qword_1EE18DEE0 = 0x2800000003;
      dword_1EE18DEE8 = v5;
      word_1EE18DEEC = 0;
      *&xmmword_1EE18DEF0 = 0;
      *(&xmmword_1EE18DEF0 + 1) = 0xFFFFFFFFLL;
      qword_1EE18DF00 = v1;
      unk_1EE18DF08 = 0;
      qword_1EE18DED0 = &unk_1F5CAD188;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE18DED0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE18DEF0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(int a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info) = &unk_1F5CAD220;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v7 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v7)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
    }

    v9 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::lock(v9);
  }

  v10 = re::introspect_RigGraphConnection(1, a2, a3, a4, a5, a6);
  if ((re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v11 = v10;
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized = 1;
    v12 = *(v10 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info, 0);
    qword_1EE186B90 = 0x2800000003;
    dword_1EE186B98 = v12;
    word_1EE186B9C = 0;
    *&xmmword_1EE186BA0 = 0;
    *(&xmmword_1EE186BA0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186BB0 = v11;
    unk_1EE186BB8 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info = &unk_1F5CAD220;
    re::IntrospectionRegistry::add(v13, v14);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info);
    if (BYTE8(v19))
    {
      v15 = v20;
    }

    else
    {
      v15 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v19 = *(v11 + 32);
    xmmword_1EE186BA0 = v18;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v16 = re::introspectionSharedMutex(v10);
    std::__shared_mutex_base::unlock(v16);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::AnimationBlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  *(a3 + 160) = 0;
  result = 0.0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::AnimationBlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a3 + 128);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 88);
  re::DynamicArray<re::RigGraphConnection>::deinit((a3 + 40));

  return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a3);
}

double re::internal::defaultConstructV2<re::AnimationBlendTreeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::AnimationBlendTreeDefinition>(uint64_t a1)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1 + 128);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 88);
  re::DynamicArray<re::RigGraphConnection>::deinit((a1 + 40));

  return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a1);
}

uint64_t re::AnimationBlendTree<float>::createInstance(uint64_t a1, re::Allocator *a2, void *a3)
{
  v175 = *MEMORY[0x1E69E9840];
  v7 = (*(*a2 + 32))(a2, 456, 8);
  *v7 = &unk_1F5CAD3A8;
  v8 = *(a1 + 16);
  *(v7 + 8) = *(a1 + 8);
  *(v7 + 16) = v8;
  re::StringID::StringID((v7 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v7 + 40), (a1 + 40));
  *(v7 + 72) = *(a1 + 72);
  *v7 = &unk_1F5CAD2B8;
  *(v7 + 80) = a1;
  *(v7 + 88) = 0;
  v9 = v7 + 88;
  *(v7 + 96) = 0;
  *(v7 + 416) = 0;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 312) = 0u;
  *(v7 + 328) = 0u;
  *(v7 + 344) = 0u;
  *(v7 + 356) = 0u;
  *(v7 + 408) = 0;
  *(v7 + 376) = 0u;
  *(v7 + 392) = 0u;
  *(v7 + 8) = 47;
  *(v7 + 440) = 0;
  *(v7 + 448) = a2;
  if (*(a1 + 288))
  {
    *(v7 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((v7 + 344), 0);
    ++*(v7 + 368);
    *(v7 + 384) = a2;
    re::DynamicArray<float *>::setCapacity((v7 + 384), 0);
    ++*(v7 + 408);
    goto LABEL_173;
  }

  v10 = (*(*a2 + 32))(a2, 6408, 8);
  *v10 = 0;
  v11 = v10 + 4096;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0;
  *(v10 + 112) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 232) = 0u;
  *(v10 + 280) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 264) = 0u;
  *(v10 + 176) = 1;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 184) = 0u;
  *(v10 + 232) = 0;
  *(v10 + 240) = 0;
  *(v10 + 216) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 264) = 0u;
  v140 = (v10 + 248);
  *(v10 + 280) = 0;
  bzero((v10 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v10 + 296));
  bzero((v10 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v10 + 2360));
  *(v10 + 5344) = 0u;
  *(v10 + 5376) = 0u;
  *(v10 + 5328) = 0u;
  *(v10 + 5344) = 1;
  *(v10 + 5360) = 0u;
  *(v10 + 5352) = 0;
  *(v10 + 5376) = 0;
  *(v10 + 5392) = 0u;
  *(v10 + 5408) = 0u;
  *(v10 + 5424) = 0u;
  *(v10 + 5440) = 0u;
  *(v10 + 5456) = 0u;
  *(v10 + 5472) = 0u;
  *(v10 + 5488) = 0u;
  *(v10 + 5504) = 0u;
  *(v10 + 5520) = 0u;
  *(v10 + 5536) = 0u;
  *(v10 + 5552) = 0u;
  *(v10 + 5568) = 0u;
  *(v10 + 5584) = 0;
  *(v10 + 5480) = 1;
  *(v10 + 5504) = 0;
  *(v10 + 5512) = 0;
  *(v10 + 5488) = 0u;
  *(v10 + 5536) = 0;
  *(v10 + 5544) = 0;
  *(v10 + 5520) = 0u;
  *(v10 + 5592) = 0;
  *(v10 + 5552) = 0u;
  *(v10 + 5568) = 0u;
  *(v10 + 5584) = 0;
  *(v10 + 5600) = &unk_1F5CB2E90;
  *(v10 + 5608) = -1;
  bzero((v10 + 5616), 0x318uLL);
  *(v7 + 440) = v10;
  v12 = *(v7 + 80);
  *v10 = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v10, 0);
  ++*(v10 + 24);
  *(v10 + 40) = a2;
  re::DynamicArray<int>::setCapacity((v10 + 40), 0);
  ++*(v10 + 64);
  re::EvaluationTree::init((v10 + 296), a2);
  re::EvaluationContextManager::init((v10 + 2360), a2);
  re::RigEnvironment::init((v10 + 5328), a2);
  *(v10 + 5432) = a2;
  *(v10 + 5448) = v10 + 5328;
  *(v10 + 5456) = 0;
  *(v10 + 5440) = 0;
  re::RigGraphCompilation::init((v10 + 5464), a2);
  v13 = v12[54];
  *(v10 + 80) = a2;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v10 + 80), v13);
  ++*(v10 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v10 + 80), v12[54]);
  if (v12[54])
  {
    v14 = 0;
    v3 = 0;
    v15 = &v161;
    v11 = 288;
    do
    {
      re::RigGraphNode::inputValue(&v161, (v12 + 10), (v10 + 5328), (v10 + 296), a2, v3);
      re::DynamicArray<re::RigDataValue>::add(v10 + 120, &v161);
      re::RigDataValue::~RigDataValue(&v161);
      v16 = *(v10 + 152) + 288 * *(v10 + 136);
      v17 = *(v16 - 256);
      if (v17 > 5)
      {
        if (*(v16 - 256) <= 7u)
        {
          if (v17 == 6)
          {
            *v160 = xmmword_1E30474D0;
            LODWORD(v161) = 5;
            v162 = 0uLL;
            *(&v161 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2160), &v161);
            *&v161 = *(v10 + 2176) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 504), &v161);
            re::DynamicArray<re::Vector3<float>>::add((v10 + 824), v160);
            v18 = *(v10 + 536);
            v19 = *(v10 + 520);
            goto LABEL_41;
          }

          if (v17 == 7)
          {
            *v160 = 0;
            LODWORD(v161) = 6;
            v162 = 0uLL;
            *(&v161 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2200), &v161);
            *&v161 = *(v10 + 2216) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 544), &v161);
            re::DynamicArray<unsigned long>::add((v10 + 864), v160);
            v18 = *(v10 + 576);
            v19 = *(v10 + 560);
            goto LABEL_41;
          }
        }

        else
        {
          if (v17 == 8)
          {
            *v160 = 0u;
            LODWORD(v161) = 7;
            v162 = 0uLL;
            *(&v161 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v161);
            *&v161 = *(v10 + 2256) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 584), &v161);
            re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v160);
            v18 = *(v10 + 616);
            v19 = *(v10 + 600);
            goto LABEL_41;
          }

          if (v17 == 10)
          {
            v26 = *(v16 - 104);
            re::RigHierarchy::deinit(v26);
            re::RigHierarchy::init(v26, (v10 + 5328), (MEMORY[0x50] + 24), a2, (v10 + 296));
            re::RigHierarchy::getEvaluationSkeletalPose(&v170, v26, a2, 0);
            re::EvaluationSkeletalPose::createInputHandle(&v152, &v170, (v10 + 2360));
            v27 = *(v10 + 96);
            if (v27 <= v3)
            {
              goto LABEL_218;
            }

            re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v10 + 112) + v14), &v152);
            if (v152)
            {
              if (v153)
              {
                (*(*v152 + 40))();
                v153 = 0;
                v154 = 0;
              }

              v152 = 0;
            }

            re::BlendShapeWeights::~BlendShapeWeights(&v170);
          }

          else if (v17 == 13 && (*(v16 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
          {
            v20 = *(v16 - 240);
            if (v20 == "SRT" || !strcmp(v20, "SRT"))
            {
              *v160 = 0u;
              LODWORD(v161) = 7;
              v162 = 0uLL;
              *(&v161 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v161);
              *&v161 = *(v10 + 2256) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 584), &v161);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v160);
              v136 = *(*(v10 + 616) + 8 * *(v10 + 600) - 8);
              *v160 = xmmword_1E30474D0;
              LODWORD(v161) = 5;
              v162 = 0uLL;
              *(&v161 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2160), &v161);
              *&v161 = *(v10 + 2176) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 504), &v161);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 824), v160);
              v137 = *(*(v10 + 536) + 8 * *(v10 + 520) - 8);
              *v160 = 0u;
              v21 = v16 - 288;
              LODWORD(v161) = 7;
              v162 = 0uLL;
              *(&v161 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v161);
              *&v161 = *(v10 + 2256) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 584), &v161);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v160);
              v138 = *(*(v10 + 616) + 8 * *(v10 + 600) - 8);
              *v160 = "scale";
              *&v160[8] = 5;
              re::RigDataValue::attributeValue(v21, v160, &v161);
              v22 = *(&v161 + 1);
              *(*(&v161 + 1) + 96) = 2;
              *(v22 + 176) = v136;
              if (v161 & 1) == 0 && *(&v162 + 1) && (v163)
              {
                (*(**(&v162 + 1) + 40))();
              }

              *v160 = "rotation";
              *&v160[8] = 8;
              re::RigDataValue::attributeValue(v21, v160, &v161);
              v23 = *(&v161 + 1);
              *(*(&v161 + 1) + 96) = 2;
              *(v23 + 176) = v137;
              if (v161 & 1) == 0 && *(&v162 + 1) && (v163)
              {
                (*(**(&v162 + 1) + 40))();
              }

              *v160 = "translation";
              *&v160[8] = 11;
              re::RigDataValue::attributeValue(v21, v160, &v161);
              v24 = *(&v161 + 1);
              *(*(&v161 + 1) + 96) = 2;
              *(v24 + 176) = v138;
              if (v161 & 1) == 0 && *(&v162 + 1) && (v163)
              {
                (*(**(&v162 + 1) + 40))();
              }
            }
          }
        }
      }

      else if (*(v16 - 256) <= 2u)
      {
        if (v17 == 1)
        {
          *v160 = 0;
          LODWORD(v161) = 0;
          v162 = 0uLL;
          *(&v161 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v10 + 1960), &v161);
          *&v161 = *(v10 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v10 + 304), &v161);
          re::DynamicArray<int>::add((v10 + 624), v160);
          v18 = *(v10 + 336);
          v19 = *(v10 + 320);
          goto LABEL_41;
        }

        if (v17 == 2)
        {
          *v160 = 0;
          LODWORD(v161) = 1;
          v162 = 0uLL;
          *(&v161 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v10 + 2000), &v161);
          *&v161 = *(v10 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v10 + 344), &v161);
          re::DynamicArray<int>::add((v10 + 664), v160);
          v18 = *(v10 + 376);
          v19 = *(v10 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v17)
        {
          case 3u:
            *v160 = 0;
            LODWORD(v161) = 2;
            v162 = 0uLL;
            *(&v161 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2040), &v161);
            *&v161 = *(v10 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 384), &v161);
            re::DynamicArray<float>::add((v10 + 704), v160);
            v25 = *(*(v10 + 416) + 8 * *(v10 + 400) - 8);
            *(v16 - 192) = 2;
            v11 = 288;
            goto LABEL_42;
          case 4u:
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            *v160 = 3;
            memset(&v160[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2080), v160);
            *v160 = *(v10 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 424), v160);
            re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 744), &v161);
            v18 = *(v10 + 456);
            v19 = *(v10 + 440);
LABEL_41:
            v25 = *(v18 + 8 * v19 - 8);
            *(v16 - 192) = 2;
LABEL_42:
            *(v16 - 112) = v25;
            break;
          case 5u:
            v163 = 0u;
            __s1 = 0u;
            v161 = 0u;
            v162 = 0u;
            *v160 = 4;
            memset(&v160[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2120), v160);
            *v160 = *(v10 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 464), v160);
            re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 784), &v161);
            v18 = *(v10 + 496);
            v19 = *(v10 + 480);
            goto LABEL_41;
        }
      }

      ++v3;
      v14 += 24;
    }

    while (v3 < v12[54]);
  }

  v15 = v160;
  re::RigGraphSystem::compile(v10 + 5432, v12 + 10, v10 + 296, (v10 + 2360), *(v10 + 152), *(v10 + 136), v160);
  re::RigGraphCompilation::operator=((v10 + 160), &v160[8]);
  if (!*(v10 + 272))
  {
    goto LABEL_222;
  }

  v29 = *(v10 + 288);
  if (*(v29 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(&v161, *(v29 + 184), a2, 0);
    re::EvaluationSkeletalPose::createOutputHandle(&v170, &v161, (v10 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v10 + 6384), &v170);
    if (v170)
    {
      if (*(&v170 + 1))
      {
        (*(*v170 + 40))();
        *(&v170 + 1) = 0;
        *&v171 = 0;
      }

      *&v170 = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(&v161);
  }

  re::EvaluationContextManager::buildEvaluationContext((v10 + 2360));
  if ((*(v10 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v10 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v10 + 160, (v10 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(&v161, (v10 + 2360));
  (*(*(v10 + 5600) + 32))(&v152);
  if (!v12[54])
  {
    v9 = v7 + 88;
    goto LABEL_164;
  }

  v30 = 0;
  v15 = 0;
  v27 = 32;
  do
  {
    re::RigGraphNode::inputValue(&v161, (v12 + 10), (v10 + 5328), (v10 + 296), a2, v15);
    if (v163 <= 4u)
    {
      if (v163 > 2u)
      {
        if (v163 == 3)
        {
          v11 = v12[12];
          if (v11 <= v15)
          {
            goto LABEL_202;
          }

          v3 = *(v12[14] + v27);
          v60 = strlen(v3);
          *v157 = v3;
          *&v157[8] = v60;
          re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
          if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
          {
            (*(**(&v171 + 1) + 40))();
          }

          v62 = *(v10 + 232);
          if (v62 <= v15)
          {
            goto LABEL_216;
          }

          v63 = v166;
          *re::RigDataValue::getRuntimeValue<float>(*v140 + v30, v61) = v63;
        }

        else if (v163 == 4)
        {
          v11 = v12[12];
          if (v11 <= v15)
          {
            goto LABEL_182;
          }

          v3 = *(v12[14] + v27);
          v47 = strlen(v3);
          *v157 = v3;
          *&v157[8] = v47;
          re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
          if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
          {
            (*(**(&v171 + 1) + 40))();
          }

          v49 = *(v10 + 232);
          if (v49 <= v15)
          {
            goto LABEL_215;
          }

          v50 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v140 + v30, v48);
          v52 = v167;
          v51 = v168;
          *v50 = v166;
          v50[1] = v52;
          v50[2] = v51;
        }

        goto LABEL_154;
      }

      if (v163 != 1)
      {
        if (v163 != 2)
        {
          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_194;
        }

        v3 = *(v12[14] + v27);
        v42 = strlen(v3);
        *v157 = v3;
        *&v157[8] = v42;
        re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
        if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
        {
          (*(**(&v171 + 1) + 40))();
        }

        v44 = *(v10 + 232);
        if (v44 <= v15)
        {
          goto LABEL_211;
        }

        v45 = v166;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(*v140 + v30, v43);
        goto LABEL_124;
      }

      v11 = v12[12];
      if (v11 > v15)
      {
        v3 = *(v12[14] + v27);
        v57 = strlen(v3);
        *v157 = v3;
        *&v157[8] = v57;
        re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
        if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
        {
          (*(**(&v171 + 1) + 40))();
        }

        v59 = *(v10 + 232);
        if (v59 <= v15)
        {
          goto LABEL_213;
        }

        v45 = v166;
        Runtime = re::RigDataValue::getRuntimeValue<int>(*v140 + v30, v58);
LABEL_124:
        *Runtime = v45;
        goto LABEL_154;
      }

      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v84 = MEMORY[0x1E69E9C10];
      v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v85)
      {
        v86 = 3;
      }

      else
      {
        v86 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v86, v142, &v170, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_182:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v87 = MEMORY[0x1E69E9C10];
      v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v88)
      {
        v89 = 3;
      }

      else
      {
        v89 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v89, v142, &v170, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_186:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v90 = MEMORY[0x1E69E9C10];
      v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v91)
      {
        v92 = 3;
      }

      else
      {
        v92 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v92, v142, &v170, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_190:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v93 = MEMORY[0x1E69E9C10];
      v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v94)
      {
        v95 = 3;
      }

      else
      {
        v95 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v95, v142, &v170, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_194:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v96 = MEMORY[0x1E69E9C10];
      v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v97)
      {
        v98 = 3;
      }

      else
      {
        v98 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v98, v142, &v170, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_198:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v99 = MEMORY[0x1E69E9C10];
      v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v100)
      {
        v101 = 3;
      }

      else
      {
        v101 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v101, v142, &v170, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_202:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v102 = MEMORY[0x1E69E9C10];
      v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v103)
      {
        v104 = 3;
      }

      else
      {
        v104 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v104, v142, &v170, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_206:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v105 = MEMORY[0x1E69E9C10];
      v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v106)
      {
        v107 = 3;
      }

      else
      {
        v107 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v107, v142, &v170, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_210:
      re::internal::assertLog(6, v65, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v66);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v114, v124);
      __break(1u);
LABEL_211:
      re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v44);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v115, v125);
      __break(1u);
LABEL_212:
      re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v77);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v116, v126);
      __break(1u);
LABEL_213:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v117, v127);
      __break(1u);
LABEL_214:
      re::internal::assertLog(6, v69, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v70);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v118, v128);
      __break(1u);
LABEL_215:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v49);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v119, v129);
      __break(1u);
LABEL_216:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v62);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v120, v130);
      __break(1u);
LABEL_217:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v55);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v121, v131);
      __break(1u);
LABEL_218:
      *v157 = 0;
      __s1 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      v108 = MEMORY[0x1E69E9C10];
      v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v160 = 136315906;
      *&v160[4] = "operator[]";
      *&v160[12] = 1024;
      if (v109)
      {
        v110 = 3;
      }

      else
      {
        v110 = 2;
      }

      *&v160[14] = 789;
      *&v160[18] = 2048;
      *&v160[20] = v3;
      *&v160[28] = 2048;
      *&v160[30] = v27;
      _os_log_send_and_compose_impl(v110, v157, &v161, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v160, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_222:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v122, v132);
      __break(1u);
LABEL_223:
      v142[0] = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v111 = MEMORY[0x1E69E9C10];
      v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v112)
      {
        v113 = 3;
      }

      else
      {
        v113 = 2;
      }

      *&v157[14] = 797;
      v158 = 2048;
      *v159 = v15;
      *&v159[8] = 2048;
      *&v159[10] = v11;
      _os_log_send_and_compose_impl(v113, v142, &v170, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v134, v135);
      _os_crash_msg();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v41);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v123, v133);
      __break(1u);
    }

    if (v163 <= 6u)
    {
      if (v163 != 5)
      {
        if (v163 != 6)
        {
          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_186;
        }

        v3 = *(v12[14] + v27);
        v53 = strlen(v3);
        *v157 = v3;
        *&v157[8] = v53;
        re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
        if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
        {
          (*(**(&v171 + 1) + 40))();
        }

        v55 = *(v10 + 232);
        if (v55 <= v15)
        {
          goto LABEL_217;
        }

        v56 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v140 + v30, v54);
        goto LABEL_153;
      }

      v11 = v12[12];
      if (v11 <= v15)
      {
        goto LABEL_206;
      }

      v3 = *(v12[14] + v27);
      v68 = strlen(v3);
      *v157 = v3;
      *&v157[8] = v68;
      re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
      if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
      {
        (*(**(&v171 + 1) + 40))();
      }

      v70 = *(v10 + 232);
      if (v70 <= v15)
      {
        goto LABEL_214;
      }

      v71 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v140 + v30, v69);
      v72 = v169;
      v74 = v166;
      v73 = v167;
      v71[2] = v168;
      v71[3] = v72;
      *v71 = v74;
      v71[1] = v73;
    }

    else
    {
      if (v163 != 7)
      {
        if (v163 != 8)
        {
          if (v163 == 13 && (*(&v163 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v11 = v12[12];
            if (v11 <= v15)
            {
              goto LABEL_223;
            }

            v31 = strlen(*(v12[14] + v27));
            *v157 = *(v12[14] + v27);
            *&v157[8] = v31;
            re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
            if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
            {
              (*(**(&v171 + 1) + 40))();
            }

            v146[0] = "scale";
            v146[1] = 5;
            re::RigDataValue::attributeValue(&v161, v146, &v170);
            v139 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(&v170 + 1), v32);
            v145[0] = "rotation";
            v145[1] = 8;
            re::RigDataValue::attributeValue(&v161, v145, v157);
            v34 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v157[8], v33);
            v3 = *v34;
            v35 = *(v34 + 8);
            v141[0] = "translation";
            v141[1] = 11;
            re::RigDataValue::attributeValue(&v161, v141, v142);
            v37 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v142[1], v36);
            v40 = *v37;
            v39 = v37[1];
            v147 = v139;
            v148 = v3;
            v149 = v35;
            v150 = v40;
            v151 = v39;
            if (v142[0] & 1) == 0 && v143 && (v144)
            {
              (*(*v143 + 40))();
            }

            if (v157[0] & 1) == 0 && *&v159[4] && (v159[12])
            {
              (*(**&v159[4] + 40))();
            }

            if (v170 & 1) == 0 && *(&v171 + 1) && (v172)
            {
              (*(**(&v171 + 1) + 40))();
            }

            v41 = *(v10 + 232);
            if (v41 <= v15)
            {
              goto LABEL_227;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*v140 + v30, &v147);
          }

          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_190;
        }

        v3 = *(v12[14] + v27);
        v75 = strlen(v3);
        *v157 = v3;
        *&v157[8] = v75;
        re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
        if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
        {
          (*(**(&v171 + 1) + 40))();
        }

        v77 = *(v10 + 232);
        if (v77 <= v15)
        {
          goto LABEL_212;
        }

        v56 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v140 + v30, v76);
LABEL_153:
        *v56 = v166;
        goto LABEL_154;
      }

      v11 = v12[12];
      if (v11 <= v15)
      {
        goto LABEL_198;
      }

      v3 = *(v12[14] + v27);
      v64 = strlen(v3);
      *v157 = v3;
      *&v157[8] = v64;
      re::RigDataValue::setRigDataValue(&v161, v157, 1, &v170);
      if (v170 != 1 && *(&v171 + 1) && (v172 & 1) != 0)
      {
        (*(**(&v171 + 1) + 40))();
      }

      v66 = *(v10 + 232);
      if (v66 <= v15)
      {
        goto LABEL_210;
      }

      v67 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v140 + v30, v65);
      *v67 = v166;
    }

LABEL_154:
    re::RigDataValue::~RigDataValue(&v161);
    v15 = (v15 + 1);
    v78 = v12[54];
    v30 += 288;
    v27 += 40;
  }

  while (v15 < v78);
  *&v161 = 0;
  v9 = v7 + 88;
  if (v78)
  {
    for (i = 0; i < v78; *&v161 = i)
    {
      v80 = (v12[56] + 16 * i);
      if (*v80 <= 1uLL)
      {
        v81 = v80[1];
        if (v81 == "" || !*v81)
        {
          re::DynamicArray<unsigned long>::add(v10, &v161);
          i = v161;
          v78 = v12[54];
        }
      }

      ++i;
    }
  }

LABEL_164:
  if (v152 & 1) == 0 && v155 && (v156)
  {
    (*(*v155 + 40))();
  }

  if (v160[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v160[8]);
  }

  else if (*&v160[24] && (v160[32] & 1) != 0)
  {
    (*(**&v160[24] + 40))();
  }

LABEL_173:
  v82 = *(v7 + 80);
  if (*(v82 + 536))
  {
    re::BlendSpace::init(v9, a2, (v82 + 536), a3);
  }

  if (*a3 | a3[2])
  {
    re::AnimationBlendTreeInstance<float>::initBindPoints<float>(v7 + 280, a2, *(v7 + 80) + 376, a3);
    re::AnimationBlendTreeInstance<float>::initBindPoints<float>(v7 + 304, a2, *(v7 + 80) + 416, a3);
  }

  return v7;
}

uint64_t re::AnimationBlendTree<double>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD428;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<double>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<double>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v208 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<float *>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v205, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v189, v205, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v189);
              v10 = a2;
              if (v189)
              {
                if (*(&v189 + 1))
                {
                  (*(*v189 + 40))();
                  *(&v189 + 1) = 0;
                  v190 = 0;
                }

                *&v189 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v205);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v196 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v196);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v196 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v196);
                v174 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v196 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v196);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v196 = "scale";
                *&v196[8] = 5;
                re::RigDataValue::attributeValue(v17, v196, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v198)
                {
                  (*(**&buf[24] + 40))();
                }

                *v196 = "rotation";
                *&v196[8] = 8;
                re::RigDataValue::attributeValue(v17, v196, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v174;
                if (buf[0] & 1) == 0 && *&buf[24] && (v198)
                {
                  (*(**&buf[24] + 40))();
                }

                *v196 = "translation";
                *&v196[8] = 11;
                re::RigDataValue::attributeValue(v17, v196, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v198)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v196 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v196);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v196 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v196);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v196 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v196);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v196 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v196);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v196 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v196);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v196 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v196);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v198 = 0u;
            memset(buf, 0, sizeof(buf));
            *v196 = 3;
            memset(&v196[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v196);
            *v196 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v196);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v198 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v196 = 4;
            memset(&v196[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v196);
            *v196 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v196);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v196);
  re::RigGraphCompilation::operator=((v7 + 160), &v196[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v205, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v205);
    if (v205[0])
    {
      if (v205[1])
      {
        (*(*v205[0] + 40))();
        v205[1] = 0;
        v205[2] = 0;
      }

      v205[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v189);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v198 <= 4u)
    {
      if (v198 > 2u)
      {
        if (v198 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v193 = v3;
          *&v193[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
          if (LOBYTE(v205[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v205[3] && (v205[4] & 1) != 0)
            {
              (*(*v205[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v201;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v198 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v193 = v3;
          *&v193[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
          if (LOBYTE(v205[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v205[3] && (v205[4] & 1) != 0)
            {
              (*(*v205[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v202;
          v65 = v203;
          *v64 = v201;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v198 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v193 = v3;
          *&v193[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
          if (LOBYTE(v205[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v205[3] && (v205[4] & 1) != 0)
            {
              (*(*v205[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v201;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v198 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v193 = v3;
          *&v193[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
          if (LOBYTE(v205[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v205[3] && (v205[4] & 1) != 0)
            {
              (*(*v205[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v201;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v198 <= 6u)
    {
      if (v198 != 5)
      {
        if (v198 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v193 = v3;
        *&v193[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
        if (LOBYTE(v205[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v205[3] && (v205[4] & 1) != 0)
          {
            (*(*v205[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v193 = v3;
      *&v193[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
      if (LOBYTE(v205[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v205[3] && (v205[4] & 1) != 0)
        {
          (*(*v205[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v204;
      v79 = v201;
      v78 = v202;
      v76[2] = v203;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v198 != 7)
      {
        if (v198 != 8)
        {
          if (v198 == 13 && (*(&v198 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v193 = *(v8[14] + v29);
            *&v193[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
            if (LOBYTE(v205[0]) != 1 && v205[3] && (v205[4] & 1) != 0)
            {
              (*(*v205[3] + 40))();
            }

            v183[0] = "scale";
            v183[1] = 5;
            re::RigDataValue::attributeValue(buf, v183, v205);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v205[1], v31);
            v33 = *v32;
            v175 = v32[1];
            v182[0] = "rotation";
            v182[1] = 8;
            re::RigDataValue::attributeValue(buf, v182, v193);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v193[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v178[0] = "translation";
            v178[1] = 11;
            re::RigDataValue::attributeValue(buf, v178, v179);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v179[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v184 = v33;
            *(&v184 + 1) = v175;
            v185 = v36;
            v186 = v3;
            v187 = v41;
            v188 = v40;
            if (v179[0] & 1) == 0 && v180 && (v181)
            {
              (*(*v180 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v193[0] & 1) == 0 && *&v195[4] && (v195[12])
            {
              (*(**&v195[4] + 40))();
            }

            if (v205[0] & 1) == 0 && v205[3] && (v205[4])
            {
              (*(*v205[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v184);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v193 = v3;
        *&v193[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
        if (LOBYTE(v205[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v205[3] && (v205[4] & 1) != 0)
          {
            (*(*v205[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v201;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v193 = v3;
      *&v193[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v193, 1, v205);
      if (LOBYTE(v205[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v205[3] && (v205[4] & 1) != 0)
        {
          (*(*v205[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v201;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v189 & 1) == 0 && v191 && (v192)
  {
    (*(*v191 + 40))();
  }

  if (v196[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v196[8]);
  }

  else if (*&v196[24] && (v196[32] & 1) != 0)
  {
    (*(**&v196[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v189 = *(*(v86 + 408) + v88);
        *(&v189 + 1) = v89;
        re::BindNode::bindPointWithOverride(v196, a3, re::introspect<float>(BOOL)::info, &v189);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v196;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v196[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v196[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v196[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v189 = 0;
      __s1 = 0u;
      v200 = 0u;
      v198 = 0u;
      memset(buf, 0, sizeof(buf));
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v205[0]) = 136315906;
      *(v205 + 4) = "operator[]";
      WORD2(v205[1]) = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      *(&v205[1] + 6) = 797;
      WORD1(v205[2]) = 2048;
      *(&v205[2] + 4) = v87;
      WORD2(v205[3]) = 2048;
      *(&v205[3] + 6) = v3;
      _os_log_send_and_compose_impl(v112, &v189, buf, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v193 = 0;
      __s1 = 0u;
      v200 = 0u;
      v198 = 0u;
      memset(buf, 0, sizeof(buf));
      v113 = MEMORY[0x1E69E9C10];
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v205[0]) = 136315906;
      *(v205 + 4) = "operator[]";
      WORD2(v205[1]) = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      *(&v205[1] + 6) = 468;
      WORD1(v205[2]) = 2048;
      *(&v205[2] + 4) = v87;
      WORD2(v205[3]) = 2048;
      *(&v205[3] + 6) = v3;
      _os_log_send_and_compose_impl(v115, v193, buf, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v189 = 0;
      __s1 = 0u;
      v200 = 0u;
      v198 = 0u;
      memset(buf, 0, sizeof(buf));
      v116 = MEMORY[0x1E69E9C10];
      v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v205[0]) = 136315906;
      *(v205 + 4) = "operator[]";
      WORD2(v205[1]) = 1024;
      if (v117)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      *(&v205[1] + 6) = 797;
      WORD1(v205[2]) = 2048;
      *(&v205[2] + 4) = v10;
      WORD2(v205[3]) = 2048;
      *(&v205[3] + 6) = v4;
      _os_log_send_and_compose_impl(v118, &v189, buf, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v193 = 0;
      __s1 = 0u;
      v200 = 0u;
      v198 = 0u;
      memset(buf, 0, sizeof(buf));
      v119 = MEMORY[0x1E69E9C10];
      v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v205[0]) = 136315906;
      *(v205 + 4) = "operator[]";
      WORD2(v205[1]) = 1024;
      if (v120)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      *(&v205[1] + 6) = 468;
      WORD1(v205[2]) = 2048;
      *(&v205[2] + 4) = v10;
      WORD2(v205[3]) = 2048;
      *(&v205[3] + 6) = v4;
      _os_log_send_and_compose_impl(v121, v193, buf, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v122 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v124, v179, v205, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v125 = MEMORY[0x1E69E9C10];
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v127, v179, v205, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v128 = MEMORY[0x1E69E9C10];
      v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v129)
      {
        v130 = 3;
      }

      else
      {
        v130 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v130, v179, v205, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v131 = MEMORY[0x1E69E9C10];
      v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v132)
      {
        v133 = 3;
      }

      else
      {
        v133 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v133, v179, v205, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v134 = MEMORY[0x1E69E9C10];
      v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v135)
      {
        v136 = 3;
      }

      else
      {
        v136 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v136, v179, v205, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v137 = MEMORY[0x1E69E9C10];
      v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v138)
      {
        v139 = 3;
      }

      else
      {
        v139 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v139, v179, v205, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v140 = MEMORY[0x1E69E9C10];
      v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v141)
      {
        v142 = 3;
      }

      else
      {
        v142 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v142, v179, v205, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v143 = MEMORY[0x1E69E9C10];
      v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v144)
      {
        v145 = 3;
      }

      else
      {
        v145 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v145, v179, v205, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_269:
      *v193 = 0;
      __s1 = 0u;
      v200 = 0u;
      v198 = 0u;
      memset(buf, 0, sizeof(buf));
      v146 = MEMORY[0x1E69E9C10];
      v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v196 = 136315906;
      *&v196[4] = "operator[]";
      *&v196[12] = 1024;
      if (v147)
      {
        v148 = 3;
      }

      else
      {
        v148 = 2;
      }

      *&v196[14] = 789;
      *&v196[18] = 2048;
      *&v196[20] = v3;
      *&v196[28] = 2048;
      *&v196[30] = v10;
      _os_log_send_and_compose_impl(v148, v193, buf, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
LABEL_274:
      v179[0] = 0;
      v206 = 0u;
      v207 = 0u;
      memset(v205, 0, sizeof(v205));
      v149 = MEMORY[0x1E69E9C10];
      v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v193 = 136315906;
      *&v193[4] = "operator[]";
      *&v193[12] = 1024;
      if (v150)
      {
        v151 = 3;
      }

      else
      {
        v151 = 2;
      }

      *&v193[14] = 797;
      v194 = 2048;
      *v195 = v4;
      *&v195[8] = 2048;
      *&v195[10] = v10;
      _os_log_send_and_compose_impl(v151, v179, v205, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v193, 38, v172, v173);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v161, v171);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v109);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v189 = v3;
        *(&v189 + 1) = v101;
        re::BindNode::bindPointWithOverride(v196, a3, re::introspect<double>(BOOL)::info, &v189);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v196;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v196[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v196[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v196[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector2<float>>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD508;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector2<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v207 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v204, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v188, v204, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v188);
              v10 = a2;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189 = 0;
                }

                *&v188 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v204);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
                v173 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = "scale";
                *&v195[8] = 5;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "rotation";
                *&v195[8] = 8;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v173;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "translation";
                *&v195[8] = 11;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v195 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v195 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v195 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v195);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v195 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v195);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v195 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v195);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v195 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v195);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v197 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 3;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v195);
            *v195 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v195);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v197 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 4;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v195);
            *v195 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v195);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v195);
  re::RigGraphCompilation::operator=((v7 + 160), &v195[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v204, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v204);
    if (v204[0])
    {
      if (v204[1])
      {
        (*(*v204[0] + 40))();
        v204[1] = 0;
        v204[2] = 0;
      }

      v204[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v188);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v197 <= 4u)
    {
      if (v197 > 2u)
      {
        if (v197 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v200;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v197 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v201;
          v65 = v202;
          *v64 = v200;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v197 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v197 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v197 <= 6u)
    {
      if (v197 != 5)
      {
        if (v197 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v203;
      v79 = v200;
      v78 = v201;
      v76[2] = v202;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v197 != 7)
      {
        if (v197 != 8)
        {
          if (v197 == 13 && (*(&v197 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v192 = *(v8[14] + v29);
            *&v192[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
            if (LOBYTE(v204[0]) != 1 && v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }

            v182[0] = "scale";
            v182[1] = 5;
            re::RigDataValue::attributeValue(buf, v182, v204);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v204[1], v31);
            v33 = *v32;
            v174 = v32[1];
            v181[0] = "rotation";
            v181[1] = 8;
            re::RigDataValue::attributeValue(buf, v181, v192);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v192[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v177[0] = "translation";
            v177[1] = 11;
            re::RigDataValue::attributeValue(buf, v177, v178);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v178[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v183 = v33;
            *(&v183 + 1) = v174;
            v184 = v36;
            v185 = v3;
            v186 = v41;
            v187 = v40;
            if (v178[0] & 1) == 0 && v179 && (v180)
            {
              (*(*v179 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v192[0] & 1) == 0 && *&v194[4] && (v194[12])
            {
              (*(**&v194[4] + 40))();
            }

            if (v204[0] & 1) == 0 && v204[3] && (v204[4])
            {
              (*(*v204[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v183);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v200;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v200;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v188 & 1) == 0 && v190 && (v191)
  {
    (*(*v190 + 40))();
  }

  if (v195[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v195[8]);
  }

  else if (*&v195[24] && (v195[32] & 1) != 0)
  {
    (*(**&v195[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v188 = *(*(v86 + 408) + v88);
        *(&v188 + 1) = v89;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<float>(BOOL)::info, &v188);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v111, &v188, buf, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v114, v192, buf, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v117, &v188, buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v120, v192, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v123, v178, v204, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v126, v178, v204, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v129, v178, v204, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v132, v178, v204, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v135, v178, v204, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v138, v178, v204, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v141, v178, v204, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v144, v178, v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v161);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_269:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v3;
      *&v195[28] = 2048;
      *&v195[30] = v10;
      _os_log_send_and_compose_impl(v147, v192, buf, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_274:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v150, v178, v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v188 = v3;
        *(&v188 + 1) = v101;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<re::Vector2<float>>(BOOL)::info, &v188);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector3<float>>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD5E8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector3<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v207 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Quaternion<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v204, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v188, v204, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v188);
              v10 = a2;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189 = 0;
                }

                *&v188 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v204);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
                v173 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = "scale";
                *&v195[8] = 5;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "rotation";
                *&v195[8] = 8;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v173;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "translation";
                *&v195[8] = 11;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v195 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v195 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v195 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v195);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v195 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v195);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v195 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v195);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v195 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v195);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v197 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 3;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v195);
            *v195 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v195);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v197 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 4;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v195);
            *v195 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v195);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v195);
  re::RigGraphCompilation::operator=((v7 + 160), &v195[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v204, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v204);
    if (v204[0])
    {
      if (v204[1])
      {
        (*(*v204[0] + 40))();
        v204[1] = 0;
        v204[2] = 0;
      }

      v204[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v188);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v197 <= 4u)
    {
      if (v197 > 2u)
      {
        if (v197 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v200;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v197 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v201;
          v65 = v202;
          *v64 = v200;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v197 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v197 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v197 <= 6u)
    {
      if (v197 != 5)
      {
        if (v197 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v203;
      v79 = v200;
      v78 = v201;
      v76[2] = v202;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v197 != 7)
      {
        if (v197 != 8)
        {
          if (v197 == 13 && (*(&v197 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v192 = *(v8[14] + v29);
            *&v192[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
            if (LOBYTE(v204[0]) != 1 && v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }

            v182[0] = "scale";
            v182[1] = 5;
            re::RigDataValue::attributeValue(buf, v182, v204);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v204[1], v31);
            v33 = *v32;
            v174 = v32[1];
            v181[0] = "rotation";
            v181[1] = 8;
            re::RigDataValue::attributeValue(buf, v181, v192);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v192[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v177[0] = "translation";
            v177[1] = 11;
            re::RigDataValue::attributeValue(buf, v177, v178);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v178[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v183 = v33;
            *(&v183 + 1) = v174;
            v184 = v36;
            v185 = v3;
            v186 = v41;
            v187 = v40;
            if (v178[0] & 1) == 0 && v179 && (v180)
            {
              (*(*v179 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v192[0] & 1) == 0 && *&v194[4] && (v194[12])
            {
              (*(**&v194[4] + 40))();
            }

            if (v204[0] & 1) == 0 && v204[3] && (v204[4])
            {
              (*(*v204[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v183);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v200;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v200;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v188 & 1) == 0 && v190 && (v191)
  {
    (*(*v190 + 40))();
  }

  if (v195[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v195[8]);
  }

  else if (*&v195[24] && (v195[32] & 1) != 0)
  {
    (*(**&v195[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v188 = *(*(v86 + 408) + v88);
        *(&v188 + 1) = v89;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<float>(BOOL)::info, &v188);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v111, &v188, buf, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v114, v192, buf, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v117, &v188, buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v120, v192, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v123, v178, v204, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v126, v178, v204, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v129, v178, v204, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v132, v178, v204, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v135, v178, v204, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v138, v178, v204, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v141, v178, v204, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v144, v178, v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v161);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_269:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v3;
      *&v195[28] = 2048;
      *&v195[30] = v10;
      _os_log_send_and_compose_impl(v147, v192, buf, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_274:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v150, v178, v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v188 = v3;
        *(&v188 + 1) = v101;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<re::Vector3<float>>(BOOL)::info, &v188);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector4<float>>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD6C8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector4<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector4<float>>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v207 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Vector4<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v204, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v188, v204, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v188);
              v10 = a2;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189 = 0;
                }

                *&v188 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v204);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
                v173 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = "scale";
                *&v195[8] = 5;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "rotation";
                *&v195[8] = 8;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v173;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "translation";
                *&v195[8] = 11;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v195 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v195 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v195 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v195);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v195 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v195);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v195 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v195);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v195 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v195);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v197 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 3;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v195);
            *v195 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v195);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v197 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 4;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v195);
            *v195 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v195);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v195);
  re::RigGraphCompilation::operator=((v7 + 160), &v195[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v204, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v204);
    if (v204[0])
    {
      if (v204[1])
      {
        (*(*v204[0] + 40))();
        v204[1] = 0;
        v204[2] = 0;
      }

      v204[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v188);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v197 <= 4u)
    {
      if (v197 > 2u)
      {
        if (v197 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v200;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v197 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v201;
          v65 = v202;
          *v64 = v200;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v197 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v197 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v197 <= 6u)
    {
      if (v197 != 5)
      {
        if (v197 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v203;
      v79 = v200;
      v78 = v201;
      v76[2] = v202;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v197 != 7)
      {
        if (v197 != 8)
        {
          if (v197 == 13 && (*(&v197 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v192 = *(v8[14] + v29);
            *&v192[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
            if (LOBYTE(v204[0]) != 1 && v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }

            v182[0] = "scale";
            v182[1] = 5;
            re::RigDataValue::attributeValue(buf, v182, v204);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v204[1], v31);
            v33 = *v32;
            v174 = v32[1];
            v181[0] = "rotation";
            v181[1] = 8;
            re::RigDataValue::attributeValue(buf, v181, v192);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v192[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v177[0] = "translation";
            v177[1] = 11;
            re::RigDataValue::attributeValue(buf, v177, v178);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v178[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v183 = v33;
            *(&v183 + 1) = v174;
            v184 = v36;
            v185 = v3;
            v186 = v41;
            v187 = v40;
            if (v178[0] & 1) == 0 && v179 && (v180)
            {
              (*(*v179 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v192[0] & 1) == 0 && *&v194[4] && (v194[12])
            {
              (*(**&v194[4] + 40))();
            }

            if (v204[0] & 1) == 0 && v204[3] && (v204[4])
            {
              (*(*v204[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v183);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v200;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v200;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v188 & 1) == 0 && v190 && (v191)
  {
    (*(*v190 + 40))();
  }

  if (v195[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v195[8]);
  }

  else if (*&v195[24] && (v195[32] & 1) != 0)
  {
    (*(**&v195[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v188 = *(*(v86 + 408) + v88);
        *(&v188 + 1) = v89;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<float>(BOOL)::info, &v188);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v111, &v188, buf, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v114, v192, buf, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v117, &v188, buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v120, v192, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v123, v178, v204, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v126, v178, v204, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v129, v178, v204, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v132, v178, v204, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v135, v178, v204, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v138, v178, v204, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v141, v178, v204, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v144, v178, v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v161);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_269:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v3;
      *&v195[28] = 2048;
      *&v195[30] = v10;
      _os_log_send_and_compose_impl(v147, v192, buf, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_274:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v150, v178, v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v188 = v3;
        *(&v188 + 1) = v101;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<re::Vector4<float>>(BOOL)::info, &v188);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Quaternion<float>>::createInstance(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD7A8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Quaternion<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::init(uint64_t a1, uint8_t *a2, re::BindNode **a3)
{
  v4 = a2;
  v207 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Quaternion<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v3);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v204, v24, v10, 0);
              re::EvaluationSkeletalPose::createInputHandle(&v188, v204, (v7 + 2360));
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_269;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v188);
              v10 = a2;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189 = 0;
                }

                *&v188 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v204);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
                v173 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v195 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v195 = "scale";
                *&v195[8] = 5;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "rotation";
                *&v195[8] = 8;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v173;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }

                *v195 = "translation";
                *&v195[8] = 11;
                re::RigDataValue::attributeValue(v17, v195, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v197)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v195 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v195);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v195 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v195);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v195 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v195);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v195 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v195);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v195 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v195);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v195 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v195);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v197 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 3;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v195);
            *v195 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v195);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v197 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v195 = 4;
            memset(&v195[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v195);
            *v195 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v195);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v195);
  re::RigGraphCompilation::operator=((v7 + 160), &v195[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_273;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(buf, *(v26 + 184), v10, 0);
    re::EvaluationSkeletalPose::createOutputHandle(v204, buf, (v7 + 2360));
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v204);
    if (v204[0])
    {
      if (v204[1])
      {
        (*(*v204[0] + 40))();
        v204[1] = 0;
        v204[2] = 0;
      }

      v204[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, (v7 + 2360));
  (*(*(v7 + 5600) + 32))(&v188);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue(buf, (v8 + 10), (v7 + 5328), (v7 + 296), v10, v4);
    if (v197 <= 4u)
    {
      if (v197 > 2u)
      {
        if (v197 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_253;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_267;
          }

          v72 = v200;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v197 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_233;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_266;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v201;
          v65 = v202;
          *v64 = v200;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v197 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_229;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_264;
          }

          v70 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v197 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_245;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v192 = v3;
          *&v192[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
          if (LOBYTE(v204[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_262;
          }

          v60 = *v27;
          v61 = v200;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v197 <= 6u)
    {
      if (v197 != 5)
      {
        if (v197 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_237;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_268;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_257;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_265;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v203;
      v79 = v200;
      v78 = v201;
      v76[2] = v202;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v197 != 7)
      {
        if (v197 != 8)
        {
          if (v197 == 13 && (*(&v197 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_274;
            }

            v30 = strlen(*(v8[14] + v29));
            *v192 = *(v8[14] + v29);
            *&v192[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
            if (LOBYTE(v204[0]) != 1 && v204[3] && (v204[4] & 1) != 0)
            {
              (*(*v204[3] + 40))();
            }

            v182[0] = "scale";
            v182[1] = 5;
            re::RigDataValue::attributeValue(buf, v182, v204);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v204[1], v31);
            v33 = *v32;
            v174 = v32[1];
            v181[0] = "rotation";
            v181[1] = 8;
            re::RigDataValue::attributeValue(buf, v181, v192);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v192[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v177[0] = "translation";
            v177[1] = 11;
            re::RigDataValue::attributeValue(buf, v177, v178);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v178[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v183 = v33;
            *(&v183 + 1) = v174;
            v184 = v36;
            v185 = v3;
            v186 = v41;
            v187 = v40;
            if (v178[0] & 1) == 0 && v179 && (v180)
            {
              (*(*v179 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v192[0] & 1) == 0 && *&v194[4] && (v194[12])
            {
              (*(**&v194[4] + 40))();
            }

            if (v204[0] & 1) == 0 && v204[3] && (v204[4])
            {
              (*(*v204[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_278;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v183);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_241;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v192 = v3;
        *&v192[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
        if (LOBYTE(v204[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v204[3] && (v204[4] & 1) != 0)
          {
            (*(*v204[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_263;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v200;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_249;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v192 = v3;
      *&v192[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v192, 1, v204);
      if (LOBYTE(v204[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v204[3] && (v204[4] & 1) != 0)
        {
          (*(*v204[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_261;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v200;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v188 & 1) == 0 && v190 && (v191)
  {
    (*(*v190 + 40))();
  }

  if (v195[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v195[8]);
  }

  else if (*&v195[24] && (v195[32] & 1) != 0)
  {
    (*(**&v195[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        *&v188 = *(*(v86 + 408) + v88);
        *(&v188 + 1) = v89;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<float>(BOOL)::info, &v188);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_217;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v111, &v188, buf, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v87;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v3;
      _os_log_send_and_compose_impl(v114, v192, buf, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      *&v188 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *(&v204[1] + 6) = 797;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v117, &v188, buf, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v204[0]) = 136315906;
      *(v204 + 4) = "operator[]";
      WORD2(v204[1]) = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *(&v204[1] + 6) = 468;
      WORD1(v204[2]) = 2048;
      *(&v204[2] + 4) = v10;
      WORD2(v204[3]) = 2048;
      *(&v204[3] + 6) = v4;
      _os_log_send_and_compose_impl(v120, v192, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_229:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v123, v178, v204, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_233:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v126, v178, v204, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_237:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v129, v178, v204, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_241:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v132, v178, v204, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_245:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v135, v178, v204, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_249:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v138, v178, v204, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v141, v178, v204, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v144, v178, v204, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v161);
      __break(1u);
LABEL_262:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v152, v162);
      __break(1u);
LABEL_263:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v163);
      __break(1u);
LABEL_264:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v154, v164);
      __break(1u);
LABEL_265:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v155, v165);
      __break(1u);
LABEL_266:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v156, v166);
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v157, v167);
      __break(1u);
LABEL_268:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v158, v168);
      __break(1u);
LABEL_269:
      *v192 = 0;
      __s1 = 0u;
      v199 = 0u;
      v197 = 0u;
      memset(buf, 0, sizeof(buf));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v3;
      *&v195[28] = 2048;
      *&v195[30] = v10;
      _os_log_send_and_compose_impl(v147, v192, buf, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v159, v169);
      __break(1u);
LABEL_274:
      v178[0] = 0;
      v205 = 0u;
      v206 = 0u;
      memset(v204, 0, sizeof(v204));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v192[14] = 797;
      v193 = 2048;
      *v194 = v4;
      *&v194[8] = 2048;
      *&v194[10] = v10;
      _os_log_send_and_compose_impl(v150, v178, v204, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v171, v172);
      _os_crash_msg();
      __break(1u);
LABEL_278:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v160, v170);
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        *&v188 = v3;
        *(&v188 + 1) = v101;
        re::BindNode::bindPointWithOverride(v195, a3, re::introspect<re::Quaternion<float>>(BOOL)::info, &v188);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_225;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v195;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v195[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v195[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_221;
    }
  }
}