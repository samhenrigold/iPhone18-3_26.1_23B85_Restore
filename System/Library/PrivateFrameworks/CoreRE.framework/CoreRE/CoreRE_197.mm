_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(re::DynamicString *a1, re::DynamicString *a2, re::DynamicString *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a2);
  v10 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 552, a2) + 10 * v9);
  v11 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 600, a1);
  v12 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 552, a1) + 10 * v11);
  v13 = *a4;
  v14 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a3);
  v15 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 552, a3) + 10 * v14);
  v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 600, a2);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 552, a2);
  v18 = (5 * *result + 10 * v16);
  if (v10 <= v12)
  {
    if (v15 <= v18)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
    v25 = *a4;
    v26 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a2);
    v27 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a2) + 10 * v26);
    v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a1);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a1);
    if (v27 <= (5 * *result + 10 * v28))
    {
      return result;
    }

    v19 = a1;
    v24 = a2;
  }

  else
  {
    v19 = a1;
    if (v15 <= v18)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      v20 = *a4;
      v21 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a3);
      v22 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 552, a3) + 10 * v21);
      v23 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 600, a2);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 552, a2);
      if (v22 <= (5 * *result + 10 * v23))
      {
        return result;
      }

      v19 = a2;
    }

    v24 = a3;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v19, v24);
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(re::DynamicString *a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a5 + 600, a4);
  v12 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 552, a4) + 10 * v11);
  v13 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 600, a3);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 552, a3);
  if (v12 > (5 * *result + 10 * v13))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
    v15 = *a5;
    v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a5 + 600, a3);
    v17 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, a3) + 10 * v16);
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 600, a2);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, a2);
    if (v17 > (5 * *result + 10 * v18))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
      v19 = *a5;
      v20 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 600, a2);
      v21 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 552, a2) + 10 * v20);
      v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 600, a1);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 552, a1);
      if (v21 > (5 * *result + 10 * v22))
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      }
    }
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(re::DynamicString *a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, re::DynamicString *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a5);
  v14 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 552, a5) + 10 * v13);
  v15 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 600, a4);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 552, a4);
  if (v14 > (5 * *result + 10 * v15))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a4, a5);
    v17 = *a6;
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a4);
    v19 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 552, a4) + 10 * v18);
    v20 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 600, a3);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 552, a3);
    if (v19 > (5 * *result + 10 * v20))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
      v21 = *a6;
      v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a3);
      v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, a3) + 10 * v22);
      v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, a2);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, a2);
      if (v23 > (5 * *result + 10 * v24))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
        v25 = *a6;
        v26 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a2);
        v27 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a2) + 10 * v26);
        v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a1);
        result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a1);
        if (v27 > (5 * *result + 10 * v28))
        {

          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(char *a1, char *a2, uint64_t *a3)
{
  v5 = (a2 - a1) >> 5;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = (a2 - 32);
        v7 = *a3;
        v8 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, a2 - 4);
        v9 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 552, a2 - 4) + 10 * v8);
        v10 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 600, a1);
        if (v9 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 552, a1) + 10 * v10))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, v6);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a2 - 32), a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 64;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), a3);
  v12 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *a3;
    v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v12);
    v17 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, v12) + 10 * v16);
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 600, v11);
    if (v17 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, v11) + 10 * v18))
    {
      break;
    }

LABEL_23:
    v11 = v12;
    v13 += 32;
    v12 += 32;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v29 = *v12;
  v31 = *(v12 + 3);
  v30 = *(v12 + 8);
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *v12 = 0;
  *(v12 + 1) = 0;
  v19 = v13;
  while (1)
  {
    v20 = &a1[v19];
    re::DynamicString::operator=(&a1[v19 + 96], &a1[v19 + 64]);
    if (v19 == -64)
    {
      break;
    }

    v21 = *a3;
    v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v29);
    v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, &v29) + 10 * v22);
    v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, v20 + 4);
    v19 -= 32;
    if (v23 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, v20 + 4) + 10 * v24))
    {
      v25 = &a1[v19 + 96];
      goto LABEL_19;
    }
  }

  v25 = a1;
LABEL_19:
  re::DynamicString::operator=(v25, &v29);
  if (++v14 != 8)
  {
    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

    goto LABEL_23;
  }

  v26 = v12 + 32 == a2;
  if (v29 && (v30 & 1) != 0)
  {
    (*(*v29 + 40))();
  }

  return v26;
}

_anonymous_namespace_ *re::DynamicArray<re::PSOToolComputeDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 16) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 2) = 0u;
          *(v11 + 68) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 4, (v8 + 32));
          *(v11 + 5) = 0u;
          v16 = v11 + 10;
          *(v16 + 8) = 0;
          *(v16 + 1) = 0u;
          *(v16 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v16, (v8 + 80));
          *(v16 + 48) = *(v8 + 128);
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 80));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v8 += 136;
          v11 = v16 + 7;
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

_anonymous_namespace_ *re::DynamicArray<re::PSOToolTileDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 16) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 2) = 0u;
          *(v11 + 68) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 4, (v8 + 32));
          *(v11 + 5) = 0u;
          v16 = v11 + 10;
          *(v16 + 8) = 0;
          *(v16 + 1) = 0u;
          *(v16 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v16, (v8 + 80));
          v17 = *(v8 + 128);
          v16[11] = 0;
          *(v16 + 20) = 0;
          v16[8] = 0;
          v16[9] = 0;
          v16[6] = v17;
          v16[7] = 0;
          v18 = *(v8 + 144);
          v16[7] = *(v8 + 136);
          *(v8 + 136) = 0;
          v16[8] = v18;
          *(v8 + 144) = 0;
          v19 = v16[9];
          v16[9] = *(v8 + 152);
          *(v8 + 152) = v19;
          v20 = v16[11];
          v16[11] = *(v8 + 168);
          *(v8 + 168) = v20;
          ++*(v8 + 160);
          ++*(v16 + 20);
          re::DynamicArray<unsigned long>::deinit(v8 + 136);
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 80));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v8 += 176;
          v11 = v16 + 12;
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

_anonymous_namespace_ *re::DynamicArray<re::PSOToolCustomClearDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *(v8 + v10 + 48);
          v13[5] = *v17;
          *v17 = 0;
          v13[6] = v18;
          *(v12 + 48) = 0;
          v19 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v19;
          v20 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v20;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          *(v13 + 5) = *(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PSOToolCustomRenderDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
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
        v10 = v8 + 104 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v18;
          *(v8 + 40) = v17;
          *(v8 + 48) = v16;
          v11[12] = 0;
          *(v11 + 22) = 0;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v19 = *(v8 + 72);
          v11[8] = *(v8 + 64);
          *(v8 + 64) = 0;
          v11[9] = v19;
          *(v8 + 72) = 0;
          v20 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v20;
          v21 = v11[12];
          v11[12] = *(v8 + 96);
          *(v8 + 96) = v21;
          ++*(v8 + 88);
          ++*(v11 + 22);
          re::DynamicArray<unsigned long>::deinit(v8 + 64);
          re::DynamicString::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v11 += 13;
          v8 += 104;
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

_anonymous_namespace_ *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
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
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = v8[3];
          v12 = v8[1];
          *v11 = *v8;
          *v8 = 0;
          v13 = v8[2];
          v8[3] = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          v8[1] = v15;
          v8[2] = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = v8[4];
          v8[4] = 0;
          v11[7] = v8[7];
          v8[7] = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = v8[6];
          v11[5] = v8[5];
          v11[6] = v18;
          v8[5] = v17;
          v8[6] = v16;
          *(v11 + 4) = 0u;
          *(v11 + 5) = 0u;
          v11[8] = v8[8];
          v8[8] = 0;
          v11[11] = v8[11];
          v8[11] = 0;
          v20 = v11[9];
          v19 = v11[10];
          v21 = v8[10];
          v11[9] = v8[9];
          v11[10] = v21;
          v8[9] = v20;
          v8[10] = v19;
          re::DynamicString::deinit((v8 + 8));
          re::DynamicString::deinit((v8 + 4));
          re::DynamicString::deinit(v8);
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

void re::CPUTexture::Data::addMipAndFixAlignment(_anonymous_namespace_ *a1, id *a2, char *a3, unint64_t a4)
{
  v9 = ExpectedCPUTextureSize;
  if (ExpectedCPUTextureSize <= a4)
  {
    v16[0] = a3;
    v16[1] = ExpectedCPUTextureSize;
    re::DynamicArray<unsigned char>::DynamicArray(v17, v16);
    re::DynamicArray<re::DynamicArray<unsigned int>>::add(a1, v17);
    if (v17[0] && v17[4])
    {
      (*(*v17[0] + 40))();
    }
  }

  else
  {
    v10 = v19;
    v11 = ExpectedCPUTextureSize / v19;
    v12 = (ExpectedCPUTextureSize - a4) / (ExpectedCPUTextureSize / v19);
    re::DynamicArray<re::DynamicArray<float>>::resize(a1, *(a1 + 2) + 1);
    re::DynamicArray<BOOL>::resize(*(a1 + 4) + 40 * *(a1 + 2) - 40, v9);
    v13 = 0;
    v14 = *(*(a1 + 4) + 40 * *(a1 + 2) - 8);
    v15 = a4 / v11;
    do
    {
      memcpy(v14, a3, v15);
      bzero(&v14[v15], v12);
      a3 += v15;
      v14 += v10;
      ++v13;
    }

    while (v13 < v11);
  }
}

double re::anonymous namespace::getCPUTextureMipInfoWithKTXAlignment@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v5, 0, 40);
  [*a1 pixelFormat];
  [*a1 width];
  [*a1 height];
  [*a1 depth];
  [*a1 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = *(v5 + 8);
  result = 0.0;
  *(a2 + 56) = *(&v5[1] + 8);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t re::anonymous namespace::getExpectedCPUTextureSize(id *a1, uint64_t a2)
{
  if ([*a1 textureType] == 3)
  {
    v4 = *(a2 + 88);
    return [*a1 arrayLength] * v4;
  }

  else if ([*a1 textureType] == 5)
  {
    return 6 * *(a2 + 88);
  }

  else
  {
    return *(a2 + 96);
  }
}

BOOL re::CPUTexture::Data::allocateMips(void *a1, id *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::DynamicArray<float>>::resize(a1, [*a2 mipmapLevelCount]);
  v4 = a1[2];
  if (v4 != [*a2 mipmapLevelCount])
  {
    return 0;
  }

  if (![*a2 mipmapLevelCount])
  {
    return 1;
  }

  v5 = 0;
  v6 = 16;
  do
  {
    v8 = a1[2];
    if (v8 <= v5)
    {
      v21 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = v5;
      v28 = 2048;
      v29 = v8;
      _os_log_send_and_compose_impl(v15, &v21, &v30, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
      _os_crash_msg();
      __break(1u);
LABEL_17:
      v21 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v25 = 789;
      v26 = 2048;
      v27 = v5;
      v28 = 2048;
      v29 = v8;
      _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
      _os_crash_msg();
      __break(1u);
    }

    v9 = ExpectedCPUTextureSize;
    re::DynamicArray<BOOL>::resize(a1[4] + v6 - 16, ExpectedCPUTextureSize);
    v8 = a1[2];
    if (v8 <= v5)
    {
      goto LABEL_17;
    }

    v10 = *(a1[4] + v6) == v9;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    ++v5;
    v6 += 40;
  }

  while (v5 < [*a2 mipmapLevelCount]);
  return v11;
}

uint64_t re::CPUTexture::CPUTexture(uint64_t a1, id *a2, uint64_t *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D09870;
  *(a1 + 24) = *a2;
  v6 = re::DynamicArray<re::DynamicArray<unsigned char>>::DynamicArray(a1 + 32, a3);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  re::DynamicString::setCapacity((a1 + 72), 0);
  return a1;
}

uint64_t re::CPUTexture::CPUTexture(uint64_t a1, id *a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D09870;
  v6 = *a2;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  v7 = *(a3 + 8);
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a3 + 16);
  *(a3 + 16) = v8;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a3 + 32);
  *(a3 + 32) = v9;
  ++*(a3 + 24);
  ++*(a1 + 56);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  re::DynamicString::setCapacity((a1 + 72), 0);
  return a1;
}

void re::CPUTexture::setSliceAndFixAlignment(id *this, unint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = this[6];
  if (v10 <= a2)
  {
    v23 = 0;
    memset(v32, 0, sizeof(v32));
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v10;
    _os_log_send_and_compose_impl(v18, &v23, v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v19[0], v19[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(this[8] + 5 * a2 + 4);
  v13 = v21;
  v12 = v22;
  v14 = (v11 + v22 * a3);
  if (v21 == a5)
  {

    memcpy(v14, a4, v12);
  }

  else
  {
    for (i = v20; i; --i)
    {
      memcpy(v14, a4, v13);
      a4 += a5;
      v14 += v13;
    }
  }
}

void re::CPUTexture::~CPUTexture(re::CPUTexture *this)
{
  re::DynamicString::deinit((this + 72));
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 32);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicString::deinit((this + 72));
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 32);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphCompiled::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(result + 392);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 408);
    v6 = &v5[v2];
    while (1)
    {
      v7 = *v5;
      v8 = *(v4 + 352);
      if (v8 <= v7)
      {
        goto LABEL_14;
      }

      v8 = (*(v4 + 368) + 200 * v7);
      v9 = v8[17];
      if (v9)
      {
        break;
      }

LABEL_8:
      if (++v5 == v6)
      {
        return result;
      }
    }

    v10 = v8[19];
    v11 = 8 * v9;
    while (1)
    {
      v7 = *v10;
      v12 = v8[2];
      if (v12 <= *v10)
      {
        break;
      }

      v13 = *(v8[4] + 8 * v7);
      result = (*(*v13 + 40))(v13, v4, a2);
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v24 = 797;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v12;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::RenderFrameData::RenderFrameData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, a3, 3);
  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = (*(*v5 + 16))(v5, a3);
  }

  return a1;
}

void re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_21, 4 * v10);
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

void re::RenderFrameData::~RenderFrameData(re::RenderFrameData *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 7) = 0;
  }

  re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this);
}

void re::RenderFrameDataStream::~RenderFrameDataStream(re::RenderFrameDataStream *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 6) = 0;
  }

  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::deinit(this);
}

uint64_t re::RenderFrameData::stream(re::RenderFrameData *this, const re::WeakStringID *a2)
{
  v4 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this, a2);
  if (!v4)
  {
    v5 = (*(**(this + 6) + 16))(*(this + 6), *(*(this + 7) + 8));
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0x7FFFFFFFLL;
    v10 = v5;
    v4 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(this, a2, v7);
    re::RenderFrameDataStream::~RenderFrameDataStream(v7);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::init(v4, *(*(this + 7) + 8), 3);
  }

  return v4;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderFrameDataStream>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

double re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::RenderFrameDataStream::~RenderFrameDataStream((v8 + 16));
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

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderFrameDataStream>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  *(v9 + 48) = 0;
  *(v9 + 48) = a4[6];
  a4[6] = 0;
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          *&v30[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v13 = *&v30[32];
          *(a1 + 24) = v14;
          ++*&v30[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v30[16] + v16) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*(*&v30[16] + v16 + 8) ^ (*(*&v30[16] + v16 + 8) >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *&v30[16] + v16;
                v22 = *(*&v30[16] + v16 + 8);
                *(v20 + 16) = 0u;
                v23 = v20 + 16;
                *(v20 + 8) = v22;
                *(v20 + 48) = 0;
                *(v20 + 32) = 0u;
                *(v20 + 52) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v20 + 16), (v21 + 16));
                *(v23 + 48) = 0;
                *(v23 + 48) = *(v21 + 64);
                *(v21 + 64) = 0;
                v15 = *&v30[32];
              }

              ++v17;
              v16 += 72;
            }

            while (v17 < v15);
          }

          re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v30);
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
    v25 = *(v24 + 72 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 72 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 72 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 72 * v4;
}

uint64_t *re::makeDepthPixelFormatPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 252;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakersProgrammableBlending", 0x37uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakeesProgrammableBlending", 0x37uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t *re::makeStencilPixelFormatPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakersProgrammableBlending", 0x37uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakeesProgrammableBlending", 0x37uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t *re::makeSampleCountPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("InstancedOcclusionOnly", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 1;
  return re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t *re::makePixel0FormatsPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 553;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 553;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassHorizontal", 0x32uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassVertical", 0x30uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassRefinement", 0x32uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t *re::makePixel1FormatsPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 25;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t *re::makePixel2FormatsPredictions@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v4);
  v4 ^= v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9;
  v3 = 115;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v4, &v3);
}

uint64_t re::makeRenderTargetInfoPrediction@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  *(a9 + 8) = 0u;
  v17 = (a9 + 8);
  *(a9 + 24) = 0u;
  if (a8)
  {
    v18 = 252;
  }

  else
  {
    v18 = 260;
  }

  if (a8)
  {
    v19 = 253;
  }

  else
  {
    v19 = 260;
  }

  *(a9 + 48) = 0;
  *(a9 + 37) = 0;
  *a9 = 0x7300000004;
  *(a9 + 36) = v18;
  *(a9 + 40) = v19;
  v20 = strlen(a1);
  if (v20)
  {
    v20 = MurmurHash3_x64_128(a1, v20, 0, &v31);
    v21 = (v32 + (v31 << 6) + (v31 >> 2) - 0x61C8864680B583E9) ^ v31;
  }

  else
  {
    v21 = 0;
  }

  v30 = v21;
  re::DynamicString::find(&v29, &v31, "MXI", 3, 0);
  if (v29 == 1)
  {
    *a9 = 0x22B00000001;
    *(a9 + 36) = vdup_n_s32(0x104u);
  }

  v22 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2, &v30);
  if (v22)
  {
    *(a9 + 36) = *v22;
  }

  v23 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a3, &v30);
  if (v23)
  {
    *(a9 + 40) = *v23;
  }

  v24 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a4, &v30);
  if (v24)
  {
    *a9 = *v24;
  }

  v25 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a5, &v30);
  if (v25)
  {
    *(a9 + 4) = *v25;
  }

  v26 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a6, &v30);
  if (v26)
  {
    *v17 = *v26;
  }

  v27 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a7, &v30);
  if (v27)
  {
    *(a9 + 12) = *v27;
  }

  result = v31;
  if (v31)
  {
    if (v32)
    {
      return (*(*v31 + 40))();
    }
  }

  return result;
}

uint64_t re::getVertexFormatFromDataType(re *a1)
{
  v1 = a1;
  v5 = *MEMORY[0x1E69E9840];
  if (a1 - 3) < 0x32 && ((0x3FFFFFC01E00FuLL >> (a1 - 3)))
  {
    return byte_1E30DB2A0[(a1 - 3)];
  }

  v3 = *re::graphicsLogObjects(a1);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Missing mapping of MTLDataType %d to MTLVertexFormat for fallback rendering prediction.", v4, 8u);
    return 0;
  }

  return result;
}

void re::makeAttributeTablePrediction(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v39 = 0;
  memset(&v38[32], 0, 32);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, 28);
  v43 = 1;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  v55 = 0;
  v56 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v57 = 0;
  v6 = *(a1 + 1);
  v57 = 1;
  if (*(a1 + 1))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 2) + v7;
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(v31, a2);
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(v30, a3);
      v11 = *(v10 + 18);
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v31, v10, v12 ^ (v12 >> 31), v67);
      if (HIDWORD(v67[0]) != 0x7FFFFFFF)
      {
        v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v31, v10, v13 ^ (v13 >> 31), v67);
        v11 = *(v31[2] + 32 * HIDWORD(v67[0]) + 24);
      }

      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v30, v10, v14 ^ (v14 >> 31), v67);
      if (HIDWORD(v67[0]) == 0x7FFFFFFF)
      {
        v15 = 1;
      }

      else
      {
        v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v30, v10, v16 ^ (v16 >> 31), v67);
        v15 = *(v30[2] + 32 * HIDWORD(v67[0]) + 24);
      }

      VertexFormatFromDataType = re::getVertexFormatFromDataType(v11);
      v18 = VertexFormatFromDataType;
      v20 = re::sizeFromVertexFormat(VertexFormatFromDataType, v19);
      v21 = v33;
      if (v33 <= v9)
      {
        v58 = 0;
        memset(v67, 0, sizeof(v67));
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v62 = 468;
        v63 = 2048;
        v64 = v9;
        v65 = 2048;
        v66 = v21;
        _os_log_send_and_compose_impl(v27, &v58, v67, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, a2, a3);
        _os_crash_msg();
        __break(1u);
      }

      if (v15)
      {
        v22 = (v20 + 3) & 0x1FC;
      }

      else
      {
        v22 = v20;
      }

      v23 = ((v15 != 0) << 16) | (v15 << 40) | v22 | 0x100000000;
      v24 = *(&v33 + 1) + v8;
      *v24 = v23;
      *(v24 + 8) = 0;
      *(v24 + 12) = v18;
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
      ++v9;
      v8 += 16;
      v7 += 24;
    }

    while (*(a1 + 1) > v9);
  }

  *(a4 + 168) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 176) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 200) = 1;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  *(a4 + 208) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  *(a4 + 312) = 0;
  *(a4 + 320) = 0;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0;
  re::AttributeTableBuilder::makeAttributeTable(&v32, a4);
  re::AttributeTableBuilder::~AttributeTableBuilder(&v32);
}

void re::makeAttributeResolutionsPrediction(_anonymous_namespace_ *a1@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  a4[2] = 0;
  v8 = *(a1 + 1);
  a4[1] = v8;
  if (v8)
  {
    if (v8 >= 0x199999999999999ALL)
    {
      goto LABEL_37;
    }

    v10 = 10 * v8;
    a4[2] = v11;
    if (!v11)
    {
LABEL_38:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v13 = v11;
    v14 = v11;
    if (v8 != 1)
    {
      bzero(v11, v10 - 10);
      v14 = &v13[v10 - 10];
    }

    *(v14 + 4) = 0;
    *v14 = 0;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 1);
  v16 = vmvnq_s8(a2[1]);
  v41 = vmvnq_s8(*a2);
  v42 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    while (1)
    {
      v20 = v19 + 1;
      if (v19 + 1 > 0xFF)
      {
        break;
      }

      v21 = v20 >> 6;
      if ((v20 & 0x3F) != 0)
      {
        v22 = v41.i64[v21] & (-1 << (v20 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) + (v20 & 0xC0);
          goto LABEL_20;
        }

        if (v20 > 0xBF)
        {
          break;
        }

        ++v21;
      }

      v23 = v21;
      v24 = -64 * v21;
      while (1)
      {
        v25 = v41.u64[v23];
        if (v25)
        {
          break;
        }

        v24 -= 64;
        if (++v23 == 4)
        {
          goto LABEL_19;
        }
      }

      v19 = __clz(__rbit64(v25)) - v24;
LABEL_20:
      v26 = *(a1 + 1);
      if (v26 <= v17)
      {
        v43 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v44 = 136315906;
        v45 = "operator[]";
        v46 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v47 = 468;
        v48 = 2048;
        v49 = v17;
        v50 = 2048;
        v51 = v26;
        _os_log_send_and_compose_impl(v33, &v43, &v52, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v43 = 0;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v44 = 136315906;
        v45 = "operator[]";
        v46 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v47 = 468;
        v48 = 2048;
        v49 = v17;
        v50 = 2048;
        v51 = v8;
        _os_log_send_and_compose_impl(v36, &v43, &v52, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
        _os_crash_msg();
        __break(1u);
LABEL_37:
        re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 10, v8, *&v41, *&v42);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v37, v38);
        __break(1u);
        goto LABEL_38;
      }

      v27 = *(a1 + 2) + 24 * v17;
      if (a3)
      {
        v28 = *(v27 + 18);
      }

      else
      {
        v28 = 0;
      }

      if (v8 <= v17)
      {
        goto LABEL_33;
      }

      v29 = *(v27 + 16);
      v30 = &v13[10 * v17];
      *v30 = v19;
      *(v30 + 1) = v29;
      *(v30 + 2) = v18;
      *(v30 + 3) = v28;
      *(v30 + 4) = 0;
      v17 = ++v18;
      if (v15 <= v18)
      {
        return;
      }
    }

LABEL_19:
    v19 = -1;
    goto LABEL_20;
  }
}

uint64_t re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24), *(v18 + 8));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::DebugRenderer::~DebugRenderer(re::DebugRenderer *this)
{
  re::DebugRenderer::deinit(this);
  re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 27);
  re::DynamicArray<re::RenderText>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

void re::DebugRenderer::deinit(re::DebugRenderer *this)
{
  if (*(this + 8) == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 16);
    re::DynamicArray<unsigned long>::deinit(this + 56);
    re::DynamicArray<unsigned long>::deinit(this + 96);
    re::DynamicArray<unsigned long>::deinit(this + 136);
    re::DynamicArray<re::RenderText>::deinit(this + 176);
    re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 27);
    *this = 0;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RenderLine>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + (a2 << 6)), __src, (a4 << 6) - 12);
  }

  else
  {
    re::DynamicArray<re::RigTransform>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[64 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + (v5 << 6)), __src, (v12 << 6) - 12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + (v5 << 6)), v13, (v4 - v12) << 6);
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

double re::DebugRenderer::drawLine(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4, int a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v5;
  v8[2] = *a4;
  v9 = 1065353216;
  if (a5)
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = (a1 + 56);
  }

  *&result = re::DynamicArray<re::RigTransform>::add(v6, v8).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::DebugRenderer::drawArrow(_anonymous_namespace_ *result, float32x4_t *a2, float32x4_t *a3, __int128 *a4, int a5, float a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = vsubq_f32(*a3, *a2);
  v7 = vmulq_f32(v6, v6);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (fabsf(v8) >= 1.0e-10)
  {
    v12 = result;
    v13 = v8;
    v14 = vrsqrte_f32(LODWORD(v8));
    v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v13), vmul_f32(v14, v14)));
    v24 = vmulq_n_f32(v6, vmul_f32(v15, vrsqrts_f32(LODWORD(v13), vmul_f32(v15, v15))).f32[0]);
    re::DebugRenderer::drawLine(result, a2, a3, a4, a5);
    if (fabsf(v24.f32[2]) >= 0.00001)
    {
      v17.i32[0] = 0;
      v17.f32[1] = -v24.f32[2];
      v16 = v24;
      v17.i64[1] = v24.u32[1];
    }

    else
    {
      v16 = v24;
      v17.i64[1] = 0;
      v17.f32[0] = -v24.f32[1];
      v17.i32[1] = v24.i32[0];
    }

    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v18.i32[0] = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).u32[0];
    v20 = vsubq_f32(*a3, vmulq_n_f32(v16, a6));
    v21 = vmulq_n_f32(vmulq_n_f32(v17, v18.f32[0]), a6 * 0.25);
    __src[0] = *a3;
    __src[1] = vaddq_f32(v20, v21);
    v27 = *a4;
    v28 = 1065353216;
    v29 = __src[0];
    v30 = vsubq_f32(v20, v21);
    v31 = v27;
    v32 = 1065353216;
    v22 = 56;
    if (a5)
    {
      v22 = 16;
    }

    v23 = 72;
    if (a5)
    {
      v23 = 32;
    }

    return re::DynamicArray<re::RenderLine>::copy((v12 + v22), *(v12 + v23), __src, 2);
  }

  return result;
}

_anonymous_namespace_ *re::DebugRenderer::drawAxis(_anonymous_namespace_ *a1, uint64_t a2, int a3, float a4, float a5)
{
  v8 = a5 / a4;
  LODWORD(v10) = 0;
  *(&v10 + 1) = a4;
  v11.i64[0] = 0;
  v11.i64[1] = LODWORD(a4);
  v13 = *a2;
  v12 = *(a2 + 16);
  v14 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v15 = vnegq_f32(v12);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(LODWORD(a4), LODWORD(a4)), LODWORD(a4), 0xCuLL), v15), LODWORD(a4), v14);
  v17 = vaddq_f32(v16, v16);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v15), v18, v14);
  v41 = vaddq_f32(*a2, vaddq_f32(vaddq_f32(LODWORD(a4), vmulq_laneq_f32(v18, v12, 3)), vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL)));
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v15), v10, v14);
  v21 = vaddq_f32(v20, v20);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v15), v22, v14);
  v36 = vaddq_f32(v13, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v22, v12, 3)), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL)));
  v40 = v36;
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v15), v11, v14);
  v25 = vaddq_f32(v24, v24);
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vaddq_f32(v11, vmulq_laneq_f32(v26, v12, 3));
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v15), v26, v14);
  v37 = vaddq_f32(v13, vaddq_f32(v27, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)));
  v29 = vsubq_f32(v41, v13);
  v30 = vmulq_f32(v29, v29);
  v38 = xmmword_1E3047670;
  v39 = v37;
  re::DebugRenderer::drawArrow(a1, a2, &v41, &v38, a3, v8 * sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)));
  v31 = vsubq_f32(v36, *a2);
  v32 = vmulq_f32(v31, v31);
  v38 = xmmword_1E3047680;
  re::DebugRenderer::drawArrow(a1, a2, &v40, &v38, a3, v8 * sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)));
  v33 = vsubq_f32(v37, *a2);
  v34 = vmulq_f32(v33, v33);
  v38 = xmmword_1E30476A0;
  return re::DebugRenderer::drawArrow(a1, a2, &v39, &v38, a3, v8 * sqrtf(v34.f32[2] + vaddv_f32(*v34.f32)));
}

_anonymous_namespace_ *re::DebugRenderer::drawAxis(_anonymous_namespace_ *a1, float32x4_t *a2, int a3, float a4, float a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = vaddq_f32(v11, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a2, a4), 0, v9), 0, v10));
  v13 = a5 / a4;
  v30 = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
  v14 = vmulq_f32(v8, 0);
  v15 = vaddq_f32(v11, vmlaq_f32(vmlaq_n_f32(v14, v9, a4), 0, v10));
  v16 = vaddq_f32(v11, vmlaq_n_f32(vmlaq_f32(v14, 0, v9), v10, a4));
  v24 = vdivq_f32(v15, vdupq_laneq_s32(v15, 3));
  v25 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  v28 = v25;
  v29 = v24;
  v17 = vsubq_f32(v30, v11);
  v18 = vmulq_f32(v17, v17);
  v26 = xmmword_1E3047670;
  v27 = v11;
  re::DebugRenderer::drawArrow(a1, &v27, &v30, &v26, a3, v13 * sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)));
  v27 = a2[3];
  v19 = vsubq_f32(v24, v27);
  v20 = vmulq_f32(v19, v19);
  v26 = xmmword_1E3047680;
  re::DebugRenderer::drawArrow(a1, &v27, &v29, &v26, a3, v13 * sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)));
  v27 = a2[3];
  v21 = vsubq_f32(v25, v27);
  v22 = vmulq_f32(v21, v21);
  v26 = xmmword_1E30476A0;
  return re::DebugRenderer::drawArrow(a1, &v27, &v28, &v26, a3, v13 * sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)));
}

double re::DebugRenderer::drawPoint(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, float a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v5;
  v9 = a5;
  if (a4)
  {
    v6 = (a1 + 96);
  }

  else
  {
    v6 = (a1 + 136);
  }

  *&result = re::DynamicArray<re::RenderPoint>::add(v6, v8).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::RenderPoint>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderPoint>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DebugRenderer::drawText(uint64_t a1, float32x4_t *a2, const char *a3, StringID *a4, __int128 *a5, uint64_t a6)
{
  v6 = a2[1].f32[0];
  v7 = a2[1].f32[1];
  v8 = v6 + v6;
  v9 = v7 + v7;
  v10 = a2[1].f32[2];
  v11 = a2[1].f32[3];
  v12 = v10 + v10;
  v13 = v6 * (v6 + v6);
  v14 = v7 * (v7 + v7);
  v15 = v10 * (v10 + v10);
  v16 = v8 * v7;
  v17 = v8 * v10;
  v18 = v9 * v10;
  v19 = v8 * v11;
  v20 = v9 * v11;
  v21 = v12 * v11;
  v22.i32[3] = 0;
  v22.f32[0] = 1.0 - (v14 + v15);
  v22.f32[1] = v16 + v21;
  v22.f32[2] = v17 - v20;
  v23.i32[3] = 0;
  v24.i32[3] = 0;
  v24.f32[0] = v16 - v21;
  v24.f32[1] = 1.0 - (v13 + v15);
  v24.f32[2] = v18 + v19;
  v23.f32[0] = v17 + v20;
  v23.f32[1] = v18 - v19;
  v23.f32[2] = 1.0 - (v13 + v14);
  v25 = vmulq_laneq_f32(v23, *a2, 2);
  v26 = vmulq_n_f32(v24, COERCE_FLOAT(HIDWORD(a2->i64[0])));
  v29[0] = vmulq_n_f32(v22, COERCE_FLOAT(*a2));
  v29[1] = v26;
  v27 = a2[2];
  HIDWORD(v27) = 1.0;
  v29[2] = v25;
  v29[3] = v27;
  re::DebugRenderer::drawText(a1, v29, a3, a4, a5, a6);
  return result;
}

void re::DebugRenderer::drawText(uint64_t a1, __int128 *a2, const char *a3, StringID *a4, __int128 *a5, uint64_t a6)
{
  v29[7] = *MEMORY[0x1E69E9840];
  v22 = a6;
  v11 = re::StringID::StringID(v23, a4);
  v12 = *a2;
  v13 = a2[1];
  v24 = *a5;
  v25 = v12;
  v14 = a2[2];
  v15 = a2[3];
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29[4] = -1;
  if (a6)
  {
    v21 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v16 = re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 216, &v22, v19);
    re::DynamicArray<re::RenderText>::add(v16, v23);
    re::DynamicArray<re::RenderText>::deinit(v19);
  }

  else
  {
    v17 = re::DynamicArray<re::RenderText>::add((a1 + 176), v23);
  }

  v18 = v29[0];
  if (v29[0])
  {
    if (v29[1])
    {
      v18 = (*(*v29[0] + 40))(v17);
    }

    memset(v29, 0, 32);
  }

  if (v23[0])
  {
    if (v23[0])
    {
    }
  }
}

__n128 re::DynamicArray<re::RenderText>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderText>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = *(a2 + 2);
  v9 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(v5 + 48) = *(a2 + 3);
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 16) = *(a2 + 1);
  *(v5 + 80) = v8;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 96) = a2[12];
  a2[12] = 0;
  v10 = *(v5 + 112);
  *(v5 + 112) = a2[14];
  a2[14] = v10;
  result = *(a2 + 15);
  *(v5 + 120) = result;
  a2[15] = 0;
  v12 = *(v5 + 104);
  *(v5 + 104) = a2[13];
  a2[13] = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DebugRenderer::drawCircle(uint64_t a1, float32x4_t *a2, unsigned int a3, _OWORD *a4, int a5, __n128 result)
{
  if (a3 >= 1)
  {
    v36 = v6;
    v37 = v7;
    v10 = a3;
    v32 = result.n128_u32[0];
    v13 = 6.28318531 / a3;
    v14 = __sincosf_stret(v13 * 0.5);
    v15 = vrsqrte_f32(1065353216);
    v16 = vmul_f32(v15, vrsqrts_f32(1065353216, vmul_f32(v15, v15)));
    v17.i64[1] = 1065353216;
    v18 = vmulq_n_f32(xmmword_1E30476A0, vmul_f32(v16, vrsqrts_f32(1065353216, vmul_f32(v16, v16))).f32[0]);
    *v17.f32 = vmul_n_f32(*v18.f32, v14.__sinval);
    v19.f32[0] = vmuls_lane_f32(v14.__sinval, v18, 2);
    v20 = v17;
    v20.i32[2] = v19.i32[0];
    result = v32;
    *(v19.i64 + 4) = v17.i64[0];
    v30 = vnegq_f32(v20);
    v31 = v19;
    do
    {
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(result, result), result, 0xCuLL), v30), result, v31);
      v22 = vaddq_f32(v21, v21);
      v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
      v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v30), v23, v31);
      v25 = vaddq_f32(vaddq_f32(result, vmulq_n_f32(v23, v14.__cosval)), vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
      v26 = *a2;
      v27 = a2[1];
      v28 = a2[2];
      v29 = a2[3];
      v35 = vaddq_f32(v29, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, result.n128_f32[0]), v27, result.n128_u64[0], 1), v28, result, 2));
      v33 = v25;
      v34 = vaddq_f32(v29, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v25.f32[0]), v27, *v25.f32, 1), v28, v25, 2));
      re::DebugRenderer::drawLine(a1, &v35, &v34, a4, a5);
      result = v33;
      --v10;
    }

    while (v10);
  }

  return result;
}

_anonymous_namespace_ *re::DebugRenderer::drawBox(uint64_t a1, float32x4_t *a2, float *a3, __int128 *a4, int a5)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[5] - v5;
  v7 = a3[2];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = vmulq_n_f32(*a2, *a3);
  v12 = vmlaq_n_f32(v11, v8, v5);
  v13 = vmulq_n_f32(*a2, *a3 + (a3[4] - *a3));
  v14 = vmlaq_n_f32(v13, v8, v5);
  v15 = v7 + (a3[6] - v7);
  v22 = vaddq_f32(v10, vmlaq_n_f32(v12, v9, v7));
  v23 = vaddq_f32(v10, vmlaq_n_f32(v14, v9, v7));
  v16 = v5 + v6;
  v17 = vmlaq_n_f32(v11, v8, v16);
  v24 = *a4;
  v18 = vmlaq_n_f32(v13, v8, v16);
  v25 = 1065353216;
  v26 = v23;
  v27 = vaddq_f32(v10, vmlaq_n_f32(v14, v9, v15));
  v28 = v24;
  v29 = 1065353216;
  v30 = v27;
  v31 = vaddq_f32(v10, vmlaq_n_f32(v12, v9, v15));
  v32 = v24;
  v33 = 1065353216;
  v34 = v22;
  v35 = v31;
  v36 = v24;
  v37 = 1065353216;
  v38 = v22;
  v39 = vaddq_f32(v10, vmlaq_n_f32(v17, v9, v7));
  v40 = *a4;
  v41 = 1065353216;
  v42 = v23;
  v43 = vaddq_f32(v10, vmlaq_n_f32(v18, v9, v7));
  v44 = v40;
  v45 = 1065353216;
  v46 = v27;
  v47 = vaddq_f32(v10, vmlaq_n_f32(v18, v9, v15));
  v48 = v40;
  v49 = 1065353216;
  v50 = v31;
  v51 = vaddq_f32(v10, vmlaq_n_f32(v17, v9, v15));
  v52 = v40;
  v53 = 1065353216;
  v54 = v39;
  v55 = v43;
  v56 = v40;
  v57 = 1065353216;
  v58 = v43;
  v59 = v47;
  v60 = *a4;
  v61 = 1065353216;
  v62 = v47;
  v63 = v51;
  v64 = v60;
  v65 = 1065353216;
  v66 = v39;
  v67 = v51;
  v19 = 56;
  v68 = v60;
  if (a5)
  {
    v19 = 16;
  }

  v20 = 72;
  if (a5)
  {
    v20 = 32;
  }

  v69 = 1065353216;
  return re::DynamicArray<re::RenderLine>::copy((a1 + v19), *(a1 + v20), &v22, 12);
}

void re::DebugRenderer::drawSphere(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4, int a5, float a6)
{
  v11 = *(a2 + 16);
  v53 = *a2;
  v54 = v11;
  v13 = *(a2 + 48);
  v55 = *(a2 + 32);
  v12 = v55;
  v56 = v13;
  v12.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v12);
  v14 = 0;
  v15 = vrsqrte_f32(1065353216);
  v16 = vmul_f32(v15, vrsqrts_f32(1065353216, vmul_f32(v15, v15)));
  LODWORD(v52) = vmul_f32(v16, vrsqrts_f32(1065353216, vmul_f32(v16, v16))).u32[0];
  v17 = vmulq_n_f32(xmmword_1E3047670, v52);
  v16.f32[0] = vmuls_lane_f32(0.70711, v17, 2);
  v18 = v16.f32[0] + v16.f32[0];
  *v17.f32 = vmul_f32(*v17.f32, vdup_n_s32(0x3F3504F3u));
  v19 = vadd_f32(*v17.f32, *v17.f32);
  v20 = vmul_f32(*v17.f32, v19);
  v21 = v16.f32[0] * (v16.f32[0] + v16.f32[0]);
  v17.f32[0] = vmul_lane_f32(v19, *v17.f32, 1).f32[0];
  v22 = v16.f32[0] * v19.f32[0];
  v16.f32[0] = vmuls_lane_f32(v16.f32[0], v19, 1);
  v23 = 0.70711 * v19.f32[0];
  v19.f32[0] = vmuls_lane_f32(0.70711, v19, 1);
  v24 = v18 * 0.70711;
  HIDWORD(v25) = 0;
  *&v25 = 1.0 - (v20.f32[1] + v21);
  *(&v25 + 1) = v17.f32[0] + v24;
  HIDWORD(v26) = 0;
  *(&v25 + 2) = v22 - v19.f32[0];
  HIDWORD(v27) = 0;
  *&v27 = v17.f32[0] - v24;
  *(&v27 + 1) = 1.0 - (v20.f32[0] + v21);
  *(&v27 + 2) = v16.f32[0] + v23;
  *&v26 = v22 + v19.f32[0];
  *(&v26 + 1) = v16.f32[0] - v23;
  *(&v26 + 2) = 1.0 - vaddv_f32(v20);
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v31 = v56;
  v57 = v25;
  v58 = v27;
  v59 = v26;
  v60 = xmmword_1E30474D0;
  do
  {
    *(&v61 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v57 + v14))), v29, *(&v57 + v14), 1), v30, *(&v57 + v14), 2), v31, *(&v57 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v32 = v61;
  v50 = v63;
  v51 = v61;
  v48 = v64;
  v49 = v62;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v32.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v32);
  v33 = 0;
  v34 = vmulq_n_f32(xmmword_1E3047680, v52);
  v35 = vmuls_lane_f32(0.70711, v34, 2);
  v36 = v35 + v35;
  *v34.f32 = vmul_f32(*v34.f32, vdup_n_s32(0x3F3504F3u));
  v37 = vadd_f32(*v34.f32, *v34.f32);
  v38 = vmul_f32(*v34.f32, v37);
  v39 = v35 * (v35 + v35);
  v34.f32[0] = vmul_lane_f32(v37, *v34.f32, 1).f32[0];
  v40 = v35 * v37.f32[0];
  v41 = vmuls_lane_f32(v35, v37, 1);
  v42 = 0.70711 * v37.f32[0];
  v37.f32[0] = vmuls_lane_f32(0.70711, v37, 1);
  v43 = v36 * 0.70711;
  HIDWORD(v44) = 0;
  *&v44 = 1.0 - (v38.f32[1] + v39);
  *(&v44 + 1) = v34.f32[0] + v43;
  HIDWORD(v45) = 0;
  *(&v44 + 2) = v40 - v37.f32[0];
  HIDWORD(v46) = 0;
  *&v46 = v34.f32[0] - v43;
  *(&v46 + 1) = 1.0 - (v38.f32[0] + v39);
  *(&v46 + 2) = v41 + v42;
  *&v45 = v40 + v37.f32[0];
  *(&v45 + 1) = v41 - v42;
  *(&v45 + 2) = 1.0 - vaddv_f32(v38);
  v57 = v44;
  v58 = v46;
  v59 = v45;
  v60 = xmmword_1E30474D0;
  do
  {
    *(&v61 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v57 + v33))), v49, *(&v57 + v33), 1), v50, *(&v57 + v33), 2), v48, *(&v57 + v33), 3);
    v33 += 16;
  }

  while (v33 != 64);
  v47 = v61;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v47.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v47);
}

void re::DebugRenderer::appendDebugTextToRenderFrame(re::DebugRenderer *this, re::DynamicString **a2, const re::StringID *a3)
{
  if (*(this + 24))
  {
    StreamNameForWorldRoot = re::RenderFrame::getStreamNameForWorldRoot(a2, a3, 0);
    if (StreamNameForWorldRoot[1])
    {
      v7 = StreamNameForWorldRoot[2];
    }

    else
    {
      v7 = StreamNameForWorldRoot + 9;
    }

    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        if (v9)
        {
          v10 = (v7 + 2);
          do
          {
            v8 = 31 * v8 + v9;
            v11 = *v10++;
            v9 = v11;
          }

          while (v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = *(this + 23);
    v36 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v13 = **(re::RenderFrameData::stream((a2 + 33), &v36) + 48);
    (*(v13 + 704))();
    v14 = *(this + 24);
    *(this + 24) = 0;
    if (v14)
    {
      v15 = *(this + 26);
      v16 = 144 * v14;
      do
      {
        re::DynamicString::deinit((v15 + 96));
        re::StringID::destroyString(v15);
        v15 += 144;
        v16 -= 144;
      }

      while (v16);
    }

    ++*(this + 50);
    if (*(this + 23) < v12)
    {
      re::DynamicArray<re::RenderText>::setCapacity(this + 22, v12);
    }
  }

  v17 = *(this + 62);
  if (v17)
  {
    v18 = 0;
    v19 = *(this + 29);
    while (1)
    {
      v20 = *v19;
      v19 += 16;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(this + 62);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v21 = *(this + 62);
LABEL_25:
  while (v18 != v17)
  {
    v22 = re::RenderFrame::getStreamNameForWorldRoot(a2, a3, *(*(this + 29) + (v18 << 6) + 8));
    if (v22[1])
    {
      v23 = v22[2];
    }

    else
    {
      v23 = v22 + 9;
    }

    if (v23)
    {
      v24 = *v23;
      if (*v23)
      {
        v25 = v23[1];
        if (v25)
        {
          v26 = (v23 + 2);
          do
          {
            v24 = 31 * v24 + v25;
            v27 = *v26++;
            v25 = v27;
          }

          while (v27);
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v36 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v28 = **(re::RenderFrameData::stream((a2 + 33), &v36) + 48);
    (*(v28 + 704))();
    v21 = *(this + 62);
    if (v21 <= v18 + 1)
    {
      v29 = v18 + 1;
    }

    else
    {
      v29 = *(this + 62);
    }

    while (v29 - 1 != v18)
    {
      LODWORD(v18) = v18 + 1;
      if ((*(*(this + 29) + (v18 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v18) = v29;
  }

  if (*(this + 61))
  {
    v30 = *(this + 60);
    if (v30)
    {
      memset_pattern16(*(this + 28), &unk_1E304C660, 4 * v30);
      v21 = *(this + 62);
    }

    if (v21)
    {
      v31 = 0;
      for (i = 0; i < v21; ++i)
      {
        v33 = *(this + 29);
        v34 = *(v33 + v31);
        if (v34 < 0)
        {
          *(v33 + v31) = v34 & 0x7FFFFFFF;
          re::DynamicArray<re::RenderText>::deinit(v33 + v31 + 16);
          v21 = *(this + 62);
        }

        v31 += 64;
      }
    }

    *(this + 61) = 0;
    *(this + 62) = 0;
    v35 = *(this + 64) + 1;
    *(this + 63) = 0x7FFFFFFF;
    *(this + 64) = v35;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RenderPoint>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DelayedDestructorsForFrame::callDestructorsAndClear(void *this)
{
  v1 = this;
  v19 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v2 = this[2];
    if (v2)
    {
      v3 = v2 - 1;
      v4 = 40 * v2 - 8;
      do
      {
        v5 = v1[2];
        if (v5 <= v3)
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

          v13 = 789;
          v14 = 2048;
          v15 = v3;
          v16 = 2048;
          v17 = v5;
          _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
          _os_crash_msg();
          __break(1u);
        }

        (*(**(v1[4] + v4) + 16))(*(v1[4] + v4));
        --v3;
        v4 -= 40;
      }

      while (v3 != -1);
    }

    this = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(v1);
  }

  v1[5] = 0xFFFFFFFFFFFFFFFLL;
  return this;
}

uint64_t re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(uint64_t a1)
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
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v3);
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

re::FrameManager *re::FrameManager::FrameManager(re::FrameManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_1F5D098B8;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 16;
  *(v2 + 40) = xmmword_1E30DB2E0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 117) = 0;
  v3 = re::globalAllocators(v2);
  *(this + 19) = v3[2];
  *(this + 20) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 24) = v4[2];
  *(this + 25) = 0;
  v5 = re::globalAllocators(v4);
  *(this + 29) = v5[2];
  *(this + 30) = 0;
  v6 = re::globalAllocators(v5);
  *(this + 34) = v6[2];
  *(this + 35) = 0;
  *(this + 39) = re::globalAllocators(v6)[2];
  *(this + 345) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  return this;
}

double re::FrameManager::init(re::FrameManager *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 42) = 8;
  *(this + 43) = v4;
  if (!v4)
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_7:
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 468;
    v21 = 2048;
    v22 = v1;
    v23 = 2048;
    v24 = v2;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
  }

  v6 = 7;
  do
  {
    *(v4 + 80) = 0;
    *(v4 + 48) = 0uLL;
    *(v4 + 64) = 0uLL;
    *(v4 + 16) = xmmword_1E30DB300;
    *(v4 + 32) = 0uLL;
    *v4 = xmmword_1E30DB2F0;
    *(v4 + 88) = 0;
    *(v4 + 128) = 0;
    *(v4 + 256) = 0;
    v4 += 384;
    --v6;
  }

  while (v6);
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = xmmword_1E30DB300;
  *(v4 + 32) = 0u;
  *v4 = xmmword_1E30DB2F0;
  *(v4 + 88) = 0;
  *(v4 + 128) = 0;
  *(v4 + 256) = 0;
  v7 = re::globalAllocators(v4);
  v8 = re::PerFrameAllocatorManager::addOwner(v7[6], this);
  *(this + 2) = v8;
  v1 = *(this + 3) & 7;
  v2 = *(this + 42);
  if (v2 <= v1)
  {
    goto LABEL_7;
  }

  v10 = *(this + 43) + 384 * v1;
  *v10 = *(this + 3);
  *(v10 + 8) = xmmword_1E30D6840;
  *&result = 0x1000000010000;
  *(v10 + 88) = 0x10000;
  *(v10 + 128) = 0;
  *(v10 + 256) = 0;
  return result;
}

void re::FrameManager::runAllDelayedDestructors(int a1, uint64_t a2, os_unfair_lock_t lock)
{
  os_unfair_lock_lock(lock);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = 48 * v5;
    do
    {
      re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      v6 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  os_unfair_lock_unlock(lock);
}

uint64_t (***re::FrameManager::prepareForDeinit(os_unfair_lock_s *this))(void)
{
  std::lock[abi:ne200100]<re::UnfairLock,re::UnfairLock>(this + 22, this + 30);
  *&this[88]._os_unfair_lock_opaque = 0x100000001;
  os_unfair_lock_unlock(this + 22);
  os_unfair_lock_unlock(this + 30);
  re::FrameManager::runAllDelayedDestructors(v2, &this[16], this + 22);
  re::FrameManager::runAllDelayedDestructors(v3, &this[24], this + 30);
  v5 = re::globalAllocators(v4);
  result = re::PerFrameAllocatorManager::freeAllocatorsOlderOrEqual(v5[6], *&this[6]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFFFLL | (*&this[4]._os_unfair_lock_opaque << 60));
  LOBYTE(this[31]._os_unfair_lock_opaque) = 1;
  return result;
}

void re::FrameManager::deinit(re::FrameManager *this)
{
  if ((*(this + 124) & 1) == 0)
  {
    re::FrameManager::prepareForDeinit(this);
  }

  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 8);
  v2 = re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 12);
  v3 = re::globalAllocators(v2);
  re::PerFrameAllocatorManager::removeOwner(v3[6], *(this + 2));
  *(this + 2) = 16;
}

void *re::FixedArray<re::DelayedDestructorsForFrame>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 48 * v2;
      do
      {
        re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::FrameManager::addDelayedDestructor(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_t lock, int *a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a5 < 1)
  {
    os_unfair_lock_lock(lock);
    v13 = *(a1 + 24);
    v14 = v13 & 7;
    v15 = *(a2 + 8);
    if (v15 <= v14)
    {
      v26 = 0;
      memset(v35, 0, sizeof(v35));
      v23 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 468;
      v31 = 2048;
      v32 = v14;
      v33 = 2048;
      v34 = v15;
      _os_log_send_and_compose_impl(v24, &v26, v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    v16 = *(a2 + 16) + 48 * v14;
    if (!*v16)
    {
      *v16 = a6;
      v12 = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v16, 0);
      ++*(v16 + 24);
      v13 = *(a1 + 24);
    }

    *(v16 + 40) = v13 & 0xFFFFFFFFFFFFFFFLL | (*(a1 + 16) << 60);
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    if (v17 >= v18)
    {
      v19 = v17 + 1;
      if (v18 < v17 + 1)
      {
        if (*v16)
        {
          v20 = 2 * v18;
          if (!v18)
          {
            v20 = 8;
          }

          if (v20 <= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v16, v21);
        }

        else
        {
          re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v16, v19);
          ++*(v16 + 24);
        }
      }

      v17 = *(v16 + 16);
    }

    v22 = *(v16 + 32) + 40 * v17;
    *(v22 + 24) = *(a3 + 24);
    *(v22 + 32) = 0;
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(v22, a3);
    ++*(v16 + 16);
    ++*(v16 + 24);

    os_unfair_lock_unlock(lock);
  }

  else
  {
    v7 = *(**(a3 + 32) + 16);

    v7();
  }
}

void re::FrameManager::addDelayedDestructor(uint64_t a1, uint64_t a2)
{
  ValidAllocator = re::getValidAllocator((*(a1 + 24) & 0xFFFFFFFFFFFFFFFLL | (*(a1 + 16) << 60)));

  re::FrameManager::addDelayedDestructor(a1, a1 + 64, a2, (a1 + 88), (a1 + 352), ValidAllocator);
}

void *re::FrameManager::destructForFrame(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 88);
  *(result + 88) = v3 + 1;
  v4 = result[9];
  if (v4)
  {
    v6 = result[10];
    v7 = 48 * v4;
    do
    {
      if (*v6 && ((v6[5] ^ a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        result = re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      }

      v6 += 6;
      v7 -= 48;
    }

    while (v7);
    v3 = *(v2 + 88) - 1;
  }

  *(v2 + 88) = v3;
  return result;
}

uint64_t re::FrameManager::hasToDestructForFrameOnRenderThread(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 120));
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 112);
    v6 = 48 * v4;
    while (1)
    {
      if (*v5)
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v7 = v5[5];
        v8 = (v7 ^ a2) & 0xFFFFFFFFFFFFFFFLL;
        v9 = v7 & 0xFFFFFFFFFFFFFFFLL;
        if (!v8 || v9 <= (*(a1 + 32) & 0xFFFFFFFFFFFFFFFuLL))
        {
          break;
        }
      }

      v5 += 6;
      v6 -= 48;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  os_unfair_lock_unlock((a1 + 120));
  return v11;
}

void re::FrameManager::destructForFrameOnRenderThread(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 120));
  v6 = *(a1 + 356);
  *(a1 + 356) = v6 + 1;
  v7 = *(a1 + 104);
  if (v7)
  {
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFLL;
    v9 = *(a1 + 112);
    v10 = 48 * v7;
    while (1)
    {
      if (*v9)
      {
        if (((v9[5] ^ a2) & 0xFFFFFFFFFFFFFFFLL) != 0)
        {
          if (a3)
          {
            goto LABEL_8;
          }
        }

        else
        {
          re::DelayedDestructorsForFrame::callDestructorsAndClear(v9);
          if (a3)
          {
LABEL_8:
            if ((v9[5] & 0xFFFFFFFFFFFFFFFuLL) <= v8)
            {
              re::DelayedDestructorsForFrame::callDestructorsAndClear(v9);
            }
          }
        }
      }

      v9 += 6;
      v10 -= 48;
      if (!v10)
      {
        v6 = *(a1 + 356) - 1;
        break;
      }
    }
  }

  *(a1 + 356) = v6;

  os_unfair_lock_unlock((a1 + 120));
}

void re::FrameManager::destructOlderOrEqualOnRenderThread(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 120));
  v4 = *(a1 + 356);
  *(a1 + 356) = v4 + 1;
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = *(a1 + 112);
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = 48 * v5;
    do
    {
      if (*v6 && (v6[5] & 0xFFFFFFFFFFFFFFFuLL) <= v7)
      {
        re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      }

      v6 += 6;
      v8 -= 48;
    }

    while (v8);
    v4 = *(a1 + 356) - 1;
  }

  *(a1 + 356) = v4;

  os_unfair_lock_unlock((a1 + 120));
}

uint64_t re::FrameManager::nextFrame(re::FrameManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = *(this + 35);
  if (v7)
  {
    (*(*v7 + 16))(v7, a2, a3, a4, a5);
  }

  v8 = this + 24;
  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFLL;
  v10 = 0xFFFFFFFFFFFFFFFLL;
  if (*(this + 360) != 1)
  {
    goto LABEL_17;
  }

  v11 = *(this + 3) & 0xFFFFFFFFFFFFFFFLL;
  do
  {
    if (v11 == 0xFFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(this + 42);
      if (v15 <= v13)
      {
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v13;
        v73 = 2048;
        v74 = v15;
        _os_log_send_and_compose_impl(v42, &v66, &v75, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64);
        _os_crash_msg();
        __break(1u);
LABEL_73:
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v5;
        v73 = 2048;
        v74 = v15;
        _os_log_send_and_compose_impl(v45, &v66, &v75, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v47)
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v13;
        v73 = 2048;
        v74 = v8;
        _os_log_send_and_compose_impl(v48, &v66, &v75, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
        _os_crash_msg();
        __break(1u);
LABEL_81:
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v15;
        v73 = 2048;
        v74 = v8;
        _os_log_send_and_compose_impl(v51, &v66, &v75, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
        _os_crash_msg();
        __break(1u);
LABEL_85:
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v53)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v13;
        v73 = 2048;
        v74 = v15;
        _os_log_send_and_compose_impl(v54, &v66, &v75, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64);
        _os_crash_msg();
        __break(1u);
LABEL_89:
        v66 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        v55 = MEMORY[0x1E69E9C10];
        v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v56)
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v70 = 468;
        v71 = 2048;
        v72 = v13;
        v73 = 2048;
        v74 = v8;
        _os_log_send_and_compose_impl(v57, &v66, &v75, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
        _os_crash_msg();
        __break(1u);
LABEL_93:
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

        v70 = 468;
        v71 = 2048;
        v72 = v8;
        v73 = 2048;
        v74 = v13;
        _os_log_send_and_compose_impl(v60, &v66, &v75, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
        _os_crash_msg();
        __break(1u);
        goto LABEL_97;
      }

      v16 = *(this + 43) + v12;
      if (*(v16 + 90) == 1 && *v16 == v11)
      {
        v14 = 1;
        atomic_fetch_add((v16 + 256), 1u);
        *(v16 + 91) = 1;
        v11 = *(v16 + 16);
      }

      ++v13;
      v12 += 384;
    }

    while (v13 != 8);
  }

  while ((v14 & 1) != 0);
  v10 = v9;
LABEL_17:
  v18 = 0;
  v13 = 0;
  v19 = 0;
  v20 = (v9 + 1);
  do
  {
    v15 = *(this + 42);
    if (v15 <= v13)
    {
      goto LABEL_85;
    }

    v21 = *(this + 43) + v18;
    if (*(v21 + 90) == 1)
    {
      if (atomic_load((v21 + 128)))
      {
        break;
      }
    }

    v19 = v13 > 6;
    v18 += 384;
    ++v13;
  }

  while (v13 != 8);
  v65 = v20;
  if (v19 && re::FrameManager::hasToDestructForFrameOnRenderThread(this, 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = *(this + 30);
    if (v23)
    {
      (*(*v23 + 16))(v23);
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  ++*(this + 88);
  v25 = (*(this + 6) + 1) & 7;
  v13 = 0xFFFFFFFFLL;
  v5 = v25;
  do
  {
    v15 = *(this + 42);
    if (v15 <= v5)
    {
      goto LABEL_73;
    }

    v26 = *(this + 43) + 384 * v5;
    if (*(v26 + 90) == 1)
    {
      v27 = atomic_load((v26 + 256));
      if (v27 >= 1)
      {
        atomic_fetch_add((v26 + 256), 0xFFFFFFFF);
      }

      v28 = *v26 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60);
      if (*(v26 + 89) == 1 && (*(v26 + 91) & 1) == 0)
      {
        re::FrameManager::destructForFrame(this, *v26 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60));
      }

      if (!atomic_load((v26 + 128)) && !atomic_load((v26 + 256)))
      {
        re::FrameManager::destructForFrame(this, v28);
        if ((v24 & re::FrameManager::hasToDestructForFrameOnRenderThread(this, v28)) == 1)
        {
          v31 = *(this + 30);
          if (v31)
          {
            (*(*v31 + 16))(v31);
          }
        }

        re::FrameManager::destructForFrameOnRenderThread(this, v28, 1);
        re::FrameManager::freeForFrame(this, v26);
        if ((re::FrameManager::hasToDestructForFrameOnRenderThread(this, v28) & 1) == 0)
        {
          *(v26 + 90) = 0;
        }
      }
    }

    v5 = (v5 + 1) & 7;
  }

  while (v5 != v25);
  --*(this + 88);
  re::updateFrameCountCommon((this + 24), v65, "FrameCount", 0);
  v8 = (v65 & 7);
  v13 = *(this + 42);
  if (v13 <= v8)
  {
    goto LABEL_93;
  }

  v32 = *(this + 43) + 384 * v8;
  if (*(v32 + 90) == 1)
  {
    v33 = *v32 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60);
    if (re::FrameManager::hasToDestructForFrameOnRenderThread(this, v33))
    {
      v34 = *(this + 30);
      if (v34)
      {
        (*(*v34 + 16))(v34);
      }
    }

    re::FrameManager::destructForFrame(this, v33);
    re::FrameManager::destructForFrameOnRenderThread(this, v33, 1);
    re::FrameManager::freeForFrame(this, v32);
  }

  v15 = 0;
  *(v32 + 16) = v10;
  *(v32 + 88) = 0x10000;
  *(v32 + 128) = 0;
  *(v32 + 256) = 0;
  v35 = 1;
  *v32 = v65;
  *(v32 + 8) = 1;
  atomic_fetch_add((v32 + 256), 1u);
  v8 = *(this + 42);
  if (v8 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(this + 42);
  }

  for (i = 384; i != 3072; i += 384)
  {
    if (v13 == v35)
    {
      goto LABEL_77;
    }

    if (v8 <= v15)
    {
      goto LABEL_81;
    }

    v37 = *(this + 43);
    if (*(v37 + i) < *(v37 + 384 * v15))
    {
      v15 = v35;
    }

    ++v35;
  }

  for (j = 1; j != 8; ++j)
  {
    v13 = (v15 + j) & 7;
    if (v8 <= v13)
    {
      goto LABEL_89;
    }

    if (*(v37 + 384 * v13 + 90))
    {
      break;
    }
  }

  v13 = (v15 + j - 1) & 7;
  if (v8 <= v13)
  {
LABEL_97:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v70 = 468;
    v71 = 2048;
    v72 = v13;
    v73 = 2048;
    v74 = v8;
    _os_log_send_and_compose_impl(v63, &v66, &v75, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v65);
    _os_crash_msg();
    __break(1u);
  }

  *(this + 4) = *(v37 + 384 * v13);
  *(this + 360) = 0;
  result = *(this + 40);
  if (result)
  {
    v40 = *(*result + 16);

    return v40();
  }

  return result;
}

void re::FrameManager::freeForFrame(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 24));
  if (*(a2 + 88) == 1)
  {

    std::mutex::unlock((a2 + 24));
  }

  else
  {
    *(a2 + 88) = 1;
    std::mutex::unlock((a2 + 24));
    v4 = *a2 & 0xFFFFFFFFFFFFFFFLL | (a1[2] << 60);
    v5 = a1[20];
    if (v5)
    {
      v8 = v4;
      v5 = (*(*v5 + 16))(v5, &v8);
    }

    v6 = re::globalAllocators(v5);
    re::PerFrameAllocatorManager::freeAllocatorsForFrame(v6[6], v4);
    v7 = a1[25];
    if (v7)
    {
      v8 = v4;
      (*(*v7 + 16))(v7, &v8);
    }
  }
}

void re::updateFrameCountCommon(re *this, unint64_t *a2, uint64_t a3, const char *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*this <= a2)
  {
    if (*this != a2 || *this == 1)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      goto LABEL_12;
    }

    v13 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *this;
    v16 = 136315394;
    v17 = a3;
    v18 = 2048;
    v19 = v14;
    v9 = "%s same frame more than once %llu";
    v10 = v13;
    v11 = 22;
  }

  else
  {
    v7 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = *this;
    v16 = 136315650;
    v17 = a3;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = a2;
    v9 = "%s update out of order %llu to %llu";
    v10 = v7;
    v11 = 32;
  }

  _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
LABEL_12:
  v15 = *this;
  if (*this <= a2)
  {
    v15 = a2;
  }

  *this = v15;
}

double re::FrameManager::deinitRenderFrameCounting(re::FrameManager *this)
{
  v2 = re::globalAllocators(this);
  v3 = re::PerFrameAllocatorManager::freeAllocatorsForFrame(v2[6], *(this + 6) & 0xFFFFFFFFFFFFFFFLL | (*(this + 5) << 60));
  v4 = re::globalAllocators(v3);
  re::PerFrameAllocatorManager::removeOwner(v4[6], *(this + 5));
  *&result = 16;
  *(this + 40) = xmmword_1E30DB2E0;
  return result;
}

re *re::FrameManager::getFrameRefCount(re::FrameManager *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a2 & 7;
  v3 = *(this + 42);
  if (v3 <= v2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v2;
    v24 = 2048;
    v25 = v3;
    _os_log_send_and_compose_impl(v11, &v17, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v4 = a2;
  result = (*(this + 43) + 384 * v2);
  if (*result == a2)
  {
    return result;
  }

  v7 = *re::graphicsLogObjects(result);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 42);
    if (v8 > v2)
    {
      v9 = *(*(this + 43) + 384 * v2);
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "getFrameRefCount() called with fc=%d, but found fc=%d instead", buf, 0xEu);
      return 0;
    }

LABEL_12:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = v8;
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = v2;
    v24 = 2048;
    v25 = v13;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  return 0;
}

uint64_t re::FrameManager::tryExecuteCallbackWithAllocatedFrame(re::FrameManager *a1, uint64_t a2, uint64_t a3)
{
  FrameRefCount = re::FrameManager::getFrameRefCount(a1, a2);
  if (!FrameRefCount)
  {
    return 0;
  }

  v6 = FrameRefCount;
  std::mutex::lock((FrameRefCount + 24));
  if (*v6 == a2 && (*(v6 + 88) & 1) == 0)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), &v9);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((v6 + 24));
  return v7;
}

void *re::allocInfo_FrameManager(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_471, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_471))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAC38, "FrameManager");
    __cxa_guard_release(&_MergedGlobals_471);
  }

  return &unk_1EE1BAC38;
}

void re::initInfo_FrameManager(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x34087BE954749B40;
  v8[1] = "FrameManager";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_FrameManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::FrameManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FrameManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::FrameManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::FrameManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::FrameManager::~FrameManager(re::FrameManager *this)
{
  re::FrameManager::~FrameManager(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D098B8;
  if (*(this + 41))
  {
    v2 = *(this + 42);
    if (v2)
    {
      v3 = 384 * v2;
      v4 = (*(this + 43) + 24);
      do
      {
        std::mutex::~mutex(v4);
        v4 = v5 + 6;
        v3 -= 384;
      }

      while (v3);
      (*(**(this + 41) + 40))(*(this + 41), *(this + 43));
      *(this + 42) = 0;
      *(this + 43) = 0;
    }

    *(this + 41) = 0;
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 288);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 248);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 208);
  re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(this + 168);
  re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(this + 128);
  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 12);
  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 8);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::FixedArray<re::DelayedDestructorsForFrame>::init<>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 8;
  result = (*(*a2 + 32))(a2, 384, 8);
  a1[2] = result;
  if (result)
  {
    v5 = (result + 40);
    v6 = 7;
    do
    {
      *(v5 - 4) = 0;
      *(v5 - 3) = 0;
      *(v5 - 5) = 0;
      *(v5 - 4) = 0;
      *(v5 - 1) = 0;
      *v5 = 0xFFFFFFFFFFFFFFFLL;
      v5 += 6;
      --v6;
    }

    while (v6);
    *(v5 - 4) = 0;
    *(v5 - 3) = 0;
    *(v5 - 5) = 0;
    *(v5 - 4) = 0;
    *(v5 - 1) = 0;
    *v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v5, a2);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(v11, v8);
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
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

uint64_t re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 32))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 24))(*(a2 + 32));
        re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

void *re::InlineRenderGraphProvider::InlineRenderGraphProvider(void *a1, const re::DynamicString *a2, uint64_t a3, uint64_t a4)
{
  re::DynamicString::DynamicString(v8, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v8);
  if (*&v8[0])
  {
    if (BYTE8(v8[0]))
    {
      (*(**&v8[0] + 40))();
    }

    memset(v8, 0, sizeof(v8));
  }

  *a1 = &unk_1F5D09918;
  a1[8] = *(a3 + 24);
  a1[9] = 0;
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>((a1 + 5), a3);
  a1[13] = *(a4 + 24);
  a1[14] = 0;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>((a1 + 10), a4);
  return a1;
}

uint64_t re::InlineRenderGraphProvider::provide(re::InlineRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v5 = a3;
  v6 = a2;
  return (*(**(this + 14) + 16))(*(this + 14), &v6, &v5, a4);
}

uint64_t re::InlineRenderGraphProvider::prepareFrame(re::InlineRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v10[0] = 0x2FD78E65604013F0;
  v10[1] = "InlineRenderGraphProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v10, a2, a3);
  v10[0] = a2;
  v11 = a3;
  return ((ScopeHash << 6) + (ScopeHash >> 2) - 0x61C8864680B583E9 + (*(**(this + 9) + 16))(*(this + 9), v10, &v11, a4)) ^ ScopeHash;
}

void re::InlineRenderGraphProvider::~InlineRenderGraphProvider(re::InlineRenderGraphProvider *this)
{
  *this = &unk_1F5D09918;
  v2 = this + 40;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(this + 80);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v2);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5D09918;
  v2 = this + 40;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(this + 80);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v2);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::IBLContext::createConstantBuffer(uint64_t a1, uint64_t a2, re::BufferTable *a3, __int128 *a4)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v39, (a2 + 16), 0xD0uLL, 0x10uLL);
  v7 = v40;
  v8 = v39 + v40;
  v38 = 0x262DF9A294ABAC1CLL;
  v39 = v41;
  LODWORD(v40) = 0;
  v41 = v7;
  re::BufferTable::setBuffer(a3, &v38, &v39);
  *(v8 + 8) = 0;
  *v8 = 1065353216;
  *(v8 + 24) = 0;
  *(v8 + 16) = 0x3F80000000000000;
  *(v8 + 40) = 1065353216;
  *(v8 + 32) = 0;
  *(v8 + 48) = 0;
  *(v8 + 64) = 0u;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  *(v8 + 88) = *(a4 + 1);
  *(v8 + 80) = v9;
  *(v8 + 104) = DWORD2(v10);
  *(v8 + 96) = v10;
  *(v8 + 120) = DWORD2(v11);
  *(v8 + 112) = v11;
  *(v8 + 128) = 0;
  *(v8 + 152) = 0;
  *(v8 + 144) = 1065353216;
  *(v8 + 168) = 0;
  *(v8 + 160) = 0x3F80000000000000;
  *(v8 + 184) = 1065353216;
  *(v8 + 176) = 0;
  *(v8 + 192) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 32);
    v32 = (v13 + 224 * v12);
    for (i = (v13 + 192); ; i += 28)
    {
      v15 = (i - 24);
      v16 = *(i - 24);
      v17 = *(i - 23);
      v18 = *(i - 22);
      v19 = *(i - 42);
      *&v20 = *(i - 20);
      DWORD2(v20) = *(i - 38);
      v37 = v20;
      *&v20 = *(i - 18);
      DWORD2(v20) = *(i - 34);
      v36 = v20;
      *&v20 = *(i - 16);
      DWORD2(v20) = *(i - 30);
      v35 = v20;
      v21 = *(i - 28);
      v34 = *(i - 6);
      v22 = *(i - 20);
      v23 = *(i - 9);
      v24 = *(i - 8);
      v25 = *(i - 7);
      v26 = *(i - 6);
      v27 = *(i - 5);
      v28 = v27;
      if (*(i + 17))
      {
        break;
      }

      if (v27)
      {
      }

      if (v26)
      {
      }

      if (v24)
      {
      }

      if (v23)
      {
      }

      if (v18)
      {
      }

      if (v17)
      {
      }

      if (v16)
      {
      }

      if (v15 + 14 == v32)
      {
        return;
      }
    }

    v31 = *(i - 1);
    v33 = *i;
    v30 = *(i - 2);
    v29 = exp2f(v19);
    *(v8 + 8) = DWORD2(v37);
    *v8 = v37;
    *(v8 + 24) = DWORD2(v36);
    *(v8 + 16) = v36;
    *(v8 + 40) = DWORD2(v35);
    *(v8 + 32) = v35;
    *(v8 + 48) = v29;
    *(v8 + 52) = v21;
    *(v8 + 64) = v34;
    *(v8 + 128) = v22 * 0.5;
    *(v8 + 152) = DWORD2(v30);
    *(v8 + 144) = v30;
    *(v8 + 168) = DWORD2(v31);
    *(v8 + 160) = v31;
    *(v8 + 184) = DWORD2(v33);
    *(v8 + 176) = v33;
    *(v8 + 192) = v25;
    if (v28)
    {
    }

    if (v26)
    {
    }

    if (v24)
    {
    }

    if (v23)
    {
    }

    if (v18)
    {
    }

    if (v17)
    {
    }

    if (v16)
    {
    }
  }
}

void re::IBLContext::updateSceneTextures(id *this, re::TextureTable *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v28 = 0xE459D7324435E49;
  re::TextureTable::setTexture(a2, &v28, this + 5);
  v28 = 0;
  v4 = this[2];
  if (v4)
  {
    v5 = this[4];
    v6 = &v5[224 * v4];
    while (1)
    {
      v7 = *v5;
      v29 = v7;
      v8 = *(v5 + 1);
      v30 = v8;
      v9 = *(v5 + 2);
      v31 = v9;
      v10 = *(v5 + 40);
      v32 = *(v5 + 24);
      v33 = v10;
      v11 = *(v5 + 72);
      v12 = *(v5 + 88);
      v13 = *(v5 + 102);
      v34 = *(v5 + 56);
      *&v36[14] = v13;
      *v36 = v12;
      v35 = v11;
      v14 = *(v5 + 15);
      v37 = v14;
      v15 = *(v5 + 16);
      v17 = *(v5 + 17);
      v16 = *(v5 + 18);
      v38[0] = v15;
      v38[1] = v17;
      v18 = v16;
      v39 = v18;
      v19 = *(v5 + 19);
      v40 = v19;
      v21 = *(v5 + 11);
      v20 = *(v5 + 12);
      v22 = *(v5 + 10);
      v44 = *(v5 + 104);
      v42 = v21;
      v43 = v20;
      v41 = v22;
      if (HIBYTE(v44) == 1)
      {
        break;
      }

      if (v19)
      {

        v40 = 0;
      }

      if (v18)
      {
      }

      if (v15)
      {
      }

      if (v14)
      {
      }

      if (v9)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }

      v5 += 224;
      if (v5 == v6)
      {
        return;
      }
    }

    v27 = 0xC0489AC946E8FF4;
    re::TextureTable::setTexture(a2, &v27, &v30);
    v26 = 0x74B9011688CA44FFLL;
    v27 = 0;
    re::TextureTable::setTexture(a2, &v26, &v29);
    v25 = 0x200BEB41406E4973;
    v26 = 0;
    re::TextureTable::setTexture(a2, &v25, &v31);
    v25 = 0;
    if (v36[29] == 1)
    {
      v24 = 0x23C1563FB78C78B1;
      re::TextureTable::setTexture(a2, &v24, v38);
      v23 = 0x5495C6E7C96973E2;
      v24 = 0;
      re::TextureTable::setTexture(a2, &v23, &v37);
      v23 = 0;
    }

    if (v40)
    {

      v40 = 0;
    }

    if (v39)
    {

      v39 = 0;
    }

    if (v38[0])
    {

      v38[0] = 0;
    }

    if (v37)
    {

      v37 = 0;
    }

    if (v31)
    {

      v31 = 0;
    }

    if (v30)
    {

      v30 = 0;
    }

    if (v29)
    {
    }
  }
}

void re::IBLContext::updateRenderSceneContextFlags(re::IBLContext *this, BOOL *a2, BOOL *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = v4 + 224 * v3;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 116);
      v10 = *(v4 + 117);
      v11 = *(v4 + 120);
      v12 = *(v4 + 128);
      v13 = *(v4 + 144);
      v14 = *(v4 + 152);
      if (*(v4 + 209))
      {
        *a2 = (v9 | *a2) & 1;
        *a3 = (v10 | *a3) & 1;
      }

      if (v14)
      {
      }

      if (v13)
      {
      }

      if (v12)
      {
      }

      if (v11)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }

      if (v6)
      {
      }

      v4 += 224;
    }

    while (v4 != v5);
  }
}

void re::VirtualEnvironmentProbeContext::updateSceneTextures(unint64_t result, uint64_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = -2;
  for (i = -48; ; i += 24)
  {
    if (v7 + 2 >= *(result + 16))
    {
      goto LABEL_10;
    }

    if (v7 == -1)
    {
      v12 = *(result + 32);
      *&v39 = 0x456D423E25537F71;
      re::TextureTable::setTexture(a2, &v39, (v12 + 24));
      v3 = *(result + 16);
      if (v3 <= 1)
      {
        goto LABEL_25;
      }

      v13 = *(result + 32);
      *&v39 = 0x456D423E247CF467;
      v11 = (v13 + 32);
    }

    else
    {
      if (v7 != -2)
      {
        goto LABEL_10;
      }

      v9 = *(result + 32);
      *&v39 = 0x456D423E25537F70;
      re::TextureTable::setTexture(a2, &v39, v9);
      if (!*(result + 16))
      {
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v34 = 797;
        v35 = 2048;
        v36 = 0;
        v37 = 2048;
        v38 = 0;
        _os_log_send_and_compose_impl(v19, &v30, &v39, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
        _os_crash_msg();
        __break(1u);
LABEL_25:
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v34 = 797;
        v35 = 2048;
        v36 = 1;
        v37 = 2048;
        v38 = v3;
        _os_log_send_and_compose_impl(v22, &v30, &v39, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
        _os_crash_msg();
        __break(1u);
LABEL_29:
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v34 = 797;
        v35 = 2048;
        v36 = v7;
        v37 = 2048;
        v38 = v3;
        _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v34 = 797;
        v35 = 2048;
        v36 = v7;
        v37 = 2048;
        v38 = result;
        _os_log_send_and_compose_impl(v28, &v30, &v39, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(result + 32);
      *&v39 = 0x456D423E247CF466;
      v11 = (v10 + 8);
    }

    re::TextureTable::setTexture(a2, &v39, v11);
LABEL_10:
    if (a3 && v7 < *(a3 + 16))
    {
      if (!v7)
      {
        v14 = *(a3 + 32);
        *&v39 = 0x44E5F300C8804435;
        re::TextureTable::setTexture(a2, &v39, (v14 + i));
        v3 = *(a3 + 16);
        if (!v3)
        {
          goto LABEL_29;
        }

        v15 = *(a3 + 32) + i;
        *&v39 = 0x44E5F300C7A9B92BLL;
        re::TextureTable::setTexture(a2, &v39, (v15 + 8));
        goto LABEL_17;
      }

      if (v7 == 1)
      {
        break;
      }
    }

LABEL_17:
    if (++v7 == 2)
    {
      return;
    }
  }

  v16 = *(a3 + 32);
  *&v39 = 0x44E5F300C8804436;
  re::TextureTable::setTexture(a2, &v39, (v16 + i));
  result = *(a3 + 16);
  if (result <= 1)
  {
    goto LABEL_33;
  }

  v17 = *(a3 + 32) + i;
  *&v39 = 0x44E5F300C7A9B92CLL;
  re::TextureTable::setTexture(a2, &v39, (v17 + 8));
}

uint64_t re::VirtualEnvironmentProbeContext::createTextureBuffer(unint64_t a1, uint64_t a2, re::BufferTable *a3, uint64_t a4)
{
  v95 = *MEMORY[0x1E69E9840];
  if (([*a2 supportsFamily:5001] & 1) == 0 && *(a1 + 16))
  {
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v78 = *(a2 + 32);
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v78, 2uLL);
    ++v81;
    v77 = [objc_msgSend(MEMORY[0x1E6973FD8] alloc)];
    [v77 setIndex_];
    [v77 setDataType_];
    v8 = &selRef_iosurface;
    [v77 setAccess_];
    [v77 setTextureType_];
    [v77 setArrayLength_];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v78, &v77);
    v76 = [objc_msgSend(MEMORY[0x1E6973FD8] alloc)];
    [v76 setIndex_];
    [v76 setDataType_];
    [v76 setAccess_];
    [v76 setTextureType_];
    [v76 setArrayLength_];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v78, &v76);
    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(v74, &v78);
    re::mtl::Device::makeArgumentEncoder(a2, v74, &v75);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v74);
    v9 = v75;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v71, (a2 + 16), [v75 encodedLength], 0x10uLL);
    *v84 = 0x458FBDFDF334653DLL;
    v10 = v73;
    *&v90 = v73;
    DWORD2(v90) = 0;
    v70 = v72;
    *&v91 = v72;
    v11 = a3;
    re::BufferTable::setBuffer(a3, v84, &v90);
    [v9 setArgumentBuffer:v10 offset:v70];
    v12 = *(a2 + 32);
    *&v86[2] = 0;
    memset(&v84[8], 0, 20);
    *v84 = v12;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v84, 4uLL);
    v13 = 0;
    v14 = 0;
    ++*&v84[24];
    do
    {
      if (v14 < *(a1 + 16))
      {
        [v9 setTexture:*(*(a1 + 32) + v13) atIndex:v14];
        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_81;
        }

        [v9 setTexture:*(*(a1 + 32) + v13 + 8) atIndex:v14 + 4];
        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_85;
        }

        *&v90 = *(*(a1 + 32) + v13);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v84, &v90);
        if (v90)
        {
        }

        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_89;
        }

        *&v90 = *(*(a1 + 32) + v13 + 8);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v84, &v90);
        if (v90)
        {
        }
      }

      ++v14;
      v13 += 24;
    }

    while (v14 != 4);
    v16 = 0;
    a1 = 2;
    do
    {
      v17 = v16;
      if (a4)
      {
        v14 = a1 - 2;
        if (a1 - 2 < *(a4 + 16))
        {
          [v9 setTexture:*(*(a4 + 32) + 24 * v14) atIndex:a1];
          v8 = *(a4 + 16);
          if (v8 <= v14)
          {
            goto LABEL_93;
          }

          [v9 setTexture:*(*(a4 + 32) + 24 * v14 + 8) atIndex:a1 | 4];
          a1 = *(a4 + 16);
          if (a1 <= v14)
          {
            goto LABEL_97;
          }

          *&v90 = *(*(a4 + 32) + 24 * v14);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v84, &v90);
          if (v90)
          {
          }

          a1 = *(a4 + 16);
          if (a1 <= v14)
          {
            goto LABEL_101;
          }

          *&v90 = *(*(a4 + 32) + 24 * v14 + 8);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v84, &v90);
          if (v90)
          {
          }
        }
      }

      v16 = 1;
      a1 = 3;
    }

    while ((v17 & 1) == 0);
    *&v90 = 0x458FBDFDF334653DLL;
    re::BufferTable::setBufferUsedResources(v11, &v90, *&v86[2], *&v84[16]);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v84);
    if (v9)
    {
    }

    if (v76)
    {
    }

    if (v77)
    {
    }

    return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v78);
  }

  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v87, (a2 + 16), 0x40uLL, 0x10uLL);
  v78 = 0x458FBDFDF334653DLL;
  v19 = *&v87[8];
  v20 = *&v87[12];
  *&v90 = *&v87[16];
  DWORD2(v90) = 0;
  *&v91 = *&v87[8];
  re::BufferTable::setBuffer(a3, &v78, &v90);
  if (v20 <= 0x3F)
  {
LABEL_105:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v67);
    __break(1u);
  }

  v22 = a3;
  v23 = *v87 + v19;
  v24 = *(a2 + 32);
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v78 = v24;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v78, 8uLL);
  v25 = 0;
  v26 = 0;
  ++v81;
  v15 = v23 + 32;
  v8 = &unk_1E8723000;
  v14 = v23 + 32;
  do
  {
    if (v26 >= *(a1 + 16))
    {
      *(v14 - 32) = 0;
      *v14 = 0;
      goto LABEL_42;
    }

    *(v14 - 32) = [*(*(a1 + 32) + v25) gpuResourceID];
    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      v71 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = v26;
      v85 = 2048;
      *v86 = v27;
      _os_log_send_and_compose_impl(v32, &v71, &v90, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_61:
      v71 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = v26;
      v85 = 2048;
      *v86 = v27;
      _os_log_send_and_compose_impl(v35, &v71, &v90, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v71 = 0;
      a1 = v84;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = v26;
      v85 = 2048;
      *v86 = v27;
      _os_log_send_and_compose_impl(v38, &v71, &v90, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v71 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = a1;
      v85 = 2048;
      *v86 = v25;
      _os_log_send_and_compose_impl(v41, &v71, &v90, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v71 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = a1;
      v85 = 2048;
      *v86 = v25;
      _os_log_send_and_compose_impl(v44, &v71, &v90, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_77:
      v71 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      *&v84[14] = 797;
      *&v84[18] = 2048;
      *&v84[20] = a1;
      v85 = 2048;
      *v86 = v25;
      _os_log_send_and_compose_impl(v47, &v71, &v90, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_81:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = v15;
      _os_log_send_and_compose_impl(v50, &v83, &v90, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = v15;
      _os_log_send_and_compose_impl(v53, &v83, &v90, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v55)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = v15;
      _os_log_send_and_compose_impl(v56, &v83, &v90, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v58)
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = v8;
      _os_log_send_and_compose_impl(v59, &v83, &v90, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v60 = MEMORY[0x1E69E9C10];
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = a1;
      _os_log_send_and_compose_impl(v62, &v83, &v90, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v63 = MEMORY[0x1E69E9C10];
      v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v87 = 136315906;
      *&v87[4] = "operator[]";
      *&v87[12] = 1024;
      if (v64)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      *&v87[14] = 797;
      *&v87[18] = 2048;
      *&v87[20] = v14;
      v88 = 2048;
      v89 = a1;
      _os_log_send_and_compose_impl(v65, &v83, &v90, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
      goto LABEL_105;
    }

    *v14 = [*(*(a1 + 32) + v25 + 8) gpuResourceID];
    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      goto LABEL_61;
    }

    *&v90 = *(*(a1 + 32) + v25);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v78, &v90);
    if (v90)
    {
    }

    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      goto LABEL_65;
    }

    *&v90 = *(*(a1 + 32) + v25 + 8);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v78, &v90);
    if (v90)
    {
    }

LABEL_42:
    ++v26;
    v25 += 24;
    v14 += 8;
  }

  while (v26 != 4);
  v28 = 0;
  v29 = 2;
  do
  {
    v14 = v28;
    if (a4 && (a1 = v29 - 2, (v29 - 2) < *(a4 + 16)))
    {
      *(v23 + 8 * v29) = [*(*(a4 + 32) + 24 * a1) gpuResourceID];
      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_69;
      }

      *(v15 + 8 * v29) = [*(*(a4 + 32) + 24 * a1 + 8) gpuResourceID];
      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_73;
      }

      *&v90 = *(*(a4 + 32) + 24 * a1);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v78, &v90);
      if (v90)
      {
      }

      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_77;
      }

      *&v90 = *(*(a4 + 32) + 24 * a1 + 8);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v78, &v90);
      if (v90)
      {
      }
    }

    else
    {
      *(v23 + 8 * v29) = 0;
      *(v15 + 8 * v29) = 0;
    }

    v28 = 1;
    v29 = 3;
  }

  while ((v14 & 1) == 0);
  *&v90 = 0x458FBDFDF334653DLL;
  re::BufferTable::setBufferUsedResources(v22, &v90, v82, v80);
  return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v78);
}

uint64_t re::BufferTable::setBufferUsedResources(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result != -1)
  {
    v8 = *(*(a1 + 8) + 16 * result + 8);
    if (*(a1 + 280) > v8)
    {

      return re::BufferTable::setBufferIndirectResources(a1, v8, a3, a4);
    }
  }

  return result;
}

void re::VirtualEnvironmentProbeContext::createConstantBuffer(uint64_t a1, uint64_t a2, re::BufferTable *a3, uint64_t a4, float a5, float a6)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v37, (a2 + 16), 0x80uLL, 0x10uLL);
  v11 = v37;
  v12 = v38;
  v35 = v38;
  v36 = 0x6C67F4CE96CFCB6ALL;
  v37 = v39;
  LODWORD(v38) = 0;
  v39 = v12;
  re::BufferTable::setBuffer(a3, &v36, &v37);
  v13 = v11 + v35;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  *(v13 + 8) = DWORD2(v14);
  *v13 = v14;
  *(v13 + 24) = DWORD2(v15);
  *(v13 + 16) = v15;
  *(v13 + 40) = DWORD2(v16);
  *(v13 + 32) = v16;
  *(v13 + 112) = *(a1 + 16);
  if (a4)
  {
    v17 = *(a4 + 48);
    v18 = *(a4 + 64);
    v19 = *(a4 + 80);
    *(v13 + 56) = DWORD2(v17);
    *(v13 + 48) = v17;
    *(v13 + 72) = DWORD2(v18);
    *(v13 + 64) = v18;
    *(v13 + 88) = DWORD2(v19);
    *(v13 + 80) = v19;
    v20 = *(a4 + 16);
  }

  else
  {
    v20 = 0;
    v21 = *MEMORY[0x1E69E9B10];
    v22 = *(MEMORY[0x1E69E9B10] + 32);
    *(v13 + 64) = *(MEMORY[0x1E69E9B10] + 16);
    *(v13 + 80) = v22;
    *(v13 + 48) = v21;
  }

  v23 = 0;
  v24 = 0;
  *(v13 + 116) = v20;
  v25 = *(a1 + 16);
  do
  {
    v26 = 0.0;
    if (v24 < v25)
    {
      v27 = *(a1 + 32) + v23;
      v28 = *(v27 + 20);
      v26 = (v28 * exp2f(*(v27 + 16))) * a5;
    }

    *(v13 + 96 + 4 * v24++) = v26;
    v23 += 24;
  }

  while (v23 != 96);
  if (a4 && (v29 = *(a4 + 16)) != 0)
  {
    v30 = *(a4 + 32);
    v31 = *(v30 + 20);
    *(v13 + 104) = (v31 * exp2f(*(v30 + 16))) * a6;
    v32 = 0.0;
    if (v29 != 1)
    {
      v33 = *(a4 + 32);
      v34 = *(v33 + 44);
      v32 = (v34 * exp2f(*(v33 + 40))) * a6;
    }
  }

  else
  {
    *(v13 + 104) = 0;
    v32 = 0.0;
  }

  *(v13 + 108) = v32;
}

void re::generatePrefilteredDiffuseIblTexture(id *this@<X0>, const re::RenderManager *a2@<X1>, const re::TextureData *a3@<X2>, re::WrappedError *a4@<X7>, int a5@<W3>, const re::TextureData *a6@<X4>, char a7@<W5>, uint8_t *a8@<X6>, uint64_t a9@<X8>, BOOL a10)
{
  v14 = this;
  v146 = *MEMORY[0x1E69E9840];
  v85 = a8;
  v86 = a4;
  if (this)
  {
    this = this[26];
  }

  v100 = this;
  v15 = 256;
  if (a3 < 0x100)
  {
    v15 = a3;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = re::TextureData::width(a2);
  v18 = re::TextureData::height(a2);
  if (v16 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  v99 = 0;
  v22 = re::internal::chooseWritableTextureFormat(&v100, a2, a6, a7, &v99, v19);
  v23 = *re::graphicsLogObjects(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = v21;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Generating diffuse prefiltered %zux%zux6 cubemap of format %d\n", buf, 0x1Cu);
  }

  v24 = v99;
  if (v99 == 1)
  {
    LODWORD(v25) = re::translateSRGBPixelFormatToLinear(v22);
    v26 = 19;
  }

  else
  {
    v26 = 3;
    LODWORD(v25) = v22;
  }

  if (re::TextureData::isShareable(a2))
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v98 = v28;
  [v28 setTextureType_];
  [v28 setWidth_];
  [v28 setHeight_];
  [v28 setPixelFormat_];
  [v28 setMipmapLevelCount_];
  [v28 setUsage_];
  [v28 setStorageMode_];
  v96 = 0;
  v97 = 0;
  if (v100)
  {
    if (re::TextureData::isShareable(a2))
    {
      SharedTexture = re::mtl::Device::makeSharedTexture(v102, v28, &v100);
    }

    else
    {
      SharedTexture = re::mtl::Device::makeTexture(v102, v28, &v100);
    }

    LODWORD(v26) = v86;
    if (v24)
    {
      v34 = "generatePrefilteredDiffuseMapWithLinearToSRGB";
    }

    else
    {
      v34 = "generatePrefilteredDiffuseMap";
    }

    v125[0] = 0;
    v126[16] = 0;
    *&v130 = 0;
    v129 = 0uLL;
    DWORD2(v130) = 0;
    v132[1] = 0;
    LOBYTE(v133) = 0;
    v131 = 0uLL;
    LOBYTE(v132[0]) = 0;
    if (!v86)
    {
LABEL_72:
      v14 = *re::getOrCreateComputePipelineState(v14, buf);
      v91[0] = [v100 newCommandQueue];

      if ((atomic_load_explicit(&qword_1EE1BACD0, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_132;
      }

      while (1)
      {
        v59 = _MergedGlobals_472;
        [v91[0] setLabel:v59];

        if (v26)
        {
          if ((atomic_load_explicit(&qword_1EE1BACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BACE0))
          {
            v82 = re::ns::String::String(&qword_1EE1BACD8, "generatePrefilteredSSSDiffuseMapQueue");
            __cxa_guard_release(v82 + 1);
          }

          v60 = qword_1EE1BACD8;
          [v91[0] setLabel:v60];
        }

        re::mtl::CommandQueue::makeCommandBuffer(v109, v91);
        re::mtl::CommandBuffer::makeComputeCommandEncoder(v139, v109);
        if ((atomic_load_explicit(&qword_1EE1BACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BACF0))
        {
          v81 = re::ns::String::String(&qword_1EE1BACE8, "Generate Diffuse IBL Texture");
          __cxa_guard_release(v81 + 1);
        }

        v61 = qword_1EE1BACE8;
        [*v139 setLabel:v61];

        if (v26)
        {
          if ((atomic_load_explicit(&qword_1EE1BAD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD00))
          {
            v83 = re::ns::String::String(&qword_1EE1BACF8, "Generate SSS Diffuse IBL Texture");
            __cxa_guard_release(v83 + 1);
          }

          v62 = qword_1EE1BACF8;
          [*v139 setLabel:v62];
        }

        v63 = [v14 threadExecutionWidth];
        v26 = [v14 maxTotalThreadsPerThreadgroup] / v63;
        v25 = [v102[0] newTextureViewWithPixelFormat:v25 textureType:3 levels:0 slices:1, 0, 6];
        v64 = ([v25 width] + v63 - 1) / v63;
        v65 = [v25 height];
        v66 = (v26 + v65 - 1) / v26;
        v67 = *re::graphicsLogObjects(v65);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *v112 = 67110400;
          *&v112[4] = v64;
          *&v112[8] = 1024;
          *&v112[10] = v66;
          *&v112[14] = 1024;
          LODWORD(v113) = 6;
          WORD2(v113) = 1024;
          *(&v113 + 6) = v63;
          WORD5(v113) = 1024;
          HIDWORD(v113) = v26;
          LOWORD(v114[0]) = 1024;
          *(v114 + 2) = 1;
          _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", v112, 0x26u);
        }

        [*v139 setComputePipelineState:v14];
        if (!*(a2 + 2))
        {
          break;
        }

LABEL_131:
        std::__throw_bad_variant_access[abi:nn200100]();
LABEL_132:
        if (__cxa_guard_acquire(&qword_1EE1BACD0))
        {
          v80 = re::ns::String::String(&_MergedGlobals_472, "generatePrefilteredDiffuseMapQueue");
          __cxa_guard_release(v80 + 1);
        }
      }

      [*v139 setTexture:*a2 atIndex:0];
      [*v139 setTexture:v25 atIndex:1];
      LODWORD(v101) = a5;
      v68 = [v100 newBufferWithBytes:&v101 length:4 options:0];
      [*v139 setBuffer:v68 offset:0 atIndex:0];
      *v112 = v64;
      *&v112[8] = v66;
      *&v113 = 6;
      v95[0] = v63;
      v95[1] = v26;
      v95[2] = 1;
      [*v139 dispatchThreadgroups:v112 threadsPerThreadgroup:v95];
      objc_msgSend_endEncoding(*v139);
      if ([v102[0] storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(v112, v109);
        objc_msgSend_endEncoding(*v112);
      }

      [*v109 commit];
      [*v109 waitUntilCompleted];
      re::mtl::CommandBuffer::error(v112, v109);
      v69 = [*v112 code];

      v58 = a9;
      if (v69)
      {
        if (v85)
        {
          re::mtl::CommandBuffer::error(v112, v109);
          if (v112 != v85)
          {
            v71 = *v112;
            *v112 = 0;
            v72 = *v85;
            *v85 = v71;
          }
        }

        v73 = *re::graphicsLogObjects(v70);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *v112 = 0;
          _os_log_error_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_ERROR, "Internal Metal error while generating specular IBL cubemap. Execution likely took too long - Try again, and if the issue persists, lower samplesPerTexel.", v112, 2u);
        }
      }

      *v112 = v102[0];
      *&v112[8] = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v96, v112);
      if (*&v112[8] != -1)
      {
        (off_1F5D09950[*&v112[8]])(v95, v112);
      }

      if (v68)
      {
      }

      if (v25)
      {
      }

      if (v14)
      {
      }

      if (v132[1])
      {

        v132[1] = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v129);
      if (v126[16] == 1 && v127)
      {
        if (BYTE8(v127))
        {
          (*(*v127 + 40))();
        }

        v127 = 0u;
        v128 = 0u;
      }

      if (v125[0] == 1 && *&v125[8])
      {
        if (v125[16])
        {
          (*(**&v125[8] + 40))();
        }

        *v126 = 0u;
        *&v125[8] = 0u;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (v102[0])
      {
      }

      goto LABEL_117;
    }

    LOBYTE(v114[0]) = 0;
    BYTE8(v114[2]) = 0;
    *&v118 = 0;
    v117 = 0uLL;
    DWORD2(v118) = 0;
    v120[1] = 0;
    LOBYTE(v121) = 0;
    v119 = 0uLL;
    LOBYTE(v120[0]) = 0;
    re::DynamicString::operator=(buf, v112);
    re::Optional<re::DynamicString>::operator=(v125, v114);
    re::Optional<re::DynamicString>::operator=(&v126[16], &v114[2] + 8);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v129, &v117);
    *(&v131 + 1) = *(&v119 + 1);
    LOBYTE(v132[0]) = v120[0];
    NS::SharedPtr<MTL::Texture>::operator=(&v132[1], &v120[1]);
    if (v133)
    {
      if ((v121 & 1) == 0)
      {
        LOBYTE(v133) = 0;
LABEL_57:
        if (v120[1])
        {

          v120[1] = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v117);
        if (BYTE8(v114[2]) == 1 && v115)
        {
          if (BYTE8(v115))
          {
            (*(*v115 + 40))();
          }

          v115 = 0u;
          v116 = 0u;
        }

        if (LOBYTE(v114[0]) == 1 && *(&v114[0] + 1))
        {
          if (v114[1])
          {
            (*(**(&v114[0] + 1) + 40))();
          }

          memset(v114 + 8, 0, 32);
        }

        if (*v112 && (v112[8] & 1) != 0)
        {
          (*(**v112 + 40))();
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v121 & 1) == 0)
      {
        goto LABEL_57;
      }

      LOBYTE(v133) = 1;
    }

    BYTE1(v133) = BYTE1(v121);
    goto LABEL_57;
  }

  re::TextureData::pixelFormat(a2);
  v31 = v30;
  memset(v125, 0, sizeof(v125));
  memset(buf, 0, sizeof(buf));
  MTLPixelFormatGetInfoForDevice();
  if ((*&buf[8] & 0x400) == 0 || (memset(v125, 0, sizeof(v125)), memset(buf, 0, sizeof(buf)), InfoForDevice = MTLPixelFormatGetInfoForDevice(), (*&buf[8] & 0x800) != 0))
  {
    v138 = a5;
    re::StackScratchAllocator::StackScratchAllocator(v95);
    v94 = 0;
    v91[1] = 0;
    v92 = 0;
    v93 = 0;
    v91[0] = v95;
    re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v91, 0);
    ++v93;
    re::TextureData::mipmapLevelCount(a2);
    re::DynamicArray<MetalEmulation::TextureMip>::resize(v91, v36);
    if (*(a2 + 2) != 1)
    {
      goto LABEL_131;
    }

    v37 = *a2;
    re::TextureData::mipmapLevelCount(a2);
    v38 = v94;
    v39 = v92;
    if (v40)
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        re::wrapAsTextureMip(v37, v42, v112);
        if (v39 <= v41)
        {
          break;
        }

        v43 = v38 + 224 * v41;
        v44 = v113;
        *v43 = *v112;
        *(v43 + 16) = v44;
        v45 = v114[0];
        v46 = v114[1];
        v47 = v115;
        *(v43 + 64) = v114[2];
        *(v43 + 80) = v47;
        *(v43 + 32) = v45;
        *(v43 + 48) = v46;
        v48 = v116;
        v49 = v117;
        v50 = v119;
        *(v43 + 128) = v118;
        *(v43 + 144) = v50;
        *(v43 + 96) = v48;
        *(v43 + 112) = v49;
        v51 = *v120;
        v52 = v121;
        v53 = v122;
        *(v43 + 208) = v123;
        *(v43 + 176) = v52;
        *(v43 + 192) = v53;
        *(v43 + 160) = v51;
        v41 = ++v42;
        re::TextureData::mipmapLevelCount(a2);
        if (v54 <= v42)
        {
          goto LABEL_43;
        }
      }

      *v139 = 0;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      *v102 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v41;
      v110 = 2048;
      *v111 = v39;
      _os_log_send_and_compose_impl(v76, v139, v102, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v109, 38, v84, v85);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_43:
      MetalEmulation::wrapTexture(v38, v39, buf);
      *&v111[2] = 0;
      memset(v109, 0, sizeof(v109));
      re::CPUTexture::Data::allocateMips(v109, &v98);
      re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v98, v109, &v90);
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      *v102 = 0u;
      v103 = 0u;
      v89 = vmovn_s64(v107);
      if (*(v90 + 48))
      {
        MetalEmulation::wrapRenderTargetMip(v98, 0, &v89, *(*(v90 + 64) + 32), *(*(v90 + 64) + 16), v112);
        v134 = v118;
        v135 = v119;
        v136 = *v120;
        v137 = v121;
        v130 = v114[2];
        v131 = v115;
        *v132 = v116;
        v133 = v117;
        *&v126[8] = *v112;
        v127 = v113;
        v128 = v114[0];
        v129 = v114[1];
        v55 = vmovn_s64(*v102);
        HIDWORD(v56) = 393222;
        LOWORD(v56) = v55.i16[0];
        WORD1(v56) = v55.i16[2];
        MetalEmulation::internal::_executeShader(MetalEmulation::generatePrefilteredDiffuseMap, buf, v56);
        *v112 = v90;
        if (v90)
        {
          v57 = (v90 + 8);
        }

        *&v112[8] = 1;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v96, v112);
        v58 = a9;
        if (*&v112[8] != -1)
        {
          (off_1F5D09950[*&v112[8]])(v139, v112);
        }

        if (v90)
        {
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v109);
        if (v38 && v91[0])
        {
          (*(*v91[0] + 40))(v91[0], v38);
        }

        re::StackScratchAllocator::~StackScratchAllocator(v95);
LABEL_117:
        *v58 = 0;
        *(v58 + 8) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v58, &v96);
        goto LABEL_118;
      }
    }

    v101 = 0;
    v113 = 0u;
    memset(v114, 0, sizeof(v114));
    *v112 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v139 = 136315906;
    *&v139[4] = "operator[]";
    v140 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    v141 = 797;
    v142 = 2048;
    v143 = 0;
    v144 = 2048;
    v145 = 0;
    _os_log_send_and_compose_impl(v79, &v101, v112, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v139, 38, v84, v85);
    _os_crash_msg();
    __break(1u);
  }

  v33 = *re::graphicsLogObjects(InfoForDevice);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v31;
    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Unsupported pixel format for CPU Metal emulation: %d.", buf, 8u);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
LABEL_118:
  if (v97 != -1)
  {
    (off_1F5D09950[v97])(buf, &v96);
  }

  if (v98)
  {
  }
}

uint64_t re::internal::chooseWritableTextureFormat(id *this, const re::mtl::Device *a2, const re::TextureData *a3, char a4, _BYTE *a5, BOOL *a6)
{
  v7 = a3;
  *a5 = 0;
  re::TextureData::pixelFormat(a2);
  v10 = v9;
  if ((a4 & 1) == 0 && (re::isHDR(v9) & 1) == 0)
  {
    MTLPixelFormatGetInfoForDevice();
    v11 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = re::getComponentCount(v10) == 1;
    goto LABEL_7;
  }

  v11 = 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = 1;
LABEL_7:
  if (re::TextureData::swizzle(a2) != 84148994 && re::TextureData::swizzle(a2) != 17040130)
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = 115;
    v14 = 25;
  }

  else
  {
    v13 = 70;
    v14 = 10;
  }

  if (v12)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

void *re::DynamicArray<MetalEmulation::TextureMip>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 224 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 224 * v4;
        v7 = (((v5 >> 5) * 0x2492492492492493uLL) >> 64) + 1;
        do
        {
          *(v6 + 208) = 0;
          *(v6 + 176) = 0uLL;
          *(v6 + 192) = 0uLL;
          *(v6 + 144) = 0uLL;
          *(v6 + 160) = 0uLL;
          *(v6 + 112) = 0uLL;
          *(v6 + 128) = 0uLL;
          *(v6 + 80) = 0uLL;
          *(v6 + 96) = 0uLL;
          *(v6 + 48) = 0uLL;
          *(v6 + 64) = 0uLL;
          *(v6 + 16) = 0uLL;
          *(v6 + 32) = 0uLL;
          *v6 = 0uLL;
          v6 += 224;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::generatePrefilteredSpecularIblTexture(id *this@<X0>, const re::RenderManager *a2@<X1>, const re::TextureData *a3@<X2>, uint64_t a4@<X3>, const re::TextureData *a5@<X4>, char a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = this;
  v183 = *MEMORY[0x1E69E9840];
  v113 = a7;
  if (this)
  {
    this = this[26];
  }

  v137 = this;
  v14 = 1024;
  if (a3 < 0x400)
  {
    v14 = a3;
  }

  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = re::TextureData::width(a2);
  v17 = re::TextureData::height(a2);
  if (v15 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  if (v15 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v118 = v18;
  v119 = (floor(log2(v18)) + 1.0);
  v136 = 0;
  v21 = re::internal::chooseWritableTextureFormat(&v137, a2, a5, a6, &v136, v20);
  v22 = v21;
  v23 = v136;
  if (v136 == 1)
  {
    v21 = re::translateSRGBPixelFormatToLinear(v21);
    v114 = v21;
    v24 = 19;
  }

  else
  {
    v24 = 3;
    v114 = v21;
  }

  v25 = *re::graphicsLogObjects(v21);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v118;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    *&buf[28] = 2048;
    *&buf[30] = v119;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Generating prefiltered %zux%zux6 cubemap of format %d with %zu mip-levels\n", buf, 0x26u);
  }

  v26 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v135 = v26;
  [v26 setTextureType_];
  [v26 setWidth_];
  [v26 setHeight_];
  [v26 setPixelFormat_];
  [v26 setMipmapLevelCount_];
  [v26 setUsage_];
  if (re::TextureData::isShareable(a2))
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  [v26 setStorageMode_];
  v133 = 0;
  v134 = 0;
  v129 = 0;
  v130 = 0;
  v131 = v119;
  v28 = re::TextureData::width(a2);
  v29 = 1.0;
  if ((v28 / v118) >= 1.0)
  {
    v29 = re::TextureData::width(a2) / v118;
  }

  v30 = vcvts_n_u32_f32(v29 * v29, 4uLL);
  if (v30 >= a4)
  {
    LODWORD(v30) = a4;
  }

  v116 = v30;
  v117 = re::TextureData::width(a2);
  if (!v137)
  {
    re::TextureData::pixelFormat(a2);
    v33 = v32;
    memset(buf, 0, sizeof(buf));
    MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x400) != 0)
    {
      memset(buf, 0, sizeof(buf));
      InfoForDevice = MTLPixelFormatGetInfoForDevice();
      if ((*&buf[8] & 0x800) == 0)
      {
        v35 = *re::graphicsLogObjects(InfoForDevice);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v33;
          _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Unsupported pixel format for CPU Metal emulation: %d.", buf, 8u);
        }

        *a8 = 0;
        *(a8 + 8) = 0;
        goto LABEL_148;
      }
    }

    v174 = v129;
    v175 = v130;
    v177 = v119;
    re::StackScratchAllocator::StackScratchAllocator(&v126);
    v125 = 0;
    v122[1] = 0;
    v123 = 0;
    v124 = 0;
    v122[0] = &v126;
    re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v122, 0);
    ++v124;
    re::TextureData::mipmapLevelCount(a2);
    re::DynamicArray<MetalEmulation::TextureMip>::resize(v122, v54);
    if (*(a2 + 2) == 1)
    {
      v55 = *a2;
      re::TextureData::mipmapLevelCount(a2);
      v56 = v125;
      v57 = v123;
      if (v58)
      {
        v59 = 0;
        v60 = 0;
        while (1)
        {
          re::wrapAsTextureMip(v55, v60, &v149);
          if (v57 <= v59)
          {
            break;
          }

          v61 = v56 + 224 * v59;
          v62 = v150;
          *v61 = v149;
          *(v61 + 16) = v62;
          v63 = v151[0];
          v64 = v151[1];
          v65 = v152;
          *(v61 + 64) = v151[2];
          *(v61 + 80) = v65;
          *(v61 + 32) = v63;
          *(v61 + 48) = v64;
          v66 = v153;
          v67 = v154;
          v68 = v156;
          *(v61 + 128) = v155;
          *(v61 + 144) = v68;
          *(v61 + 96) = v66;
          *(v61 + 112) = v67;
          v69 = v157;
          v70 = v158;
          v71 = v159;
          *(v61 + 208) = v160;
          *(v61 + 176) = v70;
          *(v61 + 192) = v71;
          *(v61 + 160) = v69;
          v60 = (v60 + 1);
          v59 = v60;
          re::TextureData::mipmapLevelCount(a2);
          if (v72 <= v60)
          {
            goto LABEL_62;
          }
        }

        v179 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v74 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v146 = 136315906;
        *&v146[4] = "operator[]";
        *&v146[12] = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        *&v146[14] = 789;
        *&v146[18] = 2048;
        *&v146[20] = v59;
        v147 = 2048;
        *v148 = v57;
        _os_log_send_and_compose_impl(v102, &v179, &v139, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v146, 38, v112, v113);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
LABEL_62:
        MetalEmulation::wrapTexture(v56, v57, buf);
        *&v148[2] = 0;
        memset(v146, 0, sizeof(v146));
        re::CPUTexture::Data::allocateMips(v146, &v135);
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v135, v146, &v121);
        if (!v119)
        {
LABEL_73:
          *&v149 = v121;
          if (v121)
          {
            v78 = (v121 + 8);
          }

          DWORD2(v149) = 1;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v133, &v149);
          if (DWORD2(v149) != -1)
          {
            (off_1F5D09950[DWORD2(v149)])(&v139, &v149);
          }

          if (v121)
          {
          }

          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v146);
          if (v56 && v122[0])
          {
            (*(*v122[0] + 40))(v122[0], v56);
          }

          re::StackScratchAllocator::~StackScratchAllocator(&v126);
          goto LABEL_147;
        }

        v73 = 0;
        v74 = 0;
        v60 = &v179;
        while (1)
        {
          v75 = v116;
          if (v74)
          {
            v75 = a4;
          }

          v178 = v75;
          v176 = v74;
          v145 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v120 = vmovn_s64(v144);
          a2 = *(v121 + 48);
          if (a2 <= v74)
          {
            break;
          }

          MetalEmulation::wrapRenderTargetMip(v135, v74, &v120, *(*(v121 + 64) + v73 + 32), *(*(v121 + 64) + v73 + 16), &v149);
          v170 = v155;
          v171 = v156;
          v172 = v157;
          v173 = v158;
          v166 = v151[2];
          v167 = v152;
          v168 = v153;
          v169 = v154;
          *&v162[8] = v149;
          v163 = v150;
          v164 = v151[0];
          v165 = v151[1];
          if (v74 || v118 != v117)
          {
            v76 = vmovn_s64(v139);
            HIDWORD(v77) = 393222;
            LOWORD(v77) = v76.i16[0];
            WORD1(v77) = v76.i16[2];
            MetalEmulation::internal::_executeShader(MetalEmulation::generatePrefilteredSpecularMap, buf, v77);
          }

          else
          {
            if (!v57)
            {
              goto LABEL_167;
            }

            MetalEmulation::copy(v56, &v162[8], v151[0]);
          }

          ++v74;
          v73 += 40;
          if (v119 == v74)
          {
            goto LABEL_73;
          }
        }
      }

      v138 = 0;
      v150 = 0u;
      memset(v151, 0, sizeof(v151));
      v149 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v179) = 136315906;
      *(v60 + 4) = "operator[]";
      v180 = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      *(v60 + 14) = 797;
      v181 = 2048;
      *(v60 + 20) = v74;
      v182 = 2048;
      *(v60 + 30) = a2;
      _os_log_send_and_compose_impl(v105, &v138, &v149, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v179, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
LABEL_167:
      v138 = 0;
      v150 = 0u;
      memset(v151, 0, sizeof(v151));
      v149 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v179) = 136315906;
      *(v60 + 4) = "operator[]";
      v180 = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      *(v60 + 14) = 789;
      v181 = 2048;
      *(v60 + 20) = 0;
      v182 = 2048;
      *(v60 + 30) = 0;
      _os_log_send_and_compose_impl(v108, &v138, &v149, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v179, 38, v112, v113);
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_171;
  }

  v111 = [v137 supportsFamily:1004];
  if (re::TextureData::isShareable(a2))
  {
    SharedTexture = re::mtl::Device::makeSharedTexture(v139.i64, v26, &v137);
  }

  else
  {
    SharedTexture = re::mtl::Device::makeTexture(v139.i64, v26, &v137);
  }

  if (v23)
  {
    v36 = "generatePrefilteredSpecularMapWithLinearToSRGB";
  }

  else
  {
    v36 = "generatePrefilteredSpecularMap";
  }

  buf[32] = 0;
  v162[16] = 0;
  v166.n128_u64[0] = 0;
  v165 = 0uLL;
  v166.n128_u32[2] = 0;
  *(&v168 + 1) = 0;
  LOBYTE(v169) = 0;
  v167 = 0uLL;
  LOBYTE(v168) = 0;
  v122[0] = *re::getOrCreateComputePipelineState(v13, buf);
  *v146 = [v137 newCommandQueue];

  if ((atomic_load_explicit(&qword_1EE1BAD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD10))
  {
    re::ns::String::String(&qword_1EE1BAD08, "generatePrefilteredSpecularMapQueue");
    __cxa_guard_release(&qword_1EE1BAD10);
  }

  v37 = qword_1EE1BAD08;
  [*v146 setLabel:v37];

  re::mtl::CommandQueue::makeCommandBuffer(&v179, v146);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v138, &v179);
  if ((atomic_load_explicit(&qword_1EE1BAD20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD20))
  {
    v109 = re::ns::String::String(&qword_1EE1BAD18, "Generate Specular IBL Texture");
    __cxa_guard_release(v109 + 1);
  }

  v38 = qword_1EE1BAD18;
  [v138 setLabel:v38];

  v39 = [v122[0] threadExecutionWidth];
  v40 = [v122[0] maxTotalThreadsPerThreadgroup];
  if (v119)
  {
    v41 = 0;
    v42 = v40 / v39;
    do
    {
      if (v41 || v118 != v117)
      {
        v43 = a4;
        v44 = v116;
        if (v41)
        {
          v44 = a4;
        }

        v132 = v44;
        v45 = [v139.i64[0] newTextureViewWithPixelFormat:v114 textureType:3 levels:v41 slices:1, 0, 6];
        v46 = ([v45 width] + v39 - 1) / v39;
        v47 = [v45 height];
        v48 = (v42 - 1 + v47) / v42;
        v49 = *re::graphicsLogObjects(v47);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v149) = 67110400;
          DWORD1(v149) = v46;
          WORD4(v149) = 1024;
          *(&v149 + 10) = v48;
          HIWORD(v149) = 1024;
          LODWORD(v150) = 6;
          WORD2(v150) = 1024;
          *(&v150 + 6) = v39;
          WORD5(v150) = 1024;
          HIDWORD(v150) = v42;
          v151[0].n128_u16[0] = 1024;
          *(v151[0].n128_u32 + 2) = 1;
          _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &v149, 0x26u);
        }

        [v138 setComputePipelineState:v122[0]];
        if (*(a2 + 2))
        {
          goto LABEL_171;
        }

        [v138 setTexture:*a2 atIndex:0];
        [v138 setTexture:v45 atIndex:1];
        HIDWORD(v130) = v41;
        v50 = [v137 newBufferWithBytes:&v129 length:24 options:0];
        [v138 setBuffer:v50 offset:0 atIndex:0];
        *&v149 = v46;
        *(&v149 + 1) = v48;
        *&v150 = 6;
        v126 = v39;
        v127 = v42;
        v128 = 1;
        [v138 dispatchThreadgroups:&v149 threadsPerThreadgroup:&v126];
        if (v50)
        {
        }

        a4 = v43;
        if (v45)
        {
        }
      }

      ++v41;
    }

    while (v119 != v41);
  }

  v51 = objc_msgSend_endEncoding(v138);
  if (v118 != v117)
  {
    goto LABEL_115;
  }

  if (v111)
  {
    v52 = "copyCubeMap";
    v53 = "copyCubeMapWithLinearToSRGB";
  }

  else
  {
    v52 = "copyCubeMapWithSampler";
    v53 = "copyCubeMapWithLinearToSRGBWithSampler";
  }

  if (v136)
  {
    v79 = v53;
  }

  else
  {
    v79 = v52;
  }

  v151[0].n128_u8[0] = 0;
  v151[2].n128_u8[8] = 0;
  *&v155 = 0;
  v154 = 0uLL;
  DWORD2(v155) = 0;
  *(&v157 + 1) = 0;
  LOBYTE(v158) = 0;
  v156 = 0uLL;
  LOBYTE(v157) = 0;
  re::DynamicString::operator=(buf, &v149);
  re::Optional<re::DynamicString>::operator=(&buf[32], v151);
  re::Optional<re::DynamicString>::operator=(&v162[16], &v151[2].n128_i64[1]);
  re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v165, &v154);
  *(&v167 + 1) = *(&v156 + 1);
  LOBYTE(v168) = v157;
  NS::SharedPtr<MTL::Texture>::operator=(&v168 + 1, &v157 + 1);
  if (v169)
  {
    v80 = v13;
    if ((v158 & 1) == 0)
    {
      LOBYTE(v169) = 0;
      goto LABEL_93;
    }
  }

  else
  {
    v80 = v13;
    if ((v158 & 1) == 0)
    {
      goto LABEL_93;
    }

    LOBYTE(v169) = 1;
  }

  BYTE1(v169) = BYTE1(v158);
LABEL_93:
  if (*(&v157 + 1))
  {

    *(&v157 + 1) = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v154);
  if (v151[2].n128_u8[8] == 1 && v152)
  {
    if (BYTE8(v152))
    {
      (*(*v152 + 40))();
    }

    v152 = 0u;
    v153 = 0u;
  }

  if (v151[0].n128_u8[0] == 1 && v151[0].n128_u64[1])
  {
    if (v151[1].n128_u8[0])
    {
      (*(*v151[0].n128_u64[1] + 40))();
    }

    memset(&v151[0].n128_i8[8], 0, 32);
  }

  if (v149 && (BYTE8(v149) & 1) != 0)
  {
    (*(*v149 + 40))();
  }

  ComputePipelineState = re::getOrCreateComputePipelineState(v80, buf);
  v82 = NS::SharedPtr<MTL::Buffer>::operator=(v122, ComputePipelineState);
  if (v122[0])
  {
    re::mtl::CommandBuffer::makeComputeCommandEncoder(&v149, &v179);
    v83 = v149;
    *&v149 = 0;
    v84 = v138;
    v138 = v83;

    if ((atomic_load_explicit(&qword_1EE1BAD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD30))
    {
      v110 = re::ns::String::String(&qword_1EE1BAD28, "Copy Specular Mip0 IBL Texture");
      __cxa_guard_release(v110 + 1);
    }

    v85 = qword_1EE1BAD28;
    [v138 setLabel:v85];

    v86 = [v122[0] threadExecutionWidth];
    v87 = [v122[0] maxTotalThreadsPerThreadgroup] / v86;
    v88 = [v139.i64[0] newTextureViewWithPixelFormat:v114 textureType:3 levels:0 slices:1, 0, 6];
    v89 = ([v88 width] + v86 - 1) / v86;
    v90 = [v88 height];
    v91 = (v87 + v90 - 1) / v87;
    v92 = *re::graphicsLogObjects(v90);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v149) = 67110400;
      DWORD1(v149) = v89;
      WORD4(v149) = 1024;
      *(&v149 + 10) = v91;
      HIWORD(v149) = 1024;
      LODWORD(v150) = 6;
      WORD2(v150) = 1024;
      *(&v150 + 6) = v86;
      WORD5(v150) = 1024;
      HIDWORD(v150) = v87;
      v151[0].n128_u16[0] = 1024;
      *(v151[0].n128_u32 + 2) = 1;
      _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &v149, 0x26u);
    }

    [v138 setComputePipelineState:v122[0]];
    if (!*(a2 + 2))
    {
      [v138 setTexture:*a2 atIndex:0];
      [v138 setTexture:v88 atIndex:1];
      *&v149 = v89;
      *(&v149 + 1) = v91;
      *&v150 = 6;
      v126 = v86;
      v127 = v87;
      v128 = 1;
      [v138 dispatchThreadgroups:&v149 threadsPerThreadgroup:&v126];
      objc_msgSend_endEncoding(v138);
      if (v88)
      {
      }

LABEL_115:
      if ([v139.i64[0] storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(&v149, &v179);
        objc_msgSend_endEncoding(v149);
      }

      [v179 commit];
      [v179 waitUntilCompleted];
      re::mtl::CommandBuffer::error(&v149, &v179);
      v93 = [v149 code];

      if (v93)
      {
        if (v113)
        {
          re::mtl::CommandBuffer::error(&v149, &v179);
          if (&v149 != v113)
          {
            v95 = v149;
            *&v149 = 0;
            v96 = *v113;
            *v113 = v95;
          }
        }

        v97 = *re::graphicsLogObjects(v94);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v149) = 0;
          _os_log_error_impl(&dword_1E1C61000, v97, OS_LOG_TYPE_ERROR, "Internal Metal error while generating specular IBL cubemap. Execution likely took too long - Try again, and if the issue persists, lower samplesPerTexel.", &v149, 2u);
        }
      }

      *&v149 = v139.i64[0];
      DWORD2(v149) = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v133, &v149);
      if (DWORD2(v149) != -1)
      {
        (off_1F5D09950[DWORD2(v149)])(&v126, &v149);
      }

      v98 = 1;
      goto LABEL_127;
    }

LABEL_171:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v99 = *re::graphicsLogObjects(v82);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
  {
    if (buf[8])
    {
      v100 = *&buf[16];
    }

    else
    {
      v100 = &buf[9];
    }

    LODWORD(v149) = 136315138;
    *(&v149 + 4) = v100;
    _os_log_error_impl(&dword_1E1C61000, v99, OS_LOG_TYPE_ERROR, "Failed to get or create compute pipeline %s", &v149, 0xCu);
  }

  v98 = 0;
  *a8 = 0;
  *(a8 + 8) = 0;
LABEL_127:

  if (v122[0])
  {
  }

  if (*(&v168 + 1))
  {

    *(&v168 + 1) = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v165);
  if (v162[16] == 1 && v163)
  {
    if (BYTE8(v163))
    {
      (*(*v163 + 40))();
    }

    v163 = 0u;
    v164 = 0u;
  }

  if (buf[32] == 1 && *&buf[40])
  {
    if (buf[48])
    {
      (*(**&buf[40] + 40))();
    }

    *v162 = 0u;
    *&buf[40] = 0u;
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))();
  }

  if (v139.i64[0])
  {
  }

  if (v98)
  {
LABEL_147:
    *a8 = 0;
    *(a8 + 8) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a8, &v133);
  }

LABEL_148:
  if (v134 != -1)
  {
    (off_1F5D09950[v134])(buf, &v133);
  }

  if (v135)
  {
  }
}

void *re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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
            memcpy(v7, v5[4], 224 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
  result = re::CPUTexture::CPUTexture(v7, a1, a2);
  *a3 = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

re::MeshShadowGenerationBacklog *re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog(re::MeshShadowGenerationBacklog *this)
{
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = re::Queue<re::ShadowPair>::setCapacity(this, 0);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  *(this + 84) = 0x7FFFFFFFLL;
  return this;
}

void re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog(re::MeshShadowGenerationBacklog *this)
{
  v2 = re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(this + 6);
  if (*this)
  {
    if (*(this + 5))
    {
      (*(**this + 40))(*this, v2);
    }

    *(this + 5) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 8) = 0;
  }
}

unint64_t re::MeshShadowGenerationBacklog::pushBack(uint64_t a1, __n128 *a2)
{
  result = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a1 + 48, a2);
  if (result)
  {
    return result;
  }

  re::Queue<re::ShadowPair>::enqueue(a1, a2);
  result = re::Hash<re::ShadowPair>::operator()(&v12, a2);
  v5 = *(a1 + 72);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_11;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 56) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_11:
    result = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1 + 48, v6, result, a2, a2);
    ++*(a1 + 88);
    return result;
  }

  v8 = *(a1 + 64);
  while (1)
  {
    v9 = v8 + 40 * v7;
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    if (v11 == a2->n128_u64[0] && *(v10 + 8) == a2->n128_u64[1] && *(v10 + 16) == a2[1].n128_u64[0])
    {
      return result;
    }

    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }
}

__n128 re::Queue<re::ShadowPair>::enqueue(_anonymous_namespace_ *this, __n128 *a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::ShadowPair>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v6 = (*(this + 5) + 24 * ((*(this + 3) + v4) % v5));
  result = *a2;
  v6[1].n128_u64[0] = a2[1].n128_u64[0];
  *v6 = result;
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

uint64_t *re::MeshShadowGenerationBacklog::popFront@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v4 = this[2];
  if (v4)
  {
    v5 = this;
    while (1)
    {
      v6 = 0uLL;
      v7 = 0;
      re::Queue<re::ShadowPair>::dequeue(v5, a3, &v6);
      this = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains((v5 + 6), &v6);
      if (this)
      {
        break;
      }

      v4 = v5[2];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 1) = v6;
    a1[3] = v7;
    this = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove((v5 + 6), &v6);
    LOBYTE(v4) = 1;
  }

LABEL_7:
  *a1 = v4;
  return this;
}

uint64_t re::Queue<re::ShadowPair>::dequeue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *(result + 24);
    v7 = *(result + 40) + 24 * v6;
    *a3 = *v7;
    *(a3 + 16) = *(v7 + 16);
    if ((v6 + 1) < *(result + 8))
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = 0;
    }

    *(result + 16) = v5 - 1;
    *(result + 24) = v8;
    ++*(result + 32);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v3, v4);
    result = _os_crash("assertion failure: (m_size > 0) Queue<T> is empty");
    __break(1u);
  }

  return result;
}

void *re::Queue<re::ShadowPair>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::ShadowPair>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
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
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 24 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[3 * v10];
          v13 = *v11;
          v12[2] = *(v11 + 16);
          *v12 = v13;
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

_anonymous_namespace_ *re::Queue<re::ShadowPair>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::Queue<re::ShadowPair>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::ShadowPair>::setCapacity(v4, v3);
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

uint64_t re::getOrCreateArgumentBuffer(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *&v66 = *(v3 + 128);
  *(&v66 + 1) = v3;
  v4 = *(a1 + 8);
  *v67 = *(v2 + 1456);
  *&v67[8] = *(a1 + 40);
  v5 = *(v4 + 112);
  v6 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find((v5 + 104), &v66);
  if (v6 == -1 || (v7 = *(*(v5 + 112) + 48 * v6 + 40)) == 0)
  {
    v22 = re::globalAllocators(v6);
    v7 = (*(*v22[2] + 32))(v22[2], 80, 8);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    objc_initWeak((v7 + 64), 0);
    v23 = v1[3];
    *(v7 + 75) = 0;
    re::createArgumentBuffer(v1, v23 + 15, v7);
    re::encodeArgumentBuffer(v1, &v66, v7);
    *(v7 + 56) = -1;
    v24 = v1[9];
    if (v24)
    {
      v25 = v24 + 8;
    }

    else
    {
      v25 = 0;
    }

    objc_storeWeak((v7 + 64), v25);
    re::CachedArgumentBuffer::updateWritableBufferVersions(v7, *(v1 + 65), *(v1 + 64));
    *(v7 + 76) = 1;
    v1 = *v1;
    v26 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(v1, &v66);
    if (v26 != -1)
    {
      goto LABEL_56;
    }

    if (v1[7])
    {
LABEL_31:
      v27 = v1[4];
      if (!v27 || (v28 = v1[2], v28 > 8 * v27))
      {
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(v1, 1);
        v28 = v1[2];
      }

      v29 = (*v67 + (v66 << 6) + (v66 >> 2) - 0x61C8864680B583E9) ^ v66;
      v30 = ((*&v67[16] + (*&v67[8] << 6) + (*&v67[8] >> 2) - 0x61C8864680B583E9) ^ *&v67[8]) + (v29 >> 2);
      v31 = v28 >> 4;
      v32 = ((v30 + (v29 << 6) - 0x61C8864680B583E9) ^ v29) % (v28 >> 4);
      v33 = *v1;
      v34 = xmmword_1E304FAD0;
      v35 = 4.74803907e-38;
      while (1)
      {
        v36 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*&v33[2 * v32]), v34)))), *&v35)));
        if (v36 < 0x40)
        {
          break;
        }

        v58 = v34;
        v62 = v35;
        v60 = v30;
        v61 = v33;
        v63 = v32 + 1;
        v59 = v31;
        if (v32 + 1 == v31)
        {
          v63 = 0;
        }

        v37 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h1(&v66);
        v31 = v59;
        v32 = v63;
        v30 = v60;
        v33 = v61;
        v35 = v62;
        v34 = v58;
        if (v63 == v37 % v59)
        {
          goto LABEL_62;
        }
      }

      v39 = &v33[2 * v32];
      v40 = *(v39 + v36);
      *(v39 + v36) = ((v30 + (v29 << 6) + 23) ^ v29) & 0x7F;
      v41 = 3 * (v36 + 16 * v32);
      v42 = v1[1] + 16 * v41;
      v43 = v66;
      v44 = *v67;
      *(v42 + 32) = *&v67[16];
      *v42 = v43;
      *(v42 + 16) = v44;
      *(v1[1] + 2 * v41 + 5) = v7;
      if (v40 == 255)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      v46.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v46.i64[1] = v45;
      *(v1 + 3) = vaddq_s64(*(v1 + 3), v46);
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(v1, v1[1] + 2 * v41);
      goto LABEL_56;
    }

LABEL_60:
    goto LABEL_31;
  }

  v8 = v1[9];
  WeakRetained = objc_loadWeakRetained((v7 + 64));
  if (WeakRetained)
  {
    v11 = WeakRetained - 8;
  }

  else
  {
    v11 = 0;
  }

  if (WeakRetained)
  {
  }

  if (v8 != v11)
  {
    *(v7 + 56) = -1;
    v12 = v1[9];
    if (v12)
    {
      v13 = v12 + 8;
    }

    else
    {
      v13 = 0;
    }

    objc_storeWeak((v7 + 64), v13);
  }

  v14 = *(v7 + 75);
  if (v14 >= 2)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(v7 + 75), 2);
    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v52, v55);
    __break(1u);
LABEL_59:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v8, 2);
    v26 = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v53, v56);
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + 64) == *(v7 + 56 + 2 * v14) && *(v1 + 65) == *(v7 + 2 * v14 + 60) && (*(v7 + 73) & 1) != 0)
  {
    goto LABEL_56;
  }

  v8 = *(v7 + 76);
  if (v8 >= 2)
  {
    goto LABEL_59;
  }

  v15 = v1[3];
  if (!*(v7 + 8 * v8))
  {
    re::createArgumentBuffer(v1, v15 + 15, v7);
    re::encodeArgumentBuffer(v1, &v66, v7);
LABEL_55:
    re::CachedArgumentBuffer::updateWritableBufferVersions(v7, *(v1 + 65), *(v1 + 64));
    v50 = *(v7 + 76);
    *(v7 + 75) = v50;
    *(v7 + 76) = (v50 & 1) == 0;
LABEL_56:
    *(v7 + 73) = 1;
    return v7;
  }

  v64 = v15[15];
  v16 = *(v7 + 8 * v8);
  v65 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(&v65, &v64);
  [v65 setArgumentBuffer:v16 offset:0];
  if (v16)
  {
  }

  if (v64)
  {

    v64 = 0;
  }

  v18 = *(v7 + 76);
  if (v18 < 2)
  {
    v19 = 2 * v18;
    v20 = *(v7 + 2 * v18 + 60);
    if (*(v1 + 64) == *(v7 + 56 + v19))
    {
      v21 = *(v7 + 73) ^ 1;
    }

    else
    {
      v21 = 1;
    }

    if (*(v1 + 65) != v20)
    {
      re::encodeConstants(v1[4], *(*(&v66 + 1) + 96), *(*(&v66 + 1) + 112), &v65, 0);
    }

    if (v21)
    {
      v47 = *(v7 + 32);
      *(v7 + 32) = 0;
      if (v47)
      {
        v48 = *(v7 + 48);
        v49 = 8 * v47;
        do
        {
          if (*v48)
          {

            *v48 = 0;
          }

          ++v48;
          v49 -= 8;
        }

        while (v49);
      }

      ++*(v7 + 40);
      re::encodeTextures(v1, &v66, &v65, v7);
    }

    re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(&v65);
    goto LABEL_55;
  }

  re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(v7 + 76), 2);
  _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v54, v57);
  __break(1u);
LABEL_62:
  re::internal::assertLog(4, v38, v35, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
  result = _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
  __break(1u);
  return result;
}

void re::createArgumentBuffer(id **a1, id *a2, uint64_t a3)
{
  v6 = *(a3 + 76);
  v7 = a1[1];
  re::ensureHeapInitialized(*a1, v7 + 26);
  v8 = *((*a1)[12] + (*a1)[10] - 1);
  v21 = v8;
  v9 = [v7[26] heapBufferSizeAndAlignWithLength:objc_msgSend(*a2 options:{sel_encodedLength), 256}];
  if ([v8 maxAvailableSizeWithAlignment_] < v9)
  {
    re::createNewHeap(&v20, v7 + 26);
    v11 = *a1;
    v12 = (*a1)[10];
    if (v12 >= (*a1)[9])
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((v11 + 64), v12 + 1);
      v12 = *(v11 + 80);
    }

    v13 = *(v11 + 96);
    v14 = v20;
    *(v13 + 8 * v12) = v20;
    ++*(v11 + 80);
    ++*(v11 + 88);
    [*a1[7] useHeap:v14 stages:3];
    NS::SharedPtr<MTL::Buffer>::operator=(&v21, (*a1)[12] + (*a1)[10] - 1);
    if (v14)
    {
    }

    v8 = v21;
  }

  v20 = [v8 newBufferWithLength:objc_msgSend(*a2 options:{sel_encodedLength), 256}];
  if (v6 >= 2)
  {
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v6, 2);
    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) makeBuffer returned null for argument buffer! Have we run out of memory?", "cachedArgumentBuffer->argumentBufferChain[indexToWrite]", "createArgumentBuffer", 193);
    _os_crash("assertion failure: (cachedArgumentBuffer->argumentBufferChain[indexToWrite]) makeBuffer returned null for argument buffer! Have we run out of memory?");
    __break(1u);
    return;
  }

  v16 = (a3 + 8 * v6);
  NS::SharedPtr<MTL::Texture>::operator=(v16, &v20);
  if (v20)
  {
  }

  if (!*v16)
  {
    goto LABEL_15;
  }

  if (v21)
  {
  }
}

void re::encodeArgumentBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 76);
  v20 = *(*(a1 + 24) + 120);
  if (v6 < 2)
  {
    v8 = *(a3 + 8 * v6);
    v21 = 0;
    NS::SharedPtr<MTL::Buffer>::operator=(&v21, &v20);
    [v21 setArgumentBuffer:v8 offset:0];
    if (v8)
    {
    }

    if (v20)
    {

      v20 = 0;
    }

    re::encodeTextures(a1, a2, &v21, a3);
    v10 = *(a2 + 8);
    v11 = v10[7];
    if (!v11)
    {
LABEL_11:
      re::encodeConstants(*(a1 + 32), v10[12], v10[14], &v21, 1);
      re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(&v21);
      return;
    }

    v12 = 8 * v11;
    v6 = *(a1 + 32);
    v13 = (v10[9] + 4);
    while (1)
    {
      v14 = (*(v6 + 16) + 48 * *(v13 - 1));
      v15 = v14[1];
      if (v15 <= *v13)
      {
        break;
      }

      [v21 setBuffer:*(*v14 + 24 * *v13) offset:*(*v14 + 24 * *v13 + 16) atIndex:*(v13 - 2)];
      v13 += 4;
      v12 -= 8;
      if (!v12)
      {
        v10 = *(a2 + 8);
        goto LABEL_11;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v13, v15);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v18);
    __break(1u);
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v6, 2, v20);
  _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v17, v19);
  __break(1u);
}

uint64_t re::CachedArgumentBuffer::updateWritableBufferVersions(uint64_t this, uint64_t a2, uint64_t a3)
{
  v5 = *(this + 76);
  if (v5 >= 2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v5, 2, v3, v4);
    this = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    v6 = this + 2 * v5;
    *(v6 + 60) = a2;
    *(v6 + 56) = a3;
    *(this + 72) = 1;
  }

  return this;
}

void re::encodeConstants(uint64_t *result, uint64_t a2, uint64_t a3, id *a4, char a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a3;
    v8 = a3 + 112 * a2;
    do
    {
      if ((a5 & 1) != 0 || (*(v6 + 104) & 0x200) != 0)
      {
        v9 = [*a4 constantDataAtIndex_];
        v10 = v9;
        v11 = *(v6 + 24);
        if (v11)
        {
          v12 = *(v6 + 40);
          v13 = 16 * v11;
          do
          {
            if ((*v12 - 4) >= 4 && *v12 != 9)
            {
              v15 = *re::graphicsLogObjects(v9);
              v9 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              if (v9)
              {
                v16 = *(v6 + 96);
                v17 = *v12;
                *buf = 67109376;
                *&buf[4] = v16;
                LOWORD(v31) = 1024;
                *(&v31 + 2) = v17;
                _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Cannot encode a constant at argument index %d. Table at index %d does not support argument buffers.", buf, 0xEu);
              }
            }

            v12 += 4;
            v13 -= 16;
          }

          while (v13);
        }

        v18 = *(v6 + 88);
        v19 = *(v6 + 72);
        if (v19)
        {
          v20 = 16 * v19;
          do
          {
            if ((*v18 - 4) >= 4 && *v18 != 9)
            {
              v22 = *re::graphicsLogObjects(v9);
              v9 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v9)
              {
                v23 = *(v6 + 96);
                v24 = *v18;
                *buf = 67109376;
                *&buf[4] = v23;
                LOWORD(v31) = 1024;
                *(&v31 + 2) = v24;
                _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Cannot encode a constant at argument index %d. Table at index %d does not support argument buffers.", buf, 0xEu);
              }
            }

            ++v18;
            v20 -= 16;
          }

          while (v20);
          v18 = *(v6 + 88);
          v19 = *(v6 + 72);
        }

        v25 = *result;
        v26 = *(v6 + 100);
        v27 = *(v6 + 24);
        *buf = *(v6 + 40);
        v31 = v27;
        v29[0] = v18;
        v29[1] = v19;
        re::ConstantTableCollection::fill(v25, v10, v26, buf, v29);
      }

      v6 += 112;
    }

    while (v6 != v8);
  }
}

void re::encodeTextures(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((re::mtl::Device::needsArgumentBufferTextureEmulation((*(a1 + 8) + 208)) & 1) == 0)
  {
    v8 = *(a2 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 32);
      v11 = &v10[4 * v9];
      v12 = *(a1 + 32);
      v13 = &selRef_setOwnerWithIdentity_;
      do
      {
        if (*(v10 + 6) == 1)
        {
          [*a3 v13[71]];
        }

        else
        {
          (*(**(*(v12 + 8) + 8 * v10[1]) + 24))(&v38);
          [*a3 v13[71]];
          if (v10[1])
          {
            v14 = *(a4 + 48);
            v15 = *(a4 + 32);
            v16 = v14;
            while (v15)
            {
              v17 = v15 >> 1;
              v18 = &v16[8 * (v15 >> 1)];
              v20 = *v18;
              v19 = (v18 + 1);
              v15 += ~(v15 >> 1);
              if (v20 < v38)
              {
                v16 = v19;
              }

              else
              {
                v15 = v17;
              }
            }

            v21 = v16 - v14;
            v22 = (v16 - v14) >> 3;
            v23 = v38;
            v37 = v23;
            v24 = *(a4 + 32);
            v25 = v24 + 1;
            if (v24 + 1 <= v21 >> 3)
            {
              v39 = 0;
              memset(v48, 0, sizeof(v48));
              v33 = MEMORY[0x1E69E9C10];
              v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "insert";
              v42 = 1024;
              if (v34)
              {
                v35 = 3;
              }

              else
              {
                v35 = 2;
              }

              v43 = 887;
              v44 = 2048;
              v45 = v22;
              v46 = 2048;
              v47 = v25;
              _os_log_send_and_compose_impl(v35, &v39, v48, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v36, v37);
              _os_crash_msg();
              __break(1u);
            }

            v26 = v23;
            if (v24 >= *(a4 + 24))
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((a4 + 16), v24 + 1);
              v24 = *(a4 + 32);
            }

            v27 = *(a4 + 48);
            v28 = (v27 + 8 * v24);
            if (v24 <= v22)
            {
              *v28 = v26;
              *(a4 + 32) = v24 + 1;
              ++*(a4 + 40);
              v13 = &selRef_setOwnerWithIdentity_;
            }

            else
            {
              v29 = (v28 - 1);
              *v28 = *(v28 - 1);
              *(v28 - 1) = 0;
              if (v28 - 1 != (v27 + v21))
              {
                v30 = v21 - 8 * v24 + 8;
                do
                {
                  v31 = v29 - 1;
                  NS::SharedPtr<MTL::Texture>::operator=(v29, v29 - 1);
                  v29 = v31;
                  v30 += 8;
                }

                while (v30);
                v27 = *(a4 + 48);
              }

              NS::SharedPtr<MTL::Texture>::operator=((v27 + 8 * v22), &v37);
              v32 = v37;
              ++*(a4 + 32);
              ++*(a4 + 40);
              v13 = &selRef_setOwnerWithIdentity_;
              if (v32)
              {
              }
            }
          }

          else
          {
            *(a4 + 74) = 1;
          }

          if (v38)
          {
          }
        }

        v10 += 4;
      }

      while (v10 != v11);
    }
  }
}

void re::ensureHeapInitialized(uint64_t a1, id *this)
{
  if (!*(a1 + 80))
  {
    v5[3] = v2;
    v5[4] = v3;
    re::createNewHeap(v5, this);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((a1 + 64), v5);
    if (v5[0])
    {
    }
  }
}

void re::createNewHeap(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v4 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v4 setCpuCacheMode_];
  [v4 setStorageMode_];
  [v4 setSize_];
  [v4 setHazardTrackingMode_];
  *a1 = [*this newHeapWithDescriptor_];
  if (v4)
  {
  }
}

re::ArgumentBufferCacheReferences *re::ArgumentBufferCacheReferences::ArgumentBufferCacheReferences(re::ArgumentBufferCacheReferences *this, re::Allocator *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 5) = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 5, 0);
  ++*(this + 16);
  *(this + 40) = 0;
  return this;
}