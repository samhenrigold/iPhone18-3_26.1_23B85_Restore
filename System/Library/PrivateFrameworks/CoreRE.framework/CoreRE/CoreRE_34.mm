void re::internal::AssetBackgroundLoader::loadAssetAsync(re::internal::AssetLoadItem **__return_ptr a1@<X8>, re::internal::AssetBackgroundLoader *this@<X0>, void *a3@<X1>, const re::AssetType *a4@<X2>, const re::AssetPath *a5@<X3>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(this, a1);
  v10 = *a1;
  *(v10 + 3) = a3;
  *(v10 + 8) = a4;
  *(v10 + 12) = 0;
  *(v10 + 36) = 0;
  v11 = *(this + 82);
  *(v10 + 9) = *(this + 80);
  *(v10 + 10) = 0;
  *(v10 + 11) = v11;
  v16 = *a5;
  re::DynamicString::DynamicString(&v17, (a5 + 8));
  re::DynamicString::DynamicString(&v20, (a5 + 40));
  v12 = *(this + 81);
  v22 = *(a5 + 9);
  v23 = v12;
  LOBYTE(v24) = 1;
  LODWORD(v25) = v16;
  v26[0] = v17;
  v13 = v19;
  *&v26[1] = v18;
  v19 = 0;
  v17 = 0;
  v18 = 0uLL;
  v26[3] = v13;
  v27 = v20;
  v14 = *(&v21 + 1);
  *&v28 = v21;
  v21 = 0uLL;
  v20 = 0uLL;
  *(&v28 + 1) = v14;
  v29 = v22;
  v30 = v12;
  re::Optional<re::internal::AssetLoadItem::LegacySource>::operator=(*a1 + 256, &v24);
  if (v24 == 1)
  {
    if (v27)
    {
      if (BYTE8(v27))
      {
        (*(*v27 + 40))();
      }

      v27 = 0u;
      v28 = 0u;
    }

    if (v26[0])
    {
      if (v26[1])
      {
        (*(*v26[0] + 40))();
      }

      memset(v26, 0, sizeof(v26));
    }
  }

  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))();
    }

    v21 = 0u;
    v20 = 0u;
  }

  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  v15 = *(a5 + 1);
  v26[0] = 0;
  v26[1] = 0;
  v24 = v15;
  v25 = 0;
  re::DynamicString::setCapacity(&v24, 0);
  re::AssetPath::fullAssetPath(a5, &v24);
  re::DynamicString::operator=((*a1 + 32), &v24);
  if (v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(this, *a1, "load", 0);
}

uint64_t re::Optional<re::internal::AssetLoadItem::LegacySource>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::DynamicString::deinit((a1 + 48));
      re::DynamicString::deinit((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    re::DynamicString::operator=((a1 + 16), (a2 + 16));
    re::DynamicString::operator=((a1 + 48), (a2 + 48));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v5 = *(a2 + 32);
    *(a2 + 40) = 0;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 72) = *(a2 + 72);
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = 0;
    v9 = *(a2 + 64);
    *(a2 + 72) = 0;
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a2 + 56) = v11;
    *(a2 + 64) = v10;
LABEL_6:
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

void re::internal::AssetBackgroundLoader::unloadAssetAsync(std::chrono::system_clock::time_point **__return_ptr a1@<X8>, re::internal::AssetBackgroundLoader *this@<X0>, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a3@<X1>, const re::AssetType *a4@<X2>, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a5@<X3>, const char *a6@<X4>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(this, a1);
  v12 = *a1;
  *(v12 + 3) = a3;
  *(v12 + 12) = a5;
  *(v12 + 36) = 1;
  v13 = *(this + 80);
  v14 = *(this + 82);
  *(v12 + 8) = a4;
  *(v12 + 9) = v13;
  *(v12 + 10) = 0;
  *(v12 + 11) = v14;
  v15 = *a1;
  v17[0] = a6;
  v17[1] = strlen(a6);
  re::DynamicString::operator=((v15 + 32), v17);
  v16 = *a1;

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(this, v16, "unload", 0);
}

uint64_t re::internal::AssetLoadItem::setFailure(re::internal::AssetLoadItem *this, const re::DynamicString *a2)
{
  v4[0] = 1;
  re::DynamicString::DynamicString(&v5, a2);
  result = re::Optional<re::DynamicString>::operator=(this + 152, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        result = (*(*v5 + 40))();
      }
    }
  }

  *(this + 36) = 3;
  return result;
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data,unsigned long>>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v8) + 40;
  }
}

uint64_t re::Queue<re::internal::AssetLoadItem *>::dequeue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(*(a1 + 40) + 8 * v5);
    if ((v5 + 1) < *(a1 + 8))
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = v4 - 1;
    *(a1 + 24) = v7;
    ++*(a1 + 32);
    return v6;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v2, v3);
    result = _os_crash("assertion failure: (m_size > 0) Queue<T> is empty");
    __break(1u);
  }

  return result;
}

uint64_t re::internal::AssetBackgroundLoader::tryGetLoadItemResult(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    os_unfair_lock_lock((a1 + 680));
  }

  if (*(a1 + 536))
  {
    v4 = re::Queue<re::internal::AssetLoadItem *>::dequeue(a1 + 520, a2);
  }

  else
  {
    if (*(a1 + 408))
    {
      v5 = *(a1 + 424);
      v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v7 = *(a1 + 424);
      v8 = *(a1 + 408);
      if (v5 != (v7 + 8 * v8))
      {
        rep = v6.__d_.__rep_;
        do
        {
          if ((*(*v5 + 440) & 1) == 0)
          {
            v10 = rep - *(*v5 + 432);
            if (v10 >= 1001000)
            {
              v11 = *re::assetsLogObjects(v6.__d_.__rep_);
              v6.__d_.__rep_ = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
              if (LODWORD(v6.__d_.__rep_))
              {
                v12 = *v5;
                if (*(*v5 + 40))
                {
                  v13 = *(v12 + 48);
                }

                else
                {
                  v13 = v12 + 41;
                }

                v14 = *(a1 + 152);
                v15 = *(a1 + 408);
                v16 = *(a1 + 536);
                *buf = 136316162;
                v19 = v13;
                v20 = 2048;
                v21 = v10 / 1000;
                v22 = 2048;
                v23 = v14;
                v24 = 2048;
                v25 = v15;
                v26 = 2048;
                v27 = v16;
                _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Asset '%s' has been in active state in Asset Background Loader for '%lld' ms.\nPending: %zu, Active: %zu, Done: %zu", buf, 0x34u);
              }

              *(*v5 + 440) = 1;
              v7 = *(a1 + 424);
              v8 = *(a1 + 408);
            }
          }

          ++v5;
        }

        while (v5 != (v7 + 8 * v8));
      }
    }

    v4 = 0;
  }

  if (v2 == 1)
  {
    os_unfair_lock_unlock((a1 + 680));
  }

  return v4;
}

void re::internal::AssetBackgroundLoader::assetLoadItemFree(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 8);
  }

  v4 = *(a2 + 392);
  if (v4)
  {

    *(a2 + 392) = 0;
  }
}

void re::internal::AssetBackgroundLoader::waitForActiveLoadItemsToComplete(re::internal::AssetBackgroundLoader *this)
{
  for (i = *(this + 48); ; i = *(this + 48))
  {
    os_unfair_lock_lock(i);
    if (!*(this + 51))
    {
      break;
    }

    v3 = **(this + 53);
    if (!v3)
    {
      break;
    }

    v4 = &v3[2];
    os_unfair_lock_unlock(*(this + 48));
    re::internal::AssetBackgroundLoader::runIfNeeded(this, v3);
  }

  v5 = *(this + 48);

  os_unfair_lock_unlock(v5);
}

void re::internal::AssetBackgroundLoader::loadNow(os_unfair_lock_s *this, re::internal::AssetLoadItem *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    os_unfair_lock_lock(this + 170);
  }

  v6 = *&this[70]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = 0;
LABEL_5:
    v8 = 1 - v6;
    do
    {
      *v16 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&this[66], a2);
      if (*v16 == a2)
      {
        v6 = -v8;
        v7 = 1;
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      re::Queue<re::internal::AssetLoadItem *>::enqueue(&this[66], v16);
      ++v8;
    }

    while (v8 != 1);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v9 = *&this[38]._os_unfair_lock_opaque;
  if (v9)
  {
    v10 = 0;
LABEL_14:
    v11 = 1 - v9;
    do
    {
      *v16 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&this[34], a2);
      if (*v16 == a2)
      {
        v9 = -v11;
        v10 = 1;
        if (v11)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }

      re::Queue<re::internal::AssetLoadItem *>::enqueue(&this[34], v16);
      ++v11;
    }

    while (v11 != 1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    v12.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v13 = v12.__d_.__rep_ - *(a2 + 53);
    if (v13 >= 300000)
    {
      v14 = *re::assetsLogObjects(v12.__d_.__rep_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 40))
        {
          v15 = *(a2 + 6);
        }

        else
        {
          v15 = a2 + 41;
        }

        *v16 = 136315394;
        *&v16[4] = v15;
        v17 = 2048;
        v18 = v13 / 1000;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Asset '%s' has been in pending state in Asset Background Loader for '%lld' ms, started loading now via loadNow", v16, 0x16u);
      }
    }

    re::internal::AssetBackgroundLoader::prepareBackgroundTask(this, a2, 0);
  }

LABEL_28:
  if (a3 == 1)
  {
    os_unfair_lock_unlock(this + 170);
  }

  re::internal::AssetBackgroundLoader::runIfNeeded(this, a2);
}

_anonymous_namespace_ *re::Queue<re::internal::AssetLoadItem *>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::Queue<re::internal::AssetLoadItem *>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v4, v3);
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::internal::AssetLoadItem *>::setCapacity(void *result, unint64_t a2)
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
        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v8 = result;
            v3 = v5[1];
            if (!v3)
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
      v9 = v5[2];
      if (v9)
      {
        v10 = v5[3];
        v11 = v10;
        do
        {
          v8[v11] = *(v5[5] + 8 * (v10 % v3));
          if (v11 + 1 < a2)
          {
            ++v11;
          }

          else
          {
            v11 = 0;
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

re::internal::AssetLoadItem *re::make::shared::object<re::internal::AssetLoadItem>@<X0>(re *a1@<X0>, re::internal::AssetLoadItem **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 448, 8);
  result = re::internal::AssetLoadItem::AssetLoadItem(v4);
  *a2 = result;
  return result;
}

double re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *result)
{
  v3 = *result;
  if (*result < 0)
  {
    v8 = v1;
    v9 = v2;
    *result = v3 & 0x7FFFFFFF;
    v5 = re::DynamicString::deinit((result + 2));
    v6 = result[18];
    if (v6 != -1)
    {
      (*(&off_1F5CB91E0 + v6))(&v7, result + 10, v5);
    }

    result[18] = -1;
  }
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data,unsigned long>>(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 40) = 0;
  v7 += 40;
  *(v7 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(v7, a4);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

re::DynamicString *re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 32) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(v8, v14 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

re::DynamicString *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (*(&off_1F5CB91E0 + v4))(&v7, result);
  }

  v3[8] = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CB91F8[v5])(&v6, a2);
    v3[8] = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data,unsigned long> &&>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = a2[3];
  v4 = a2[1];
  *v2 = *a2;
  *a2 = 0;
  v5 = a2[2];
  a2[3] = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data,unsigned long> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::WrappedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {

      *(a1 + 16) = 0;
    }
  }

  else
  {
  }

  return a1;
}

void *re::allocInfo_AssetService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_36, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_36))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191BF0, "AssetService");
    __cxa_guard_release(&_MergedGlobals_36);
  }

  return &unk_1EE191BF0;
}

void re::initInfo_AssetService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x308AF415FCB3338ALL;
  v8[1] = "AssetService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_AssetService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::RealityArchiveWriter *re::RealityArchiveWriter::RealityArchiveWriter(re::RealityArchiveWriter *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9220;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 16) = 1;
  *(this + 9) = 0;
  return this;
}

void re::RealityArchiveWriter::~RealityArchiveWriter(re::RealityArchiveWriter *this)
{
  *this = &unk_1F5CB9220;
  v2 = *(this + 9);
  if (v2)
  {
    zip_entry_save_data_end(v2);
  }

  *(this + 9) = 0;
  re::DynamicString::deinit((this + 32));
  v3 = *(this + 3);
  if (v3)
  {
    zip_close(v3);
    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityArchiveWriter::~RealityArchiveWriter(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::RealityArchiveWriter::open@<X0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchiveWriter *this@<X0>, re *a3@<X1>)
{
  if (*(this + 3))
  {
  }

  else if (re::ensureFolderExistsForFile(a3, a3))
  {
    if (!*(this + 3))
    {
      zip_file_create(a3);
      *(this + 3) = v11;
      if (v11)
      {
        *(v11 + 104) = 4096;
        *&v12 = a3;
        *(&v12 + 1) = strlen(a3);
        result = re::DynamicString::operator=((this + 32), &v12);
        *a1 = 1;
        return result;
      }
    }

    result = re::DynamicString::format(&v12, "Failed to open reality archive for writing at path '%s'.", v7, a3);
  }

  else
  {
    result = re::DynamicString::format(&v12, "Could not create parent folders for file path %s.", v7, a3);
  }

  v8 = v12;
  v9 = v13;
  v10 = v14;
  *a1 = 0;
  *(a1 + 1) = v8;
  a1[3] = v9;
  a1[4] = v10;
  return result;
}

uint64_t re::RealityArchiveWriter::getCompressionMethod(re::RealityArchiveWriter *this, uint64_t a2)
{
  v4 = *(this + 16);
  if (v4 < 3)
  {
    return (0x20301u >> (8 * v4)) & 3;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown compression method set", "!Unreachable code", "convertToArchiveCompression", 47, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Unknown compression method set");
  __break(1u);
  return result;
}

uint64_t re::RealityArchiveWriter::writeEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFData *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 24);
  if (!v9)
  {
LABEL_76:
    v46 = v53;
    v47 = v54;
    v48 = v55;
    *a7 = 0;
    *(a7 + 8) = v46;
    *(a7 + 24) = v47;
    *(a7 + 32) = v48;
    return result;
  }

  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (a5)
        {
          v14 = a6 == 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = !v14;
        goto LABEL_11;
      }

      v16 = 0;
      if (a5)
      {
        v21 = a6 == 0;
      }

      else
      {
        v21 = 1;
      }

      v15 = !v21;
      goto LABEL_38;
    }

    if (a5)
    {
      v18 = a6 == 0;
    }

    else
    {
      v18 = 1;
    }

    v15 = !v18;
LABEL_29:
    if (v15)
    {
      v16 = -32669;
    }

    else
    {
      v16 = 99;
    }

    goto LABEL_38;
  }

  v19 = *(a1 + 64);
  if (a5)
  {
    v20 = a6 == 0;
  }

  else
  {
    v20 = 1;
  }

  v15 = !v20;
  if ((v19 - 2) < 2)
  {
    goto LABEL_29;
  }

  if (v19 == 4)
  {
    v16 = 14;
  }

  else
  {
    if (v19 == 1)
    {
LABEL_11:
      v16 = 8;
      goto LABEL_38;
    }

    v16 = 0;
  }

LABEL_38:
  v22 = v16 < 0;
  v23 = v15 & v22;
  if ((v15 & v22) != 0)
  {
    v24 = a5;
  }

  else
  {
    v24 = 0;
  }

  entry = zip_create_entry(v9, a2, v16, v24);
  if (!entry)
  {
    result = re::DynamicString::format(&v53, "Failed to create archive entry named '%s'.", v26, a2);
    goto LABEL_76;
  }

  v27 = zip_entry_save_data_begin(entry);
  if (!v27)
  {
    result = re::DynamicString::format(&v53, "Failed to initialize entry '%s' for writing.", v28, a2);
    goto LABEL_76;
  }

  v29 = v27;
  v52 = a2;
  Length = CFDataGetLength(a3);
  BytePtr = CFDataGetBytePtr(a3);
  v33 = BytePtr;
  if (v23)
  {
    v34 = 0;
    v35 = (a6 + 8);
    v36 = a5;
    while (1)
    {
      v37 = *v35;
      if (v37 == 3)
      {
        v38 = 0;
      }

      else if (v37 == 2)
      {
        v38 = 1;
      }

      else if (*v35)
      {
        v38 = -1;
      }

      else
      {
        v38 = *(a1 + 64) - 1;
      }

      v39 = *(v35 - 1);
      v40 = __CFADD__(v39, v34);
      v34 += v39;
      if (v40 || v34 > Length)
      {
        re::DynamicString::format(&v53, "Chunks requested overflowed available data '%s'.", v32, v52);
        goto LABEL_79;
      }

      v41 = v38 >= 4 ? 0 : 0xE006300630008uLL >> (16 * v38);
      if (zip_entry_save_chunk_begin(v29, v41))
      {
        v42 = *(*(v29 + 16) + 92) < 0 && *(v29 + 184) == 1 ? zip_entry_save_data_write(v33, v39, v29) : 0;
        v43 = zip_entry_save_chunk_end(v29) ? v42 : 0;
      }

      else
      {
        v43 = 0;
      }

      if (v43 != v39)
      {
        break;
      }

      v33 += v39;
      v35 += 16;
      if (!--v36)
      {
        goto LABEL_72;
      }
    }

    re::DynamicString::format(&v53, "Failed to write chunk data to entry '%s'.", v32, v52);
    goto LABEL_79;
  }

  if (zip_entry_save_data_write(BytePtr, Length, v29) == Length)
  {
LABEL_72:
    result = zip_entry_save_data_end(v29);
    if (result)
    {
      *a7 = 1;
      return result;
    }

    result = re::DynamicString::format(&v53, "Failed to finalize write of entry '%s'.", v45, v52);
    goto LABEL_76;
  }

  re::DynamicString::format(&v53, "Failed to write data to entry '%s'.", v44, v52);
LABEL_79:
  v49 = v53;
  v50 = v54;
  v51 = v55;
  *a7 = 0;
  *(a7 + 8) = v49;
  *(a7 + 24) = v50;
  *(a7 + 32) = v51;

  return zip_entry_save_data_end(v29);
}

__n128 re::RealityArchiveWriter::close@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchiveWriter *this@<X0>)
{
  v5 = (this + 24);
  v4 = *(this + 3);
  if (!v4)
  {
    v10 = "This RealityArchiveWriter is not opened for writing.";
LABEL_12:
    result = v13;
    v11 = v14;
    v12 = v15;
    *a1 = 0;
    *(a1 + 1) = result;
    a1[3] = v11;
    a1[4] = v12;
    return result;
  }

  v6 = zip_save_manifest(v4, 0, v5, 1uLL);
  if ((v6 & 1) == 0)
  {
    v10 = "Failed to save archive manifest.";
    goto LABEL_12;
  }

  if (*v5)
  {
    v8 = zip_close(*v5);
    *v5 = 0;
    if ((v8 & 1) == 0)
    {
      v10 = "Failed to write and close archive.";
      goto LABEL_12;
    }
  }

  if (*(this + 40))
  {
    *(this + 5) = 1;
    v9 = *(this + 6);
  }

  else
  {
    *(this + 40) = 0;
    v9 = this + 41;
  }

  *v9 = 0;
  *a1 = 1;
  return result;
}

void *re::allocInfo_ResourceSharingService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_37, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_37))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191C88, "ResourceSharingService");
    __cxa_guard_release(&_MergedGlobals_37);
  }

  return &unk_1EE191C88;
}

void re::initInfo_ResourceSharingService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xEF2E39053FE8140ELL;
  v8[1] = "ResourceSharingService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ResourceSharingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::allocInfo_ResourceFetchService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191D20, "ResourceFetchService");
    __cxa_guard_release(&_MergedGlobals_38);
  }

  return &unk_1EE191D20;
}

void re::initInfo_ResourceFetchService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xB75BF8A4312FB3D2;
  v8[1] = "ResourceFetchService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ResourceFetchService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::AssetPath *re::AssetPath::AssetPath(re::AssetPath *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 1) = a2;
  re::DynamicString::setCapacity(this + 1, 0);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 5) = a2;
  re::DynamicString::setCapacity(this + 5, 0);
  *(this + 9) = 0;
  return this;
}

uint64_t re::AssetPath::reset(uint64_t this)
{
  *this = 0;
  if (*(this + 16))
  {
    *(this + 16) = 1;
    v1 = *(this + 24);
  }

  else
  {
    *(this + 16) = 0;
    v1 = (this + 17);
  }

  *v1 = 0;
  if (*(this + 48))
  {
    *(this + 48) = 1;
    v2 = *(this + 56);
  }

  else
  {
    *(this + 48) = 0;
    v2 = (this + 49);
  }

  *v2 = 0;
  *(this + 72) = 0;
  return this;
}

__n128 re::AssetPath::hadParseError@<Q0>(uint64_t a1@<X0>, const char *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  re::AssetPath::reset(a1);
  v8 = *(a1 + 8);
  v13 = 0;
  v14 = 0;
  v12 = v8;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::appendf(&v12, "Invalid asset path: %s '%s'", a2, *a3);
  result = v12;
  v10 = v13;
  v11 = v14;
  *a4 = 0;
  *(a4 + 8) = 200;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  return result;
}

BOOL re::AssetPath::tryParseBuiltInPrefix(re::AssetPath *this, const char *a2, size_t a3, BOOL *a4)
{
  if (matchPrefix("app", a2, a3))
  {
    v8 = 1;
    *this = 1;
LABEL_11:
    *a4 = v8;
    return 1;
  }

  if (matchPrefix("framework", a2, a3))
  {
    v9 = 2;
LABEL_5:
    *this = v9;
    v8 = 1;
    goto LABEL_11;
  }

  if (matchPrefix("assetId", a2, a3))
  {
    v8 = 0;
    v10 = 8;
LABEL_8:
    *this = v10;
    goto LABEL_11;
  }

  matched = matchPrefix("engine", a2, a3);
  if (matched)
  {
    *this = 2;
    v13[0] = re::bundleFrameworkIdentifier(matched);
    v13[1] = strlen(v13[0]);
    re::DynamicString::operator=((this + 8), v13);
    v8 = 0;
    goto LABEL_11;
  }

  if (matchPrefix("memory", a2, a3))
  {
    v8 = 0;
    v10 = 3;
    goto LABEL_8;
  }

  if (matchPrefix("singlefilearchive", a2, a3))
  {
    v8 = 0;
    v10 = 7;
    goto LABEL_8;
  }

  if (matchPrefix("peer", a2, a3))
  {
    v9 = 4;
    goto LABEL_5;
  }

  result = matchPrefix("sourcepath", a2, a3);
  if (result)
  {
    v8 = 0;
    v10 = 5;
    goto LABEL_8;
  }

  return result;
}

BOOL re::AssetPath::tryParseExternalPrefix(re::Allocator **this, const char *a2, size_t a3, os_unfair_lock_s *a4)
{
  v6 = (this + 1);
  re::DynamicString::DynamicString(&v9, a2, a3, this[1]);
  hasResolverForScheme = re::AssetProviderRegistry::hasResolverForScheme(a4, &v9);
  if (hasResolverForScheme)
  {
    *this = 6;
    re::DynamicString::operator=(v6, &v9);
  }

  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return hasResolverForScheme;
}

BOOL re::AssetPath::tryParseOtherResolverPrefix(re::Allocator **this, const char *a2, size_t a3, os_unfair_lock_s *a4)
{
  v6 = (this + 1);
  re::DynamicString::DynamicString(&v10, a2, a3, this[1]);
  if (v11)
  {
    v7 = *&v12[7];
  }

  else
  {
    v7 = v12;
  }

  ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(a4, v7);
  if (ProviderForScheme)
  {
    *this = 9;
    re::DynamicString::operator=(v6, &v10);
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  return ProviderForScheme != 0;
}

void re::AssetPath::parseRootAndFilePath(char *__s@<X1>, uint64_t a2@<X0>, const char **a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = strchr(__s, 47);
  if (!v8)
  {
    v11 = "Missing slash after prefix";
LABEL_8:

    re::AssetPath::hadParseError(a2, v11, a3, a4);
    return;
  }

  v9 = v8;
  re::DynamicString::assign((a2 + 8), __s, v8 - __s);
  if (*(a2 + 16))
  {
    v10 = *(a2 + 24);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = (a2 + 17);
  }

  if (strpbrk(v10, ":<>|?*"))
  {
    v11 = "Invalid characters in root";
    goto LABEL_8;
  }

LABEL_11:

  re::AssetPath::parseFilePath(v9, a2, a3, 1, a4);
}

void re::AssetPath::parseFilePath(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v7 = __s;
  v10 = strrchr(__s, 46);
  if (!v10)
  {

    re::AssetPath::hadParseError(a2, "Missing asset type suffix", a3, a5);
    return;
  }

  v11 = v10;
  v12 = *(a2 + 8);
  v39 = 0;
  v40 = 0;
  v37 = v12;
  v38 = 0;
  re::DynamicString::setCapacity(&v37, 0);
  if (strncmp("compiled", v11 + 1, 8uLL) || (v16 = re::internal::AssetTypeRegistry::assetTypeWithName(*(a3 + 16), v11 + 9)) == 0)
  {
    v13 = re::internal::AssetTypeRegistry::assetTypeWithExtension(*(a3 + 16), v11 + 1);
    *(a2 + 72) = v13;
    if (!v13)
    {
      v15 = "Unknown asset type suffix";
      goto LABEL_24;
    }

LABEL_4:
    v14 = strlen(v7);
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *(a2 + 72) = v16;
  if (!dyld_program_sdk_at_least() || (*a2 - 3) < 6)
  {
    goto LABEL_4;
  }

  re::DynamicString::assign(&v37, v7, v11 - v7);
  if (v38)
  {
    v7 = v39;
    v14 = v38 >> 1;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = &v38 + 1;
    v14 = v38 >> 1;
  }

LABEL_5:
  if (strpbrk(v7, ":<>|?*") && *a2 != 6)
  {
    v15 = "Contains invalid characters in file path";
    goto LABEL_24;
  }

LABEL_7:
  if (strstr(v7, "//"))
  {
    v15 = "Paths can't have double slashes";
LABEL_24:
    v24 = re::AssetPath::hadParseError(a2, v15, a3, a5);
    goto LABEL_25;
  }

  v17 = *(a2 + 8);
  v35 = 0;
  v36 = 0;
  v33 = v17;
  v34 = 0;
  v18 = re::DynamicString::setCapacity(&v33, 0);
  if (!v14)
  {
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v31);
    __break(1u);
    return;
  }

  v20 = *v7;
  if (v20 == 47 || a4)
  {
    if (v20 == 47 && *a2 != 3 && *a2 != 5)
    {
      ++v7;
    }

    goto LABEL_34;
  }

  ParentDirectory = re::AssetPath::getParentDirectory(v18, *(a3 + 8));
  re::DynamicString::append(&v33, ParentDirectory, v22);
  v23 = strlen(v7);
  re::DynamicString::append(&v33, v7, v23);
  if ((v34 & 1) == 0)
  {
    v7 = &v34 + 1;
    goto LABEL_34;
  }

  v7 = v35;
  if (v35)
  {
LABEL_34:
    v25 = v7 - 1;
    do
    {
      v26 = *++v25;
    }

    while (v26 == 47);
    goto LABEL_36;
  }

  v25 = 0;
LABEL_36:
  v27 = 0;
  while (1)
  {
    if (!v25 || (v28 = strchr(v25, 47)) == 0)
    {
LABEL_52:
      v32[0] = v7;
      v32[1] = strlen(v7);
      re::AssetPath::standardizePath(v32, (a2 + 40));
      *a5 = 1;
      goto LABEL_53;
    }

    if (v28 - v25 != 2)
    {
      if (v28 - v25 == 1)
      {
        if (*v25 != 46)
        {
          ++v27;
        }
      }

      else
      {
        ++v27;
      }

      goto LABEL_51;
    }

    if (*v25 == 46)
    {
      v29 = v25[1] == 46 ? -1 : 1;
    }

    else
    {
      v29 = 1;
    }

    v27 += v29;
    if (v27 < 0)
    {
      break;
    }

LABEL_51:
    v25 = v28 + 1;
    if (!v28[1])
    {
      goto LABEL_52;
    }
  }

  v24 = re::AssetPath::hadParseError(a2, "Unsupported relative path", a3, a5);
LABEL_53:
  if (v33 && (v34 & 1) != 0)
  {
    (*(*v33 + 40))();
  }

LABEL_25:
  if (v37)
  {
    if (v38)
    {
      (*(*v37 + 40))(v24);
    }
  }
}

char *re::AssetPath::getParentDirectory(re::AssetPath *this, const re::AssetPath *a2)
{
  if (!a2)
  {
    return &str_12_2;
  }

  if (*a2 == 6)
  {
    v3 = (*(a2 + 2) & 1) != 0 ? *(a2 + 3) : a2 + 17;
    if (!strcmp(v3, "invalidResolver"))
    {
      return "i/n/v/a/l/i/d/";
    }
  }

  if (*(a2 + 48))
  {
    v4 = *(a2 + 7);
  }

  else
  {
    v4 = a2 + 49;
  }

  if (strrchr(v4, 47))
  {
    return v4;
  }

  else
  {
    return &str_12_2;
  }
}

_BYTE *re::AssetPath::standardizePath(uint64_t *a1, re::DynamicString *this)
{
  re::DynamicString::deinit(this);
  v4 = a1[1];
  result = re::DynamicString::setCapacity(this, v4 + 1);
  v36[0] = "/";
  v36[1] = 1;
  if (!a1[1])
  {
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = re::StringSlice::findFirstOf(a1, v36, v7, v34);
    v9 = a1[1];
    v10 = v34[0] ? v35 + 1 : a1[1];
    v11 = v10 - v7;
    if (v10 - v7 != 2)
    {
      break;
    }

    if (v9 <= v7)
    {
      goto LABEL_36;
    }

    v12 = *a1;
    if (*(*a1 + v7) != 46)
    {
      goto LABEL_26;
    }

    v20 = v7 + 1;
    if (v9 <= v7 + 1)
    {
      goto LABEL_37;
    }

    if (*(v12 + v20) != 47)
    {
      goto LABEL_26;
    }

LABEL_27:
    v7 = v10;
    if (v10 >= a1[1])
    {
      return result;
    }
  }

  if (v11 != 3)
  {
    v12 = *a1;
LABEL_26:
    result = re::DynamicString::append(this, (v12 + v7), v11);
    goto LABEL_27;
  }

  if (v9 > v7)
  {
    v12 = *a1;
    if (*(*a1 + v7) != 46)
    {
      goto LABEL_26;
    }

    v13 = v7 + 1;
    if (v9 <= v7 + 1)
    {
      goto LABEL_38;
    }

    if (*(v12 + v13) != 46)
    {
      goto LABEL_26;
    }

    v14 = v7 + 2;
    if (v9 <= v7 + 2)
    {
      goto LABEL_39;
    }

    if (*(v12 + v14) != 47)
    {
      goto LABEL_26;
    }

    v15 = *(this + 1);
    if (v15)
    {
      v16 = v15 >> 1;
    }

    else
    {
      v16 = v15 >> 1;
    }

    if (v16 >= 2)
    {
      re::DynamicString::rfind(v33, this, 47, v16 - 2);
      if (v33[0])
      {
        v18 = v33[1] + 1;
        v19 = this;
LABEL_33:
        result = re::DynamicString::resize(v19, v18, 0);
        goto LABEL_27;
      }

      if (!a1[1])
      {
        goto LABEL_40;
      }
    }

    v19 = this;
    if (**a1 != 47)
    {
      v18 = 0;
      goto LABEL_33;
    }

    re::DynamicString::resize(this, 1uLL, 0);
    result = re::DynamicString::operator[](this, 0);
    *result = 47;
    goto LABEL_27;
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v9);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
  __break(1u);
LABEL_36:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v9);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
  __break(1u);
LABEL_37:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v9);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
  __break(1u);
LABEL_38:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v9);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
  __break(1u);
LABEL_39:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v9);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
  __break(1u);
LABEL_40:
  re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
  __break(1u);
  return result;
}

BOOL re::AssetPath::putCurrentAppNameInRoot(re::AssetPath *this)
{
  re::Bundle::application(&v9);
  v2 = v9;
  if (v9)
  {
    re::Bundle::ID(&v7, &v9);
    re::DynamicString::operator=((this + 8), &v7);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = v3 >> 1;
    }

    else
    {
      v4 = v3 >> 1;
    }

    v5 = v4 != 0;
    v2 = v9;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double re::AssetPath::parse@<D0>(uint64_t *__return_ptr a1@<X8>, re::AssetPath *this@<X0>, char *a3@<X1>, const re::AssetPath *a4@<X2>, const re::internal::AssetTypeRegistry *a5@<X3>, os_unfair_lock_s *a6@<X4>)
{
  re::AssetPath::reset(this);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v12 = strchr(a3, 58);
  if (!v12)
  {
    if (!*a3)
    {
      *this = 0;
      *a1 = 1;
      return result;
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    v17 = *a4;
    if (*a4 <= 8u)
    {
      if (((1 << v17) & 0x1EE) != 0)
      {
        *this = v17;
        re::DynamicString::operator=((this + 8), (a4 + 8));
        goto LABEL_18;
      }

      if (!v17)
      {
LABEL_16:
        if (!re::AssetPath::putCurrentAppNameInRoot(this))
        {
          v21 = "Can't find current app name";
          goto LABEL_22;
        }

        *this = 1;
LABEL_18:
        v18 = a1;
        v19 = this;
        v16 = a3;
        v20 = 0;
LABEL_19:
        re::AssetPath::parseFilePath(v16, v19, v23, v20, v18);
        return result;
      }
    }

    v21 = "Invalid parent asset path";
    goto LABEL_22;
  }

  v14 = v12;
  v15 = v12 - a3;
  v22 = 0;
  if (re::AssetPath::tryParseBuiltInPrefix(this, a3, v12 - a3, &v22) || re::AssetPath::tryParseExternalPrefix(this, a3, v15, a6) || re::AssetPath::tryParseOtherResolverPrefix(this, a3, v15, a6))
  {
    v16 = v14 + 1;
    if (v22)
    {
      re::AssetPath::parseRootAndFilePath(v16, this, v23, a1);
      return result;
    }

    v18 = a1;
    v19 = this;
    v20 = 1;
    goto LABEL_19;
  }

  v21 = "Unknown prefix";
LABEL_22:
  *&result = re::AssetPath::hadParseError(this, v21, v23, a1).n128_u64[0];
  return result;
}

char *re::AssetPath::fullAssetPath(char *this, re::DynamicString *a2)
{
  v3 = this;
  v4 = *this;
  if (*this > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v22 = *(this + 6);
        if (v22)
        {
          v23 = v22 >> 1;
        }

        else
        {
          v23 = v22 >> 1;
        }

        re::DynamicString::setCapacity(a2, v23 + 12);
        v24 = "sourcepath:";
        v25 = a2;
        v26 = 11;
        goto LABEL_76;
      }

      if (v4 != 6)
      {
        return this;
      }
    }

    else
    {
      if (v4 == 7)
      {
        v37 = *(this + 6);
        if (v37)
        {
          v38 = v37 >> 1;
        }

        else
        {
          v38 = v37 >> 1;
        }

        re::DynamicString::setCapacity(a2, v38 + 19);
        v24 = "singlefilearchive:";
        v25 = a2;
        v26 = 18;
        goto LABEL_76;
      }

      if (v4 == 8)
      {
        v41 = *(this + 6);
        if (v41)
        {
          v42 = v41 >> 1;
        }

        else
        {
          v42 = v41 >> 1;
        }

        re::DynamicString::setCapacity(a2, v42 + 9);
        v24 = "assetId:";
        v25 = a2;
        v26 = 8;
        goto LABEL_76;
      }

      if (v4 != 9)
      {
        return this;
      }
    }

    v17 = *(this + 2);
    if (v17)
    {
      v18 = v17 >> 1;
    }

    else
    {
      v18 = v17 >> 1;
    }

    v19 = *(this + 6);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    re::DynamicString::setCapacity(a2, v18 + v20 + 2);
    if (v3[16])
    {
      v21 = *(v3 + 3);
    }

    else
    {
      v21 = v3 + 17;
    }

    v27 = strlen(v21);
    re::DynamicString::append(a2, v21, v27);
    v24 = ":";
    goto LABEL_75;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v45[0] = &str_12_2;
      v45[1] = 0;
      return re::DynamicString::operator=(a2, v45);
    }

    if (v4 != 1)
    {
      return this;
    }

    v10 = *(this + 2);
    if (v10)
    {
      v11 = v10 >> 1;
    }

    else
    {
      v11 = v10 >> 1;
    }

    v12 = *(this + 6);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    re::DynamicString::setCapacity(a2, v11 + v13 + 7);
    v14 = "app:";
    v15 = a2;
    v16 = 4;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v39 = *(this + 6);
        if (v39)
        {
          v40 = v39 >> 1;
        }

        else
        {
          v40 = v39 >> 1;
        }

        re::DynamicString::setCapacity(a2, v40 + 8);
        v24 = "memory:";
        v25 = a2;
        v26 = 7;
        goto LABEL_76;
      }

      if (v4 != 4)
      {
        return this;
      }

      v5 = *(this + 2);
      if (v5)
      {
        v6 = v5 >> 1;
      }

      else
      {
        v6 = v5 >> 1;
      }

      v7 = *(this + 6);
      if (v7)
      {
        v8 = v7 >> 1;
      }

      else
      {
        v8 = v7 >> 1;
      }

      re::DynamicString::setCapacity(a2, v6 + v8 + 7);
      re::DynamicString::append(a2, "peer:", 5uLL);
      if (v3[16])
      {
        v9 = *(v3 + 3);
      }

      else
      {
        v9 = v3 + 17;
      }

      v43 = strlen(v9);
      re::DynamicString::append(a2, v9, v43);
      v24 = "/";
LABEL_75:
      v25 = a2;
      v26 = 1;
LABEL_76:
      re::DynamicString::append(v25, v24, v26);
      if (v3[48])
      {
        v36 = *(v3 + 7);
      }

      else
      {
        v36 = v3 + 49;
      }

LABEL_79:
      v44 = strlen(v36);

      return re::DynamicString::append(a2, v36, v44);
    }

    v28 = *(this + 2);
    if (v28)
    {
      v29 = v28 >> 1;
    }

    else
    {
      v29 = v28 >> 1;
    }

    v30 = *(this + 6);
    if (v30)
    {
      v31 = v30 >> 1;
    }

    else
    {
      v31 = v30 >> 1;
    }

    re::DynamicString::setCapacity(a2, v29 + v31 + 12);
    v14 = "framework:";
    v15 = a2;
    v16 = 10;
  }

  re::DynamicString::append(v15, v14, v16);
  if (v3[16])
  {
    v32 = *(v3 + 3);
  }

  else
  {
    v32 = v3 + 17;
  }

  v33 = strlen(v32);
  re::DynamicString::append(a2, v32, v33);
  re::DynamicString::append(a2, "/", 1uLL);
  if (v3[48])
  {
    v34 = *(v3 + 7);
  }

  else
  {
    v34 = v3 + 49;
  }

  v35 = strlen(v34);
  re::DynamicString::append(a2, v34, v35);
  if ((this & 1) == 0)
  {
    re::DynamicString::append(a2, ".", 1uLL);
    v36 = *(*(v3 + 9) + 8);
    goto LABEL_79;
  }

  return this;
}

char *re::AssetPath::fullAssetPath@<X0>(re::AssetPath *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = *(this + 1);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = v4;
  *(a2 + 1) = 0;
  re::DynamicString::setCapacity(a2, 0);

  return re::AssetPath::fullAssetPath(this, a2);
}

char *re::AssetPath::makeRelativeAssetPath@<X0>(re::AssetPath *this@<X0>, const re::AssetPath *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v5 = *this != *a2 || (*this | 8) == 8;
  if (v5 || ((*(this + 2) & 1) != 0 ? (v9 = *(this + 3)) : (v9 = this + 17), (*(a2 + 2) & 1) != 0 ? (v10 = *(a2 + 3)) : (v10 = a2 + 17), v11 = strcmp(v9, v10), v11))
  {
    v6 = *(a2 + 1);
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *a3 = v6;
    *(a3 + 1) = 0;
    re::DynamicString::setCapacity(a3, 0);

    return re::AssetPath::fullAssetPath(a2, a3);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v12 = re::DynamicString::setCapacity(a3, 0);
    ParentDirectory = re::AssetPath::getParentDirectory(v12, this);
    v15 = v13;
    v16 = *(*(a2 + 9) + 8);
    if (*(a2 + 48))
    {
      v17 = *(a2 + 7);
    }

    else
    {
      v17 = a2 + 49;
    }

    if (!strncmp(v17, ParentDirectory, v13))
    {
      v19 = strlen(&v17[v15]);
      v21 = &v17[v15];
      v20 = a3;
    }

    else
    {
      re::DynamicString::append(a3, "/", 1uLL);
      if (*(a2 + 6))
      {
        v18 = *(a2 + 7);
      }

      else
      {
        v18 = a2 + 49;
      }

      v19 = strlen(v18);
      v20 = a3;
      v21 = v18;
    }

    re::DynamicString::append(v20, v21, v19);
    re::DynamicString::append(a3, ".", 1uLL);
    v22 = strlen(v16);

    return re::DynamicString::append(a3, v16, v22);
  }
}

char *re::AssetPath::assetPathForNetwork@<X0>(re::Allocator **this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*this == 3)
  {
    re::DynamicString::DynamicString(a3, "peer:", this[1]);
    v9 = strlen(a2);
    re::DynamicString::append(a3, a2, v9);
    re::DynamicString::append(a3, "/", 1uLL);
    if (this[6])
    {
      v10 = this[7];
    }

    else
    {
      v10 = this + 49;
    }

    v12 = strlen(v10);

    return re::DynamicString::append(a3, v10, v12);
  }

  else if (*this == 5)
  {
    v5 = *re::assetsLogObjects(this);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      v13 = v5;
      re::AssetPath::fullAssetPath(this, &v15);
      if (v16)
      {
        v14 = *&v17[7];
      }

      else
      {
        v14 = v17;
      }

      *buf = 136315138;
      v19 = v14;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Can't get network asset handle for source asset path '%s'", buf, 0xCu);

      v6 = v15;
      if (v15)
      {
        if (v16)
        {
          v6 = (*(*v15 + 40))();
        }
      }
    }
  }

  else
  {
    v11 = this[1];
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *a3 = v11;
    *(a3 + 1) = 0;
    re::DynamicString::setCapacity(a3, 0);

    return re::AssetPath::fullAssetPath(this, a3);
  }
}

uint64_t re::AssetPath::filePathToAsset(re::AssetPath *this, re::DynamicString *a2, uint64_t a3, os_unfair_lock_s *a4)
{
  v4 = a3;
  BundleResource = 0;
  v26 = *MEMORY[0x1E69E9840];
  v8 = *this;
  if (*this <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = *(*(this + 9) + 8);
        if (*(this + 16))
        {
          v11 = *(this + 3);
        }

        else
        {
          v11 = (this + 17);
        }

        re::Bundle::searchForAppOrAppExtension(&buf, v11);
        v12 = buf;
        if (!buf)
        {
          re::Bundle::application(&v23);
          v13 = v23;
          v14 = buf;
          v23 = 0;
          *&buf = v13;

          v12 = buf;
        }

        v22 = v12;

        v15 = buf;
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        if (*(this + 16))
        {
          v9 = *(this + 3);
        }

        else
        {
          v9 = (this + 17);
        }

        v16 = *(*(this + 9) + 8);
        re::Bundle::findWithBundleID(&v23, v9);
        if (v23)
        {
          v21 = v23;
        }

        else
        {
          v18 = *re::assetsLogObjects(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v20 = *(this + 3);
            }

            else
            {
              v20 = this + 17;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v20;
            _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Unable to make compiled asset '%s' file path because no valid framework was found", &buf, 0xCu);
          }

          BundleResource = 0;
        }

        v15 = v23;
      }
    }

    return BundleResource;
  }

  if (v8 > 8)
  {
    goto LABEL_39;
  }

  if (((1 << v8) & 0x198) != 0)
  {
    return BundleResource;
  }

  if (v8 == 5)
  {
    re::DynamicString::operator=(a2, (this + 40));
    if ((v4 & 1) == 0)
    {
      re::DynamicString::operator=(a2, &buf);
      if (buf)
      {
        if (BYTE8(buf))
        {
          (*(*buf + 40))();
        }
      }
    }

    return 1;
  }

  if (v8 == 6)
  {
    re::AssetPath::getPathFromResolver(&buf, this, a4);
    BundleResource = buf;
    if (buf == 1)
    {
      re::DynamicString::operator=(a2, (&buf + 8));
      if (buf)
      {
        if (*(&buf + 1))
        {
          if (v25)
          {
            (*(**(&buf + 1) + 40))();
          }
        }
      }
    }

    return BundleResource;
  }

LABEL_39:
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "filePathToAsset", 770);
  result = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
  return result;
}

uint64_t anonymous namespace::findBundleResource(re::DynamicString *a1, id *a2, _anonymous_namespace_ *a3, const re::DynamicString *a4, int a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = v12;
  if ((v12 & 1) != 0 || a5)
  {
    v14 = (*(a3 + 1) & 1) != 0 ? *(a3 + 2) : a3 + 9;
    v12 = re::Bundle::pathForResource(a2, v14, a1);
    if (v12)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    if (buf[8])
    {
      v16 = *&v32[2];
    }

    else
    {
      v16 = &buf[9];
    }

    if (re::Bundle::pathForResource(a2, v16, a1))
    {
      v17 = dyld_program_sdk_at_least();
      if (v17)
      {
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        return 1;
      }

      v18 = *re::assetsLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[8])
        {
          v19 = *&v32[2];
        }

        else
        {
          v19 = &buf[9];
        }

        if (*(a3 + 1))
        {
          v20 = *(a3 + 2);
        }

        else
        {
          v20 = a3 + 9;
        }

        v24 = 136315650;
        v25 = a6;
        v26 = 2080;
        v27 = v19;
        v28 = 2080;
        v29 = v20;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "%s compiled resource '%s' exists, but was requested as '%s'", &v24, 0x20u);
      }
    }

    v12 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v12 = (*(**buf + 40))();
    }
  }

  v21 = *re::assetsLogObjects(v12);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v22)
  {
    if (*(a3 + 1))
    {
      v23 = *(a3 + 2);
    }

    else
    {
      v23 = a3 + 9;
    }

    *buf = 136315394;
    *&buf[4] = a6;
    v31 = 2080;
    *v32 = v23;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Failed to find %s resource file '%s'", buf, 0x16u);
    return 0;
  }

  return result;
}

re::DynamicString *anonymous namespace::setExtension@<X0>(re::DynamicString *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>, const re::DynamicString *a3@<X1>)
{
  result = re::DynamicString::DynamicString(a1, this);
  if ((v6 & 1) == 0)
  {
    re::DynamicString::append(a1, ".", 1uLL);
    v8 = strlen(a3);

    return re::DynamicString::append(a1, a3, v8);
  }

  return result;
}

void re::AssetPath::getPathFromResolver(re::AssetPath *this, const re::AssetProviderRegistry *a2, os_unfair_lock_s *a3)
{
  if (a3)
  {
    v5 = (a2 + 8);

    re::AssetProviderRegistry::getPathFromResolver(this, a3, v5, (a2 + 40));
  }

  else
  {
    v6 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Tried to open resolver asset path without a resolve manager defined", v7, 2u);
    }

    *this = 0;
  }
}

uint64_t re::AssetPath::temp_filePathToSourceAssetInBundle(re::AssetPath *this, re::DynamicString *a2, os_unfair_lock_s *a3)
{
  v5 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v6 = *this;
  if (*this <= 2)
  {
    switch(v6)
    {
      case 0:
        return v5;
      case 1:
        if (*(this + 16))
        {
          v9 = *(this + 3);
        }

        else
        {
          v9 = (this + 17);
        }

        re::Bundle::searchForAppOrAppExtension(&v23, v9);
        if (v23)
        {
          if (*(this + 48))
          {
            v11 = *(this + 7);
          }

          else
          {
            v11 = this + 49;
          }

          v17 = re::Bundle::pathForResource(&v23, v11, a2);
          if (v17)
          {
            goto LABEL_45;
          }

          v14 = *re::assetsLogObjects(v17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 48))
            {
              v18 = *(this + 7);
            }

            else
            {
              v18 = this + 49;
            }

            *buf = 136315138;
            *v25 = v18;
            v21 = "Failed to find app resource file '%s'";
            goto LABEL_57;
          }
        }

        else
        {
          v14 = *re::assetsLogObjects(v10);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v15 = *(this + 3);
            }

            else
            {
              v15 = this + 17;
            }

            *buf = 136315138;
            *v25 = v15;
            v21 = "Unable to make source asset file path because missing app '%s'";
            goto LABEL_57;
          }
        }

        break;
      case 2:
        if (*(this + 16))
        {
          v8 = *(this + 3);
        }

        else
        {
          v8 = (this + 17);
        }

        re::Bundle::findWithBundleID(&v23, v8);
        if (v23)
        {
          if (*(this + 48))
          {
            v13 = *(this + 7);
          }

          else
          {
            v13 = this + 49;
          }

          v19 = re::Bundle::pathForResource(&v23, v13, a2);
          if (v19)
          {
LABEL_45:
            v5 = 1;
LABEL_59:

            return v5;
          }

          v14 = *re::assetsLogObjects(v19);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 48))
            {
              v20 = *(this + 7);
            }

            else
            {
              v20 = this + 49;
            }

            *buf = 136315138;
            *v25 = v20;
            v21 = "Failed to find framework resource file '%s'";
LABEL_57:
            _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
          }
        }

        else
        {
          v14 = *re::assetsLogObjects(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v16 = *(this + 3);
            }

            else
            {
              v16 = this + 17;
            }

            *buf = 136315138;
            *v25 = v16;
            v21 = "Unable to make compiled asset '%s' file path because no valid framework was found";
            goto LABEL_57;
          }
        }

        break;
      default:
LABEL_14:
        re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "temp_filePathToSourceAssetInBundle", 825);
        _os_crash("assertion failure: (!Unreachable code) ");
        __break(1u);
        goto LABEL_15;
    }

    v5 = 0;
    goto LABEL_59;
  }

  if (v6 <= 5)
  {
    if ((v6 - 3) < 2)
    {
      return v5;
    }

    if (v6 == 5)
    {
      if (*(this + 48))
      {
        v7 = *(this + 7);
      }

      else
      {
        v7 = this + 49;
      }

      re::DynamicString::assignf(a2, "%s", v7);
      return 1;
    }

    goto LABEL_14;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      return v5;
    }

    goto LABEL_14;
  }

LABEL_15:
  re::AssetPath::getPathFromResolver(buf, this, a3);
  v5 = buf[0];
  if (buf[0] == 1)
  {
    re::DynamicString::operator=(a2, &v25[4]);
    if (buf[0] & 1) != 0 && *&v25[4] && (v26)
    {
      (*(**&v25[4] + 40))();
    }
  }

  return v5;
}

uint64_t re::AssetPath::initMemoryAssetPath(void *a1, const char *a2, uint64_t a3)
{
  *a1 = 3;
  if (a1[2])
  {
    a1[2] = 1;
    v6 = a1[3];
  }

  else
  {
    *(a1 + 16) = 0;
    v6 = a1 + 17;
  }

  *v6 = 0;
  a1[9] = a3;
  re::DynamicString::operator=((a1 + 5), v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::AssetPath::initSingleFileArchiveAssetPath(uint64_t a1, char *__s, uint64_t a3)
{
  *a1 = 7;
  if (*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v5 = *(a1 + 24);
  }

  else
  {
    *(a1 + 16) = 0;
    v5 = (a1 + 17);
  }

  *v5 = 0;
  v7[0] = __s;
  v7[1] = strlen(__s);
  result = re::DynamicString::operator=((a1 + 40), v7);
  *(a1 + 72) = a3;
  return result;
}

uint64_t re::AssetPath::initAssetIdAssetPath(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = 8;
  if (*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v5 = *(a1 + 24);
  }

  else
  {
    *(a1 + 16) = 0;
    v5 = (a1 + 17);
  }

  *v5 = 0;
  re::DynamicString::format(&v7, "%llu.%s", a2, a2, *(a3 + 8));
  re::DynamicString::operator=((a1 + 40), &v7);
  result = v7;
  if (v7 && (v8 & 1) != 0)
  {
    result = (*(*v7 + 40))();
  }

  *(a1 + 72) = a3;
  return result;
}

BOOL re::AssetPath::getAssetId(re::AssetPath *this, unint64_t *a2)
{
  if (*this != 8)
  {
    return 0;
  }

  if (*(this + 48))
  {
    v2 = *(this + 7);
  }

  else
  {
    v2 = this + 49;
  }

  return sscanf(v2, "%llu", a2) == 1;
}

char *anonymous namespace::hasExtension(uint64_t a1, const char *a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 9);
  }

  result = strrchr(v3, 46);
  if (result)
  {
    return (strcmp(result + 1, a2) == 0);
  }

  return result;
}

re::DynamicString *re::AssetPath::initPeerAssetPath(uint64_t a1, char *__s, char *a3, uint64_t a4)
{
  *a1 = 4;
  v9 = __s;
  v10 = strlen(__s);
  re::DynamicString::operator=((a1 + 8), &v9);
  v7 = strlen(a3);
  v9 = a3;
  v10 = v7;
  result = re::DynamicString::operator=((a1 + 40), &v9);
  *(a1 + 72) = a4;
  return result;
}

re::DynamicString *re::AssetPath::invalidAssetPath@<X0>(uint64_t *__return_ptr a1@<X8>, re::AssetPath *this@<X0>)
{
  *a1 = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  a1[1] = this;
  v4 = (a1 + 1);
  re::DynamicString::setCapacity(a1 + 1, 0);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = this;
  re::DynamicString::setCapacity(a1 + 5, 0);
  a1[9] = 0;
  *a1 = 6;
  v6 = "invalidResolver";
  v7 = 15;
  re::DynamicString::operator=(v4, &v6);
  v6 = "none";
  v7 = 4;
  result = re::DynamicString::operator=((a1 + 5), &v6);
  a1[9] = 0;
  return result;
}

const char *re::AssetPath::removingCompiledExtension@<X0>(re::AssetPath *this@<X0>, uint64_t a2@<X8>)
{
  result = strrchr(this, 46);
  if (result && (v5 = result, result = strncmp(".compiled", result, 9uLL), !result))
  {
    *(a2 + 8) = this;
    *(a2 + 16) = v5 - this;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

re::AssetPath *re::AssetPath::fixLegacyPath(re::AssetPath *this, const char *a2)
{
  v2 = this;
  v8 = *MEMORY[0x1E69E9840];
  strcpy(__s1, "engine:");
  if (!strncmp(__s1, this, 7uLL) || !strncmp("framework:", v2, 0xAuLL) && re::isEngineFrameworkPath((v2 + 10), v3))
  {
    re::AssetPath::removingCompiledExtension(v2, v5);
    if (v5[0] == 1)
    {
      return v6;
    }
  }

  strlen(v2);
  return v2;
}

char *re::AssetPath::getAssetTypeNameFromPath(re::AssetPath *this, const char *a2)
{
  result = strrchr(this, 46);
  if (result)
  {
    if (!strncmp("compiled", this, 8uLL))
    {
      return this + 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *re::AssetPath::getAssetTypeFromFilePath(re::AssetPath *this, re::internal::AssetTypeRegistry *a2, const re::internal::AssetTypeRegistry *a3)
{
  result = strrchr(this, 46);
  if (result)
  {
    v5 = result;
    if (strncmp("compiled", result + 1, 8uLL) || (result = re::internal::AssetTypeRegistry::assetTypeWithName(a2, v5 + 9)) == 0)
    {

      return re::internal::AssetTypeRegistry::assetTypeWithExtension(a2, v5 + 1);
    }
  }

  return result;
}

BOOL re::AssetPath::pathIsAppBased(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >> 1;
  if ((v1 & 1) == 0)
  {
    v2 = (v1 >> 1) & 0x7C;
  }

  if (v2 < 4)
  {
    return 0;
  }

  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 9);
  }

  return strncmp(v3, "app:", 4uLL) == 0;
}

char *re::AssetPath::updateWithCompiledExtension(char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(a2 + 8);
    v4 = (*(result + 1) & 1) != 0 ? *(result + 2) : result + 9;
    result = strrchr(v4, 46);
    if (result)
    {
      result = strcmp(result + 1, v3);
      if (result)
      {
        re::DynamicString::append(v2, ".", 1uLL);
        v5 = strlen(v3);

        return re::DynamicString::append(v2, v3, v5);
      }
    }
  }

  return result;
}

uint64_t zip_find_central_directory(void *a1)
{
  v3 = *(a1 + 137);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v44 = v1;
  v45 = v2;
  *(a1 + 137) = v3 & 0xFD;
  v6 = a1[19];
  v7 = a1[20];
  if (v7 == v6)
  {
    v8 = a1 + 23;
    v7 = a1[19];
  }

  else
  {
    v8 = a1 + 23;
    v9 = a1[22];
    v10 = &v6[v9 / 0x27];
    v11 = *v10;
    v12 = *v10 + 104 * (v9 % 0x27);
    v13 = v6[(a1[23] + v9) / 0x27] + 104 * ((a1[23] + v9) % 0x27);
    if (v12 != v13)
    {
      do
      {
        if (*(v12 + 31) < 0)
        {
          operator delete(*(v12 + 8));
          v11 = *v10;
        }

        v12 += 104;
        if (v12 - v11 == 4056)
        {
          v14 = v10[1];
          ++v10;
          v11 = v14;
          v12 = v14;
        }
      }

      while (v12 != v13);
      v6 = a1[19];
      v7 = a1[20];
    }
  }

  *v8 = 0;
  v15 = v7 - v6;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v6);
      v16 = a1[20];
      v6 = (a1[19] + 8);
      a1[19] = v6;
      v15 = (v16 - v6) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 19;
    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v17 = 39;
LABEL_18:
    a1[22] = v17;
  }

  v18 = (a1[1])(*a1, 0, 2);
  if (v18 < 0x16)
  {
    return 0;
  }

  v19 = v18;
  v20 = 0;
  if (v18 - 22 >= 0x10000)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = v18 - 22;
  }

  v22 = 1;
  for (i = -22; ; --i)
  {
    size_2[0] = 0;
    (a1[1])(*a1, v19 + i, 0);
    if ((a1[2])(*a1, size_2, 4) != 4)
    {
      goto LABEL_45;
    }

    if (size_2[0] == 101010256)
    {
      break;
    }

    v22 = v20 < v21;
    if (v21 + 1 == ++v20)
    {
      return 0;
    }
  }

  v24 = v19 + i;
  (a1[1])(*a1, v19 + i, 0);
  if ((a1[2])(*a1, v39, 22) != 22)
  {
    goto LABEL_45;
  }

  v25 = size;
  if (size)
  {
    v26 = malloc_type_malloc(size, 0x30E4C224uLL);
    if (*(a1 + 88) == 1)
    {
      free(a1[9]);
    }

    a1[9] = v26;
    a1[10] = v25;
    *(a1 + 88) = 1;
    if ((a1[2])(*a1, v26, v25) != a1[10])
    {
      goto LABEL_45;
    }
  }

  if (v24 < 0x14)
  {
    v27 = 0;
  }

  else
  {
    v27 = v19 - v20 - 42;
    (a1[1])(*a1, v27, 0);
    if ((a1[2])(*a1, size_2, 4) != 4)
    {
      goto LABEL_45;
    }
  }

  if (size_2[0] == 117853008)
  {
    (a1[1])(*a1, v27, 0);
    if ((a1[2])(*a1, v37, 20) != 20)
    {
      goto LABEL_45;
    }

    (a1[1])(*a1, v38, 0);
    if ((a1[2])(*a1, v34, 56) != 56 || v34[0] != 101075792)
    {
      goto LABEL_45;
    }

    v29 = v35;
    v28 = v36;
    a1[6] = v36;
    v30 = v29 + v28;
    goto LABEL_49;
  }

  (a1[1])(*a1, v41, 0);
  if ((a1[2])(*a1, size_2, 4) != 4)
  {
LABEL_45:
    v32 = 0;
    return v22 & v32;
  }

  if (size_2[0] == 33639248)
  {
    v28 = v41;
    v31 = v40;
    a1[6] = v41;
    v30 = v31 + v28;
  }

  else
  {
    v33 = v40;
    v28 = v19 - v40 - v20 - 22;
    a1[6] = v28;
    v30 = v19 + v33 - v20 - 22;
  }

LABEL_49:
  a1[7] = v28;
  a1[8] = v30;
  v32 = 1;
  return v22 & v32;
}

unint64_t zip_load_entry_from_central_directory(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1[6])
  {
    return 0;
  }

  if ((*(a1 + 137) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[7];
  if (v2 >= a1[8])
  {
    return 0;
  }

  (a1[1])(*a1, a1[7], 0);
  if ((a1[2])(*a1, v21, 46) != 46 || *v21 != 33639248)
  {
    return 0;
  }

  v31 = a1;
  *__p = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 36);
  v37 = 0;
  std::string::basic_string[abi:nn200100](&v29, v25);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  *&v33 = v30;
  *__p = v29;
  v36 = v21[7];
  v35[0] = v22;
  v35[9] = *&v21[5];
  if (v30 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = (a1[2])(*a1, v6, v25);
  if (v7 == v25)
  {
    v8 = v2 + v7 + 46;
    v9 = v8 + v26;
    if (v8 < v9)
    {
      v10 = 0;
      while (1)
      {
        if ((a1[2])(*a1, &v19, 4) != 4)
        {
          goto LABEL_41;
        }

        if (v19 == 65534)
        {
          break;
        }

        if (v19 == 1)
        {
          v29 = 0uLL;
          v30 = 0;
          if (v20 >= 0x18u)
          {
            v11 = 24;
          }

          else
          {
            v11 = v20;
          }

          if ((a1[2])(*a1, &v29, v11) != v11 || v20 < 8u)
          {
            goto LABEL_41;
          }

          if (v24 == -1)
          {
            v34.i64[0] = v29;
            v13 = &v29 + 1;
            v12 = 1;
          }

          else
          {
            v12 = 0;
            v13 = &v29;
          }

          v14 = v20 >> 3;
          if (v23 == -1)
          {
            if (v12 >= v14)
            {
              goto LABEL_41;
            }

            ++v12;
            v34.i64[1] = *v13;
          }

          if (v28 == -1)
          {
            if (v12 >= v14)
            {
              goto LABEL_41;
            }

            *(&v33 + 1) = *(&v29 + v12);
          }

          v8 += v20 + 4;
          v10 = 1;
          if (v8 >= v9)
          {
            goto LABEL_46;
          }
        }

        else
        {
LABEL_30:
          v8 += v20 + 4;
          if (v8 >= v9)
          {
            if (v10)
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          }
        }
      }

      if (v20 != 32 || (a1[2])(*a1, &v35[1], 32) != 32)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

LABEL_43:
    v15 = v28;
    v16.i64[0] = v23;
    v16.i64[1] = v24;
    v34 = vextq_s8(v16, v16, 8uLL);
    v17 = a1[16];
    if (a1[15] > v28)
    {
      a1[16] = ++v17;
    }

    *(&v33 + 1) = v15 | (v17 << 32);
    a1[15] = v15;
LABEL_46:
    a1[7] += v25 + v26 + v27 + 46;
    std::deque<zip_entry_t>::push_back(a1 + 18, &v31);
    v18 = a1[23] + a1[22] - 1;
    v4 = *(a1[19] + 8 * (v18 / 0x27)) + 104 * (v18 % 0x27);
  }

  else
  {
LABEL_41:
    v4 = 0;
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void *std::string::basic_string[abi:nn200100](void *a1, size_t a2)
{
  if (a2 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  *(a1 + a2) = 0;
  return a1;
}

__n128 std::deque<zip_entry_t>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<zip_entry_t>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v8 + 32) = *(a2 + 32);
  v11 = *(a2 + 64);
  result = *(a2 + 80);
  v12 = *(a2 + 48);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 64) = v11;
  *(v8 + 80) = result;
  *(v8 + 48) = v12;
  ++a1[5];
  return result;
}

{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<zip_entry_t>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  *v8 = *a2;
  v9 = (v8 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    *(v8 + 24) = *(a2 + 24);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  *(v8 + 32) = *(a2 + 32);
  result = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  *(v8 + 48) = result;
  ++a1[5];
  return result;
}

uint64_t zip_load_all_from_central_directory(void *a1)
{
  if (!zip_find_central_directory(a1))
  {
    return 0;
  }

  v2 = -1;
  do
  {
    ++v2;
  }

  while (zip_load_entry_from_central_directory(a1));
  return v2;
}

unint64_t zip_load_entry_from_file_header(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 137) & 2) == 0)
  {
    return 0;
  }

  *(a1 + 137) &= ~1u;
  v2 = a1[7];
  (a1[1])(*a1, v2, 0);
  v3 = (a1[2])(*a1, &v37, 30) == 30 && v37 == 67324752;
  if (!v3)
  {
    return 0;
  }

  v46 = a1;
  v48 = 0;
  *__p = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v55 = 0;
  v49 = v2;
  std::string::basic_string[abi:nn200100](&v44[3], v44[0]);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  v48 = v45;
  *__p = *&v44[3];
  v54 = v40;
  v51[0] = v41;
  v53 = v39;
  v6.i64[0] = v42;
  v6.i64[1] = v43;
  v50 = vextq_s8(v6, v6, 8uLL);
  if (v45 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = (a1[2])(*a1, v7, v44[0]);
  v9 = v44[0];
  if (v8 == v44[0])
  {
    v10 = v2 + v8 + 30;
    v11 = v44[1];
    v12 = v10 + v44[1];
    if (v10 >= v12)
    {
LABEL_26:
      v13 = v9 + v11 + 30;
      if ((v38 & 8) == 0)
      {
        v14 = v50.i64[1] + v13 + a1[7];
        a1[7] = v14;
LABEL_28:
        a1[6] = v14;
        std::deque<zip_entry_t>::push_back(a1 + 18, &v46);
        v15 = a1[23] + a1[22] - 1;
        v4 = *(a1[19] + 8 * (v15 / 0x27)) + 104 * (v15 % 0x27);
        goto LABEL_34;
      }

      v16 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
      v17 = (a1[1])(*a1, 0, 2);
      if (v17 - v49 >= 8 && (*(a1 + 137) & 2) != 0)
      {
        v18 = v17;
        v19 = v49 + v13;
        if (v19 + 28 <= v17)
        {
          do
          {
            v20 = v18 - v19 >= 0x10000 ? 0x10000 : v18 - v19;
            (a1[1])(*a1, v19, 0);
            if ((a1[2])(*a1, v16, v20) != v20)
            {
              break;
            }

            if (v18 - v19 >= 0x1D)
            {
              v21 = 0;
              v22 = 29;
              if (v20 > 0x1D)
              {
                v22 = v20;
              }

              v23 = v22 - 29;
              while (1)
              {
                if (*&v16[v21] == 134695760)
                {
                  v24 = v21 + 4;
                  v25 = v21 + 4;
                  if (v21 + 4 < v20)
                  {
                    while (1)
                    {
                      v26 = *&v16[v25];
                      if (v26 == 33639248 || v26 == 67324752)
                      {
                        break;
                      }

                      if (v20 == ++v25)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  if (v25 != v20)
                  {
                    break;
                  }
                }

LABEL_53:
                v3 = v21++ == v23;
                if (v3)
                {
                  goto LABEL_55;
                }
              }

              a1[7] = v25 + v19;
              v29 = v25 - v21;
              if (v29 == 24)
              {
                v34 = &v16[v24];
                v31 = *&v16[v24];
                v32 = *&v16[v24 + 4];
                v33 = *(v34 + 12);
              }

              else
              {
                if (v29 != 16)
                {
                  break;
                }

                v30 = &v16[v24];
                v31 = *&v16[v24];
                v32 = *&v16[v24 + 4];
                v33 = *(v30 + 2);
              }

              v51[0] = v31;
              v50.i64[0] = v33;
              v50.i64[1] = v32;
              (a1[1])(*a1);
              free(v16);
              v14 = a1[7];
              goto LABEL_28;
            }

LABEL_55:
            v28 = v20 + v19;
            v19 = v20 + v19 - 28;
          }

          while (v28 <= v18);
        }
      }

      free(v16);
    }

    else
    {
      while ((a1[2])(*a1, &v35, 4) == 4)
      {
        if (v35 == 1)
        {
          *&v44[3] = 0;
          *&v44[7] = 0;
          if (v36 < 0x10u || (a1[2])(*a1, &v44[3], 16) != 16)
          {
            break;
          }

          v50 = *&v44[3];
        }

        else if (v35 == 65534 && (v36 != 32 || (a1[2])(*a1, &v51[1], 32) != 32))
        {
          break;
        }

        v10 += v36 + 4;
        if (v10 >= v12)
        {
          v9 = v44[0];
          v11 = v44[1];
          goto LABEL_26;
        }
      }
    }
  }

  v4 = 0;
LABEL_34:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

unint64_t zip_create_entry(void *a1, uint64_t a2, __int16 a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 < 0 == (a4 == 0))
  {
    return 0;
  }

  v16 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v10 = a1;
  MEMORY[0x1E6905F60](__p, a2);
  *(&v12 + 1) = -1;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, 20);
  *&v15[20] = a3;
  *&v15[22] = 0;
  v16 = a4;
  if (SBYTE7(v12) < 0 && __p[1] >> 16)
  {
    v7 = 0;
LABEL_7:
    operator delete(__p[0]);
    return v7;
  }

  std::deque<zip_entry_t>::push_back(a1 + 18, &v10);
  v8 = a1[23] + a1[22] - 1;
  v7 = *(a1[19] + 8 * (v8 / 0x27)) + 104 * (v8 % 0x27);
  if (SBYTE7(v12) < 0)
  {
    goto LABEL_7;
  }

  return v7;
}

uint64_t *zip_append_entry(void *a1, uint64_t a2, __int16 a3, Bytef *a4, unint64_t a5)
{
  result = zip_create_entry(a1, a2, a3, 0);
  if (result)
  {
    v8 = result;
    if (zip_entry_save_data(result, a4, a5))
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t zip_save_central_directory(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1[14];
  if (!v1)
  {
    return 1;
  }

  if (a1[6] % a1[13])
  {
    *(a1 + 137) &= 0xFCu;
    entry = zip_create_entry(a1, ".align/", 0, 0);
    *(entry + 32) = a1[6];
    result = zip_write_file_header(entry, a1[13], 3);
    if (!result)
    {
      return result;
    }

    a1[6] += result;
    v1 = a1[14];
  }

  (a1[1])(*a1);
  v5 = a1[19];
  if (a1[20] == v5)
  {
    v8 = a1 + 23;
  }

  else
  {
    v6 = a1[22];
    v7 = *(v5 + 8 * (v6 / 0x27)) + 104 * (v6 % 0x27);
    v8 = a1 + 23;
    v9 = *(v5 + 8 * ((a1[23] + v6) / 0x27)) + 104 * ((a1[23] + v6) % 0x27);
    if (v7 != v9)
    {
      v10 = (v5 + 8 * (v6 / 0x27));
      while (1)
      {
        v11 = *(v7 + 31);
        if (v11 < 0 && *(v7 + 16) >> 16)
        {
          return 0;
        }

        if ((a1[17] & 1) != 0 || *(v7 + 52) || *(v7 + 44))
        {
          break;
        }

        v32 = *(v7 + 36);
        *v45 = 33639248;
        *&v45[4] = 4926;
        if (v32)
        {
          goto LABEL_14;
        }

        v13 = 0;
        v12 = 20;
LABEL_15:
        *&v45[6] = v12;
        *&v45[8] = 0;
        *&v45[10] = *(v7 + 92);
        v14 = *(v7 + 56);
        v46 = *(v7 + 94);
        LODWORD(v47) = v14;
        if ((v11 & 0x80000000) != 0)
        {
          LOWORD(v11) = *(v7 + 16);
        }

        v15 = (v7 + 8);
        WORD2(v48) = v11;
        LODWORD(v49) = 0;
        WORD2(v49) = 0;
        v16 = *(v7 + 31);
        if (v16 < 0)
        {
          v16 = *(v7 + 16);
          v17 = -2119958528;
          if (v16)
          {
            v18 = *v15;
LABEL_22:
            if (*(v18 + v16 - 1) == 47)
            {
              v17 = 1107230720;
            }

            else
            {
              v17 = -2119958528;
            }
          }
        }

        else
        {
          v17 = -2119958528;
          if (*(v7 + 31))
          {
            v18 = (v7 + 8);
            goto LABEL_22;
          }
        }

        *(&v49 + 6) = v17;
        v19 = *(v7 + 60);
        v20 = *(v7 + 48);
        if (v13)
        {
          v20 = -1;
        }

        v21 = *(v7 + 40);
        if (v13)
        {
          v21 = -1;
        }

        HIDWORD(v47) = v20;
        LODWORD(v48) = v21;
        v22 = *(v7 + 32);
        v23 = 28;
        if (v13)
        {
          v22 = -1;
        }

        else
        {
          v23 = 0;
        }

        *(&v49 + 10) = v22;
        v24 = v19 | *(v7 + 68) | *(v7 + 76) | *(v7 + 84);
        v25 = v24 == 0;
        v26 = v24 != 0;
        v27 = 36;
        if (v25)
        {
          v27 = 0;
        }

        v28 = v27 + v23;
        HIWORD(v48) = v28;
        if ((v28 + v11) >> 16)
        {
          return 0;
        }

        v29 = (a1[3])(*a1, v45, 46);
        a1[14] += v29;
        if (v29 != 46)
        {
          return 0;
        }

        if (*(v7 + 31) < 0)
        {
          v15 = *v15;
        }

        v30 = (a1[3])(*a1, v15, WORD2(v48));
        a1[14] += v30;
        if (v30 != WORD2(v48))
        {
          return 0;
        }

        if (v13)
        {
          v51 = *(v7 + 40);
          v52 = *(v7 + 32);
          if (!zip_write_extra_field(a1, 1, &v51, 24))
          {
            return 0;
          }
        }

        if (v26 && !zip_write_extra_field(a1, 65534, v7 + 60, 32))
        {
          return 0;
        }

        v7 += 104;
        if (v7 - *v10 == 4056)
        {
          v31 = v10[1];
          ++v10;
          v7 = v31;
        }

        if (v7 == v9)
        {
          v8 = a1 + 23;
          goto LABEL_51;
        }
      }

      *v45 = 33639248;
      *&v45[4] = 4926;
LABEL_14:
      v12 = 45;
      v13 = 1;
      goto LABEL_15;
    }
  }

LABEL_51:
  v33 = a1[14] - v1;
  v34 = a1[6];
  v35 = v34 + v33;
  a1[8] = v34 + v33;
  v36 = *(a1 + 136) | (HIDWORD(v34) != 0) | (HIDWORD(v33) != 0);
  v37 = a1[23];
  if (a1[17] & 1 | (HIDWORD(v34) != 0) | (HIDWORD(v33) != 0))
  {
    *v45 = 101075792;
    *&v45[4] = -101075744;
    v47 = 0;
    v48 = v37;
    v46 = 2954046;
    *&v49 = v37;
    *(&v49 + 1) = v33;
    v50 = v34;
    v38 = (a1[3])(*a1, v45, 56);
    a1[14] += v38;
    if (v38 != 56)
    {
      return 0;
    }

    *&v51 = 117853008;
    *(&v51 + 1) = v35;
    LODWORD(v52) = 1;
    v39 = (a1[3])(*a1, &v51, 20);
    a1[14] += v39;
    if (v39 != 20)
    {
      return 0;
    }

    v37 = *v8;
  }

  if (!(v37 >> 16))
  {
    v40 = a1[10];
    if (!(v40 >> 16))
    {
      *v45 = 101010256;
      *&v45[8] = v37;
      *&v45[10] = v37;
      v41 = (v36 & 1) != 0 ? -1 : v33;
      v46 = v41;
      v42 = (v36 & 1) != 0 ? -1 : *(a1 + 12);
      LODWORD(v47) = v42;
      WORD2(v47) = v40;
      v43 = (a1[3])(*a1, v45, 22);
      a1[14] += v43;
      if (v43 == 22)
      {
        if (!a1[10] || (v44 = (a1[3])(*a1, a1[9]), a1[14] += v44, v44 == a1[10]))
        {
          a1[14] = 0;
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL zip_write_extra_field(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a2;
  v10[1] = a4;
  v7 = (a1[3])(*a1, v10, 4);
  a1[14] += v7;
  if (v7 != 4)
  {
    return 0;
  }

  v8 = (a1[3])(*a1, a3, a4);
  a1[14] += v8;
  return v8 == a4;
}

void **zip_clone_entry(uint64_t a1, void **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 60);
  if (*(a2 + 60))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 68) == 0;
  }

  v7 = v5 && *(a2 + 76) == 0 && *(a2 + 84) == 0;
  v8 = !v7;
  if (!v7 || !*(a2 + 46))
  {
    *(a1 + 137) &= 0xFCu;
    v9 = a2 + 1;
    if (*(a2 + 31) < 0)
    {
      v9 = *v9;
    }

    entry = zip_create_entry(a1, v9, *(a2 + 46), *(a2 + 25));
    *(entry + 5) = *(a2 + 5);
    entry[4] = *(a1 + 48);
    *(entry + 94) = *(a2 + 94);
    *(entry + 14) = *(a2 + 14);
    v11 = v4[1];
    *(entry + 60) = *v4;
    *(entry + 76) = v11;
    v12 = zip_entry_data_offset(a2);
    if (v12)
    {
      v13 = v12;
      v14 = v12 - a2[4];
      if (v14 <= 0x10000)
      {
        v15 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
        ((*a2)[1])(**a2, a2[4], 0);
        if (((*a2)[2])(**a2, v15, v14) == v14)
        {
          ((*entry)[1])(**entry, entry[4], 0);
          v16 = *entry;
          v17 = ((*entry)[3])(**entry, v15, v14);
          v16[14] += v17;
          if (v17 == v14)
          {
            v18 = entry[4];
            CC_SHA256_Init(&c);
            if (!a2[6])
            {
LABEL_29:
              *(a1 + 48) += entry[6] + v14;
              if (!v8 && entry[5])
              {
                CC_SHA256_Final(md, &c);
                v24 = v29;
                *(entry + 60) = *md;
                *(entry + 76) = v24;
              }

              goto LABEL_35;
            }

            v19 = 0;
            v26 = v18 + v14;
            while (1)
            {
              ((*a2)[1])(**a2, v19 + v13, 0);
              v20 = a2[6] - v19 >= 0x10000 ? 0x10000 : (a2[6] - v19);
              v21 = ((*a2)[2])(**a2, v15, v20);
              ((*entry)[1])(**entry, &v26[v19], 0);
              v22 = *entry;
              v23 = ((*entry)[3])(**entry, v15, v21);
              v22[14] += v23;
              if (v21 != v23)
              {
                break;
              }

              if (!v8)
              {
                CC_SHA256_Update(&c, v15, v21);
              }

              v19 += v21;
              if (v19 >= a2[6])
              {
                goto LABEL_29;
              }
            }
          }
        }

        entry = 0;
LABEL_35:
        free(v15);
        return entry;
      }
    }
  }

  return 0;
}

void *zip_set_comment(uint64_t a1, const void *a2, size_t size)
{
  v6 = malloc_type_malloc(size, 0x30E4C224uLL);
  if (*(a1 + 88) == 1)
  {
    free(*(a1 + 72));
  }

  *(a1 + 72) = v6;
  *(a1 + 80) = size;
  *(a1 + 88) = 1;

  return memcpy(v6, a2, size);
}

double zip_calculate_signature@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1[23];
  if (v3)
  {
    CC_SHA256_Init(&c);
    v5 = 0;
    while (1)
    {
      v6 = *(a1[19] + 8 * ((v5 + a1[22]) / 0x27uLL)) + 104 * ((v5 + a1[22]) % 0x27uLL);
      v7 = (v6 + 8);
      v8 = *(v6 + 31);
      if (v8 < 0)
      {
        v8 = *(v6 + 16);
        if (!v8)
        {
          goto LABEL_9;
        }

        v9 = *v7;
      }

      else
      {
        if (!*(v6 + 31))
        {
          goto LABEL_9;
        }

        v9 = (v6 + 8);
      }

      if (v9[v8 - 1] != 47)
      {
LABEL_9:
        data = 0u;
        v18 = 0u;
        v10 = *(v6 + 76);
        data = *(v6 + 60);
        v18 = v10;
        if (data)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(&data + 1) == 0;
        }

        if (v11 && v10 == 0 && *(&v10 + 1) == 0)
        {
          break;
        }

        if (*(v6 + 31) < 0)
        {
          v7 = *v7;
        }

        v14 = strlen(v7);
        CC_SHA256_Update(&c, v7, v14);
        CC_SHA256_Update(&c, &data, 0x20u);
      }

      if (v3 == ++v5)
      {
        CC_SHA256_Final(a2, &c);
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t zip_close(void *a1)
{
  v2 = zip_save_central_directory(a1);
  v3 = a1[4];
  if (v3)
  {
    v3(*a1);
  }

  std::deque<zip_entry_t>::~deque[abi:nn200100]((a1 + 18));
  if (*(a1 + 88) == 1)
  {
    free(a1[9]);
  }

  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 88) = 0;
  MEMORY[0x1E6906520](a1, 0x1080C4077E95D12);
  return v2;
}

BOOL zip_verify_crc_archive(void *a1)
{
  v2 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
  v3 = a1[23];
  if (v3)
  {
    v4 = a1[22];
    v5 = *(a1[19] + 8 * (v4 / 0x27));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 + 104 * (v4 % 0x27);
      while (1)
      {
        v9 = (v8 + 8);
        v10 = *(v8 + 31);
        if (v10 < 0)
        {
          v10 = *(v8 + 16);
          if (v10)
          {
            v9 = *v9;
LABEL_9:
            if (*(v9 + v10 - 1) == 47)
            {
              goto LABEL_16;
            }
          }
        }

        else if (*(v8 + 31))
        {
          goto LABEL_9;
        }

        data_begin = zip_entry_load_data_begin(v8);
        v12 = crc32(0, 0, 0);
        v13 = zip_entry_load_data_read(v2, 0x10000uLL, data_begin);
        if (v13)
        {
          v14 = v13;
          do
          {
            v12 = crc32(v12, v2, v14);
            v15 = zip_entry_load_data_read(v2, 0x10000uLL, data_begin);
            v14 = v15;
          }

          while (v15);
        }

        v16 = *(v8 + 56);
        if (data_begin)
        {
          zip_entry_load_data_end(data_begin);
        }

        if (v16 != v12)
        {
          goto LABEL_21;
        }

LABEL_16:
        v7 = ++v6 >= v3;
        if (v6 != v3)
        {
          v17 = a1[22] + v6;
          v18 = *(a1[19] + 8 * (v17 / 0x27));
          v8 = v18 + 104 * (v17 % 0x27);
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_21:
  free(v2);
  return v7;
}

uint64_t std::deque<zip_entry_t>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x27];
    v7 = *v6;
    v8 = *v6 + 104 * (v5 % 0x27);
    v9 = v3[(*(a1 + 40) + v5) / 0x27] + 104 * ((*(a1 + 40) + v5) % 0x27);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 104;
        if (v8 - v7 == 4056)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 19;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 39;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>::operator+=[abi:nn200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x4EC4EC4EC4EC4EC5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 38 - v3;
      v6 = &v2[-(v5 / 0x27)];
      *result = v6;
      v4 = *v6 + 104 * (39 * (v5 / 0x27) - v5) + 3952;
    }

    else
    {
      *result = &v2[v3 / 0x27];
      v4 = v2[v3 / 0x27] + 104 * (v3 % 0x27);
    }

    result[1] = v4;
  }

  return result;
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>,std::__copy_impl::_CopySegment<std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>>>(uint64_t *a1, std::string::size_type a2, uint64_t *a3, uint64_t a4, std::string::size_type *a5)
{
  if (a1 == a3)
  {
    size = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    size = *a5;
    v8 = a5[1];
    for (i = *a1 + 4056; ; i = v12 + 4056)
    {
      std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(&v14, a2, i, size, v8);
      v8 = v14.__r_.__value_.__r.__words[2];
      size = v14.__r_.__value_.__l.__size_;
      *a5 = v14.__r_.__value_.__l.__size_;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(&v14, a2, a4, size, v8);
  result = *&v14.__r_.__value_.__l.__size_;
  *a5 = *&v14.__r_.__value_.__r.__words[1];
  return result;
}

std::string *std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(std::string *result, std::string::size_type a2, uint64_t a3, void *a4, std::string::size_type a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - a5 + 4056) >> 3);
    if (0x4EC4EC4EC4EC4EC5 * ((a3 - v7) >> 3) < v11)
    {
      v11 = 0x4EC4EC4EC4EC4EC5 * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a5 = v16;
  }

  v12 = v7 + 104 * v11;
  do
  {
    *a5 = *v7;
    result = std::string::operator=((a5 + 8), (v7 + 8));
    *(a5 + 32) = *(v7 + 32);
    v14 = *(v7 + 64);
    v13 = *(v7 + 80);
    v15 = *(v7 + 48);
    *(a5 + 96) = *(v7 + 96);
    *(a5 + 64) = v14;
    *(a5 + 80) = v13;
    *(a5 + 48) = v15;
    a5 += 104;
    v7 += 104;
  }

  while (v7 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a5 == *v6 + 4056)
  {
    v17 = v6[1];
    ++v6;
    a5 = v17;
  }

LABEL_14:
  v8->__r_.__value_.__r.__words[0] = v12;
  v8->__r_.__value_.__l.__size_ = v6;
  v8->__r_.__value_.__r.__words[2] = a5;
  return result;
}

void std::__split_buffer<zip_entry_t *>::emplace_back<zip_entry_t *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<zip_entry_t *>::emplace_front<zip_entry_t *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::deque<zip_entry_t>::__add_back_capacity(unint64_t *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x27;
  v4 = v2 - 39;
  if (!v3)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v9);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v10 = *v5;
  a1[1] = (v5 + 1);
  std::__split_buffer<zip_entry_t *>::emplace_back<zip_entry_t *&>(a1, &v10);
}

uint64_t re::internal::AssetNetworkLoader::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 160) = re::globalAllocators(a1)[2];
  *(a1 + 16) = a4;
  v22[0] = &unk_1F5CB92D0;
  v22[1] = a1;
  v22[3] = v22;
  v6 = *(a1 + 8);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::__value_func[abi:nn200100](v21, v22);
  (*(*v6 + 24))(v6, v21);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v21);
  v20[0] = &unk_1F5CB9360;
  v20[1] = a1;
  v20[3] = v20;
  v7 = *(a1 + 8);
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:nn200100](v19, v20);
  (*(*v7 + 32))(v7, v19);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v19);
  re::dispatch::Queue::global(&v18, 0x21, 0);
  v14 = 0x100000001;
  v15 = 0;
  v16 = &v18;
  re::dispatch::Queue::make("com.apple.re.AssetNetworkLoaderBackgroundSerializer", &v14, &v17);
  v8 = (a1 + 392);
  if ((a1 + 392) != &v17)
  {
    v9 = v17;
    v17 = 0;
    v10 = *v8;
    *v8 = v9;
  }

  v11 = dispatch_group_create();
  v12 = *(a1 + 400);
  *(a1 + 400) = v11;

  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v20);
  return std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v22);
}

uint64_t re::internal::AssetNetworkLoader::deinit(re::internal::AssetNetworkLoader *this)
{
  v49 = *MEMORY[0x1E69E9840];
  atomic_store(1u, this + 384);
  v2 = dispatch_time(0, 180000000000);
  v3 = dispatch_group_wait(*(this + 50), v2);
  if (v3)
  {
    v4 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v48 = 180;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "AssetNetworkLoader::deinit: async group didn't complete for %llu seconds", buf, 0xCu);
    }
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    v6 = v5 << 6;
    v7 = (*(this + 7) + 40);
    do
    {
      re::AssetHandle::~AssetHandle(v7);
      re::DynamicString::deinit((v7 - 32));
      v7 = (v7 + 64);
      v6 -= 64;
    }

    while (v6);
  }

  ++*(this + 12);
  os_unfair_lock_lock(this + 64);
  v8 = *(this + 35);
  *(this + 35) = 0;
  if (v8)
  {
    v9 = 112 * v8;
    v10 = *(this + 37) + 64;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v10);
      re::DynamicString::deinit((v10 - 32));
      re::AssetHandle::~AssetHandle((v10 - 56));
      v10 += 112;
      v9 -= 112;
    }

    while (v9);
  }

  ++*(this + 72);
  os_unfair_lock_unlock(this + 64);
  v11 = *(this + 24);
  if (v11)
  {
    v12 = 0;
    v13 = *(this + 10);
    while (1)
    {
      v14 = *v13;
      v13 += 20;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(this + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v15 = *(this + 24);
  while (v12 != v11)
  {
    re::AssetHandle::AssetHandle(buf, (*(this + 10) + 80 * v12 + 48));
    v16 = *&v48[4];
    if (*&v48[4])
    {
      os_unfair_lock_lock((*&v48[4] + 512));
      v17 = *this;
      v18 = *&v48[4];
      re::AssetManager::putEntryInFailedState_entryStateLocked(v17, v18, 302, v42);
      if (*&v42[0])
      {
        if (BYTE8(v42[0]))
        {
          (*(**&v42[0] + 40))();
        }

        memset(v42, 0, sizeof(v42));
      }

      os_unfair_lock_unlock(v16 + 128);
    }

    re::AssetHandle::~AssetHandle(buf);
    v15 = *(this + 24);
    if (v15 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = *(this + 24);
    }

    while (v20 - 1 != v12)
    {
      LODWORD(v12) = v12 + 1;
      if ((*(*(this + 10) + 80 * v12) & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v12) = v20;
LABEL_30:
    ;
  }

  if (*(this + 23))
  {
    v21 = *(this + 22);
    if (v21)
    {
      memset_pattern16(*(this + 9), &unk_1E304C660, 4 * v21);
      v15 = *(this + 24);
    }

    if (v15)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(this + 10) + v22));
        ++v23;
        v22 += 80;
      }

      while (v23 < *(this + 24));
    }

    *(this + 23) = 0;
    *(this + 24) = 0;
    v24 = *(this + 26) + 1;
    *(this + 25) = 0x7FFFFFFF;
    *(this + 26) = v24;
  }

  v25.n128_f64[0] = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  v26 = *(this + 36);
  if (v26)
  {
    v27 = 0;
    v28 = *(this + 16);
    while (1)
    {
      v29 = *v28;
      v28 += 22;
      if (v29 < 0)
      {
        break;
      }

      if (v26 == ++v27)
      {
        LODWORD(v27) = *(this + 36);
        break;
      }
    }
  }

  else
  {
    LODWORD(v27) = 0;
  }

  v30 = *(this + 36);
  while (v27 != v26)
  {
    (*(**(this + 20) + 40))(*(this + 20), *(*(this + 16) + 88 * v27 + 48), v25);
    v30 = *(this + 36);
    if (v30 <= v27 + 1)
    {
      v31 = v27 + 1;
    }

    else
    {
      v31 = *(this + 36);
    }

    while (v31 - 1 != v27)
    {
      LODWORD(v27) = v27 + 1;
      if ((*(*(this + 16) + 88 * v27) & 0x80000000) != 0)
      {
        goto LABEL_52;
      }
    }

    LODWORD(v27) = v31;
LABEL_52:
    ;
  }

  if (*(this + 35))
  {
    v32 = *(this + 34);
    if (v32)
    {
      memset_pattern16(*(this + 15), &unk_1E304C660, 4 * v32);
      v30 = *(this + 36);
    }

    if (v30)
    {
      v33 = 0;
      for (i = 0; i < v30; ++i)
      {
        v35 = *(this + 16);
        v36 = *(v35 + v33);
        if (v36 < 0)
        {
          *(v35 + v33) = v36 & 0x7FFFFFFF;
          re::DynamicString::deinit((v35 + v33 + 8));
          v30 = *(this + 36);
        }

        v33 += 88;
      }
    }

    *(this + 35) = 0;
    *(this + 36) = 0;
    v37 = *(this + 38) + 1;
    *(this + 37) = 0x7FFFFFFF;
    *(this + 38) = v37;
  }

  v38 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  *(this + 20) = 0;
  v39 = *(this + 1);
  v46 = 0;
  (*(*v39 + 32))(v39, v45, v38);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v45);
  v40 = *(this + 1);
  v44 = 0;
  (*(*v40 + 24))(v40, v43);
  result = std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v43);
  *this = 0;
  *(this + 1) = 0;
  return result;
}

uint64_t re::internal::AssetNetworkLoader::sendFailureResponse(re *a1, uint64_t a2, uint64_t a3, re::DynamicString *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *re::assetsLogObjects(a1);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (*(a3 + 168))
    {
      v10 = *(a3 + 176);
    }

    else
    {
      v10 = a3 + 169;
    }

    *buf = 134218242;
    *v32 = a2;
    *&v32[8] = 2080;
    *&v32[10] = v10;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Sending peer asset load failure to '%llu' for '%s'", buf, 0x16u);
  }

  *&v32[12] = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicString::setCapacity(&v32[4], 0);
  *buf = 102;
  v11 = re::DynamicString::operator=(&v32[4], a4);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0, v22, v23, v24, v25, v26);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  v27 = 0;
  v28 = 0;
  if ((v12 & 1) == 0)
  {
    v17 = *re::assetsLogObjects(v12);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    if (*(a3 + 168))
    {
      v21 = *(a3 + 176);
    }

    else
    {
      v21 = a3 + 169;
    }

    *v29 = 136315138;
    v30 = v21;
    v19 = "Failed to serialize network message for '%s'";
    goto LABEL_23;
  }

  v13 = *(a1 + 1);
  v14 = v28;
  v15 = (*(*v13 + 16))(v13, a2, v28, v27);
  if ((v15 & 1) == 0)
  {
    v17 = *re::assetsLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 168))
      {
        v18 = *(a3 + 176);
      }

      else
      {
        v18 = a3 + 169;
      }

      *v29 = 136315138;
      v30 = v18;
      v19 = "Failed to send failure message for '%s'";
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v19, v29, 0xCu);
    }
  }

LABEL_15:
  result = *&v32[4];
  if (*&v32[4])
  {
    if (v32[12])
    {
      return (*(**&v32[4] + 40))();
    }
  }

  return result;
}

void re::internal::AssetNetworkLoader::queueAssetSerializationResponse(uint64_t a1, uint64_t *a2)
{
  re::AssetHandle::AssetHandle(v13, (a2 + 5));
  re::DynamicString::DynamicString(&v10, (a2 + 1));
  v4 = *a2;
  v5 = *(a1 + 392);
  v9 = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1174405120;
  v6[2] = ___ZN2re8internal18AssetNetworkLoader31queueAssetSerializationResponseERKNS0_22NetworkLoadRequestDataE_block_invoke;
  v6[3] = &__block_descriptor_tmp_50;
  v6[4] = a1;
  re::AssetHandle::AssetHandle(v7, v13);
  re::DynamicString::DynamicString(v8, &v10);
  v8[4] = v4;
  re::dispatch::Group::async((a1 + 400), &v9, v6);

  if (v8[0])
  {
    if (v8[1])
    {
      (*(*v8[0] + 40))();
    }

    memset(v8, 0, 32);
  }

  re::AssetHandle::~AssetHandle(v7);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10, v12);
  }

  re::AssetHandle::~AssetHandle(v13);
}

void ___ZN2re8internal18AssetNetworkLoader31queueAssetSerializationResponseERKNS0_22NetworkLoadRequestDataE_block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *re::assetsLogObjects(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v48 = re::AssetHandle::assetInfo((a1 + 40));
    if (v48[17])
    {
      v49 = v48[18];
    }

    else
    {
      v49 = v48 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v49;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Async network serialization of '%s'", buf, 0xCu);
  }

  v5 = atomic_load((v2 + 384));
  if (v5)
  {
    v6 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v7 = *(a1 + 80);
      }

      else
      {
        v7 = a1 + 73;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset serialization for %s", buf, 0xCu);
    }

    return;
  }

  v8 = *(*v2 + 1808);
  v9 = *(a1 + 48);
  if (v9)
  {
    v9 = *(v9 + 280);
  }

  *buf = v9;
  v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v8, buf);
  v11 = (*(**v10 + 128))(*v10);
  v12 = *v10;
  v81 = 0u;
  v80 = 0u;
  re::DynamicString::setCapacity(&v80, 0);
  LODWORD(v79) = 101;
  re::DynamicString::operator=(&v80, (a1 + 64));
  v13 = (*(**(v2 + 8) + 40))(&v75);
  v74 = 0;
  v72 = 0uLL;
  v73 = 0;
  v14 = re::DynamicArray<char>::setCapacity(&v71, 0x100uLL);
  ++v73;
  v70[0] = &unk_1F5D0A7B0;
  v70[1] = &v71;
  v70[2] = 0;
  v15 = *(v2 + 16);
  v16 = *(a1 + 48);
  if (v76)
  {
    v17 = v78;
  }

  else
  {
    v17 = v77;
  }

  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0, v65, v66, v67, v68, v69);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  if ((v18 & 1) == 0)
  {
    v26 = *re::assetsLogObjects(v18);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (*(v16 + 21))
      {
        v28 = *(v16 + 22);
      }

      else
      {
        v28 = v16 + 169;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v19 = re::AssetHandle::AssetHandle(v82, v16);
  v20 = *(v16 + 3);
  re::DefaultAssetSerialize::DefaultAssetSerialize(buf, v82);
  *buf = &unk_1F5CB9868;
  LOBYTE(v94) = 0;
  re::DynamicString::DynamicString(&v95, &v85);
  v97 = v20;
  if (v85 && (v86 & 1) != 0)
  {
    (*(*v85 + 40))(v85, v87, v21);
  }

  v22 = (*(*v12 + 128))(v12);
  re::AssetHandle::serializableAsset(&v85, v82);
  v23 = (**v15)(v15, v70, v22, v85, buf);
  if (v23)
  {
    v24 = (*(*v12 + 72))(v12, v70, v85, 0);
    if (v24)
    {
      v25 = 1;
      goto LABEL_31;
    }

    v29 = *re::assetsLogObjects(v24);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    if (*(v16 + 21))
    {
      v64 = *(v16 + 22);
    }

    else
    {
      v64 = v16 + 169;
    }

    *v83 = 136315138;
    v84 = v64;
    v63 = "Serializing compiled file blob failed '%s'";
LABEL_107:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v63, v83, 0xCu);
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v29 = *re::assetsLogObjects(v23);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    if (*(v16 + 21))
    {
      v62 = *(v16 + 22);
    }

    else
    {
      v62 = v16 + 169;
    }

    *v83 = 136315138;
    v84 = v62;
    v63 = "Serializing compiled file failed '%s'";
    goto LABEL_107;
  }

  v25 = 0;
LABEL_31:
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v85);
  *buf = &unk_1F5CB9868;
  if (v95)
  {
    if (BYTE8(v95))
    {
      (*(*v95 + 40))(v95, v96, v30);
    }

    v96 = 0u;
    v95 = 0u;
  }

  *buf = &unk_1F5CB98A0;
  if (buf[8] == 1)
  {
    if (*&v91[8])
    {
      if (v91[16])
      {
        (*(**&v91[8] + 40))(*&v91[8], v92, v30);
      }

      v92 = 0u;
      *&v91[8] = 0u;
    }

    if (v89 && (v90 & 1) != 0)
    {
      (*(*v89 + 40))(v89, *(&v90 + 1), v30);
    }
  }

  re::AssetHandle::~AssetHandle(v82);
  if ((v25 & 1) == 0)
  {
LABEL_45:
    v32 = *re::assetsLogObjects(v27);
    v27 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      v57 = re::AssetHandle::assetInfo((a1 + 40));
      if (v57[17])
      {
        v58 = v57[18];
      }

      else
      {
        v58 = v57 + 137;
      }

      if (v76)
      {
        v59 = v78;
      }

      else
      {
        v59 = v77;
      }

      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 2080;
      *&buf[14] = v59;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failed to create a response message for '%s' for peer '%s'", buf, 0x16u);
    }

    v31 = 1;
    goto LABEL_47;
  }

  v31 = 0;
LABEL_47:
  v33 = atomic_load((v2 + 384));
  if (v33)
  {
    v34 = *re::assetsLogObjects(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v36 = *(a1 + 80);
      }

      else
      {
        v36 = a1 + 73;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset serialization response for %s", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock((v2 + 256));
    v38 = *re::assetsLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v60 = re::AssetHandle::assetInfo((a1 + 40));
      if (v60[17])
      {
        v61 = v60[18];
      }

      else
      {
        v61 = v60 + 137;
      }

      *buf = 136315138;
      *&buf[4] = v61;
      _os_log_debug_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEBUG, "Completed network serialization of Asset '%s'", buf, 0xCu);
    }

    *buf = *(a1 + 96);
    re::AssetHandle::AssetHandle(&buf[8], (a1 + 40));
    v39 = re::DynamicString::DynamicString(&v90, (a1 + 64));
    *&v91[16] = v71;
    v92 = v72;
    v71 = 0;
    v72 = 0uLL;
    v94 = v74;
    v74 = 0;
    ++v73;
    v93 = 1;
    LOBYTE(v95) = v31;
    v41 = *(v2 + 272);
    v42 = *(v2 + 280);
    if (v42 >= v41)
    {
      v43 = v42 + 1;
      if (v41 < v42 + 1)
      {
        if (*(v2 + 264))
        {
          v44 = 2 * v41;
          v45 = v41 == 0;
          v46 = 8;
          if (!v45)
          {
            v46 = v44;
          }

          if (v46 <= v43)
          {
            v47 = v43;
          }

          else
          {
            v47 = v46;
          }

          re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity((v2 + 264), v47);
        }

        else
        {
          re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity((v2 + 264), v43);
          ++*(v2 + 288);
        }
      }

      v42 = *(v2 + 280);
    }

    v50 = *(v2 + 296) + 112 * v42;
    *v50 = *buf;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 16) = *&buf[16];
    *&buf[16] = 0;
    v51 = *(v50 + 8);
    *(v50 + 8) = 0;
    *(v50 + 8) = *&buf[8];
    *&buf[8] = v51;
    v52 = *(v50 + 24);
    *(v50 + 24) = v89;
    v89 = v52;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 32) = v90;
    *&v90 = 0;
    v53 = *(v50 + 48);
    *(v50 + 48) = *v91;
    *v91 = v53;
    *(v50 + 56) = *&v91[8];
    *&v91[8] = 0;
    v54 = *(v50 + 40);
    *(v50 + 40) = *(&v90 + 1);
    *(&v90 + 1) = v54;
    *(v50 + 96) = 0;
    *(v50 + 88) = 0;
    *(v50 + 72) = 0;
    *(v50 + 80) = 0;
    *(v50 + 64) = 0;
    *(v50 + 64) = *&v91[16];
    *&v91[16] = 0;
    *(v50 + 72) = v92;
    *&v92 = 0;
    v55 = *(v50 + 80);
    *(v50 + 80) = *(&v92 + 1);
    *(&v92 + 1) = v55;
    v56 = *(v50 + 96);
    *(v50 + 96) = v94;
    v94 = v56;
    ++v93;
    ++*(v50 + 88);
    *(v50 + 104) = v95;
    ++*(v2 + 280);
    ++*(v2 + 288);
    if (*&v91[16])
    {
      if (v56)
      {
        (*(**&v91[16] + 40))(*&v91[16], v56, v40);
      }

      v94 = 0;
      v92 = 0uLL;
      *&v91[16] = 0;
      ++v93;
    }

    if (v90)
    {
      if (BYTE8(v90))
      {
        (*(*v90 + 40))(v90, *v91, v40);
      }

      v90 = 0u;
      *v91 = 0u;
    }

    re::AssetHandle::~AssetHandle(&buf[8]);
    os_unfair_lock_unlock((v2 + 256));
  }

  if (v71 && v74)
  {
    (*(*v71 + 40))(v71, v74, v35);
  }

  if (v75 && (v76 & 1) != 0)
  {
    (*(*v75 + 40))(v75, v78, v35);
  }

  if (v80 && (BYTE8(v80) & 1) != 0)
  {
    (*(*v80 + 40))(v80, v81, v35);
  }
}

re::DynamicString *__copy_helper_block_8_40c22_ZTSN2re11AssetHandleE64c24_ZTSN2re13DynamicStringE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 40), (a2 + 40));

  return re::DynamicString::DynamicString((a1 + 64), (a2 + 64));
}

void __destroy_helper_block_8_40c22_ZTSN2re11AssetHandleE64c24_ZTSN2re13DynamicStringE(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 64));

  re::AssetHandle::~AssetHandle((a1 + 40));
}

void re::internal::AssetNetworkLoader::receiveAssetResponse(uint64_t a1, uint64_t a2, re::AssetHandle *a3, const void *a4, size_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v11 = *a6;
LABEL_5:
    re::AssetHandle::AssetHandle(buf, a3);
    v14 = *(a1 + 392);
    v20 = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1174405120;
    v18[2] = ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke_2;
    v18[3] = &unk_1F5CB9290;
    v18[5] = a1;
    re::AssetHandle::AssetHandle(v19, buf);
    v18[4] = v11;
    v19[3] = a2;
    v19[4] = a4;
    v19[5] = a5;
    re::dispatch::Group::async((a1 + 400), &v20, v18);

    re::AssetHandle::~AssetHandle(v19);
    re::AssetHandle::~AssetHandle(buf);
    return;
  }

  v12 = (*(**(a1 + 160) + 32))(*(a1 + 160), a5, 0);
  if (v12)
  {
    v13 = v12;
    memcpy(v12, a4, a5);
    v11 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke;
    v21[3] = &__block_descriptor_tmp_3_0;
    v21[4] = a1;
    v21[5] = v13;
    a4 = v13;
    goto LABEL_5;
  }

  v15 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = re::AssetHandle::assetInfo(a3);
    if (v16[17])
    {
      v17 = v16[18];
    }

    else
    {
      v17 = v16 + 137;
    }

    *buf = 136315138;
    v23 = v17;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to allocate memory for network asset '%s'", buf, 0xCu);
  }
}

uint64_t ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke_2(void *a1)
{
  v70[6] = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *re::assetsLogObjects(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v36 = re::AssetHandle::assetInfo((a1 + 6));
    if (v36[17])
    {
      v37 = v36[18];
    }

    else
    {
      v37 = v36 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v37;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Async network deserialization of '%s'", buf, 0xCu);
  }

  v5 = atomic_load(v2 + 384);
  if ((v5 & 1) == 0)
  {
    v9 = a1[7];
    os_unfair_lock_lock((v9 + 512));
    if ((*(v9 + 545) & 1) == 0)
    {
      v28 = *re::assetsLogObjects(v10);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        if (*(v9 + 168))
        {
          v29 = *(v9 + 176);
        }

        else
        {
          v29 = v9 + 169;
        }

        *buf = 136315138;
        *&buf[4] = v29;
        _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Received unexpected asset response '%s'", buf, 0xCu);
      }

      goto LABEL_70;
    }

    v11 = *(*v2 + 1808);
    *buf = *(v9 + 280);
    v12 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v11, buf);
    (*(**v12 + 128))(*v12);
    v13 = *v12;
    re::AssetHandle::AssetHandle(v59, v9);
    re::DynamicString::format(&v57, "%llu", v14, a1[9]);
    v15 = *v2;
    re::DefaultAssetSerialize::DefaultAssetSerialize(buf, v59);
    *buf = &unk_1F5CB9868;
    v69 = 1;
    re::DynamicString::DynamicString(v70, &v57);
    v70[4] = v15;
    *(v9 + 545) = 0;
    v16 = a1[11];
    v54 = a1[10];
    v55 = v16;
    v56 = 0;
    if (*(v9 + 112) == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v9 + 112);
    }

    re::AssetSignpost::ScopeGuard::ScopeGuard(v53, 2054, v17, **(v9 + 280));
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53, v18, v19);
    v20 = (*(**(v2 + 2) + 8))(*(v2 + 2), *v2, *(v9 + 280), buf, a1[10], a1[11], &v56);
    if (!v20)
    {
      v35 = *v2;
      re::AssetManager::putEntryInFailedState_entryStateLocked(v35, v9, 302, v52);
      if (*&v52[0])
      {
        if (BYTE8(v52[0]))
        {
          (*(**&v52[0] + 40))();
        }

        memset(v52, 0, sizeof(v52));
      }

      goto LABEL_54;
    }

    v21 = v20;
    v54 = re::Slice<unsigned char>::range(&v54, v56, v16);
    v55 = v22;
    v47 = &unk_1F5D0A468;
    v48 = 0;
    v49 = v54;
    v50 = v22;
    re::FixedArrayInputStream::FixedArrayInputStream(v51, v54, v22, -1);
    if (*(v9 + 112) == -1)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v9 + 112);
    }

    re::AssetSignpost::ScopeGuard::ScopeGuard(v46, 2056, v23, **(v9 + 280));
    if (*(v60 + 336) == 1 && (*(*v13 + 320))(v13))
    {
      TaskID = re::MemoryAttributionIDMap::getTaskID(*(*v2 + 1896), *(v60 + 344), a1[9]);
      v25 = *re::assetsLogObjects(TaskID);
      if (!TaskID)
      {
        v38 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (*(v9 + 168))
          {
            v41 = *(v9 + 176);
          }

          else
          {
            v41 = v9 + 169;
          }

          *v61 = 136315138;
          *&v61[4] = v41;
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Asset '%s' is assigned to an unregistered memory attribution ID", v61, 0xCu);
        }

        goto LABEL_52;
      }

      log = v25;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        if (*(v9 + 168))
        {
          v27 = *(v9 + 176);
        }

        else
        {
          v27 = v9 + 169;
        }

        if (*(v60 + 336) == 1)
        {
          v26 = *(v60 + 344);
        }

        *v61 = 136315650;
        *&v61[4] = v27;
        *&v61[12] = 2048;
        *&v61[14] = v26;
        v62 = 2048;
        v63 = TaskID;
        _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_INFO, "AssetNetworkLoader: creating asset %s with memory attribution ID %llu and taskID %llu", v61, 0x20u);
      }

      v30 = (*(*v13 + 32))(v13, v21, TaskID, &v47, 0);
      if ((v30 & 1) == 0)
      {
LABEL_48:
        v42 = *v2;
        re::AssetManager::putEntryInFailedState_entryStateLocked(v42, v9, 302, v45);
        if (*&v45[0])
        {
          if (BYTE8(v45[0]))
          {
            (*(**&v45[0] + 40))();
          }

          memset(v45, 0, sizeof(v45));
        }

LABEL_52:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46, v39, v40);
LABEL_53:
        v47 = &unk_1F5D0A468;
        re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v51);
LABEL_54:
        *buf = &unk_1F5CB9868;
        if (v70[0])
        {
          if (v70[1])
          {
            (*(*v70[0] + 40))();
          }

          memset(v70, 0, 32);
        }

        *buf = &unk_1F5CB98A0;
        if (buf[8] == 1)
        {
          if (v67)
          {
            if (BYTE8(v67))
            {
              (*(*v67 + 40))();
            }

            v68 = 0u;
            v67 = 0u;
          }

          if (v65 && (v66 & 1) != 0)
          {
            (*(*v65 + 40))();
          }
        }

        if (v57 && (v58 & 1) != 0)
        {
          (*(*v57 + 40))();
        }

        re::AssetHandle::~AssetHandle(v59);
LABEL_70:
        os_unfair_lock_unlock((v9 + 512));
        return (*(a1[4] + 16))();
      }
    }

    else
    {
      v30 = (*(*v13 + 24))(v13, v21, &v47, 0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46, v31, v32);
    v33 = *(v9 + 280);
    *v61 = v21;
    *&v61[8] = v33;
    if (*(v9 + 112) == -1)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v9 + 112);
    }

    re::NetworkActionQueue::queueSyncActionProcessLoadedAsset(*v2 + 1152, v34, v61);
    goto LABEL_53;
  }

  v6 = *re::assetsLogObjects(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = re::AssetHandle::assetInfo((a1 + 6));
    if (v7[17])
    {
      v8 = v7[18];
    }

    else
    {
      v8 = v7 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset deserialization for %s", buf, 0xCu);
  }

  return (*(a1[4] + 16))();
}

uint64_t re::Slice<unsigned char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

void re::internal::AssetNetworkLoader::receiveAssetFailure(re **this, os_unfair_lock_s *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a2 + 128);
  if ((a2[136]._os_unfair_lock_opaque & 0x100) != 0)
  {
    v5 = *this;
    re::AssetManager::putEntryInFailedState_entryStateLocked(v5, a2, 302, v8);
    if (*&v8[0])
    {
      if (BYTE8(v8[0]))
      {
        (*(**&v8[0] + 40))();
      }

      memset(v8, 0, sizeof(v8));
    }
  }

  else
  {
    v6 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*&a2[42]._os_unfair_lock_opaque)
      {
        v7 = *&a2[44]._os_unfair_lock_opaque;
      }

      else
      {
        v7 = &a2[42]._os_unfair_lock_opaque + 1;
      }

      *buf = 136315138;
      v10 = v7;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Received unexpected asset request failure '%s'", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(a2 + 128);
}

uint64_t *re::internal::AssetNetworkLoader::receiveMessageFromNetworkPeer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v122 = *MEMORY[0x1E69E9840];
  v116[0] = &unk_1F5D0B130;
  v116[1] = a3;
  v10 = a4;
  v117 = a4;
  v118 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v11 = re::DynamicString::setCapacity(&v109, 0);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_1EE191DB8);
    if (v11)
    {
      _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0, v93, v94, v95, v96, v97);
      __cxa_guard_release(&qword_1EE191DB8);
    }
  }

  v12 = _MergedGlobals_39;
  v13 = re::globalAllocators(v11);
  if (v14)
  {
    v15 = a2;
    v16 = *(*a1 + 1808);
    v17 = *(*a1 + 1904);
    LODWORD(buf) = 0;
    memset(v104, 0, sizeof(v104));
    v18 = re::DynamicString::setCapacity(v104, 0);
    v106 = 0u;
    v105 = 0u;
    re::DynamicString::setCapacity(&v105, 0);
    v107 = 0;
    if (v110)
    {
      v19 = v111;
    }

    else
    {
      v19 = &v110 + 1;
    }

    v22 = re::AssetPath::parse(v120, &buf, v19, 0, v16, v17);
    if (v120[0])
    {
      if (buf != 3)
      {
        v23 = v15;
        if (buf == 4)
        {
          if (v108 != 100)
          {
            v27 = *re::assetsLogObjects(v20);
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_73;
            }

            *v120 = 0;
            v28 = "Received invalid asset network message: only requests can have peer asset paths";
            goto LABEL_21;
          }

          if (BYTE8(v105))
          {
            v24 = v106;
          }

          else
          {
            v24 = &v105 + 9;
          }

          re::AssetPath::initMemoryAssetPath(&buf, v24, v107);
        }

        goto LABEL_37;
      }

      if ((v108 - 104) > 0xFFFFFFFC)
      {
        re::DynamicString::format(v120, "%llu", v21, v15);
        if (v120[8])
        {
          v29 = *&v120[16];
        }

        else
        {
          v29 = &v120[9];
        }

        if (BYTE8(v105))
        {
          v30 = v106;
        }

        else
        {
          v30 = &v105 + 9;
        }

        re::AssetPath::initPeerAssetPath(&buf, v29, v30, v107);
        if (*v120 && (v120[8] & 1) != 0)
        {
          (*(**v120 + 40))();
        }

        v23 = v15;
LABEL_37:
        *v120 = *&v104[0];
        memset(&v120[8], 0, 24);
        re::DynamicString::setCapacity(v120, 0);
        re::AssetPath::fullAssetPath(&buf, v120);
        v31 = re::Hash<re::DynamicString>::operator()(v119, v120);
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v119, a1 + 64, v120, v31);
        v32 = 0;
        if (*&v119[12] != 0x7FFFFFFF)
        {
          v32 = *(a1 + 80) + 80 * *&v119[12] + 40;
        }

        v33 = *v120;
        if (*v120 && (v120[8] & 1) != 0)
        {
          v33 = (*(**v120 + 40))();
        }

        if (v108 == 100)
        {
          v34 = re::AssetManager::assetHandle(&buf, *a1, 1, &v101);
          v35 = v102;
          if (!v102)
          {
LABEL_72:
            re::AssetHandle::~AssetHandle(&v101);
            goto LABEL_73;
          }

          v36 = *re::assetsLogObjects(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            re::AssetPath::fullAssetPath(&buf, v120);
            v59 = (v120[8] & 1) != 0 ? *&v120[16] : &v120[9];
            *v119 = 134218242;
            *&v119[4] = v23;
            *&v119[12] = 2080;
            *&v119[14] = v59;
            _os_log_debug_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEBUG, "Received peer asset load request from '%llu' for '%s'", v119, 0x16u);
            if (*v120)
            {
              if (v120[8])
              {
                (*(**v120 + 40))();
              }
            }
          }

          v100 = 0uLL;
          v99 = *&v104[0];
          re::DynamicString::setCapacity(&v99, 0);
          re::AssetPath::fullAssetPath(&buf, &v99);
          os_unfair_lock_lock((v35 + 512));
          v38 = atomic_load((v35 + 896));
          v39 = *(v35 + 548);
          if (v39 == 2)
          {
            v45 = *re::assetsLogObjects(v37);
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

            if (BYTE8(v99))
            {
              v82 = v100;
            }

            else
            {
              v82 = &v99 + 9;
            }

            *v120 = 136315138;
            *&v120[4] = v82;
            v48 = "Requested asset %s, is set to not sync over the network";
          }

          else
          {
            if (v39 == 1)
            {
              goto LABEL_64;
            }

            if (v38 == 2)
            {
              memset(&v120[16], 0, 24);
              re::DynamicString::setCapacity(&v120[8], 0);
              v40 = re::AssetHandle::AssetHandle(v119, v35);
              *&v120[40] = *v119;
              memset(v119, 0, 24);
              v121 = *&v119[16];
              re::AssetHandle::~AssetHandle(v40);
              *v120 = v23;
              re::DynamicString::operator=(&v120[8], &v99);
              re::internal::AssetNetworkLoader::queueAssetSerializationResponse(a1, v120);
LABEL_49:
              re::AssetHandle::~AssetHandle(&v120[40]);
              if (*&v120[8] && (v120[16] & 1) != 0)
              {
                (*(**&v120[8] + 40))();
              }

LABEL_68:
              os_unfair_lock_unlock((v35 + 512));
              if (v99)
              {
                if (BYTE8(v99))
                {
                  (*(*v99 + 40))();
                }

                v99 = 0u;
                v100 = 0u;
              }

              goto LABEL_72;
            }

            if (*(v35 + 120))
            {
              if (*(v35 + 328) != 1)
              {
                AssetAsync_entryStateLocked = re::AssetManager::loadAssetAsync_entryStateLocked(*a1, v35, 0);
                if (v38 != 3)
                {
                  memset(&v120[16], 0, 24);
                  re::DynamicString::setCapacity(&v120[8], 0);
                  v73 = re::AssetHandle::AssetHandle(v119, v35);
                  *&v120[40] = *v119;
                  memset(v119, 0, 24);
                  v121 = *&v119[16];
                  re::AssetHandle::~AssetHandle(v73);
                  *v120 = v23;
                  v74 = re::DynamicString::operator=(&v120[8], &v99);
                  v75 = *(a1 + 32);
                  v76 = *(a1 + 40);
                  if (v76 >= v75)
                  {
                    v77 = v76 + 1;
                    if (v75 < v76 + 1)
                    {
                      if (*(a1 + 24))
                      {
                        v78 = 2 * v75;
                        v79 = v75 == 0;
                        v80 = 8;
                        if (!v79)
                        {
                          v80 = v78;
                        }

                        if (v80 <= v77)
                        {
                          v81 = v77;
                        }

                        else
                        {
                          v81 = v80;
                        }

                        re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity((a1 + 24), v81);
                      }

                      else
                      {
                        re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity((a1 + 24), v77);
                        ++*(a1 + 48);
                      }
                    }

                    v76 = *(a1 + 40);
                  }

                  v91 = (*(a1 + 56) + (v76 << 6));
                  *v91 = *v120;
                  v92 = (v91 + 5);
                  re::DynamicString::DynamicString((v91 + 1), &v120[8]);
                  re::AssetHandle::AssetHandle(v92, &v120[40]);
                  ++*(a1 + 40);
                  ++*(a1 + 48);
                  goto LABEL_49;
                }

                v65 = *re::assetsLogObjects(AssetAsync_entryStateLocked);
                if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
LABEL_64:
                  re::DynamicString::DynamicString(v120, &v99);
                  re::internal::AssetNetworkLoader::sendFailureResponse(a1, v23, v35, v120);
                  if (*v120)
                  {
                    if (v120[8])
                    {
                      (*(**v120 + 40))();
                    }

                    memset(v120, 0, 32);
                  }

                  goto LABEL_68;
                }

                if (*(v35 + 168))
                {
                  v66 = *(v35 + 176);
                }

                else
                {
                  v66 = v35 + 169;
                }

                v67 = *(v35 + 920);
                v68 = *(v67 + 224);
                v69 = *(v67 + 232);
                v70 = v67 + 225;
                if (v68)
                {
                  v70 = v69;
                }

                *v120 = 136315394;
                *&v120[4] = v66;
                *&v120[12] = 2080;
                *&v120[14] = v70;
                v48 = "Network asset requested failed: Asset loading failed '%s' (%s)";
                v71 = v65;
                v72 = 22;
LABEL_139:
                _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, v48, v120, v72);
                goto LABEL_64;
              }

              v45 = *re::assetsLogObjects(v37);
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              if (*(v35 + 168))
              {
                v47 = *(v35 + 176);
              }

              else
              {
                v47 = v35 + 169;
              }

              *v120 = 136315138;
              *&v120[4] = v47;
              v48 = "Network asset requested failed: Memory asset is not loaded '%s'";
            }

            else
            {
              v45 = *re::assetsLogObjects(v37);
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              if (*(v35 + 168))
              {
                v58 = *(v35 + 176);
              }

              else
              {
                v58 = v35 + 169;
              }

              *v120 = 136315138;
              *&v120[4] = v58;
              v48 = "Network asset requested failed: Asset is empty '%s'";
            }
          }

          v71 = v45;
          v72 = 12;
          goto LABEL_139;
        }

        if (!v32)
        {
          goto LABEL_73;
        }

        v41 = *(v32 + 16);
        if (!v41)
        {
          goto LABEL_73;
        }

        switch(v108)
        {
          case 'g':
            v50 = v117 - v118;
            v51 = (a3 + v10 - (v117 - v118));
            if (v114)
            {
              v52 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 112, &v109);
              v53 = v52;
              v54 = *(v52 + 16);
              *(v52 + 16) = &v54[v50];
              v55 = *(v52 + 32);
              if (v55 != v114)
              {
                v56 = *re::assetsLogObjects(v52);
                v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
                v55 = v114;
                if (v57)
                {
                  v89 = *(v53 + 32);
                  if (v110)
                  {
                    v90 = v111;
                  }

                  else
                  {
                    v90 = &v110 + 1;
                  }

                  *v120 = 67109634;
                  *&v120[4] = v114;
                  *&v120[8] = 1024;
                  *&v120[10] = v89;
                  *&v120[14] = 2080;
                  *&v120[16] = v90;
                  _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, "Received asset fragment number %u when expecting fragment number %u for asset %s. This will quite possibly corrupt the asset.", v120, 0x18u);
                  v55 = v114;
                }
              }

              *(v53 + 32) = v55 + 1;
            }

            else
            {
              v54 = (*(**(a1 + 160) + 32))(*(a1 + 160), v113, 0);
              *v120 = v23;
              *&v120[8] = v54;
              *&v120[16] = &v54[v50];
              *&v120[24] = v113;
              *&v120[28] = v115;
              *&v120[32] = v114 + 1;
              re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(a1 + 112, &v109, v120);
            }

            v60 = memcpy(v54, v51, v50);
            v61 = *re::assetsLogObjects(v60);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              v85 = v114;
              v86 = v115;
              v87 = re::AssetHandle::assetInfo((v32 + 8));
              if (v87[17])
              {
                v88 = v87[18];
              }

              else
              {
                v88 = v87 + 137;
              }

              *v120 = 67110402;
              *&v120[4] = v85;
              *&v120[8] = 1024;
              *&v120[10] = v86;
              *&v120[14] = 2048;
              *&v120[16] = v23;
              *&v120[24] = 2080;
              *&v120[26] = v88;
              *&v120[34] = 2048;
              *&v120[36] = v50;
              *&v120[44] = 1024;
              *&v120[46] = a4;
              _os_log_debug_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEBUG, "Received peer fragmented asset (%u / %u) load response from '%llu' for '%s' payloadSize = %zu, bufferSize = %u", v120, 0x32u);
            }

            if (v114 != v115 - 1)
            {
              goto LABEL_73;
            }

            v62 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 112, &v109);
            v63 = *(v62 + 8);
            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 0x40000000;
            v98[2] = ___ZN2re8internal18AssetNetworkLoader29receiveMessageFromNetworkPeerEyPKvjPU13block_pointerFvvE_block_invoke;
            v98[3] = &__block_descriptor_tmp_8;
            v98[4] = a1;
            v98[5] = v63;
            *v119 = v98;
            re::internal::AssetNetworkLoader::receiveMessageFromNetworkPeer(a1, v23, v63, *(v62 + 24), v119);
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 112, &v109);
            *(v62 + 8) = 0;
            goto LABEL_114;
          case 'f':
            v49 = *re::assetsLogObjects(v33);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v83 = re::AssetHandle::assetInfo((v32 + 8));
              if (v83[17])
              {
                v84 = v83[18];
              }

              else
              {
                v84 = v83 + 137;
              }

              *v120 = 134218242;
              *&v120[4] = v23;
              *&v120[12] = 2080;
              *&v120[14] = v84;
              _os_log_debug_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEBUG, "Received peer asset load failure from '%llu' for '%s'", v120, 0x16u);
            }

            re::internal::AssetNetworkLoader::receiveAssetFailure(a1, v41);
            goto LABEL_114;
          case 'e':
            v42 = *re::assetsLogObjects(v33);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = re::AssetHandle::assetInfo((v32 + 8));
              if (v43[17])
              {
                v44 = v43[18];
              }

              else
              {
                v44 = v43 + 137;
              }

              *v120 = 134218242;
              *&v120[4] = v23;
              *&v120[12] = 2080;
              *&v120[14] = v44;
              _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Received peer asset load response from '%llu' for '%s'", v120, 0x16u);
            }

            re::internal::AssetNetworkLoader::receiveAssetResponse(a1, v23, (v32 + 8), (a3 + v10 - (v117 - v118)), v117 - v118, a5);
LABEL_114:
            re::AssetPath::fullAssetPath(&buf, v120);
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 64, v120);
            if (*v120 && (v120[8] & 1) != 0)
            {
              (*(**v120 + 40))();
            }

            goto LABEL_73;
        }

        v27 = *re::assetsLogObjects(v33);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

        *v120 = 0;
        v28 = "Received invalid asset network message: unknown message type";
        goto LABEL_21;
      }

      v27 = *re::assetsLogObjects(v20);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *v120 = 0;
      v28 = "Received invalid asset network message: only responses can have memory asset paths";
    }

    else
    {
      v26 = *&v120[24];
      if (*&v120[24] && (v120[32] & 1) != 0)
      {
        v26 = (*(**&v120[24] + 40))(*&v120[24], *&v120[40], v22);
      }

      v27 = *re::assetsLogObjects(v26);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *v120 = 0;
      v28 = "Received invalid asset network message: failed to parse asset path";
    }

LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, v120, 2u);
LABEL_73:
    if (v105)
    {
      if (BYTE8(v105))
      {
        (*(*v105 + 40))();
      }

      v106 = 0u;
      v105 = 0u;
    }

    if (*&v104[0] && (BYTE8(v104[0]) & 1) != 0)
    {
      (*(**&v104[0] + 40))();
    }

    goto LABEL_80;
  }

  v25 = *re::assetsLogObjects(v14);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Received invalid asset network message: failed to parse message", &buf, 2u);
  }

LABEL_80:
  result = v109;
  if (v109)
  {
    if (v110)
    {
      return (*(*v109 + 40))();
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v10, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v10, a1, a2, v4);
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 80 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 80 * v13) = *(v6 + 80 * v13) & 0x80000000 | v8;
    }

    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v7);
    *(*(a1 + 16) + 80 * v5) = *(*(a1 + 16) + 80 * v5) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = v5;
    *(a1 + 40) = v9;
  }
}

__n128 re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v10, a1, a2, v6);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    v9 = *(a3 + 16);
    *(v8 + 72) = *(a3 + 32);
    *(v8 + 56) = v9;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 88 * v7 + 40;
}

void re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v11, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v11, a1, a2, v4);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 88 * v13);
    v8 = *v7 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v6 + 88 * v14) = *(v6 + 88 * v14) & 0x80000000 | v8;
    }

    v9 = *v7;
    if (*v7 < 0)
    {
      *v7 = v9 & 0x7FFFFFFF;
      re::DynamicString::deinit((v7 + 2));
      v6 = *(a1 + 16);
      v9 = *(v6 + 88 * v5);
    }

    *(v6 + 88 * v5) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = v5;
    *(a1 + 40) = v10;
  }
}

uint64_t re::internal::AssetNetworkLoader::sendRequestToNetworkPeer_entryStateLocked(uint64_t a1, uint64_t a2, uint64_t a3, re::DynamicString *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *re::assetsLogObjects(a1);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (*(a2 + 168))
    {
      v20 = *(a2 + 176);
    }

    else
    {
      v20 = a2 + 169;
    }

    *buf = 134218242;
    *v37 = a3;
    *&v37[8] = 2080;
    *&v37[10] = v20;
    _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "Sending peer asset load request to '%llu' for '%s'", buf, 0x16u);
  }

  *&v37[12] = 0;
  v38 = 0;
  v39 = 0;
  re::DynamicString::setCapacity(&v37[4], 0);
  *buf = 100;
  v10 = re::DynamicString::operator=(&v37[4], a4);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0, v21, v22, v23, v24, v25);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  v30 = 0;
  v31 = 0;
  if (v11)
  {
    v12 = v31;
    v13 = (*(**(a1 + 8) + 16))(*(a1 + 8), a3, v31, v30);
    if (v13)
    {
      *(a2 + 545) = 1;
      re::AssetHandle::AssetHandle(&v26, a2);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v15 = re::Hash<re::DynamicString>::operator()(&v35, a4);
      re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v32, a1 + 64, a4, v15);
      if (HIDWORD(v33) == 0x7FFFFFFF)
      {
        v16 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 64, v33, v32);
        re::DynamicString::DynamicString((v16 + 8), a4);
        *(v16 + 40) = a3;
        *(v16 + 48) = v26;
        v26 = 0uLL;
        *(v16 + 64) = v27;
        v27 = 0;
        ++*(a1 + 104);
      }

      re::AssetHandle::~AssetHandle(&v26);
    }

    else
    {
      v18 = *a1;
      re::AssetManager::putEntryInFailedState_entryStateLocked(v18, a2, 302, v28);
      if (*&v28[0])
      {
        if (BYTE8(v28[0]))
        {
          (*(**&v28[0] + 40))();
        }

        memset(v28, 0, sizeof(v28));
      }
    }
  }

  else
  {
    v17 = *a1;
    re::AssetManager::putEntryInFailedState_entryStateLocked(v17, a2, 302, v29);
    if (*&v29[0])
    {
      if (BYTE8(v29[0]))
      {
        (*(**&v29[0] + 40))();
      }

      memset(v29, 0, sizeof(v29));
    }
  }

  result = *&v37[4];
  if (*&v37[4])
  {
    if (v37[12])
    {
      return (*(**&v37[4] + 40))();
    }
  }

  return result;
}

re::DynamicString *re::DynamicArray<re::DynamicString>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicString>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicString::DynamicString((*(this + 4) + 32 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v12 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "removeAt";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 931;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v3;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    v7 = v5 + (a2 << 6);
    *v7 = *(v6 - 64);
    re::DynamicString::operator=((v7 + 8), (v6 - 56));
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
    v9 = *(v6 - 16);
    *(v7 + 40) = *(v6 - 24);
    *(v7 + 48) = v9;
    *(v6 - 24) = v8;
    v10 = *(v7 + 56);
    *(v7 + 56) = *(v6 - 8);
    *(v6 - 8) = v10;
    v3 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + (v3 << 6);
  re::AssetHandle::~AssetHandle((v11 - 24));
  re::DynamicString::deinit((v11 - 56));
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::internal::AssetNetworkLoader::update(re::internal::AssetNetworkLoader *this)
{
  v110 = *MEMORY[0x1E69E9840];
  if (*(this + 5) >= 1)
  {
    v2 = *(this + 5) & 0x7FFFFFFFLL;
    v3 = v2 + 1;
    v4 = (v2 << 6) - 64;
    while (1)
    {
      v5 = *(this + 5);
      if (v5 <= v3 - 2)
      {
        *v94 = 0;
        v92 = 0u;
        v93 = 0u;
        memset(buf, 0, sizeof(buf));
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v105 = 136315906;
        *v106 = "operator[]";
        *&v106[8] = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        *&v106[10] = 789;
        *&v106[14] = 2048;
        *&v106[16] = v3 - 2;
        *&v106[24] = 2048;
        *&v106[26] = v5;
        _os_log_send_and_compose_impl(v74, v94, buf, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v105, 38, v75, v76);
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(this + 7);
      v7 = *(v6 + v4 + 48);
      os_unfair_lock_lock((v7 + 512));
      v9 = atomic_load((v7 + 896));
      if (!v9)
      {
        v12 = *re::assetsLogObjects(v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (*(v7 + 168))
          {
            v15 = *(v7 + 176);
          }

          else
          {
            v15 = v7 + 169;
          }

          *buf = 136315138;
          *&buf[4] = v15;
          _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Network asset requested failed: Asset didn't load '%s'", buf, 0xCu);
        }

        v13 = *(v6 + v4);
        re::DynamicString::DynamicString(v83, (v6 + v4 + 8));
        re::internal::AssetNetworkLoader::sendFailureResponse(this, v13, v7, v83);
        if (*&v83[0])
        {
          if (BYTE8(v83[0]))
          {
            (*(**&v83[0] + 40))();
          }

          memset(v83, 0, sizeof(v83));
        }

        goto LABEL_18;
      }

      if (v9 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        re::internal::AssetNetworkLoader::queueAssetSerializationResponse(this, (v6 + v4));
LABEL_18:
        re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(this + 24, v3 - 2);
      }

      os_unfair_lock_unlock((v7 + 512));
      --v3;
      v4 -= 64;
      if (v3 <= 1)
      {
        goto LABEL_31;
      }
    }

    v10 = *re::assetsLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (*(v7 + 168))
      {
        v14 = *(v7 + 176);
      }

      else
      {
        v14 = v7 + 169;
      }

      v16 = *(v7 + 920);
      v17 = *(v16 + 224);
      v18 = *(v16 + 232);
      v19 = v16 + 225;
      if (v17)
      {
        v19 = v18;
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Network asset requested failed: Asset loading failed '%s' (%s)", buf, 0x16u);
    }

    v11 = *(v6 + v4);
    re::DynamicString::DynamicString(v84, (v6 + v4 + 8));
    re::internal::AssetNetworkLoader::sendFailureResponse(this, v11, v7, v84);
    if (*&v84[0])
    {
      if (BYTE8(v84[0]))
      {
        (*(**&v84[0] + 40))();
      }

      memset(v84, 0, sizeof(v84));
    }

    goto LABEL_18;
  }

LABEL_31:
  os_unfair_lock_lock(this + 64);
  memset(buf, 0, 24);
  v79 = 0;
  v80 = 0u;
  *&buf[32] = 0;
  v82 = 0;
  v81 = 1;
  *&buf[24] = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v79, this + 33);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 264, buf);
  re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(buf);
  os_unfair_lock_unlock(this + 64);
  if (*(&v80 + 1))
  {
    v21 = v82;
    v22 = &v82[14 * *(&v80 + 1)];
    v77 = v22;
    while (1)
    {
      v23 = *(v21 + 104);
      v24 = *re::assetsLogObjects(v20);
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v56 = re::AssetHandle::assetInfo((v21 + 1));
          if (v56[17])
          {
            v57 = v56[18];
          }

          else
          {
            v57 = v56 + 137;
          }

          v58 = *v21;
          *buf = 136315394;
          *&buf[4] = v57;
          *&buf[12] = 2048;
          *&buf[14] = v58;
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Failed to serialize reponse for asset '%s' for Peer '%llu'", buf, 0x16u);
        }

        v25 = *v21;
        v26 = v21[2];
        re::DynamicString::DynamicString(buf, (v21 + 4));
        re::internal::AssetNetworkLoader::sendFailureResponse(this, v25, v26, buf);
        v20 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v20 = (*(**buf + 40))();
        }

        goto LABEL_97;
      }

      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v28 = re::AssetHandle::assetInfo((v21 + 1));
        if (v28[17])
        {
          v29 = v28[18];
        }

        else
        {
          v29 = v28 + 137;
        }

        v30 = *v21;
        *buf = 136315394;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Sending network response for asset '%s' to Peer '%llu'", buf, 0x16u);
      }

      v31 = re::AssetSimpleMessage::maxBytesPerPacket(v27);
      v32 = v21[10];
      if (!v31 || (v33 = v31, v78 = v32, v32 <= v31))
      {
        v20 = (*(**(this + 1) + 16))(*(this + 1), *v21, v21[12], v32);
        v48 = v20;
        goto LABEL_66;
      }

      memset(&buf[8], 0, 32);
      re::DynamicString::setCapacity(&buf[8], 0);
      *buf = 101;
      v34 = re::DynamicString::operator=(&buf[8], (v21 + 4));
      LODWORD(v92) = (v32 - 1) / v33 + 1;
      *&buf[40] = v32;
      *&buf[44] = -1;
      v35 = *re::assetsLogObjects(v34);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (v36)
      {
        v63 = &buf[17];
        if (buf[16])
        {
          v63 = *&buf[24];
        }

        v64 = *v21;
        *v105 = 136315650;
        *v106 = v63;
        *&v106[8] = 2048;
        *&v106[10] = v64;
        *&v106[18] = 1024;
        *&v106[20] = v92;
        _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Asset %s for peer %llu needs to be fragmented (%u)", v105, 0x1Cu);
      }

      if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0)
      {
        v36 = __cxa_guard_acquire(&qword_1EE191DB8);
        if (v36)
        {
          _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0, v66, v67, v68, v69, v70);
          __cxa_guard_release(&qword_1EE191DB8);
        }
      }

      v37 = _MergedGlobals_39;
      memset(&v106[12], 0, 24);
      re::DynamicString::setCapacity(&v106[4], 0);
      v38 = re::DynamicString::operator=(&v106[4], &buf[8]);
      v107 = *&buf[40];
      v89 = &unk_1F5D0A808;
      v90 = 0;
      if ((v39 & 1) == 0)
      {
        break;
      }

      v40 = v90;
      if (!v90)
      {
        v54 = *re::assetsLogObjects(v39);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = &buf[17];
          if (buf[16])
          {
            v55 = *&buf[24];
          }

LABEL_106:
          *v94 = 136315138;
          *&v94[4] = v55;
          _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", v94, 0xCu);
          v59 = 0;
          v48 = 0;
          goto LABEL_90;
        }

LABEL_82:
        v59 = 0;
        v48 = 0;
        goto LABEL_90;
      }

      v109 = (*&buf[40] - 1) / v33 + 1;
      *v105 = 103;
      v42 = v41;
      v108 = 0;
      if (v109)
      {
        v43 = 0;
        while (1)
        {
          if (v33 >= v78 - v43)
          {
            v44 = v78 - v43;
          }

          else
          {
            v44 = v33;
          }

          v85 = &unk_1F5D0ADB8;
          v86 = v42;
          v87 = v44 + v40;
          v88 = 0;
          v45 = *re::assetsLogObjects(v41);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v49 = &v106[13];
            if (v106[12])
            {
              v49 = *&v106[20];
            }

            v50 = *v21;
            *v94 = 136316418;
            *&v94[4] = v49;
            v95 = 2048;
            v96 = v50;
            v97 = 1024;
            v98 = v108;
            v99 = 1024;
            v100 = v109;
            v101 = 2048;
            v102 = v44;
            v103 = 2048;
            v104 = v44 + v40;
            _os_log_debug_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEBUG, "Sending '%s' fragmented to peer '%llu', current fragment (%u/ %u) payloadSize = %zu, bytesSent = %zu", v94, 0x36u);
          }

          if ((v46 & 1) == 0)
          {
            break;
          }

          if (v87 - v88 >= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v87 - v88;
          }

          memcpy((v86 + v88), (v21[12] + v43), v47);
          v88 += v47;
          v41 = (*(**(this + 1) + 16))(*(this + 1), *v21, v42, v44 + v40);
          v48 = v41;
          if (++v108 < v109)
          {
            v43 += v44;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_89;
        }

        v62 = *re::assetsLogObjects(v46);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v65 = &v106[13];
          if (v106[12])
          {
            v65 = *&v106[20];
          }

          *v94 = 136315138;
          *&v94[4] = v65;
          _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", v94, 0xCu);
        }

        v59 = 0;
        v48 = 1;
        v22 = v77;
      }

      else
      {
        v48 = 1;
LABEL_89:
        v59 = 1;
        v22 = v77;
      }

LABEL_90:
      if (*&v106[4] && (v106[12] & 1) != 0)
      {
        (*(**&v106[4] + 40))();
      }

      v20 = *&buf[8];
      if (*&buf[8] && (buf[16] & 1) != 0)
      {
        v20 = (*(**&buf[8] + 40))();
      }

      if (!v59)
      {
        goto LABEL_97;
      }

LABEL_66:
      v51 = *re::assetsLogObjects(v20);
      v20 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        v60 = *v21;
        if (v21[5])
        {
          v61 = v21[6];
        }

        else
        {
          v61 = v21 + 41;
        }

        *buf = 134218242;
        *&buf[4] = v60;
        *&buf[12] = 2080;
        *&buf[14] = v61;
        _os_log_debug_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEBUG, "Sending peer asset load result to '%llu' for '%s'", buf, 0x16u);
        if ((v48 & 1) == 0)
        {
LABEL_68:
          v52 = *re::assetsLogObjects(v20);
          v20 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
          if (v20)
          {
            if (v21[5])
            {
              v53 = v21[6];
            }

            else
            {
              v53 = v21 + 41;
            }

            *buf = 136315138;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Failed to send message for '%s'", buf, 0xCu);
          }
        }
      }

      else if ((v48 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_97:
      v21 += 14;
      if (v21 == v22)
      {
        return re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(&v79);
      }
    }

    v54 = *re::assetsLogObjects(v39);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = &buf[17];
      if (buf[16])
      {
        v55 = *&buf[24];
      }

      goto LABEL_106;
    }

    goto LABEL_82;
  }

  return re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(&v79);
}

void *re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          *v12 = *(v11 - 8);
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          v12[2] = *(v11 + 8);
          *(v11 + 8) = 0;
          v13 = v12[1];
          v12[1] = 0;
          v12[1] = *v11;
          *v11 = v13;
          v14 = v12[3];
          v12[3] = *(v11 + 16);
          *(v11 + 16) = v14;
          *(v12 + 2) = 0u;
          *(v12 + 3) = 0u;
          v12[4] = *(v11 + 24);
          *(v11 + 24) = 0;
          v12[7] = *(v11 + 48);
          *(v11 + 48) = 0;
          v16 = v12[5];
          v15 = v12[6];
          v17 = *(v11 + 40);
          v12[5] = *(v11 + 32);
          v12[6] = v17;
          *(v11 + 32) = v16;
          *(v11 + 40) = v15;
          v12[12] = 0;
          *(v12 + 22) = 0;
          v12[9] = 0;
          v12[10] = 0;
          v12[8] = 0;
          v18 = *(v11 + 64);
          v12[8] = *(v11 + 56);
          *(v11 + 56) = 0;
          v12[9] = v18;
          *(v11 + 64) = 0;
          v19 = v12[10];
          v12[10] = *(v11 + 72);
          *(v11 + 72) = v19;
          v20 = v12[12];
          v12[12] = *(v11 + 88);
          *(v11 + 88) = v20;
          ++*(v11 + 80);
          ++*(v12 + 22);
          *(v12 + 104) = *(v11 + 96);
          re::DynamicArray<unsigned long>::deinit(v11 + 56);
          re::DynamicString::deinit((v11 + 24));
          re::AssetHandle::~AssetHandle(v11);
          v12 += 14;
          v21 = v11 + 104;
          v11 += 112;
        }

        while (v21 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0>,void ()(unsigned long long,void const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB92D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0>,void ()(unsigned long long,void const*,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB9360;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::operator()(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 1);
  v44 = 0;
  v41[1] = 0;
  v42 = 0;
  v43 = 0;
  re::DynamicArray<re::DynamicString>::setCapacity(v41, 0);
  ++v43;
  v5 = re::DynamicString::format(&v39, "%llu", v4, v2);
  v7 = *(v3 + 96);
  if (v7)
  {
    v8 = 0;
    v9 = *(v3 + 80);
    while (1)
    {
      v10 = *v9;
      v9 += 20;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(v3 + 96);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    *&v6 = 136315138;
    v37 = v6;
    do
    {
      v23 = *(v3 + 80) + 80 * v8;
      v25 = *(v23 + 40);
      v24 = v23 + 40;
      if (v25 == v2)
      {
        v26 = v24 - 32;
        v27 = *(v24 + 16);
        if (v27)
        {
          os_unfair_lock_lock((v27 + 512));
          if (*(v27 + 545) == 1)
          {
            v30 = *v3;
            re::DynamicString::format(v38, "Network peer %llu has left", v29, v2);
            re::AssetManager::putEntryInFailedState_entryStateLocked(v30, v27, 302, v38);
            if (*&v38[0])
            {
              if (BYTE8(v38[0]))
              {
                (*(**&v38[0] + 40))();
              }

              memset(v38, 0, sizeof(v38));
            }

            re::DynamicArray<re::DynamicString>::add(v41, v26);
          }

          else
          {
            v31 = *re::assetsLogObjects(v28);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              if (*(v26 + 8))
              {
                v33 = *(v26 + 16);
              }

              else
              {
                v33 = v26 + 9;
              }

              *buf = v37;
              *&buf[4] = v33;
              _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Pending requested asset state is inconsistent: expected loading-from-peer state: %s", buf, 0xCu);
            }
          }

          os_unfair_lock_unlock((v27 + 512));
        }

        else
        {
          v5 = re::DynamicArray<re::DynamicString>::add(v41, (v24 - 32));
        }
      }

      v32 = *(v3 + 96);
      if (v32 <= v8 + 1)
      {
        v32 = v8 + 1;
      }

      while (v32 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(v3 + 80) + 80 * v8) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v8) = v32;
LABEL_44:
      ;
    }

    while (v8 != v7);
  }

  if (v42)
  {
    v11 = *re::assetsLogObjects(v5);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    v13 = v42;
    if (v12)
    {
      *buf = 134218240;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "%zu network asset load outstanding request(s) to peer '%llu' are being abandoned due to that peer leaving", buf, 0x16u);
      v13 = v42;
    }

    if (v13)
    {
      v14 = v44;
      v15 = 32 * v13;
      do
      {
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3 + 64, v14);
        v16 = re::Hash<re::DynamicString>::operator()(buf, v14);
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v3 + 112, v14, v16);
        if (*&buf[12] != 0x7FFFFFFF)
        {
          (*(**(v3 + 160) + 40))(*(v3 + 160), *(*(v3 + 128) + 88 * *&buf[12] + 48));
          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3 + 112, v14);
        }

        v14 += 4;
        v15 -= 32;
      }

      while (v15);
    }
  }

  if (*(v3 + 40) >= 1)
  {
    v17 = *(v3 + 40) & 0x7FFFFFFFLL;
    v18 = v17 + 1;
    v19 = (v17 << 6) - 64;
    do
    {
      v20 = v18 - 2;
      v21 = *(v3 + 40);
      if (v21 <= v18 - 2)
      {
        v45 = 0;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        memset(buf, 0, sizeof(buf));
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v49 = 789;
        v50 = 2048;
        v51 = v20;
        v52 = 2048;
        v53 = v21;
        _os_log_send_and_compose_impl(v36, &v45, buf, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v37, *(&v37 + 1));
        _os_crash_msg();
        __break(1u);
      }

      if (*(*(v3 + 56) + v19) == v2)
      {
        re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(v3 + 24, v18 - 2);
      }

      --v18;
      v19 -= 64;
    }

    while (v18 > 1);
  }

  if (v39 && (v40 & 1) != 0)
  {
    (*(*v39 + 40))();
  }

  return re::DynamicArray<re::DynamicString>::deinit(v41);
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
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
        v10 = (v8 + (v9 << 6));
        v11 = (v8 + 40);
        v12 = v7;
        do
        {
          *v12 = *(v11 - 5);
          *(v12 + 1) = 0u;
          *(v12 + 3) = 0u;
          v12[1] = *(v11 - 4);
          *(v11 - 4) = 0;
          v12[4] = *(v11 - 1);
          *(v11 - 1) = 0;
          v14 = v12[2];
          v13 = v12[3];
          v15 = *(v11 - 2);
          v12[2] = *(v11 - 3);
          v12[3] = v15;
          *(v11 - 3) = v14;
          *(v11 - 2) = v13;
          v12[5] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[6] = *(v11 + 1);
          *(v11 + 1) = 0;
          v16 = v12[5];
          v12[5] = 0;
          v12[5] = *v11;
          *v11 = v16;
          v17 = v12[7];
          v12[7] = *(v11 + 2);
          *(v11 + 2) = v17;
          re::AssetHandle::~AssetHandle(v11);
          re::DynamicString::deinit((v11 - 32));
          v12 += 8;
          v18 = (v11 + 24);
          v11 = (v11 + 64);
        }

        while (v18 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<char>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, a2, 1);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<char>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 80 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 80 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 80 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 80 * v12) & 0x7FFFFFFF;
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
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

BOOL re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 88 * v8 + 8, a3);
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
      result = re::DynamicString::operator==(v10 + 88 * v11 + 8, a3);
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
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 80) % *(a1 + 24), *(v13 + v17 + 80));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v33[16];
                v25 = *(*&v33[16] + v17 + 40);
                v26 = *(*&v33[16] + v17 + 56);
                *(v20 + 72) = *(*&v33[16] + v17 + 72);
                *(v20 + 56) = v26;
                *(v20 + 40) = v25;
              }

              ++v18;
              v17 += 88;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 88 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 88 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 88 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 80) = a3;
  ++*(a1 + 28);
  return v27 + 88 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 40;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 40) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v19 + 32) % *(a1 + 24), *(v19 + 32));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = *(v19 - 8);
                v21 = *(v19 - 24);
                *(v20 + 8) = *(v19 - 32);
                *(v19 - 32) = 0;
                v22 = *(v19 - 16);
                *(v19 - 8) = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                *(v19 - 24) = v24;
                *(v19 - 16) = v23;
                v13 = *&v35[16];
                v25 = (*&v35[16] + v18);
                v26 = *(*&v35[16] + v18);
                *(v20 + 56) = 0;
                *(v20 + 64) = 0;
                *(v20 + 40) = v26;
                *(v20 + 48) = 0;
                *(v20 + 56) = v25[2];
                v25[2] = 0;
                v27 = *(v20 + 48);
                *(v20 + 48) = 0;
                *(v20 + 48) = v25[1];
                v25[1] = v27;
                v28 = *(v20 + 64);
                *(v20 + 64) = v25[3];
                v25[3] = v28;
              }

              ++v17;
              v18 += 80;
            }

            while (v17 < v16);
          }

          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 80 * v5);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 80 * v5);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 80 * v5;
  *v32 = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 72) = a3;
  ++*(a1 + 28);
  return v29 + 80 * v5;
}

void *re::allocInfo_FileAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191DF0, "FileAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_40);
  }

  return &unk_1EE191DF0;
}

void re::initInfo_FileAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x2764D90FB3166F26;
  v12[1] = "FileAssetLoadDescriptorParameters";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE191DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DD0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "path";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE191DC8 = v10;
    __cxa_guard_release(&qword_1EE191DD0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE191DC8;
  *(this + 9) = re::internal::defaultConstruct<re::FileAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FileAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::FileAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::FileAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void *re::internal::defaultConstruct<re::FileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::FileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

re::FileAssetProvider *re::FileAssetProvider::FileAssetProvider(re::FileAssetProvider *this, const re::internal::AssetTypeRegistry *a2, const re::AssetCompilerRegistry *a3, const re::AssetProviderRegistry *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CB93F0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE191DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DE8))
  {
    qword_1EE191DE0 = re::internal::getOrCreateInfo("FileAssetLoadDescriptorParameters", re::allocInfo_FileAssetLoadDescriptorParameters, re::initInfo_FileAssetLoadDescriptorParameters, &unk_1EE191DD8, 0);
    __cxa_guard_release(&qword_1EE191DE8);
  }

  re::FileAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE191DE0;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 3) = a2;
  return this;
}

void re::FileAssetProvider::~FileAssetProvider(re::FileAssetProvider *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::FileAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v12 = "FileAsset";
  v13 = 9;
  re::DynamicString::operator=(a3, &v12);
  v7 = re::DynamicString::operator=((a3 + 112), a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::operator=(&v12, a1);
  re::DynamicString::DynamicString(v11, &v12);
  re::AssetLoadDescriptor::setIntrospectableData(a3, re::FileAssetProvider::s_loadDescriptorParametersIntrospect, v11, 0);
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))(v12, v14, v8, v9);
    }
  }

  return result;
}

re::DynamicString *re::FileAssetProvider::load@<X0>(re::internal::AssetTypeRegistry **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  v9 = strcmp(v8, "FileAsset");
  if (v9)
  {
    v11 = v22;
    v12 = v23;
    v13 = v24;
    *a4 = 0;
    *(a4 + 8) = v11;
    *(a4 + 24) = v12;
    *(a4 + 32) = v13;
  }

  else
  {
    *(&v22 + 1) = 0;
    v23 = 0;
    v24 = 0;
    re::DynamicString::setCapacity(&v22, 0);
    Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v22);
    if (Descriptor)
    {
      if (*(a2 + 120))
      {
        v15 = *(a2 + 16);
      }

      else
      {
        v15 = a2 + 121;
      }

      re::loadCompiledOrSourceFile(&v22, v15, this + 3, a3, a4);
    }

    else
    {
      v16 = v19;
      v17 = v20;
      v18 = v21;
      *a4 = 0;
      *(a4 + 8) = v16;
      *(a4 + 24) = v17;
      *(a4 + 32) = v18;
    }

    result = v22;
    if (v22)
    {
      if (BYTE8(v22))
      {
        return (*(*v22 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString ***a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE191DE8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE191DE8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE191DE0 = re::internal::getOrCreateInfo("FileAssetLoadDescriptorParameters", re::allocInfo_FileAssetLoadDescriptorParameters, re::initInfo_FileAssetLoadDescriptorParameters, &unk_1EE191DD8, 0);
      __cxa_guard_release(&qword_1EE191DE8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE191DE0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

uint64_t *re::FileAssetProvider::resolveChild@<X0>(const re::AssetLoadDescriptor *a1@<X1>, re::AssetProvider *a2@<X2>, const char *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 2);
  }

  else
  {
    v8 = a1 + 9;
  }

  v9 = strcmp(v8, "FileAsset");
  if (v9)
  {
    result = re::DynamicString::format(&v30, "Scheme %s does not match scheme %s.", v10, v8, "FileAsset");
    v12 = v30;
    v13 = v31;
    v14 = v32;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    re::DynamicString::setCapacity(&v43, 0);
    v15 = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a1, &v43);
    if (v15)
    {
      if (v44)
      {
        v16 = v45;
      }

      else
      {
        v16 = (&v44 + 1);
      }

      v17 = re::AssetProvider::resolveChildPath(&v41, a2, v16);
      re::FileAssetProvider::makeDescriptor(&v41, v29, &v30);
      v18 = v30;
      *(a4 + 48) = v33;
      v19 = v36;
      *(a4 + 72) = v35;
      v30 = 0u;
      v20 = v31;
      v21 = v32;
      v31 = 0;
      v22 = *(&v32 + 1);
      v32 = 0u;
      ++v34;
      ++v37;
      v23 = v40;
      v24 = v39;
      v40 = 0u;
      v39 = 0;
      *a4 = 1;
      *(a4 + 24) = v20;
      *(a4 + 32) = v21;
      *(a4 + 8) = v18;
      *(a4 + 40) = v22;
      v33 = 0u;
      *(a4 + 64) = 1;
      v35 = 0u;
      v36 = 0u;
      *(a4 + 88) = v19;
      *(a4 + 104) = 1;
      v25 = v38;
      v38 = 0u;
      *(a4 + 112) = v25;
      *(a4 + 136) = v23;
      *(a4 + 128) = v24;
      if (*&v29[0])
      {
        if (BYTE8(v29[0]))
        {
          (*(**&v29[0] + 40))();
        }

        memset(v29, 0, sizeof(v29));
      }

      if (v41 && (v42 & 1) != 0)
      {
        (*(*v41 + 40))();
      }
    }

    else
    {
      v26 = v30;
      v27 = v31;
      v28 = v32;
      *a4 = 0;
      *(a4 + 8) = v26;
      *(a4 + 24) = v27;
      *(a4 + 32) = v28;
    }

    result = v43;
    if (v43)
    {
      if (v44)
      {
        return (*(*v43 + 5))();
      }
    }
  }

  return result;
}

uint64_t *re::FileAssetProvider::getDescription(re::FileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 5))();
    }
  }

  return result;
}

uint64_t (***re::FileAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, const re::internal::AssetTypeRegistry *a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>))(void)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  re::DynamicString::setCapacity(&v36, 0);
  Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v36);
  if (Descriptor)
  {
    if (v37)
    {
      v11 = v38;
    }

    else
    {
      v11 = &v37 + 1;
    }

    v12 = re::DynamicString::format(&v33, "sourcepath:%s", v10, v11);
    LODWORD(v26) = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v13 = re::DynamicString::setCapacity(&v26 + 1, 0);
    *(&v30 + 1) = 0;
    v31 = 0uLL;
    re::DynamicString::setCapacity(&v30, 0);
    v32 = 0;
    if (v34)
    {
      v14 = *&v35[7];
    }

    else
    {
      v14 = v35;
    }

    v15 = re::AssetPath::parse(v23, &v26, v14, 0, a3, a4);
    if ((v23[0] & 1) == 0 && v24)
    {
      if (BYTE8(v24))
      {
        (*(*v24 + 40))(v15);
      }

      v25 = 0u;
      v24 = 0u;
    }

    re::DynamicString::DynamicString(&v20, &v33);
    *a5 = 1;
    *(a5 + 8) = v20;
    *(a5 + 32) = v22;
    *(a5 + 16) = v21;
    if (v30)
    {
      if (BYTE8(v30))
      {
        (*(*v30 + 40))();
      }

      v31 = 0u;
      v30 = 0u;
    }

    if (*(&v26 + 1) && (v27 & 1) != 0)
    {
      (*(**(&v26 + 1) + 40))();
    }

    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }
  }

  else
  {
    v16 = v26;
    v17 = v27;
    v18 = v28;
    *a5 = 0;
    *(a5 + 8) = v16;
    *(a5 + 24) = v17;
    *(a5 + 32) = v18;
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*v36)[5]();
    }
  }

  return result;
}

uint64_t *re::FileAssetProvider::makeDescriptorFromAssetPath@<X0>(re::FileAssetProvider *this@<X0>, const char ***a2@<X1>, uint64_t a3@<X8>)
{
  v26 = 0;
  v25 = 0u;
  re::DynamicString::setCapacity(&v24, 0);
  v5 = re::AssetPath::filePathToAsset(a2, &v24, 1, 0);
  v6 = *a2[9];
  re::FileAssetProvider::makeDescriptor(&v24, v11, &v12);
  *(a3 + 16) = v13;
  *(a3 + 48) = v15;
  v7 = v18;
  *(a3 + 72) = v17;
  *a3 = 1;
  *(a3 + 8) = v12;
  v12 = 0;
  v8 = v14;
  v14 = 0u;
  v13 = 0u;
  *(a3 + 32) = v8;
  v15 = 0u;
  ++v16;
  *(a3 + 64) = 1;
  *(a3 + 88) = v7;
  v17 = 0u;
  v18 = 0u;
  ++v19;
  *(a3 + 104) = 1;
  *(a3 + 112) = v20;
  v20 = 0u;
  v9 = v23;
  *(a3 + 136) = v22;
  *(a3 + 144) = v9;
  v22 = 0;
  v23 = 0;
  *(a3 + 128) = v21;
  v21 = 0;
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))(v24, *(&v25 + 1));
    }
  }

  return result;
}

void *re::allocInfo_NetworkAssetService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_41, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_41))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191E88, "NetworkAssetService");
    __cxa_guard_release(&_MergedGlobals_41);
  }

  return &unk_1EE191E88;
}

void re::initInfo_NetworkAssetService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x999814F5B285CDA6;
  v8[1] = "NetworkAssetService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_NetworkAssetService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t reality_v1_entry_load_data_seek_to_chunk_for_offset(unint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return -1;
  }

  if (*(a2 + 32))
  {
    result = -1;
    v4 = 1;
  }

  else
  {
    result = zip_entry_seek_to_chunk_for_offset(a1, *(a2 + 24));
    v4 = **(a2 + 24);
  }

  *a2 = v4;
  return result;
}

unint64_t reality_v1_entry_load_data_read(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    result = zip_entry_load_data_read(a1, a2, *(a3 + 24));
    *a3 = **(a3 + 24);
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v8 = *(a3 + 64);
  while (1)
  {
    if (v8)
    {
      v9 = *(a3 + 8);
    }

    else
    {
      v10 = *(a3 + 40);
      v11 = *(a3 + 48);
      *(a3 + 56) = v10;
      v8 = zip_entry_load_data_read(v10, v11, *(a3 + 24));
      *(a3 + 64) = v8;
      v9 = *(a3 + 8) + v8;
      *(a3 + 8) = v9;
      v12 = **(a3 + 24);
      *a3 = v12;
      if (v12)
      {
        return 0;
      }
    }

    v13 = v9 == *(a3 + 16);
    v18 = *(a3 + 56);
    v19 = v8;
    v20 = v3 + a1;
    v21 = a2 - v3;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    reality_compression_process_read_chunk(&v15, *(a3 + 32), &v18, v13);
    v14 = v15;
    if (!v15)
    {
      break;
    }

    v8 = v19;
    *(a3 + 56) = v18;
    *(a3 + 64) = v8;
    v3 += v16;
    if (v14 == 1 || v3 >= a2)
    {
      return v3;
    }
  }

  v3 = 0;
  *a3 = 1;
  return v3;
}

void reality_v1_entry_load_data_end(uint64_t a1)
{
  zip_entry_load_data_end(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    reality_compression_stream_end(v2);
    free(*(a1 + 40));
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB9490;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) == 11 && *(a2 + 72) == re::AssetHandle::introspectionSerialize)
  {
    v3 = *(*(result + 8) + 24);
    v6 = *a3;
    if (v3)
    {
      return (*(*v3 + 48))(v3, &v6);
    }

    else
    {
      v4 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(v4, v5);
    }
  }

  return result;
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t reality_archive_file_upgrade(const char *a1, const char *a2, int a3)
{
  v5 = zip_file_open(a1);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  *(v5 + 104) = 4096;
  zip_file_create(a2);
  v44 = v7;
  if (!v7)
  {
    goto LABEL_91;
  }

  v8 = v7;
  *(v7 + 104) = 4096;
  v9 = v6[23];
  v10 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
  if (!v9)
  {
    v38 = v8;
    v39 = a2;
LABEL_84:
    zip_save_manifest(v38, v39, &v44, 1uLL);
    if (!zip_close(v6))
    {
      v6 = 0;
      goto LABEL_88;
    }

    if (v8)
    {
      v6 = zip_close(v8);
      free(v10);
    }

    else
    {
      free(v10);
      return 1;
    }

    return v6;
  }

  v11 = 0;
  if (a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v41 = v12;
  while (1)
  {
    v13 = *(v6[19] + 8 * ((v6[22] + v11) / 0x27uLL)) + 104 * ((v6[22] + v11) % 0x27uLL);
    v14 = (v13 + 8);
    v15 = *(v13 + 31);
    if (v15 < 0)
    {
      break;
    }

    if (!*(v13 + 31) || v14[v15 - 1] != 47)
    {
      v42 = *(v6[19] + 8 * ((v6[22] + v11) / 0x27uLL)) + 104 * ((v6[22] + v11) % 0x27uLL);
      goto LABEL_16;
    }

LABEL_14:
    zip_clone_entry(v44, v13);
    if (++v11 == v9)
    {
      v8 = v44;
      v38 = v44;
      v39 = a2;
      goto LABEL_84;
    }
  }

  v16 = *(v13 + 16);
  if (v16 && *(*v14 + v16 - 1) == 47)
  {
    goto LABEL_14;
  }

  v42 = *(v6[19] + 8 * ((v6[22] + v11) / 0x27uLL)) + 104 * ((v6[22] + v11) % 0x27uLL);
  v14 = *v14;
LABEL_16:
  v17 = strlen(v14);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memmove(&__dst, v14, v17);
  }

  __dst.__r_.__value_.__s.__data_[v18] = 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  p_dst = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  else
  {
    p_dst = &__dst;
  }

  if (!size)
  {
    if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_40;
    }

LABEL_44:
    if (__dst.__r_.__value_.__l.__size_ == 11)
    {
      v34 = __dst.__r_.__value_.__r.__words[0];
      if (*__dst.__r_.__value_.__l.__data_ == 0x6A2E726564616568 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 0x6E6F736A2E726564)
      {
        v37 = 0;
        goto LABEL_75;
      }
    }

    else if (__dst.__r_.__value_.__l.__size_ == 13)
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_47;
    }

    v33 = v44;
    v32 = v41;
LABEL_67:
    v34 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_68;
  }

  v22 = (p_dst + size);
  v23 = p_dst;
  v24 = v22;
  do
  {
    if (v23->__r_.__value_.__s.__data_[0] == 46)
    {
      v25 = 1u;
      while (v25 != 4)
      {
        if ((v23 + v25) == v22)
        {
          goto LABEL_36;
        }

        v26 = v23->__r_.__value_.__s.__data_[v25];
        v27 = aArz[v25++];
        if (v26 != v27)
        {
          goto LABEL_28;
        }
      }

      v24 = v23;
    }

LABEL_28:
    v23 = (v23 + 1);
  }

  while (v23 != v22);
LABEL_36:
  if (v24 != v22 && v24 - p_dst != -1)
  {
    std::string::erase(&__dst, v24 - p_dst, 0xFFFFFFFFFFFFFFFFLL);
    v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v20 < 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  if (v20 == 11)
  {
    v35 = __dst.__r_.__value_.__r.__words[0] == 0x6A2E726564616568 && *(__dst.__r_.__value_.__r.__words + 3) == 0x6E6F736A2E726564;
    if (!v35)
    {
      goto LABEL_61;
    }

    v37 = 0;
    v34 = &__dst;
LABEL_75:
    v33 = v44;
    goto LABEL_76;
  }

  if (v20 != 13)
  {
LABEL_61:
    v34 = &__dst;
    v33 = v44;
    v32 = v41;
    goto LABEL_68;
  }

  v28 = &__dst;
LABEL_47:
  v29 = bswap64(*v28);
  v30 = 0x61737365744D6170;
  if (v29 == 0x61737365744D6170 && (v29 = bswap64(*(v28 + 5)), v30 = 0x4D61702E6A736F6ELL, v29 == 0x4D61702E6A736F6ELL))
  {
    v31 = 0;
  }

  else if (v29 < v30)
  {
    v31 = -1;
  }

  else
  {
    v31 = 1;
  }

  v35 = v31 == 0;
  v32 = v41;
  if (v35)
  {
    v32 = 0;
  }

  v33 = v44;
  if (v20 < 0)
  {
    goto LABEL_67;
  }

  v34 = &__dst;
LABEL_68:
  if ((v32 - 2) >= 2)
  {
    if (v32 == 1)
    {
      v37 = 8;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 99;
  }

LABEL_76:
  if (zip_create_entry(v33, v34, v37, 0))
  {
    reality_v1_entry_load_data_begin(v42);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v8 = v44;
LABEL_88:
  free(v10);
  if (v8)
  {
    zip_close(v8);
  }

  if (v6)
  {
LABEL_91:
    zip_close(v6);
    return 0;
  }

  return v6;
}