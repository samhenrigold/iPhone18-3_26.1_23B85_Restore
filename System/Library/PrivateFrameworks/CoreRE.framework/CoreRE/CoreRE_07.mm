uint64_t *re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  LODWORD(v4) = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  return result;
}

void re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      v7 = *(a1 + 16);
      *&v13[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v8 = *&v13[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove(a1, *(v11 - 2) % *(a1 + 24), *(v11 - 2), v11);
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
}

double re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
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

void *re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = v8[2];
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = v13;
          LOBYTE(v12) = v8[3];
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v8[3] & 1;
          v11[3] = v8[3] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[4] = v8[4];
          v8[4] = &str_67;
          v8[3] = 0;
          re::StringID::destroyString((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
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

void *re::DynamicArray<re::RigGraphNodeChild>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeChild>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
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
        v10 = &v8[12 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[6] = 0;
          *(v11 + 10) = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          v13 = v8[3];
          v11[2] = v8[2];
          v8[2] = 0;
          v11[3] = v13;
          v8[3] = 0;
          v14 = v11[4];
          v11[4] = v8[4];
          v8[4] = v14;
          v15 = v11[6];
          v11[6] = v8[6];
          v8[6] = v15;
          ++*(v8 + 10);
          ++*(v11 + 10);
          v11[11] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v11[7] = 0;
          *(v11 + 20) = 0;
          v16 = v8[8];
          v11[7] = v8[7];
          v8[7] = 0;
          v11[8] = v16;
          v8[8] = 0;
          v17 = v11[9];
          v11[9] = v8[9];
          v8[9] = v17;
          v18 = v11[11];
          v11[11] = v8[11];
          v8[11] = v18;
          ++*(v8 + 20);
          ++*(v11 + 20);
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit((v8 + 7));
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 12;
          v8 += 12;
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

void *re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          re::StringID::destroyString(v12);
          v11 += 3;
          v8 = v12 + 2;
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

double re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 14;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::findEntry<re::Pair<re::StringSlice,re::StringSlice,true>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v6) = 0;
    goto LABEL_12;
  }

  v6 = a4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v6);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_12:
    v11 = 0x7FFFFFFF;
    goto LABEL_13;
  }

  v15 = a4 % *(a2 + 24);
  v16 = a4;
  v8 = *(a2 + 16);
  v10 = *a3;
  v9 = *(a3 + 8);
  v5 = 0x7FFFFFFF;
  v11 = 0x7FFFFFFF;
  v12 = *(a3 + 24);
  __s2 = *(a3 + 16);
  while (1)
  {
    v13 = v7;
    v14 = v8 + 56 * v7;
    if (*(v14 + 16) == v9)
    {
      result = memcmp(*(v14 + 8), v10, v9);
      if (!result && *(v14 + 32) == v12)
      {
        result = memcmp(*(v14 + 24), __s2, v12);
        if (!result)
        {
          break;
        }
      }
    }

    v7 = *(v8 + 56 * v13) & 0x7FFFFFFF;
    v11 = v13;
    if (v7 == 0x7FFFFFFF)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v5 = v13;
LABEL_10:
  LODWORD(v6) = v15;
  a4 = v16;
LABEL_13:
  *v4 = a4;
  *(v4 + 8) = v6;
  *(v4 + 12) = v5;
  *(v4 + 16) = v11;
  return result;
}

unint64_t re::Hash<re::StringSlice>::operator()(uint64_t a1, unint64_t a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  MurmurHash3_x64_128(a1, a2, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

uint64_t re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 40);
            do
            {
              if ((*(v17 - 5) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                v19 = *(v17 - 2);
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 8) = v19;
                *(v18 + 40) = *v17;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 56 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 48) = a3;
  ++*(a1 + 28);
  return v20 + 56 * v5;
}

void *re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = v8[2];
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[7] = 0;
          v11[2] = v13;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v11[4] = 0;
          v11[5] = 0;
          v14 = v8[4];
          v11[3] = v8[3];
          v8[3] = 0;
          v11[4] = v14;
          v8[4] = 0;
          v15 = v11[5];
          v11[5] = v8[5];
          v8[5] = v15;
          v16 = v11[7];
          v11[7] = v8[7];
          v8[7] = v16;
          ++*(v8 + 12);
          ++*(v11 + 12);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 8;
          v8 += 8;
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

void *re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[7 * v9];
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
          v13 = v8[4];
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          v11[4] = v13;
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

uint64_t re::RigGraphCompilation::RigGraphCompilation(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(a1, a2);
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v6;
  ++*(a2 + 80);
  ++*(a1 + 80);
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v8;
  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v9;
  ++*(a2 + 120);
  ++*(a1 + 120);
  return a1;
}

_anonymous_namespace_ *re::BucketArray<re::RigDataValue,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 2304, 0);
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

unint64_t re::BucketArray<re::RigDataValue,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
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

  return *(v5 + 8 * v2) + 288 * (a2 & 7);
}

uint64_t re::BucketArray<re::RigDataValue,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::RigDataValue,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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
    v16 = v2 >> 3;
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 288 * (v2 & 7);
}

void *re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphSystem::BuildTask>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
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
        v10 = &v8[18 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 2);
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 2, v8 + 2);
          v11[12] = 0;
          *(v11 + 22) = 0;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v13 = v8[9];
          v11[8] = v8[8];
          v8[8] = 0;
          v11[9] = v13;
          v8[9] = 0;
          v14 = v11[10];
          v11[10] = v8[10];
          v8[10] = v14;
          v15 = v11[12];
          v11[12] = v8[12];
          v8[12] = v15;
          ++*(v8 + 22);
          ++*(v11 + 22);
          v11[17] = 0;
          v11[14] = 0;
          v11[15] = 0;
          v11[13] = 0;
          *(v11 + 32) = 0;
          v16 = v8[14];
          v17 = v8 + 13;
          v11[13] = v8[13];
          v11[14] = v16;
          v8[13] = 0;
          v8[14] = 0;
          v18 = v11[15];
          v11[15] = v8[15];
          v8[15] = v18;
          v19 = v11[17];
          v11[17] = v8[17];
          v8[17] = v19;
          ++*(v8 + 32);
          ++*(v11 + 32);
          re::DynamicArray<unsigned long>::deinit((v8 + 13));
          re::DynamicArray<unsigned long>::deinit((v8 + 8));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v8 + 2);
          v8 += 18;
          v11 += 18;
        }

        while (v17 + 5 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::AnimationHandoffBehavior::AnimationHandoffBehavior(uint64_t a1, re::AnimationManager *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v44 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = *a4;
  *(a1 + 16) = &unk_1F5CADE60;
  v8 = a1 + 16;
  *(a1 + 24) = 5;
  v9 = a1 + 32;
  v10 = re::Timeline::Timeline(a1 + 32, 11);
  *(v7 + 152) = 0u;
  v11 = (v7 + 152);
  *(v7 + 104) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 32) = &unk_1F5CADEB8;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 1;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 28) = 2;
  if (*(a4 + 4) == 1)
  {
    *(v7 + 120) = 1;
    *(v7 + 124) = *(a4 + 8);
  }

  if (*(a4 + 12) == 1)
  {
    *(v7 + 128) = 1;
    *(v7 + 132) = *(a4 + 16);
  }

  *(v7 + 112) = *(a4 + 20);
  *(v7 + 144) = v8;
  *(v7 + 48) = 0;
  v12 = re::animationLogObjects(v10);
  if (re::AnimationLogObjects::loggingEnabled(v12))
  {
    re::StringID::operator=<15ul>((v7 + 56));
  }

  v13 = *(a3 + 248);
  v14 = re::DataArray<re::internal::TimelineTreeInfo>::handle(a2 + 64 * v13 + 72, a3);
  re::AnimationManager::blendFactorAsBindPoint(&v30, a2, v14 & 0xFFFFFFFFFFFFFFLL | (v13 << 56), 0);
  if (*(a3 + 184))
  {
    v16 = *(a3 + 192);
    *v16 = 1;
    *(v16 + 8) = 0;
    v17 = re::animationLogObjects(v15);
    v18 = re::AnimationLogObjects::loggingEnabled(v17);
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v32 = 0;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(buf, 0, sizeof(buf));
    v7 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v33 = 136315906;
    *&v33[4] = "operator[]";
    v34 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v35 = 468;
    v36 = 2048;
    v37 = 0;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl(v25, &v32, buf, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, v29, v30);
    v18 = _os_crash_msg();
    __break(1u);
  }

  v26 = *re::animationLogObjects(v18);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 48))
    {
      v27 = *(a3 + 56);
    }

    else
    {
      v27 = a3 + 49;
    }

    v28 = re::BindPoint::overrideValueUntyped(&v30);
    *buf = 136315650;
    *&buf[4] = v27;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = v28;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "ANIM: Start fade animation on timeline tree %s (%p), target: %p", buf, 0x20u);
  }

LABEL_9:
  *v33 = 0;
  *buf = 1;
  buf[8] = 0;
  *&buf[12] = 0x80000000;
  *&buf[16] = "";
  started = re::AnimationManager::startAnimation(a2, v9, 0, &v30, buf, 1, a3, v33, 0, 0);
  *(v7 + 152) = started;
  *(v7 + 160) = v20;
  if (*v33)
  {

    started = *v11;
  }

  if (started)
  {
    v21 = *(a3 + 160);
    v22 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(started + (*(v7 + 160) >> 56 << 6) + 72, *(v7 + 160));
    if (v22)
    {
      *(v22 + 160) = v21;
    }
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v31);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v31);
  return v7;
}

re::StringID *re::StringID::operator=<15ul>(re::StringID *a1)
{
  re::StringID::destroyString(a1);
  *a1 = 2 * re::internal::compileTimeHornerHash<15ul>(31, "Fade animation", 0, 0, 14);
  *(a1 + 1) = "Fade animation";
  return a1;
}

void re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(re::internal::AnimationHandoffBehavior *this)
{
  re::AnimationController::stop((this + 152), 0.0);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 168);
  *(this + 4) = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 72));
  re::StringID::destroyString((this + 56));
}

void re::FloatAnimation::~FloatAnimation(re::FloatAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationHandoffBehavior::update(re::internal::AnimationHandoffBehavior *this, re::AnimationManager *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      re::AnimationController::clock(v21, (this + 152), 0);
      if (LOBYTE(v21[0]) == 1)
      {
        re::AnimationManager::removePending(a2, *this, this);
        re::AnimationManager::remove(a2, *this, 0);
        return 1;
      }

      return 0;
    }

    if (v4 != 2)
    {
      goto LABEL_20;
    }

LABEL_10:
    re::AnimationController::clock(v21, (this + 152), 0);
    return LOBYTE(v21[0]) == 1;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v5 = *this;
    if (!*(*this + 184))
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v8 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v16 = 468;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl(v9, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v10, v11);
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(*(v5 + 24) + 8);
    if (v6 == 1.0 || fabsf(v6 + -1.0) < (((fabsf(v6) + 1.0) + 1.0) * 0.00001))
    {
      re::AnimationManager::removePending(a2, v5, this);
      return 1;
    }

    return 0;
  }

LABEL_20:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected animation handoff type.", "!Unreachable code", "update", 83);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected animation handoff type.");
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

double re::HermiteEase::clone(re::HermiteEase *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 16, 8);
  result = *(this + 1);
  *(v4 + 8) = result;
  *v4 = &unk_1F5CADE60;
  return result;
}

float re::HermiteEase::easeIn(re::HermiteEase *this, float a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v2 = 1.0;
    if (a2 < 1.0)
    {
      return ((a2 * a2) * (3.0 - a2)) * 0.5;
    }
  }

  return v2;
}

uint64_t re::Timeline::Timeline(uint64_t a1, int a2)
{
  *a1 = &unk_1F5CAD3A8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  return a1;
}

uint64_t re::internal::compileTimeHornerHash<15ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  result = a5 - a4;
  if (a5 - a4 <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        v10 = 31 * a3;
        return v10 + *(a2 + v6);
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          v10 = 961 * a3 - *(a2 + a4) + 32 * *(a2 + a4);
          v6 = a4 + 1;
          return v10 + *(a2 + v6);
        case 3:
          v10 = 29791 * a3 + 961 * *(a2 + a4) - *(a2 + a4 + 1) + 32 * *(a2 + a4 + 1);
          v6 = a4 + 2;
          return v10 + *(a2 + v6);
        case 4:
          v10 = 923521 * a3 + 29791 * *(a2 + a4) + 961 * *(a2 + a4 + 1) - *(a2 + a4 + 2) + 32 * *(a2 + a4 + 2);
          v6 = a4 + 3;
          return v10 + *(a2 + v6);
      }
    }

LABEL_25:
    v11 = a4 + (result >> 1);
    v12 = re::internal::compileTimeHornerHash<15ul>(a1, a2, a3, a4, v11 - 1);
    v6 = a5 - 1;
    v10 = re::internal::compileTimeHornerHash<15ul>(a1, a2, *(a2 + v11 - 1) + v12 * a1, v11, a5 - 1) * a1;
    return v10 + *(a2 + v6);
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        v10 = 0xC694446F01 * a3 + 0x667E12CDFLL * *(a2 + a4) + 887503681 * *(a2 + a4 + 1) + 28629151 * *(a2 + a4 + 2) + 923521 * *(a2 + a4 + 3) + 29791 * *(a2 + a4 + 4) + 961 * *(a2 + a4 + 5) - *(a2 + a4 + 6) + 32 * *(a2 + a4 + 6);
        v6 = a4 + 7;
        return v10 + *(a2 + v6);
      case 9:
        v10 = 0x180BF449711FLL * a3 + 0xC694446F01 * *(a2 + a4) + 0x667E12CDFLL * *(a2 + a4 + 1) + 887503681 * *(a2 + a4 + 2) + 28629151 * *(a2 + a4 + 3) + 923521 * *(a2 + a4 + 4) + 29791 * *(a2 + a4 + 5) + 961 * *(a2 + a4 + 6) - *(a2 + a4 + 7) + 32 * *(a2 + a4 + 7);
        v6 = a4 + 8;
        return v10 + *(a2 + v6);
      case 10:
        v10 = 0x2E97294E4B2C1 * a3 + 0x180BF449711FLL * *(a2 + a4) + 0xC694446F01 * *(a2 + a4 + 1) + 0x667E12CDFLL * *(a2 + a4 + 2) + 887503681 * *(a2 + a4 + 3) + 28629151 * *(a2 + a4 + 4) + 923521 * *(a2 + a4 + 5) + 29791 * *(a2 + a4 + 6) + 961 * *(a2 + a4 + 7) - *(a2 + a4 + 8) + 32 * *(a2 + a4 + 8);
        v6 = a4 + 9;
        return v10 + *(a2 + v6);
    }

    goto LABEL_25;
  }

  if (result == 5)
  {
    v10 = 28629151 * a3 + 923521 * *(a2 + a4) + 29791 * *(a2 + a4 + 1) + 961 * *(a2 + a4 + 2) - *(a2 + a4 + 3) + 32 * *(a2 + a4 + 3);
    v6 = a4 + 4;
    return v10 + *(a2 + v6);
  }

  if (result == 6)
  {
    v10 = 887503681 * a3 + 28629151 * *(a2 + a4) + 923521 * *(a2 + a4 + 1) + 29791 * *(a2 + a4 + 2) + 961 * *(a2 + a4 + 3) - *(a2 + a4 + 4) + 32 * *(a2 + a4 + 4);
    v6 = a4 + 5;
    return v10 + *(a2 + v6);
  }

  if (result != 7)
  {
    goto LABEL_25;
  }

  v10 = 0x667E12CDFLL * a3 + 887503681 * *(a2 + a4) + 28629151 * *(a2 + a4 + 1) + 923521 * *(a2 + a4 + 2) + 29791 * *(a2 + a4 + 3) + 961 * *(a2 + a4 + 4) - *(a2 + a4 + 5) + 32 * *(a2 + a4 + 5);
  v6 = a4 + 6;
  return v10 + *(a2 + v6);
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 4)
    {
      return result;
    }

    v5 = 8;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(result, a2);
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

void re::Skeleton::init(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v142 = *MEMORY[0x1E69E9840];
  v8 = a4[1];
  if (!v8)
  {
    v9 = v137;
    v11 = v138.i64[1];
    v10 = v138.i64[0];
    *a7 = 0;
    v12 = 1003;
LABEL_59:
    *(a7 + 8) = v12;
    *(a7 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a7 + 24) = v9;
    *(a7 + 40) = v10;
    *(a7 + 48) = v11;
    return;
  }

  if (v8 >= 0xFFFFFFFF)
  {
LABEL_58:
    v9 = v137;
    v11 = v138.i64[1];
    v10 = v138.i64[0];
    *a7 = 0;
    v12 = 1032;
    goto LABEL_59;
  }

  v13 = a5[1];
  if (v8 != v13)
  {
    re::DynamicString::format(&v137, "Mismatching parent indices count (%u != %zu).", a2, a4[1], v13);
    goto LABEL_58;
  }

  j = a6;
  if (v8 != *(a6 + 8))
  {
    re::DynamicString::format(&v137, "Mismatching local rest pose joint count (%u != %zu).", a2, a4[1], v8);
    v9 = v137;
    v11 = v138.i64[1];
    v10 = v138.i64[0];
    *a7 = 0;
    v12 = 1004;
    goto LABEL_59;
  }

  v15 = a4;
  v17 = a2;
  for (i = 0; i != v8; ++i)
  {
    v20 = *(*a5 + 4 * i);
    if (v20 != -1 && i <= v20)
    {
      re::DynamicString::format(&v137, "Joint parent (%u) must proceed child (%u) in joint order.", a2, *(*a5 + 4 * i), i);
      v9 = v137;
      v11 = v138.i64[1];
      v10 = v138.i64[0];
      *a7 = 0;
      v12 = 1031;
      goto LABEL_59;
    }
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((a1 + 17), a2, 2 * v8);
  v23 = 0;
  *v135 = 0;
  v24 = &str_67;
  do
  {
    v25 = v23;
    v26 = *(v15 + 8);
    if (v26 <= v23)
    {
      goto LABEL_79;
    }

    v27 = (*v15 + 16 * v23);
    v28 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), v27, v135);
    if (*v28 != *v135)
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
      re::DynamicString::format(&v137, "Duplicate joint name found: %s", v94, v27->var1);
      v9 = v137;
      v11 = v138.i64[1];
      v10 = v138.i64[0];
      *a7 = 0;
      v12 = 1030;
      goto LABEL_59;
    }

    var1 = v27->var1;
    v30 = strrchr(var1, 47);
    if (v30)
    {
      var1 = v30 + 1;
    }

    v137.i64[0] = 0;
    v137.i64[1] = &str_67;
    v31 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), &v137, v135);
    if (v137.i8[0])
    {
      if (v137.i8[0])
      {
      }
    }

    v23 = *v135 + 1;
    *v135 = v23;
  }

  while (v23 < v8);
  v131 = j;
  re::StringID::operator=(a1, a3);
  re::FixedArray<re::StringID>::init<>(a1 + 2, v17, v8);
  re::FixedArray<re::StringID>::operator=((a1 + 2), v15);
  re::FixedArray<int>::init<>(a1 + 5, v17, v8);
  re::FixedArray<int>::operator=((a1 + 5), a5);
  v133 = v17;
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1 + 8, v17, v8);
  v15 = 0;
  v24 = 1;
  do
  {
    v32 = v15 + 1;
    if (v15 + 1 < v8)
    {
      LODWORD(v33) = 0;
      v17 = a1[6];
      v34 = v24;
      while (v17 > v34)
      {
        if (v15 == *(a1[7] + 4 * v34))
        {
          v33 = (v33 + 1);
        }

        else
        {
          v33 = v33;
        }

        if (v8 == ++v34)
        {
          goto LABEL_33;
        }
      }

      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = v34;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v97, &v134, &v137, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_67:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = v34;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v100, &v134, &v137, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = v15;
      *&v135[28] = 2048;
      *&v135[30] = j;
      _os_log_send_and_compose_impl(v103, &v134, &v137, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_75:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = 0;
      *&v135[28] = 2048;
      *&v135[30] = 0;
      _os_log_send_and_compose_impl(v106, &v134, &v137, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_79:
      re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v25, v26, v131);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v125, v127);
      __break(1u);
LABEL_80:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = v15;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v109, &v134, &v137, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_84:
      re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v37);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v126, v128);
      __break(1u);
LABEL_85:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = v15;
      *&v135[28] = 2048;
      *&v135[30] = v24;
      _os_log_send_and_compose_impl(v112, &v134, &v137, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v113 = MEMORY[0x1E69E9C10];
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = j;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v115, &v134, &v137, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v116 = MEMORY[0x1E69E9C10];
      v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v117)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = j;
      *&v135[28] = 2048;
      *&v135[30] = v24;
      _os_log_send_and_compose_impl(v118, &v134, &v137, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v119 = MEMORY[0x1E69E9C10];
      v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v120)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = j;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v121, &v134, &v137, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v134 = 0;
      v141 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v122 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      *&v135[14] = 468;
      *&v135[18] = 2048;
      *&v135[20] = j;
      *&v135[28] = 2048;
      *&v135[30] = v17;
      _os_log_send_and_compose_impl(v124, &v134, &v137, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v129, v130);
      _os_crash_msg();
      __break(1u);
    }

    v33 = 0;
LABEL_33:
    v17 = a1[9];
    if (v17 <= v15)
    {
      goto LABEL_80;
    }

    re::FixedArray<int>::init<>((a1[10] + 24 * v15), v133, v33);
    if (v32 < v8)
    {
      v17 = a1[6];
      v34 = v24;
      while (v17 > v34)
      {
        if (v15 == *(a1[7] + 4 * v34))
        {
          j = a1[9];
          if (j <= v15)
          {
            goto LABEL_71;
          }

          v35 = a1[10] + 24 * v15;
          if (!*(v35 + 8))
          {
            goto LABEL_75;
          }

          **(v35 + 16) = v34;
        }

        if (v8 == ++v34)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_67;
    }

LABEL_42:
    ++v24;
    ++v15;
  }

  while (v32 != v8);
  v17 = v133;
  re::FixedArray<re::GenericSRT<float>>::init<>(a1 + 11, v133, v8);
  re::FixedArray<re::GenericSRT<float>>::operator=((a1 + 11), v131);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 14, v133, v8);
  for (j = 0; j != v8; ++j)
  {
    v37 = a5[1];
    if (v37 <= j)
    {
      goto LABEL_84;
    }

    v15 = *(*a5 + 4 * j);
    if (v15 == -1)
    {
      v17 = a1[12];
      if (v17 <= j)
      {
        goto LABEL_97;
      }

      v17 = a1[15];
      if (v17 <= j)
      {
        goto LABEL_101;
      }

      v73 = (a1[13] + 48 * j);
      v71 = v73[2];
      v71.i32[3] = 1.0;
      v74 = v73[1].f32[0];
      v75 = v73[1].f32[1];
      v76 = v74 + v74;
      v77 = v73[1].f32[2];
      v78 = v73[1].f32[3];
      v79 = (v74 + v74) * v77;
      v80 = (v75 + v75) * v78;
      v81 = v77 * (v75 + v75);
      v82 = (v74 + v74) * v78;
      v83 = v74 * (v74 + v74);
      v84 = v75 * (v75 + v75);
      v85.i32[3] = 0;
      v85.f32[0] = v79 + v80;
      v85.f32[1] = v81 - v82;
      v85.f32[2] = 1.0 - (v83 + v84);
      v86 = v76 * v75;
      v87 = (v77 + v77) * v78;
      v88 = v77 * (v77 + v77);
      *&v89 = v81 + v82;
      v90.f32[0] = v86 - v87;
      v90.f32[1] = 1.0 - (v83 + v88);
      v90.i64[1] = v89;
      v72 = vmulq_laneq_f32(v85, *v73, 2);
      v91 = v86 + v87;
      v92.i32[3] = 0;
      v92.f32[0] = 1.0 - (v88 + v84);
      v92.f32[1] = v91;
      v92.f32[2] = v79 - v80;
      v69 = vmulq_n_f32(v92, COERCE_FLOAT(*v73));
      v70 = vmulq_n_f32(v90, COERCE_FLOAT(HIDWORD(v73->i64[0])));
      v39 = a1[16];
    }

    else
    {
      v24 = a1[15];
      if (v24 <= v15)
      {
        goto LABEL_85;
      }

      v17 = a1[12];
      if (v17 <= j)
      {
        goto LABEL_89;
      }

      v38 = 0;
      v39 = a1[16];
      v40 = (a1[13] + 48 * j);
      v41 = v40[1].f32[0];
      v42 = v40[1].f32[1];
      v43 = v41 + v41;
      v44 = v42 + v42;
      v45 = v40[1].f32[2];
      v46 = v40[1].f32[3];
      v47 = v45 + v45;
      v48 = v41 * (v41 + v41);
      v49 = v42 * (v42 + v42);
      v50 = v45 * (v45 + v45);
      v51 = v43 * v42;
      v52 = v43 * v45;
      v53 = v44 * v45;
      v54 = v44 * v46;
      v55 = v47 * v46;
      v56.i32[3] = 0;
      v56.f32[0] = 1.0 - (v49 + v50);
      v56.f32[1] = v51 + v55;
      v56.f32[2] = v52 - v54;
      v57 = v43 * v46;
      v58 = 1.0 - (v48 + v50);
      v59.i32[3] = 0;
      v59.f32[0] = v51 - v55;
      v59.f32[1] = v58;
      v59.f32[2] = v53 + v57;
      v60 = (v39 + (v15 << 6));
      v61.i32[3] = 0;
      v61.f32[0] = v52 + v54;
      v61.f32[1] = v53 - v57;
      v61.f32[2] = 1.0 - (v48 + v49);
      v62 = vmulq_laneq_f32(v61, *v40, 2);
      v63 = v40[2];
      v63.i32[3] = 1.0;
      v64 = *v60;
      v65 = v60[1];
      v66 = v60[2];
      v67 = v60[3];
      v68 = vmulq_n_f32(v59, COERCE_FLOAT(HIDWORD(v40->i64[0])));
      *v135 = vmulq_n_f32(v56, COERCE_FLOAT(*v40));
      *&v135[16] = v68;
      *&v135[32] = v62;
      v136 = v63;
      do
      {
        *(&v137 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(*&v135[v38])), v65, *&v135[v38], 1), v66, *&v135[v38], 2), v67, *&v135[v38], 3);
        v38 += 16;
      }

      while (v38 != 64);
      if (v24 <= j)
      {
        goto LABEL_93;
      }

      v69 = v137;
      v70 = v138;
      v72 = v139;
      v71 = v140;
    }

    v93 = (v39 + (j << 6));
    *v93 = v69;
    v93[1] = v70;
    v93[2] = v72;
    v93[3] = v71;
  }

  *a7 = 1;
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
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

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::FixedArray<re::StringID>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<re::FixedArray<unsigned int>>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

double re::Skeleton::deinit(re::Skeleton *this)
{
  re::StringID::invalid(&v4);
  v2 = re::StringID::operator=(this, &v4);
  if (v4)
  {
    if (v4)
    {
    }
  }

  re::FixedArray<re::StringID>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
}

uint64_t re::Skeleton::estimatedFootprint(const char **this)
{
  if (*this)
  {
    v2 = strlen(this[1]) + 185;
  }

  else
  {
    v2 = 184;
  }

  v3 = this[3];
  v4 = v2 + 16 * v3;
  if (v3)
  {
    v5 = (this[4] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v4 + 4 * this[6] + 48 * this[12] + (&this[15][*(this + 40)] << 6);
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = this[19];
    while (1)
    {
      v11 = *v10;
      v10 += 32;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    v12 = this[19];
    do
    {
      v13 = &v12[32 * v9];
      v15 = *(v13 + 2);
      v14 = v13 + 8;
      if (v15)
      {
        v16 = strlen(*(v14 + 1)) + 1;
      }

      else
      {
        v16 = 0;
      }

      v7 += v16;
      if (v8 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v8;
      }

      while (v17 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*&v12[32 * v9] & 0x80000000) != 0)
        {
          goto LABEL_29;
        }
      }

      LODWORD(v9) = v17;
LABEL_29:
      ;
    }

    while (v9 != v8);
  }

  return v7;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info) = &unk_1F5CADF68;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Matrix4x4F(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info, 0);
    qword_1EE186DD0 = 0x1800000004;
    dword_1EE186DD8 = v8;
    word_1EE186DDC = 0;
    *&xmmword_1EE186DE0 = 0;
    *(&xmmword_1EE186DE0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186DF0 = v7;
    unk_1EE186DF8 = 0;
    re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info = &unk_1F5CADF68;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186DE0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info) = &unk_1F5CAE000;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_SRT(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info, 0);
    qword_1EE186F38 = 0x1800000004;
    dword_1EE186F40 = v8;
    word_1EE186F44 = 0;
    *&xmmword_1EE186F48 = 0;
    *(&xmmword_1EE186F48 + 1) = 0xFFFFFFFFLL;
    qword_1EE186F58 = v7;
    unk_1EE186F60 = 0;
    re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info = &unk_1F5CAE000;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186F48 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info) = &unk_1F5CAE098;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info, 0);
    qword_1EE186E18 = 0x1800000004;
    dword_1EE186E20 = v8;
    word_1EE186E24 = 0;
    *&xmmword_1EE186E28 = 0;
    *(&xmmword_1EE186E28 + 1) = 0xFFFFFFFFLL;
    qword_1EE186E38 = v7;
    unk_1EE186E40 = 0;
    re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info = &unk_1F5CAE098;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186E28 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info) = &unk_1F5CAE130;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint32_t(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info, 0);
    qword_1EE186CB0 = 0x1800000004;
    dword_1EE186CB8 = v8;
    word_1EE186CBC = 0;
    *&xmmword_1EE186CC0 = 0;
    *(&xmmword_1EE186CC0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186CD0 = v7;
    unk_1EE186CD8 = 0;
    re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info = &unk_1F5CAE130;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186CC0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info) = &unk_1F5CAE1C8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  v8 = re::introspect_uint32_t(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, 0);
    qword_1EE186270 = 0x3000000007;
    dword_1EE186278 = v10;
    word_1EE18627C = 0;
    *&xmmword_1EE186280 = 0;
    *(&xmmword_1EE186280 + 1) = 0xFFFFFFFFLL;
    qword_1EE186290 = v6;
    unk_1EE186298 = 0;
    qword_1EE1862A0 = v9;
    unk_1EE1862A8 = 0;
    re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info = &unk_1F5CAE1C8;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE186280 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

unint64_t *re::FixedArray<re::StringID>::copy(unint64_t *result, uint64_t **a2)
{
  v2 = result[1];
  if (v2 == a2[1])
  {
    if (v2)
    {
      v3 = *a2;
      result = result[2];
      v4 = 16 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        v3 += 2;
        result = v5 + 2;
        v4 -= 16;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

re::IntrospectionFixedArrayBase *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(re::IntrospectionFixedArrayBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionFixedArray<re::Matrix4x4<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionFixedArrayBase::childInfo(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 603, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::Matrix4x4<float>>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::Matrix4x4<float>>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = a2[1];
      if (v12 <= v11)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v13 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 468;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 64;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<re::Matrix4x4<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 6);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + (a3 << 6);
}

void re::IntrospectionFixedArrayBase::~IntrospectionFixedArrayBase(re::IntrospectionFixedArrayBase *this)
{
  *this = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArrayBase::init(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "init", 593);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionFixedArrayBase::deinit(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "deinit", 594);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionFixedArrayBase::size(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 595);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionFixedArrayBase::isInitialized(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "isInitialized", 596);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionFixedArrayBase::elementAt(re::IntrospectionFixedArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 597);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 598);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void *re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
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
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + (v1 << 6);
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::GenericSRT<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::GenericSRT<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::GenericSRT<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::GenericSRT<float>>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::GenericSRT<float>>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = a2[1];
      if (v13 <= v12)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 48;
    }

    while (a5 != v12);
  }

  return result;
}

unint64_t re::IntrospectionFixedArray<re::GenericSRT<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 48 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 48 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  v8 = re::FixedArray<re::GenericSRT<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
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
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 48 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::StringID>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::StringID>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::StringID>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::StringID>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::StringID>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = a2[1];
      if (v13 <= v12)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 16;
    }

    while (a5 != v12);
  }

  return result;
}

unint64_t re::IntrospectionFixedArray<re::StringID>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::StringID>::deinit(a1);

  return re::FixedArray<re::StringID>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::StringID>::deinit(a1);
  v8 = re::FixedArray<re::StringID>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
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
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 16 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<unsigned int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned int>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned int>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<int>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = a2[1];
      if (v12 <= v11)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v13 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 468;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 4;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<unsigned int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<int>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
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
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 4 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(&v25, a1, &v19);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v19, v21, a1, 8, 1u, 0);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, 0xFFFFFFFFLL, &v22, re::internal::less<re::StringID>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a5, &v19, a1);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

re::IntrospectionHashTableBase *re::IntrospectionHashTableBase::IntrospectionHashTableBase(re::IntrospectionHashTableBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE2E8;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *(this + 9) = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  return this;
}

void *re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionHashTableBase::childInfo(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  if (!a2)
  {
    v4 = 48;
    return *(this + v4);
  }

  if (a2 == 1)
  {
    v4 = 64;
    return *(this + v4);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "!Unreachable code", "childInfo", 862, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Index out of range.");
  __break(1u);
  return result;
}

double re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::IntrospectionHashTableBase::~IntrospectionHashTableBase(re::IntrospectionHashTableBase *this)
{
  *this = &unk_1F5CAE2E8;
  v2 = this + 48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAE2E8;
  v2 = this + 48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 64);
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionHashTableBase::setCapacity(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "setCapacity", 849);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionHashTableBase::size(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 850);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionHashTableBase::clear(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "clear", 851);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionHashTableBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 852);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionHashTableBase::iterate(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "iterate", 853);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionHashTableBase::destroyKey(re::IntrospectionHashTableBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "destroyKey", 854);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t std::function<BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v8, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::less<re::StringID>(v5, v6);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

char *re::AnimationClock::update(char *result, uint64_t a2, uint64_t a3, float a4)
{
  if (*(result + 17) == 1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(result + 17) = 1;
      *(result + 1) = v4;
      v5 = *(a3 + 8);
      v6 = fabsf(v5);
      v7 = v4 * v6 - (v6 * *a3);
      if (v7 >= 0.0)
      {
        v15 = v7;
        v8 = *(a3 + 4);
        if (v8 >= v15 || vabds_f32(v15, v8) < (((fabsf(v15) + fabsf(v8)) + 1.0) * 0.00001))
        {
          *result = 3;
          ++*(result + 5);
        }

        else if (*(a3 + 25))
        {
          *result = 5;
        }

        else
        {
          *result = 1;
          if (v8 <= 0.0)
          {
            goto LABEL_11;
          }

          v7 = v8;
        }

LABEL_33:
        v20 = v5 * a4;
        v22 = *(a3 + 12);
        v21 = *(a3 + 16);
        if (v8 <= (v21 - v22))
        {
          v23 = v8;
        }

        else
        {
          v23 = v21 - v22;
        }

        v24 = *(a3 + 20);
        v25 = v7 + v24;
        v26 = fabsf(v23);
        if (v26 < 0.00001 || (LODWORD(v23) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          if (*(a3 + 24))
          {
            v31 = v26 < 0.00001;
          }

          else
          {
            v31 = 0;
          }

          v32 = 0.0;
          if (!v31)
          {
            v32 = v7 + v24;
          }

          if (v5 >= 0.0)
          {
            v33 = v22 + v32;
          }

          else
          {
            v33 = v21 - v32;
          }

          v37 = v33;
          if ((result[16] & 1) == 0)
          {
            result[16] = 1;
          }

          *(result + 3) = v37;
          v38 = *(a3 + 4);
          v39 = 0.0;
          if (fabsf(v38) >= 0.00001)
          {
            v39 = v7 / v38;
          }

          *(result + 16) = v39;
          goto LABEL_143;
        }

        v27 = v7 / v23;
        if (!*(a3 + 24))
        {
          if (v27 > 1.0)
          {
            v27 = 1.0;
          }

          if (v27 < 0.0)
          {
            v27 = 0.0;
          }

          v40 = -v24;
          v41 = (v21 - v22) - v24;
          v42 = fmaxf(-v24, 0.0);
          if (v23 > v41)
          {
            v23 = v41;
          }

          v43 = v7;
          if (v23 < v43)
          {
            v43 = v23;
          }

          if (v43 < v42)
          {
            v43 = v42;
          }

          v44 = v43 - v42;
          v45 = result + 16;
          if (v5 >= 0.0)
          {
            v46 = (v22 - (v40 - v42)) + v44;
          }

          else
          {
            v46 = (v21 - (v41 - v23)) - v44;
          }

          v47 = v46;
          if (result[16])
          {
            goto LABEL_138;
          }

LABEL_82:
          *v45 = 1;
          goto LABEL_138;
        }

        v28 = floorf(v25 / v23);
        v29 = (v25 / v23) - v28;
        if (v29 > 1.0)
        {
          v29 = 1.0;
        }

        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        if (*(a3 + 24) == 3)
        {
          if ((((v5 < 0.0) ^ v28) & 1) == 0)
          {
LABEL_45:
            v30 = v22 + (v29 * v23);
            goto LABEL_78;
          }
        }

        else if (v5 >= 0.0)
        {
          goto LABEL_45;
        }

        v30 = v21 - (v29 * v23);
LABEL_78:
        v47 = v30;
        v45 = result + 16;
        if (result[16])
        {
          goto LABEL_138;
        }

        goto LABEL_82;
      }

      if ((*(a3 + 25) & 2) != 0)
      {
        *result = 4;
        v8 = *(a3 + 4);
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    *(result + 17) = 1;
    goto LABEL_15;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_15:
    *result = 1;
    if (result[16] == 1)
    {
      result[16] = 0;
    }

    *(result + 16) = 2143289344;
    *(result + 9) = 0;
    *(result + 1) = 0;
    return result;
  }

  v9 = *(a2 + 8);
  *(result + 1) = v9;
  v10 = *(a3 + 8);
  v11 = fabsf(v10);
  v12 = v10 < 0.0;
  result[56] = v10 < 0.0;
  v13 = v9 * v11 - (v11 * *a3);
  if (v13 < 0.0)
  {
    if ((*(a3 + 25) & 2) == 0)
    {
LABEL_9:
      v14 = 2;
LABEL_10:
      *result = v14;
LABEL_11:
      if (result[16] == 1)
      {
        result[16] = 0;
      }

      *(result + 16) = 2143289344;
      *(result + 9) = 0;
      return result;
    }

    v34 = 0;
    v17 = *(a3 + 4);
    v19 = 4;
    goto LABEL_86;
  }

  v16 = v13;
  v17 = *(a3 + 4);
  if ((*(a3 + 25) & 1) == 0)
  {
    if (v17 > v16 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
    {
      v19 = 3;
    }

    else
    {
      if (v17 < v16 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
      {
        v18 = *result;
        if (v18 == 1 || v18 == 6 || v17 <= 0.0)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      v13 = v17;
      v19 = 6;
    }

    goto LABEL_85;
  }

  v19 = 3;
  if (v17 >= v16)
  {
LABEL_85:
    v34 = 1;
    goto LABEL_86;
  }

  v35 = ((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001;
  v36 = vabds_f32(v16, v17);
  v34 = v36 < v35;
  if (v36 < v35)
  {
    v19 = 3;
  }

  else
  {
    v19 = 5;
  }

LABEL_86:
  v20 = v10 * a4;
  *result = v19;
  *(result + 5) += v34;
  v49 = *(a3 + 12);
  v48 = *(a3 + 16);
  if (v17 <= (v48 - v49))
  {
    v50 = v17;
  }

  else
  {
    v50 = v48 - v49;
  }

  v51 = *(a3 + 20);
  v52 = v13 + v51;
  v53 = fabsf(v50);
  if (v53 >= 0.00001 && (LODWORD(v50) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v27 = v13 / v50;
    v54 = *(a3 + 24);
    if (*(a3 + 24))
    {
      v55 = v10 < 0.0;
      v56 = (v52 / v50) - floorf(v52 / v50);
      if (v56 > 1.0)
      {
        v56 = 1.0;
      }

      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      v57 = vcvtms_s32_f32(v52 / v50);
      v58 = v54 == 3;
      if (v54 == 3)
      {
        v59 = (v55 ^ v57) & 1;
      }

      else
      {
        v59 = v12;
      }

      if (v58)
      {
        v60 = v55 ^ v57;
      }

      else
      {
        v60 = v55;
      }

      result[56] = v59;
      if (result[16] == 1)
      {
        v61 = *(result + 3);
        *(result + 15) = v61;
        v62 = v48 - (v56 * v50);
        v63 = v49 + (v56 * v50);
        if (v60)
        {
          v63 = v62;
        }
      }

      else
      {
        *(result + 15) = 0;
        if (v60)
        {
          v63 = v48 - (v56 * v50);
        }

        else
        {
          v63 = v49 + (v56 * v50);
        }

        result[16] = 1;
      }

      *(result + 3) = v63;
      v77 = *(result + 12);
      *(result + 12) = v57;
      *(result + 13) = v77;
      goto LABEL_142;
    }

    if (v27 > 1.0)
    {
      v27 = 1.0;
    }

    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v70 = -v51;
    v71 = (v48 - v49) - v51;
    v72 = fmaxf(-v51, 0.0);
    if (v50 > v71)
    {
      v50 = v71;
    }

    v73 = v13;
    if (v50 < v73)
    {
      v73 = v50;
    }

    if (v73 < v72)
    {
      v73 = v72;
    }

    v74 = v73 - v72;
    if (result[16] == 1)
    {
      v75 = *(result + 3);
      *(result + 15) = v75;
    }

    else
    {
      *(result + 15) = 0;
      result[16] = 1;
    }

    if (v10 >= 0.0)
    {
      v76 = (v49 - (v70 - v72)) + v74;
    }

    else
    {
      v76 = (v48 - (v71 - v50)) - v74;
    }

    v47 = v76;
LABEL_138:
    *(result + 3) = v47;
LABEL_142:
    *(result + 16) = v27;
LABEL_143:
    *(result + 9) = v20;
    return result;
  }

  if (*(a3 + 24))
  {
    v64 = v53 < 0.00001;
  }

  else
  {
    v64 = 0;
  }

  v65 = 0.0;
  if (!v64)
  {
    v65 = v13 + v51;
  }

  if (v10 >= 0.0)
  {
    v66 = v49 + v65;
  }

  else
  {
    v66 = v48 - v65;
  }

  v67 = v66;
  if ((result[16] & 1) == 0)
  {
    result[16] = 1;
  }

  *(result + 3) = v67;
  v68 = *(a3 + 4);
  v69 = 0.0;
  if (fabsf(v68) >= 0.00001)
  {
    v69 = v13 / v68;
  }

  *(result + 16) = v69;
  *(result + 9) = v20;
  result[56] = v12;
  return result;
}

const char *re::AnimationClock::clockStateToName(re::AnimationClock *this)
{
  v1 = *this;
  if (v1 > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_1E8717DD0[v1];
  }
}

void re::RigEnvironment::init(re::RigEnvironment *this, re::Allocator *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::init(this, a2, 1uLL);
  re::RigEnvironment::pushEnvironmentScope(this);
  v40 = "struct SRT{Vector3 scale;Quaternion rotation;Vector3 translation;}";
  *&v41 = 66;
  re::RigDataTypeClass::rigDataTypeParser(a2, &v40, &v81);
  re::StringID::StringID(&v103, &v82);
  re::RigEnvironment::insertRigDataType(this, &v103, &v81.var1, &v40);
  if (v103)
  {
    if (v103)
    {
    }
  }

  if (v40 & 1) == 0 && v42 && (v43)
  {
    (*(*v42 + 40))();
  }

  re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(&v81);
  re::RigGraphOperatorDefinition::registerBuiltIns(this, v6);
  re::registerIKinemaAnimNodes(this, v7);
  re::internal::registerPerformRayCastNode(this, v8);
  re::internal::registerGeneratePenetrationCorrectionIKTarget(this, v9);
  re::internal::registerTranslationFilter(this, v10);
  re::internal::registerTranslationAndRotationFilter(this, v11);
  v12 = re::StringID::invalid(&v81);
  v82.var1 = 0;
  *&v82.var0 = 0;
  v83 = 0;
  v93 = 0;
  v13 = 0uLL;
  memset(v85, 0, sizeof(v85));
  v84 = 0;
  v86 = 0;
  memset(v87, 0, sizeof(v87));
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  v90 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  if (*&v81.var0)
  {
    v13 = 0uLL;
    if (*&v81.var0)
    {
      v13 = 0uLL;
    }
  }

  v81.var1 = "axpy";
  *&v81.var0 = 6017280;
  *&v79[12] = v13;
  v78 = v13;
  *v79 = v13;
  v77 = v13;
  v80 = 0x7FFFFFFFLL;
  re::RigGraphDefinitionBuilder::init(&v77, a2, &v81, this);
  re::RigGraphDefinitionBuilder::addNode(&v77, "ScaleVector3", "scale", v74);
  if ((v74[0] & 1) == 0 && v75)
  {
    if (BYTE8(v75))
    {
      (*(*v75 + 40))();
    }

    v76 = 0u;
    v75 = 0u;
  }

  re::RigGraphDefinitionBuilder::addNode(&v77, "AddVector3", "add", v71);
  if ((v71[0] & 1) == 0 && v72)
  {
    if (BYTE8(v72))
    {
      (*(*v72 + 40))();
    }

    v73 = 0u;
    v72 = 0u;
  }

  re::RigGraphDefinitionBuilder::addConnection(&v77, "scale", "output", "add", "input1", 0, 0, v68);
  if ((v68[0] & 1) == 0 && v69)
  {
    if (BYTE8(v69))
    {
      (*(*v69 + 40))();
    }

    v70 = 0u;
    v69 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v77, "scale", "input1", "x", "[0, 0, 0]", 1, v65);
  if ((v65[0] & 1) == 0 && v66)
  {
    if (BYTE8(v66))
    {
      (*(*v66 + 40))();
    }

    v67 = 0u;
    v66 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v77, "scale", "input2", "a", "1", 1, v62);
  if ((v62[0] & 1) == 0 && v63)
  {
    if (BYTE8(v63))
    {
      (*(*v63 + 40))();
    }

    v64 = 0u;
    v63 = 0u;
  }

  re::RigGraphDefinitionBuilder::promoteParameter(&v77, "add", "input2", "y", "[0, 0, 0]", 1, v59);
  if ((v59[0] & 1) == 0 && v60)
  {
    if (BYTE8(v60))
    {
      (*(*v60 + 40))();
    }

    v61 = 0u;
    v60 = 0u;
  }

  v14 = v56;
  re::RigGraphDefinitionBuilder::promoteParameter(&v77, "add", "output", "output", "", 0, v56);
  if ((v56[0] & 1) == 0 && v57)
  {
    if (BYTE8(v57))
    {
      (*(*v57 + 40))();
    }

    v58 = 0u;
    v57 = 0u;
  }

  re::RigGraphSystem::buildFromDefinition(a2, &v81, &v40);
  v16 = re::RigEnvironment::validateNewRigNode(v94, this, &v81);
  if (LOBYTE(v94[0]) == 1)
  {
    v17 = *(this + 5);
    if (v17)
    {
      v2 = v99;
      v18 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v17 - 1);
      v20 = v18;
      v21 = *(v18 + 56);
      if ((v21 + 1) >> 24)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 + 1;
      }

      *(v18 + 56) = v22;
      v23 = *(v18 + 52);
      v14 = *(v18 + 54);
      if (v23 == 0xFFFF && v14 == 0xFFFF)
      {
        if (*(v18 + 48) >= *(v18 + 44))
        {
          re::DataArray<re::RigGraphNode>::allocBlock(v18);
        }

        v24 = *(v20 + 16);
        v14 = (v24 - 1);
        if (v24)
        {
          v23 = *(v20 + 48);
          if (v23 < 0x10000)
          {
            v25 = (*(v20 + 32) + 16 * v14);
            *(v20 + 48) = v23 + 1;
            *(v25[1] + 4 * v23) = *(v20 + 56);
            v26 = *v25 + 200 * v23;
LABEL_63:
            ++*(v20 + 40);
            *(v26 + 32) = 0;
            *v26 = 0;
            *(v26 + 8) = 0u;
            *(v26 + 24) = 0;
            *v26 = v40;
            v40 = 0;
            *(v26 + 8) = v41;
            v41 = 0u;
            *(v26 + 32) = v43;
            LODWORD(v42) = v42 + 1;
            ++*(v26 + 24);
            *(v26 + 72) = 0;
            *(v26 + 64) = 0;
            *(v26 + 56) = 0;
            *(v26 + 40) = 0u;
            *(v26 + 40) = *(&v43 + 1);
            *(v26 + 48) = v44;
            v43 = 0u;
            v44 = 0u;
            *(v26 + 72) = v46;
            ++v45;
            ++*(v26 + 64);
            *(v26 + 112) = 0;
            *(v26 + 104) = 0;
            *(v26 + 96) = 0;
            *(v26 + 80) = 0u;
            *(v26 + 80) = *(&v46 + 1);
            v46 = 0u;
            *(v26 + 88) = v47;
            v47 = 0u;
            *(v26 + 112) = v49;
            ++v48;
            ++*(v26 + 104);
            *(v26 + 152) = 0;
            *(v26 + 144) = 0;
            *(v26 + 136) = 0;
            *(v26 + 120) = 0u;
            *(v26 + 120) = *(&v49 + 1);
            *(v26 + 128) = v50;
            v49 = 0u;
            v50 = 0u;
            *(v26 + 152) = v52;
            ++v51;
            ++*(v26 + 144);
            *(v26 + 192) = 0;
            *(v26 + 184) = 0;
            *(v26 + 176) = 0;
            *(v26 + 160) = 0u;
            *(v26 + 160) = *(&v52 + 1);
            v52 = 0u;
            *(v26 + 168) = v53;
            v53 = 0u;
            *(v26 + 192) = v55;
            v55 = 0;
            ++v54;
            ++*(v26 + 184);
            *&v103 = v23 + (v14 << 16) + ((*(v20 + 56) & 0xFFFFFF) << 32);
            re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v20 + 176, &v81, &v103);
            goto LABEL_64;
          }

LABEL_77:
          re::internal::assertLog(5, v19, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v23);
          _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v37);
          __break(1u);
        }

LABEL_73:
        v98 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v103 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v99 = 136315906;
        *(v2 + 4) = "operator[]";
        v100 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *(v2 + 14) = 789;
        v101 = 2048;
        *(v2 + 20) = v14;
        v102 = 2048;
        *(v2 + 30) = 0;
        _os_log_send_and_compose_impl(v36, &v98, &v103, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
        goto LABEL_77;
      }

      v27 = *(v18 + 16);
      if (v27 > v14)
      {
        v28 = (*(v18 + 32) + 16 * v14);
        *(v28[1] + 4 * v23) = v22;
        v26 = *v28 + 200 * v23;
        *(v18 + 52) = *v26;
        goto LABEL_63;
      }
    }

    else
    {
      re::internal::assertLog(4, v15, v16.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }

    v98 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = v27;
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v99 = 136315906;
    *(v2 + 4) = "operator[]";
    v100 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *(v2 + 14) = 789;
    v101 = 2048;
    *(v2 + 20) = v14;
    v102 = 2048;
    *(v2 + 30) = v31;
    _os_log_send_and_compose_impl(v33, &v98, &v103, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_73;
  }

  if (v95 && (v96 & 1) != 0)
  {
    (*(*v95 + 40))(v95, v97, v16);
  }

LABEL_64:
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(&v52 + 8);
  re::DynamicArray<re::StringID>::deinit(&v49 + 8);
  re::DynamicArray<re::RigGraphNodeChild>::deinit(&v46 + 8);
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v43 + 8);
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v40);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v78 + 1);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v91[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v89[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v87[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v85[8]);
  v29 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v82);
  if (*&v81.var0)
  {
    if (*&v81.var0)
    {
    }
  }

  re::RigEnvironment::pushEnvironmentScope(this);
}

_anonymous_namespace_ *re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void re::RigEnvironment::pushEnvironmentScope(re::RigEnvironment *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v52 = 0u;
  v45 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  *(&v39 + 4) = 0x1FFFFFFFFLL;
  v41 = 0uLL;
  v40 = 0uLL;
  v42 = 0uLL;
  v43 = 0;
  v44 = 0x1FFFFFFFFLL;
  v46 = 0u;
  v47 = 0u;
  v48 = 0x7FFFFFFF00000000uLL;
  v49 = 0u;
  v50 = 0u;
  v51 = 0x7FFFFFFF00000000uLL;
  v54 = 0x7FFFFFFF00000000uLL;
  v2 = *(this + 5);
  v52 = 0u;
  v3 = *(this + 1);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(this, (v2 + 8) >> 3);
    v3 = *(this + 1);
  }

  if (v3 <= v2 >> 3)
  {
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v59 = 858;
    v60 = 2048;
    v61 = v2 >> 3;
    v62 = 2048;
    v63 = v3;
    _os_log_send_and_compose_impl(v34, &v55, &v64, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    goto LABEL_31;
  }

  if (*(this + 16))
  {
    v4 = this + 24;
  }

  else
  {
    v4 = *(this + 4);
  }

  v5 = *&v4[8 * (v2 >> 3)];
  ++*(this + 5);
  ++*(this + 12);
  v6 = v5 + 272 * (v2 & 7);
  *(v6 + 48) = 0;
  *(v6 + 40) = 0;
  *(v6 + 52) = 0x1FFFFFFFFLL;
  v64 = 0u;
  *v6 = 0u;
  *&v65 = 0;
  *(v6 + 16) = 0;
  *&v66 = 0;
  *(v6 + 32) = 0;
  *(v6 + 24) = 1;
  DWORD2(v65) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6, v37);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v64);
  if (v64 && v66)
  {
    (*(*v64 + 40))(v64);
  }

  v7 = *(v6 + 40);
  *(v6 + 40) = DWORD2(v38);
  DWORD2(v38) = v7;
  v8 = *(v6 + 44);
  *(v6 + 44) = HIDWORD(v38);
  HIDWORD(v38) = v8;
  v9 = *(v6 + 48);
  *(v6 + 48) = v39;
  LODWORD(v39) = v9;
  v10 = *(v6 + 52);
  *(v6 + 52) = DWORD1(v39);
  DWORD1(v39) = v10;
  v11 = *(v6 + 56);
  *(v6 + 56) = DWORD2(v39);
  DWORD2(v39) = v11;
  *(v6 + 112) = 0;
  *(v6 + 104) = 0;
  *(v6 + 116) = 0x1FFFFFFFFLL;
  v64 = 0u;
  *(v6 + 64) = 0u;
  *&v65 = 0;
  *(v6 + 80) = 0;
  *&v66 = 0;
  *(v6 + 96) = 0;
  *(v6 + 88) = 1;
  DWORD2(v65) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 64, &v40);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v40, &v64);
  if (v64 && v66)
  {
    (*(*v64 + 40))(v64);
  }

  v12 = *(v6 + 104);
  *(v6 + 104) = DWORD2(v42);
  DWORD2(v42) = v12;
  v13 = *(v6 + 108);
  *(v6 + 108) = HIDWORD(v42);
  HIDWORD(v42) = v13;
  v14 = *(v6 + 112);
  *(v6 + 112) = v43;
  v43 = v14;
  v15 = *(v6 + 116);
  *(v6 + 116) = v44;
  LODWORD(v44) = v15;
  v16 = *(v6 + 120);
  *(v6 + 120) = HIDWORD(v44);
  HIDWORD(v44) = v16;
  *(v6 + 160) = 0x7FFFFFFF00000000;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 128) = v46;
  *&v46 = 0;
  *(v6 + 136) = *(&v46 + 1);
  *(&v46 + 1) = 0;
  *(v6 + 144) = v47;
  *&v47 = 0;
  *(v6 + 152) = DWORD2(v47);
  DWORD2(v47) = 0;
  *(v6 + 156) = HIDWORD(v47);
  HIDWORD(v47) = 0;
  *(v6 + 160) = v48;
  LODWORD(v48) = 0;
  *(v6 + 164) = DWORD1(v48);
  DWORD1(v48) = 0x7FFFFFFF;
  *(v6 + 168) = 1;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0x7FFFFFFF00000000;
  *(v6 + 176) = v49;
  *&v49 = 0;
  *(v6 + 184) = *(&v49 + 1);
  *(&v49 + 1) = 0;
  *(v6 + 192) = v50;
  *&v50 = 0;
  *(v6 + 200) = DWORD2(v50);
  DWORD2(v50) = 0;
  *(v6 + 204) = HIDWORD(v50);
  HIDWORD(v50) = 0;
  *(v6 + 208) = v51;
  LODWORD(v51) = 0;
  *(v6 + 212) = DWORD1(v51);
  DWORD1(v51) = 0x7FFFFFFF;
  *(v6 + 216) = 1;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0x7FFFFFFF00000000;
  *(v6 + 224) = v52;
  *&v52 = 0;
  *(v6 + 232) = *(&v52 + 1);
  *(&v52 + 1) = 0;
  *(v6 + 240) = v53;
  *&v53 = 0;
  *(v6 + 248) = DWORD2(v53);
  DWORD2(v53) = 0;
  *(v6 + 252) = HIDWORD(v53);
  HIDWORD(v53) = 0;
  *(v6 + 256) = v54;
  LODWORD(v54) = 0;
  *(v6 + 260) = DWORD1(v54);
  DWORD1(v54) = 0x7FFFFFFF;
  *(v6 + 264) = 1;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v52);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v49);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v46);
  re::DataArray<re::RigGraphOperatorDefinition>::deinit(&v40);
  if (v40)
  {
    if (v42)
    {
      (*(*v40 + 40))();
    }

    *&v42 = 0;
    *&v41 = 0;
    v40 = 0uLL;
    ++DWORD2(v41);
  }

  re::DataArray<re::RigGraphNode>::deinit(v37);
  if (*&v37[0])
  {
    v17 = v38;
    if (v38)
    {
      (*(**&v37[0] + 40))();
    }
  }

  v18 = *(this + 5);
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v18 - 1);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v19 + 128, *this, 128);
  v21 = *(this + 5);
  if (!v21)
  {
LABEL_31:
    re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    goto LABEL_32;
  }

  v22 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v21 - 1);
  *v22 = *this;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v22, 0);
  ++*(v22 + 24);
  *(v22 + 44) = 32;
  re::DataArray<re::RigGraphNode>::allocBlock(v22);
  v24 = *(this + 5);
  if (!v24)
  {
LABEL_32:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    goto LABEL_33;
  }

  v25 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v24 - 1);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25 + 176, *this, 32);
  v27 = *(this + 5);
  if (!v27)
  {
LABEL_33:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_34:
    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v28 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v27 - 1);
  *(v28 + 64) = *this;
  v29 = v28 + 64;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((v28 + 64), 0);
  ++*(v29 + 24);
  *(v29 + 44) = 32;
  re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(v29);
  v31 = *(this + 5);
  if (!v31)
  {
    goto LABEL_34;
  }

  v32 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v31 - 1);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v32 + 224, *this, 32);
}

void re::RigEnvironment::insertRigDataType(re::RigEnvironment *a1@<X0>, const char **a2@<X1>, const re::RigDataTypeClass *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEnvironment::validateNewRigType(&v11, a1, a2, a3);
  if (v11 == 1)
  {
    v9 = *(a1 + 5);
    if (v9)
    {
      v10 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, v9 - 1);
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v10 + 128, a2, a3);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }
  }

  else
  {
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 48) = v15;
    *(a4 + 32) = v14;
  }
}

void re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
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

uint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::removeLast(uint64_t a1)
{
  v2 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, *(a1 + 40) - 1);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 28);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 22);
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v2 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::deinit((v2 + 8));
  re::DynamicArray<unsigned long>::deinit((v2 + 8));
  re::DataArray<re::RigGraphNode>::deinit(v2);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  --*(a1 + 40);
  ++*(a1 + 48);
  return result;
}

void re::RigEnvironment::validateNewRigType(uint64_t *__return_ptr a1@<X8>, re::RigEnvironment *this@<X0>, const char **a3@<X1>, const re::RigDataTypeClass *a4@<X2>)
{
  re::RigEnvironment::lookupRigDataType(&v26, this, a3);
  if (v26 == 1)
  {
    if (!re::RigDataTypeClass::operator==(a4, v27))
    {
      re::DynamicString::format(&v22, "Type (%s) already exists and does not match new definition.", v8, a3[1]);
LABEL_19:
      v17 = v22;
      v18 = v23;
      v19 = v24;
      *a1 = 0;
      a1[1] = 5001;
      a1[2] = &re::AnimationErrorCategory(void)::instance;
      *(a1 + 3) = v17;
      a1[5] = v18;
      a1[6] = v19;
      goto LABEL_20;
    }
  }

  else
  {
    if (*a4 != 13)
    {
      re::RigEnvironment::lookupRigDataType(&v22, this, a4 + 1);
      if (v22 != 1)
      {
        re::DynamicString::format(&v22, "Type (%s) has an unknown base type: %s", v13, a3[1], *(a4 + 2));
        goto LABEL_19;
      }

      v14 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v25);
      if (v23)
      {
        if (v23)
        {
        }
      }
    }

    v9 = *(a4 + 5);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = re::RigDataTypeClass::attributeType(*(a4 + 5), *(a4 + 7), v10);
        re::RigEnvironment::lookupRigDataType(&v22, this, v11);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v12 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v25);
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_12;
        }
      }

      v15 = a3[1];
      v21 = *(re::RigDataTypeClass::attributeType(*(a4 + 5), *(a4 + 7), v10) + 8);
      re::DynamicString::format(&v22, "Type (%s) has an unknown attribute type: %s", v16, v15, v21);
      goto LABEL_19;
    }
  }

LABEL_12:
  *a1 = 1;
LABEL_20:
  if (v26 == 1)
  {
    v20 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v29);
    if (v28)
    {
      if (v28)
      {
      }
    }
  }
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::RigDataTypeClass>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v9) + 24;
  }
}

uint64_t *re::RigEnvironment::lookupRigDataType@<X0>(uint64_t *__return_ptr a1@<X8>, re::RigEnvironment *this@<X0>, const char **a3@<X1>)
{
  v6 = *(this + 5);
  if (v6)
  {
    v7 = 0;
    v8 = -1;
    while (1)
    {
      v9 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v6 + v8);
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 128, a3, v10 ^ (v10 >> 31), &v15);
      if (v17 != 0x7FFFFFFF)
      {
        break;
      }

      ++v7;
      v6 = *(this + 5);
      --v8;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    v13 = *(v9 + 144) + 88 * v17;
    *a1 = 1;
    *(a1 + 8) = *(v13 + 24);
    re::StringID::StringID((a1 + 2), (v13 + 32));
    return re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a1 + 4), (v13 + 48));
  }

  else
  {
LABEL_5:
    v11 = *this;
    v14[0] = a3[1];
    v14[1] = strlen(v14[0]);
    re::RigDataTypeClass::rigDataTypeParser(v11, v14, &v15);
    if (v15 == 1)
    {
      *a1 = v15;
      *(a1 + 8) = v16;
      re::StringID::StringID((a1 + 2), &v18);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray((a1 + 4), v19);
    }

    else
    {
      *a1 = 0;
    }

    return re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(&v15);
  }
}

__n128 re::RigEnvironment::validateNewRigNode@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RigEnvironment *this@<X0>, const re::StringID *a3@<X1>)
{
  if (re::RigEnvironment::lookupRigGraphNode(this, a3))
  {
    v6 = re::DynamicString::format(&v15, "Node (%s) already exists.", v5, *(a3 + 1));
    v7 = v16 & 1;
    if (v16)
    {
      v8 = *&v17[7];
    }

    else
    {
      v8 = v17;
    }

    result = v18;
    v18 = 0uLL;
    v10 = v19;
    v11 = v20;
    v19 = 0;
    v20 = 0;
    *a1 = 0;
    a1[1] = 5001;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = result;
    a1[5] = v10;
    a1[6] = v11;
    if (v15)
    {
      if (v7)
      {
        (*(*v15 + 40))();
      }
    }
  }

  else if (!strcmp(*(a3 + 1), "this"))
  {
    re::DynamicString::format(&v18, "Node name cannot be reserved keyword 'this'.", v12);
    result = v18;
    v13 = v19;
    v14 = v20;
    *a1 = 0;
    a1[1] = 5001;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = result;
    a1[5] = v13;
    a1[6] = v14;
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

void re::RigEnvironment::insertRigGraphNode(re::RigEnvironment *this@<X0>, const re::StringID *a2@<X1>, const re::RigGraphNode *a3@<X2>, uint64_t a4@<X8>)
{
  *&v9 = re::RigEnvironment::validateNewRigNode(&v13, this, a2).n128_u64[0];
  if (v13 == 1)
  {
    v10 = *(this + 5);
    if (v10)
    {
      v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v10 - 1);
      v12 = re::DataArray<re::RigGraphNode>::create<re::RigGraphNode const&>(v11, a3);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 176, a2, &v12);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v8, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }
  }

  else
  {
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 24) = v15;
    *(a4 + 48) = v17;
    *(a4 + 32) = v16;
  }
}

unint64_t re::DataArray<re::RigGraphNode>::create<re::RigGraphNode const&>(uint64_t a1, uint64_t *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 != 0xFFFF || v7 != 0xFFFF)
  {
    v9 = *(a1 + 16);
    if (v9 > v7)
    {
      v10 = (*(a1 + 32) + 16 * v7);
      *(v10[1] + 4 * v6) = v5;
      v11 = *v10 + 200 * v6;
      *(a1 + 52) = *v11;
      goto LABEL_15;
    }

    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v70 = 789;
    v71 = 2048;
    v72 = v7;
    v73 = 2048;
    v74 = v9;
    _os_log_send_and_compose_impl(v57, &v66, &v75, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  if (*(a1 + 48) >= *(a1 + 44))
  {
    re::DataArray<re::RigGraphNode>::allocBlock(a1);
  }

  v12 = *(a1 + 16);
  v7 = (v12 - 1);
  if (!v12)
  {
LABEL_52:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v70 = 789;
    v71 = 2048;
    v72 = v7;
    v73 = 2048;
    v74 = 0;
    _os_log_send_and_compose_impl(v60, &v66, &v75, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v61);
    __break(1u);
  }

  v6 = *(a1 + 48);
  if (v6 >= 0x10000)
  {
    goto LABEL_56;
  }

  v13 = (*(a1 + 32) + 16 * v7);
  *(a1 + 48) = v6 + 1;
  *(v13[1] + 4 * v6) = *(a1 + 56);
  v11 = *v13 + 200 * v6;
LABEL_15:
  ++*(a1 + 40);
  re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(v11, a2);
  re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(v11 + 40, a2 + 5);
  *(v11 + 80) = 0;
  *(v11 + 112) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  v14 = a2[10];
  if (v14)
  {
    v64 = v7;
    v15 = a2[12];
    *(v11 + 80) = v14;
    re::DynamicArray<re::RigGraphNodeChild>::setCapacity((v11 + 80), v15);
    ++*(v11 + 104);
    v16 = a2[12];
    v65 = v16;
    if (v16 >= *(v11 + 96))
    {
      re::DynamicArray<re::RigGraphNodeChild>::setCapacity((v11 + 80), v16);
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(a2[14], (a2[14] + 96 * *(v11 + 96)), *(v11 + 112));
      v20 = *(v11 + 96);
      if (v20 != v16)
      {
        v21 = a2[14];
        v22 = *(v11 + 112);
        v23 = 96 * v20;
        v24 = 96 * v16;
        do
        {
          v25 = v22 + v23;
          v26 = v21 + v23;
          re::StringID::StringID((v22 + v23), (v21 + v23));
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
          v27 = *(v21 + v23 + 16);
          *(v25 + 48) = 0;
          if (v27)
          {
            v28 = *(v26 + 32);
            *(v22 + v23 + 16) = v27;
            re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((v25 + 16), v28);
            ++*(v25 + 40);
            re::DynamicArray<re::RigGraphNodeInputParameter>::copy((v25 + 16), v26 + 16);
          }

          *(v25 + 56) = 0;
          v29 = v25 + 56;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          v32 = *(v26 + 56);
          v31 = v26 + 56;
          v30 = v32;
          *(v29 + 32) = 0;
          if (v32)
          {
            v33 = *(v21 + v23 + 72);
            *v29 = v30;
            re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(v29, v33);
            ++*(v22 + v23 + 80);
            re::DynamicArray<re::RigGraphNodeOutputParameter>::copy(v29, v31);
          }

          v24 -= 96;
          v21 += 96;
          v22 += 96;
        }

        while (v23 != v24);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(a2[14], (a2[14] + 96 * v16), *(v11 + 112));
      v17 = *(v11 + 96);
      if (v16 != v17)
      {
        v18 = (*(v11 + 112) + 96 * v16);
        v19 = 96 * v17 - 96 * v16;
        do
        {
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(v18 + 56);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v18 + 16);
          re::StringID::destroyString(v18);
          v18 = (v18 + 96);
          v19 -= 96;
        }

        while (v19);
      }
    }

    v7 = v64;
    *(v11 + 96) = v65;
  }

  re::DynamicArray<re::StringID>::DynamicArray(v11 + 120, a2 + 15);
  *(v11 + 160) = 0;
  *(v11 + 192) = 0;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  v34 = a2[20];
  if (v34)
  {
    v35 = a2[22];
    *(v11 + 160) = v34;
    re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((v11 + 160), v35);
    ++*(v11 + 184);
    v36 = a2[22];
    v37 = *(v11 + 176);
    if (v36 >= v37)
    {
      re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity((v11 + 160), a2[22]);
      v44 = a2[24];
      v45 = *(v11 + 176);
      v46 = *(v11 + 192);
      if (v45)
      {
        v47 = (v46 + 8);
        v48 = 24 * v45;
        v49 = (v44 + 8);
        do
        {
          *(v47 - 1) = *(v49 - 1);
          v47 = re::StringID::operator=(v47, v49) + 3;
          v49 += 3;
          v48 -= 24;
        }

        while (v48);
        v46 = *(v11 + 192);
        v45 = *(v11 + 176);
        v44 = a2[24];
      }

      if (v45 != v36)
      {
        v50 = 24 * v36 - 24 * v45;
        v51 = 24 * v45 + 8;
        v52 = (v44 + v51);
        v53 = (v46 + v51);
        do
        {
          *(v53 - 1) = v52[-1].var1;
          v54 = re::StringID::StringID(v53, v52);
          v52 = (v52 + 24);
          v53 = (v54 + 24);
          v50 -= 24;
        }

        while (v50);
      }
    }

    else
    {
      v38 = *(v11 + 192);
      if (v36)
      {
        v39 = (v38 + 8);
        v40 = 24 * v36;
        v41 = (a2[24] + 8);
        do
        {
          *(v39 - 1) = *(v41 - 1);
          v39 = re::StringID::operator=(v39, v41) + 3;
          v41 += 3;
          v40 -= 24;
        }

        while (v40);
        v38 = *(v11 + 192);
        v37 = *(v11 + 176);
      }

      if (v36 != v37)
      {
        v42 = 24 * v37 - 24 * v36;
        v43 = (v38 + 24 * v36 + 8);
        do
        {
          re::StringID::destroyString(v43);
          v43 = (v43 + 24);
          v42 -= 24;
        }

        while (v42);
      }
    }

    *(v11 + 176) = v36;
  }

  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::RigEnvironment::lookupRigGraphNode(re::RigEnvironment *this, const re::StringID *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  for (i = -1; ; --i)
  {
    v7 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v2 + i);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 176, a2, v8 ^ (v8 >> 31), v27);
    if (HIDWORD(v27[0]) != 0x7FFFFFFF)
    {
      break;
    }

    ++v5;
    v2 = *(this + 5);
    if (v5 == v2)
    {
      return 0;
    }
  }

  v10 = *(v7 + 192) + 32 * HIDWORD(v27[0]);
  v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, *(this + 5) + i);
  v12 = *(v10 + 24);
  v13 = WORD1(v12);
  v14 = *(v11 + 16);
  if (v14 <= WORD1(v12))
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v15 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 797;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v11 + 32) + 16 * WORD1(v12)) + 200 * v12;
}

uint64_t re::RigEnvironment::validateNewRigOperator@<X0>(re::RigEnvironment *a1@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::RigEnvironment::lookupRigGraphOperator(a1, a2);
  if (result)
  {
    v7 = re::DynamicString::format(&v13, "Node (%s) already exists.", v6, *(a2 + 1));
    v8 = v14 & 1;
    if (v14)
    {
      v9 = *&v15[7];
    }

    else
    {
      v9 = v15;
    }

    v10 = v16;
    v16 = 0uLL;
    v11 = v17;
    v12 = v18;
    v17 = 0;
    v18 = 0;
    *a3 = 0;
    *(a3 + 8) = 5001;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v10;
    *(a3 + 40) = v11;
    *(a3 + 48) = v12;
    result = v13;
    if (v13)
    {
      if (v8)
      {
        return (*(*v13 + 40))();
      }
    }
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t re::RigEnvironment::insertRigGraphOperator@<X0>(re::RigEnvironment *a1@<X0>, const re::StringID *a2@<X1>, StringID *a3@<X2>, uint64_t a4@<X8>)
{
  result = re::RigEnvironment::validateNewRigOperator(a1, a2, v13);
  if (v13[0] == 1)
  {
    v10 = *(a1 + 5);
    if (v10)
    {
      v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, v10 - 1);
      v12 = re::DataArray<re::RigGraphOperatorDefinition>::create<re::RigGraphOperatorDefinition const&>(v11 + 64, a3);
      result = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 224, a2, &v12);
      *a4 = 1;
    }

    else
    {
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      result = _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }
  }

  else
  {
    *a4 = v13[0];
    *(a4 + 8) = v14;
    *(a4 + 24) = v15;
    *(a4 + 48) = v17;
    *(a4 + 32) = v16;
  }

  return result;
}

unint64_t re::DataArray<re::RigGraphOperatorDefinition>::create<re::RigGraphOperatorDefinition const&>(uint64_t a1, StringID *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(a1);
    }

    v12 = *(a1 + 16);
    v7 = (v12 - 1);
    if (v12)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v13 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v13[1] + 4 * v6) = *(a1 + 56);
        v11 = (*v13 + 72 * v6);
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v20);
      __break(1u);
    }

LABEL_20:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = 0;
    _os_log_send_and_compose_impl(v19, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(a1 + 16);
  if (v9 <= v7)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v9;
    _os_log_send_and_compose_impl(v16, &v23, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v10 = (*(a1 + 32) + 16 * v7);
  *(v10[1] + 4 * v6) = v5;
  v11 = (*v10 + 72 * v6);
  *(a1 + 52) = *v11;
LABEL_15:
  ++*(a1 + 40);
  re::StringID::StringID(v11, a2);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray((v11 + 2), &a2[1]);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray((v11 + 5), &a2[2].var1);
  v11[8] = *&a2[4].var0;
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::RigEnvironment::lookupRigGraphOperator(re::RigEnvironment *this, const re::StringID *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  for (i = -1; ; --i)
  {
    v7 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, v2 + i);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 224, a2, v8 ^ (v8 >> 31), v27);
    if (HIDWORD(v27[0]) != 0x7FFFFFFF)
    {
      break;
    }

    ++v5;
    v2 = *(this + 5);
    if (v5 == v2)
    {
      return 0;
    }
  }

  v10 = *(v7 + 240) + 32 * HIDWORD(v27[0]);
  v11 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](this, *(this + 5) + i);
  v12 = *(v10 + 24);
  v13 = WORD1(v12);
  v14 = *(v11 + 80);
  if (v14 <= WORD1(v12))
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v15 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 797;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v11 + 96) + 16 * WORD1(v12)) + 72 * v12;
}

unint64_t re::RigDataTypeClass::attributeType(re::RigDataTypeClass *this, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = this;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 32 * a3 + 16;
}

_anonymous_namespace_ *re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 2176, 0);
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

_BYTE *re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 32));
    re::StringID::destroyString((a1 + 16));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

uint64_t re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = a2[1];
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = *(result + 16);
      *(result + 16) = a2[2];
      a2[2] = v10;
      v11 = *(result + 32);
      *(result + 32) = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DataArray<re::RigGraphNode>::allocBlock(void *a1)
{
  v3 = 200 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::RigGraphOperatorDefinition>::allocBlock(void *a1)
{
  v3 = 72 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::RigDataTypeClass>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t a4)
{
  v7 = re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  *(v7 + 24) = *a4;
  v7 += 24;
  re::StringID::StringID((v7 + 8), (a4 + 8));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v7 + 24, (a4 + 24));
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 88 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 88 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 88 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 88 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v19 + 8) >> 31) ^ (*(v19 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 24), v21);
                v23 = *(v19 + 8);
                *(v22 + 8) = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v31[16];
                v24 = *&v31[16] + v17;
                *(v22 + 24) = *(*&v31[16] + v17 + 24);
                re::StringID::StringID((v22 + 32), (v24 + 32));
                re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v22 + 48, (v24 + 48));
                v16 = *&v31[32];
              }

              ++v18;
              v17 += 88;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 88 * v4);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 88 * v4);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = 88 * v4;
  *(v25 + v28) = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *(v25 + v28) = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v25 + 88 * v4;
}

uint64_t re::RigGraphNode::RigGraphNode(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 192) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 184) = 0;
  v14 = *(a2 + 168);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v15 = *(result + 176);
  *(result + 176) = *(a2 + 176);
  *(a2 + 176) = v15;
  v16 = *(result + 192);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = v16;
  ++*(a2 + 184);
  ++*(result + 184);
  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
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
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphNode>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 24), v21);
                v23 = *(v19 + 8);
                v22[1] = v22[1] & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v22[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v22[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v30[16];
                v22[3] = *(*&v30[16] + v17 + 24);
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 32 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 32 * v4;
}

uint64_t re::DynamicArray<re::RigGraphNodeParameter>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, a2[2]);
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(a2[4], (a2[4] + 40 * *(a1 + 16)), *(a1 + 32));
      v10 = *(a1 + 16);
      if (v10 != v6)
      {
        v11 = a2[4];
        v12 = *(a1 + 32);
        v13 = 40 * v10;
        v14 = 40 * v6;
        do
        {
          v15 = re::StringID::StringID((v12 + v13), (v11 + v13));
          *(v15 + 2) = *(v11 + v13 + 16);
          re::StringID::StringID((v15 + 24), (v11 + v13 + 24));
          v14 -= 40;
          v11 += 40;
          v12 += 40;
        }

        while (v13 != v14);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(a2[4], (a2[4] + 40 * v6), *(a1 + 32));
      v7 = *(a1 + 16);
      if (v6 != v7)
      {
        v8 = *(a1 + 32) + 40 * v6;
        v9 = 40 * v7 - 40 * v6;
        do
        {
          re::StringID::destroyString((v8 + 24));
          re::StringID::destroyString(v8);
          v8 += 40;
          v9 -= 40;
        }

        while (v9);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 24);
    v5 = (result + 3);
    do
    {
      re::StringID::operator=(v4 - 3, v5 - 3);
      *(v4 - 1) = *(v5 - 1);
      result = re::StringID::operator=(v4, v5);
      v4 += 5;
      v6 = v5 + 2;
      v5 += 5;
    }

    while (v6 != a2);
  }

  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeChild *,re::RigGraphNodeChild *,re::RigGraphNodeChild *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::StringID::operator=(a3, v5);
      if (a3 != v5)
      {
        v6 = v5[2];
        if (*(a3 + 16))
        {
          if (v6)
          {
            re::DynamicArray<re::RigGraphNodeInputParameter>::copy((a3 + 16), (v5 + 2));
          }

          else
          {
            v8 = *(a3 + 32);
            *(a3 + 32) = 0;
            if (v8)
            {
              v9 = *(a3 + 48);
              v10 = 40 * v8;
              do
              {
                re::StringID::destroyString((v9 + 24));
                re::StringID::destroyString(v9);
                v9 += 40;
                v10 -= 40;
              }

              while (v10);
            }
          }

          ++*(a3 + 40);
        }

        else if (v6)
        {
          v7 = v5[4];
          *(a3 + 16) = v6;
          re::DynamicArray<re::RigGraphNodeParameter>::setCapacity((a3 + 16), v7);
          ++*(a3 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::copy((a3 + 16), (v5 + 2));
        }

        v11 = v5[7];
        if (*(a3 + 56))
        {
          if (v11)
          {
            re::DynamicArray<re::RigGraphNodeOutputParameter>::copy((a3 + 56), (v5 + 7));
          }

          else
          {
            v13 = *(a3 + 72);
            *(a3 + 72) = 0;
            if (v13)
            {
              v14 = *(a3 + 88);
              v15 = v13 << 6;
              do
              {
                re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v14 + 24);
                re::StringID::destroyString(v14);
                v14 = (v14 + 64);
                v15 -= 64;
              }

              while (v15);
            }
          }

          ++*(a3 + 80);
        }

        else if (v11)
        {
          v12 = v5[9];
          *(a3 + 56) = v11;
          re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity((a3 + 56), v12);
          ++*(a3 + 80);
          re::DynamicArray<re::RigGraphNodeOutputParameter>::copy((a3 + 56), (v5 + 7));
        }
      }

      v5 += 12;
      a3 += 96;
    }

    while (v5 != a2);
  }
}

void re::DynamicArray<re::RigGraphNodeInputParameter>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphNodeParameter>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(*(a2 + 32), (*(a2 + 32) + 40 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 40 * v8;
      v12 = 40 * v4;
      do
      {
        v13 = re::StringID::StringID((v10 + v11), (v9 + v11));
        *(v13 + 2) = *(v9 + v11 + 16);
        re::StringID::StringID((v13 + 24), (v9 + v11 + 24));
        v9 += 40;
        v12 -= 40;
        v10 += 40;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeParameter *,re::RigGraphNodeParameter *,re::RigGraphNodeParameter *>(*(a2 + 32), (*(a2 + 32) + 40 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 40 * v4;
      v7 = 40 * v5 - 40 * v4;
      do
      {
        re::StringID::destroyString((v6 + 24));
        re::StringID::destroyString(v6);
        v6 += 40;
        v7 -= 40;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RigGraphNodeOutputParameter>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigGraphNodeOutputParameter>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(*(a2 + 32), (*(a2 + 32) + (a1[2] << 6)), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 6;
      v12 = v4 << 6;
      do
      {
        v13 = v9 + v11;
        v14 = v10 + v11;
        re::StringID::StringID((v10 + v11), (v9 + v11));
        v15 = *(v9 + v11 + 16);
        *(v14 + 24) = 0;
        *(v14 + 16) = v15;
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;
        v16 = *(v9 + v11 + 24);
        *(v14 + 56) = 0;
        if (v16)
        {
          v17 = *(v13 + 40);
          *(v10 + v11 + 24) = v16;
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((v14 + 24), v17);
          ++*(v14 + 48);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((v14 + 24), v13 + 24);
        }

        v9 += 64;
        v12 -= 64;
        v10 += 64;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(*(a2 + 32), (*(a2 + 32) + (v4 << 6)), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + (v4 << 6));
      v7 = (v5 << 6) - (v4 << 6);
      do
      {
        re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v6 + 24);
        re::StringID::destroyString(v6);
        v6 = (v6 + 64);
        v7 -= 64;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *,re::RigGraphNodeOutputParameter *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::StringID::operator=(a3, v5);
      *(a3 + 16) = v5[2];
      if (a3 != v5)
      {
        v6 = v5[3];
        if (*(a3 + 24))
        {
          if (v6)
          {
            re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((a3 + 24), (v5 + 3));
          }

          else
          {
            v8 = *(a3 + 40);
            *(a3 + 40) = 0;
            if (v8)
            {
              v9 = *(a3 + 56);
              v10 = 56 * v8;
              do
              {
                re::StringID::destroyString((v9 + 40));
                re::StringID::destroyString((v9 + 16));
                re::StringID::destroyString(v9);
                v9 += 56;
                v10 -= 56;
              }

              while (v10);
            }
          }

          ++*(a3 + 48);
        }

        else if (v6)
        {
          v7 = v5[5];
          *(a3 + 24) = v6;
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity((a3 + 24), v7);
          ++*(a3 + 48);
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy((a3 + 24), (v5 + 3));
        }
      }

      v5 += 8;
      a3 += 64;
    }

    while (v5 != a2);
  }
}

void re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(*(a2 + 32), (*(a2 + 32) + 56 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 56 * v8;
      v12 = 56 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        *(v10 + v11 + 32) = *(v9 + v11 + 32);
        re::StringID::StringID((v10 + v11 + 40), (v9 + v11 + 40));
        v9 += 56;
        v12 -= 56;
        v10 += 56;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(*(a2 + 32), (*(a2 + 32) + 56 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 56 * v4;
      v7 = -56 * v4 + 56 * v5;
      do
      {
        re::StringID::destroyString((v6 + 40));
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 56;
        v7 -= 56;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *,re::Pair<re::StringID,re::RigGraphNodeInputParameter,true> *>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      re::StringID::operator=((a3 + v6 * 8 + 16), &v5[v6 + 2]);
      *(a3 + v6 * 8 + 32) = v5[v6 + 4];
      result = re::StringID::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      v6 += 7;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

re::StringID *re::FixedArray<re::RigGraphOperatorParameterDefinition>::FixedArray(re::StringID *a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = *a2;
  if (!v4)
  {
    return a1;
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(a1, v4, a2[1]);
  v6 = a2[1];
  if (*(a1 + 1) == v6)
  {
    if (v6)
    {
      v7 = a2[2];
      v8 = *(a1 + 2);
      v9 = 32 * v6;
      do
      {
        re::StringID::operator=(v8, v7);
        re::StringID::operator=(v8 + 2, v7 + 2);
        v7 += 4;
        v8 += 4;
        v9 -= 32;
      }

      while (v9);
    }

    return a1;
  }

  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

re::StringID *re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(re::StringID *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 1) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 32 * a3, 8);
  *(v4 + 2) = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    re::StringID::invalid(v7);
    *(v7 + 2) = 0;
    *(v7 + 3) = &str_67;
    v7 = (v7 + 32);
  }

  result = re::StringID::invalid(v7);
  *(v7 + 2) = 0;
  *(v7 + 3) = &str_67;
  return result;
}

void re::AnimationErrorCategoryImpl::~AnimationErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 1999)
  {
    if (a1 > 3999)
    {
      if (a1 <= 5004)
      {
        if (a1 > 5001)
        {
          if (a1 == 5002)
          {
            v3 = "Invalid rig data value";
          }

          else if (a1 == 5003)
          {
            v3 = "Invalid rig data attribute";
          }

          else
          {
            v3 = "Invalid rig graph node type";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }

        switch(a1)
        {
          case 4000:
            v3 = "Circular dependency detected in evaluation tree.";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 5000:
            v3 = "Invalid rig data type";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 5001:
            v3 = "Error with the rig environment";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }
      }

      else if (a1 <= 5999)
      {
        switch(a1)
        {
          case 5005:
            v3 = "Rig graph node not found";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 5006:
            v3 = "Rig graph node parameter not found";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 5007:
            v3 = "Rig value parsing error";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }
      }

      else
      {
        if (a1 <= 6001)
        {
          if (a1 == 6000)
          {
            v3 = "Invalid joint attribute";
          }

          else
          {
            v3 = "Invalid joint attribute index";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }

        if (a1 == 6002)
        {
          v3 = "Invalid rig hierarchy component";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }

        if (a1 == 6003)
        {
          v3 = "Invalid joint state";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }
      }
    }

    else
    {
      if (a1 <= 2005)
      {
        if (a1 > 2002)
        {
          if (a1 == 2003)
          {
            v3 = "Transform not animated";
          }

          else if (a1 == 2004)
          {
            v3 = "Invalid minimum time";
          }

          else
          {
            v3 = "Invalid start time";
          }
        }

        else if (a1 == 2000)
        {
          v3 = "Check hasTransformAnimation() before calling importSRTSampledAnimation()";
        }

        else if (a1 == 2001)
        {
          v3 = "Invalid sample rate";
        }

        else
        {
          v3 = "Missing transform component on node";
        }

        return std::string::basic_string[abi:nn200100]<0>(a2, v3);
      }

      if (a1 <= 2999)
      {
        switch(a1)
        {
          case 2006:
            v3 = "Invalid end time";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 2007:
            v3 = "Mismatched animation transform count";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
          case 2008:
            v3 = "Mismatched animation sample count";
            return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }
      }

      else
      {
        if (a1 <= 3001)
        {
          if (a1 == 3000)
          {
            v3 = "Invalid rig definition data.";
          }

          else
          {
            v3 = "Invalid rig node has been specified.";
          }

          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }

        if (a1 == 3002)
        {
          v3 = "Invalid rig path has been specified.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }

        if (a1 == 3004)
        {
          v3 = "Invalid rig compilation state.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v3);
        }
      }
    }

LABEL_93:
    v3 = "Unknown REAnimation error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v3);
  }

  v2 = a1 - 1000;
  v3 = "Joint not in skeleton";
  switch(v2)
  {
    case 0:
      return std::string::basic_string[abi:nn200100]<0>(a2, v3);
    case 1:
      v3 = "Missing animation bind component";
      break;
    case 2:
      v3 = "Missing skeleton";
      break;
    case 3:
      v3 = "Missing joint paths";
      break;
    case 4:
      v3 = "Missing bind transforms";
      break;
    case 5:
      v3 = "Mismatched bind transforms";
      break;
    case 6:
      v3 = "Missing influence weights vertex attribute";
      break;
    case 7:
      v3 = "Bad format for influence weights";
      break;
    case 8:
      v3 = "Missing influence indexes";
      break;
    case 9:
      v3 = "Missing influence joint indexes data for vertex attribute";
      break;
    case 10:
      v3 = "No influences found for vertex";
      break;
    case 11:
      v3 = "Bad format for influence indexes";
      break;
    case 12:
      v3 = "Invalid object being processed for animation data";
      break;
    case 13:
      v3 = "No animation data found";
      break;
    case 14:
      v3 = "Invalid number of animation frames";
      break;
    case 15:
      v3 = "Destination weights array should be empty";
      break;
    case 16:
      v3 = "Destination joint indices array should be empty";
      break;
    case 17:
      v3 = "Destination influence end indices array should be empty";
      break;
    case 18:
      v3 = "Malformed animation file";
      break;
    case 19:
      v3 = "Vertex has no influences";
      break;
    case 20:
      v3 = "Expected influenceEndIndices to match vertexCount";
      break;
    case 21:
      v3 = "Missing influence weights data for vertex attribute";
      break;
    case 22:
      v3 = "Skeleton cannot be NULL when processing mesh data";
      break;
    case 23:
      v3 = "SkinningData cannot be NULL when processing mesh data";
      break;
    case 24:
      v3 = "Node must not be null when processing animation data";
      break;
    case 25:
      v3 = "Mismatched animation data sizes";
      break;
    case 26:
      v3 = "Could not find source skeleton for animation";
      break;
    case 27:
      v3 = "Invalid animation transform data";
      break;
    case 28:
      v3 = "Missing rest transforms";
      break;
    case 29:
      v3 = "MismatchedRestTransforms";
      break;
    case 30:
      v3 = "DuplicateJointName";
      break;
    case 31:
      v3 = "Invalid joint order.";
      break;
    case 32:
      v3 = "Invalid skeleton.";
      break;
    case 33:
      v3 = "Invalid topological change.";
      break;
    default:
      goto LABEL_93;
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

void re::introspect_EasingFunctionType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18E598, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18E5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5A0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18E7C8, "EasingFunctionType", 4, 4, 1, 1);
      qword_1EE18E7C8 = &unk_1F5D0C658;
      qword_1EE18E808 = &re::introspect_EasingFunctionType(BOOL)::enumTable;
      dword_1EE18E7D8 = 9;
      __cxa_guard_release(&qword_1EE18E5A0);
    }

    if (_MergedGlobals_12)
    {
      break;
    }

    _MergedGlobals_12 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18E7C8, a2);
    v49 = 0xA62999CF78DB603ALL;
    v50 = "EasingFunctionType";
    v53 = 208862;
    v54 = "int";
    v4 = v52[0];
    v5 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18E808;
      v53 = v4;
      v54 = v5;
      re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v51.var0 = 2 * v11;
            v51.var1 = v10;
            re::TypeBuilder::addEnumConstant(v52, v15, &v51);
            if (*&v51.var0)
            {
              if (*&v51.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v51.var0 = 2 * v20;
              v51.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v52, v24, &v51);
              if (*&v51.var0)
              {
                if (*&v51.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v52, v26);
      xmmword_1EE18E7E8 = v51;
      if (v49)
      {
        if (v49)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v48);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE18E598))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Back";
      qword_1EE18E858 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Bounce";
      qword_1EE18E860 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Circle";
      qword_1EE18E868 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Elastic";
      qword_1EE18E870 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Exponential";
      qword_1EE18E878 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "Hermite";
      qword_1EE18E880 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "Logarithmic";
      qword_1EE18E888 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "Power";
      qword_1EE18E890 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "Sine";
      qword_1EE18E898 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 9;
      *(v47 + 16) = "CubicBezier";
      qword_1EE18E8A0 = v47;
      __cxa_guard_release(&qword_1EE18E598);
    }
  }
}

void re::introspect_EasingMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE18E5A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE18E5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5B0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE18E810, "EasingMode", 4, 4, 1, 1);
      qword_1EE18E810 = &unk_1F5D0C658;
      qword_1EE18E850 = &re::introspect_EasingMode(BOOL)::enumTable;
      dword_1EE18E820 = 9;
      __cxa_guard_release(&qword_1EE18E5B0);
    }

    if (byte_1EE18E591)
    {
      break;
    }

    byte_1EE18E591 = 1;
    re::IntrospectionRegistry::add(&qword_1EE18E810, a2);
    v35 = 0xD92DC47A8731CLL;
    v36 = "EasingMode";
    v39 = 208862;
    v40 = "int";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18E850;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE18E830 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE18E5A8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "In";
      qword_1EE18E768 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Out";
      qword_1EE18E770 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "InOut";
      qword_1EE18E778 = v33;
      __cxa_guard_release(&qword_1EE18E5A8);
    }
  }
}

void re::introspectionTable_EasingFunction(re *this)
{
  if ((byte_1EE18E592 & 1) == 0)
  {
    byte_1EE18E592 = 1;
    if ((atomic_load_explicit(&qword_1EE18E5B8, memory_order_acquire) & 1) == 0)
    {
      inited = __cxa_guard_acquire(&qword_1EE18E5B8);
      if (inited)
      {
        qword_1EE18EF68 = "BackEase";
        v2 = qword_1EE18E600;
        if (!qword_1EE18E600)
        {
          v2 = re::allocInfo_BackEase(inited);
          qword_1EE18E600 = v2;
          re::initInfo_BackEase(v2, v3, v4, v5);
        }

        qword_1EE18EF70 = v2;
        qword_1EE18EF80 = 0;
        qword_1EE18EF78 = 0;
        dword_1EE18EF88 = 0;
        qword_1EE18EF90 = "BounceEase";
        v6 = qword_1EE18E618;
        if (!qword_1EE18E618)
        {
          v6 = re::allocInfo_BounceEase(inited);
          qword_1EE18E618 = v6;
          re::initInfo_BounceEase(v6, v7, v8, v9);
        }

        qword_1EE18EF98 = v6;
        qword_1EE18EFA0 = 0;
        qword_1EE18EFA8 = 1;
        dword_1EE18EFB0 = 0;
        qword_1EE18EFB8 = "CircleEase";
        v10 = qword_1EE18E638;
        if (!qword_1EE18E638)
        {
          v10 = re::allocInfo_CircleEase(inited);
          qword_1EE18E638 = v10;
          re::initInfo_CircleEase(v10, v11, v12, v13);
        }

        qword_1EE18EFC0 = v10;
        qword_1EE18EFC8 = 0;
        qword_1EE18EFD0 = 2;
        dword_1EE18EFD8 = 0;
        qword_1EE18EFE0 = "ElasticEase";
        v14 = qword_1EE18E650;
        if (!qword_1EE18E650)
        {
          v14 = re::allocInfo_ElasticEase(inited);
          qword_1EE18E650 = v14;
          re::initInfo_ElasticEase(v14, v15, v16, v17);
        }

        qword_1EE18EFE8 = v14;
        qword_1EE18EFF0 = 0;
        qword_1EE18EFF8 = 3;
        dword_1EE18F000 = 0;
        qword_1EE18F008 = "ExponentialEase";
        v18 = qword_1EE18E668;
        if (!qword_1EE18E668)
        {
          v18 = re::allocInfo_ExponentialEase(inited);
          qword_1EE18E668 = v18;
          re::initInfo_ExponentialEase(v18, v19, v20, v21);
        }

        qword_1EE18F010 = v18;
        qword_1EE18F018 = 0;
        qword_1EE18F020 = 4;
        dword_1EE18F028 = 0;
        qword_1EE18F030 = "HermiteEase";
        v22 = qword_1EE18E688;
        if (!qword_1EE18E688)
        {
          v22 = re::allocInfo_HermiteEase(inited);
          qword_1EE18E688 = v22;
          inited = re::initInfo_HermiteEase(v22, v23, v24, v25);
        }

        qword_1EE18F038 = v22;
        qword_1EE18F040 = 0;
        qword_1EE18F048 = 5;
        dword_1EE18F050 = 0;
        qword_1EE18F058 = "LogarithmicEase";
        v26 = qword_1EE18E6A0;
        if (!qword_1EE18E6A0)
        {
          v26 = re::allocInfo_LogarithmicEase(inited);
          qword_1EE18E6A0 = v26;
          re::initInfo_LogarithmicEase(v26, v27, v28, v29);
        }

        qword_1EE18F060 = v26;
        qword_1EE18F068 = 0;
        qword_1EE18F070 = 6;
        dword_1EE18F078 = 0;
        qword_1EE18F080 = "PowerEase";
        v30 = qword_1EE18E6B8;
        if (!qword_1EE18E6B8)
        {
          v30 = re::allocInfo_PowerEase(inited);
          qword_1EE18E6B8 = v30;
          re::initInfo_PowerEase(v30, v31, v32, v33);
        }

        qword_1EE18F088 = v30;
        qword_1EE18F090 = 0;
        qword_1EE18F098 = 7;
        dword_1EE18F0A0 = 0;
        qword_1EE18F0A8 = "SineEase";
        v34 = qword_1EE18E6D8;
        if (!qword_1EE18E6D8)
        {
          v34 = re::allocInfo_SineEase(inited);
          qword_1EE18E6D8 = v34;
          re::initInfo_SineEase(v34, v35, v36, v37);
        }

        qword_1EE18F0B0 = v34;
        qword_1EE18F0B8 = 0;
        qword_1EE18F0C0 = 8;
        dword_1EE18F0C8 = 0;
        qword_1EE18F0D0 = "CubicBezierEase";
        v38 = qword_1EE18E6F0;
        if (!qword_1EE18E6F0)
        {
          v38 = re::allocInfo_CubicBezierEase(inited);
          qword_1EE18E6F0 = v38;
          re::initInfo_CubicBezierEase(v38, v39, v40, v41);
        }

        qword_1EE18F0D8 = v38;
        qword_1EE18F0E0 = 0;
        qword_1EE18F0E8 = 9;
        dword_1EE18F0F0 = 0;
        __cxa_guard_release(&qword_1EE18E5B8);
      }
    }

    dword_1EE18E6F8 = 10;
    qword_1EE18E700 = &qword_1EE18EF68;
  }
}

void *re::allocInfo_EasingFunction(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E8A8, "EasingFunction");
    __cxa_guard_release(&qword_1EE18E5C8);
  }

  return &unk_1EE18E8A8;
}

void re::initInfo_EasingFunction(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v13[0] = 0x4714B64F78910C86;
  v13[1] = "EasingFunction";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE18E5C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5C0))
  {
    v7 = re::introspectionAllocator();
    re::introspect_EasingFunctionType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 32, 8);
    *v9 = 3;
    *(v9 + 8) = &qword_1EE18E7C8;
    *(v9 + 16) = 0;
    *(v9 + 24) = 8;
    qword_1EE18E708 = v9;
    v10 = re::introspectionAllocator();
    re::introspectionTable_EasingFunction(v10);
    v11 = (*(*v10 + 32))(v10, 16, 8);
    *v11 = 2;
    *(v11 + 8) = &dword_1EE18E6F8;
    qword_1EE18E710 = v11;
    __cxa_guard_release(&qword_1EE18E5C0);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E708;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v12 = v14;
}

void *re::allocInfo_EasingFunctionBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E938, "EasingFunctionBase");
    __cxa_guard_release(&qword_1EE18E5D8);
  }

  return &unk_1EE18E938;
}

void re::initInfo_EasingFunctionBase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0xA62999CF78CA4F68;
  v18[1] = "EasingFunctionBase";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE18E5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5E0))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5D0;
    if (!qword_1EE18E5D0)
    {
      v9 = re::allocInfo_EasingFunction(v7);
      qword_1EE18E5D0 = v9;
      re::initInfo_EasingFunction(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunction";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E718 = v13;
    v14 = re::introspectionAllocator();
    re::introspect_EasingMode(v14, v15);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "mode";
    *(v16 + 16) = &qword_1EE18E810;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0xC00000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE18E720 = v16;
    __cxa_guard_release(&qword_1EE18E5E0);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E718;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void *re::allocInfo_BackEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18E9C8, "BackEase");
    __cxa_guard_release(&qword_1EE18E5F0);
  }

  return &unk_1EE18E9C8;
}

void re::initInfo_BackEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x377047CEB2ALL;
  v19[1] = "BackEase";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE18E5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E5F8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E728 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_float(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "amplitude";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E730 = v17;
    __cxa_guard_release(&qword_1EE18E5F8);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE18E728;
  *(this + 9) = re::internal::defaultConstruct<re::BackEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BackEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::BackEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::BackEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::internal::defaultConstruct<re::BackEase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CAE400;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1065353216;
}

uint64_t re::internal::defaultConstructV2<re::BackEase>(uint64_t result)
{
  *result = &unk_1F5CAE400;
  *(result + 8) = 0;
  *(result + 16) = 1065353216;
  return result;
}

void *re::allocInfo_BounceEase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18E608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E608))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18EA58, "BounceEase");
    __cxa_guard_release(&qword_1EE18E608);
  }

  return &unk_1EE18EA58;
}

void re::initInfo_BounceEase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0xD186850244D6CLL;
  v23[1] = "BounceEase";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE18E610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18E610))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE18E5E8;
    if (!qword_1EE18E5E8)
    {
      v9 = re::allocInfo_EasingFunctionBase(v7);
      qword_1EE18E5E8 = v9;
      re::initInfo_EasingFunctionBase(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "EasingFunctionBase";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18E780 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "bounces";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18E788 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "bounciness";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1400000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18E790 = v21;
    __cxa_guard_release(&qword_1EE18E610);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000018;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18E780;
  *(this + 9) = re::internal::defaultConstruct<re::BounceEase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BounceEase>;
  *(this + 13) = re::internal::defaultConstructV2<re::BounceEase>;
  *(this + 14) = re::internal::defaultDestructV2<re::BounceEase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}