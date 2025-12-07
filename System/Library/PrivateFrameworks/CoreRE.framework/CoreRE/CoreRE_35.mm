void re::internal::PushLoadManager::updateAssetWithPayload(uint64_t a1, char *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  re::AssetManager::assetHandle(*(a1 + 72), a2, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = *(v11 + 24);
    os_unfair_lock_lock((v11 + 512));
    re::AssetManager::processUpdatedResourcePayload_entryStateLocked(v7, v6, a3, v8);
    os_unfair_lock_unlock(v6 + 128);
  }

  else
  {
    v9 = *re::assetsLogObjects(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Attempted to update asset with payload for asset path '%s', but asset handle is null", buf, 0xCu);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

void re::internal::PushLoadManager::pushLoadAssetWithPayload(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v73[6] = *MEMORY[0x1E69E9840];
  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v16 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "PushLoadManager: received push load asset with payload for '%llu'", buf, 0xCu);
    }
  }

  v17 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 24, a2);
  if (v17)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      v18 = re::internal::AssetEntry::fromPeerID(buf, v18);
    }

    v19 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "PushLoadManager: received push load asset with payload for '%llu', but asset already exists in pushLoadedAssets", buf, 0xCu);
    }
  }

  else
  {
    v20 = re::internal::AssetTypeRegistry::assetTypeWithName(*(*(a1 + 72) + 1808), a3);
    if (v20)
    {
      v21 = v20;
      memset(buf, 0, sizeof(buf));
      v22 = re::DynamicString::setCapacity(buf, 0);
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v70 = 0u;
      v71 = 0u;
      v69 = 0;
      v72 = 0;
      memset(v73, 0, 40);
      v23 = re::DynamicString::setCapacity(&v73[1], 0);
      v24 = *v21;
      re::NetworkAssetLoadDescriptor::init(buf, a2, v63);
      if (*&v63[0])
      {
        if (BYTE8(v63[0]))
        {
          (*(**&v63[0] + 40))();
        }

        memset(v63, 0, sizeof(v63));
      }

      v25 = *(a1 + 72);
      os_unfair_lock_lock(v25 + 32);
      re::AssetManager::assetHandle_assetTablesLocked(v25, buf, a2, &v61);
      os_unfair_lock_unlock(v25 + 32);
      v26 = v62;
      os_unfair_lock_lock(v62 + 128);
      re::internal::AssetEntry::setOwnerPeerID(v62, a4);
      re::internal::AssetEntry::setFromPeerID(v62, a5);
      v27 = v62;
      atomic_store(a6, v62 + 204);
      if (a8)
      {
        *(v27 + 272) = 1;
      }

      v59 = 0uLL;
      v60 = 0;
      re::AssetHandle::operator=(&v59, &v61);
      memset(v64, 0, 24);
      v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v29 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v64, a1 + 24, a2, v28 ^ (v28 >> 31));
      if (*&v64[12] == 0x7FFFFFFF)
      {
        v29 = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 24, *&v64[8], *v64);
        *(v29 + 8) = a2;
        *(v29 + 16) = v59;
        v59 = 0uLL;
        *(v29 + 32) = v60;
        v60 = 0;
        ++*(a1 + 64);
      }

      if (atomic_load(v62 + 224))
      {
        v31 = *re::assetsLogObjects(v29);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = atomic_load(v62 + 224);
          *v64 = 134218240;
          *&v64[4] = a2;
          *&v64[12] = 1024;
          *&v64[14] = v32;
          _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "PushLoadManager: received push load asset with payload for '%llu', but load state is not unloaded (%d).", v64, 0x12u);
        }
      }

      else
      {
        v35 = *(a1 + 80);
        v58 = 0;
        if (v35)
        {
          if (*(v62 + 136))
          {
            v36 = *(v62 + 18);
          }

          else
          {
            v36 = v62 + 137;
          }

          (*(*v35 + 80))(&v57, v35, a5, v64);
          v38 = v57;
          v57 = 0;
          v58 = v38;
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v57, v39, v40, v41);
          if (*v64 && (v64[8] & 1) != 0)
          {
            (*(**v64 + 40))();
          }
        }

        else
        {
          v37 = *re::assetsLogObjects(v29);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *v64 = 0;
            _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "PushLoadManager: m_resourceFetchService is null in pushLoadAssetWithPayload!", v64, 2u);
          }

          v38 = 0;
        }

        v42 = v62;
        v43 = *(v62 + 3);
        v55[0] = *a7;
        v56 = *(a7 + 8);
        v54 = v38;
        if (v38)
        {
          v44 = (v38 + 2);
          if (!atomic_load(v38 + 2))
          {
            v53 = atomic_load(v44);
            re::internal::refCountCheckFailHandler(1, v38, v53);
          }

          add_explicit = atomic_fetch_add_explicit(v44, 1u, memory_order_relaxed);
          if (add_explicit - 0x100000 <= 0xFFEFFFFE)
          {
            re::internal::refCountCheckFailHandler(1, v38, (add_explicit + 1));
          }
        }

        re::AssetManager::loadAssetFromPayload_entryStateLocked(v43, v42, v55, &v54);
        re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v54, v47, v48, v49);

        re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v58, v50, v51, v52);
      }

      re::AssetHandle::~AssetHandle(&v59);
      os_unfair_lock_unlock(v26 + 128);
      re::AssetHandle::~AssetHandle(&v61);
      if (v73[1])
      {
        if (v73[2])
        {
          (*(*v73[1] + 40))();
        }

        memset(&v73[1], 0, 32);
      }

      if (*(&v70 + 1))
      {
        if (v73[0])
        {
          (*(**(&v70 + 1) + 40))();
        }

        v73[0] = 0;
        v71 = 0uLL;
        *(&v70 + 1) = 0;
        ++v72;
      }

      if (v66)
      {
        if (v70)
        {
          (*(*v66 + 40))();
        }

        *&v70 = 0;
        v67 = 0;
        v68 = 0;
        v66 = 0;
        ++v69;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }
    }

    else
    {
      v33 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = a3;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Could not find asset type named '%s' in the type registry. Aborting push-load for asset %llu.", buf, 0x16u);
      }

      v34 = *(a1 + 80);
      if (v34)
      {
        (*(*v34 + 128))(v34, a2, a5, 3, 0, 200);
      }
    }
  }
}

atomic_uint **re::SharedPtr<re::ResourceRequest>::~SharedPtr(atomic_uint **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*a1)
  {
    add = atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    v7 = (add - 1);
    if (add - 1048578 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(0, v5, v7);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else if (add != 1)
    {
LABEL_5:
      *a1 = 0;
      return a1;
    }

    (*(*v5 + 16))(v5, a2, a3, a4);
    goto LABEL_5;
  }

  return a1;
}

void re::internal::PushLoadManager::releaseAsset(re::internal::PushLoadManager *this, unint64_t a2)
{
  v4 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 24, a2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      re::internal::AssetEntry::fromPeerID(&v6, v5);
    }

    re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 24, a2);
  }
}

void re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 48 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 48 * v13) = *(v5 + 48 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::AssetHandle::~AssetHandle((v6 + 4));
      v5 = *(a1 + 16);
      v8 = *(v5 + 48 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 48 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

uint64_t re::internal::PushLoadManager::onPeerDisconnected(re::internal::PushLoadManager *this, uint64_t a2)
{
  v21 = 0;
  v18[1] = 0;
  v19 = 0;
  v18[0] = 0;
  v20 = 0;
  v4 = *(this + 14);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 5);
    while (1)
    {
      v7 = *v6;
      v6 += 12;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(this + 14);
    do
    {
      v9 = *(this + 5) + 48 * v5;
      v10 = *(v9 + 24);
      if (v10)
      {
        re::internal::AssetEntry::fromPeerID(v17, v10);
        if (LOBYTE(v17[0]) == 1 && v17[1] == a2)
        {
          re::DynamicArray<re::TransitionCondition *>::add(v18, (v9 + 8));
        }

        v8 = *(this + 14);
      }

      if (v8 <= v5 + 1)
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = v8;
      }

      while (v12 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 5) + 48 * v5) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v5) = v12;
LABEL_24:
      ;
    }

    while (v5 != v4);
    if (v19)
    {
      v13 = v21;
      v14 = 8 * v19;
      do
      {
        v15 = *v13++;
        re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 24, v15);
        v14 -= 8;
      }

      while (v14);
    }
  }

  result = v18[0];
  if (v18[0])
  {
    if (v21)
    {
      return (*(*v18[0] + 40))();
    }
  }

  return result;
}

void re::internal::PushLoadManager::~PushLoadManager(re::internal::PushLoadManager *this)
{
  *this = &unk_1F5CB9520;
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9520;
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::AssetHandle::~AssetHandle((v6 + v4 + 16));
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

uint64_t re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[2] % *(a1 + 24), v17[2]);
                v19 = *(v17 - 2);
                v18[3] = 0;
                v18[4] = 0;
                v18[1] = v19;
                v18[2] = 0;
                v18[3] = *v17;
                *v17 = 0;
                v20 = v18[2];
                v18[2] = 0;
                v18[2] = *(v17 - 1);
                *(v17 - 1) = v20;
                v21 = v18[4];
                v18[4] = v17[1];
                v17[1] = v21;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 48 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 40) = a3;
  ++*(a1 + 28);
  return v22 + 48 * v5;
}

uint64_t re::AssetSerializationScheme::storedCodingKey(re::AssetSerializationScheme *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::AssetHandle::serializationString(a2, &v8);
  if (v9)
  {
    v5 = v9 >> 1;
  }

  else
  {
    v5 = v9 >> 1;
  }

  if (v5)
  {
    re::DynamicString::operator=(this, &v8);
  }

  else
  {
    if (*(a2 + 1))
    {
      v6 = 0;
      goto LABEL_9;
    }

    v10[0] = "";
    v10[1] = 0;
    re::DynamicString::operator=(this, v10);
  }

  v6 = 1;
LABEL_9:
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v6;
}

os_unfair_lock_s *re::AssetSerializationScheme::deviceCodingKey(re::DynamicString *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 24);
  if (result)
  {
    re::AssetManager::deviceAssetPath(result, a4, a2, a3, v7);
    if (v7[0])
    {
      re::DynamicString::operator=(a1, &v8);
      if (v7[0] & 1) != 0 && v8 && (v9)
      {
        (*(*v8 + 40))();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::AssetSerializationScheme::relativeCodingKey(re::DynamicString *a1, re::AssetHandle *this, unsigned __int8 *a3)
{
  v3 = *a3;
  if (v3 == 1)
  {
    v6 = re::AssetHandle::legacy_assetPath(this);
    re::AssetPath::makeRelativeAssetPath((a3 + 8), v6, &v8);
    re::DynamicString::operator=(a1, &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  return v3;
}

uint64_t re::AssetSerializationScheme::commonCodingKey(re::AssetSerializationScheme *a1, re::DynamicString *a2, const re::AssetHandle *a3, unsigned __int8 *a4)
{
  re::Optional<re::AssetPath>::Optional(v8, a4);
  re::AssetSerializationScheme::commonCodingKeyInternal(a1, a2, a3, v8);
  if (v8[0] == 1)
  {
    if (v11)
    {
      if (BYTE8(v11))
      {
        (*(*v11 + 40))();
      }

      v11 = 0u;
      v12 = 0u;
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  return 1;
}

uint64_t re::AssetSerializationScheme::commonCodingKeyInternal(re::AssetSerializationScheme *a1, re::DynamicString *a2, const re::AssetHandle *a3, unsigned __int8 *a4)
{
  if (re::AssetSerializationScheme::storedCodingKey(a1, a2, a3))
  {
    return 1;
  }

  if (re::AssetSerializationScheme::deviceCodingKey(a1, 0, a3, a2))
  {
    return 2;
  }

  re::Optional<re::AssetPath>::Optional(v13, a4);
  v9 = re::AssetSerializationScheme::relativeCodingKey(a1, a2, v13);
  if (v13[0] == 1)
  {
    if (v16)
    {
      if (BYTE8(v16))
      {
        (*(*v16 + 40))();
      }

      v16 = 0u;
      v17 = 0u;
    }

    if (v14)
    {
      if (BYTE8(v14))
      {
        (*(*v14 + 40))();
      }

      v14 = 0u;
      v15 = 0u;
    }
  }

  if (v9)
  {
    return 3;
  }

  v10 = re::AssetHandle::assetInfo(a2);
  if (*(v10 + 13))
  {
    v11 = *(v10 + 14);
  }

  else
  {
    v11 = v10 + 105;
  }

  v12 = strlen(v11);
  v18[0] = v11;
  v18[1] = v12;
  re::DynamicString::operator=(a1, v18);
  return 4;
}

uint64_t re::Optional<re::AssetPath>::Optional(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    *(a1 + 8) = *(a2 + 2);
    re::DynamicString::DynamicString((a1 + 16), (a2 + 16));
    re::DynamicString::DynamicString((a1 + 48), (a2 + 48));
    *(a1 + 80) = *(a2 + 10);
  }

  return a1;
}

void re::AssetSerializationScheme::relativeHandle(re::AssetHandle *a1, const re::internal::AssetTypeRegistry **this, char *a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    re::AssetManager::assetHandleWithParentAssetPath(this, a3, (a4 + 8), 1, a1);
  }

  else
  {
    re::AssetManager::assetHandle(this, a3, 1, a1);
  }
}

re::DefaultAssetSerialize *re::DefaultAssetSerialize::DefaultAssetSerialize(re::DefaultAssetSerialize *this, const re::AssetHandle *a2)
{
  *this = &unk_1F5CB98A0;
  *(this + 8) = 0;
  v3 = this + 8;
  if (a2)
  {
    v4 = re::AssetHandle::legacy_assetPath(a2);
    v6[0] = 1;
    v7 = *v4;
    re::DynamicString::DynamicString(&v8, (v4 + 1));
    re::DynamicString::DynamicString(v10, (v4 + 5));
    v10[4] = v4[9];
  }

  else
  {
    v6[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v3, v6);
  if (v6[0] == 1)
  {
    if (v10[0])
    {
      if (v10[1])
      {
        (*(*v10[0] + 40))();
      }

      memset(v10, 0, 32);
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  return this;
}

uint64_t re::Optional<re::AssetPath>::operator=(uint64_t a1, uint64_t a2)
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

uint64_t re::DefaultAssetSerialize::fromHandle(re::DefaultAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::Optional<re::AssetPath>::Optional(v6, this + 8);
  re::AssetSerializationScheme::commonCodingKey(a2, a3, 0xF, v6);
  if (v6[0] == 1)
  {
    if (v9)
    {
      if (BYTE8(v9))
      {
        (*(*v9 + 40))();
      }

      v9 = 0u;
      v10 = 0u;
    }

    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 1;
}

void re::DefaultAssetSerialize::toHandle(re::DefaultAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using DefaultAssetSerialize class", "!Unreachable code", "toHandle", 152);
  _os_crash("assertion failure: (!Unreachable code) Cannot deserialize using DefaultAssetSerialize class");
  __break(1u);
}

re::DirectAssetDeserialize *re::DirectAssetDeserialize::DirectAssetDeserialize(re::DirectAssetDeserialize *this, AssetService *a2, const re::AssetPath *a3)
{
  *this = &unk_1F5CB95A0;
  *(this + 8) = 0;
  v4 = this + 8;
  *(this + 12) = a2;
  if (a3)
  {
    v7[0] = 1;
    v8 = *a3;
    re::DynamicString::DynamicString(&v9, (a3 + 8));
    re::DynamicString::DynamicString(v11, (a3 + 40));
    v11[4] = *(a3 + 9);
  }

  else
  {
    v7[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v4, v7);
  if (v7[0] == 1)
  {
    if (v11[0])
    {
      if (v11[1])
      {
        (*(*v11[0] + 40))();
      }

      memset(v11, 0, 32);
    }

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  return this;
}

BOOL re::DirectAssetDeserialize::toHandle(re::DirectAssetDeserialize *this, re::AssetHandle *a2, char *a3, re::Allocator *a4)
{
  v6 = *(this + 12);
  re::Optional<re::AssetPath>::Optional(v10, this + 8);
  re::AssetSerializationScheme::relativeHandle(&v15, v6, a3, v10);
  v7 = *a2;
  *a2 = v15;
  v15 = v7;
  v8 = *(a2 + 2);
  *(a2 + 2) = v16;
  v16 = v8;
  re::AssetHandle::~AssetHandle(&v15);
  if (v10[0] == 1)
  {
    if (v13)
    {
      if (BYTE8(v13))
      {
        (*(*v13 + 40))();
      }

      v13 = 0u;
      v14 = 0u;
    }

    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
    }
  }

  return *(a2 + 1) != 0;
}

void re::DirectAssetDeserialize::fromHandle(re::DirectAssetDeserialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using DirectAssetDeserialize class", "!Unreachable code", "fromHandle", 177);
  _os_crash("assertion failure: (!Unreachable code) Cannot serialize using DirectAssetDeserialize class");
  __break(1u);
}

void re::DeferredAssetDeserialize::fromHandle(re::DeferredAssetDeserialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using DeferredAssetDeserialize class", "!Unreachable code", "fromHandle", 184);
  _os_crash("assertion failure: (!Unreachable code) Cannot serialize using DeferredAssetDeserialize class");
  __break(1u);
}

re::RemappedAssetSerialize *re::RemappedAssetSerialize::RemappedAssetSerialize(re::RemappedAssetSerialize *this, const re::AssetPath *a2, const re::AssetPathMapping *a3)
{
  *this = &unk_1F5CB95D0;
  *(this + 8) = 0;
  v5 = this + 8;
  if (a2)
  {
    v8[0] = 1;
    v9 = *a2;
    re::DynamicString::DynamicString(&v10, (a2 + 8));
    re::DynamicString::DynamicString(v12, (a2 + 40));
    v12[4] = *(a2 + 9);
  }

  else
  {
    v8[0] = 0;
  }

  re::Optional<re::AssetPath>::operator=(v5, v8);
  if (v8[0] == 1)
  {
    if (v12[0])
    {
      if (v12[1])
      {
        (*(*v12[0] + 40))();
      }

      memset(v12, 0, 32);
    }

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  *(this + 12) = a3;
  return this;
}

uint64_t re::RemappedAssetSerialize::fromHandle(re::RemappedAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  v6 = *(this + 12);
  if (!v6 || (re::AssetPathMapping::lookupString(v6, a2, a3) & 1) == 0)
  {
    re::Optional<re::AssetPath>::Optional(v8, this + 8);
    re::AssetSerializationScheme::commonCodingKey(a2, a3, 0xF, v8);
    if (v8[0] == 1)
    {
      if (v11)
      {
        if (BYTE8(v11))
        {
          (*(*v11 + 40))();
        }

        v11 = 0u;
        v12 = 0u;
      }

      if (v9 && (v10 & 1) != 0)
      {
        (*(*v9 + 40))();
      }
    }
  }

  return 1;
}

void re::RemappedAssetSerialize::toHandle(re::RemappedAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using RemappedAssetSerialize class", "!Unreachable code", "toHandle", 212);
  _os_crash("assertion failure: (!Unreachable code) Cannot deserialize using RemappedAssetSerialize class");
  __break(1u);
}

uint64_t re::RealityFileAssetSerialize::fromHandle(re::RealityFileAssetSerialize *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(this + 12);
  if (!v6)
  {
    re::AssetHandle::getLegacyAppPath(&v23, a3);
    if (v23 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  if (!re::AssetPathMapping::lookupString(v6, a2, a3))
  {
    re::AssetHandle::getLegacyAppPath(&v23, a3);
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_8:
    re::Optional<re::AssetPath>::Optional(v18, this + 8);
    v9 = re::AssetSerializationScheme::commonCodingKeyInternal(a2, a3, 0xF, v18);
    if (v18[0] == 1)
    {
      if (v21)
      {
        if (BYTE8(v21))
        {
          (*(*v21 + 40))();
        }

        v21 = 0u;
        v22 = 0u;
      }

      if (v19)
      {
        if (BYTE8(v19))
        {
          (*(*v19 + 40))();
        }

        v19 = 0u;
        v20 = 0u;
      }
    }

    v10 = *(this + 104);
    v8 = 1;
    if ((v10 & 1) == 0 && v9 == 3)
    {
      if ((atomic_load_explicit(&qword_1EE191F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F20))
      {
        _MergedGlobals_42 = 1;
        __cxa_guard_release(&qword_1EE191F20);
      }

      if (*(a2 + 1))
      {
        v11 = *(a2 + 2);
      }

      else
      {
        v11 = a2 + 9;
      }

      if (_MergedGlobals_42)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v13 = strncmp(v11, "assetId:", v12);
      if (!v13)
      {
        v14 = *re::assetsLogObjects(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (*(a2 + 1))
          {
            v17 = *(a2 + 2);
          }

          else
          {
            v17 = a2 + 9;
          }

          *buf = 136315138;
          v27 = v17;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "RealityFileAssetSerialize generated an AssetId-based serialization string: '%s'.", buf, 0xCu);
        }

        v8 = 0;
      }
    }

    goto LABEL_31;
  }

  if (re::AssetPath::pathIsAppBased(a2))
  {
    re::Defaults::BOOLValue(&v23, "AllowAppBasedAssetPaths", v7);
    v8 = v23 & BYTE1(v23);
    return v8 & 1;
  }

  re::AssetHandle::getLegacyAppPath(&v23, a3);
  if ((v23 & 1) == 0)
  {
    v8 = 1;
    goto LABEL_31;
  }

LABEL_30:
  re::DynamicString::operator=(a2, &v24);
  re::Defaults::BOOLValue(buf, "AllowAppBasedAssetPaths", v15);
  v8 = buf[0] & buf[1];
LABEL_31:
  if (v23 == 1 && v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  return v8 & 1;
}

void re::RealityFileAssetSerialize::toHandle(re::RealityFileAssetSerialize *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Cannot deserialize using RealityFileAssetSerialize class", "!Unreachable code", "toHandle", 266);
  _os_crash("assertion failure: (!Unreachable code) Cannot deserialize using RealityFileAssetSerialize class");
  __break(1u);
}

void re::RealityFileAssetDeserialization::fromHandle(re::RealityFileAssetDeserialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot serialize using RealityFileAssetDeserialization class", "!Unreachable code", "fromHandle", 278);
  _os_crash("assertion failure: (!Unreachable code) Cannot serialize using RealityFileAssetDeserialization class");
  __break(1u);
}

uint64_t re::RealityFileAssetDeserialization::toHandle(re::RealityFileAssetDeserialization *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  if (!re::AssetPath::pathIsAppBased(&v11) || (re::Defaults::BOOLValue(&v13, "AllowAppBasedAssetPaths", v8), v9 = 0, v13 == 1) && (v13 & 0x100) != 0)
  {
    v9 = (*(**(this + 1) + 24))(*(this + 1), a2, a3, a4);
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v9;
}

uint64_t re::NetworkAssetSerialization::fromHandle(re::NetworkAssetSerialization *this, re::DynamicString *a2, os_unfair_lock_s **a3)
{
  if (a3[1])
  {
    v6 = re::AssetHandle::assetInfo(a3);
    if (v6[10] == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6[10];
    }

    v9 = a3[1];
    if (v9 && (v10 = *&v9[70]._os_unfair_lock_opaque) != 0)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    re::AssetSignpost::fireImpulse(0x80A, v8, v11, v7);
  }

  if ((re::AssetSerializationScheme::storedCodingKey(a2, a3, a3) & 1) == 0 && (re::AssetSerializationScheme::deviceCodingKey(a2, 1, 15, a3) & 1) == 0)
  {
    v12 = a3[1];
    if (v12 && (os_unfair_lock_lock(v12 + 128), os_unfair_lock_opaque = v12[137]._os_unfair_lock_opaque, os_unfair_lock_unlock(v12 + 128), os_unfair_lock_opaque == 2))
    {
      v17 = "nosync";
      v18 = 6;
      re::DynamicString::operator=(a2, &v17);
    }

    else
    {
      v14 = re::AssetHandle::legacy_assetPath(a3);
      if (*(this + 112))
      {
        v15 = *(this + 15);
      }

      else
      {
        v15 = this + 113;
      }

      re::AssetPath::assetPathForNetwork(v14, v15, &v17);
      re::DynamicString::operator=(a2, &v17);
      if (v17 && (v18 & 1) != 0)
      {
        (*(*v17 + 40))();
      }
    }
  }

  return 1;
}

uint64_t re::NetworkAssetSerialization::toHandle(re::NetworkAssetSerialization *this, re::AssetHandle *a2, char *__s1, re::Allocator *a4)
{
  v69[6] = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "nosync"))
  {
    return 1;
  }

  v7 = v50;
  if (*(this + 8))
  {
    v8 = (this + 16);
  }

  else
  {
    v8 = 0;
  }

  re::StackScratchAllocator::StackScratchAllocator(v55);
  v9 = re::AssetManager::parseAssetPath(&v47, *(this + 17), v55, __s1, v8, 1);
  if (v47)
  {
    if (v48 != 8)
    {
LABEL_13:
      v13 = *(this + 17);
      re::Optional<re::AssetPath>::Optional(v41, this + 8);
      re::AssetSerializationScheme::relativeHandle(v61, v13, __s1, v41);
      v14 = *a2;
      *a2 = *v61;
      *v61 = v14;
      v15 = *(a2 + 2);
      *(a2 + 2) = *&v61[16];
      *&v61[16] = v15;
      re::AssetHandle::~AssetHandle(v61);
      if (v41[0] == 1)
      {
        if (v44)
        {
          if (BYTE8(v44))
          {
            (*(*v44 + 40))();
          }

          v44 = 0u;
          v45 = 0u;
        }

        if (v42)
        {
          if (BYTE8(v42))
          {
            (*(*v42 + 40))();
          }

          v42 = 0u;
          v43 = 0u;
        }
      }

      if (*(re::AssetHandle::assetInfo(a2) + 22) == 4)
      {
        v16 = re::AssetHandle::legacy_assetPath(a2);
        v17 = (v16[2] & 1) != 0 ? v16[3] : v16 + 17;
        if ((*(*this + 32))(this, v17))
        {
          v18 = *(this + 17);
          v19 = re::AssetHandle::legacy_assetPath(a2);
          if (v19[48])
          {
            v20 = *(v19 + 7);
          }

          else
          {
            v20 = v19 + 49;
          }

          v21 = *(a2 + 1);
          if (v21)
          {
            v22 = *(v21 + 280);
          }

          else
          {
            v22 = 0;
          }

          re::AssetManager::assetHandleMemoryPath(v18, v20, v22, v61);
          v31 = *a2;
          *a2 = *v61;
          *v61 = v31;
          v32 = *(a2 + 2);
          *(a2 + 2) = *&v61[16];
          *&v61[16] = v32;
          re::AssetHandle::~AssetHandle(v61);
        }
      }

      if (*(a2 + 1))
      {
        v33 = re::AssetHandle::assetInfo(a2);
        if (v33[10] == -1)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33[10];
        }

        v36 = *(a2 + 1);
        if (v36 && (v37 = *(v36 + 280)) != 0)
        {
          v38 = *v37;
        }

        else
        {
          v38 = 0;
        }

        re::AssetSignpost::fireImpulse(0x80B, v35, v38, v34);
      }

      v23 = 1;
      goto LABEL_73;
    }

    v46 = 0;
    if (BYTE8(v52))
    {
      v10 = v53;
    }

    else
    {
      v10 = &v52 + 9;
    }

    v11 = sscanf(v10, "%llu", &v46);
    if (v11 == 1)
    {
      v12 = *(this + 17);
      os_unfair_lock_lock(v12 + 32);
      *v61 = v46;
      if (!re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v12[46], v61))
      {
        memset(v61, 0, sizeof(v61));
        v27 = re::DynamicString::setCapacity(v61, 0);
        v62 = 0;
        v63 = 0;
        v65 = 0;
        v64 = 0;
        v66 = 0u;
        v67 = 0u;
        v68 = 0;
        memset(v69, 0, 40);
        v28 = re::DynamicString::setCapacity(&v69[1], 0);
        v29 = v46;
        v30 = *v54;
        re::NetworkAssetLoadDescriptor::init(v61, v29, v56);
        if (*&v56[0])
        {
          if (BYTE8(v56[0]))
          {
            (*(**&v56[0] + 40))();
          }

          memset(v56, 0, sizeof(v56));
        }

        v60 = 0;
        v58 = 0;
        buf = 0uLL;
        v59 = 0;
        re::DynamicArray<re::AssetLoadDescriptor>::add(&buf, v61);
        re::internal::AssetIdLoadDescriptorTable::addNewImmutable(&v12[46], v46, &buf);
        re::DynamicArray<re::AssetLoadDescriptor>::deinit(&buf);
        if (v69[1])
        {
          if (v69[2])
          {
            (*(*v69[1] + 40))();
          }

          memset(&v69[1], 0, 32);
        }

        if (*(&v66 + 1))
        {
          if (v69[0])
          {
            (*(**(&v66 + 1) + 40))();
          }

          v69[0] = 0;
          v67 = 0uLL;
          *(&v66 + 1) = 0;
          ++v68;
        }

        if (v62)
        {
          if (v66)
          {
            (*(*v62 + 40))();
          }

          *&v66 = 0;
          v63 = 0;
          v64 = 0;
          v62 = 0;
          ++v65;
        }

        if (*v61 && (v61[8] & 1) != 0)
        {
          (*(**v61 + 40))();
        }
      }

      os_unfair_lock_unlock(v12 + 32);
      goto LABEL_13;
    }

    v25 = *re::assetsLogObjects(v11);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      re::AssetPath::fullAssetPath(&v48, v61);
      v26 = (v61[8] & 1) != 0 ? *&v61[16] : &v61[9];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v26;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "invalid asset path asset Id: %s", &buf, 0xCu);
      if (*v61)
      {
        if (v61[8])
        {
          (*(**v61 + 40))();
        }
      }
    }
  }

  else
  {
    v24 = *re::assetsLogObjects(v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (v50[8])
      {
        v40 = *&v51[7];
      }

      else
      {
        v40 = v51;
      }

      *v61 = 136315394;
      *&v61[4] = __s1;
      *&v61[12] = 2080;
      *&v61[14] = v40;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "asset string '%s' parse failed: %s", v61, 0x16u);
    }
  }

  v23 = 0;
LABEL_73:
  if (v47 == 1)
  {
    v7 = &v49;
    if (v52)
    {
      if (BYTE8(v52))
      {
        (*(*v52 + 40))();
      }

      v52 = 0u;
      v53 = 0u;
    }
  }

  re::DynamicString::deinit(v7);
  re::StackScratchAllocator::~StackScratchAllocator(v55);
  return v23;
}

uint64_t re::PassthroughAssetSerialization::fromHandle(re::PassthroughAssetSerialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::AssetHandle::serializationString(a3, &v5);
  re::DynamicString::operator=(a2, &v5);
  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return 1;
}

void re::PeanutToAlmondAssetSerialization::fromHandle(re::PeanutToAlmondAssetSerialization *this, re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected asset serialization, PeanutToAlmond not supported!", "!Unreachable code", "fromHandle", 464);
  _os_crash("assertion failure: (!Unreachable code) Unexpected asset serialization, PeanutToAlmond not supported!");
  __break(1u);
}

uint64_t re::PeanutToAlmondAssetSerialization::toHandle(re::PeanutToAlmondAssetSerialization *this, re::AssetHandle *a2, char *__s, re::Allocator *a4)
{
  v5 = __s;
  v31 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strncmp("reality:", v5, 8uLL);
  if (v9)
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    v30 = 0;
    re::DynamicString::setCapacity(buf, 0);
    v10 = re::AssetPath::removingCompiledExtension(v5, __s2);
    if (__s2[0] == 1)
    {
      v25 = 0;
      v26 = 0;
      if (v28)
      {
        v11 = v28 + 1;
      }

      else
      {
        v11 = 0;
      }

      *(&v24 + 1) = 0;
      re::DynamicString::setCapacity(&v24, v11);
      re::DynamicString::operator=(&v24, &__s2[8]);
      re::DynamicString::operator=(buf, &v24);
      if (v24 && (BYTE8(v24) & 1) != 0)
      {
        (*(*v24 + 40))();
      }

      if (buf[8])
      {
        v5 = *&buf[16];
      }

      else
      {
        v5 = &buf[9];
      }
    }

    re::AssetHandle::setSerializationString(a2, v5, a4);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    return 1;
  }

  else
  {
    strcpy(__s2, ".reality/");
    v12 = strstr(v5 + 8, __s2);
    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      strcpy(v23, "assets/");
      v15 = strstr(v5 + 8, v23);
      if (v15)
      {
        re::AssetManager::tryGetImmutableRealityFileAsset(*(this + 1), (v5 + 8), v14 - v5, (v15 + 7), &v5[v8] - (v15 + 7), buf);
        if (buf[0])
        {
          v17 = re::AssetHandle::legacy_assetPath(&buf[8]);
          v18 = *(v17 + 1);
          v25 = 0;
          v26 = 0;
          v24 = v18;
          re::DynamicString::setCapacity(&v24, 0);
          re::AssetPath::fullAssetPath(v17, &v24);
          if (BYTE8(v24))
          {
            v19 = v25;
          }

          else
          {
            v19 = (&v24 + 9);
          }

          re::AssetHandle::setSerializationString(a2, v19, a4);
          if (v24 && (BYTE8(v24) & 1) != 0)
          {
            (*(*v24 + 40))();
          }
        }

        else
        {
          v22 = *re::assetsLogObjects(v16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v24) = 136315138;
            *(&v24 + 4) = v5;
            _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "PeanutToAlmond Asset Deserialization: No existing asset found for %s", &v24, 0xCu);
          }
        }

        if (buf[0] == 1)
        {
          re::AssetHandle::~AssetHandle(&buf[8]);
        }
      }
    }

    else
    {
      v21 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = __s2;
        *&buf[12] = 2080;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "PeanutToAlmond Asset Deserialization failure: Invalid AssetHandle: No %s extension found in legacy reality file path '%s'", buf, 0x16u);
      }
    }
  }

  return v13;
}

uint64_t re::AlmondToPeanutAssetSerialization::fromHandle(re::AlmondToPeanutAssetSerialization *this, re::AssetPath **a2, const re::AssetHandle *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (!v6 || ((*(*v6 + 16))(v6, a2, a3) & 1) == 0)
  {
    re::AssetHandle::serializationString(a3, &v34);
    re::DynamicString::operator=(a2, &v34);
    if (v34)
    {
      if (v35[0])
      {
        (*(*v34 + 40))();
      }
    }
  }

  if (a2[1])
  {
    v8 = a2[2];
  }

  else
  {
    v8 = (a2 + 9);
  }

  AssetTypeFromFilePath = re::AssetPath::getAssetTypeFromFilePath(v8, *(*(this + 1) + 1808), v7);
  v10 = re::AssetPath::updateWithCompiledExtension(a2, AssetTypeFromFilePath);
  LODWORD(v34) = 0;
  memset(v35, 0, sizeof(v35));
  v11 = re::DynamicString::setCapacity(v35, 0);
  v37 = 0u;
  v36 = 0u;
  re::DynamicString::setCapacity(&v36, 0);
  v38 = 0;
  if (a2[1])
  {
    v12 = a2[2];
  }

  else
  {
    v12 = a2 + 9;
  }

  v13 = re::AssetPath::parse(v31, &v34, v12, 0, *(*(this + 1) + 1808), *(*(this + 1) + 1904));
  if ((v31[0] & 1) == 0 && v32)
  {
    if (BYTE8(v32))
    {
      (*(*v32 + 40))(v13);
    }

    v33 = 0u;
    v32 = 0u;
  }

  v30 = 0;
  if (v34 == 8 && ((BYTE8(v36) & 1) != 0 ? (v14 = v37) : (v14 = &v36 + 9), sscanf(v14, "%llu", &v30) == 1))
  {
    v15 = v30;
  }

  else
  {
    v16 = re::AssetHandle::assetInfo(a3);
    v15 = v16[10];
    if ((v15 + 1) < 2)
    {
      goto LABEL_40;
    }

    v30 = v16[10];
  }

  re::AssetManager::loadDescriptorsFromAssetId(*(this + 1), v15, v28);
  if (v28[0] == 1 && v29[2])
  {
    re::AssetManager::convertToAssetPath(*(this + 1), v29[4], &v23);
    if (v23 == 1)
    {
      if (v25)
      {
        v18 = v27;
      }

      else
      {
        v18 = v26;
      }

      v19 = strlen(v18);
      *&buf = v18;
      *(&buf + 1) = v19;
    }

    else
    {
      v20 = *re::assetsLogObjects(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v25)
        {
          v22 = v27;
        }

        else
        {
          v22 = v26;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "AlmondToPeanut AssetHandle Serialization Error: %s", &buf, 0xCu);
      }

      *&buf = "";
      *(&buf + 1) = 0;
    }

    re::DynamicString::operator=(a2, &buf);
    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }
  }

  else
  {
    v23 = "";
    v24 = 0;
    re::DynamicString::operator=(a2, &v23);
  }

  if (v28[0] == 1)
  {
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(v29);
  }

LABEL_40:
  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v37 = 0u;
    v36 = 0u;
  }

  if (v35[0] && (v35[1] & 1) != 0)
  {
    (*(*v35[0] + 40))();
  }

  return 1;
}

void re::AlmondToPeanutAssetSerialization::toHandle(re::AlmondToPeanutAssetSerialization *this, re::AssetHandle *a2, const char *a3, re::Allocator *a4)
{
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Unexpected asset deserialization, AlmondToPeanut not supported!", "!Unreachable code", "toHandle", 579);
  _os_crash("assertion failure: (!Unreachable code) Unexpected asset deserialization, AlmondToPeanut not supported!");
  __break(1u);
}

void re::DefaultAssetSerialize::~DefaultAssetSerialize(re::DefaultAssetSerialize *this)
{
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::DirectAssetDeserialize::~DirectAssetDeserialize(re::DirectAssetDeserialize *this)
{
  *this = &unk_1F5CB95A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::RemappedAssetSerialize::~RemappedAssetSerialize(re::RemappedAssetSerialize *this)
{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

void re::RealityFileAssetSerialize::~RealityFileAssetSerialize(re::RealityFileAssetSerialize *this)
{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CB95D0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::directMeshConnectionId(void **a1, const char *a2)
{
  v2 = *a1;
  if (v2)
  {
    objc_msgSend_auditToken(v2, a2);
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  atoken = v4;
  return audit_token_to_pid(&atoken);
}

void re::ResourceFetchManager::xpcInterface(void *a1@<X8>)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D43AC0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_associateConnectionWithPeerID_clientPorts_ argumentIndex:1 ofReply:0];

  v4 = v2;
  *a1 = v4;
}

void re::ResourceFetchManager::~ResourceFetchManager(id *this)
{
  re::ResourceFetchManager::deinit(this);

  v2 = this[50];
  if (v2)
  {

    this[50] = 0;
  }

  v3 = this[49];
  if (v3)
  {

    this[49] = 0;
  }

  v4 = this[48];
  if (v4)
  {

    this[48] = 0;
  }

  re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit((this + 22), v5, v6, v7);
  re::DynamicArray<re::ResourceFetchManager::Connection>::deinit((this + 17));
}

{
  re::ResourceFetchManager::~ResourceFetchManager(this);

  JUMPOUT(0x1E6906510);
}

void **re::ResourceFetchManager::deinit(void **this)
{
  if (*(this + 8) == 1)
  {
    v44[9] = v1;
    v44[10] = v2;
    v3 = this;
    MEMORY[0x1E6901C30](5, 0, re::ResourceFetchManager::renderServerContextDidCommit, this);
    [v3[3] invalidate];
    os_unfair_lock_lock(v3 + 32);
    v4 = v3[19];
    if (v4)
    {
      v5 = v3[21];
      v6 = &v5[8 * v4];
      do
      {
        v7 = v3[50];
        v8 = v7[15];
        if (v8)
        {
          v9 = 48 * v8;
          v10 = (v7[17] + 40);
          do
          {
            v11 = [v5[1] pid];
            v12 = v5[1];
            if (v12)
            {
              objc_msgSend_auditToken(v12);
              v12 = v5[1];
            }

            else
            {
              v41 = 0u;
              v42 = 0u;
            }

            v13 = [v12 peerID];
            v43 = v11;
            v44[0] = v13;
            v14 = *v10;
            v10 += 6;
            (*(*v14 + 16))(v14, &v43, &v41, v44);
            v9 -= 48;
          }

          while (v9);
        }

        v5 += 8;
      }

      while (v5 != v6);
    }

    os_unfair_lock_unlock(v3 + 32);
    os_unfair_lock_lock(v3 + 32);
    [v3[2] invalidate];
    v18 = v3[19];
    if (v18)
    {
      v19 = v3[21];
      v20 = &v19[64 * v18];
      do
      {
        v21 = *(v19 + 12);
        if (v21)
        {
          v22 = 0;
          v23 = *(v19 + 4);
          while (1)
          {
            v24 = *v23;
            v23 += 22;
            if (v24 < 0)
            {
              break;
            }

            if (v21 == ++v22)
            {
              LODWORD(v22) = *(v19 + 12);
              break;
            }
          }
        }

        else
        {
          LODWORD(v22) = 0;
        }

        if (v22 != v21)
        {
          v25 = *(v19 + 4);
          do
          {
            v26 = v25 + 88 * v22;
            v27 = *(v26 + 56);
            if (v27)
            {
              v28 = *(v26 + 72);
              v29 = 8 * v27;
              do
              {
                v30 = *v28++;
                *(v30 + 16) = 0;
                v29 -= 8;
              }

              while (v29);
            }

            if (v21 <= v22 + 1)
            {
              v31 = v22 + 1;
            }

            else
            {
              v31 = v21;
            }

            while (v31 - 1 != v22)
            {
              LODWORD(v22) = v22 + 1;
              if ((*(v25 + 88 * v22) & 0x80000000) != 0)
              {
                goto LABEL_31;
              }
            }

            LODWORD(v22) = v31;
LABEL_31:
            ;
          }

          while (v22 != v21);
        }

        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear((v19 + 16));
        v32 = [*(v19 + 1) peerID];
        v33 = re::PeerIDValidator::instance(v32);
        re::PeerIDValidator::remove_impl(v33, v32);
        [*v19 invalidate];
        [*(v19 + 1) invalidate];
        re::ObjCObject::operator=(v19, 0);
        v34 = *(v19 + 1);
        *(v19 + 1) = 0;

        v19 += 64;
      }

      while (v19 != v20);
    }

    v35 = v3[24];
    if (v35)
    {
      v36 = v3[26];
      v37 = 8 * v35;
      do
      {
        v38 = *v36;
        if (*(*v36 + 96))
        {
          re::makeResourceSharingError(v44, 0x191, 0);
          v39 = v44[0];
          v44[0] = 0;
          LOBYTE(v41) = 0;
          *(&v41 + 1) = v39;
          (*(**(v38 + 96) + 16))(*(v38 + 96), &v41);
        }

        v36 += 8;
        v37 -= 8;
      }

      while (v37);
    }

    re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit((v3 + 22), v15, v16, v17);
    re::DynamicArray<re::ResourceFetchManager::Connection>::deinit((v3 + 17));
    os_unfair_lock_unlock(v3 + 32);
    re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(v3[50] + 64);
    re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(v3[50] + 104);
    v40 = v3[50];
    if (v40)
    {

      v3[50] = 0;
    }

    re::ObjCObject::operator=(v3 + 4, 0);
    re::ObjCObject::operator=(v3 + 3, 0);
    this = re::ObjCObject::operator=(v3 + 2, 0);
    *(v3 + 8) = 0;
  }

  return this;
}

void re::ResourceFetchManager::renderServerContextDidCommit(re::ResourceFetchManager *this, os_unfair_lock_s *a2, void *a3, void *a4)
{
  v5 = voucher_copy();

  if (v5)
  {
    CARenderContextGetAuditToken();
    memset(&atoken, 0, sizeof(atoken));
    v6 = audit_token_to_pid(&atoken);
    v7 = v5;
    os_unfair_lock_lock(a2 + 32);
    v8 = *&a2[38]._os_unfair_lock_opaque;
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*&a2[42]._os_unfair_lock_opaque + 8);
      do
      {
        if (*v10 && [*v10 pid] == v6)
        {
          if (*v10)
          {
            objc_msgSend_auditToken(*v10);
          }

          else
          {
            memset(&atoken, 0, sizeof(atoken));
          }

          if (*atoken.val)
          {
            v11 = 0;
          }

          else
          {
            v11 = *&atoken.val[2] == 0;
          }

          if (v11 && *&atoken.val[4] == 0 && *&atoken.val[6] == 0)
          {
            v14 = v7;
            os_unfair_lock_lock(a2 + 64);
            re::ObjCObject::operator=(&a2[66], v14);
            os_unfair_lock_unlock(a2 + 64);

            [*v10 setVoucher:v14];
          }
        }

        v10 += 8;
        v9 -= 64;
      }

      while (v9);
    }

    os_unfair_lock_unlock(a2 + 32);
  }
}

void re::ResourceFetchManager::init(re::ResourceFetchManager *this, id *a2)
{
  re::ObjCObject::operator=(this + 6, a2);
  v3 = [[REResourceFetchServer alloc] initWithResourceFetchManager:this];
  re::ObjCObject::operator=(this + 2, v3);

  re::xpc::Listener::makeAnonymous(&v21);
  v4 = (this + 24);
  if ((this + 24) != &v21)
  {
    v5 = v21;
    v21 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  re::xpc::Listener::setDelegate(this + 3, this + 2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

  v9 = dispatch_queue_create("com.apple.CoreRE.ResourceFetchManager-service-queue", v8);
  re::ObjCObject::operator=(this + 4, v9);

  re::xpc::Connection::setQueue(this + 3, (this + 32));
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

  v12 = dispatch_queue_create("com.apple.CoreRE.ResourceFetchManager-decode-queue", v11);
  re::ObjCObject::operator=(this + 5, v12);

  os_unfair_lock_lock(this + 32);
  re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(this + 17, 8uLL);
  ++*(this + 40);
  re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(this + 22, 0x40uLL, v14, v15);
  ++*(this + 50);
  os_unfair_lock_unlock(this + 32);
  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 144, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v18, 0);
  *v18 = &unk_1F5CB9AD8;
  *(v18 + 48) = re::globalAllocators(v19)[2];
  *(v18 + 136) = 0;
  *(v18 + 88) = 0;
  *(v18 + 72) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 128) = 0;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  v20 = *(this + 50);
  *(this + 50) = v18;
  if (v20)
  {
  }

  [*(this + 3) resume];
  CARenderNotificationAddObserver();
  *(this + 8) = 1;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        v6 = v3 + 8;
        do
        {
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v6);
          v6 += 48;
          v5 -= 48;
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

BOOL re::ResourceFetchManager::hasPendingRequestedResources(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 32);
  v2 = *&this[48]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(this + 32);
  return v2;
}

uint64_t re::ResourceFetchManager::hasConnectionToPeer(os_unfair_lock_s *this, const char *a2)
{
  v3 = strtoull_l(a2, 0, 10, 0);
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = v4 << 6;
    v6 = (*&this[42]._os_unfair_lock_opaque + 8);
    while (!*v6 || [*v6 peerID] != v3)
    {
      v6 += 8;
      v5 -= 64;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

uint64_t re::ResourceFetchManager::getDirectResourceConnectionIDForPeer(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = (*&this[42]._os_unfair_lock_opaque + 8);
    v6 = v4 << 6;
    while (!*v5 || [*v5 peerID] != a2)
    {
      v5 += 8;
      v6 -= 64;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = *v5;
    v11 = v8;
    v7 = re::directMeshConnectionId(&v11, v9);
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

void re::ResourceFetchManager::fetchResource(re::AssetPath **this@<X2>, uint64_t a2@<X0>, const char *a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v121 = *MEMORY[0x1E69E9840];
  *v93 = 0;
  re::AssetPath::getAssetId(this, v93);
  if (this[6])
  {
    v11 = this[7];
  }

  else
  {
    v11 = (this + 49);
  }

  AssetTypeNameFromPath = re::AssetPath::getAssetTypeNameFromPath(v11, v10);
  re::AssetSignpost::fireImpulse(0x80C, *v93, AssetTypeNameFromPath, v13);
  v14 = strtoull_l(a3, 0, 10, 0);
  v92 = v14;
  v15 = *this;
  v16 = *this == 8 || v15 == 4;
  if (!v16)
  {
    if (v15)
    {
      v33 = re::resourceSharingLogObjects(v14)[1];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v80) = 0;
        _os_log_fault_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_FAULT, "Only peer asset paths can be fetched from another process", &v80, 2u);
      }

      re::makeResourceSharingError(&v80, 0x1F4, 0);
      v34 = v80;
      v80 = 0;
      v88[0] = 0;
      v89 = v34;
      (*(**(a4 + 32) + 16))(*(a4 + 32), v88);
      v25 = v89;
    }

    else
    {
      v23 = re::resourceSharingLogObjects(v14)[1];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v80) = 0;
        _os_log_fault_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_FAULT, "Invalid resource fetch request for empty asset path", &v80, 2u);
      }

      re::makeResourceSharingError(&v80, 0x1F4, 0);
      v24 = v80;
      v80 = 0;
      v90[0] = 0;
      v91 = v24;
      (*(**(a4 + 32) + 16))(*(a4 + 32), v90);
      v25 = v91;
    }

    *a5 = 0;
    return;
  }

  v17 = v14;
  v86 = 0u;
  v87 = 0u;
  v18 = re::DynamicString::setCapacity(&v86, 0);
  if (*this == 4)
  {
    LODWORD(v80) = 0;
    v81 = 0u;
    v82 = 0u;
    v19 = re::DynamicString::setCapacity(&v81, 0);
    v84 = 0u;
    v83 = 0u;
    re::DynamicString::setCapacity(&v83, 0);
    v85 = 0;
    if (this[6])
    {
      v20 = this[7];
    }

    else
    {
      v20 = this + 49;
    }

    re::AssetPath::initMemoryAssetPath(&v80, v20, this[9]);
    v104 = 0;
    v105 = 0;
    v102 = v81;
    v103 = 0;
    re::DynamicString::setCapacity(&v102, 0);
    re::AssetPath::fullAssetPath(&v80, &v102);
    re::DynamicString::operator=(&v86, &v102);
    if (v102 && (v103 & 1) != 0)
    {
      (*(*v102 + 40))(v102);
    }

    if (v83)
    {
      if (BYTE8(v83))
      {
        (*(*v83 + 40))(v83);
      }

      v84 = 0u;
      v83 = 0u;
    }

    v21 = v81;
    if (!v81 || (BYTE8(v81) & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = v82;
  }

  else
  {
    v26 = this[1];
    *&v82 = 0;
    v80 = v26;
    v81 = 0uLL;
    re::DynamicString::setCapacity(&v80, 0);
    re::AssetPath::fullAssetPath(this, &v80);
    re::DynamicString::operator=(&v86, &v80);
    v21 = v80;
    if (!v80 || (v81 & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = *(&v81 + 1);
  }

  (*(*v21 + 40))(v21, v22);
LABEL_31:
  os_unfair_lock_lock((a2 + 128));
  v80 = 0;
  *&v81 = &v80;
  *(&v81 + 1) = 0x3812000000;
  *&v82 = __Block_byref_object_copy_;
  *(&v82 + 1) = __Block_byref_object_dispose_;
  *&v83 = "";
  *(&v83 + 1) = 0;
  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 168) + 16;
    v32 = v30 << 6;
    while (1)
    {
      v27 = *(v31 - 8);
      if (v27)
      {
        v27 = [(re *)v27 peerID];
        if (v27 == v17)
        {
          break;
        }
      }

      v31 += 64;
      v32 -= 64;
      if (!v32)
      {
        goto LABEL_65;
      }
    }

    v35 = *(v31 - 8);
    re::DynamicString::DynamicString(v109, &v86);
    v119 = *(a4 + 24);
    v120 = 0;
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(v118, a4);
    re::ResourceFetchManager::Request::create(&v102, a2, v35, v109, v118);
    v36 = *(v81 + 48);
    *(v81 + 48) = v102;
    v102 = v36;
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v102, v37, v38, v39);
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(v118);
    v42 = *&v109[0];
    if (*&v109[0])
    {
      if (BYTE8(v109[0]))
      {
        v42 = (*(**&v109[0] + 40))();
      }

      memset(v109, 0, sizeof(v109));
    }

    v43 = (v31 - 16);
    v44 = v81;
    v45 = *(a2 + 184);
    v46 = *(a2 + 192);
    if (v46 >= v45)
    {
      v47 = v46 + 1;
      if (v45 < v46 + 1)
      {
        if (*(a2 + 176))
        {
          v48 = 2 * v45;
          v16 = v45 == 0;
          v49 = 8;
          if (!v16)
          {
            v49 = v48;
          }

          if (v49 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v49;
          }

          re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity((a2 + 176), v50, v40, v41);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity((a2 + 176), v47, v51, v52);
          ++*(a2 + 200);
        }
      }

      v46 = *(a2 + 192);
    }

    re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr((*(a2 + 208) + 8 * v46), *(v44 + 48), v40, v41);
    ++*(a2 + 192);
    ++*(a2 + 200);
    v53 = *(v81 + 48);
    v54 = re::Hash<re::DynamicString>::operator()(&v102, (v53 + 32));
    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v102, v31, v53 + 32, v54);
    if (HIDWORD(v103) == 0x7FFFFFFF)
    {
      *&block = *(v81 + 48);
      v55 = block;
      p_block = &block;
      v97 = 1;
      re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(&v102, &p_block);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v31, (v55 + 32), &v102);
      if (v102 && v106)
      {
        (*(*v102 + 40))();
      }
    }

    else
    {
      v56 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31, (*(v81 + 48) + 32));
      v102 = *(v81 + 48);
      re::DynamicArray<re::TransitionCondition *>::add(v56, &v102);
    }

    if (BYTE8(v86))
    {
      v57 = v87;
    }

    else
    {
      v57 = &v86 | 9;
    }

    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v57];
    v102 = MEMORY[0x1E69E9820];
    v103 = 3221225472;
    v104 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke;
    v105 = &unk_1E871AB08;
    v106 = v58;
    v107 = &v80;
    v108 = a2;
    v59 = v58;
    re::xpc::Connection::remoteObjectProxyWithErrorHandler(v43, &v102, &p_block);
    v60 = p_block;

    p_block = MEMORY[0x1E69E9820];
    v97 = 3221225472;
    v98 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_190;
    v99 = &unk_1E871AB30;
    v100 = &v80;
    v101 = a2;
    [v60 fetchResourceAtAssetPath:v59 withReply:&p_block];
  }

LABEL_65:
  v61 = *(v81 + 48);
  if (!v61)
  {
    v62 = re::resourceSharingLogObjects(v27)[1];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      LODWORD(block) = 134217984;
      *(&block + 4) = v92;
      _os_log_fault_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for peer '%llu'", &block, 0xCu);
    }

    re::DynamicString::DynamicString(v94, &v86);
    v116 = *(a4 + 24);
    v117 = 0;
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(v115, a4);
    re::ResourceFetchManager::Request::create(&v95, a2, 0, v94, v115);
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(v115);
    if (*&v94[0])
    {
      if (BYTE8(v94[0]))
      {
        (*(**&v94[0] + 40))();
      }

      memset(v94, 0, sizeof(v94));
    }

    v63 = v95;
    *(v95 + 104) = 1;
    v64 = *(a2 + 48);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3321888768;
    v111 = ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_192;
    v112 = &__block_descriptor_48_a8_40c55_ZTSN2re9SharedPtrINS_20ResourceFetchManager7RequestEEE_e5_v8__0l;
    v113 = &v92;
    v65 = v64;
    re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(v114, v63, v66, v67);
    dispatch_async(v65, &block);

    re::SharedPtr<re::ResourceRequest>::~SharedPtr(v114, v68, v69, v70);
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v95, v71, v72, v73);
    v61 = *(v81 + 48);
  }

  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v95, v61, v28, v29);
  _Block_object_dispose(&v80, 8);
  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v83 + 1, v74, v75, v76);
  os_unfair_lock_unlock((a2 + 128));
  *a5 = v95;
  v95 = 0;
  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v95, v77, v78, v79);
  if (v86 && (BYTE8(v86) & 1) != 0)
  {
    (*(*v86 + 40))();
  }
}

void re::ResourceFetchManager::setRequestOptions(uint64_t a1, uint64_t a2, void **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 128));
  if (*(a2 + 16))
  {
    if (*(a2 + 104) == 1)
    {
      v7 = re::resourceSharingLogObjects(v6)[1];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 40))
        {
          v8 = *(a2 + 48);
        }

        else
        {
          v8 = a2 + 41;
        }

        v25 = 136315138;
        v26 = v8;
        v22 = "Resource request for '%s' is cancelled, ignoring set-options request";
        v23 = v7;
        v24 = 12;
LABEL_23:
        _os_log_debug_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEBUG, v22, &v25, v24);
      }
    }

    else
    {
      v12 = *(a1 + 152);
      if (v12)
      {
        v6 = *(a1 + 168);
        v13 = v12 << 6;
        while (*(v6 + 1) != *(a2 + 24))
        {
          v6 = (v6 + 64);
          v13 -= 64;
          if (!v13)
          {
            goto LABEL_13;
          }
        }

        v16 = re::ResourceFetchManager::Connection::remoteObjectProxy(v6);
        v17 = *a3;
        v18 = MEMORY[0x1E696AEC0];
        if (*(a2 + 40))
        {
          v19 = *(a2 + 48);
        }

        else
        {
          v19 = a2 + 41;
        }

        v20 = v17;
        v21 = [v18 stringWithUTF8String:v19];
        [v16 setSubscriptionOptions:v20 forResourceAtAssetPath:v21];
      }

      else
      {
LABEL_13:
        v14 = re::resourceSharingLogObjects(v6)[1];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v15 = *(a2 + 24);
          v25 = 138412290;
          v26 = v15;
          _os_log_fault_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for client %@", &v25, 0xCu);
        }
      }
    }
  }

  else
  {
    v9 = re::resourceSharingLogObjects(v6)[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a2 + 24);
      if (*(a2 + 40))
      {
        v11 = *(a2 + 48);
      }

      else
      {
        v11 = a2 + 41;
      }

      v25 = 138412546;
      v26 = v10;
      v27 = 2080;
      v28 = v11;
      v22 = "Resource connection %@ is closed, ignoring set-options request for '%s'";
      v23 = v9;
      v24 = 22;
      goto LABEL_23;
    }
  }

  os_unfair_lock_unlock((a1 + 128));
}

void re::ResourceFetchManager::cancelRequest(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 128));
  if (*(a2 + 16))
  {
    if (*(a2 + 104) != 1)
    {
      *(a2 + 104) = 1;
      v10 = *(a1 + 152);
      if (v10)
      {
        v11 = *(a1 + 168);
        v12 = v10 << 6;
        while (*(v11 + 8) != *(a2 + 24))
        {
          v11 += 64;
          v12 -= 64;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v14 = re::Hash<re::DynamicString>::operator()(buf, (a2 + 32));
        v15 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v11 + 16, a2 + 32, v14);
        if (HIDWORD(buf[0]) != 0x7FFFFFFF)
        {
          v17 = *(v11 + 32) + 88 * HIDWORD(buf[0]);
          v18 = *(v17 + 72);
          v19 = *(v17 + 56);
          v20 = v18;
          if (v19)
          {
            v21 = 8 * v19;
            v20 = *(v17 + 72);
            while (*v20 != a2)
            {
              v20 += 8;
              v21 -= 8;
              if (!v21)
              {
                goto LABEL_29;
              }
            }
          }

          v22 = &v18[8 * v19];
          if (v20 == v22)
          {
LABEL_29:
            v26 = re::resourceSharingLogObjects(v15)[1];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              if (*(a2 + 40))
              {
                v41 = *(a2 + 48);
              }

              else
              {
                v41 = a2 + 41;
              }

              LODWORD(buf[0]) = 134218242;
              *(buf + 4) = a2;
              WORD6(buf[0]) = 2080;
              *(buf + 14) = v41;
              _os_log_fault_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_FAULT, "Request %p for '%s' is not registered with the resource fetch manager", buf, 0x16u);
            }

            v25 = *(v17 + 56);
          }

          else
          {
            v23 = (v20 - v18);
            v24 = (v20 - v18) >> 3;
            if (v19 <= v24)
            {
              v46 = 0;
              memset(buf, 0, sizeof(buf));
              v42 = MEMORY[0x1E69E9C10];
              v43 = (v20 - v18) >> 3;
              v47 = 136315906;
              v48 = "removeAt";
              v49 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v44 = 3;
              }

              else
              {
                v44 = 2;
              }

              v50 = 931;
              v51 = 2048;
              v52 = v43;
              v53 = 2048;
              v54 = v19;
              _os_log_send_and_compose_impl(v44, &v46, buf, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
              _os_crash_msg();
              __break(1u);
            }

            v25 = v19 - 1;
            if (v19 - 1 > v24)
            {
              *&v23[v18] = *(v22 - 1);
            }

            *(v17 + 56) = v25;
            ++*(v17 + 64);
          }

          if (!v25)
          {
            v27 = re::ResourceFetchManager::Connection::remoteObjectProxy(v11);
            v28 = (*(a2 + 40) & 1) != 0 ? *(a2 + 48) : a2 + 41;
            v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
            [v27 unsubscribeFromResourceAtAssetPath:v34];

            v35 = re::Hash<re::DynamicString>::operator()(buf, (a2 + 32));
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v11 + 16, a2 + 32, v35);
            v36 = HIDWORD(buf[0]);
            if (HIDWORD(buf[0]) != 0x7FFFFFFF)
            {
              v37 = *(v11 + 32);
              v38 = (v37 + 88 * HIDWORD(buf[0]));
              v39 = *v38 & 0x7FFFFFFF;
              if (LODWORD(buf[1]) == 0x7FFFFFFF)
              {
                *(*(v11 + 24) + 4 * DWORD2(buf[0])) = v39;
              }

              else
              {
                *(v37 + 88 * LODWORD(buf[1])) = *(v37 + 88 * LODWORD(buf[1])) & 0x80000000 | v39;
              }

              re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v38);
              *(*(v11 + 32) + 88 * v36) = *(*(v11 + 32) + 88 * v36) & 0x80000000 | *(v11 + 52);
              --*(v11 + 44);
              v40 = *(v11 + 56) + 1;
              *(v11 + 52) = v36;
              *(v11 + 56) = v40;
            }
          }

          goto LABEL_14;
        }

        v13 = re::resourceSharingLogObjects(v15)[1];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }

        if (*(a2 + 40))
        {
          v16 = *(a2 + 48);
        }

        else
        {
          v16 = a2 + 41;
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v16;
        v30 = "No request for '%s' is registered with the resource fetch manager";
      }

      else
      {
LABEL_13:
        v13 = re::resourceSharingLogObjects(v4)[1];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_14;
        }

        v29 = *(a2 + 24);
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v29;
        v30 = "No resource fetch connection exists for client %@";
      }

      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
      goto LABEL_14;
    }

    v5 = re::resourceSharingLogObjects(v4)[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 40))
      {
        v6 = *(a2 + 48);
      }

      else
      {
        v6 = a2 + 41;
      }

      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v6;
      v31 = "Resource request for '%s' was already cancelled";
      v32 = v5;
      v33 = 12;
LABEL_44:
      _os_log_debug_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEBUG, v31, buf, v33);
    }
  }

  else
  {
    v7 = re::resourceSharingLogObjects(v4)[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 24);
      if (*(a2 + 40))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = a2 + 41;
      }

      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v8;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v9;
      v31 = "Resource connection %@ is closed, ignoring cancellation of request for '%s'";
      v32 = v7;
      v33 = 22;
      goto LABEL_44;
    }
  }

LABEL_14:
  os_unfair_lock_unlock((a1 + 128));
}

void re::ResourceFetchManager::executeWithMostRecentTransportVoucher(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 256));
  v7 = *(a1 + 264);
  os_unfair_lock_unlock((a1 + 256));
  if (v7)
  {
    v4 = v7;
    v5 = voucher_adopt();

    (*(**(a2 + 32) + 16))(*(a2 + 32));
    v6 = v5;
  }

  else
  {
    (*(**(a2 + 32) + 16))(*(a2 + 32));
  }
}

void re::ResourceFetchManager::executeWithMostRecentTransportVoucherForPeerID(uint64_t a1, void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 128));
  v6 = *(a1 + 152);
  if (!v6)
  {
LABEL_6:
    os_unfair_lock_unlock((a1 + 128));
LABEL_7:
    (*(**(a3 + 32) + 16))(*(a3 + 32));
    v9 = 0;
    goto LABEL_8;
  }

  v7 = (*(a1 + 168) + 8);
  v8 = v6 << 6;
  while (!*v7 || [*v7 peerID] != a2)
  {
    v7 += 8;
    v8 -= 64;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v10 = [*v7 voucher];

  os_unfair_lock_unlock((a1 + 128));
  if (!v10)
  {
    goto LABEL_7;
  }

  v13 = v10;
  v11 = voucher_adopt();

  (*(**(a3 + 32) + 16))(*(a3 + 32));
  v12 = v11;

  v9 = v13;
LABEL_8:
}

void re::ResourceFetchManager::setPushLoadHandler(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 384);
  if (v3 != *a2)
  {
    if (v2)
    {
      v5 = (v2 + 8);
      v3 = *(a1 + 384);
    }

    if (v3)
    {
    }

    *(a1 + 384) = v2;
  }
}

void re::ResourceFetchManager::reportLoadState(os_unfair_lock_s *this, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  v12 = *&this[38]._os_unfair_lock_opaque;
  if (v12)
  {
    v13 = *&this[42]._os_unfair_lock_opaque;
    v14 = v12 << 6;
    while (1)
    {
      v15 = *(v13 + 8);
      if (v15)
      {
        if ([v15 peerID] == a3)
        {
          break;
        }
      }

      v13 += 64;
      v14 -= 64;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v18 = re::ResourceFetchManager::Connection::remoteObjectProxy(v13);
    [v18 reportLoadState:a4 forAssetId:a2 assetSize:a5 errorCode:a6];

    os_unfair_lock_unlock(this + 32);
  }

  else
  {
LABEL_6:
    os_unfair_lock_unlock(this + 32);
    v17 = re::resourceSharingLogObjects(v16)[1];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = 134218240;
      v20 = a3;
      v21 = 2048;
      v22 = a2;
      _os_log_fault_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_FAULT, "No resource fetch connection exists for peer '%llu'. Cannot report load state for asset '%llu'.", &v19, 0x16u);
    }
  }
}

void ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with client %@ was interrupted", buf, 0xCu);
  }

  v4 = [a1[4] resourceFetchManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceFetchManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void re::ResourceFetchManager::connectionInterruptedOrInvalidated(uint64_t a1, id *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 400);
  v5 = *(v4 + 120);
  if (v5)
  {
    v6 = 48 * v5;
    v7 = (*(v4 + 136) + 40);
    do
    {
      v8 = *a2;
      v9 = [v8 pid];
      v10 = *a2;
      v11 = v10;
      if (v10)
      {
        objc_msgSend_auditToken(v10);
      }

      else
      {
        *buf = 0u;
        v82 = 0u;
      }

      v12 = *a2;
      v13 = [v12 peerID];
      LODWORD(v73) = v9;
      *v74 = v13;
      v14 = *v7;
      v7 += 6;
      (*(*v14 + 16))(v14, &v73, buf, v74);

      v6 -= 48;
    }

    while (v6);
  }

  os_unfair_lock_lock((a1 + 128));
  v16 = *(a1 + 152);
  if (!v16)
  {
LABEL_11:
    v21 = re::resourceSharingLogObjects(v15)[1];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a2;
      *buf = 138412290;
      *&buf[4] = v22;
      v23 = v22;
      v24 = v21;
      _os_log_debug_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEBUG, "Resource fetch connection with client %@ interrupted/invalidated: not found in connection list", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v17 = 0;
  v18 = 0;
  v19 = *(a1 + 168);
  while (1)
  {
    v20 = v19 + v17;
    if (*(v19 + v17 + 8) == *a2)
    {
      break;
    }

    ++v18;
    v17 += 64;
    if (v16 == v18)
    {
      goto LABEL_11;
    }
  }

  v25 = *(v20 + 48);
  if (v25)
  {
    v26 = 0;
    v27 = *(v19 + v17 + 32);
    while (1)
    {
      v28 = *v27;
      v27 += 22;
      if (v28 < 0)
      {
        break;
      }

      if (v25 == ++v26)
      {
        LODWORD(v26) = *(v20 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v26 != v25)
  {
    v29 = *(v19 + v17 + 32);
    do
    {
      v30 = v29 + 88 * v26;
      v31 = *(v30 + 56);
      if (v31)
      {
        v32 = *(v30 + 72);
        v33 = 8 * v31;
        do
        {
          v34 = *v32++;
          *(v34 + 16) = 0;
          v33 -= 8;
        }

        while (v33);
      }

      if (v25 <= v26 + 1)
      {
        v35 = v26 + 1;
      }

      else
      {
        v35 = v25;
      }

      while (v35 - 1 != v26)
      {
        LODWORD(v26) = v26 + 1;
        if ((*(v29 + 88 * v26) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v26) = v35;
LABEL_31:
      ;
    }

    while (v26 != v25);
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v20 + 16);
  v37 = *(a1 + 392);
  if (v37)
  {
    v38 = re::directMeshConnectionId(a2, v36);
    (*(*v37 + 40))(v37, v38);
  }

  v39 = *(a1 + 384);
  if (v39)
  {
    v40 = (v39 + 8);
    v41 = *a2;
    (*(*v39 + 56))(v39, [v41 peerID]);
  }

  v42 = [*a2 peerID];
  v43 = re::PeerIDValidator::instance(v42);
  re::PeerIDValidator::remove_impl(v43, v42);
  v44 = *(a1 + 152);
  if (v44 <= v18)
  {
    v73 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *buf = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v74 = 136315906;
    *&v74[4] = "operator[]";
    v75 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v76 = 789;
    v77 = 2048;
    v78 = v18;
    v79 = 2048;
    v80 = v44;
    _os_log_send_and_compose_impl(v65, &v73, buf, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v72);
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  [*(*(a1 + 168) + v17) invalidate];
  v44 = *(a1 + 152);
  if (v44 <= v18)
  {
LABEL_61:
    v73 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *buf = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v74 = 136315906;
    *&v74[4] = "operator[]";
    v75 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v76 = 789;
    v77 = 2048;
    v78 = v18;
    v79 = 2048;
    v80 = v44;
    _os_log_send_and_compose_impl(v68, &v73, buf, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v72);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v73 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *buf = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v74 = 136315906;
    *&v74[4] = "removeAt";
    v75 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v76 = 931;
    v77 = 2048;
    v78 = v18;
    v79 = 2048;
    v80 = v44;
    _os_log_send_and_compose_impl(v71, &v73, buf, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v72);
    _os_crash_msg();
    __break(1u);
  }

  [*(*(a1 + 168) + v17 + 8) invalidate];
  v44 = *(a1 + 152);
  if (v44 <= v18)
  {
    goto LABEL_65;
  }

  if (v44 - 1 > v18)
  {
    v45 = *(a1 + 168);
    v46 = v45 + (v44 << 6);
    v47 = (v44 << 6) - 64;
    if (v47 != v17)
    {
      v48 = *(v46 - 64);
      *(v46 - 64) = 0;
      v49 = *(v45 + v17);
      *(v45 + v17) = v48;
    }

    v50 = *(v46 - 56);
    *(v46 - 56) = 0;
    v51 = v45 + v17;
    v52 = *(v45 + v17 + 8);
    *(v45 + v17 + 8) = v50;

    if (v47 != v17)
    {
      v53 = (v46 - 48);
      v54 = *(v51 + 16);
      if (!v54 || v54 == *v53)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v51 + 16), (v46 - 48));
      }

      else
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v51 + 16);
        if (*v53)
        {
          v55 = v45 + v17;
          v56 = *(v46 - 20);
          if (*(v55 + 40) < v56)
          {
            re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v51 + 16, v56);
          }

          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(v51 + 16, v46 - 48);
          ++*(v55 + 56);
        }
      }
    }

    v44 = *(a1 + 152);
  }

  v57 = *(a1 + 168) + (v44 << 6);
  re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v57 - 48));

  --*(a1 + 152);
  ++*(a1 + 160);
  v59 = re::resourceSharingLogObjects(v58)[1];
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v60 = *a2;
    *buf = 138412290;
    *&buf[4] = v60;
    v61 = v60;
    v62 = v59;
    _os_log_debug_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEBUG, "Resource fetch connection with client %@ interrupted/invalidated: removed from connection list", buf, 0xCu);

    if (!v39)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v39)
  {
LABEL_53:
  }

LABEL_54:
  os_unfair_lock_unlock((a1 + 128));
}

void ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke_68(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with client %@ was invalidated", buf, 0xCu);
  }

  v4 = [a1[4] resourceFetchManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceFetchManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void re::ResourceFetchManager::connectedPeers(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    re::DynamicArray<float *>::setCapacity(a2, v4);
    v5 = *&this[38]._os_unfair_lock_opaque;
    if (v5)
    {
      v6 = v5 << 6;
      v7 = (*&this[42]._os_unfair_lock_opaque + 8);
      do
      {
        if (*v7 && [*v7 peerID])
        {
          v8 = [*v7 peerID];
          re::DynamicArray<re::TransitionCondition *>::add(a2, &v8);
        }

        v7 += 8;
        v6 -= 64;
      }

      while (v6);
    }
  }

  os_unfair_lock_unlock(this + 32);
}

void re::ResourceFetchManager::assetPathsFetchedFromPeerId(os_unfair_lock_s *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  os_unfair_lock_lock(this + 32);
  v6 = *&this[38]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = *&this[42]._os_unfair_lock_opaque;
    v8 = v7 + (v6 << 6);
    do
    {
      v9 = *(v7 + 8);
      if (v9 && [v9 peerID] && objc_msgSend(*(v7 + 8), "peerID") == a2)
      {
        v10 = *(v7 + 44);
        if (*(a3 + 8) < v10)
        {
          re::DynamicArray<re::DynamicString>::setCapacity(a3, v10);
        }

        v11 = *(v7 + 48);
        if (v11)
        {
          v12 = 0;
          v13 = *(v7 + 32);
          while (1)
          {
            v14 = *v13;
            v13 += 22;
            if (v14 < 0)
            {
              break;
            }

            if (v11 == ++v12)
            {
              LODWORD(v12) = *(v7 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v12) = 0;
        }

LABEL_20:
        while (v12 != v11)
        {
          re::DynamicArray<re::DynamicString>::add(a3, (*(v7 + 32) + 88 * v12 + 8));
          v15 = *(v7 + 48);
          if (v15 <= v12 + 1)
          {
            v15 = v12 + 1;
          }

          while (v15 - 1 != v12)
          {
            LODWORD(v12) = v12 + 1;
            if ((*(*(v7 + 32) + 88 * v12) & 0x80000000) != 0)
            {
              goto LABEL_20;
            }
          }

          LODWORD(v12) = v15;
        }
      }

      v7 += 64;
    }

    while (v7 != v8);
  }

  os_unfair_lock_unlock(this + 32);
}

uint64_t re::ResourceFetchManager::taskIdentifierPortForPeerID(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = v4 << 6;
    v6 = (*&this[42]._os_unfair_lock_opaque + 8);
    while (!*v6 || ![*v6 peerID] || objc_msgSend(*v6, "peerID") != a2)
    {
      v6 += 8;
      v5 -= 64;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v9 = [*v6 clientPorts];
    v10 = v9;
    if (v9)
    {
      v7 = [v9 taskIdentifierToken];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  return v7;
}

void re::ResourceFetchManager::updateResourceWithPayloadAndAssetId(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v60[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  if ([*a2 peerID])
  {
    v52 = 0;
    v53 = 0;
    v54 = 1;
    v55 = 0;
    v56 = 0;
    os_unfair_lock_lock((a1 + 128));
    v8 = *(a1 + 152);
    if (v8)
    {
      v9 = *a2;
      v10 = *(a1 + 168) + 16;
      v11 = v8 << 6;
      while (*(v10 - 8) != v9)
      {
        v10 += 64;
        v11 -= 64;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19 = re::Hash<re::DynamicString>::operator()(buf, a3);
      re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v10, a3, v19);
      if (*&v58[4] != 0x7FFFFFFF)
      {
        v23 = *(v10 + 16) + 88 * *&v58[4];
        v24 = *(v23 + 56);
        if (v24)
        {
          v25 = *(v23 + 72);
          v26 = 8 * v24;
          while (1)
          {
            v27 = *v25;
            if (*(*v25 + 12))
            {
              break;
            }

LABEL_29:
            ++v25;
            v26 -= 8;
            if (!v26)
            {
              goto LABEL_30;
            }
          }

          re::details::retain<re::ResourceFetchManager::Request const>(*v25, v20, v21, v22);
          if (v52)
          {
            v29 = v54;
            if (v54)
            {
              v30 = v53 + 1;
              if (v53 + 1 >= 2)
              {
                v31 = 2;
                goto LABEL_22;
              }
            }

            else if (v53 >= v55)
            {
              v30 = v53 + 1;
              if (v55 < v53 + 1)
              {
                v31 = 2 * v55;
LABEL_22:
                if (v31 <= v30)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = v31;
                }

                re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&v52, v32);
                v29 = v54;
              }
            }
          }

          else
          {
            re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&v52, v53 + 1);
            v29 = v54 + 2;
            v54 += 2;
          }

          v33 = (v29 & 1) == 0;
          v34 = v56;
          v35 = v53;
          if (!v33)
          {
            v34 = &v55;
          }

          v34[v53] = v27;
          v53 = v35 + 1;
          v54 += 2;
          goto LABEL_29;
        }
      }

LABEL_30:
      os_unfair_lock_unlock((a1 + 128));
      if (*(a3 + 8))
      {
        v36 = *(a3 + 16);
      }

      else
      {
        v36 = a3 + 9;
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
      v38 = *(a1 + 48);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3321888768;
      v47[2] = ___ZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_block_invoke;
      v47[3] = &__block_descriptor_104_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1_e5_v8__0l;
      *buf = a1;
      *v58 = v37;
      v58[8] = *a4;
      v39 = v37;
      v40 = v38;
      v59 = *(a4 + 8);
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(v60, &v52);
      v47[4] = *buf;
      v48 = *v58;
      v49 = v58[8];
      v50 = v59;
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(v51, v60);
      dispatch_async(v40, v47);
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(v60, v41, v42, v43);

      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(v51, v44, v45, v46);
    }

    else
    {
LABEL_6:
      os_unfair_lock_unlock((a1 + 128));
    }

    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(&v52, v12, v13, v14);
  }

  else
  {
    v15 = re::resourceSharingLogObjects(0)[1];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a2;
      v17 = [v16 pid];
      if (*(a3 + 8))
      {
        v18 = *(a3 + 16);
      }

      else
      {
        v18 = a3 + 9;
      }

      *buf = 67109378;
      *&buf[4] = v17;
      *v58 = 2080;
      *&v58[2] = v18;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Client (pid %d) attempted to update asset %s without registering a peerID.  Update resource request will be ignored.", buf, 0x12u);
    }
  }
}

void ___ZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    if (*(a1 + 80))
    {
      v6 = (a1 + 88);
    }

    else
    {
      v6 = *(a1 + 96);
    }

    v10 = 8 * v5;
    do
    {
      v11 = *v6;
      if (*v6)
      {
        re::details::retain<re::ResourceFetchManager::Request const>(*v6, a2, a3, a4);
      }

      v15[0] = *(a1 + 48);
      v16 = *(a1 + 56);
      (*(**(v11 + 12) + 16))(*(v11 + 12), v15);

      re::details::release<re::ResourceRequest>(v11, v12, v13, v14);
      ++v6;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
    v7 = *(*(a1 + 32) + 384);
    if (v7)
    {
      v8 = (v7 + 8);
      v9 = [*(a1 + 40) UTF8String];
      v15[0] = *(a1 + 48);
      v16 = *(a1 + 56);
      (*(*v7 + 40))(v7, v9, v15);
    }
  }
}

uint64_t __copy_helper_block_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(a1 + 64, (a2 + 64));
}

void __destroy_helper_block_a8_32c171_ZTSKZN2re20ResourceFetchManager35updateResourceWithPayloadAndAssetIdENS0_12ClientObjectENS_13DynamicStringENS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEE3__1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit((a1 + 64), a2, a3, a4);

  v5 = *(a1 + 40);
}

atomic_uint **re::ResourceFetchManager::createResourceRequest@<X0>(os_unfair_lock_s *this@<X0>, const re::DynamicString *a2@<X2>, void *a3@<X1>, atomic_uint **a4@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 32);
  v8 = *&this[38]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *&this[42]._os_unfair_lock_opaque + 16;
    v10 = v8 << 6;
    while (1)
    {
      v11 = *(v9 - 8);
      if (v11)
      {
        if ([v11 peerID] == a3)
        {
          break;
        }
      }

      v9 += 64;
      v10 -= 64;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v17 = *(v9 - 8);
    re::DynamicString::DynamicString(v28, a2);
    re::ResourceFetchManager::Request::create(&v25, this, v17, v28);
    v12 = v25;
    v23 = v25;
    v25 = 0;
    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v25, v18, v19, v20);
    if (*&v28[0])
    {
      if (BYTE8(v28[0]))
      {
        (*(**&v28[0] + 40))();
      }

      memset(v28, 0, sizeof(v28));
    }

    v21 = re::Hash<re::DynamicString>::operator()(&v25, v12 + 4);
    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v25, v9, (v12 + 8), v21);
    if (v26 == 0x7FFFFFFF)
    {
      v29[0] = v12;
      v24[0] = v29;
      v24[1] = 1;
      re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(&v25, v24);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v9, (v12 + 8), &v25);
      if (v25 && v27)
      {
        (*(*v25 + 40))();
      }

      v12 = v23;
    }

    else
    {
      v22 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v9, v12 + 4);
      v25 = v12;
      re::DynamicArray<re::TransitionCondition *>::add(v22, &v25);
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  os_unfair_lock_unlock(this + 32);
  *a4 = v12;
  v23 = 0;
  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v23, v13, v14, v15);
}

atomic_uint **re::ResourceFetchManager::receiveFetchResponse(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseE_block_invoke;
  block[3] = &__block_descriptor_64_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0_e5_v8__0l;
  v17 = a1;
  v5 = v4;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v18, *a2, v6, v7);
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  block[4] = v17;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v22, v18, v8, v9);
  v23 = v19;
  v24 = v20;
  dispatch_async(v5, block);

  re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v18, v10, v11, v12);
  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v22, v13, v14, v15);
}

void ___ZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseE_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v3 + 96))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = v4;
      LOBYTE(v27) = 0;
    }

    else
    {
      v8 = *(a1 + 48);
      if (!v8)
      {
        v21 = re::resourceSharingLogObjects(0)[1];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_FAULT, "Invalid resource fetch response, both payload and error are nil", buf, 2u);
        }

        re::makeResourceSharingError(buf, 0x1F5, 0);
        v22 = *buf;
        *buf = 0;
        LOBYTE(v27) = 0;
        v28 = v22;
        (*(**(v3 + 96) + 16))(*(v3 + 96), &v27);

        v9 = *buf;
        goto LABEL_10;
      }

      [v8 setClientObject:*(v3 + 24)];
      v5 = *(a1 + 48);
      LOBYTE(v27) = 1;
    }

    v28 = v5;
    (*(**(v3 + 96) + 16))(*(v3 + 96), &v27);
    v9 = v28;
LABEL_10:

    goto LABEL_11;
  }

  v6 = re::resourceSharingLogObjects(a1)[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    if (*(v3 + 40))
    {
      v7 = *(v3 + 48);
    }

    else
    {
      v7 = v3 + 41;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Received fetch response for a request '%s' that should never get it! This request was not initiated by fetchRequest", buf, 0xCu);
  }

LABEL_11:
  os_unfair_lock_lock((v2 + 128));
  v13 = *(v2 + 208);
  v14 = *(v2 + 192);
  v15 = v13;
  if (v14)
  {
    v16 = 8 * v14;
    v15 = *(v2 + 208);
    while (*v15 != *(a1 + 40))
    {
      v15 += 8;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_21;
      }
    }
  }

  v17 = &v13[8 * v14];
  if (v15 != v17)
  {
    v18 = v15 - v13;
    v19 = v18 >> 3;
    if (v14 <= v18 >> 3)
    {
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *buf = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "removeAt";
      v32 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v33 = 931;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = v14;
      _os_log_send_and_compose_impl(v25, &v29, buf, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v26, v27);
      _os_crash_msg();
      __break(1u);
    }

    if (v14 - 1 > v19)
    {
      v20 = *&v13[v18];
      *&v13[v18] = *(v17 - 1);
      *(v17 - 1) = v20;
      v13 = *(v2 + 208);
    }

    re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v13[8 * v14 - 8], v10, v11, v12);
    --*(v2 + 192);
    ++*(v2 + 200);
  }

LABEL_21:
  os_unfair_lock_unlock((v2 + 128));
}

unsigned int *__copy_helper_block_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0(unsigned int **a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  a1[4] = v7;
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(a1 + 5, v6, a3, a4);
  a1[6] = *(a2 + 48);
  result = *(a2 + 56);
  a1[7] = result;
  return result;
}

atomic_uint **__destroy_helper_block_a8_32c80_ZTSKZN2re20ResourceFetchManager20receiveFetchResponseENS0_13FetchResponseEE3__0(uint64_t a1)
{

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr((a1 + 40), v2, v3, v4);
}

void re::ResourceFetchManager::setDirectMeshHandler(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 392);
  if (v3 != *a2)
  {
    if (v2)
    {
      v5 = (v2 + 8);
      v3 = *(a1 + 392);
    }

    if (v3)
    {
    }

    *(a1 + 392) = v2;
  }
}

uint64_t (***re::ResourceFetchManager::setTrackableResourceHandler(re *a1, uint64_t a2))(void)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v11[0] = &unk_1F5CB9B20;
  v11[1] = a2;
  v11[3] = v4;
  v12 = v11;
  v5 = *(a1 + 50);
  v6 = (v5 + 3);
  if (v5 + 3 != v11)
  {
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable((v5 + 3));
    if (v12)
    {
      v7 = (*(*v12 + 40))(v12);
      if (v7 >= 0x19)
      {
        v8 = v7;
        v9 = v5[6];
        if (v9)
        {
          v6 = (*(*v9 + 32))(v9, v8, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      v5[7] = v6;
      (*(*v12 + 24))(v12, v6);
    }
  }

  return re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v11);
}

uint64_t re::ResourceFetchManager::addOnConnectionAddedHandler(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 408);
  *(a1 + 408) = v3 + 1;
  v17 = *(a2 + 24);
  v18 = 0;
  v4 = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v16, a2);
  v5 = *(a1 + 400);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*(v5 + 64))
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 64), v12);
      }

      else
      {
        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 64), v8);
        ++*(v5 + 88);
      }
    }

    v7 = *(v5 + 80);
  }

  v13 = (*(v5 + 96) + 48 * v7);
  v14 = v17;
  *v13 = v3;
  v13[4] = v14;
  v13[5] = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v13 + 1), v16);
  ++*(v5 + 80);
  ++*(v5 + 88);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v16);
  return v3;
}

uint64_t re::ResourceFetchManager::removeOnConnectionAddedHandler(uint64_t this, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 400);
  if (*(v2 + 80))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = 48 * v5;
      while (1)
      {
        v7 = (*(v2 + 96) + v6);
        v13 = *v7;
        v14[3] = v7[4];
        v14[4] = 0;
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v14, (v7 + 1));
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v14);
        if (v13 != a2)
        {
          break;
        }

        ++v5;
        v8 = *(v2 + 80);
        v6 += 48;
        if (v5 >= v8)
        {
          goto LABEL_10;
        }
      }

      if (v4 != v5)
      {
        v9 = *(v2 + 96);
        v10 = (v9 + 48 * v4);
        *v10 = *(v9 + v6);
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v10 + 1), v9 + v6 + 8);
      }

      ++v5;
      ++v4;
      v8 = *(v2 + 80);
    }

    while (v5 < v8);
LABEL_10:
    if (v4 != v8)
    {
      v11 = 48 * v8 - 48 * v4;
      v12 = *(v2 + 96) + 48 * v4 + 8;
      do
      {
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      *(v2 + 80) = v4;
      ++*(v2 + 88);
    }
  }

  return this;
}

uint64_t re::ResourceFetchManager::addOnConnectionInterruptedOrInvalidatedHandler(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 408);
  *(a1 + 408) = v3 + 1;
  v17 = *(a2 + 24);
  v18 = 0;
  v4 = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v16, a2);
  v5 = *(a1 + 400);
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*(v5 + 104))
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 104), v12);
      }

      else
      {
        re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity((v5 + 104), v8);
        ++*(v5 + 128);
      }
    }

    v7 = *(v5 + 120);
  }

  v13 = (*(v5 + 136) + 48 * v7);
  v14 = v17;
  *v13 = v3;
  v13[4] = v14;
  v13[5] = 0;
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v13 + 1), v16);
  ++*(v5 + 120);
  ++*(v5 + 128);
  re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v16);
  return v3;
}

uint64_t re::ResourceFetchManager::removeOnConnectionInterruptedOrInvalidatedHandler(uint64_t this, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 400);
  if (*(v2 + 120))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = 48 * v5;
      while (1)
      {
        v7 = (*(v2 + 136) + v6);
        v13 = *v7;
        v14[3] = v7[4];
        v14[4] = 0;
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v14, (v7 + 1));
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v14);
        if (v13 != a2)
        {
          break;
        }

        ++v5;
        v8 = *(v2 + 120);
        v6 += 48;
        if (v5 >= v8)
        {
          goto LABEL_10;
        }
      }

      if (v4 != v5)
      {
        v9 = *(v2 + 136);
        v10 = (v9 + 48 * v4);
        *v10 = *(v9 + v6);
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>((v10 + 1), v9 + v6 + 8);
      }

      ++v5;
      ++v4;
      v8 = *(v2 + 120);
    }

    while (v5 < v8);
LABEL_10:
    if (v4 != v8)
    {
      v11 = 48 * v8 - 48 * v4;
      v12 = *(v2 + 136) + 48 * v4 + 8;
      do
      {
        this = re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      *(v2 + 120) = v4;
      ++*(v2 + 128);
    }
  }

  return this;
}

void re::ResourceFetchManager::setShaderGraphLoader(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 424);
  *(a1 + 424) = v3;
}

void re::ResourceFetchManager::tryGetShaderGraph(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v23 = a4;
  os_unfair_lock_lock((a1 + 128));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = (*(a1 + 168) + 8);
    v9 = v7 << 6;
    while ([*v8 hash] != a2)
    {
      v8 += 8;
      v9 -= 64;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = *v8;
    os_unfair_lock_unlock((a1 + 128));
    if (v10)
    {
      v11 = v10;
      objc_sync_enter(v11);
      v12 = [v11 pendingShaderGraphs];
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, v12, a3, v14);
      if (v26 != 0x7FFFFFFF)
      {
        v23[2](v23, *(*(v12 + 16) + 32 * v26 + 16));
        v15 = [v11 pendingShaderGraphs];
        re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, v15, a3, v14);
        v16 = v26;
        if (v26 != 0x7FFFFFFF)
        {
          v17 = *(v15 + 16);
          v18 = (v17 + 32 * v26);
          v19 = *v18 & 0x7FFFFFFF;
          if (v27 == 0x7FFFFFFF)
          {
            *(*(v15 + 8) + 4 * v25) = v19;
          }

          else
          {
            *(v17 + 32 * v27) = *(v17 + 32 * v27) & 0x80000000 | v19;
          }

          v20 = *v18;
          if (*v18 < 0)
          {
            v20 &= ~0x80000000;
            *v18 = v20;
            v21 = *(v18 + 2);
            if (v21)
            {

              *(v18 + 2) = 0;
              v17 = *(v15 + 16);
              v20 = *(v17 + 32 * v16);
            }
          }

          *(v17 + 32 * v16) = *(v15 + 36) | v20 & 0x80000000;
          --*(v15 + 28);
          v22 = *(v15 + 40) + 1;
          *(v15 + 36) = v16;
          *(v15 + 40) = v22;
        }
      }

      objc_sync_exit(v11);
    }
  }

  else
  {
LABEL_5:
    os_unfair_lock_unlock((a1 + 128));
  }
}

void re::ResourceFetchManager::Request::create(uint64_t *a1, uint64_t a2, void *a3, re::DynamicString *a4)
{
  v7 = a3;
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 112, 8);
  *(v9 + 8) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0;
  *(v9 + 8) = 1;
  *v9 = &unk_1F5CB9A30;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v10 = re::DynamicString::setCapacity((v9 + 32), 0);
  *(v9 + 88) = re::globalAllocators(v10)[2];
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *a1 = v9;
  v11 = *(v9 + 24);
  *(v9 + 16) = a2;
  *(v9 + 24) = v7;
  v12 = v7;

  re::DynamicString::operator=((v9 + 32), a4);
}

uint64_t re::ResourceFetchManager::Request::create(uint64_t *a1, uint64_t a2, void *a3, const re::DynamicString *a4, uint64_t a5)
{
  v9 = a3;
  re::DynamicString::DynamicString(v11, a4);
  re::ResourceFetchManager::Request::create(a1, a2, v9, v11);

  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  return re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(*a1 + 64, a5);
}

uint64_t re::ResourceFetchManager::Request::dispose(uint64_t this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 16))
  {
    if ((*(this + 104) & 1) == 0)
    {
      v2 = re::resourceSharingLogObjects(this)[1];
      this = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
      if (this)
      {
        if (*(v1 + 40))
        {
          v5 = *(v1 + 48);
        }

        else
        {
          v5 = v1 + 41;
        }

        v6 = 136315138;
        v7 = v5;
        _os_log_fault_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_FAULT, "Resource request for '%s' was not cancelled before being released", &v6, 0xCu);
      }
    }
  }

  v3 = re::globalAllocators(this)[2];
  re::ResourceFetchManager::Request::~Request(v1);
  return (*(*v3 + 40))(v3, v1);
}

void re::ResourceFetchManager::Request::~Request(id *this)
{
  re::ResourceFetchManager::Request::~Request(this);

  JUMPOUT(0x1E6906520);
}

{
  re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable((this + 8));
  re::DynamicString::deinit((this + 4));
}

void *re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
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
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *(v8 + 1) = 0;
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 2, v8 + 2);
          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v8 + 2);

          v13 = *v8;
          v8 += 4;

          v11 += 8;
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

double re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t result)
{
  if ((*result & 0x80000000) != 0)
  {
    v1 = result;
    *result &= ~0x80000000;
    v2 = re::DynamicString::deinit((result + 8));
    result = *(v1 + 40);
    if (result)
    {
      if (*(v1 + 72))
      {
        result = (*(*result + 40))(result, v2);
      }

      *(v1 + 72) = 0;
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
      *(v1 + 40) = 0;
      ++*(v1 + 64);
    }
  }

  return result;
}

void *re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result[1];
  if (v5 != a2)
  {
    v7 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v7)
      {
        result = re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::setCapacity(v7, a2, v10, v11);
        ++*(v7 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        else
        {
          v4 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8, a4);
          if (result)
          {
            v9 = result;
            if (!v7[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v4, *(*v7 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v9 = 0;
      if (!v5)
      {
LABEL_16:
        v7[4] = v9;
        v7[1] = a2;
        return result;
      }

LABEL_11:
      v12 = v7[4];
      v13 = v7[2];
      if (v13)
      {
        v14 = 8 * v13;
        v15 = v9;
        v16 = v7[4];
        do
        {
          *v15++ = *v12;
          *v16++ = 0;
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(v12, v12, a3, a4);
          v12 = v16;
          v14 -= 8;
        }

        while (v14);
        v12 = v7[4];
      }

      result = (*(**v7 + 40))(*v7, v12);
      goto LABEL_16;
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::DynamicArray<re::SharedPtr<re::ResourceFetchManager::Request>>::deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (result)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = 8 * v7;
        do
        {
          re::SharedPtr<re::ResourceRequest>::~SharedPtr(v6++, a2, a3, a4);
          v8 -= 8;
        }

        while (v8);
        result = *a1;
        v6 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v6, a3, a4);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::Connection>::deinit(uint64_t a1)
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
        v5 = (v3 + 16);
        v6 = v4 << 6;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v5);

          v5 += 8;
          v6 -= 64;
        }

        while (v6);
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

__int128 *re::PeerIDValidator::instance(re::PeerIDValidator *this)
{
  {
    re::PeerIDValidator::instance(void)::instance = 0u;
    unk_1ECEF56C8 = 0u;
    dword_1ECEF56D8 = 1065353216;
  }

  return &re::PeerIDValidator::instance(void)::instance;
}

void re::PeerIDValidator::remove_impl(re::PeerIDValidator *this, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(this, &v8);
  if (v3)
  {
    v4 = *(v3 + 17) - 1;
    *(v3 + 17) = v4;
    v5 = *re::resourceSharingLogObjects(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        *buf = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Decrementing count for Entry with PeerID %llu.", buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Removing Entry with PeerID %llu.", buf, 0xCu);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>(this, &v8);
    }
  }

  else
  {
    v7 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "PeerIDValidator: Error removing Entry for PeerID %llu -- not found.", buf, 0xCu);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  result = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v12, a1, a2, v6);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    result = re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 72) = 0;
    *(v8 + 64) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 40) = 0;
    v9 = *(a3 + 8);
    *(v8 + 40) = *a3;
    *(v8 + 48) = v9;
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = *(v8 + 56);
    *(v8 + 56) = *(a3 + 16);
    *(a3 + 16) = v10;
    v11 = *(v8 + 72);
    *(v8 + 72) = *(a3 + 32);
    *(a3 + 32) = v11;
    ++*(a3 + 24);
    ++*(v8 + 64);
    ++*(a1 + 40);
  }

  return result;
}

atomic_uint **___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  v5 = re::resourceSharingLogObjects(v3)[1];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Encountered an error communicating with the remote object proxy, which will cause a load failure for asset '%@'. If the error domain is NSCocoaErrorDomain and the code is 4101 (NSXPCConnectionReplyInvalid), then the underlying issue might have been been logged from Foundation (see NSXPCConnection.m) with subsystem com.apple.Foundation and category xpc.exceptions. The error is: %@", buf, 0x16u);
  }

  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v14, *(*(a1[5] + 8) + 48), v6, v7);
  v15 = 0;
  v16 = v3;
  v9 = v3;
  re::ResourceFetchManager::receiveFetchResponse(v4, &v14);

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v14, v10, v11, v12);
}

unsigned int **re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(unsigned int **a1, unsigned int *a2, uint64_t a3, int a4)
{
  *a1 = a2;
  if (a2)
  {
    v6 = a2 + 2;
    if (!atomic_load(a2 + 2))
    {
      v10 = atomic_load(v6);
      re::internal::refCountCheckFailHandler(1, a2, v10);
    }

    add_explicit = atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
    if (add_explicit - 0x100000 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(1, a2, (add_explicit + 1));
    }
  }

  return a1;
}

atomic_uint **___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  re::SharedPtr<re::ResourceFetchManager::Request>::SharedPtr(&v16, *(*(*(a1 + 32) + 8) + 48), v8, v9);
  v17 = v5;
  v18 = v6;
  v10 = v6;
  v11 = v5;
  re::ResourceFetchManager::receiveFetchResponse(v7, &v16);

  return re::SharedPtr<re::ResourceRequest>::~SharedPtr(&v16, v12, v13, v14);
}

uint64_t ___ZZN2re20ResourceFetchManager13fetchResourceEPKcRKNS_9AssetPathENS_8FunctionIFvNS_6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEEEEEENK3__0clERNS0_14SharedXPCStateE_block_invoke_192(uint64_t a1, const char *a2)
{
  re::DynamicString::format(&v10, "No resource fetch connection exists for peer '%llu'", a2, **(a1 + 32));
  v3 = *(a1 + 40);
  if (v11)
  {
    v4 = *&v12[7];
  }

  else
  {
    v4 = v12;
  }

  re::makeResourceSharingErrorWithDescription(&v7, 0x1F4, v4);
  v5 = v7;
  v7 = 0;
  v8[0] = 0;
  v9 = v5;
  (*(**(v3 + 96) + 16))(*(v3 + 96), v8);

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
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
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::Result<re::SharedResourcePayload,re::WrappedError>)>::destroyCallable(a2);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 40;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 40) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24), *(v7 + 40));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 8);
        v9 = *(v8 - 24);
        *(result + 8) = *(v8 - 32);
        *(v8 - 32) = 0;
        v10 = *(v8 - 16);
        *(v8 - 8) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 24) = v12;
        *(v8 - 16) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 72) = 0;
        *(result + 64) = 0;
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 40) = 0;
        v14 = *(v13 + 8);
        *(result + 40) = *v13;
        *(result + 48) = v14;
        *v13 = 0;
        *(v13 + 8) = 0;
        v15 = *(result + 56);
        *(result + 56) = *(v13 + 16);
        *(v13 + 16) = v15;
        v16 = *(result + 72);
        *(result + 72) = *(v13 + 32);
        *(v13 + 32) = v16;
        ++*(v13 + 24);
        ++*(result + 64);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::ResourceFetchManager::Request *>::DynamicArray(uint64_t a1, const void **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = a2[1];
  if (v3)
  {
    re::DynamicArray<float *>::setCapacity(a1, v3);
    ++*(a1 + 24);
    v5 = a2[1];
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6 == -1)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        v11 = MEMORY[0x1E69E9C10];
        v15 = 136315906;
        v16 = "copy";
        v17 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v18 = 643;
        v19 = 2048;
        v20 = 0;
        v21 = 2048;
        v22 = 0;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *a2;
      if (v6 >= v5)
      {
        memmove(*(a1 + 32), *a2, 8 * v5);
      }

      else
      {
        re::DynamicArray<float *>::growCapacity(a1, a2[1]);
        v8 = *(a1 + 16);
        if (v8)
        {
          memmove(*(a1 + 32), v7, 8 * v8);
          v9 = *(a1 + 16);
        }

        else
        {
          v9 = 0;
        }

        memcpy((*(a1 + 32) + 8 * v9), &v7[8 * v8], 8 * (v5 - v8));
        *(a1 + 16) = v5;
      }

      ++*(a1 + 24);
    }
  }

  return a1;
}

id re::ResourceFetchManager::Connection::remoteObjectProxy(id *this)
{
  re::xpc::Connection::remoteObjectProxy(&v3, this);
  v1 = v3;

  return v1;
}

uint64_t *re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v14 = a1[4];
        if (v9)
        {
          if (v7)
          {
            v15 = a1 + 3;
          }

          else
          {
            v15 = a1[4];
          }

          a1[3] = *v15;
          *v15 = 0;
        }

        result = (*(*result + 40))(result, v14);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        result = (*(*result + 32))(result, 8 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v16 = a1[1];
          if (v16)
          {
            v17 = 8 * v16;
            v18 = result;
            do
            {
              *v18++ = *v13;
              *v13++ = 0;
              v17 -= 8;
            }

            while (v17);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
      __break(1u);
    }
  }

  return result;
}

void re::details::retain<re::ResourceFetchManager::Request const>(unsigned int *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result + 2;
  if (!atomic_load(result + 2))
  {
    v8 = atomic_load(v5);
    re::internal::refCountCheckFailHandler(1, result, v8);
  }

  add_explicit = atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  if (add_explicit - 0x100000 <= 0xFFEFFFFE)
  {

    re::internal::refCountCheckFailHandler(1, result, (add_explicit + 1));
  }
}

uint64_t (***re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a1);
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

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
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
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(a2);
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

uint64_t (***re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::PeerIDValidator::validateOrAdd_impl(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (*(a2 + 8) != *(v4 + 8))
    {
      v17 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = v5[3];
        v22 = *(a2 + 8);
        v23 = *(v5 + 8);
        *v26 = 134218496;
        *&v26[4] = v21;
        *&v26[12] = 1024;
        *&v26[14] = v22;
        *&v26[18] = 1024;
        *&v26[20] = v23;
        v11 = "PeerIDValidator: Attempting to add Entry with invalid pid for PeerID %llu: %u != %u.";
        v12 = v17;
        v13 = 24;
        goto LABEL_25;
      }

LABEL_19:
      v16 = 0;
      return v16 & 1;
    }

    if (*(v4 + 36) != *(a2 + 12) || *(v4 + 44) != *(a2 + 20) || *(v4 + 52) != *(a2 + 28) || *(v4 + 60) != *(a2 + 36))
    {
      v9 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v5[3];
        *v26 = 134217984;
        *&v26[4] = v10;
        v11 = "PeerIDValidator: Attempting to add Entry with invalid auditToken for PeerID: %llu.";
        v12 = v9;
        v13 = 12;
LABEL_25:
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, v26, v13);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    ++*(v4 + 17);
    v19 = *re::resourceSharingLogObjects(v4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = v5[3];
      v25 = *(v5 + 17);
      *v26 = 134218240;
      *&v26[4] = v24;
      *&v26[12] = 1024;
      *&v26[14] = v25;
      _os_log_debug_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Incrementing count for Entry with PeerID %llu to %u.", v26, 0x12u);
    }

    v16 = 1;
  }

  else
  {
    *(a2 + 44) = 1;
    v14 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a2;
      *v26 = 134217984;
      *&v26[4] = v20;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "PeerIDValidator: Adding new Entry with PeerID %llu.", v26, 0xCu);
    }

    *v26 = *a2;
    v15 = *(a2 + 16);
    *&v26[8] = *a2;
    v27 = v15;
    v28 = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,re::PeerIDValidator::Entry>>(a1, v26, v26);
  }

  return v16 & 1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,re::PeerIDValidator::Entry>>(void *a1, unint64_t *a2, uint64_t a3)
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

void re::ResourceFetchManager::ConnectionEventHandlers::~ConnectionEventHandlers(re::ResourceFetchManager::ConnectionEventHandlers *this)
{
  *this = &unk_1F5CB9AD8;
  v2 = this + 24;
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 104);
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 64);
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9AD8;
  v2 = this + 24;
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 104);
  re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::deinit(this + 64);
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::destroyCallable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::deinit(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v5 = result[1];
    if (v5)
    {
      if (result[2])
      {
        v6 = (result + 3);
      }

      else
      {
        v6 = result[4];
      }

      v7 = 8 * v5;
      do
      {
        if (*v6)
        {
          re::details::release<re::ResourceRequest>(*v6, a2, a3, a4);
          *v6 = 0;
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
    }

    v8 = *(result + 4);
    if ((v8 & 1) == 0)
    {
      (*(**result + 40))(*result, result[4], a3, a4);
      v8 = *(result + 4);
    }

    *result = 0;
    result[1] = 0;
    *(result + 4) = (v8 | 1) + 2;
  }
}

uint64_t re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 32) = 0;
  v4 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    *a1 = v4;
    re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, v6);
    v10 = *(a1 + 16);
    LOBYTE(v11) = v10 + 2;
    *(a1 + 16) = v10 + 2;
    v12 = a2[1];
    if (v12 >= *(a1 + 8))
    {
      re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(a1, a2[1]);
      if (a2[2])
      {
        v23 = (a2 + 3);
      }

      else
      {
        v23 = a2[4];
      }

      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = v3;
      if ((v25 & 1) == 0)
      {
        v26 = *(a1 + 32);
      }

      if (v24)
      {
        v27 = 8 * v24;
        do
        {
          v28 = *v23++;
          re::SharedPtr<re::ResourceFetchManager::Request const>::reset(v26++, v28, v21, v22);
          v27 -= 8;
        }

        while (v27);
        v25 = *(a1 + 16);
      }

      if ((v25 & 1) == 0)
      {
        v3 = *(a1 + 32);
      }

      v29 = *(a1 + 8);
      v30 = a2[4];
      if (a2[2])
      {
        v30 = a2 + 3;
      }

      if (v29 != v12)
      {
        v31 = &v30[v29];
        v32 = &v3[v29];
        v33 = 8 * v12 - 8 * v29;
        do
        {
          v34 = *v31;
          *v32 = *v31;
          if (v34)
          {
            re::details::retain<re::ResourceFetchManager::Request const>(v34, v20, v21, v22);
          }

          ++v31;
          ++v32;
          v33 -= 8;
        }

        while (v33);
      }
    }

    else
    {
      if (a2[2])
      {
        v13 = (a2 + 3);
      }

      else
      {
        v13 = a2[4];
      }

      v14 = v3;
      if ((v10 & 1) == 0)
      {
        v14 = *(a1 + 32);
      }

      if (v12)
      {
        v15 = 8 * v12;
        do
        {
          v16 = *v13++;
          re::SharedPtr<re::ResourceFetchManager::Request const>::reset(v14++, v16, v8, v9);
          v15 -= 8;
        }

        while (v15);
        v11 = *(a1 + 16);
      }

      if ((v11 & 1) == 0)
      {
        v3 = *(a1 + 32);
      }

      v17 = *(a1 + 8);
      if (v12 != v17)
      {
        v18 = &v3[v12];
        v19 = 8 * v17 - 8 * v12;
        do
        {
          if (*v18)
          {
            re::details::release<re::ResourceRequest>(*v18, v7, v8, v9);
            *v18 = 0;
          }

          ++v18;
          v19 -= 8;
        }

        while (v19);
      }
    }

    *(a1 + 8) = v12;
  }

  return a1;
}

void re::SharedPtr<re::ResourceFetchManager::Request const>::reset(atomic_uint **a1, unsigned int *a2, uint64_t a3, int a4)
{
  v5 = *a1;
  if (v5 != a2)
  {
    if (a2)
    {
      re::details::retain<re::ResourceFetchManager::Request const>(a2, a2, a3, a4);
      v5 = *a1;
    }

    if (v5)
    {
      re::details::release<re::ResourceRequest>(v5, a2, a3, a4);
    }

    *a1 = a2;
  }
}

void *re::internal::CallableRef<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5CB9B88;
  a2[4] = *(v3 + 24);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>((a2 + 1), v3);
  return a2;
}

void re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator()(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  (*(**(a1 + 32) + 16))(*(a1 + 32), &v6, &v5);
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB9B88;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB9B88;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB9B88;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Function<void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>,void ()(NSObject  {objcproto13OS_xpc_object}*,int)>::moveInto(void *a1, void *a2)
{
  *a2 = &unk_1F5CB9B88;
  a2[4] = a1[4];
  a2[5] = 0;
  if (a2 != a1)
  {
    v4 = a1 + 1;
    v5 = a2 + 1;
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable((a2 + 1));
    v6 = a1[5];
    if (a2[4] != a1[4] || v6 == v4)
    {
      if (v6)
      {
        v8 = (*(*v6 + 40))(v6);
        if (v8 >= 0x19)
        {
          v9 = v8;
          v10 = a2[4];
          if (v10)
          {
            v5 = (*(*v10 + 32))(v10, v9, 0);
          }

          else
          {
            v5 = 0;
          }
        }

        a2[5] = v5;
        (*(*a1[5] + 32))(a1[5], v5);
        re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(v4);
      }
    }

    else
    {
      a2[5] = v6;
      a1[5] = 0;
    }
  }

  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(NSObject  {objcproto13OS_xpc_object}*,unsigned int)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ResourceFetchManager::ConnectionAddedHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = v8 + 48 * v9;
        v11 = (v7 + 1);
        v12 = v8 + 8;
        do
        {
          *(v11 - 8) = *(v12 - 8);
          *(v11 + 24) = *(v12 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::operator=<24ul>(v11, v12);
          re::FunctionBase<24ul,void ()(int,audit_token_t,unsigned long long)>::destroyCallable(v12);
          v11 += 48;
          v13 = v12 + 40;
          v12 += 48;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
                *v17 = 0;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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

void *re::allocInfo_PrereleaseVersionInfo(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192300, "PrereleaseVersionInfo");
    __cxa_guard_release(&qword_1EE191F30);
  }

  return &unk_1EE192300;
}

void re::initInfo_PrereleaseVersionInfo(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x1EE93697053F1DC4;
  v16[1] = "PrereleaseVersionInfo";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE191F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F38))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "id";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192078 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "frameworkVersion";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE192080 = v14;
    __cxa_guard_release(&qword_1EE191F38);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192078;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseVersionInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseVersionInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseVersionInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseVersionInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::PrereleaseVersionInfo>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a3 + 2;

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::PrereleaseVersionInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::PrereleaseVersionInfo>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v3 = (a1 + 32);

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::PrereleaseVersionInfo>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_PrereleaseSchemaVersion(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192390, "PrereleaseSchemaVersion");
    __cxa_guard_release(&qword_1EE191F48);
  }

  return &unk_1EE192390;
}

void re::initInfo_PrereleaseSchemaVersion(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xC639F5DA5C92FC66;
  v16[1] = "PrereleaseSchemaVersion";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE191F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F50))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "id";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192088 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_int(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "sdk";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE192090 = v14;
    __cxa_guard_release(&qword_1EE191F50);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192088;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseSchemaVersion>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseSchemaVersion>;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseSchemaVersion>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseSchemaVersion>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::PrereleaseSchemaVersion>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::PrereleaseSchemaVersion>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

void *re::allocInfo_PrereleaseHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192420, "PrereleaseHeader");
    __cxa_guard_release(&qword_1EE191F60);
  }

  return &unk_1EE192420;
}

void re::initInfo_PrereleaseHeader(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0xDD9D25828C678FA2;
  v26[1] = "PrereleaseHeader";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE191F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F68))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE191F58;
    if (!qword_1EE191F58)
    {
      v9 = re::allocInfo_PrereleaseSchemaVersion(v7);
      qword_1EE191F58 = v9;
      re::initInfo_PrereleaseSchemaVersion(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "schemaVersion";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x1800000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1920B8 = v13;
    v14 = re::introspectionAllocator();
    v15 = v14;
    v16 = qword_1EE191F40;
    if (!qword_1EE191F40)
    {
      v16 = re::allocInfo_PrereleaseVersionInfo(v14);
      qword_1EE191F40 = v16;
      re::initInfo_PrereleaseVersionInfo(v16, v17, v18, v19);
    }

    v20 = (*(*v15 + 32))(v15, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "versionInfo";
    *(v20 + 16) = v16;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x4000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1920C0 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::IntrospectionInfo<re::DynamicString>::get(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "identifier";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x8000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1920C8 = v24;
    __cxa_guard_release(&qword_1EE191F68);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1920B8;
  *(this + 9) = re::internal::defaultConstruct<re::PrereleaseHeader>;
  *(this + 10) = re::internal::defaultDestruct<re::PrereleaseHeader>;
  *(this + 11) = re::internal::defaultRetain<re::PrereleaseHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::PrereleaseHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::PrereleaseHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::PrereleaseHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v25 = v27;
}

void *re::allocInfo_SceneCompatibilityVariant(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1924B0, "SceneCompatibilityVariant");
    __cxa_guard_release(&qword_1EE191F78);
  }

  return &unk_1EE1924B0;
}

void re::initInfo_SceneCompatibilityVariant(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x181C570854B9A702;
  v16[1] = "SceneCompatibilityVariant";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE191F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F80))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_int(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "version";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192098 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "fileName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1920A0 = v14;
    __cxa_guard_release(&qword_1EE191F80);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE192098;
  *(this + 9) = re::internal::defaultConstruct<re::SceneCompatibilityVariant>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneCompatibilityVariant>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneCompatibilityVariant>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneCompatibilityVariant>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::SceneCompatibilityVariant>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0u;
  v3 = (a3 + 8);
  *(a3 + 24) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::SceneCompatibilityVariant>(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

void *re::allocInfo_SceneDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192540, "SceneDescriptor");
    __cxa_guard_release(&qword_1EE191F90);
  }

  return &unk_1EE192540;
}

void re::initInfo_SceneDescriptor(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0xABFCACCDD6C081F6;
  v22[1] = "SceneDescriptor";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE191F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191F98))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "fileName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1920E8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "sceneName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1920F0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "sceneIdentifier";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x5800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1920F8 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SceneCompatibilityVariant>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "sceneCompatibilityVariants";
    *(v20 + 16) = &qword_1EE1921B8;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xA000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE192100 = v20;
    __cxa_guard_release(&qword_1EE191F98);
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1920E8;
  *(this + 9) = re::internal::defaultConstruct<re::SceneDescriptor>;
  *(this + 10) = re::internal::defaultDestruct<re::SceneDescriptor>;
  *(this + 11) = re::internal::defaultRetain<re::SceneDescriptor>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SceneDescriptor>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v21 = v23;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<re::DynamicString>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186690 = 0x280000000DLL;
    dword_1EE186698 = v8;
    word_1EE18669C = 0;
    *&xmmword_1EE1866A0 = 0;
    *(&xmmword_1EE1866A0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1866B0 = v7;
    unk_1EE1866B8 = 0;
    re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9DA8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info);
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
    xmmword_1EE1866A0 = v14;
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

  return &re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::SceneCompatibilityVariant>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192058, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192058);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1921B8);
      qword_1EE1921B8 = &unk_1F5CB9E28;
      __cxa_guard_release(&qword_1EE192058);
    }
  }

  if ((byte_1EE191F29 & 1) == 0)
  {
    v1 = qword_1EE191F88;
    if (qword_1EE191F88 || (v1 = re::allocInfo_SceneCompatibilityVariant(a1), qword_1EE191F88 = v1, re::initInfo_SceneCompatibilityVariant(v1, v2, v3, v4), (byte_1EE191F29 & 1) == 0))
    {
      byte_1EE191F29 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1921B8, 0);
      qword_1EE1921C8 = 0x2800000003;
      dword_1EE1921D0 = v5;
      word_1EE1921D4 = 0;
      *&xmmword_1EE1921D8 = 0;
      *(&xmmword_1EE1921D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1921E8 = v1;
      qword_1EE1921F0 = 0;
      qword_1EE1921B8 = &unk_1F5CB9E28;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1921B8);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1921D8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

re::SceneDescriptor *re::internal::defaultConstruct<re::SceneDescriptor>(int a1, int a2, re::SceneDescriptor *this)
{
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::SceneDescriptor::SceneDescriptor(this);
}

re::SceneDescriptor *re::internal::defaultConstructV2<re::SceneDescriptor>(re::SceneDescriptor *this)
{
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::SceneDescriptor::SceneDescriptor(this);
}

void *re::allocInfo_AssetMapAssetDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1925D0, "AssetMapAssetDescriptor");
    __cxa_guard_release(&qword_1EE191FA8);
  }

  return &unk_1EE1925D0;
}

void re::initInfo_AssetMapAssetDescriptor(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xF2989CE2313F00E6;
  v24[1] = "AssetMapAssetDescriptor";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE191FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FB0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "fileNames";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192108 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "internalDependencies";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE192110 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "label";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x5000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE192118 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "metadata";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x7800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE192120 = v22;
    __cxa_guard_release(&qword_1EE191FB0);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE192108;
  *(this + 9) = re::internal::defaultConstruct<re::AssetMapAssetDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssetMapAssetDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetMapAssetDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetMapAssetDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info) = &unk_1F5CB9EC0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186BD8 = 0x2800000003;
    dword_1EE186BE0 = v8;
    word_1EE186BE4 = 0;
    *&xmmword_1EE186BE8 = 0;
    *(&xmmword_1EE186BE8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186BF8 = v7;
    unk_1EE186C00 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9EC0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info);
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
    xmmword_1EE186BE8 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info) = &unk_1F5CB9F58;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info, 0);
    qword_1EE1862C8 = 0x3000000007;
    dword_1EE1862D0 = v10;
    word_1EE1862D4 = 0;
    *&xmmword_1EE1862D8 = 0;
    *(&xmmword_1EE1862D8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1862E8 = v6;
    unk_1EE1862F0 = 0;
    qword_1EE1862F8 = v9;
    unk_1EE186300 = 0;
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info = &unk_1F5CB9F58;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info);
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
    xmmword_1EE1862D8 = v17;
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

  return &re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::AssetMapAssetDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 156) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestruct<re::AssetMapAssetDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a3 + 120));
  if (*(a3 + 80) == 1)
  {
    re::DynamicString::deinit((a3 + 88));
  }

  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<re::DynamicString>::deinit(a3);
}

double re::internal::defaultConstructV2<re::AssetMapAssetDescriptor>(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 156) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::AssetMapAssetDescriptor>(uint64_t a1)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 120));
  if (*(a1 + 80) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<re::DynamicString>::deinit(a1);
}

void *re::allocInfo_RealityFileConfigurationEntryDescriptor(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192660, "RealityFileConfigurationEntryDescriptor");
    __cxa_guard_release(&qword_1EE191FC0);
  }

  return &unk_1EE192660;
}

void re::initInfo_RealityFileConfigurationEntryDescriptor(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x45B4E41531619F2ELL;
  v16[1] = "RealityFileConfigurationEntryDescriptor";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE191FC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FC8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "assetIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1920A8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "configurations";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1920B0 = v14;
    __cxa_guard_release(&qword_1EE191FC8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1920A8;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileConfigurationEntryDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info) = &unk_1F5CB9FF8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info, 0);
    qword_1EE186EF0 = 0x1800000004;
    dword_1EE186EF8 = v8;
    word_1EE186EFC = 0;
    *&xmmword_1EE186F00 = 0;
    *(&xmmword_1EE186F00 + 1) = 0xFFFFFFFFLL;
    qword_1EE186F10 = v7;
    unk_1EE186F18 = 0;
    re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info = &unk_1F5CB9FF8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info);
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
    xmmword_1EE186F00 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::RealityFileConfigurationEntryDescriptor>(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
}

void *re::internal::defaultConstructV2<re::RealityFileConfigurationEntryDescriptor>(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *re::allocInfo_AssetMap(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1926F0, "AssetMap");
    __cxa_guard_release(&qword_1EE191FD8);
  }

  return &unk_1EE1926F0;
}

void re::initInfo_AssetMap(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0x371DB3700D8;
  v26[1] = "AssetMap";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE191FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FE0))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SceneDescriptor>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "scenes";
    *(v8 + 16) = &qword_1EE1921F8;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0x1800000001;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE192150 = v8;
    v9 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AssetMapAssetDescriptor>>::get(v9);
    v10 = (*(*v9 + 32))(v9, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "assets";
    *(v10 + 16) = &qword_1EE192238;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x4000000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192158 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "certifiedFreeOfChangeSceneActions";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x6800000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE192160 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "configurationSetNames";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x7000000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE192168 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::FixedArray<re::RealityFileConfigurationEntryDescriptor>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "configurationEntryDescriptors";
    *(v20 + 16) = &qword_1EE192278;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xA000000005;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE192170 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "defaultConfigurationNames";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x8800000006;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE192178 = v24;
    __cxa_guard_release(&qword_1EE191FE0);
  }

  *(this + 2) = 0x1B800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE192150;
  *(this + 9) = re::internal::defaultConstruct<re::AssetMap>;
  *(this + 10) = re::internal::defaultDestruct<re::AssetMap>;
  *(this + 11) = re::internal::defaultRetain<re::AssetMap>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::AssetMap>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetMap>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetMap>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v25 = v27;
}

void re::IntrospectionInfo<re::DynamicArray<re::SceneDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192060, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192060);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1921F8);
      qword_1EE1921F8 = &unk_1F5CBA090;
      __cxa_guard_release(&qword_1EE192060);
    }
  }

  if ((byte_1EE191F2A & 1) == 0)
  {
    v1 = qword_1EE191FA0;
    if (qword_1EE191FA0 || (v1 = re::allocInfo_SceneDescriptor(a1), qword_1EE191FA0 = v1, re::initInfo_SceneDescriptor(v1, v2, v3, v4), (byte_1EE191F2A & 1) == 0))
    {
      byte_1EE191F2A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1921F8, 0);
      qword_1EE192208 = 0x2800000003;
      dword_1EE192210 = v5;
      word_1EE192214 = 0;
      *&xmmword_1EE192218 = 0;
      *(&xmmword_1EE192218 + 1) = 0xFFFFFFFFLL;
      qword_1EE192228 = v1;
      qword_1EE192230 = 0;
      qword_1EE1921F8 = &unk_1F5CBA090;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1921F8);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE192218 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::AssetMapAssetDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192068, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192068);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE192238);
      qword_1EE192238 = &unk_1F5CBA128;
      __cxa_guard_release(&qword_1EE192068);
    }
  }

  if ((byte_1EE191F2B & 1) == 0)
  {
    v1 = qword_1EE191FB8;
    if (qword_1EE191FB8 || (v1 = re::allocInfo_AssetMapAssetDescriptor(a1), qword_1EE191FB8 = v1, re::initInfo_AssetMapAssetDescriptor(v1, v2, v3, v4), (byte_1EE191F2B & 1) == 0))
    {
      byte_1EE191F2B = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE192238, 0);
      qword_1EE192248 = 0x2800000003;
      dword_1EE192250 = v5;
      word_1EE192254 = 0;
      *&xmmword_1EE192258 = 0;
      *(&xmmword_1EE192258 + 1) = 0xFFFFFFFFLL;
      qword_1EE192268 = v1;
      qword_1EE192270 = 0;
      qword_1EE192238 = &unk_1F5CBA128;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE192238);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE192258 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::FixedArray<re::RealityFileConfigurationEntryDescriptor>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE192070, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE192070);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE192278);
      qword_1EE192278 = &unk_1F5CBA1C0;
      __cxa_guard_release(&qword_1EE192070);
    }
  }

  if ((byte_1EE191F2C & 1) == 0)
  {
    v1 = qword_1EE191FD0;
    if (qword_1EE191FD0 || (v1 = re::allocInfo_RealityFileConfigurationEntryDescriptor(a1), qword_1EE191FD0 = v1, re::initInfo_RealityFileConfigurationEntryDescriptor(v1, v2, v3, v4), (byte_1EE191F2C & 1) == 0))
    {
      byte_1EE191F2C = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE192278, 0);
      qword_1EE192288 = 0x1800000004;
      dword_1EE192290 = v5;
      word_1EE192294 = 0;
      *&xmmword_1EE192298 = 0;
      *(&xmmword_1EE192298 + 1) = 0xFFFFFFFFLL;
      qword_1EE1922A8 = v1;
      qword_1EE1922B0 = 0;
      qword_1EE192278 = &unk_1F5CBA1C0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE192278);
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
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x18uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE192298 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RealityFileVersionInfo(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192780, "RealityFileVersionInfo");
    __cxa_guard_release(&qword_1EE191FF0);
  }

  return &unk_1EE192780;
}

void re::initInfo_RealityFileVersionInfo(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x3B095B3399DAFC74;
  v19[1] = "RealityFileVersionInfo";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE191FF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191FF8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "id";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1920D0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "frameworkVersion";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1920D8 = v14;
    v15 = re::introspectionAllocator();
    re::introspect_RealityFilePlatform(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "originPlatform";
    *(v17 + 16) = &qword_1EE1922B8;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1920E0 = v17;
    __cxa_guard_release(&qword_1EE191FF8);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1920D0;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileVersionInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileVersionInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileVersionInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileVersionInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void *re::internal::defaultConstruct<re::RealityFileVersionInfo>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  v3 = a3;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3 = (v3 + 32);
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 8) = 2;
  return result;
}

double re::internal::defaultDestruct<re::RealityFileVersionInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::RealityFileVersionInfo>(re::DynamicString *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 8) = 2;
  return result;
}

double re::internal::defaultDestructV2<re::RealityFileVersionInfo>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void re::introspect_RealityFilePlatform(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE192008, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE192010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192010))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1922B8, "RealityFilePlatform", 4, 4, 1, 1);
      qword_1EE1922B8 = &unk_1F5D0C658;
      qword_1EE1922F8 = &re::introspect_RealityFilePlatform(BOOL)::enumTable;
      dword_1EE1922C8 = 9;
      __cxa_guard_release(&qword_1EE192010);
    }

    if (_MergedGlobals_43)
    {
      break;
    }

    _MergedGlobals_43 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1922B8, a2);
    v43 = 0xCED4E9B28AD038BELL;
    v44 = "RealityFilePlatform";
    v47 = 0x607DD0F01DCLL;
    v48 = "uint32_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1922F8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1922D8 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v42);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE192008))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "RealityFilePlatformNone";
      qword_1EE192180 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "RealityFilePlatformAll";
      qword_1EE192188 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "RealityFilePlatformIOS";
      qword_1EE192190 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "RealityFilePlatformMacOS";
      qword_1EE192198 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "RealityFilePlatformVisionOS";
      qword_1EE1921A0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 2;
      *(v39 + 8) = 4;
      *(v39 + 16) = "RealityFilePlatformXROS";
      qword_1EE1921A8 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 5;
      *(v41 + 16) = "RealityFilePlatformTVOS";
      qword_1EE1921B0 = v41;
      __cxa_guard_release(&qword_1EE192008);
    }
  }
}

void *re::allocInfo_RealityFileHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192018))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192810, "RealityFileHeader");
    __cxa_guard_release(&qword_1EE192018);
  }

  return &unk_1EE192810;
}

void re::initInfo_RealityFileHeader(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0x6061B851532742F2;
  v30[1] = "RealityFileHeader";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE192020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192020))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE192000;
    if (!qword_1EE192000)
    {
      v9 = re::allocInfo_RealityFileVersionInfo(v7);
      qword_1EE192000 = v9;
      re::initInfo_RealityFileVersionInfo(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "versionInfo";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x1800000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE192128 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_int(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "minVersion";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x6000000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE192130 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "metadata";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x6800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE192138 = v21;
    v22 = re::introspectionAllocator();
    re::introspect_RealityFilePlatform(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "targetPlatform";
    *(v24 + 16) = &qword_1EE1922B8;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x9800000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE192140 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_int(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "restrictedSeedVersion";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x6400000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE192148 = v28;
    __cxa_guard_release(&qword_1EE192020);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE192128;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileHeader>;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileHeader>;
  *(this + 11) = re::internal::defaultRetain<re::RealityFileHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::RealityFileHeader>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v29 = v31;
}

void *re::allocInfo_DeduplicationInformation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE192030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192030))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1928A0, "DeduplicationInformation");
    __cxa_guard_release(&qword_1EE192030);
  }

  return &unk_1EE1928A0;
}

void re::initInfo_DeduplicationInformation(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x60185639ABC815FELL;
  v12[1] = "DeduplicationInformation";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE192040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192040))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "originalAssetToDuplicates";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192038 = v10;
    __cxa_guard_release(&qword_1EE192040);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE192038;
  *(this + 9) = re::internal::defaultConstruct<re::DeduplicationInformation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeduplicationInformation>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeduplicationInformation>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeduplicationInformation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info) = &unk_1F5CBA258;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186378 = 0x3000000007;
    dword_1EE186380 = v10;
    word_1EE186384 = 0;
    *&xmmword_1EE186388 = 0;
    *(&xmmword_1EE186388 + 1) = 0xFFFFFFFFLL;
    qword_1EE186398 = v6;
    unk_1EE1863A0 = 0;
    qword_1EE1863A8 = v9;
    unk_1EE1863B0 = 0;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info = &unk_1F5CBA258;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info);
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
    xmmword_1EE186388 = v17;
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

  return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::DeduplicationInformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 36) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::DeduplicationInformation>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 36) = 0x7FFFFFFFLL;
  return result;
}

re::RealityFile *re::RealityFile::RealityFile(re::RealityFile *this, re *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9BE0;
  re::filePathWithURL((this + 24), a2);
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  re::DynamicString::setCapacity(this + 7, 0);
  *(this + 11) = 0;
  *(this + 24) = 1;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v6 = *(this + 4);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (!v7)
  {
    re::DynamicString::format(&v9, "Failed to create a file path from URL %s.", v5, a2);
    re::DynamicString::operator=((this + 56), &v9);
    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  return this;
}

re::RealityFile *re::RealityFile::RealityFile(re::RealityFile *this, id *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9BE0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v5 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  re::DynamicString::setCapacity(this + 7, 0);
  *(this + 11) = *a2;
  *(this + 24) = 2;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return this;
}

void re::RealityFile::~RealityFile(re::RealityFile *this)
{
  *this = &unk_1F5CB9BE0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {

    *(this + 15) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {

    *(this + 14) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {

    *(this + 13) = 0;
  }

  re::DynamicString::deinit((this + 56));
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityFile::~RealityFile(this);

  JUMPOUT(0x1E6906520);
}

void re::RealityFile::makeByOpeningFileAtURL(re::RealityFile *this@<X0>, uint64_t a3@<X8>)
{
  v14 = this;
  if (this)
  {
    re::make::shared::object<re::RealityFile,char const*&>(&v14, &v13);
    re::RealityFile::init(&v9, v13, v4);
    if (v9 == 1)
    {
      v5 = v13;
      if (v13)
      {
        v6 = v13 + 8;
      }

      *a3 = 1;
      *(a3 + 8) = v5;
    }

    else
    {
      v8 = v10;
      *a3 = 0;
      *(a3 + 8) = v8;
    }

    if (v13)
    {
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicString::setCapacity(&v9, 0);
    v7 = v13;
    v13 = 0;
    *a3 = 0;
    *(a3 + 8) = v7;

    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }
}

uint64_t *re::RealityFile::init@<X0>(uint64_t *__return_ptr a1@<X8>, re::RealityFile *this@<X0>, uint64_t a3@<X1>)
{
  v8 = this;
  v259 = *MEMORY[0x1E69E9840];
  v10 = *(this + 24);
  if (v10 == 1)
  {
    v12 = *(this + 4);
    v13 = v12 >> 1;
    if ((v12 & 1) == 0)
    {
      v13 = v12 >> 1;
    }

    if (!v13)
    {
      if (*(this + 64))
      {
        v15 = *(this + 9);
      }

      else
      {
        v15 = this + 65;
      }

      v19 = values;
      values = 0;
      v230[0] = 0;
      v231 = v19;

      if (keys[0] && (keys[1] & 1) != 0)
      {
        (*(*keys[0] + 40))();
      }

      goto LABEL_24;
    }

    if (v12)
    {
      v14 = *(this + 5);
    }

    else
    {
      v14 = (this + 33);
    }

    v11 = (v8 + 15);
    re::RealityArchive::makeByOpeningFileAtPath(keys, v14, v8[15]);
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_384;
    }

    v11 = (this + 120);
    re::RealityArchive::makeByReadingBuffer(keys, this + 11, *(this + 15));
  }

  if (LOBYTE(keys[0]) != 1)
  {
    v19 = values;
    values = 0;
    v230[0] = 0;
    v231 = v19;

    re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
LABEL_24:
    v20 = v19;
    *a1 = 0;
    a1[1] = v20;
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v230);
  }

  if (!v8[16])
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8 + 16, keys[1]);
  }

  if (!*v11)
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, *(keys[1] + 4));
  }

  v7 = keys[1];
  keys[1] = 0;
  v230[0] = 1;
  v231 = v7;
  v16 = re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
  v6 = &v241;
  v241 = 0;
  valuePtr = 0;
  memset(v236, 0, sizeof(v236));
  re::DynamicString::setCapacity(v236, 0);
  re::RealityArchive::newDataByLoadingEntryWithName(v252, v7, "header.json");
  if ((v252[0] & 1) == 0)
  {
    v21 = keys[0];
    keys[0] = 0;

    v22 = 0;
    goto LABEL_83;
  }

  v5 = *&v252[8];
  v4 = &unk_1EE187000;
  {
    goto LABEL_387;
  }

  while (1)
  {
    *v234 = *(*(v4 + 1688) + 32);
    if (!*v234)
    {
      v23 = *(v6 + 192);
      v24 = keys[2];
      v25 = keys[3];
      LOBYTE(v251[0]) = 0;
      *(v6 + 104) = v23;
      v251[3] = v24;
      v251[4] = v25;
LABEL_47:
      v29 = re::DynamicString::operator=(v236, &v251[1]);
      v35 = 2;
LABEL_49:
      v36 = *&v252[8];
      if ((atomic_load_explicit(&qword_1EE192050, memory_order_acquire) & 1) == 0)
      {
        v29 = __cxa_guard_acquire(&qword_1EE192050);
        if (v29)
        {
          qword_1EE192048 = re::internal::getOrCreateInfo("PrereleaseHeader", re::allocInfo_PrereleaseHeader, re::initInfo_PrereleaseHeader, &unk_1EE191F70, 0);
          __cxa_guard_release(&qword_1EE192050);
        }
      }

      *v234 = *(qword_1EE192048 + 32);
      if (*v234)
      {
        re::IntrospectionSharedLock::IntrospectionSharedLock(&v233);
        re::TypeRegistry::typeInfo(*v234, v234, keys);
        v37 = re::TypeInfo::TypeInfo(&v238, &keys[1]);
        if (keys[0])
        {
          v38 = keys[1];
          re::IntrospectionSharedLock::~IntrospectionSharedLock(&v233);
          if (v38)
          {
            v39 = v38 + 1;
          }

          v40 = v38[4];
          if (v40)
          {
            v41 = v40 >> 1;
          }

          else
          {
            v41 = v40 >> 1;
          }

          if (v41)
          {
            v42 = v38[17];
            if ((v42 & 1) != 0 ? v42 >> 1 : v42 >> 1)
            {
              valuePtr = 0;
              v35 = 8;
            }
          }

          goto LABEL_72;
        }

        v47 = *(v6 + 216);
        v48 = *(&v256 + 1);
        v49 = v257;
        *(v6 + 40) = *&keys[1];
        *(v6 + 56) = v47;
        v249 = v48;
        v250 = v49;
        LOBYTE(values) = 0;
        re::DynamicString::DynamicString(keys, &v247);
        v44 = keys[1];
        v45 = keys[2];
        v46 = keys[0];
        if (v247 && (v248 & 1) != 0)
        {
          (*(*v247 + 40))();
        }

        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v233);
        if (!v46)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v44 = keys[1];
        v45 = keys[2];
        v46 = keys[0];
        if (!keys[0])
        {
LABEL_72:
          CFRelease(*&v252[8]);
          if (v35 != 21 && v35 != 8)
          {
            if (BYTE8(v236[0]))
            {
              v59 = *&v236[1];
            }

            else
            {
              v59 = (v236 | 9);
            }

            v60 = v35;
            goto LABEL_104;
          }

          keys[0] = @"RERealityFileUnsupportedVersionKey";
          values = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          v51 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFRelease(values);
          re::WrappedError::make(&v238, @"RERealityFileErrorDomain", v35, v51);
          v21 = v238;
          v238 = 0;

LABEL_75:
          v22 = 0;
          goto LABEL_76;
        }
      }

      if (v44)
      {
        (*(*v46 + 40))(v46, v45);
      }

      goto LABEL_72;
    }

    re::IntrospectionSharedLock::IntrospectionSharedLock(&v233);
    re::TypeRegistry::typeInfo(*v234, v234, keys);
    v18 = re::TypeInfo::TypeInfo(&v238, &keys[1]);
    if (LOBYTE(keys[0]) == 1)
    {
      v245 = keys[1];
      LOBYTE(v251[0]) = 1;
      v251[1] = keys[1];
    }

    else
    {
      v26 = *(v6 + 216);
      v27 = *(&v256 + 1);
      v28 = v257;
      *(v6 + 40) = *&keys[1];
      *(v6 + 56) = v26;
      v249 = v27;
      v250 = v28;
      LOBYTE(values) = 0;
      re::DynamicString::DynamicString(keys, &v247);
      LOBYTE(v251[0]) = 0;
      v251[1] = keys[0];
      v251[4] = keys[3];
      *(v6 + 112) = *(v6 + 200);
      if (v247 && (v248 & 1) != 0)
      {
        (*(*v247 + 40))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v233);
    if ((v251[0] & 1) == 0)
    {
      goto LABEL_47;
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v241, v251[1]);
    v21 = v241;
    v30 = *(v241 + 32);
    if (v30)
    {
      v31 = v30 >> 1;
    }

    else
    {
      v31 = v30 >> 1;
    }

    if (!v31 || ((v32 = *(v241 + 64), (v32 & 1) != 0) ? (v33 = v32 >> 1) : (v33 = v32 >> 1), !v33 || !*(v241 + 88) || (v34 = *(v241 + 96), v34 < 1)))
    {
      v35 = 3;
      goto LABEL_49;
    }

    if (v34 >= 0x10)
    {
      valuePtr = *(v241 + 96);
      v35 = 8;
      goto LABEL_49;
    }

    if (*(v241 + 100))
    {
      valuePtr = *(v241 + 100);
      v35 = 21;
      goto LABEL_49;
    }

    CFRelease(*&v252[8]);
    v156 = v21[38] - 3;
    if (v156 < 3)
    {
      re::DynamicString::format(keys, "Cannot load reality file using OS '%s' because the reality file may only be opened on platform '%s'.", v155, "iOS", off_1E871AB50[v156]);
      v60 = 15;
LABEL_104:
      v21 = values;
      values = 0;

      if (keys[0] && (keys[1] & 1) != 0)
      {
        (*(*keys[0] + 40))();
      }

      goto LABEL_75;
    }

    v196 = v21 + 2;
    v22 = 1;
LABEL_76:
    if (LOBYTE(v251[0]) == 1)
    {
      if (v251[1])
      {

        v251[1] = 0;
      }
    }

    else if (v251[1])
    {
      if (v251[2])
      {
        (*(*v251[1] + 40))();
      }

      memset(&v251[1], 0, 32);
    }

LABEL_83:
    if (v252[0] & 1) == 0 && *&v252[8] && (v252[16])
    {
      (*(**&v252[8] + 40))();
    }

    if (*&v236[0] && (BYTE8(v236[0]) & 1) != 0)
    {
      (*(**&v236[0] + 40))();
    }

    if (v241)
    {
    }

    if (!v22)
    {
      v56 = v21;
      *a1 = 0;
      a1[1] = v56;

      return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v230);
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8 + 13, v21);
    re::RealityArchive::newDataByLoadingEntryWithName(&v238, v7, "assetMap.json");
    if ((v238 & 1) == 0)
    {
      v57 = keys[0];
      keys[0] = 0;

      v58 = 0;
      goto LABEL_256;
    }

    v53 = cf;
    {
      if (v52)
      {
        re::introspect<re::AssetMap>(BOOL)::info = re::internal::getOrCreateInfo("AssetMap", re::allocInfo_AssetMap, re::initInfo_AssetMap, &unk_1EE191FE8, 0);
      }
    }

    *(v6 + 96) = *(re::introspect<re::AssetMap>(BOOL)::info + 2);
    if (!v251[0])
    {
      v61 = *(v6 + 192);
      LOBYTE(v236[0]) = 0;
      *(v236 + 8) = v61;
      *(&v236[1] + 1) = keys[2];
      v237 = keys[3];
      CFRelease(cf);
LABEL_249:
      v57 = keys[0];
      keys[0] = 0;

      v58 = 0;
      goto LABEL_250;
    }

    re::IntrospectionSharedLock::IntrospectionSharedLock(v234);
    re::TypeRegistry::typeInfo(v251[0], v251, keys);
    v54 = re::TypeInfo::TypeInfo(v252, &keys[1]);
    v5 = LOBYTE(keys[0]);
    if (LOBYTE(keys[0]) == 1)
    {
      v55 = keys[1];
      v245 = keys[1];
      LOBYTE(v236[0]) = 1;
      *(&v236[0] + 1) = keys[1];
    }

    else
    {
      v62 = *(v6 + 216);
      v63 = *(&v256 + 1);
      v64 = v257;
      *(v6 + 40) = *&keys[1];
      *(v6 + 56) = v62;
      v249 = v63;
      v250 = v64;
      LOBYTE(values) = 0;
      re::DynamicString::DynamicString(keys, &v247);
      LOBYTE(v236[0]) = 0;
      v55 = keys[0];
      *(&v236[0] + 1) = keys[0];
      v237 = keys[3];
      v236[1] = *(v6 + 200);
      if (v247 && (v248 & 1) != 0)
      {
        (*(*v247 + 40))();
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(v234);
    CFRelease(cf);
    if ((v5 & 1) == 0)
    {
      goto LABEL_249;
    }

    v227 = v7;
    v223 = v21;
    v224 = a1;
    v248 = 0;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 68) = 0x7FFFFFFFLL;
    *v234 = 0;
    if (*(v55 + 25))
    {
      v5 = 0;
      v66 = 0x7FFFFFFFLL;
      while (1)
      {
        v67 = *(*(v55 + 27) + 8 * v5);
        v68 = (*(*v67 + 40))(v67);
        v69 = re::Hash<re::DynamicString>::operator()(v252, keys);
        v70 = v69;
        if (!v247)
        {
          break;
        }

        v7 = v69 % v247;
        v71 = v245[v7];
        if (v71 == 0x7FFFFFFF)
        {
          goto LABEL_121;
        }

        a1 = v246;
        while (!re::DynamicString::operator==(&a1[6 * v71 + 2], keys))
        {
          v71 = a1[6 * v71 + 1] & 0x7FFFFFFF;
          if (v71 == 0x7FFFFFFF)
          {
            goto LABEL_121;
          }
        }

LABEL_122:
        if (keys[0] && (keys[1] & 1) != 0)
        {
          (*(*keys[0] + 40))();
        }

        v6 = *(v55 + 25);
        if (v6 <= v5)
        {
LABEL_369:
          v251[0] = 0;
          v257 = 0u;
          v258 = 0u;
          v256 = 0u;
          memset(keys, 0, sizeof(keys));
          v206 = MEMORY[0x1E69E9C10];
          v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          *&v252[4] = "operator[]";
          *&v252[12] = 1024;
          if (v207)
          {
            v208 = 3;
          }

          else
          {
            v208 = 2;
          }

          *&v252[14] = 789;
          *&v252[18] = 2048;
          *&v252[20] = v5;
          v253 = 2048;
          *v254 = v6;
          _os_log_send_and_compose_impl(v208, v251, keys, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v219, v220);
          _os_crash_msg();
          __break(1u);
LABEL_373:
          v251[0] = 0;
          v257 = 0u;
          v258 = 0u;
          v256 = 0u;
          memset(keys, 0, sizeof(keys));
          v209 = MEMORY[0x1E69E9C10];
          v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v252 = 136315906;
          *&v252[4] = "operator[]";
          *&v252[12] = 1024;
          if (v210)
          {
            v211 = 3;
          }

          else
          {
            v211 = 2;
          }

          *&v252[14] = 789;
          *&v252[18] = 2048;
          *&v252[20] = v5;
          v253 = 2048;
          *v254 = v6;
          _os_log_send_and_compose_impl(v211, v251, keys, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v252, 38, v219, v220);
          _os_crash_msg();
          __break(1u);
LABEL_377:
          *v234 = 0;
          v8 = &v241;
          v257 = 0u;
          v258 = 0u;
          v256 = 0u;
          memset(keys, 0, sizeof(keys));
          v4 = MEMORY[0x1E69E9C10];
          v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v251[0]) = 136315906;
          *(v251 + 4) = "operator[]";
          WORD2(v251[1]) = 1024;
          if (v212)
          {
            v213 = 3;
          }

          else
          {
            v213 = 2;
          }

          *(&v251[1] + 6) = 468;
          WORD1(v251[2]) = 2048;
          *(&v251[2] + 4) = v5;
          WORD2(v251[3]) = 2048;
          *(&v251[3] + 6) = v66;
          _os_log_send_and_compose_impl(v213, v234, keys, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v251, 38, v219, v220);
          _os_crash_msg();
          __break(1u);
LABEL_381:
          re::internal::assertLog(6, v144, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v4);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v215, v217);
          __break(1u);
          goto LABEL_382;
        }

        v72 = *(*(v55 + 27) + 8 * v5);
        keys[0] = (*(*v72 + 40))(v72);
        re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 224), keys, v234);
        v6 = *(v55 + 25);
        if (v6 <= v5)
        {
          goto LABEL_373;
        }

        v73 = *(*(v55 + 27) + 8 * v5);
        keys[0] = (*(*v73 + 32))(v73);
        v65 = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 272), keys, v234);
        *v234 = ++v5;
        if (v5 >= *(v55 + 25))
        {
          goto LABEL_128;
        }
      }

      v7 = 0;
LABEL_121:
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(&values, v7, v70, keys, keys);
      LODWORD(v249) = v249 + 1;
      goto LABEL_122;
    }

LABEL_128:
    v74 = *(v55 + 5);
    v7 = v227;
    if (v74)
    {
      v75 = *(v55 + 7);
      v5 = &v75[25 * v74];
      do
      {
        v76 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, (v75 + 3));
        v77 = v75[22];
        if (v77)
        {
          v78 = 40 * v77;
          v6 = v75[24] + 8;
          do
          {
            v76 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, v6);
            v6 += 40;
            v78 -= 40;
          }

          while (v78);
        }

        v79 = re::globalAllocators(v76);
        v80 = (*(*v79[2] + 32))(v79[2], 200, 8);
        keys[0] = re::SceneDescriptor::SceneDescriptor(v80, v75);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((v55 + 184), keys);
        if (keys[0])
        {
        }

        v81 = *(*(v55 + 27) + 8 * *(v55 + 25) - 8);
        keys[0] = (*(*v81 + 40))(v81);
        *v252 = *(v55 + 25) - 1;
        re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 224), keys, v252);
        v82 = *(*(v55 + 27) + 8 * *(v55 + 25) - 8);
        keys[0] = (*(*v82 + 32))(v82);
        *v252 = *(v55 + 25) - 1;
        v65 = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 272), keys, v252);
        v75 += 25;
      }

      while (v75 != v5);
    }

    v83 = *(v55 + 10);
    if (v83)
    {
      break;
    }

LABEL_158:
    v96 = re::RealityArchive::entryNames(keys, v227);
    *&v254[2] = 0;
    memset(v252, 0, sizeof(v252));
    if (keys[2])
    {
      v5 = 32 * keys[2];
      v97 = (v256 + 16);
      v6 = 1702064993;
      v7 = 796095589;
      do
      {
        v98 = *(v97 - 1);
        v99 = v98 >> 1;
        if ((v98 & 1) == 0)
        {
          v99 = v98 >> 1;
        }

        if (v99 >= 7)
        {
          v100 = (v98 & 1) != 0 ? *v97 : (v97 - 7);
          v101 = *v100 == 1702064993 && *(v100 + 3) == 796095589;
          v102 = !v101;
          v103 = v99 - 7;
          if (v99 != 7 && !v102)
          {
            re::DynamicArray<re::DynamicString>::add(v252, v251);
            v96 = v251[0];
            if (v251[0])
            {
              if (v251[1])
              {
                v96 = (*(*v251[0] + 40))();
              }
            }
          }
        }

        v97 += 4;
        v5 -= 32;
      }

      while (v5);
    }

    v105 = re::DynamicArray<re::DynamicString>::deinit(keys);
    if (*&v252[16])
    {
      a1 = *&v254[2];
      v5 = 32 * *&v252[16];
      do
      {
        v105 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, a1);
        if ((v105 & 1) == 0)
        {
          keys[0] = a1;
          keys[1] = 1;
          v106 = re::globalAllocators(v105);
          v107 = (*(*v106[2] + 32))(v106[2], 112, 8);
          v251[0] = re::AssetDescriptor::AssetDescriptor(v107, keys, 0);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((v55 + 184), v251);
          if (v251[0])
          {
          }

          v108 = *(*(v55 + 27) + 8 * *(v55 + 25) - 8);
          keys[0] = (*(*v108 + 40))(v108);
          v251[0] = (*(v55 + 25) - 1);
          re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 224), keys, v251);
          v109 = *(*(v55 + 27) + 8 * *(v55 + 25) - 8);
          keys[0] = (*(*v109 + 32))(v109);
          v251[0] = (*(v55 + 25) - 1);
          re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 272), keys, v251);
          v105 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, a1);
        }

        a1 += 4;
        v5 -= 32;
      }

      while (v5);
    }

    v110 = *(v55 + 10);
    if (v110)
    {
      v111 = *(v55 + 12);
      v221 = &v111[21 * v110];
      while (1)
      {
        if (!v111[2])
        {
          goto LABEL_360;
        }

        *&v256 = 0;
        memset(keys, 0, 28);
        v112 = v111[7];
        if (v112)
        {
          v5 = v111[9];
          v113 = 8 * v112;
          while (1)
          {
            re::AssetMap::assetDescriptorFromAssetsIndex(v251, v55, *v5);
            if (LOBYTE(v251[0]) != 1)
            {
              break;
            }

            v115 = keys[2];
            if (keys[2] >= keys[1])
            {
              a1 = (keys[2] + 1);
              if (keys[1] < keys[2] + 1)
              {
                if (keys[0])
                {
                  v116 = 2 * keys[1];
                  if (!keys[1])
                  {
                    v116 = 8;
                  }

                  if (v116 <= a1)
                  {
                    v117 = keys[2] + 1;
                  }

                  else
                  {
                    v117 = v116;
                  }

                  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(keys, v117);
                }

                else
                {
                  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(keys, a1);
                  ++LODWORD(keys[3]);
                }
              }

              v115 = keys[2];
            }

            v118 = v251[1];
            *(v256 + 8 * v115) = v251[1];
            if (v118)
            {
              v119 = v118 + 8;
              v115 = keys[2];
            }

            keys[2] = v115 + 1;
            ++LODWORD(keys[3]);
            re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v251);
            v5 += 8;
            v113 -= 8;
            if (!v113)
            {
              goto LABEL_208;
            }
          }

          re::DynamicString::DynamicString(&v241, &v251[1]);
          v234[0] = 0;
          *&v234[8] = v241;
          v235 = v243;
          *&v234[16] = v242;
          re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v251);
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(keys);
LABEL_276:
          v21 = v223;
          a1 = v224;
LABEL_346:
          re::DynamicArray<re::DynamicString>::deinit(v252);
          goto LABEL_347;
        }

LABEL_208:
        v225 = v111;
        v120 = v111[2];
        if (v120)
        {
          break;
        }

LABEL_241:
        v105 = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(keys);
        v111 = v225 + 21;
        v6 = 8;
        if (v225 + 21 == v221)
        {
          goto LABEL_242;
        }
      }

      a1 = v111[4];
      v5 = &a1[4 * v120];
      v228 = v5;
      while (1)
      {
        v121 = re::Hash<re::DynamicString>::operator()(v251, a1);
        v122 = v121;
        if (*(v55 + 40))
        {
          v123 = v121 % *(v55 + 86);
          v124 = *(*(v55 + 41) + 4 * v123);
          if (v124 != 0x7FFFFFFF)
          {
            v7 = *(v55 + 42);
            while (!re::DynamicString::operator==(v7 + 88 * v124 + 8, a1))
            {
              v125 = *(v7 + 88 * v124);
              v124 = v125 & 0x7FFFFFFF;
              if ((v125 & 0x7FFFFFFF) == 0x7FFFFFFF)
              {
                goto LABEL_217;
              }
            }

            goto LABEL_240;
          }
        }

        else
        {
          LODWORD(v123) = 0;
        }

LABEL_217:
        v126 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v55 + 40, v123, v122);
        re::DynamicString::DynamicString((v126 + 8), a1);
        *(v126 + 40) = 0;
        v7 = v126 + 40;
        *(v126 + 72) = 0;
        *(v126 + 48) = 0;
        *(v126 + 56) = 0;
        *(v126 + 64) = 0;
        if (keys[0])
        {
          v127 = keys[2];
          *(v126 + 40) = keys[0];
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v126 + 40), v127);
          ++*(v126 + 64);
          v128 = keys[2];
          v129 = *(v126 + 56);
          if (keys[2] >= v129)
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v126 + 40), keys[2]);
            v135 = v256;
            v136 = *(v126 + 56);
            v7 = *(v126 + 72);
            if (v136)
            {
              v137 = 8 * v136;
              do
              {
                v138 = *v135++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v138);
                v7 += 8;
                v137 -= 8;
              }

              while (v137);
              v7 = *(v126 + 72);
              v136 = *(v126 + 56);
              v135 = v256;
            }

            if (v136 != v128)
            {
              v139 = &v135[v136];
              v7 += 8 * v136;
              v140 = 8 * v128 - 8 * v136;
              do
              {
                v141 = *v139;
                *v7 = *v139;
                if (v141)
                {
                  v142 = (v141 + 8);
                }

                ++v139;
                v7 += 8;
                v140 -= 8;
              }

              while (v140);
            }
          }

          else
          {
            v7 = *(v126 + 72);
            if (keys[2])
            {
              v130 = v256;
              v131 = 8 * keys[2];
              do
              {
                v132 = *v130++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v132);
                v7 += 8;
                v131 -= 8;
              }

              while (v131);
              v7 = *(v126 + 72);
              v129 = *(v126 + 56);
            }

            if (v128 != v129)
            {
              v133 = v7 + 8 * v128;
              v134 = 8 * v129 - 8 * v128;
              do
              {
                if (*v133)
                {

                  *v133 = 0;
                }

                v133 += 8;
                v134 -= 8;
              }

              while (v134);
            }
          }

          *(v126 + 56) = v128;
          v5 = v228;
        }

        ++*(v55 + 90);
LABEL_240:
        a1 += 4;
        if (a1 == v5)
        {
          goto LABEL_241;
        }
      }
    }

LABEL_242:
    v4 = *(v55 + 15);
    v222 = 3 * v4;
    if (v4)
    {
      if (v4 >= 0x555555555555556)
      {
        goto LABEL_381;
      }

      if (!v145)
      {
LABEL_382:
        re::internal::assertLog(4, v146, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        re::internal::assertLog(6, v214, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v4);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v216, v218);
        __break(1u);
        goto LABEL_383;
      }

      v7 = v145;
      v147 = v4 - 1;
      if (v4 == 1)
      {
        v149 = (v145 + 36);
        v148 = v145;
      }

      else
      {
        v148 = v145;
        do
        {
          *(v148 + 16) = 0uLL;
          *(v148 + 32) = 0uLL;
          *v148 = 0uLL;
          *(v148 + 36) = 0x7FFFFFFF;
          v148 += 48;
          --v147;
        }

        while (v147);
        v149 = (v148 + 36);
      }

      *(v148 + 16) = 0u;
      *(v148 + 32) = 0u;
      *v148 = 0u;
      v5 = 0x7FFFFFFFLL;
      *v149 = 0x7FFFFFFF;
      v157 = v145;
      a1 = v4;
      do
      {
        v256 = 0u;
        memset(keys, 0, sizeof(keys));
        DWORD1(v256) = 0x7FFFFFFF;
        if (v157 != keys)
        {
          if (*v157)
          {
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v157);
          }

          else
          {
            v158 = *(v157 + 8);
            *(v157 + 8) = 0;
            keys[1] = v158;
            v159 = *(v157 + 16);
            *(v157 + 16) = keys[2];
            keys[2] = v159;
            LODWORD(v159) = *(v157 + 24);
            *(v157 + 24) = keys[3];
            LODWORD(keys[3]) = v159;
            LODWORD(v159) = *(v157 + 28);
            *(v157 + 28) = HIDWORD(keys[3]);
            HIDWORD(keys[3]) = v159;
            LODWORD(v159) = *(v157 + 32);
            *(v157 + 32) = v256;
            LODWORD(v256) = v159;
            LODWORD(v159) = *(v157 + 36);
            *(v157 + 36) = DWORD1(v256);
            DWORD1(v256) = v159;
          }
        }

        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(keys);
        v157 += 48;
        a1 = (a1 - 1);
      }

      while (a1);
    }

    else
    {
      v7 = 0;
    }

    v160 = *(v55 + 21);
    v226 = v4;
    v229 = v7;
    if (v160)
    {
      v161 = *(v55 + 22);
      a1 = &v161[4 * v160];
      if (v4 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v4;
      }

      v162 = v4;
      while (!v162)
      {
LABEL_302:
        v161 += 4;
        if (v161 == a1)
        {
          goto LABEL_303;
        }
      }

      v163 = 0;
      v5 = 0;
      v164 = v7;
      while (1)
      {
        v165 = v161[2];
        if (v165 <= v5)
        {
          break;
        }

        v143 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v164, (v161[3] + v163));
        ++v5;
        v163 += 32;
        v164 += 48;
        if (v6 == v5)
        {
          v4 = v226;
          v7 = v229;
          v162 = v226;
          goto LABEL_302;
        }
      }

      *v234 = 0;
      v257 = 0u;
      v258 = 0u;
      v256 = 0u;
      memset(keys, 0, sizeof(keys));
      v197 = MEMORY[0x1E69E9C10];
      v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v251[0]) = 136315906;
      *(v251 + 4) = "operator[]";
      WORD2(v251[1]) = 1024;
      if (v198)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      *(&v251[1] + 6) = 476;
      WORD1(v251[2]) = 2048;
      *(&v251[2] + 4) = v5;
      WORD2(v251[3]) = 2048;
      *(&v251[3] + 6) = v165;
      _os_log_send_and_compose_impl(v199, v234, keys, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v251, 38, v219, v220);
      v105 = _os_crash_msg();
      __break(1u);
LABEL_360:
      v234[0] = 0;
      *&v234[8] = *keys;
      *&v234[24] = keys[2];
      v235 = keys[3];
      goto LABEL_276;
    }

LABEL_303:
    *(v55 + 53) = v4;
    if (!v4)
    {
LABEL_328:
      v176 = *(v55 + 21);
      if (v176)
      {
        v177 = *(v55 + 22);
        v178 = (v177 + 32 * v176);
        v179 = (v177 + 8);
        v180 = 0xBF58476D1CE4E5B9;
        v181 = 0x94D049BB133111EBLL;
        while (1)
        {
          v182 = v179 - 1;
          re::AssetMap::assetDescriptorFromAssetsIndex(keys, v55, *(v179 - 1));
          if (LOBYTE(keys[0]) != 1)
          {
            break;
          }

          v251[0] = keys[1];
          if (keys[1])
          {
            v183 = keys[1] + 8;
          }

          re::FixedArray<re::DynamicString>::FixedArray(&v251[1], v179);
          v184 = v179[1];
          *v234 = v179[2];
          *&v234[8] = v184;
          v241 = re::Hash<re::Slice<re::DynamicString>>::operator()(&valuePtr, v234);
          memset(v234, 0, 24);
          v185 = (((v241 ^ (v241 >> 30)) * v180) ^ (((v241 ^ (v241 >> 30)) * v180) >> 27)) * v181;
          re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>((v55 + 368), &v241, v185 ^ (v185 >> 31), v234);
          if (*&v234[12] == 0x7FFFFFFF)
          {
            v186 = v181;
            v187 = v180;
            v188 = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v55 + 46, *&v234[8], *v234);
            v189 = v251[0];
            v188[1] = v241;
            v188[2] = v189;
            if (v189)
            {
              v190 = v189 + 8;
            }

            re::FixedArray<re::DynamicString>::FixedArray((v188 + 3), &v251[1]);
            ++*(v55 + 102);
            v180 = v187;
            v181 = v186;
          }

          re::FixedArray<re::DynamicString>::deinit(&v251[1]);
          if (v251[0])
          {
          }

          re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
          v179 += 4;
          if (v182 + 4 == v178)
          {
            goto LABEL_340;
          }
        }

        re::DynamicString::DynamicString(v251, &keys[1]);
        v234[0] = 0;
        *&v234[8] = v251[0];
        v235 = v251[3];
        *&v234[16] = *&v251[1];
        re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(keys);
      }

      else
      {
LABEL_340:
        v234[0] = 1;
      }

      v21 = v223;
      a1 = v224;
      if (v4)
      {
        v191 = 16 * v222;
        v192 = v229;
        do
        {
          v193 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v192);
          v192 += 6;
          v191 -= 48;
        }

        while (v191);
      }

      goto LABEL_346;
    }

    *(v55 + 54) = v166;
    if (v166)
    {
      v6 = v166;
      if (v4 != 1)
      {
        v168 = 8 * v222 - 24;
        bzero(v166, v168);
        v6 += v168;
      }

      v5 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      while (1)
      {
        v66 = *(v55 + 53);
        if (v66 <= v5)
        {
          goto LABEL_377;
        }

        v169 = (*(v55 + 54) + 24 * v5);
        a1 = (v7 + 48 * v5);
        v170 = *(a1 + 7);
        v6 = *(a1 + 8);
        if (v6)
        {
          v7 = 0;
          v171 = (a1[2] + 8);
          while (1)
          {
            v172 = *v171;
            v171 += 12;
            if (v172 < 0)
            {
              break;
            }

            if (v6 == ++v7)
            {
              v7 = *(a1 + 8);
              break;
            }
          }
        }

        else
        {
          v7 = 0;
        }

        if (v7 != v6)
        {
          v66 = 0;
          while (1)
          {
            v173 = *(v55 + 53);
            if (v173 <= v5)
            {
              break;
            }

            v174 = *(v55 + 54) + 24 * v5;
            v173 = *(v174 + 8);
            if (v173 <= v66)
            {
              goto LABEL_365;
            }

            v166 = re::DynamicString::operator=((*(v174 + 16) + 32 * v66), (a1[2] + 48 * v7 + 16));
            LODWORD(v175) = *(a1 + 8);
            if (v175 <= v7 + 1)
            {
              v175 = (v7 + 1);
            }

            else
            {
              v175 = v175;
            }

            while (v175 - 1 != v7)
            {
              v7 = (v7 + 1);
              if ((*(a1[2] + 48 * v7 + 8) & 0x80000000) != 0)
              {
                goto LABEL_326;
              }
            }

            v7 = v175;
LABEL_326:
            ++v66;
            if (v7 == v6)
            {
              goto LABEL_327;
            }
          }

          *v234 = 0;
          v66 = &v241;
          v257 = 0u;
          v258 = 0u;
          v256 = 0u;
          memset(keys, 0, sizeof(keys));
          v200 = MEMORY[0x1E69E9C10];
          v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v251[0]) = 136315906;
          *(v251 + 4) = "operator[]";
          WORD2(v251[1]) = 1024;
          if (v201)
          {
            v202 = 3;
          }

          else
          {
            v202 = 2;
          }

          *(&v251[1] + 6) = 468;
          WORD1(v251[2]) = 2048;
          *(&v251[2] + 4) = v5;
          WORD2(v251[3]) = 2048;
          *(&v251[3] + 6) = v173;
          _os_log_send_and_compose_impl(v202, v234, keys, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v251, 38, v219, v220);
          _os_crash_msg();
          __break(1u);
LABEL_365:
          *v234 = 0;
          v5 = &v241;
          v257 = 0u;
          v258 = 0u;
          v256 = 0u;
          memset(keys, 0, sizeof(keys));
          v203 = MEMORY[0x1E69E9C10];
          v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v251[0]) = 136315906;
          *(v251 + 4) = "operator[]";
          WORD2(v251[1]) = 1024;
          if (v204)
          {
            v205 = 3;
          }

          else
          {
            v205 = 2;
          }

          *(&v251[1] + 6) = 468;
          WORD1(v251[2]) = 2048;
          *(&v251[2] + 4) = v66;
          WORD2(v251[3]) = 2048;
          *(&v251[3] + 6) = v173;
          _os_log_send_and_compose_impl(v205, v234, keys, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v251, 38, v219, v220);
          _os_crash_msg();
          __break(1u);
          goto LABEL_369;
        }

LABEL_327:
        ++v5;
        v4 = v226;
        v7 = v229;
        if (v5 == v226)
        {
          goto LABEL_328;
        }
      }
    }

LABEL_383:
    re::internal::assertLog(4, v167, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_384:
    if (!v10)
    {
      re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) The RealityFile does not have a valid file URL or file pointer.", "!Unreachable code", "parseArchive", 438);
      _os_crash("assertion failure: (!Unreachable code) The RealityFile does not have a valid file URL or file pointer.");
      __break(1u);
    }

    v219 = "parseArchive";
    v220 = 475;
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code");
    _os_crash("assertion failure: (!Unreachable code) ");
    __break(1u);
LABEL_387:
    if (v17)
    {
      *(v4 + 1688) = re::internal::getOrCreateInfo("RealityFileHeader", re::allocInfo_RealityFileHeader, re::initInfo_RealityFileHeader, &unk_1EE192028, 0);
    }
  }

  v5 = *(v55 + 12);
  v84 = v5 + 168 * v83;
  while (1)
  {
    if (!*(v5 + 16))
    {
      v234[0] = 0;
      *&v234[8] = *keys;
      *&v234[24] = keys[2];
      v235 = keys[3];
      v21 = v223;
      a1 = v224;
      goto LABEL_347;
    }

    v65 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, *(v5 + 32));
    if ((v65 & 1) == 0)
    {
      if (*(v5 + 80) == 1)
      {
        if (*(v5 + 96))
        {
          v85 = *(v5 + 104);
        }

        else
        {
          v85 = (v5 + 97);
        }
      }

      else
      {
        v85 = 0;
      }

      a1 = v224;
      v86 = re::globalAllocators(v65);
      v87 = (*(*v86[2] + 32))(v86[2], 112, 8);
      v88 = *(v5 + 16);
      keys[0] = *(v5 + 32);
      keys[1] = v88;
      keys[0] = re::AssetDescriptor::AssetDescriptor(v87, keys, v85);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((v55 + 184), keys);
      if (keys[0])
      {
      }

      v89 = *(v55 + 25);
      *v252 = v89 - 1;
      v90 = *(*(v55 + 27) + 8 * v89 - 8);
      keys[0] = (*(*v90 + 32))(v90);
      re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 272), keys, v252);
      v91 = *(v5 + 32);
      v92 = (*(v91 + 8) & 1) != 0 ? *(v91 + 16) : (v91 + 9);
      keys[0] = v92;
      re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 224), keys, v252);
      v65 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, *(v5 + 32));
      if (*(v5 + 16) != 1)
      {
        break;
      }
    }

LABEL_157:
    v5 += 168;
    if (v5 == v84)
    {
      goto LABEL_158;
    }
  }

  v93 = *(v5 + 32) + 32;
  while (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&values, v93))
  {
    if (*(v93 + 8))
    {
      v95 = *(v93 + 16);
    }

    else
    {
      v95 = (v93 + 9);
    }

    keys[0] = v95;
    re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add((v55 + 224), keys, v252);
    v65 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&values, v93);
    v93 += 32;
    if (v93 == *(v5 + 32) + 32 * *(v5 + 16))
    {
      goto LABEL_157;
    }
  }

  if (*(v93 + 8))
  {
    v154 = *(v93 + 16);
  }

  else
  {
    v154 = v93 + 9;
  }

  re::DynamicString::format(keys, "FileName '%s' is used by more than one asset in the assetMap.", v94, v154);
  v234[0] = 0;
  *&v234[8] = *keys;
  *&v234[24] = keys[2];
  v235 = keys[3];
  v21 = v223;
LABEL_347:
  v194.n128_f64[0] = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&values);
  v58 = v234[0];
  if (v234[0])
  {
    v57 = *(&v236[0] + 1);
    if (*(&v236[0] + 1))
    {
      v195 = (*(&v236[0] + 1) + 8);
    }
  }

  else
  {
    v57 = keys[0];
    keys[0] = 0;
  }

  if (v234[0] & 1) == 0 && *&v234[8] && (v234[16])
  {
    (*(**&v234[8] + 40))(v194);
  }

LABEL_250:
  if (LOBYTE(v236[0]) == 1)
  {
    if (*(&v236[0] + 1))
    {
    }
  }

  else if (*(&v236[0] + 1) && (v236[1] & 1) != 0)
  {
    (*(**(&v236[0] + 1) + 40))();
  }

LABEL_256:
  if (v238 & 1) == 0 && cf && (v240)
  {
    (*(*cf + 40))();
  }

  if (v58)
  {
    v150 = v8[14];
    if (v150 != v57)
    {
      if (v57)
      {
        v151 = v57 + 8;
        v150 = v8[14];
      }

      if (v150)
      {
      }

      v8[14] = v57;
    }

    *a1 = 1;
    if (v57)
    {
    }
  }

  else
  {
    v152 = v57;
    *a1 = 0;
    a1[1] = v152;
  }

  if (v21)
  {
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v230);
}