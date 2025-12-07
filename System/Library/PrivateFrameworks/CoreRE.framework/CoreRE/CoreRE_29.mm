void re::NetworkAssetManager::willAddScene(re::NetworkAssetManager *this, re::ecs2::Scene *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(this + 192) & 1) == 0 && !*(this + 22))
  {
    v4 = (*(**(this + 1) + 304))(*(this + 1), *(a2 + 47));
    if (*(v4 + 8) != 2)
    {
      v7 = *(this + 3);
      v6 = (this + 24);
      v5 = v7;
      v6[19] = a2;
      if (!v7)
      {
        goto LABEL_7;
      }

      do
      {
        v8 = v5;
        v5 = *(v5 + 32);
      }

      while (v5);
      if (!*(v8 + 24))
      {
        v11 = *re::assetsLogObjects(v4);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a2 + 5);
          v13 = 136315138;
          v14 = v12;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Adding asset root entity to scene '%s'", &v13, 0xCu);
        }

        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(a2 + 13) + 320), v6);
      }

      else
      {
LABEL_7:
        v9 = *re::assetsLogObjects(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a2 + 5);
          v13 = 136315138;
          v14 = v10;
          _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Asset root entity will be attached to scene '%s'", &v13, 0xCu);
        }
      }
    }
  }
}

void re::NetworkAssetManager::willRemoveScene(re::NetworkAssetManager *this, re::ecs2::Scene *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 192) & 1) == 0 && *(this + 22) == a2)
  {
    v4 = *(this + 3);
    if (v4)
    {
      v5 = *(this + 3);
      do
      {
        v6 = v5;
        v5 = *(v5 + 32);
      }

      while (v5);
      if (*(v6 + 24))
      {
        re::ecs2::Entity::removeFromSceneOrParent(v4);
      }
    }

    *(this + 22) = 0;
    v7 = (*(**(this + 1) + 288))(*(this + 1)) + 120;
    v8 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v7, 0);
    v10 = *&buf[0];
    v34 = *&buf[0];
    v35 = DWORD2(buf[0]);
    v11 = WORD4(buf[0]);
    v12 = WORD5(buf[0]);
    if (v7 != *&buf[0] || WORD4(buf[0]) != 0xFFFF || WORD5(buf[0]) != 0xFFFF)
    {
      *&v9 = 136315394;
      v33 = v9;
      do
      {
        v15 = v12;
        v16 = *(v10 + 16);
        if (v16 <= v12)
        {
          v36 = 0;
          memset(buf, 0, sizeof(buf));
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v37 = 136315906;
          v38 = "operator[]";
          v39 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v40 = 797;
          v41 = 2048;
          v42 = v15;
          v43 = 2048;
          v44 = v16;
          _os_log_send_and_compose_impl(v32, &v36, buf, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v33, *(&v33 + 1));
          _os_crash_msg();
          __break(1u);
        }

        v17 = *(*(v10 + 32) + 16 * v12) + 240 * v11;
        if (*(v17 + 8) != 2)
        {
          v18 = *(v17 + 200);
          if (v18)
          {
            v19 = *(v17 + 216);
            v20 = &v19[v18];
            do
            {
              if (*v19 != a2)
              {
                *(this + 22) = *v19;
                v21 = *(this + 3);
                if (v21)
                {
                  do
                  {
                    v22 = v21;
                    v21 = *(v21 + 32);
                  }

                  while (v21);
                  if (!*(v22 + 24))
                  {
                    v23 = *re::assetsLogObjects(v8);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = *(a2 + 5);
                      v25 = *(*(this + 22) + 40);
                      LODWORD(buf[0]) = v33;
                      *(buf + 4) = v24;
                      WORD6(buf[0]) = 2080;
                      *(buf + 14) = v25;
                      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Moving asset root entity from scene '%s' to '%s'", buf, 0x16u);
                    }

                    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(*(this + 22) + 104) + 320), this + 3);
                  }
                }
              }

              ++v19;
            }

            while (v19 != v20);
          }
        }

        v8 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v34);
        v10 = v34;
        v11 = v35;
        v12 = HIWORD(v35);
      }

      while (v34 != v7 || v35 != 0xFFFF || HIWORD(v35) != 0xFFFF);
    }

    if (!*(this + 22))
    {
      v28 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a2 + 5);
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v29;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Detached asset root entity from removed scene '%s'", buf, 0xCu);
      }
    }
  }
}

uint64_t re::NetworkAssetManager::unshareAsset(re::NetworkAssetManager *this, unint64_t a2)
{
  result = (*(*this + 112))(this);
  if (result)
  {
    result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a2);
    if (result)
    {
      result = re::ecs2::EntityHandle::resolve(result, *(this + 1));
      if (result)
      {
        v5 = *(result + 32);
        if (v5 && (*(v5 + 304) & 0x80) != 0)
        {
          v5 = 0;
        }

        if (*(this + 3) == v5)
        {
          re::ecs2::Entity::removeFromSceneOrParent(result);
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 32, a2);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
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
      re::ecs2::EntityHandle::reset((v6 + 4));
      objc_destroyWeak(v6 + 2);
      *(v6 + 2) = 0;
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

void re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::create(ArcSharedObject **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 56, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CB7EC8;
  *a1 = v3;
}

uint64_t re::NetworkAssetManager::updateAssetState(const re::ecs2::Entity *a1, unint64_t a2, char a3)
{
  if (*(a1 + 216) != 1)
  {
    return 0;
  }

  v42 = v3;
  v43 = v4;
  result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a2);
  if (result)
  {
    result = re::ecs2::EntityHandle::resolve(result, *(a1 + 1));
    if (result)
    {
      v9 = result;
      v10 = *(result + 344);
      if (v10)
      {
        v11 = *(result + 360);
        v12 = 8 * v10;
        while (1)
        {
          v13 = *v11;
          if (*v11)
          {
            v14 = v13 + 1;
          }

          v15 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v15)
          {
            v16 = v15;
            v17 = *(v15 + 40);
            if (v17 == (*(*a1 + 104))(a1))
            {
              break;
            }
          }

          if (v13)
          {
          }

          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        *(v16 + 48) = a3;
        v20 = v13[27];
        if (v20)
        {
          re::ecs2::NetworkComponent::markDirty(v20, v16);
        }
      }

      else
      {
LABEL_13:
        v18 = (*(*a1 + 104))(a1);
        re::NetworkAssetManager::ownerPeerID(v40, a1, v9);
        if (v40[0] != 1)
        {
          return 0;
        }

        v19 = v41;
        if (v41 == v18)
        {
          return 0;
        }

        v21 = re::ecs2::EntityChildCollection::add((v9 + 320));
        v23 = re::DynamicString::format(&v37, "AssetState for Asset:%llu, Peer:%llu", v22, a2, v18);
        if (v38)
        {
          v24 = *&v39[7];
        }

        else
        {
          v24 = v39;
        }

        v33 = 0;
        v34 = &str_67;
        v25 = re::StringID::operator=(v21 + 36, &v33);
        if (v33)
        {
          if (v33)
          {
          }
        }

        re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::create(&v36);
        v26 = v36;
        *(v36 + 4) = a2;
        *(v26 + 5) = v18;
        v35 = v26;
        v27 = v26 + 8;
        re::ecs2::EntityComponentCollection::add(v21 + 48, &v35, 1);
        if (v35)
        {

          v35 = 0;
        }

        v28 = re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::NetworkComponent::setNetworkShareMode(v28, 0, v29, v30);
        v33 = 0x300000001;
        re::ecs2::SyncAccessControl::addEntry(&v33, v19, 0);
        re::ecs2::NetworkComponent::setAccessControl(v28, &v33);
        v31 = v36;
        *(v36 + 48) = a3;
        v32 = *(v21 + 27);
        if (v32)
        {
          re::ecs2::NetworkComponent::markDirty(v32, v31);
        }

        re::ecs2::SyncAccessControl::~SyncAccessControl(&v33);
        if (v36)
        {
        }

        if (v37)
        {
          if (v38)
          {
            (*(*v37 + 40))();
          }
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL re::NetworkAssetManager::clearAssetDescriptors(re::NetworkAssetManager *this, unint64_t a2)
{
  v3 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a2);
  v4 = v3;
  if (v3)
  {
    v5 = re::ecs2::EntityHandle::resolve(v3, *(this + 1));
    v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::DynamicArray<re::AssetLoadDescriptor>::clear(v6 + 72);
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = *(v7 + 216);
      if (v8)
      {
        re::ecs2::NetworkComponent::markDirty(v8, v6);
      }
    }
  }

  return v4 != 0;
}

void re::DynamicArray<re::AssetLoadDescriptor>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 144 * v2;
    do
    {
      re::DynamicString::deinit((v3 + 112));
      re::DynamicArray<unsigned long>::deinit(v3 + 72);
      re::DynamicArray<unsigned long>::deinit(v3 + 32);
      re::DynamicString::deinit(v3);
      v3 += 144;
      v4 -= 144;
    }

    while (v4);
  }

  ++*(result + 24);
}

BOOL re::NetworkAssetManager::setAssetDependencies(re::NetworkAssetManager *a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = re::NetworkAssetManager::netComponent(a1, a2);
  v6 = v5;
  if (v5)
  {
    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v5 + 14), a3);
    v7 = v6[2];
    if (v7)
    {
      v8 = *(v7 + 27);
      if (v8)
      {
        re::ecs2::NetworkComponent::markDirty(v8, v6);
      }
    }
  }

  else
  {
    v9 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to set dependencies on asset %llu because NetworkAssetManager does not have an asset entity for that id.", &v11, 0xCu);
    }
  }

  return v6 != 0;
}

re::DynamicString *re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
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

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::NetworkAssetManager::updateSharedMetadataAndMemoryAttributionID(re::NetworkAssetManager *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 120))(v22);
  if (LOBYTE(v22[0]) != 1)
  {
    return;
  }

  v8 = v22[1];
  if (v8 != (*(*a1 + 104))(a1))
  {
    return;
  }

  v9 = re::NetworkAssetManager::netComponent(a1, a2);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear((v9 + 21));
  v10 = *(a3 + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(a3 + 16);
    while (1)
    {
      v13 = *v12;
      v12 += 16;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14 = *(a3 + 16);
    v15 = *(a3 + 32);
    do
    {
      v16 = v14 + (v11 << 6);
      v18 = *(v16 + 24);
      v17 = v16 + 24;
      if (v18 == 1)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v9 + 21), (v14 + (v11 << 6) + 8), (v17 + 8));
        v15 = *(a3 + 32);
        v14 = *(a3 + 16);
      }

      if (v15 <= v11 + 1)
      {
        v19 = v11 + 1;
      }

      else
      {
        v19 = v15;
      }

      while (v19 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v14 + (v11 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v11) = v19;
LABEL_21:
      ;
    }

    while (v11 != v10);
  }

  if (v9[27])
  {
    if ((*a4 & 1) == 0)
    {
      *(v9 + 216) = 0;
      goto LABEL_28;
    }
  }

  else
  {
    if ((*a4 & 1) == 0)
    {
      goto LABEL_28;
    }

    *(v9 + 216) = 1;
  }

  v9[28] = *(a4 + 8);
LABEL_28:
  v20 = v9[2];
  if (v20)
  {
    v21 = *(v20 + 27);
    if (v21)
    {
      re::ecs2::NetworkComponent::markDirty(v21, v9);
    }
  }
}

void re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 56;
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

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, const re::DynamicString *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicString const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 56 * HIDWORD(v9) + 24;
  }
}

id *re::NetworkAssetManager::getSharedMetadataString@<X0>(re::NetworkAssetManager *this@<X0>, const re::StringID *a2@<X2>, unint64_t a3@<X1>, _BYTE *a4@<X8>)
{
  result = re::NetworkAssetManager::netComponent(this, a3);
  if (result && (v7 = result, v8 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1)), result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((result + 21), a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), &v10), v11 != 0x7FFFFFFF))
  {
    v9 = v7[23] + 56 * v11;
    *a4 = 1;
    return re::DynamicString::DynamicString((a4 + 8), (v9 + 24));
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

id *re::NetworkAssetManager::tryGetSharedMetadata(re::NetworkAssetManager *this, unint64_t a2)
{
  v2 = re::NetworkAssetManager::netComponent(this, a2);
  if (v2)
  {
    return v2 + 21;
  }

  else
  {
    return 0;
  }
}

id *re::NetworkAssetManager::copySharedMetadata(re::NetworkAssetManager *a1, unint64_t a2, re::DynamicString *a3)
{
  result = re::NetworkAssetManager::netComponent(a1, a2);
  if (result)
  {

    return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(a3, (result + 21));
  }

  return result;
}

re::DynamicString *re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
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

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::NetworkAssetManager::copySharedMetadata(re::NetworkAssetManager *this, unint64_t a2, __CFDictionary **a3)
{
  v4 = re::NetworkAssetManager::netComponent(this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 50);
    if (v6)
    {
      v7 = 0;
      v8 = v4[23];
      while (1)
      {
        v9 = *v8;
        v8 += 14;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v4 + 50);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    while (v7 != v6)
    {
      v10 = v5[23] + 56 * v7;
      v11 = CFStringCreateWithCString(0, *(v10 + 16), 0x8000100u);
      if (*(v10 + 32))
      {
        v12 = *(v10 + 40);
      }

      else
      {
        v12 = (v10 + 33);
      }

      v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
      CFDictionaryAddValue(*a3, v11, v13);
      CFRelease(v11);
      CFRelease(v13);
      v14 = *(v5 + 50);
      if (v14 <= v7 + 1)
      {
        v14 = v7 + 1;
      }

      while (v14 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v5[23] + 14 * v7) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v7) = v14;
LABEL_18:
      ;
    }
  }
}

uint64_t re::NetworkAssetManager::onAdd(uint64_t a1, unint64_t a2, uint64_t a3, const re::ecs2::Entity *a4)
{
  v4 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 32);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (!*(a1 + 32) || (v11 = *(*(a1 + 40) + 4 * (v10 % *(a1 + 56))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    re::ecs2::EntityHandle::EntityHandle(location, a4);
    buf = 0uLL;
    v39 = 0;
    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, v8, a2, v10);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v13 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v8, DWORD2(buf), buf);
      *(v13 + 8) = a2;
      re::ecs2::EntityHandle::EntityHandle(v13 + 16, location);
      ++*(a1 + 72);
    }

    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
    v14 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 80, a2);
    if (v14)
    {
      (*(**(v14 + 32) + 16))(*(v14 + 32));
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 80, a2);
    }

    v15 = (*(**(a1 + 8) + 32))(*(a1 + 8));
    v16 = re::ServiceLocator::serviceOrNull<re::EventBus>(v15);
    if (!v16)
    {
      return 1;
    }

    v17 = v16;
    v31 = a2;
    v36 = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    v35 = 0;
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v33, *(a3 + 16));
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *(a3 + 32);
      v23 = 144 * v19;
      while (1)
      {
        re::DynamicString::DynamicString(&buf, v22);
        re::DynamicArray<BOOL>::DynamicArray(v40, v22 + 4);
        re::DynamicArray<BOOL>::DynamicArray(v43, v22 + 9);
        re::DynamicString::DynamicString(v46, (v22 + 14));
        re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor&>(&buf, &v32);
        *&location[0] = v32;
        if ((atomic_load_explicit(&qword_1EE191828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191828))
        {
          _MergedGlobals_30 = re::EventBus::typeStringToId(("41RENetworkNewAssetLoadDescriptorAddedEvent" & 0x7FFFFFFFFFFFFFFFLL), v25);
          __cxa_guard_release(&qword_1EE191828);
        }

        re::EventBus::publish(v17, v4, _MergedGlobals_30, location, 8uLL, 0);
        v24 = v34;
        if (v34 <= v21)
        {
          break;
        }

        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v36 + v20), v32);
        if (v32)
        {
        }

        if (v46[0])
        {
          if (v46[1])
          {
            (*(*v46[0] + 40))();
          }

          memset(v46, 0, sizeof(v46));
        }

        if (v43[0])
        {
          if (v45)
          {
            (*(*v43[0] + 40))();
          }

          v45 = 0;
          memset(v43, 0, sizeof(v43));
          ++v44;
        }

        if (v40[0])
        {
          if (v42)
          {
            (*(*v40[0] + 40))();
          }

          v42 = 0;
          memset(v40, 0, sizeof(v40));
          ++v41;
        }

        v18 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v18 = (*(*buf + 40))();
        }

        v22 += 18;
        v20 += 8;
        ++v21;
        v23 -= 144;
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      v37 = 0;
      v17 = &v47;
      memset(location, 0, sizeof(location));
      v4 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v50 = 789;
      v51 = 2048;
      v52 = v21;
      v53 = 2048;
      v54 = v24;
      _os_log_send_and_compose_impl(v30, &v37, location, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_36:
      if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken == -1)
      {
LABEL_37:
        if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog)
        {
          v26 = *re::assetsLogObjects(v18);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v31;
            _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "AssetId %llu added over network", &buf, 0xCu);
          }
        }

        *&buf = v31;
        *(&buf + 1) = v36;
        v39 = v34;
        Type = re::EventBus::getTypeId<RENetworkAssetAddedEvent>();
        re::EventBus::publish(v17, v4, Type, &buf, 0x18uLL, 0);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v33);
        return 1;
      }
    }

    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
    goto LABEL_37;
  }

  v12 = *(a1 + 48);
  while (*(v12 + 48 * v11 + 8) != a2)
  {
    v11 = *(v12 + 48 * v11) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

unint64_t re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 6) + 16;
  }
}

uint64_t (***re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2))(void)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    result = (v6 + (v12 << 6));
    v7 = *result & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v6 + (v13 << 6)) = *(v6 + (v13 << 6)) & 0x80000000 | v7;
    }

    v8 = *result;
    if ((*result & 0x80000000) != 0)
    {
      *result = v8 & 0x7FFFFFFF;
      result = re::FunctionBase<24ul,void ()(void)>::destroyCallable((result + 2));
      v6 = *(a1 + 16);
      v8 = *(v6 + (v5 << 6));
    }

    v9 = *(a1 + 40);
    *(v6 + (v5 << 6)) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

void re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v5 = a2;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8 * v5);
      if (v7)
      {

        *(v6 + 8 * v5) = 0;
        v4 = *(a1 + 16);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

BOOL re::NetworkAssetManager::isAssetIdLocal(re::NetworkAssetManager *this)
{
  (*(*this + 120))(v4);
  if (LOBYTE(v4[0]) != 1)
  {
    return 1;
  }

  v2 = (*(*this + 104))(this);
  return v2 == v4[1];
}

uint64_t re::NetworkAssetManager::onRemove(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v47 = *MEMORY[0x1E69E9840];
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 32, a2);
  v6 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 128, v4);
  if (v6)
  {
    (*(**(v6 + 32) + 16))(*(v6 + 32));
    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 128, v4);
  }

  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v8 = re::ServiceLocator::serviceOrNull<re::EventBus>(v7);
  if (v8)
  {
    v9 = v8;
    v27 = 0;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    v26 = 0;
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v24, *(a3 + 16));
    v11 = *(a3 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = *(a3 + 32);
      v15 = 144 * v11;
      while (1)
      {
        re::DynamicString::DynamicString(&buf, v14);
        re::DynamicArray<BOOL>::DynamicArray(v31, v14 + 4);
        re::DynamicArray<BOOL>::DynamicArray(v34, v14 + 9);
        re::DynamicString::DynamicString(v37, (v14 + 14));
        re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor&>(&buf, &v23);
        v16 = v25;
        if (v25 <= v13)
        {
          break;
        }

        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v27 + v12), v23);
        if (v23)
        {
        }

        if (v37[0])
        {
          if (v37[1])
          {
            (*(*v37[0] + 40))();
          }

          memset(v37, 0, sizeof(v37));
        }

        if (v34[0])
        {
          if (v36)
          {
            (*(*v34[0] + 40))();
          }

          v36 = 0;
          memset(v34, 0, sizeof(v34));
          ++v35;
        }

        if (v31[0])
        {
          if (v33)
          {
            (*(*v31[0] + 40))();
          }

          v33 = 0;
          memset(v31, 0, sizeof(v31));
          ++v32;
        }

        v10 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v10 = (*(*buf + 40))();
        }

        v14 += 18;
        v12 += 8;
        ++v13;
        v15 -= 144;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      v28 = 0;
      memset(v46, 0, 80);
      v4 = MEMORY[0x1E69E9C10];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      if (v20)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v41 = 789;
      v42 = 2048;
      v43 = v13;
      v44 = 2048;
      v45 = v16;
      _os_log_send_and_compose_impl(v21, &v28, v46, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v22, v23);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_25:
      if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken == -1)
      {
        goto LABEL_26;
      }
    }

    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
LABEL_26:
    if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog)
    {
      v17 = *re::assetsLogObjects(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "AssetId %llu removed over network", &buf, 0xCu);
      }
    }

    *&buf = v4;
    *(&buf + 1) = v27;
    v30 = v25;
    Type = re::EventBus::getTypeId<RENetworkAssetRemovedEvent>();
    re::EventBus::publish(v9, 0, Type, &buf, 0x18uLL, 0);
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v24);
  }

  return 1;
}

uint64_t re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8[1] = *a2;
    v8[5] = *(a3 + 24);
    v8[6] = 0;
    result = re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((v8 + 2), a3);
    ++*(a1 + 40);
  }

  return result;
}

id *re::NetworkAssetManager::updateAssetMetadataAndMemoryAttributionID(re::NetworkAssetManager *this, unint64_t a2)
{
  result = re::NetworkAssetManager::netComponent(this, a2);
  if (result)
  {
    v4 = result;
    v5 = (*(**(this + 1) + 32))(*(this + 1));
    v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(v5);
    v7 = v4[4];
    (*(*this + 120))(v8, this, v7);
    return (*(*v6 + 376))(v6, v7, v8, v4 + 21, v4 + 27);
  }

  return result;
}

void re::NetworkAssetManager::hackSetAssetRootEntity(re::NetworkAssetManager *this, re::ecs2::Entity *a2)
{
  if (*(*(this + 3) + 344))
  {
    v4 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "hackSetAssetRootEntity called when a m_localAssetRootEntity already exists. This may result in previously loaded assets not syncing over the network. Please call hackSetAssetRootEntity before any assets are loaded.", v8, 2u);
    }
  }

  if (a2)
  {
    if (!*(a2 + 27))
    {
      re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::StringID::StringID(v8, (this + 200));
    v5 = re::StringID::operator=(a2 + 36, v8);
    if (v8[0])
    {
      if (v8[0])
      {
      }
    }

    v6 = a2 + 8;
  }

  v7 = *(this + 3);
  *(this + 3) = a2;
  if (v7)
  {
  }
}

void re::NetworkAssetManager::getAssetState(re::NetworkAssetManager *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a3);
  if (v7 && (v8 = re::ecs2::EntityHandle::resolve(v7, *(this + 1))) != 0 && (v9 = *(v8 + 43)) != 0)
  {
    v10 = *(v8 + 45);
    v11 = 8 * v9;
    while (1)
    {
      v12 = *v10;
      if (*v10)
      {
        v13 = (v12 + 8);
      }

      v14 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v14)
      {
        if (*(v14 + 40) == a2)
        {
          break;
        }
      }

      if (v12)
      {
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v15 = *(v14 + 48);
    *a4 = 1;
    *(a4 + 4) = v15;
    if (v12)
    {
    }
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }
}

uint64_t re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AssetLoadDescriptor>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AssetLoadDescriptor>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor *,re::AssetLoadDescriptor *,re::AssetLoadDescriptor *>(&v14, *(a2 + 32), *(a2 + 32) + 144 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 144 * v8;
      v12 = 144 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicArray<BOOL>::DynamicArray(v10 + v11 + 32, (v9 + v11 + 32));
        re::DynamicArray<BOOL>::DynamicArray(v10 + v11 + 72, (v9 + v11 + 72));
        re::DynamicString::DynamicString((v10 + v11 + 112), (v9 + v11 + 112));
        v9 += 144;
        v12 -= 144;
        v10 += 144;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor *,re::AssetLoadDescriptor *,re::AssetLoadDescriptor *>(&v13, *(a2 + 32), *(a2 + 32) + 144 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 144 * v4;
      v7 = 144 * v5 - 144 * v4;
      do
      {
        re::DynamicString::deinit((v6 + 112));
        re::DynamicArray<unsigned long>::deinit(v6 + 72);
        re::DynamicArray<unsigned long>::deinit(v6 + 32);
        re::DynamicString::deinit(v6);
        v6 += 144;
        v7 -= 144;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
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
        v10 = v8 + 144 * v9;
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
          v11[8] = 0;
          *(v11 + 14) = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[5] = v16;
          *(v8 + 40) = 0;
          v17 = v11[6];
          v11[6] = *(v8 + 48);
          *(v8 + 48) = v17;
          v18 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v18;
          ++*(v8 + 56);
          ++*(v11 + 14);
          v11[13] = 0;
          v11[10] = 0;
          v11[11] = 0;
          v11[9] = 0;
          *(v11 + 24) = 0;
          v19 = *(v8 + 80);
          v11[9] = *(v8 + 72);
          *(v8 + 72) = 0;
          v11[10] = v19;
          *(v8 + 80) = 0;
          v20 = v11[11];
          v11[11] = *(v8 + 88);
          *(v8 + 88) = v20;
          v21 = v11[13];
          v11[13] = *(v8 + 104);
          *(v8 + 104) = v21;
          ++*(v8 + 96);
          ++*(v11 + 24);
          *(v11 + 7) = 0u;
          *(v11 + 8) = 0u;
          v11[14] = *(v8 + 112);
          *(v8 + 112) = 0;
          v11[17] = *(v8 + 136);
          *(v8 + 136) = 0;
          v23 = v11[15];
          v22 = v11[16];
          v24 = *(v8 + 128);
          v11[15] = *(v8 + 120);
          v11[16] = v24;
          *(v8 + 120) = v23;
          *(v8 + 128) = v22;
          re::DynamicString::deinit((v8 + 112));
          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          re::DynamicArray<unsigned long>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 18;
          v8 += 144;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor *,re::AssetLoadDescriptor *,re::AssetLoadDescriptor *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    re::DynamicArray<BOOL>::operator=(a4 + v7 + 32, (a2 + v7 + 32));
    re::DynamicArray<BOOL>::operator=(a4 + v7 + 72, (a2 + v7 + 72));
    re::DynamicString::operator=((a4 + v7 + 112), (a2 + v7 + 112));
    v7 += 144;
  }

  while (a2 + v7 != v6);
  return v6;
}

double re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(_DWORD *a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, a2, v6);
  if ((v6[0] & 1) == 0)
  {
    if (a1[20])
    {
      v6[0] = 1;
      v5 = a2[1];
      v7 = *a2;
      v8 = v5;
      *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((a1 + 10), v6).n128_u64[0];
    }

    else
    {
      *&result = re::DynamicArray<re::EvaluationRegister>::add(a1, a2).n128_u64[0];
    }
  }

  return result;
}

__n128 re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::NetworkAssetManager>(re::NetworkAssetManager *,REEventHandlerResult (re::NetworkAssetManager::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 48 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 48 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 48 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 48 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

void re::make::shared::object<re::ecs2::Scene,re::ConstStringID>(char **a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 384, 8);
  v6 = a1[1];
  *&v8.var0 = 2 * *a1;
  v8.var1 = v6;
  v7 = re::ecs2::Scene::Scene(v5, &v8);
  *a2 = v7;
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *a2;
  *(*(v3 + 4) + 8 * v4) = *a2;
  if (v5)
  {
    this = (v5 + 8);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
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
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          *v11++ = *v12;
          *v12++ = 0;
          v10 -= 8;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<char,91ul>::setCapacity(_anonymous_namespace_ *result, size_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<char,91ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 91;
  }

  else
  {
    v7 = *(result + 3);
  }

  if (v7 != a2)
  {
    v8 = *(result + 1);
    if (v8 <= a2 && (a2 > 0x5B || (v6 & 1) == 0))
    {
      if (a2 < 0x5C)
      {
        v13 = (result + 24);
        v14 = *(v3 + 4);
        if (v6)
        {
          v15 = v3 + 24;
        }

        else
        {
          v15 = *(v3 + 4);
        }

        memcpy(v13, v15, v8);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, a2, 1);
      if (v9)
      {
        v11 = v9;
        if (*(v3 + 16))
        {
          v12 = v3 + 24;
        }

        else
        {
          v12 = *(v3 + 4);
        }

        result = memcpy(v9, v12, *(v3 + 1));
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, *(v3 + 4));
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        *(v3 + 3) = a2;
        *(v3 + 4) = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, a2, *(*v3 + 8));
        result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v18);
        __break(1u);
      }
    }
  }

  return result;
}

void re::ecs2::NetworkAssetComponent::~NetworkAssetComponent(re::ecs2::NetworkAssetComponent *this)
{
  *this = &unk_1F5CB8088;
  v2 = (this + 40);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 21);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(this + 72);
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB8088;
  v2 = (this + 40);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 21);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(this + 72);
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 56;
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

double re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    return re::DynamicString::deinit(v2);
  }

  return v3;
}

uint64_t re::DynamicArray<re::AssetLoadDescriptor>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        do
        {
          re::DynamicString::deinit((v3 + 112));
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<unsigned long>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 += 144;
          v5 -= 144;
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

void re::ecs2::AssetPreloadComponent::~AssetPreloadComponent(re::ecs2::AssetPreloadComponent *this)
{
  *this = &unk_1F5CB8110;
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB8110;
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AssetStateComponent::~AssetStateComponent(re::ecs2::AssetStateComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
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

void re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
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

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicString const&>(uint64_t a1, uint64_t a2, const StringID *a3, const re::DynamicString *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::DynamicString::DynamicString((v7 + 24), a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = re::StringID::operator==((v10 + 56 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 56 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 56 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 56 * v4;
}

void re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v12 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 40) = 0u;
        *(result + 48) = v12[6];
        v13 = v12[4];
        *(result + 24) = v12[3];
        v12[3] = 0;
        v14 = v12[5];
        v12[6] = 0;
        v16 = *(result + 32);
        v15 = *(result + 40);
        *(result + 32) = v13;
        *(result + 40) = v14;
        v12[4] = v16;
        v12[5] = v15;
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

re::DynamicString *re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        result = re::DynamicString::DynamicString((v10 + 24), (*(a2 + 16) + v5 + 24));
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 40) % *(a1 + 6), *(v13 + 40));
                *(v18 + 8) = *(v13 + 8);
                re::ecs2::EntityHandle::EntityHandle(v18 + 16, v13 + 16);
              }

              ++v17;
              v13 += 48;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v19 = a1[2];
    v20 = *(v19 + 48 * v5);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 48 * v5);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 48 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 40) = a3;
  ++*(a1 + 7);
  return v19 + 48 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + (v6 << 6) + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
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

uint64_t re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(uint64_t a1)
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
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 8;
          v5 -= 8;
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

void *re::make::shared::object<re::Shareable<re::AssetLoadDescriptor>,re::AssetLoadDescriptor&>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 168, 8);
  result = re::Shareable<re::AssetLoadDescriptor>::Shareable<re::AssetLoadDescriptor&>(v5, a1);
  *a2 = result;
  return result;
}

void *re::Shareable<re::AssetLoadDescriptor>::Shareable<re::AssetLoadDescriptor&>(void *a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB7F50;
  re::DynamicString::DynamicString((a1 + 3), a2);
  re::DynamicArray<BOOL>::DynamicArray((a1 + 7), a2 + 4);
  re::DynamicArray<BOOL>::DynamicArray((a1 + 12), a2 + 9);
  re::DynamicString::DynamicString((a1 + 17), (a2 + 14));
  return a1;
}

void *re::Shareable<re::AssetLoadDescriptor>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CB7F50;
  v2 = a1 + 7;
  re::DynamicString::deinit((a1 + 17));
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicString::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::AssetLoadDescriptor>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CB7F50;
  v2 = a1 + 7;
  re::DynamicString::deinit((a1 + 17));
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicString::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::EventBus::getTypeId<RENetworkAssetAddedEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RENetworkAssetAddedEvent>(void)const::s_id = re::EventBus::typeStringToId(("24RENetworkAssetAddedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[20];
}

uint64_t re::EventBus::getTypeId<RENetworkAssetRemovedEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RENetworkAssetRemovedEvent>(void)const::s_id = re::EventBus::typeStringToId(("26RENetworkAssetRemovedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[16];
}

uint64_t re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 56) % *(a1 + 6), *(v13 + 56));
                v18[1] = *(v13 + 8);
                v18[5] = *(v13 + 40);
                v18[6] = 0;
                re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((v18 + 2), v13 + 16);
              }

              ++v17;
              v13 += 64;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v19 = a1[2];
    v20 = *(v19 + (v5 << 6));
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + (v5 << 6));
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + (v5 << 6);
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 56) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v19 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
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

double re::EntitlementManager::EntitlementManager(re::EntitlementManager *this)
{
  *this = &unk_1F5CB8198;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 60) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 38) = 0;
  return result;
}

void re::EntitlementManager::~EntitlementManager(re::EntitlementManager *this)
{
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 32);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 26);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 14);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 8);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
}

{
  re::EntitlementManager::~EntitlementManager(this);

  JUMPOUT(0x1E6906520);
}

void re::EntitlementManager::init(uint64_t a1, void *a2)
{
  *(a1 + 304) = *a2;
  *(a1 + 8) = 1;
  v10 = *re::assetsLogObjects(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "EntitlementManager initialized", v11, 2u);
  }
}

void re::EntitlementManager::deinit(re::EntitlementManager *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 8);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 14);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 26);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 32);
  *(this + 38) = 0;
  *(this + 8) = 0;
  v3 = *re::assetsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EntitlementManager uninitialized", v4, 2u);
  }
}

void re::EntitlementManager::setAllowAnyShaderLibraryForPeer(re::EntitlementManager *this, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a2)
  {
    v3 = this + 16;
    if (a3)
    {
      v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v3, &v8);
      v5 = *re::assetsLogObjects(v4);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is trusted to execute any shader library";
    }

    else
    {
      v7 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3, &v8);
      v5 = *re::assetsLogObjects(v7);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is NOT trusted to execute any shader library";
    }

    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }
}

void re::EntitlementManager::setAllowLimitedRenderAssetsForPeer(re::EntitlementManager *this, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a2)
  {
    v3 = this + 64;
    if (a3)
    {
      v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v3, &v8);
      v5 = *re::assetsLogObjects(v4);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is entitled to load limited render assets";
    }

    else
    {
      v7 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3, &v8);
      v5 = *re::assetsLogObjects(v7);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is NOT entitled to load limited render assets";
    }

    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }
}

void re::EntitlementManager::setAllowRenderOnTopSPIForPeer(re::EntitlementManager *this, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a2)
  {
    v3 = this + 112;
    if (a3)
    {
      v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v3, &v8);
      v5 = *re::assetsLogObjects(v4);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is entitled to use render on top SPI";
    }

    else
    {
      v7 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3, &v8);
      v5 = *re::assetsLogObjects(v7);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is NOT entitled to use render on top SPI";
    }

    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }
}

void re::EntitlementManager::setAllowCARESyncBackForPeer(re::EntitlementManager *this, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a2)
  {
    if (a3)
    {
      buf[0] = 1;
      v3 = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 160, &v7, buf);
      v4 = *re::assetsLogObjects(v3);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v9 = v7;
      v5 = "EntitlementManager - Peer (peerID=%llu) is entitled to be sent owned CARE component data";
    }

    else
    {
      buf[0] = 0;
      v6 = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 160, &v7, buf);
      v4 = *re::assetsLogObjects(v6);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v9 = v7;
      v5 = "EntitlementManager - Peer (peerID=%llu) is NOT entitled to be sent owned CARE component data";
    }

    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
  }
}

uint64_t re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::EntitlementManager::setPeerAllowedToUsePrereleaseShaderGraphNodes(re::EntitlementManager *this, unint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a2)
  {
    v3 = this + 208;
    if (a3)
    {
      v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v3, &v8);
      v5 = *re::assetsLogObjects(v4);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is entitled to use pre-release ShaderGraph nodes";
    }

    else
    {
      v7 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3, &v8);
      v5 = *re::assetsLogObjects(v7);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      v10 = v8;
      v6 = "EntitlementManager - Peer (peerID=%llu) is NOT entitled to use pre-release ShaderGraph nodes";
    }

    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }
}

void re::EntitlementManager::removePeer(re::EntitlementManager *this, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a2;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 16, &v17);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 64, &v17);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 112, &v17);
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 160, &v17, v3 ^ (v3 >> 31), buf);
  v4 = v20;
  if (v20 != 0x7FFFFFFF)
  {
    v5 = *(this + 22);
    v6 = *(v5 + 32 * v20) & 0x7FFFFFFF;
    if (v21 == 0x7FFFFFFF)
    {
      *(*(this + 21) + 4 * HIDWORD(v19)) = v6;
      v4 = v20;
    }

    else
    {
      *(v5 + 32 * v21) = *(v5 + 32 * v21) & 0x80000000 | v6;
    }

    *(v5 + 32 * v4) = *(this + 49);
    --*(this + 47);
    v7 = *(this + 50) + 1;
    *(this + 49) = v4;
    *(this + 50) = v7;
  }

  v8 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 208, &v17);
  v9 = *(this + 72);
  if (v9)
  {
    v10 = 0;
    v11 = (*(this + 34) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(this + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    v13 = *(*(this + 34) + 24 * v10 + 16);
    if (v13)
    {
      v14 = (v13 + 8);
    }

    (*(*v13 + 32))(v13, v17);

    v15 = *(this + 72);
    if (v15 <= v10 + 1)
    {
      v15 = v10 + 1;
    }

    while (v15 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(this + 34) + 24 * v10 + 8) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    LODWORD(v10) = v15;
LABEL_21:
    ;
  }

  v16 = *re::assetsLogObjects(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v17;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "EntitlementManager - Peer (peerID=%llu) has been removed from the entitlement manager", buf, 0xCu);
  }
}

void re::EntitlementManager::addListener(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 280);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 264) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 272);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 292);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 288);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity((a1 + 256), 2 * *(a1 + 284));
      LODWORD(v8) = v6 % *(a1 + 280);
      v12 = *(a1 + 288);
      v4 = *a2;
    }

    *(a1 + 288) = v12 + 1;
    v13 = *(a1 + 272);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 272);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 292) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  v15 = *(a1 + 264);
  *(*(a1 + 272) + 24 * v11 + 8) = *(*(a1 + 272) + 24 * v11 + 8) & 0x80000000 | *(v15 + 4 * v8);
  *(*(a1 + 272) + 24 * v11) = v6;
  *(*(a1 + 272) + 24 * v11 + 16) = v4;
  if (v4)
  {
    v16 = (v4 + 8);
    v15 = *(a1 + 264);
  }

  *(v15 + 4 * v8) = v11;
  ++*(a1 + 284);
  ++*(a1 + 296);
}

uint64_t re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
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

void re::MemoryAttributionIDMap::~MemoryAttributionIDMap(re::MemoryAttributionIDMap *this, uint64_t a2)
{
  *this = &unk_1F5CB8240;
  if (*(this + 25) || *(this + 13))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) deinit() was not called.", "m_UUIDToTaskAndPeer.isEmpty() && m_taskAndPeerToID.isEmpty()", "~MemoryAttributionIDMap", 11);
    _os_crash("assertion failure: (m_UUIDToTaskAndPeer.isEmpty() && m_taskAndPeerToID.isEmpty()) deinit() was not called.");
    __break(1u);
  }

  else
  {
    re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
    re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 3);
    *this = &unk_1F5CCF868;
    objc_destructInstance(this + 8);
  }
}

{
  re::MemoryAttributionIDMap::~MemoryAttributionIDMap(this, a2);

  JUMPOUT(0x1E6906520);
}

void re::MemoryAttributionIDMap::deinit(int **this)
{
  v1 = this;
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 13))
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = 0;
      v4 = this[5];
      while (1)
      {
        v5 = *v4;
        v4 += 12;
        if (v5 < 0)
        {
          break;
        }

        if (v2 == ++v3)
        {
          LODWORD(v3) = *(this + 14);
          break;
        }
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }

    if (v3 == v2)
    {
      goto LABEL_23;
    }

    v6 = MEMORY[0x1E69E9A60];
    do
    {
      v7 = v1[5];
      v8 = &v7[12 * v3];
      v9 = *re::assetsLogObjects(this);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = v8[2];
        v14 = *&v7[12 * v3 + 6];
        *buf = 134218240;
        v26 = v13;
        v27 = 2048;
        v28 = v14;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "MemoryAttributionIDMap deinits while containing registered task_id_token_t %llu and uuid %llu", buf, 0x16u);
      }

      this = mach_port_mod_refs(*v6, v8[2], 0, -1);
      if (this)
      {
        v10 = this;
        v11 = *re::assetsLogObjects(this);
        this = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        if (this)
        {
          v15 = v8[2];
          v16 = mach_error_string(v10);
          *buf = 134218242;
          v26 = v15;
          v27 = 2080;
          v28 = v16;
          _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to decrement task_id_token_t ref count for %llu, with KERN error: %s", buf, 0x16u);
        }
      }

      v12 = *(v1 + 14);
      if (v12 <= v3 + 1)
      {
        v12 = v3 + 1;
      }

      while (v12 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if (v1[5][12 * v3] < 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v3) = v12;
LABEL_21:
      ;
    }

    while (v3 != v2);
    if (*(v1 + 13))
    {
LABEL_23:
      v17 = *(v1 + 12);
      if (v17)
      {
        memset_pattern16(v1[4], &unk_1E304C660, 4 * v17);
      }

      v18 = *(v1 + 14);
      if (v18)
      {
        v19 = v1[5];
        do
        {
          if (*v19 < 0)
          {
            *v19 &= ~0x80000000;
          }

          v19 += 12;
          --v18;
        }

        while (v18);
      }

      *(v1 + 13) = 0;
      *(v1 + 14) = 0;
      v20 = *(v1 + 16) + 1;
      *(v1 + 15) = 0x7FFFFFFF;
      *(v1 + 16) = v20;
    }
  }

  if (*(v1 + 25))
  {
    v21 = *(v1 + 24);
    if (v21)
    {
      memset_pattern16(v1[10], &unk_1E304C660, 4 * v21);
    }

    v22 = *(v1 + 26);
    if (v22)
    {
      v23 = v1[11];
      do
      {
        if (*v23 < 0)
        {
          *v23 &= ~0x80000000;
        }

        v23 += 10;
        --v22;
      }

      while (v22);
    }

    *(v1 + 25) = 0;
    *(v1 + 26) = 0;
    v24 = *(v1 + 28) + 1;
    *(v1 + 27) = 0x7FFFFFFF;
    *(v1 + 28) = v24;
  }
}

uint64_t re::MemoryAttributionIDMap::registerTaskID(re::MemoryAttributionIDMap *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::tryGet(this + 24, a2, a3);
  if (v6)
  {
    v7 = v6;
    v9 = v6;
    result = *v6;
    v7[1] = v9[1] + 1;
  }

  else
  {
    v10 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 0, 1);
    if (v10)
    {
      v11 = v10;
      v12 = *re::assetsLogObjects(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *out = 136315138;
        *&out[4] = mach_error_string(v11);
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to increment task_id_token_t ref count, with KERN error: %s", out, 0xCu);
      }
    }

    uuid_generate_random(out);
    v13 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
    *&v17 = v13;
    *(&v17 + 1) = 1;
    memset(out, 0, sizeof(out));
    v19 = 0;
    re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::findEntry<re::internal::MemoryAttributionTaskAndPeerID>(out, this + 24, v4, a3, (a3 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4);
    if (*&out[12] == 0x7FFFFFFF)
    {
      v14 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::allocEntry(this + 24, *&out[8], *out);
      *(v14 + 8) = v4;
      *(v14 + 16) = a3;
      *(v14 + 24) = v17;
      ++*(this + 16);
    }

    memset(out, 0, sizeof(out));
    v19 = 0;
    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, &v17, v15 ^ (v15 >> 31), out);
    if (*&out[12] == 0x7FFFFFFF)
    {
      v16 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 72, *&out[8], *out);
      result = v17;
      v16[1] = v17;
      v16[2] = v4;
      v16[3] = a3;
      ++*(this + 28);
    }

    else
    {
      return v17;
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::tryGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::findEntry<re::internal::MemoryAttributionTaskAndPeerID>(v5, a1, a2, a3, (a3 + (a2 << 6) + (a2 >> 2) - 0x61C8864680B583E9) ^ a2);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 24;
  }
}

BOOL re::MemoryAttributionIDMap::unregisterTaskID(re::MemoryAttributionIDMap *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, &v28, v3 ^ (v3 >> 31), buf);
  v5 = v31[0];
  if (v31[0] == 0x7FFFFFFF)
  {
    v19 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unregistering unknown UUID", buf, 2u);
    }
  }

  else
  {
    v6 = *(this + 11) + 40 * v31[0];
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::tryGet(this + 24, v7, v8);
    v10 = *(v9 + 8) - 1;
    *(v9 + 8) = v10;
    if (!v10)
    {
      v11 = v9;
      v12 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v7);
      if (v12)
      {
        v13 = v12;
        v14 = *re::assetsLogObjects(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v27 = mach_error_string(v13);
          *buf = 134218242;
          v30 = v7;
          LOWORD(v31[0]) = 2080;
          *(v31 + 2) = v27;
          _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Failed to decrement task_id_token_t %llu ref count, with KERN error: %s", buf, 0x16u);
        }
      }

      v15 = 0xBF58476D1CE4E5B9 * (*v11 ^ (*v11 >> 30));
      re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, v11, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), buf);
      v16 = v31[0];
      if (v31[0] != 0x7FFFFFFF)
      {
        v17 = *(this + 11);
        v18 = *(v17 + 40 * v31[0]) & 0x7FFFFFFF;
        if (v31[1] == 0x7FFFFFFF)
        {
          *(*(this + 10) + 4 * HIDWORD(v30)) = v18;
          v16 = v31[0];
        }

        else
        {
          *(v17 + 40 * v31[1]) = *(v17 + 40 * v31[1]) & 0x80000000 | v18;
        }

        *(v17 + 40 * v16) = *(this + 27);
        --*(this + 25);
        v21 = *(this + 28) + 1;
        *(this + 27) = v16;
        *(this + 28) = v21;
      }

      re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::findEntry<re::internal::MemoryAttributionTaskAndPeerID>(buf, this + 24, v7, v8, (v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7);
      v22 = v31[0];
      if (v31[0] != 0x7FFFFFFF)
      {
        v23 = *(this + 5);
        v24 = (v23 + 48 * v31[0]);
        v25 = *v24 & 0x7FFFFFFF;
        if (v31[1] == 0x7FFFFFFF)
        {
          *(*(this + 4) + 4 * HIDWORD(v30)) = v25;
        }

        else
        {
          *(v23 + 48 * v31[1]) = *(v23 + 48 * v31[1]) & 0x80000000 | v25;
        }

        *v24 = *(this + 15);
        --*(this + 13);
        v26 = *(this + 16) + 1;
        *(this + 15) = v22;
        *(this + 16) = v26;
      }
    }
  }

  return v5 != 0x7FFFFFFF;
}

re::MemoryAttributionIDMap *re::MemoryAttributionIDMap::getTaskID(re::MemoryAttributionIDMap *this, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 72, &v7);
  if (result)
  {
    v5 = result;
    v6 = *(result + 1);
    if (v6 == a3 || v6 == re::MemoryAttributionIDMap::anyPeerID_DEPRECATED(result))
    {
      return *v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::MemoryAttributionIDMap::anyPeerID_DEPRECATED(re::MemoryAttributionIDMap *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::MemoryAttributionIDMap::anyPeerID_DEPRECATED(void)::anyPeerID = re::randomUUID(v3);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return *(v1 + 40);
}

uint64_t re::MemoryAttributionIDMap::peerRemoved(re::MemoryAttributionIDMap *this, uint64_t a2)
{
  v18 = 0;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  v17 = 0;
  v4 = *(this + 26);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 11);
    while (1)
    {
      v7 = *v6;
      v6 += 10;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 26);
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
    v8 = *(this + 26);
    do
    {
      v9 = *(this + 11);
      if (*(v9 + 40 * v5 + 24) == a2)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v15, (v9 + 40 * v5 + 8));
        v8 = *(this + 26);
      }

      if (v8 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = v8;
      }

      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 11) + 40 * v5) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v10;
LABEL_18:
      ;
    }

    while (v5 != v4);
    if (v16)
    {
      v11 = v18;
      v12 = 8 * v16;
      do
      {
        v13 = *v11++;
        re::MemoryAttributionIDMap::unregisterTaskID(this, v13);
        v12 -= 8;
      }

      while (v12);
    }
  }

  result = v15[0];
  if (v15[0])
  {
    if (v18)
    {
      return (*(*v15[0] + 40))();
    }
  }

  return result;
}

double re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(uint64_t *a1)
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

        v4 += 12;
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

double re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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

        v4 += 10;
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

uint64_t re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::findEntry<re::internal::MemoryAttributionTaskAndPeerID>(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 48 * v7;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  if (v10 == a3 && v11 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 48 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 48 * v13;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      if (v16 == a3 && v17 == a4)
      {
        break;
      }

      v13 = *(v8 + 48 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::allocEntry(a1, *(v17 + 16) % *(a1 + 24), *(v17 + 16));
                *(v18 + 8) = *(v17 - 16);
                *(v18 + 24) = *v17;
              }

              v17 += 48;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 48 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 48 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 48 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 40) = a3;
  ++*(a1 + 28);
  return v19 + 48 * v5;
}

uint64_t re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 16) % *(a1 + 24), *(v17 + 16));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

uint64_t *re::resourceSharingLogObjects(re *this)
{
  {
    re::resourceSharingLogObjects(void)::logObjects = os_log_create("com.apple.re", "ResourceSharing");
    qword_1ECF1C158 = os_log_create("com.apple.re", "ResourceFetch");
  }

  return &re::resourceSharingLogObjects(void)::logObjects;
}

void *re::allocInfo_AssetPathLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_31, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_31))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191878, "AssetPathLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_31);
  }

  return &unk_1EE191878;
}

void re::initInfo_AssetPathLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xAF839740F16039E8;
  v20[1] = "AssetPathLoadDescriptorParameters";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE191838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191838))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "scheme";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE191860 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "root";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE191868 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicString>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "subpath";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE191870 = v18;
    __cxa_guard_release(&qword_1EE191838);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE191860;
  *(this + 9) = re::internal::defaultConstruct<re::AssetPathLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssetPathLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssetPathLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssetPathLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::IntrospectionInfo<re::DynamicString>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionDynamicString::IntrospectionDynamicString(&re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicString>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::IntrospectionInfo<re::DynamicString>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<re::DynamicString>::get(BOOL)::isInitialized)
    {
LABEL_8:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::DynamicString>::get(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info, a2);
  xmmword_1EE1866E8 = v9;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  return &re::IntrospectionInfo<re::DynamicString>::get(BOOL)::info;
}

void *re::internal::defaultConstruct<re::AssetPathLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  a3[3] = 0u;
  a3[2] = 0u;
  v5 = re::DynamicString::setCapacity(a3 + 4, 0);
  a3[4] = 0u;
  a3[5] = 0u;
  v6 = a3 + 4;

  return re::DynamicString::setCapacity(v6, 0);
}

double re::internal::defaultDestruct<re::AssetPathLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 64));
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::AssetPathLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 3) = 0u;
  *(a1 + 2) = 0u;
  v3 = re::DynamicString::setCapacity(a1 + 4, 0);
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  v4 = (a1 + 64);

  return re::DynamicString::setCapacity(v4, 0);
}

double re::internal::defaultDestructV2<re::AssetPathLoadDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 64));
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

re::FallbackAssetProvider *re::FallbackAssetProvider::FallbackAssetProvider(re::FallbackAssetProvider *this, const re::internal::AssetTypeRegistry *a2, const re::AssetCompilerRegistry *a3, const re::AssetProviderRegistry *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CB82A8;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE191858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191858))
  {
    qword_1EE191850 = re::internal::getOrCreateInfo("AssetPathLoadDescriptorParameters", re::allocInfo_AssetPathLoadDescriptorParameters, re::initInfo_AssetPathLoadDescriptorParameters, &unk_1EE191840, 0);
    __cxa_guard_release(&qword_1EE191858);
  }

  qword_1EE191848 = qword_1EE191850;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 3) = a2;
  return this;
}

void re::FallbackAssetProvider::~FallbackAssetProvider(re::FallbackAssetProvider *this)
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

uint64_t *re::FallbackAssetProvider::getAssetPath(re::FallbackAssetProvider *this, const re::internal::AssetTypeRegistry **a2, const re::AssetLoadDescriptor *a3, re::AssetLoadDescriptor *a4)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v8 = re::DynamicString::setCapacity(&v32, 0);
  *(&v36 + 1) = 0;
  v37 = 0uLL;
  v9 = re::DynamicString::setCapacity(&v36, 0);
  *(&v38 + 1) = 0;
  v39 = 0uLL;
  re::DynamicString::setCapacity(&v38, 0);
  if ((atomic_load_explicit(&qword_1EE191858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191858))
  {
    qword_1EE191850 = re::internal::getOrCreateInfo("AssetPathLoadDescriptorParameters", re::allocInfo_AssetPathLoadDescriptorParameters, re::initInfo_AssetPathLoadDescriptorParameters, &unk_1EE191840, 0);
    __cxa_guard_release(&qword_1EE191858);
  }

  IntrospectableData = re::AssetLoadDescriptor::getIntrospectableData(a4, qword_1EE191850, &v32, 0);
  if (IntrospectableData)
  {
    v11 = re::DynamicString::operator+(&v26, &v32, ":");
    v12 = v37;
    if ((BYTE8(v36) & 1) == 0)
    {
      v12 = &v36 + 9;
    }

    if (*v12)
    {
      re::DynamicString::operator+(&v24, &v36, "/");
    }

    else
    {
    }

    re::DynamicString::operator+(&v21, &v26, &v24);
    re::DynamicString::operator+(&v29, &v21, &v38);
    if (v21)
    {
      if (BYTE8(v21))
      {
        (*(*v21 + 40))();
      }

      v21 = 0u;
      v22 = 0u;
    }

    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }

    if (v26.n128_u64[0] && (v26.n128_u8[8] & 1) != 0)
    {
      (*(*v26.n128_u64[0] + 40))();
    }

    if (v30)
    {
      v15 = *&v31[7];
    }

    else
    {
      v15 = v31;
    }

    v17.n128_f64[0] = re::AssetPath::parse(&v21, a3, v15, 0, a2[3], a2[5]);
    if (v21 == 1)
    {
      *this = v21;
    }

    else
    {
      re::DynamicString::operator+(&v26, &v24, &v22 + 8);
      v17 = v26;
      v26 = 0uLL;
      v18 = v27;
      v19 = v28;
      v27 = 0;
      v28 = 0;
      *this = 0;
      *(this + 8) = v17;
      *(this + 3) = v18;
      *(this + 4) = v19;
      if (v24 && (v25 & 1) != 0)
      {
        (*(*v24 + 40))();
      }

      if (v21 & 1) == 0 && *(&v22 + 1) && (v23)
      {
        (*(**(&v22 + 1) + 40))();
      }
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))(v17);
    }
  }

  else
  {
    v13 = v21;
    v14 = v22;
    *this = 0;
    *(this + 8) = v13;
    *(this + 24) = v14;
  }

  if (v38)
  {
    if (BYTE8(v38))
    {
      (*(*v38 + 40))();
    }

    v38 = 0u;
    v39 = 0u;
  }

  if (v36)
  {
    if (BYTE8(v36))
    {
      (*(*v36 + 40))();
    }

    v36 = 0u;
    v37 = 0u;
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 5))();
    }
  }

  return result;
}

uint64_t re::FallbackAssetProvider::makeDescriptor(re::FallbackAssetProvider *this, const char ***a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v4 = re::DynamicString::setCapacity(this, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  re::DynamicString::setCapacity(this + 14, 0);
  *v23 = "AssetPath";
  v24 = 9;
  re::DynamicString::operator=(this, v23);
  v5 = strlen(*a2[9]);
  *v23 = *a2[9];
  v24 = v5;
  re::DynamicString::operator=((this + 112), v23);
  v6 = a2[1];
  v34 = 0;
  v35 = 0;
  v32 = v6;
  v33 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  re::AssetPath::fullAssetPath(a2, &v32);
  v23[0] = 58;
  v7 = re::DynamicString::find(v31, &v32, v23, 1, 0);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = re::DynamicString::setCapacity(v23, 0);
  *(&v27 + 1) = 0;
  v28 = 0uLL;
  v9 = re::DynamicString::setCapacity(&v27, 0);
  *(&v29 + 1) = 0;
  v30 = 0uLL;
  re::DynamicString::setCapacity(&v29, 0);
  re::DynamicString::substr(&v21, &v32, 0, v31[1]);
  re::DynamicString::operator=(v23, &v21);
  if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  re::DynamicString::operator=(&v27, (a2 + 1));
  re::DynamicString::operator=(&v29, (a2 + 5));
  re::DynamicString::DynamicString(&v17, v23);
  re::DynamicString::DynamicString(v19, &v27);
  re::DynamicString::DynamicString(v20, &v29);
  re::AssetLoadDescriptor::setIntrospectableData(this, qword_1EE191848, &v17, 0);
  if (v20[0])
  {
    if (v20[1])
    {
      (*(*v20[0] + 40))();
    }

    memset(v20, 0, sizeof(v20));
  }

  if (v19[0])
  {
    if (v19[1])
    {
      (*(*v19[0] + 40))();
    }

    memset(v19, 0, sizeof(v19));
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v29)
  {
    if (BYTE8(v29))
    {
      (*(*v29 + 40))(v29, v30, v10, v11, v12, v13, v14, v15, v17, *(&v17 + 1), v18, *(&v18 + 1));
    }

    v29 = 0u;
    v30 = 0u;
  }

  if (v27)
  {
    if (BYTE8(v27))
    {
      (*(*v27 + 40))();
    }

    v27 = 0u;
    v28 = 0u;
  }

  if (*v23 && (v24 & 1) != 0)
  {
    (*(**v23 + 40))();
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::FallbackAssetProvider::load@<X0>(const re::internal::AssetTypeRegistry **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  v9 = strcmp(v8, "AssetPath");
  if (v9)
  {
    v11 = v39;
    v12 = v40;
    v13 = v41;
    *a4 = 0;
    *(a4 + 8) = v11;
    *(a4 + 24) = v12;
    *(a4 + 32) = v13;
    return result;
  }

  LODWORD(v39) = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v14 = re::DynamicString::setCapacity(&v39 + 1, 0);
  *(&v43 + 1) = 0;
  v44 = 0uLL;
  re::DynamicString::setCapacity(&v43, 0);
  v45 = 0;
  AssetPath = re::FallbackAssetProvider::getAssetPath(v35, this, &v39, a2);
  if (v35[0] == 1)
  {
    v33 = 0uLL;
    v34 = 0;
    re::DynamicString::setCapacity(&v32, 0);
    v16 = re::AssetPath::filePathToAsset(&v39, &v32, 1, 0);
    if (v16)
    {
      if (*(a2 + 120))
      {
        v17 = *(a2 + 16);
      }

      else
      {
        v17 = a2 + 121;
      }

      re::loadCompiledOrSourceFile(&v32, v17, this + 3, a3, a4);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = *(&v39 + 1);
      v24 = 0;
      re::DynamicString::setCapacity(&v23, 0);
      re::AssetPath::fullAssetPath(&v39, &v23);
      re::DynamicString::operator+(&v29, &v27, &v23);
      v20 = v29;
      v29 = 0uLL;
      v21 = v30;
      v22 = v31;
      v30 = 0;
      v31 = 0;
      *a4 = 0;
      *(a4 + 8) = v20;
      *(a4 + 24) = v21;
      *(a4 + 32) = v22;
      if (v23 && (v24 & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      if (v27 && (v28 & 1) != 0)
      {
        (*(*v27 + 40))();
      }
    }

    v18 = v32;
    if (!v32 || (v33 & 1) == 0)
    {
      goto LABEL_26;
    }

    v19 = *(&v33 + 1);
  }

  else
  {
    re::DynamicString::DynamicString(&v32, &v36);
    *a4 = 0;
    *(a4 + 8) = v32;
    *(a4 + 32) = v34;
    *(a4 + 16) = v33;
    v18 = v36;
    if (!v36 || (v37 & 1) == 0)
    {
      goto LABEL_26;
    }

    v19 = v38;
  }

  (*(*v18 + 40))(v18, v19);
LABEL_26:
  if (v43)
  {
    if (BYTE8(v43))
    {
      (*(*v43 + 40))(v43, v44);
    }

    v44 = 0u;
    v43 = 0u;
  }

  result = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    if (v40)
    {
      return (*(**(&v39 + 1) + 40))(*(&v39 + 1), v41);
    }
  }

  return result;
}

uint64_t *re::FallbackAssetProvider::resolveChild@<X0>(const re::internal::AssetTypeRegistry **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 8))
  {
    v10 = *(a2 + 2);
  }

  else
  {
    v10 = a2 + 9;
  }

  v11 = strcmp(v10, "AssetPath");
  if (v11)
  {
    result = re::DynamicString::format(v31, "Scheme %s does not match scheme %s.", v12, v10, "AssetPath");
    v14 = *v31;
    v15 = *&v31[16];
    v16 = v32;
    *a5 = 0;
    *(a5 + 8) = v14;
    *(a5 + 24) = v15;
    *(a5 + 32) = v16;
    return result;
  }

  v54 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v17 = re::DynamicString::setCapacity(&v55, 0);
  *(&v59 + 1) = 0;
  v60 = 0uLL;
  re::DynamicString::setCapacity(&v59, 0);
  v61 = 0;
  AssetPath = re::FallbackAssetProvider::getAssetPath(v51, this, &v54, a2);
  if (v51[0] == 1)
  {
    LODWORD(v46) = 0;
    memset(v47, 0, sizeof(v47));
    v19 = re::DynamicString::setCapacity(v47, 0);
    v49 = 0u;
    v48 = 0u;
    re::DynamicString::setCapacity(&v48, 0);
    v50 = 0;
    re::AssetPath::parse(v43, &v46, a3, &v54, this[3], this[5]);
    if (v43[0])
    {
      v50 = re::internal::AssetTypeRegistry::assetTypeWithName(this[3], a4);
      re::FallbackAssetProvider::makeDescriptor(v31, &v46);
      *(a5 + 48) = v33;
      v21 = v36;
      *(a5 + 72) = v35;
      v22 = *v31;
      memset(v31, 0, sizeof(v31));
      v23 = *&v31[16];
      v24 = v32;
      v32 = 0u;
      ++v34;
      v26 = v39;
      v25 = v40;
      v27 = v38;
      *a5 = 1;
      *(a5 + 24) = v23;
      *(a5 + 32) = v24;
      *(a5 + 8) = v22;
      *(a5 + 40) = *(&v24 + 1);
      v33 = 0u;
      *(a5 + 64) = 1;
      v35 = 0u;
      v36 = 0u;
      *(a5 + 88) = v21;
      *(a5 + 104) = 1;
      *(a5 + 112) = v37;
      *(a5 + 136) = v26;
      *(a5 + 144) = v25;
      *(a5 + 128) = v27;
    }

    else
    {
      re::DynamicString::operator+(v31, &v41, &v44);
      v28 = *v31;
      memset(v31, 0, sizeof(v31));
      v29 = *&v31[16];
      v30 = v32;
      *&v32 = 0;
      *a5 = 0;
      *(a5 + 8) = v28;
      *(a5 + 24) = v29;
      *(a5 + 32) = v30;
      if (v41 && (v42 & 1) != 0)
      {
        (*(*v41 + 40))();
      }
    }

    if (v43[0] & 1) == 0 && v44 && (v45)
    {
      (*(*v44 + 40))();
    }

    if (v48)
    {
      if (BYTE8(v48))
      {
        (*(*v48 + 40))();
      }

      v49 = 0u;
      v48 = 0u;
    }

    if (v47[0] && (v47[1] & 1) != 0)
    {
      (*(*v47[0] + 40))();
    }

    if (v51[0])
    {
      goto LABEL_29;
    }
  }

  else
  {
    re::DynamicString::DynamicString(v31, &v52);
    *a5 = 0;
    *(a5 + 8) = *v31;
    *(a5 + 32) = v32;
    *(a5 + 16) = *&v31[8];
  }

  if (v52 && (v53 & 1) != 0)
  {
    (*(*v52 + 40))();
  }

LABEL_29:
  if (v59)
  {
    if (BYTE8(v59))
    {
      (*(*v59 + 40))();
    }

    v60 = 0u;
    v59 = 0u;
  }

  result = v55;
  if (v55)
  {
    if (v56)
    {
      return (*(*v55 + 40))();
    }
  }

  return result;
}

uint64_t *re::FallbackAssetProvider::getDescription(re::FallbackAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v6 = re::DynamicString::setCapacity(&v19, 0);
  *(&v23 + 1) = 0;
  v24 = 0uLL;
  re::DynamicString::setCapacity(&v23, 0);
  v25 = 0;
  re::FallbackAssetProvider::getAssetPath(v14, this, &v18, a2);
  if (v14[0] == 1)
  {
    v12 = 0;
    v13 = 0;
    v10 = v19;
    v11 = 0;
    re::DynamicString::setCapacity(&v10, 0);
    re::AssetPath::fullAssetPath(&v18, &v10);
    re::DynamicString::operator=(a3, &v10);
    v7 = v10;
    if (v10 && (v11 & 1) != 0)
    {
      v8 = v12;
LABEL_8:
      (*(*v7 + 40))(v7, v8);
    }
  }

  else
  {
    v10 = "mangled";
    v11 = 7;
    re::DynamicString::operator=(a3, &v10);
    v7 = v15;
    if (v15 && (v16 & 1) != 0)
    {
      v8 = v17;
      goto LABEL_8;
    }
  }

  if (v23)
  {
    if (BYTE8(v23))
    {
      (*(*v23 + 40))();
    }

    v24 = 0u;
    v23 = 0u;
  }

  result = v19;
  if (v19)
  {
    if (v20)
    {
      return (*(*v19 + 40))();
    }
  }

  return result;
}

uint64_t *re::FallbackAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  *v17 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v6 = re::DynamicString::setCapacity(&v18, 0);
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = 0;
  re::FallbackAssetProvider::getAssetPath(v14, a1, v17, a2);
  if (v14[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v12 = 0;
  v13 = 0;
  v11 = v18;
  re::DynamicString::setCapacity(&v11, 0);
  re::AssetPath::fullAssetPath(v17, &v11);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a3 = 1;
  *(a3 + 8) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v23 = 0u;
    v22 = 0u;
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

__n128 re::FallbackAssetProvider::makeDescriptorFromAssetPath@<Q0>(const char ***a1@<X1>, uint64_t a2@<X8>)
{
  re::FallbackAssetProvider::makeDescriptor(&v7, a1);
  *a2 = 1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v3 = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = v3;
  *(a2 + 48) = v11;
  *(a2 + 64) = 1;
  v4 = v13;
  *(a2 + 72) = v12;
  *(a2 + 88) = v4;
  *(a2 + 104) = 1;
  result = v14;
  *(a2 + 144) = v16;
  v6 = v15;
  *(a2 + 112) = result;
  *(a2 + 128) = v6;
  return result;
}

_BYTE *re::AssetProvider::transformDescriptor@<X0>(_BYTE *a1@<X8>)
{
  v2[0] = 0;
  v3[0] = 0;
  *a1 = 1;
  re::Optional<re::AssetLoadDescriptor>::Optional((a1 + 8), v3);
  re::Optional<re::AssetLoadDescriptor>::~Optional(v3);
  return re::Optional<re::AssetLoadDescriptor>::~Optional(v2);
}

_BYTE *re::Optional<re::AssetLoadDescriptor>::~Optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 120));
    re::DynamicArray<unsigned long>::deinit((a1 + 80));
    re::DynamicArray<unsigned long>::deinit((a1 + 40));
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

double re::Optional<re::AssetLoadDescriptor>::Optional(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  if (v2 == 1)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 32) = *(a2 + 4);
    v4 = *(a2 + 2);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    *(a2 + 4) = 0;
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a2 + 2) = v7;
    *(a2 + 3) = v6;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v8 = *(a2 + 6);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = v8;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v9 = *(a1 + 56);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(a1 + 72);
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 9) = v10;
    ++*(a2 + 16);
    ++*(a1 + 64);
    *(a1 + 112) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    v11 = *(a2 + 11);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = v11;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v12 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(a1 + 112);
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 14) = v13;
    ++*(a2 + 26);
    ++*(a1 + 104);
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 144) = *(a2 + 18);
    v14 = *(a2 + 16);
    *(a1 + 120) = *(a2 + 15);
    *(a2 + 15) = 0;
    v15 = *(a2 + 17);
    *(a2 + 18) = 0;
    v17 = *(a1 + 128);
    v16 = *(a1 + 136);
    *(a1 + 128) = v14;
    *(a1 + 136) = v15;
    *(a2 + 16) = v17;
    *(a2 + 17) = v16;
  }

  return result;
}

void re::CustomAssetRegistrationParameters::~CustomAssetRegistrationParameters(re::CustomAssetRegistrationParameters *this)
{
  *this = &unk_1F5CB8348;
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
    *(this + 7) = 0;
  }

  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
    *(this + 8) = 0;
  }

  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::CustomAssetRegistrationParameters::~CustomAssetRegistrationParameters(this);

  JUMPOUT(0x1E6906520);
}

void re::CustomAssetRegistrationParameters::setAssetEncoder(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 56) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void re::CustomAssetRegistrationParameters::setAssetDecoder(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 64);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 64) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void re::CustomAssetRegistrationParameters::validate(re::CustomAssetRegistrationParameters *this@<X0>, char *a3@<X8>)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    v6 = 1;
    a3[8] = 1;
  }

  else
  {
    re::WrappedError::make(&v8, @"REAssetTypeRegistrationErrorDomain", 1, 0);
    v7 = v8;
    v8 = 0;
    *(a3 + 1) = v7;

    v6 = 0;
  }

  *a3 = v6;
}

void re::CustomAsset::setRuntimeObject(re::CustomAsset *this, CFTypeRef cf)
{
  v3 = *(this + 1);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 1) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void re::CustomAsset::~CustomAsset(re::CustomAsset *this)
{
  *this = &unk_1F5CB8378;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

{
  *this = &unk_1F5CB8378;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t ___ZN2re17CustomAssetLoaderC2EU13block_pointerFPK8__CFDataPKvPP9__CFErrorEU13block_pointerFS5_S3_S8_E_block_invoke(re *a1, uint64_t a2, CFErrorRef *a3)
{
  v4 = *re::assetTypesLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Asset encoding failed because no data encoder callback is registered for this custom asset type.", v6, 2u);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    *a3 = CFErrorCreate(0, @"REAssetTypeRegistrationErrorDomain", 4, 0);
  }

  return 0;
}

uint64_t ___ZN2re17CustomAssetLoaderC2EU13block_pointerFPK8__CFDataPKvPP9__CFErrorEU13block_pointerFS5_S3_S8_E_block_invoke_1(re *a1, uint64_t a2, CFErrorRef *a3)
{
  v4 = *re::assetTypesLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Asset decoding failed because no data decoder callback is registered for this custom asset type.", v6, 2u);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    *a3 = CFErrorCreate(0, @"REAssetTypeRegistrationErrorDomain", 3, 0);
  }

  return 0;
}

void re::CustomAssetLoader::~CustomAssetLoader(CFTypeRef *this)
{
  *this = &unk_1F5CB8398;
  CFRelease(this[1]);
  CFRelease(this[2]);
}

{
  *this = &unk_1F5CB8398;
  CFRelease(this[1]);
  CFRelease(this[2]);

  JUMPOUT(0x1E6906520);
}

re *re::CustomAssetLoader::unloadAsset(re *this, void (***a2)(void))
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    (**a2)(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

uint64_t re::CustomAssetLoader::createRuntimeData(uint64_t a1, re::CustomAsset *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v16 = 0;
  v17 = 0;
  v15 = a3;
  v18 = 0;
  if (!re::SeekableInputStreamBufferedReader::readNext(&v15, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = 1;
    goto LABEL_11;
  }

  re::Data::makeDataWithBytesNoCopy(&v14, v16, v17);
  cf = 0;
  v5 = *(a1 + 16);
  v6 = v14;
  v7 = v14;
  v8 = (*(v5 + 16))(v5, v6, &cf);
  if (cf)
  {
    v9 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = cf;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to decode custom asset. Error = %@", buf, 0xCu);
    }

    CFRelease(cf);
  }

  else
  {
    v11 = v8;
    if (v8)
    {
      re::CustomAsset::setRuntimeObject(a2, v8);
      CFRelease(v11);
      v10 = 1;
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:

LABEL_11:
  if (v18)
  {
    (*(*v15 + 24))(v15);
    v18 = 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v19 && v23)
  {
    (*(*v19 + 40))();
  }

  return v10;
}

uint64_t re::CustomAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8))
  {
    v4 = (*(*(a1 + 8) + 16))();
    v5 = v4;
    if (v4)
    {
      BytePtr = CFDataGetBytePtr(v4);
      Length = CFDataGetLength(v5);
      (*(*a2 + 16))(a2, BytePtr, Length);
      CFRelease(v5);
    }
  }

  return 1;
}

uint64_t re::CustomAssetLoader::introspectionType(re::CustomAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE191920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191920))
  {
    qword_1EE191918 = re::internal::getOrCreateInfo("CustomAsset", re::allocInfo_CustomAsset, re::initInfo_CustomAsset, &unk_1EE191910, 0);
    __cxa_guard_release(&qword_1EE191920);
  }

  return qword_1EE191918;
}

void *re::allocInfo_CustomAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_32, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_32))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191928, "CustomAsset");
    __cxa_guard_release(&_MergedGlobals_32);
  }

  return &unk_1EE191928;
}

void re::initInfo_CustomAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x19CE54DEF9F2BBELL;
  v8[1] = "CustomAsset";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_CustomAsset(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::CustomAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CustomAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::CustomAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::CustomAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstructV2<re::CustomAsset>(void *result)
{
  *result = &unk_1F5CB8378;
  result[1] = 0;
  return result;
}

uint64_t zip_entry_data_offset(void **a1)
{
  ((*a1)[1])(**a1, a1[4], 0);
  if (((*a1)[2])(**a1, v4, 30) == 30 && v4[0] == 67324752)
  {
    return a1[4] + v5 + v6 + 30;
  }

  else
  {
    return 0;
  }
}

BOOL zip_entry_is_alignment(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    if (*(a1 + 16) != 7)
    {
      return 0;
    }

    v1 = *v1;
  }

  else if (v2 != 7)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 3);
  return v3 == 1768710446 && v4 == 795764585;
}

uint64_t zip_entry_load_data_begin(void **a1)
{
  if (zip_entry_data_offset(a1))
  {
    operator new();
  }

  return 0;
}

unint64_t zip_entry_load_data_read(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (!a2 || *a3 == 1)
  {
    return v3;
  }

  if (*(a3 + 72))
  {
    v3 = 0;
    part = *(a3 + 104);
    while (1)
    {
      if (!part)
      {
        v8 = *(a3 + 80);
        v9 = *(a3 + 88);
        *(a3 + 96) = v8;
        part = zip_entry_load_part(v8, v9, a3);
        *(a3 + 104) = part;
      }

      v10 = *(a3 + 24) == *(a3 + 32) && *(a3 + 40) + 1 >= ((*(a3 + 56) - *(a3 + 48)) >> 4);
      v11 = v10;
      v18 = *(a3 + 96);
      v19 = part;
      v20 = v3 + a1;
      v21 = a2 - v3;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      reality_compression_process_read_chunk(&v15, *(a3 + 72), &v18, v11);
      v12 = v15;
      if (!v15)
      {
        break;
      }

      v13 = v19;
      *(a3 + 96) = v18;
      *(a3 + 104) = v13;
      v3 += v16;
      if (v12 == 1)
      {
        return v3;
      }

      if (!(part | v16))
      {
        goto LABEL_22;
      }

      part = v13;
      if (v3 >= a2)
      {
        return v3;
      }
    }

    v3 = 0;
LABEL_22:
    *a3 = 1;
    return v3;
  }

  return zip_entry_load_part(a1, a2, a3);
}

unint64_t zip_entry_load_part(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (*(a3 + 32) - v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(a3 + 32) - v5;
  }

  if ((*(*(a3 + 8) + 8))(**(a3 + 8), *(a3 + 24), 0) == *(a3 + 24) && (*(*(a3 + 8) + 16))(**(a3 + 8), a1, v6) == v6)
  {
    *(a3 + 24) += v6;
  }

  else
  {
    v6 = 0;
    *a3 = 1;
  }

  return v6;
}

BOOL zip_entry_offset_is_in_current_chunk(unint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    return 0;
  }

  v4 = *(a2 + 72);
  if (v4[32] != 1)
  {
    goto LABEL_8;
  }

  v5 = v4[27];
  if (v5 - 1 >= 2)
  {
    if (v5 == 4)
    {
      v6 = v4[12];
      return v6 == reality_compression_get_chunk_for_decompressed_offset(v4, a1);
    }

LABEL_8:
    v6 = -1;
    return v6 == reality_compression_get_chunk_for_decompressed_offset(v4, a1);
  }

  v6 = 0;
  return v6 == reality_compression_get_chunk_for_decompressed_offset(v4, a1);
}

uint64_t zip_entry_seek_to_chunk_for_offset(unint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    return -1;
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    v9 = *(a2 + 8);
    *(a2 + 24) = *(a2 + 16);
    if ((*(v9 + 8))(*v9) == *(a2 + 24))
    {
      result = 0;
      *(a2 + 104) = 0;
      return result;
    }

    goto LABEL_8;
  }

  v5 = reality_compression_set_chunk_for_decompressed_offset(v4, a1);
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + 8);
    *(a2 + 24) = (*v5 & 0xFFFFFFFFFFFFFFLL) + *(a2 + 16);
    if ((*(v7 + 8))(*v7) == *(a2 + 24))
    {
      *(a2 + 104) = 0;
      return v6[1] & 0xFFFFFFFFFFFFFFLL;
    }

LABEL_8:
    *a2 = 1;
  }

  return -1;
}

BOOL zip_entry_load_data_end(int *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    reality_compression_stream_end(v2);
    free(*(a1 + 10));
  }

  v3 = *a1;
  v4 = *(a1 + 6);
  if (v4)
  {
    *(a1 + 7) = v4;
    operator delete(v4);
  }

  MEMORY[0x1E6906520](a1, 0x10E0C40677F426DLL);
  return v3 == 0;
}

uint64_t zip_entry_save_data_begin(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 137) = *(*a1 + 137) & 0xFC;
  a1[4] = *(v1 + 48);
  if (zip_write_file_header(a1, *(v1 + 96), 3))
  {
    operator new();
  }

  return 0;
}

void std::vector<chunk_offset_t>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<chunk_offset_t>::__append(result, a2 - v2);
  }
}

uint64_t zip_entry_write_chunk_table(uint64_t a1)
{
  if (*a1 == 1 || *(a1 + 168) == *(a1 + 160))
  {
    return 0;
  }

  (*(**(a1 + 16) + 8))(***(a1 + 16), *(a1 + 128), 0);
  v8 = 1263421507;
  v9 = *(a1 + 152);
  v2 = *(a1 + 168) - *(a1 + 160);
  v3 = v2 + 16;
  if (!((v2 + 16) >> 32) && (v10 = v2 + 16, v4 = **(a1 + 16), v5 = (v4[3])(*v4, &v8, 16), v4[14] += v5, v5 == 16) && (v6 = (v4[3])(*v4, *(a1 + 160), v2), v4[14] += v6, v6 == v2))
  {
    *(a1 + 136) += v3;
  }

  else
  {
    v3 = 0;
    *a1 = 1;
  }

  return v3;
}

uint64_t zip_entry_save_data_write(Bytef *buf, unint64_t len, uint64_t a3)
{
  if (*a3 == 1)
  {
    return 0;
  }

  v8 = crc32(*(*(a3 + 16) + 56), buf, len);
  v9 = *(a3 + 16);
  *(v9 + 56) = v8;
  *(v9 + 40) += len;
  CC_SHA256_Update((a3 + 24), buf, len);
  if (*(a3 + 144))
  {
    v3 = 0;
    while (len > v3)
    {
      v15[0] = &buf[v3];
      v15[1] = len - v3;
      v10 = *(a3 + 200);
      v15[2] = *(a3 + 192);
      v15[3] = v10;
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      reality_compression_process_write_chunk(&v12, 0, *(a3 + 144), v15);
      if (!v12)
      {
        v3 = 0;
        *a3 = 1;
        return v3;
      }

      v11 = v13;
      v3 += *(&v12 + 1);
      if (zip_entry_save_data_part(*(a3 + 192), v13, a3) != v11)
      {
        return 0;
      }
    }

    return v3;
  }

  return zip_entry_save_data_part(buf, len, a3);
}

uint64_t zip_entry_save_data_part(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 8))(**(a3 + 8), *(a3 + 136), 0);
  v6 = *(a3 + 8);
  result = (*(v6 + 24))(*v6, a1, a2);
  *(v6 + 112) += result;
  if (result != a2)
  {
    *a3 = 1;
  }

  *(a3 + 136) += result;
  return result;
}

uint64_t zip_entry_save_data_end(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    goto LABEL_2;
  }

  if (*(a1 + 144))
  {
    while (1)
    {
      v16[0] = 0;
      v16[1] = 0;
      v3 = *(a1 + 200);
      v16[2] = *(a1 + 192);
      v16[3] = v3;
      v19 = 0;
      *md = 0u;
      v18 = 0u;
      reality_compression_process_write_chunk(md, 1, *(a1 + 144), v16);
      v4 = *md;
      if (!*md)
      {
        goto LABEL_2;
      }

      v5 = v18;
      if (zip_entry_save_data_part(*(a1 + 192), v18, a1) != v5)
      {
        goto LABEL_2;
      }

      if (v4 != 2)
      {
        reality_compression_stream_end(*(a1 + 144));
        *(a1 + 144) = 0;
        break;
      }
    }
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    free(v6);
    *(a1 + 192) = 0;
  }

  *(*(a1 + 16) + 48) = *(a1 + 136) - *(a1 + 128);
  CC_SHA256_Final(md, (a1 + 24));
  v7 = *(a1 + 16);
  v8 = *md;
  *(v7 + 76) = v18;
  *(v7 + 60) = v8;
  v9 = *(a1 + 16);
  v10 = (v9 + 8);
  v11 = *(v9 + 31);
  if (v11 < 0)
  {
    v11 = *(v9 + 16);
    if (!v11)
    {
      goto LABEL_17;
    }

    v10 = *v10;
  }

  else if (!*(v9 + 31))
  {
    goto LABEL_17;
  }

  if (*(v10 + v11 - 1) == 47)
  {
    *(v9 + 76) = 0u;
    *(v9 + 60) = 0u;
    v9 = *(a1 + 16);
  }

LABEL_17:
  zip_write_file_header(v9, *(*(a1 + 8) + 96), 3);
  if (*(*(a1 + 16) + 92) < 0 && !zip_entry_write_chunk_table(a1))
  {
LABEL_2:
    v2 = 0;
    goto LABEL_20;
  }

  *(*(a1 + 8) + 48) = *(a1 + 136);
  v2 = 1;
LABEL_20:
  v12 = *(a1 + 144);
  if (v12)
  {
    reality_compression_stream_end(v12);
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 160);
  if (v14)
  {
    *(a1 + 168) = v14;
    operator delete(v14);
  }

  MEMORY[0x1E6906520](a1, 0x10A0C40E1CF86FELL);
  return v2;
}

uint64_t zip_entry_save_data(uint64_t *a1, Bytef *a2, unint64_t a3)
{
  result = zip_entry_save_data_begin(a1);
  if (result)
  {
    v6 = result;
    v7 = zip_entry_save_data_write(a2, a3, result);
    LODWORD(result) = zip_entry_save_data_end(v6);
    if (v7 == a3)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t zip_entry_save_chunk_begin(uint64_t a1, unsigned __int16 a2)
{
  if (*a1 == 1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if ((*(v4 + 92) & 0x80000000) == 0 || (*(a1 + 184) & 1) != 0 || *(a1 + 144) || (v5 = *(a1 + 152), v6 = *(a1 + 160), v5 >= (*(a1 + 168) - v6) >> 4))
  {
    result = 0;
    *a1 = 1;
  }

  else
  {
    v7 = 0;
    v8 = a2 & 0x7FFF;
    if (v8 > 0xD)
    {
      if (v8 == 14)
      {
        v7 = 4;
      }

      else if (v8 == 99)
      {
        v7 = 2;
      }

LABEL_16:
      reality_compression_stream_begin(v7, 0);
    }

    if ((a2 & 0x7FFF) != 0)
    {
      v7 = v8 == 8;
      goto LABEL_16;
    }

    result = 1;
    *(a1 + 184) = 1;
    v9 = (*(a1 + 136) - *(a1 + 128)) & 0xFFFFFFFFFFFFFFLL | ((a2 & 0xFF00) << 48);
    v10 = *(v4 + 40) & 0xFFFFFFFFFFFFFFLL | (a2 << 56);
    *(a1 + 152) = v5 + 1;
    v11 = (v6 + 16 * v5);
    *v11 = v9;
    v11[1] = v10;
  }

  return result;
}

uint64_t zip_entry_save_chunk_end(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if ((*(*(a1 + 16) + 92) & 0x80000000) == 0 || (*(a1 + 184) & 1) == 0)
  {
    goto LABEL_10;
  }

  *(a1 + 184) = 0;
  if (*(a1 + 144))
  {
    while (1)
    {
      v11[0] = 0;
      v11[1] = 0;
      v3 = *(a1 + 200);
      v11[2] = *(a1 + 192);
      v11[3] = v3;
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      reality_compression_process_write_chunk(&v8, 1, *(a1 + 144), v11);
      v4 = v8;
      if (!v8)
      {
        break;
      }

      v5 = v9;
      if (zip_entry_save_data_part(*(a1 + 192), v9, a1) != v5)
      {
        break;
      }

      v2 = 1;
      if (v4 != 2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v2 = 0;
    *a1 = 1;
    goto LABEL_11;
  }

  v2 = 1;
LABEL_11:
  v6 = *(a1 + 144);
  if (v6)
  {
    reality_compression_stream_end(v6);
    *(a1 + 144) = 0;
  }

  return v2;
}

void std::vector<chunk_offset_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

id *re::internal::EngineQueueCheck::init(void *key, dispatch_queue_t *a2)
{
  dispatch_queue_set_specific(*a2, key, key, 0);

  return re::ObjCObject::operator=(key, a2);
}

void **re::internal::EngineQueueCheck::deinit(dispatch_queue_t *this)
{
  dispatch_queue_set_specific(*this, this, 0, 0);

  return re::ObjCObject::operator=(this, 0);
}

void *re::allocInfo_FrameworkLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_33, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_33))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1919D8, "FrameworkLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_33);
  }

  return &unk_1EE1919D8;
}

void re::initInfo_FrameworkLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x1FF348E7C469717ALL;
  v16[1] = "FrameworkLoadDescriptorParameters";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1919C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1919C0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "framework";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1919C8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "resource";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1919D0 = v14;
    __cxa_guard_release(&qword_1EE1919C0);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1919C8;
  *(this + 9) = re::internal::defaultConstruct<re::FrameworkLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FrameworkLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::FrameworkLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::FrameworkLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::FrameworkLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a3 + 2;

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::FrameworkLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::FrameworkLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v3 = (a1 + 32);

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::FrameworkLoadDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

_anonymous_namespace_ *re::FrameworkAssetProvider::FrameworkAssetProvider(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 3) = 0;
  *a1 = &unk_1F5CB8578;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v12)
    {
      re::introspect<re::FrameworkLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("FrameworkLoadDescriptorParameters", re::allocInfo_FrameworkLoadDescriptorParameters, re::initInfo_FrameworkLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::FrameworkLoadDescriptorParameters>, 0);
      v10 = &unk_1EE187000;
    }
  }

  re::FrameworkAssetProvider::s_loadDescriptorParametersIntrospect = v10[173];
  *(a1 + 3) = a3;
  *(a1 + 4) = a4;
  *(a1 + 5) = a2;
  *(a1 + 6) = a5;
  return a1;
}

void re::FrameworkAssetProvider::~FrameworkAssetProvider(re::FrameworkAssetProvider *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::FrameworkAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X1>, re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v20 = "Framework";
  v21 = 9;
  re::DynamicString::operator=(a4, &v20);
  v9 = re::DynamicString::operator=((a4 + 112), a3);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v10 = re::DynamicString::setCapacity(&v20, 0);
  *(&v24 + 1) = 0;
  v25 = 0uLL;
  re::DynamicString::setCapacity(&v24, 0);
  re::DynamicString::operator=(&v20, a1);
  re::DynamicString::operator=(&v24, a2);
  re::DynamicString::DynamicString(v18, &v20);
  re::DynamicString::DynamicString(v19, &v24);
  re::AssetLoadDescriptor::setIntrospectableData(a4, re::FrameworkAssetProvider::s_loadDescriptorParametersIntrospect, v18, 0);
  if (v19[0])
  {
    if (v19[1])
    {
      (*(*v19[0] + 40))();
    }

    memset(v19, 0, sizeof(v19));
  }

  if (*&v18[0])
  {
    if (BYTE8(v18[0]))
    {
      (*(**&v18[0] + 40))();
    }

    memset(v18, 0, sizeof(v18));
  }

  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v24, v25, v11, v12, v13, v14, v15, v16);
    }

    v24 = 0u;
    v25 = 0u;
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))(v20, v22, v11, v12, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t re::FrameworkAssetProvider::recoverAssetPath(re::FrameworkAssetProvider *this, const re::AssetLoadDescriptor *a2, int a3)
{
  if (*(a2 + 1))
  {
    v6 = *(a2 + 2);
  }

  else
  {
    v6 = a2 + 9;
  }

  result = strcmp(v6, "Framework");
  if (result)
  {
LABEL_5:
    *this = 0;
    return result;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v8 = re::DynamicString::setCapacity(&v21, 0);
  *(&v25 + 1) = 0;
  v26 = 0uLL;
  re::DynamicString::setCapacity(&v25, 0);
  if (!re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(a2, &v21, 0))
  {
    goto LABEL_38;
  }

  v10 = v23;
  v11 = v22 & 1;
  if (v22)
  {
    v12 = v23;
  }

  else
  {
    v12 = &v22 + 1;
  }

  if (!re::isEngineFrameworkIdentifier(v12, v9))
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    if (!strcmp(v12, "com.apple.SystemEnvironments"))
    {
      re::Defaults::BOOLValue(&v18, "allowAssetReferencesToSysEnvFramework", v15);
      if (v18 == 1 && (v18 & 0x100) != 0)
      {
        v10 = v23;
        v11 = v22 & 1;
        goto LABEL_24;
      }
    }

    else if (!strcmp(v12, "com.apple.vfx") || !strcmp(v12, "com.apple.VFXAssets"))
    {
LABEL_24:
      if (v11)
      {
        v16 = v10;
      }

      else
      {
        v16 = &v22 + 1;
      }

      if (BYTE8(v25))
      {
        v17 = v26;
      }

      else
      {
        v17 = &v25 + 9;
      }

      re::DynamicString::format(&v18, "framework:%s/%s", v13, v16, v17);
      goto LABEL_31;
    }

LABEL_38:
    if (v25)
    {
      if (BYTE8(v25))
      {
        (*(*v25 + 40))();
      }

      v25 = 0u;
      v26 = 0u;
    }

    result = v21;
    if (v21 && (v22 & 1) != 0)
    {
      result = (*v21)[5]();
    }

    goto LABEL_5;
  }

  if (BYTE8(v25))
  {
    v14 = v26;
  }

  else
  {
    v14 = &v25 + 9;
  }

  re::DynamicString::format(&v18, "engine:%s", v13, v14);
LABEL_31:
  *this = 1;
  *(this + 1) = v18;
  *(this + 4) = v20;
  *(this + 1) = v19;
  if (v25)
  {
    if (BYTE8(v25))
    {
      (*(*v25 + 40))();
    }

    v25 = 0u;
    v26 = 0u;
  }

  result = v21;
  if (v21)
  {
    if (v22)
    {
      return (*v21)[5]();
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString ***a2, re::Allocator *a3)
{
  v5 = a2;
  v6 = &unk_1EE187000;
  {
    v13 = a1;
    v12 = a3;
    v6 = &unk_1EE187000;
    v5 = a2;
    a3 = v12;
    v10 = v9;
    a1 = v13;
    if (v10)
    {
      re::introspect<re::FrameworkLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("FrameworkLoadDescriptorParameters", re::allocInfo_FrameworkLoadDescriptorParameters, re::initInfo_FrameworkLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::FrameworkLoadDescriptorParameters>, 0);
      v6 = &unk_1EE187000;
      a1 = v13;
      v5 = a2;
      a3 = v12;
    }
  }

  v7 = *(v6 + 173);

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v7, v5, a3);
}

uint64_t re::FrameworkAssetProvider::isEngineAssetDescriptor(re::FrameworkAssetProvider *this, const re::AssetLoadDescriptor *a2)
{
  if (*(this + 1))
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = this + 9;
  }

  v4 = strcmp(v3, "Framework");
  if (v4)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::DynamicString::setCapacity(&v9, 0);
  *(&v13 + 1) = 0;
  v14 = 0uLL;
  re::DynamicString::setCapacity(&v13, 0);
  if (!re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(this, &v9, 0) || ((v10 & 1) != 0 ? (v8 = v11) : (v8 = (&v10 + 1)), !re::isEngineFrameworkIdentifier(v8, v7)))
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

    if (v9 && (v10 & 1) != 0)
    {
      (*v9)[5]();
    }

    return 0;
  }

  if (v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v13 = 0u;
    v14 = 0u;
  }

  if (v9)
  {
    if (v10)
    {
      (*v9)[5]();
    }
  }

  return 1;
}

re::DynamicString *re::FrameworkAssetProvider::load@<X0>(re::internal::AssetTypeRegistry **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  v9 = strcmp(v8, "Framework");
  if (v9)
  {
    v10 = "FrameworkAssetProvider called with invalid scheme name.";
LABEL_6:
    v12 = v69;
    v13 = v70;
    v14 = v71;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
    return result;
  }

  v15 = this + 3;
  if (*(a2 + 120))
  {
    v16 = *(a2 + 16);
  }

  else
  {
    v16 = a2 + 121;
  }

  v17 = re::internal::AssetTypeRegistry::assetTypeWithName(this[3], v16);
  if (!v17)
  {
    v10 = "Unknown asset type";
    goto LABEL_6;
  }

  v18 = v17;
  *(&v69 + 1) = 0;
  v70 = 0;
  v71 = 0;
  v19 = re::DynamicString::setCapacity(&v69, 0);
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  re::DynamicString::setCapacity(&v72, 0);
  Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(a2, &v69, 0);
  if (Descriptor)
  {
    v21 = this[6];
    re::DynamicString::DynamicString(v67, &v69);
    re::BundleFilePathRegistry::findWithBundleID(v21, v67, &v68);
    v22 = v67[0];
    if (v67[0])
    {
      if (v67[1])
      {
        v22 = (*(*v67[0] + 40))();
      }

      memset(v67, 0, 32);
    }

    if (!v68)
    {
      v44 = (BYTE8(v69) & 1) != 0 ? v70 : &v69 + 9;
      v22 = strcmp(v44, "com.apple.vfx");
      if (v22)
      {
        goto LABEL_46;
      }

      v53 = this[6];
      re::BundleFilePathRegistry::findWithBundleID(v53, v66, v56);
      v54 = *v56;
      *v56 = 0;
      v55 = v68;
      v68 = v54;

      v22 = v66[0];
      if (v66[0])
      {
        if (v66[1])
        {
          v22 = (*(*v66[0] + 40))();
        }

        memset(v66, 0, sizeof(v66));
      }

      if (!v68)
      {
LABEL_46:
        re::DynamicString::operator+(v56, &v61, &v69);
        v45 = *v56;
        memset(v56, 0, sizeof(v56));
        v46 = *&v56[16];
        v47 = v57;
        v57 = 0;
        *a4 = 0;
        *(a4 + 8) = v45;
        *(a4 + 24) = v46;
        *(a4 + 32) = v47;
        v48 = v61;
        if (!v61 || (v62 & 1) == 0)
        {
          goto LABEL_58;
        }

        v49 = v63;
        goto LABEL_57;
      }
    }

    v65 = 0u;
    v64 = 0u;
    re::DynamicString::setCapacity(&v64, 0);
    v24 = v73;
    v25 = BYTE8(v72) & 1;
    if (BYTE8(v72))
    {
      v26 = v73;
    }

    else
    {
      v26 = (&v72 + 9);
    }

    v27 = re::path::ext(v26, v23);
    if (strlen(v27) >= 2 && v18[1] != (v27 + 1))
    {
      re::DynamicString::DynamicString(v56, &v72);
      re::DynamicString::append(v56, ".", 1uLL);
      v28 = strlen(v18[1]);
      re::DynamicString::append(v56, v18[1], v28);
      if (v56[8])
      {
        v29 = *&v56[16];
      }

      else
      {
        v29 = &v56[9];
      }

      v31 = re::Bundle::pathForResource(&v68, v29, &v64);
      if (*v56 && (v56[8] & 1) != 0)
      {
        (*(**v56 + 40))();
      }

      if (v31)
      {
        goto LABEL_35;
      }

      v24 = v73;
      v25 = BYTE8(v72) & 1;
    }

    if (v25)
    {
      v32 = v24;
    }

    else
    {
      v32 = &v72 + 9;
    }

    v33 = re::Bundle::pathForResource(&v68, v32, &v64);
    if (!v33)
    {
      re::DynamicString::operator+(v56, &v61, &v72);
      v50 = *v56;
      memset(v56, 0, sizeof(v56));
      v51 = *&v56[16];
      v52 = v57;
      v57 = 0;
      *a4 = 0;
      *(a4 + 8) = v50;
      *(a4 + 24) = v51;
      *(a4 + 32) = v52;
      if (v61 && (v62 & 1) != 0)
      {
        (*(*v61 + 40))();
      }

      goto LABEL_54;
    }

LABEL_35:
    if (BYTE8(v69))
    {
      v34 = v70;
    }

    else
    {
      v34 = (&v69 + 9);
    }

    isEngineFrameworkIdentifier = re::isEngineFrameworkIdentifier(v34, v30);
    v60[0] = 0;
    LocalCompiledOrSourceAsset = re::AssetUtilities::loadLocalCompiledOrSourceAsset(&v64, v15, v18, a3, v60, isEngineFrameworkIdentifier, &v61);
    if (v61)
    {
      *&v56[8] = 0;
      *&v56[16] = 0;
      v57 = 0;
      re::DynamicString::setCapacity(v56, 0);
      LOBYTE(v59) = 0;
      BYTE8(v59) = 0;
      v58 = v62;
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v58 + 1, v63);
      re::DynamicString::operator=(v56, (a2 + 112));
      v37 = *v56;
      v38 = *&v56[16];
      v39 = v57;
      v40 = v58;
      *(a4 + 56) = v59;
      *a4 = 1;
      *(a4 + 8) = v37;
      *(a4 + 24) = v38;
      *(a4 + 32) = v39;
      *(a4 + 40) = v40;
    }

    else
    {
      re::DynamicString::DynamicString(v56, &v62);
      *a4 = 0;
      *(a4 + 8) = *v56;
      *(a4 + 32) = v57;
      *(a4 + 16) = *&v56[8];
    }

    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v61);
LABEL_54:
    v48 = v64;
    if (!v64 || (BYTE8(v64) & 1) == 0)
    {
      goto LABEL_58;
    }

    v49 = v65;
LABEL_57:
    (*(*v48 + 40))(v48, v49);
LABEL_58:

    goto LABEL_59;
  }

  v41 = *v56;
  v42 = *&v56[16];
  v43 = v57;
  *a4 = 0;
  *(a4 + 8) = v41;
  *(a4 + 24) = v42;
  *(a4 + 32) = v43;
LABEL_59:
  if (v72)
  {
    if (BYTE8(v72))
    {
      (*(*v72 + 40))();
    }

    v72 = 0u;
    v73 = 0u;
  }

  result = v69;
  if (v69)
  {
    if (BYTE8(v69))
    {
      return (*(*v69 + 40))();
    }
  }

  return result;
}

uint64_t *re::FrameworkAssetProvider::resolveChild@<X0>(const re::AssetLoadDescriptor *a1@<X1>, re::AssetProvider *a2@<X2>, const char *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 2);
  }

  else
  {
    v8 = a1 + 9;
  }

  v9 = strcmp(v8, "Framework");
  if (v9)
  {
    result = re::DynamicString::format(&v31, "Scheme %s does not match scheme %s.", v10, v8, "Framework");
    v12 = v31;
    v13 = v32;
    v14 = v33;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v15 = re::DynamicString::setCapacity(&v44, 0);
    *(&v48 + 1) = 0;
    v49 = 0uLL;
    re::DynamicString::setCapacity(&v48, 0);
    v16 = re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(a1, &v44, 0);
    if (v16)
    {
      if (BYTE8(v48))
      {
        v17 = v49;
      }

      else
      {
        v17 = (&v48 + 9);
      }

      v18 = re::AssetProvider::resolveChildPath(&v42, a2, v17);
      re::FrameworkAssetProvider::makeDescriptor(&v44, &v42, v30, &v31);
      v19 = v31;
      *(a4 + 48) = v34;
      v20 = v37;
      *(a4 + 72) = v36;
      v31 = 0u;
      v21 = v32;
      v22 = v33;
      v32 = 0;
      v23 = *(&v33 + 1);
      v33 = 0u;
      ++v35;
      ++v38;
      v24 = v41;
      v25 = v40;
      v41 = 0u;
      v40 = 0;
      *a4 = 1;
      *(a4 + 24) = v21;
      *(a4 + 32) = v22;
      *(a4 + 8) = v19;
      *(a4 + 40) = v23;
      v34 = 0u;
      *(a4 + 64) = 1;
      v36 = 0u;
      v37 = 0u;
      *(a4 + 88) = v20;
      *(a4 + 104) = 1;
      v26 = v39;
      v39 = 0u;
      *(a4 + 112) = v26;
      *(a4 + 136) = v24;
      *(a4 + 128) = v25;
      if (*&v30[0])
      {
        if (BYTE8(v30[0]))
        {
          (*(**&v30[0] + 40))();
        }

        memset(v30, 0, sizeof(v30));
      }

      if (v42 && (v43 & 1) != 0)
      {
        (*(*v42 + 40))();
      }
    }

    else
    {
      v27 = v31;
      v28 = v32;
      v29 = v33;
      *a4 = 0;
      *(a4 + 8) = v27;
      *(a4 + 24) = v28;
      *(a4 + 32) = v29;
    }

    if (v48)
    {
      if (BYTE8(v48))
      {
        (*(*v48 + 40))();
      }

      v48 = 0u;
      v49 = 0u;
    }

    result = v44;
    if (v44)
    {
      if (v45)
      {
        return (*(*v44 + 5))();
      }
    }
  }

  return result;
}

uint64_t *re::FrameworkAssetProvider::getDescription(re::FrameworkAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v5 = re::DynamicString::setCapacity(&v10, 0);
  *(&v14 + 1) = 0;
  v15 = 0uLL;
  re::DynamicString::setCapacity(&v14, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::FrameworkLoadDescriptorParameters>(a2, &v10, 0))
  {
    v6 = re::DynamicString::operator=(a3, &v10);
    re::DynamicString::append(v6, "/", 1uLL);
    if (BYTE8(v14))
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 9;
    }

    if (BYTE8(v14))
    {
      v8 = *(&v14 + 1) >> 1;
    }

    else
    {
      v8 = BYTE8(v14) >> 1;
    }

    re::DynamicString::append(a3, v7, v8);
  }

  else
  {
    v16[0] = "mangled";
    v16[1] = 7;
    re::DynamicString::operator=(a3, v16);
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

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 5))();
    }
  }

  return result;
}

uint64_t re::FrameworkAssetProvider::isDeviceAssetForRelease(uint64_t a1, const re::AssetLoadDescriptor *a2)
{
  re::FrameworkAssetProvider::recoverAssetPath(v4, a2, 1);
  v2 = v4[0];
  if (v4[0] == 1 && v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return v2;
}

__n128 re::FrameworkAssetProvider::getAssetPathForRelease@<Q0>(const re::AssetLoadDescriptor *a1@<X1>, re::internal::AssetTypeRegistry *a2@<X2>, unsigned int a3@<W4>, uint64_t a4@<X8>)
{
  v8 = re::FrameworkAssetProvider::recoverAssetPath(v19, a1, a3 - 10 < 0xFFFFFFF5);
  v9 = v19[0];
  if (v19[0] == 1)
  {
    if (a3 <= 9)
    {
      if (*(a1 + 15))
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1 + 121;
      }

      v11 = re::internal::AssetTypeRegistry::assetTypeWithName(a2, v10);
      re::AssetPath::updateWithCompiledExtension(&v20, v11);
      v9 = v19[0];
    }

    result = v20;
    v13 = v21;
    v20 = 0u;
    v21 = 0u;
    *a4 = 1;
    *(a4 + 8) = result;
    *(a4 + 24) = v13;
    if (v9 & 1) != 0 && v20.n128_u64[0] && (v20.n128_u8[8])
    {
      (*(*v20.n128_u64[0] + 40))();
    }
  }

  else
  {
    result = v16;
    v14 = v17;
    v15 = v18;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v14;
    *(a4 + 32) = v15;
  }

  return result;
}

uint64_t re::FrameworkAssetProvider::makeDescriptorFromAssetPath@<X0>(re::FrameworkAssetProvider *this@<X0>, const re::AssetPath *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **(a2 + 9);
  re::FrameworkAssetProvider::makeDescriptor((a2 + 8), (a2 + 40), &v10, &v12);
  *a3 = 1;
  *(a3 + 8) = v12;
  v12 = 0;
  v6 = v14;
  *(a3 + 16) = v13;
  *(a3 + 48) = v15;
  v7 = v18;
  *(a3 + 72) = v17;
  v14 = 0u;
  v13 = 0u;
  *(a3 + 32) = v6;
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
  v8 = v23;
  *(a3 + 136) = v22;
  *(a3 + 144) = v8;
  v22 = 0;
  v23 = 0;
  *(a3 + 128) = v21;
  v21 = 0;
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

uint64_t re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(uint64_t a1)
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
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

double zip_file_create(const char *a1)
{
  if (fopen(a1, "wb+"))
  {
    operator new();
  }

  return result;
}

uint64_t zip_file_open(const char *a1)
{
  if (fopen(a1, "rb"))
  {
    operator new();
  }

  return 0;
}

uint64_t zip_file_read(FILE *__stream)
{
  if (__stream)
  {
    __ptr = 0;
    if (fread(&__ptr, 1uLL, 2uLL, __stream) == 2)
    {
      fseek(__stream, 0, 0);
      if (__ptr == 80 || HIBYTE(__ptr) == 75)
      {
        operator new();
      }
    }
  }

  return 0;
}

void *re::allocInfo_NamedAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_34, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_34))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191A98, "NamedAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_34);
  }

  return &unk_1EE191A98;
}

void re::initInfo_NamedAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x52794AE899614E6CLL;
  v12[1] = "NamedAssetLoadDescriptorParameters";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE191A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191A78))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "assetName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE191A70 = v10;
    __cxa_guard_release(&qword_1EE191A78);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE191A70;
  *(this + 9) = re::internal::defaultConstruct<re::NamedAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NamedAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::NamedAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::NamedAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void *re::internal::defaultConstruct<re::NamedAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::NamedAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

re::NamedAssetProvider *re::NamedAssetProvider::NamedAssetProvider(re::NamedAssetProvider *this, const re::internal::AssetTypeRegistry *a2, const re::AssetCompilerRegistry *a3, const re::AssetProviderRegistry *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CB8618;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE191A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191A90))
  {
    qword_1EE191A88 = re::internal::getOrCreateInfo("NamedAssetLoadDescriptorParameters", re::allocInfo_NamedAssetLoadDescriptorParameters, re::initInfo_NamedAssetLoadDescriptorParameters, &unk_1EE191A80, 0);
    __cxa_guard_release(&qword_1EE191A90);
  }

  re::NamedAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE191A88;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 3) = a2;
  return this;
}

void re::NamedAssetProvider::~NamedAssetProvider(re::NamedAssetProvider *this)
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

uint64_t *re::NamedAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
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
  v12 = "NamedAsset";
  v13 = 10;
  re::DynamicString::operator=(a3, &v12);
  v7 = re::DynamicString::operator=((a3 + 112), a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::operator=(&v12, a1);
  re::DynamicString::DynamicString(v11, &v12);
  re::AssetLoadDescriptor::setIntrospectableData(a3, re::NamedAssetProvider::s_loadDescriptorParametersIntrospect, v11, 0);
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

__n128 re::NamedAssetProvider::load@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

__n128 re::NamedAssetProvider::resolveChild@<Q0>(re::NamedAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t *re::NamedAssetProvider::getDescription(re::NamedAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::DynamicString::setCapacity(&v9, 0);
  if ((atomic_load_explicit(&qword_1EE191A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191A90))
  {
    qword_1EE191A88 = re::internal::getOrCreateInfo("NamedAssetLoadDescriptorParameters", re::allocInfo_NamedAssetLoadDescriptorParameters, re::initInfo_NamedAssetLoadDescriptorParameters, &unk_1EE191A80, 0);
    __cxa_guard_release(&qword_1EE191A90);
  }

  IntrospectableData = re::AssetLoadDescriptor::getIntrospectableData(a2, qword_1EE191A88, &v9, 0);
  if (IntrospectableData)
  {
    re::DynamicString::operator=(a3, &v9);
  }

  else
  {
    v6 = *re::assetsLogObjects(IntrospectableData);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 8))
      {
        v8 = *(a2 + 2);
      }

      else
      {
        v8 = a2 + 9;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "NamedAssetProvider Failed to get introspectable data for %s", &buf, 0xCu);
    }

    *&buf = "mangled";
    *(&buf + 1) = 7;
    re::DynamicString::operator=(a3, &buf);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 5))();
    }
  }

  return result;
}

uint64_t *re::AssetAPIUtilities::copyToPropertyBag@<X0>(re::AssetAPIUtilities *this@<X0>, uint64_t x8_0@<X8>)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = *(*(v5 + 24) + 1808);
  v11[0] = *(v5 + 280);
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, v11);
  (*(**v7 + 128))(*v7);
  v8 = (*(**v7 + 128))();
  re::AssetHandle::serializableAsset(v11, this);
  re::PropertyBagHelper::makeWithIntrospectedData(v8, v11[0], 0, x8_0, v9);
  return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v11);
}

uint64_t re::AssetAPIUtilities::loadFromPropertyBag(_anonymous_namespace_ *a1, id *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(v4 + 280);
  v6 = *(v4 + 24);
  if (!v5)
  {
    v16 = *re::assetsLogObjects(v7);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v17 = re::AssetHandle::assetInfo(a1);
    if (v17[17])
    {
      v18 = v17[18];
    }

    else
    {
      v18 = v17 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v18;
    v19 = "loadFromPropertyBag asset doesn't have a type '%s'";
LABEL_16:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    return 0;
  }

  v8 = *(*(v4 + 24) + 1808);
  *buf = v5;
  v9 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v8, buf);
  (*(**v9 + 128))(*v9);
  v10 = *v9;
  v11 = (*(*v10 + 128))(v10);
  re::AssetHandle::internalForceUnloadAsync(a1);
  v12 = (*(*v10 + 136))(v10);
  v23 = *a2;

  if ((v13 & 1) == 0)
  {
    v16 = *re::assetsLogObjects(v14);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v21 = re::AssetHandle::assetInfo(a1);
    if (v21[17])
    {
      v22 = v21[18];
    }

    else
    {
      v22 = v21 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v22;
    v19 = "copyToIntrospectedData failed on '%s'";
    goto LABEL_16;
  }

  v15 = 1;
  re::AssetManager::setAssetPointerForExistingAsset(v6, v12, a1, 0, 1);
  return v15;
}

void re::AssetManager::assetHandle(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 32);
  if (!*(a2 + 16))
  {
LABEL_28:
    uuid_generate_random(&v21);
    v12 = ((*(&v21 + 1) + (v21 << 6) + (v21 >> 2) - 0x61C8864680B583E9) ^ v21);
    goto LABEL_29;
  }

  v6 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[58], *(a2 + 32));
  v7 = *(a2 + 16);
  if (v7 >= 2)
  {
    v8 = 1;
    v9 = 144;
    while (1)
    {
      v10 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::tryGet(&a1[58], (*(a2 + 32) + v9));
      if (v6 | v10)
      {
        if (!v6 || !v10 || *v6 != *v10)
        {
          break;
        }
      }

      ++v8;
      v7 = *(a2 + 16);
      v9 += 144;
      if (v8 >= v7)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = v10;
    }

    v17 = *v16;
    v18 = *re::assetsLogObjects(v10);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LODWORD(v21) = 134217984;
    *(&v21 + 4) = v17;
    v19 = "Can't create a new asset with the requested asset descriptors. An existing asset (%llu) matches some, but not all, of the the asset descriptors.";
    goto LABEL_32;
  }

LABEL_9:
  if (!v6)
  {
    if (v7)
    {
      v13 = *(a2 + 32);
      v14 = 144 * v7;
      while (1)
      {
        v15 = (*(v13 + 1) & 1) != 0 ? *(v13 + 2) : v13 + 9;
        if (!strcmp(v15, "NetworkAsset"))
        {
          break;
        }

        v13 = (v13 + 144);
        v14 -= 144;
        if (!v14)
        {
          goto LABEL_28;
        }
      }

      re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(v13, &v21, 0);
      v12 = v21;
      if (v21)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  *&v21 = *v6;
  v11 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&a1[46], &v21);
  if (*(v11 + 2) == *(a2 + 16))
  {
    v12 = *v6;
LABEL_29:
    re::AssetManager::assetHandle_assetTablesLocked(a1, a2, v12, &v21);
    *a3 = 1;
    *(a3 + 8) = v21;
    v21 = 0uLL;
    *(a3 + 24) = v22;
    v22 = 0;
    re::AssetHandle::~AssetHandle(&v21);
    goto LABEL_30;
  }

  v18 = *re::assetsLogObjects(v11);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = *v6;
    LODWORD(v21) = 134217984;
    *(&v21 + 4) = v20;
    v19 = "Can't create a new asset with the requested asset descriptors (registeredDescriptors size does not match loadDescriptors's). An existing asset (%llu) matches some, but not all, of the the asset descriptors.";
LABEL_32:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, &v21, 0xCu);
  }

LABEL_26:
  *a3 = 0;
LABEL_30:
  os_unfair_lock_unlock(a1 + 32);
}

BOOL re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::contains(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 ? *(v3 + 792) : 0;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v6 = *(*(a1 + 8) + 4 * ((v4 ^ (v5 >> 31) ^ v5) % v2));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  do
  {
    v9 = *(v8 + 40 * v6 + 24);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v6 = *(v8 + 40 * v6 + 8) & 0x7FFFFFFF;
  }

  while (v6 != 0x7FFFFFFF);
  return result;
}

re::AssetHandle *re::DynamicArray<re::AssetHandle>::add(_anonymous_namespace_ *this, re::AssetHandle *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AssetHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::AssetHandle::AssetHandle((*(this + 4) + 24 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::AssetManager::getAssetDependenciesFromAssetProvidersRecursive(uint64_t a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, re::AssetHandle *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 2);
  v12 = re::AssetHandle::assetInfo(a4);
  if (v12[10] == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12[10];
  }

  os_unfair_lock_lock((a1 + 128));
  *&v57 = v13;
  v14 = &v57;
  v15 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 184, &v57);
  if (v15)
  {
    LOBYTE(v57) = 1;
    re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(&v57 + 8, v15);
  }

  else
  {
    LOBYTE(v57) = 0;
  }

  os_unfair_lock_unlock((a1 + 128));
  if (v57 != 1 || !*(&v58 + 1))
  {
    re::DynamicString::format(v64, "Failed to find AssetLoadDescriptors registered for assetId %llu.", v16, v13);
    if (v64[8])
    {
      v18 = *&v64[16];
    }

    else
    {
      v18 = &v64[9];
    }

    re::WrappedError::make(buf, @"REAssetRefErrorDomain", 4, v18);
    v14 = *buf;
    *buf = 0;

    if (*v64 && (v64[8] & 1) != 0)
    {
      (*(**v64 + 40))();
    }

    v17 = 0;
    goto LABEL_19;
  }

  if (*(&v58 + 1) != 1 && (a5 & 1) != 0)
  {
    v17 = 1;
    goto LABEL_19;
  }

  HIDWORD(v49) = a5;
  v52 = 0;
  v22 = *(&v59 + 1);
  v23 = *(&v59 + 1) + 144 * *(&v58 + 1);
  location = 0;
  v50 = a6;
  v51 = v23;
  while (1)
  {
    v24 = (*(v22 + 8) & 1) != 0 ? *(v22 + 16) : (v22 + 9);
    ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(*(a1 + 1904), v24);
    if (ProviderForScheme)
    {
      break;
    }

    v37 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v22 + 8))
      {
        v38 = *(v22 + 16);
      }

      else
      {
        v38 = v22 + 9;
      }

      *v64 = 136315138;
      *&v64[4] = v38;
      _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "Failed to find a registered AssetProvider for scheme %s.", v64, 0xCu);
    }

LABEL_87:
    v22 += 144;
    if (v22 == v23)
    {
      if ((v52 & 1) == 0)
      {
        a5 = HIDWORD(v49);
        v14 = v53;
        goto LABEL_96;
      }

      v17 = 1;
LABEL_94:
      a5 = HIDWORD(v49);
      v14 = v53;
      goto LABEL_99;
    }
  }

  v55[2] = 0;
  v55[3] = 0;
  v55[1] = *(a1 + 1808);
  (*(*ProviderForScheme + 88))(v64);
  if ((v64[0] & 1) == 0)
  {
    Domain = CFErrorGetDomain(*&v64[8]);
    if (CFStringCompare(Domain, @"REAssetProviderErrorDomain", 0) || [*&v64[8] code] != 1)
    {
      if (*(v22 + 8))
      {
        v41 = *(v22 + 16);
      }

      else
      {
        v41 = v22 + 9;
      }

      re::DynamicString::format(buf, "AssetProvider for scheme '%s' encountered an error while trying to get dependencies for an asset load descriptor.", v40, v41);
      if (buf[8])
      {
        v42 = v63;
      }

      else
      {
        v42 = &buf[9];
      }

      v54 = *&v64[8];
      re::WrappedError::make(0x1F5D31B70, 4, v42, &v54, v55);

      v43 = *buf;
      if (*buf && (buf[8] & 1) != 0)
      {
        v43 = (*(**buf + 40))();
      }

      v44 = *re::assetsLogObjects(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = re::WrappedError::localizedDescription(v55);
        *buf = 136315138;
        *&buf[4] = v45;
        _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      if (!location)
      {
        re::ObjCObject::operator=(&location, v55);
      }
    }

LABEL_77:
    v36 = 3;
    goto LABEL_80;
  }

  if (!*&v64[24])
  {
    goto LABEL_77;
  }

  v26 = v65;
  v27 = v65 + 40 * *&v64[24];
  while (1)
  {
    re::AssetManager::assetHandle(a1, v26, buf);
    v28 = buf[0];
    if ((buf[0] & 1) == 0)
    {
      re::WrappedError::make(v55, @"REAssetRefErrorDomain", 4, "Failed to make an AssetHandle for dependency AssetLoadDescriptors.");
      v53 = v55[0];
      v55[0] = 0;

      goto LABEL_53;
    }

    if (!re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::contains(a3, &buf[8]))
    {
      re::DynamicArray<re::AssetHandle>::add(a2, &buf[8]);
      if (v63)
      {
        v29 = *(v63 + 792);
      }

      else
      {
        v29 = 0;
      }

      v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v63 ^ (v63 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v63 ^ (v63 >> 30))) >> 27));
      v31 = v29 ^ (v30 >> 31) ^ v30;
      v32 = *(a3 + 24);
      if (!v32)
      {
        LODWORD(v33) = 0;
LABEL_52:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(a3, v33, v31, &buf[8], &buf[8]);
        ++*(a3 + 40);
        goto LABEL_53;
      }

      v33 = v31 % v32;
      v34 = *(*(a3 + 8) + 4 * (v31 % v32));
      if (v34 == 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      v35 = *(a3 + 16);
      while (*(v35 + 40 * v34 + 24) != v63)
      {
        v34 = *(v35 + 40 * v34 + 8) & 0x7FFFFFFF;
        if (v34 == 0x7FFFFFFF)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_53:
    if (buf[0] == 1)
    {
      re::AssetHandle::~AssetHandle(&buf[8]);
    }

    if ((v28 & 1) == 0)
    {
      break;
    }

    v26 += 40;
    if (v26 == v27)
    {
      v36 = 2;
      v52 = 1;
      goto LABEL_79;
    }
  }

  v52 = 1;
  v36 = 1;
LABEL_79:
  a6 = v50;
  v23 = v51;
LABEL_80:
  if (v64[0] == 1)
  {
    re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v64[8]);
  }

  else
  {
  }

  if (v36 == 3)
  {
    goto LABEL_87;
  }

  if (v36 != 2)
  {
    v17 = 0;
    goto LABEL_94;
  }

  a5 = HIDWORD(v49);
  v14 = v53;
  if (v52)
  {
LABEL_98:
    v17 = 1;
    goto LABEL_99;
  }

LABEL_96:
  if (!location)
  {
    goto LABEL_98;
  }

  *buf = location;
  re::WrappedError::make(0x1F5D31B70, 4, "At least one AssetProvider encountered an error while trying to get asset dependencies, and no AssetProvider succeeded.", buf, v64);
  v14 = *v64;
  *v64 = 0;

  v17 = 0;
LABEL_99:

LABEL_19:
  if (v57 == 1)
  {
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v57 + 8);
  }

  if (v17)
  {
    v19 = *(a2 + 2);
    if (v11 >= v19)
    {
LABEL_27:
      *a6 = 1;
    }

    else
    {
      v20 = 24 * v11;
      while (1)
      {
        v21 = *(a2 + 2);
        if (v21 <= v11)
        {
          *buf = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v46 = MEMORY[0x1E69E9C10];
          v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v64 = 136315906;
          *&v64[4] = "operator[]";
          *&v64[12] = 1024;
          if (v47)
          {
            v48 = 3;
          }

          else
          {
            v48 = 2;
          }

          *&v64[14] = 789;
          *&v64[18] = 2048;
          *&v64[20] = v11;
          *&v64[28] = 2048;
          *&v64[30] = v21;
          _os_log_send_and_compose_impl(v48, buf, &v57, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
        }

        re::AssetManager::getAssetDependenciesFromAssetProvidersRecursive(a1, a2, a3, (*(a2 + 4) + v20), a5, a6);
        if (*a6 != 1)
        {
          break;
        }

        ++v11;
        v20 += 24;
        if (v19 == v11)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = v14;
  }
}

double re::AssetManager::AssetManager(re::AssetManager *this)
{
  *this = &unk_1F5CB86B8;
  *(this + 1) = &unk_1F5CB8898;
  *(this + 7) = 0;
  *(this + 2) = &unk_1F5CB88B0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 172) = 0x7FFFFFFFLL;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 220) = 0x7FFFFFFFLL;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 328) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 388) = 0u;
  *(this + 404) = 0x7FFFFFFFLL;
  *(this + 128) = 0;
  *(this + 69) = 0;
  *(this + 67) = 0;
  *(this + 136) = 0;
  *(this + 520) = 0u;
  *(this + 160) = 0;
  *(this + 85) = 0;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 768) = 0;
  *(this + 97) = 0;
  *(this + 224) = 0;
  *(this + 118) = 0;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 234) = 0;
  *(this + 128) = 0;
  *(this + 1032) = 0;
  *(this + 320) = 0;
  *(this + 165) = 0;
  *(this + 163) = 0;
  *(this + 328) = 0;
  *(this + 1288) = 0u;
  *(this + 176) = 0;
  *(this + 384) = 0;
  *(this + 197) = 0;
  *(this + 392) = 0;
  *(this + 195) = 0;
  *(this + 1544) = 0u;
  *(this + 416) = 0;
  *(this + 213) = 0;
  *(this + 424) = 0;
  *(this + 211) = 0;
  *(this + 1672) = 0u;
  *(this + 448) = 0;
  *(this + 65) = 0u;
  *(this + 470) = 0;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1816) = 0u;
  *(this + 1832) = 0u;
  *(this + 1800) = 0u;
  *(this + 1884) = 0x7FFFFFFFLL;
  *(this + 512) = 0;
  *(this + 261) = 0;
  *(this + 520) = 0;
  *(this + 259) = 0;
  *(this + 2056) = 0u;
  *(this + 1088) = 0;
  *(this + 2178) = 0;
  *(this + 253) = 0;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 2200) = 0;
  *(this + 2184) = 0u;
  *(this + 276) = -1;
  *(this + 2220) = 0;
  *(this + 554) = 0;
  *(this + 278) = -1;
  *(this + 1116) = 0;
  *(this + 2234) = 0;
  *(this + 140) = xmmword_1E3058110;
  *(this + 2256) = 0;
  *(this + 2264) = 0;
  *(this + 584) = 0;
  *(this + 145) = 0u;
  *(this + 144) = 0u;
  *(this + 143) = 0u;
  *(this + 142) = 0u;
  *(this + 2340) = 0x7FFFFFFFLL;
  *(this + 298) = 0;
  *(this + 594) = 0;
  *(this + 296) = 0;
  *(this + 147) = 0u;
  *(this + 608) = 0;
  *(this + 2440) = 0u;
  *(this + 614) = 1;
  *(this + 154) = 0u;
  *(this + 1280) = 0;
  *(this + 2584) = 0;
  *(this + 2568) = 0u;
  return result;
}

void re::AssetManager::~AssetManager(re::AssetManager *this)
{
  v2 = *(this + 321);
  if (v2)
  {

    *(this + 321) = 0;
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2440);
  v3 = *(this + 294);
  if (v3)
  {
    v4 = *(this + 298);
    if (v4)
    {
      v5 = *(this + 296);
      if (v5)
      {
        v6 = 40 * v5;
        do
        {
          re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v4);
          v4 += 40;
          v6 -= 40;
        }

        while (v6);
        v3 = *(this + 294);
        v4 = *(this + 298);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 298) = 0;
    *(this + 295) = 0;
    *(this + 296) = 0;
    *(this + 294) = 0;
    ++*(this + 594);
  }

  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 2056);
  v7 = *(this + 250);
  if (v7)
  {

    *(this + 250) = 0;
  }

  v8 = *(this + 249);
  if (v8)
  {

    *(this + 249) = 0;
  }

  v9 = *(this + 247);
  if (v9)
  {

    *(this + 247) = 0;
  }

  v10 = *(this + 246);
  if (v10)
  {

    *(this + 246) = 0;
  }

  v11 = *(this + 245);
  if (v11)
  {

    *(this + 245) = 0;
  }

  v12 = *(this + 243);
  if (v12)
  {

    *(this + 243) = 0;
  }

  v13 = *(this + 239);
  if (v13)
  {

    *(this + 239) = 0;
  }

  v14 = *(this + 237);
  if (v14)
  {

    *(this + 237) = 0;
  }

  re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::deinit(this + 231);
  re::DynamicArray<unsigned long>::deinit(this + 1672);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 1544);

  re::DynamicArray<re::NetworkActionQueue::Action>::deinit(this + 1288);
  v15 = *(this + 131);
  if (v15)
  {

    *(this + 131) = 0;
  }

  re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::deinit(this + 113);

  v16 = *(this + 81);
  if (v16)
  {
    if (*(this + 85))
    {
      (*(*v16 + 40))(v16);
    }

    *(this + 85) = 0;
    *(this + 82) = 0;
    *(this + 83) = 0;
    *(this + 81) = 0;
    ++*(this + 168);
  }

  v17 = *(this + 65);
  if (v17)
  {
    v18 = *(this + 69);
    if (v18)
    {
      v19 = *(this + 67);
      if (v19)
      {
        v20 = 32 * v19;
        do
        {
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v18);
          v18 += 32;
          v20 -= 32;
        }

        while (v20);
        v17 = *(this + 65);
        v18 = *(this + 69);
      }

      (*(*v17 + 40))(v17, v18);
    }

    *(this + 69) = 0;
    *(this + 66) = 0;
    *(this + 67) = 0;
    *(this + 65) = 0;
    ++*(this + 136);
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 46);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 328);
  re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(this + 35);
  re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(this + 29);
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 23);
  re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 17);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 24);
}

void re::AssetManager::init(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*a2);
  {
    if (v4)
    {
      re::introspect<re::AssetMap>(BOOL)::info = re::introspect_AssetMap(0, v142, v143, v144, v145, v146);
    }
  }

  {
    if (v4)
    {
      re::introspect<re::DeduplicationInformation>(BOOL)::info = re::introspect_DeduplicationInformation(0, v147, v148, v149, v150, v151);
    }
  }

  {
    if (v4)
    {
      re::introspect<re::RealityFileHeader>(BOOL)::info = re::introspect_RealityFileHeader(0, v152, v153, v154, v155, v156);
    }
  }

  re::AssetUtilities::init(v4);
  *(a1 + 2200) = *(a2 + 40);
  *(a1 + 2208) = *(a2 + 48);
  *(a1 + 2216) = *(a2 + 68);
  if (*(a2 + 64))
  {
    v6 = 1;
  }

  else
  {
    re::Defaults::BOOLValue(buf, "calculateAssetNonSharedDataSize", v5);
    v6 = buf[0] & buf[1] & 1;
  }

  *(a1 + 2217) = v6;
  *(a1 + 2218) = *(a2 + 67);
  re::Defaults::BOOLValue(buf, "preloadAssetsOnResourceSharingClients", v5);
  if (buf[0])
  {
    v8 = buf[1];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 2219) = v8;
  re::Defaults::BOOLValue(buf, "useXPCAssetPushLoading", v7);
  if (buf[0])
  {
    v10 = buf[1];
  }

  else
  {
    v10 = 1;
  }

  *(a1 + 2220) = v10;
  if (*(a2 + 66) == 1)
  {
    *(a1 + 2220) = 0;
  }

  re::Defaults::BOOLValue(buf, "loadPeerAssetsOnlyFromDirectPeers", v9);
  if (buf[0])
  {
    v12 = buf[1];
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 2232) = v12;
  re::Defaults::BOOLValue(buf, "loadPayloadOnEngineQueue", v11);
  if (buf[0])
  {
    v14 = buf[1];
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 2233) = v14;
  re::Defaults::uint64Value(buf, "longRegistrationLogThresholdMilliseconds", v13);
  v15 = 1000;
  if (buf[0])
  {
    v15 = v175;
  }

  *(a1 + 2240) = v15;
  v16 = *(a2 + 8);
  *(a1 + 1984) = v16;
  re::ObjCObject::operator=((a1 + 776), a2);
  v173 = *(a1 + 776);
  re::internal::EngineQueueCheck::init((a1 + 1408), &v173);

  v18 = re::Queue<re::SharedPtr<re::AssetLoadRequest::Data>>::setCapacity((a1 + 904), 0x20uLL);
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  v19 = re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 1544), 0x20uLL);
  ++*(a1 + 1568);
  v20 = re::DynamicArray<float *>::setCapacity((a1 + 2056), 0x10uLL);
  ++*(a1 + 2080);
  v21 = re::globalAllocators(v20);
  v22 = (*(*v21[2] + 32))(v21[2], 136, 8);
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 36) = 0x7FFFFFFF;
  *(v22 + 80) = 0x7FFFFFFF00000000;
  *(v22 + 128) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 120) = 0;
  *(v22 + 112) = 0;
  *(a1 + 1808) = v22;
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 96, 8);
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = &unk_1F5D0DF40;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 68) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 84) = 0x7FFFFFFF;
  *(a1 + 1816) = v24;
  *(a1 + 1832) = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v16);
  v25 = re::AssetHelper::registerDefaultAssetCompilers(*(a1 + 1816), v16, *(a2 + 24) | 0x100u);
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 256, 128);
  *(v27 + 192) = 0u;
  *(v27 + 208) = 0u;
  *(v27 + 160) = 0u;
  *(v27 + 176) = 0u;
  *(v27 + 224) = 0u;
  *(v27 + 240) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 144) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 172) = 0x7FFFFFFF;
  *(v27 + 200) = 0u;
  *(v27 + 184) = 0u;
  *(v27 + 216) = 0;
  *(v27 + 220) = 0x7FFFFFFF;
  *(a1 + 1904) = v27;
  *v27 = *(a1 + 1808);
  *(v27 + 16) = v27;
  v28 = *(a2 + 56);
  if (!v28)
  {
    if (*(a1 + 1832))
    {
      v28 = 10000000;
    }

    else
    {
      v28 = 500000000;
    }
  }

  *(a1 + 2224) = v28;
  *(a1 + 1936) = *(a2 + 32);
  v29 = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v16);
  *(a1 + 1920) = v29;
  if (v29)
  {
    v30 = re::globalAllocators(v29);
    v31 = (*(*v30[2] + 32))(v30[2], 16, 8);
    *v31 = &unk_1F5CB89C0;
    v31[1] = a1;
    *(a1 + 1040) = v31;
    (*(**(a1 + 1920) + 208))(*(a1 + 1920), v31);
  }

  else
  {
    v32 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "No NetworkAssetService available! Cannot share dependencies over network.", buf, 2u);
    }
  }

  Request = re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(v16);
  *(a1 + 1928) = Request;
  v34 = re::globalAllocators(Request);
  v35 = (*(*v34[2] + 32))(v34[2], 48, 8);
  v36 = re::NetworkAssetProvider::NetworkAssetProvider(v35, *(a1 + 1920), *(a1 + 1904), *(a1 + 1808));
  v37 = *(a1 + 1912);
  *(a1 + 1912) = v36;
  if (v37)
  {

    v36 = *(a1 + 1912);
  }

  v38 = *(a1 + 1904);
  v172 = v36;
  if (v36)
  {
    v39 = v36 + 8;
    v40 = v172;
    v41 = re::AssetProviderRegistry::registerAssetProvider(v38, &v172);
    if (v40)
    {

      v172 = 0;
    }
  }

  else
  {
    v41 = re::AssetProviderRegistry::registerAssetProvider(v38, &v172);
  }

  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 128, 128);
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0u;
  *(v43 + 80) = 0u;
  *(v43 + 96) = 0u;
  *(v43 + 112) = 0u;
  *(v43 + 44) = 0x7FFFFFFF;
  *(a1 + 2016) = v43;
  v44 = re::globalAllocators(v43);
  v45 = (*(*v44[2] + 32))(v44[2], 56, 8);
  v46 = re::FrameworkAssetProvider::FrameworkAssetProvider(v45, *(a1 + 1904), *(a1 + 1808), *(a1 + 1816), *(a1 + 2016));
  v47 = *(a1 + 1944);
  *(a1 + 1944) = v46;
  if (v47)
  {

    v46 = *(a1 + 1944);
  }

  v48 = *(a1 + 1904);
  v171 = v46;
  if (v46)
  {
    v49 = v46 + 8;
    v50 = v171;
    v51 = re::AssetProviderRegistry::registerAssetProvider(v48, &v171);
    if (v50)
    {

      v171 = 0;
    }
  }

  else
  {
    v51 = re::AssetProviderRegistry::registerAssetProvider(v48, &v171);
  }

  v52 = re::globalAllocators(v51);
  v53 = (*(*v52[2] + 32))(v52[2], 128, 128);
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 112) = 0u;
  *(v53 + 44) = 0x7FFFFFFF;
  *(a1 + 2008) = v53;
  v54 = re::globalAllocators(v53);
  v55 = (*(*v54[2] + 32))(v54[2], 56, 8);
  v56 = re::NamedFileAssetProvider::NamedFileAssetProvider(v55, *(a1 + 2008), *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v57 = *(a1 + 2000);
  *(a1 + 2000) = v56;
  if (v57)
  {

    v56 = *(a1 + 2000);
  }

  v58 = *(a1 + 1904);
  v170 = v56;
  if (v56)
  {
    v59 = v56 + 8;
    v60 = v170;
    v61 = re::AssetProviderRegistry::registerAssetProvider(v58, &v170);
    if (v60)
    {

      v170 = 0;
    }
  }

  else
  {
    v61 = re::AssetProviderRegistry::registerAssetProvider(v58, &v170);
  }

  v62 = re::globalAllocators(v61);
  v63 = (*(*v62[2] + 32))(v62[2], 80, 8);
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0u;
  *v63 = 0u;
  *(v63 + 36) = 0x7FFFFFFF;
  *(v63 + 72) = 0;
  *(v63 + 64) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = v63 + 64;
  *(a1 + 2024) = v63;
  v64 = re::globalAllocators(v63);
  v65 = (*(*v64[2] + 32))(v64[2], 48, 8);
  v66 = re::NamedAssetProvider::NamedAssetProvider(v65, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v67 = *(a1 + 1992);
  *(a1 + 1992) = v66;
  if (v67)
  {

    v66 = *(a1 + 1992);
  }

  v68 = *(a1 + 1904);
  v169 = v66;
  if (v66)
  {
    v69 = v66 + 8;
    v70 = v169;
    v71 = re::AssetProviderRegistry::registerAssetProvider(v68, &v169);
    if (v70)
    {

      v169 = 0;
    }
  }

  else
  {
    v71 = re::AssetProviderRegistry::registerAssetProvider(v68, &v169);
  }

  v72 = re::globalAllocators(v71);
  v73 = (*(*v72[2] + 32))(v72[2], 136, 8);
  *v73 = 0u;
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *(v73 + 96) = 0u;
  *(v73 + 112) = 0u;
  *(v73 + 64) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 128) = 0;
  *(v73 + 8) = v73 + 8;
  *(v73 + 16) = v73 + 8;
  *(v73 + 52) = 0u;
  *(v73 + 40) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 68) = 0x7FFFFFFF;
  *(v73 + 108) = 0u;
  *(v73 + 124) = 0x7FFFFFFF;
  *(a1 + 1952) = v73;
  re::RealityFileRegistry::init(v73);
  v75 = re::globalAllocators(v74);
  v76 = (*(*v75[2] + 32))(v75[2], 280, 8);
  v77 = re::RealityFileAssetProvider::RealityFileAssetProvider(v76, *(a1 + 1952), *(a1 + 1808), *(a1 + 1904), *(a1 + 2008), *(a1 + 2016));
  v78 = *(a1 + 1960);
  *(a1 + 1960) = v77;
  if (v78)
  {

    v77 = *(a1 + 1960);
  }

  v79 = *(a1 + 1904);
  v168 = v77;
  if (v77)
  {
    v80 = (v77 + 8);
    v81 = v168;
    v82 = re::AssetProviderRegistry::registerAssetProvider(v79, &v168);
    if (v81)
    {

      v168 = 0;
    }
  }

  else
  {
    v82 = re::AssetProviderRegistry::registerAssetProvider(v79, &v168);
  }

  v83 = re::globalAllocators(v82);
  v84 = (*(*v83[2] + 32))(v83[2], 48, 8);
  v85 = re::FileAssetProvider::FileAssetProvider(v84, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v86 = *(a1 + 1968);
  *(a1 + 1968) = v85;
  if (v86)
  {

    v85 = *(a1 + 1968);
  }

  v87 = *(a1 + 1904);
  v167 = v85;
  if (v85)
  {
    v88 = v85 + 8;
    v89 = v167;
    v90 = re::AssetProviderRegistry::registerAssetProvider(v87, &v167);
    if (v89)
    {

      v167 = 0;
    }
  }

  else
  {
    v90 = re::AssetProviderRegistry::registerAssetProvider(v87, &v167);
  }

  v91 = re::globalAllocators(v90);
  v92 = (*(*v91[2] + 32))(v91[2], 48, 8);
  v93 = re::FallbackAssetProvider::FallbackAssetProvider(v92, *(a1 + 1808), *(a1 + 1816), *(a1 + 1904));
  v94 = *(a1 + 1976);
  *(a1 + 1976) = v93;
  if (v94)
  {

    v93 = *(a1 + 1976);
  }

  v95 = *(a1 + 1904);
  v166 = v93;
  if (v93)
  {
    v96 = v93 + 8;
    v97 = v166;
    v98 = re::AssetProviderRegistry::registerAssetProvider(v95, &v166);
    if (v97)
    {

      v166 = 0;
    }
  }

  else
  {
    v98 = re::AssetProviderRegistry::registerAssetProvider(v95, &v166);
  }

  v99 = re::globalAllocators(v98);
  v100 = (*(*v99[2] + 32))(v99[2], 24, 8);
  ArcSharedObject::ArcSharedObject(v100, 0);
  *v100 = &unk_1F5CB8AE8;
  {
    re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v157);
  }

  MemoryAssetProvider::s_loadDescriptorParametersIntrospect = re::introspect<re::DynamicString>(BOOL)::info;
  v101 = *(a1 + 1904);
  v165 = v100;
  v102 = v100 + 1;
  re::AssetProviderRegistry::registerAssetProvider(v101, &v165);

  v165 = 0;
  v104 = re::globalAllocators(v103);
  v105 = (*(*v104[2] + 32))(v104[2], 24, 8);
  v106 = re::PeerAssetProvider::PeerAssetProvider(v105);
  v107 = *(a1 + 1904);
  v164 = v106;
  if (v106)
  {
    v108 = (v105 + 8);
    re::AssetProviderRegistry::registerAssetProvider(v107, &v164);

    v164 = 0;
  }

  else
  {
    re::AssetProviderRegistry::registerAssetProvider(v107, &v164);
  }

  re::MeshPrimitiveProvider::init(*(a1 + 1904), *(a1 + 1808), v109);
  v111 = re::globalAllocators(v110);
  v112 = (*(*v111[2] + 32))(v111[2], 768, 128);
  v114 = re::internal::AssetBackgroundLoader::AssetBackgroundLoader(v112, v113);
  *(a1 + 1800) = v114;
  v115 = re::internal::AssetBackgroundLoader::init(v114, *(a1 + 1808), a1 + 8, *(a1 + 1904), *(a1 + 1936), a1 + 16);
  if (*(a2 + 16))
  {
    v116 = re::globalAllocators(v115);
    v117 = (*(*v116[2] + 32))(v116[2], 512, 128);
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0u;
    *(v117 + 112) = 0u;
    *(v117 + 160) = 0u;
    *(v117 + 176) = 0u;
    *(v117 + 192) = 0u;
    *(v117 + 208) = 0u;
    *(v117 + 224) = 0u;
    *(v117 + 240) = 0u;
    *(v117 + 256) = 0u;
    *(v117 + 272) = 0u;
    *(v117 + 288) = 0u;
    *(v117 + 304) = 0u;
    *(v117 + 320) = 0u;
    *(v117 + 336) = 0u;
    *(v117 + 352) = 0u;
    *(v117 + 368) = 0u;
    *(v117 + 384) = 0u;
    *(v117 + 400) = 0u;
    *(v117 + 416) = 0u;
    *(v117 + 432) = 0u;
    *(v117 + 448) = 0u;
    *(v117 + 464) = 0u;
    *(v117 + 480) = 0u;
    *(v117 + 496) = 0u;
    *(v117 + 100) = 0x7FFFFFFF;
    *(v117 + 112) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 144) = 0u;
    *(v117 + 144) = 0x7FFFFFFF00000000;
    *(v117 + 296) = 0;
    *(v117 + 272) = 0;
    *(v117 + 280) = 0;
    *(v117 + 264) = 0;
    *(v117 + 288) = 0;
    *(v117 + 392) = 0;
    *(v117 + 400) = 0;
    *(a1 + 1824) = v117;
    v118 = *(a2 + 16);
    {
      re::introspect<re::NetworkAssetSerializationService>(BOOL)::info = re::introspect_NetworkAssetSerializationService(0, v158, v159, v160, v161, v162);
    }

    v119 = re::introspect<re::NetworkAssetSerializationService>(BOOL)::info;
    re::StringID::invalid(buf);
    v120 = (*(*v16 + 16))(v16, v119, buf);
    v121 = v120;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    v115 = re::internal::AssetNetworkLoader::init(v117, a1, v118, v121);
  }

  *(a1 + 2176) = *(a2 + 24);
  if (*(a1 + 1832))
  {
    v122 = re::globalAllocators(v115);
    v123 = (*(*v122[2] + 32))(v122[2], 88, 8);
    v124 = *(a1 + 1832);
    ArcSharedObject::ArcSharedObject(v123, 0);
    *v123 = &unk_1F5CB9520;
    *(v123 + 24) = 0u;
    *(v123 + 40) = 0u;
    *(v123 + 56) = 0;
    *(v123 + 60) = 0x7FFFFFFFLL;
    *(v123 + 72) = a1;
    *(v123 + 80) = v124;
    v125 = *(a1 + 1048);
    *(a1 + 1048) = v123;
    if (v125)
    {

      v123 = *(a1 + 1048);
      v126 = *(a1 + 1832);
      v163 = v123;
      if (!v123)
      {
LABEL_89:
        (*(*v126 + 120))(v126, &v163);
        if (v163)
        {

          v163 = 0;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v126 = *(a1 + 1832);
      v163 = v123;
    }

    v127 = (v123 + 8);
    goto LABEL_89;
  }

LABEL_91:
  *(a1 + 1152) = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v16) != 0;
  v128 = dispatch_group_create();

  v129 = *(a1 + 2576);
  *(a1 + 2576) = v128;

  v131 = re::globalAllocators(v130);
  v132 = (*(*v131[2] + 32))(v131[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v132, 0);
  *(v132 + 3) = a1;
  *v132 = &unk_1F5CB8B88;
  *(v132 + 4) = a1 + 2576;
  dispatch_group_enter(*(a1 + 2576));
  v134 = *(a1 + 2568);
  *(a1 + 2568) = v132;
  if (v134)
  {
  }

  v135 = re::globalAllocators(v133);
  v136 = (*(*v135[2] + 32))(v135[2], 120, 8);
  *v136 = 0u;
  *(v136 + 16) = 0u;
  *(v136 + 32) = 0u;
  *(v136 + 48) = 0u;
  *(v136 + 64) = 0u;
  *(v136 + 80) = 0u;
  *(v136 + 96) = 0u;
  *(v136 + 112) = 0;
  ArcSharedObject::ArcSharedObject(v136, 0);
  *v136 = &unk_1F5CB8240;
  *(v136 + 24) = 0u;
  *(v136 + 40) = 0u;
  *(v136 + 56) = 0;
  *(v136 + 60) = 0x7FFFFFFFLL;
  *(v136 + 72) = 0u;
  *(v136 + 88) = 0u;
  *(v136 + 104) = 0;
  *(v136 + 108) = 0x7FFFFFFFLL;
  v137 = *(a1 + 1896);
  *(a1 + 1896) = v136;
  if (v137)
  {
  }

  v138 = re::ServiceLocator::serviceOrNull<re::EntitlementService>(v16);
  if (v138)
  {
    v139 = v138;
    v140 = *(a1 + 1896);
    *buf = v140;
    if (v140)
    {
      v141 = (v140 + 8);
    }

    (*(*v139 + 104))(v139, buf);
    if (*buf)
    {
    }
  }

  if (v105)
  {
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(re::StringID *a1)
{
  {
    re::introspect<re::ResourceFetchService>(BOOL)::info = re::introspect_ResourceFetchService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ResourceFetchService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(re::StringID *a1)
{
  {
    re::introspect<re::NetworkAssetService>(BOOL)::info = re::introspect_NetworkAssetService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::NetworkAssetService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(re::StringID *a1)
{
  {
    re::introspect<re::NetworkSendBlockingAssetLoadRequestService>(BOOL)::info = re::introspect_NetworkSendBlockingAssetLoadRequestService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::NetworkSendBlockingAssetLoadRequestService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::EntitlementService>(re::StringID *a1)
{
  {
    re::introspect<re::EntitlementService>(BOOL)::info = re::introspect_EntitlementService(0);
  }

  v2 = re::introspect<re::EntitlementService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}