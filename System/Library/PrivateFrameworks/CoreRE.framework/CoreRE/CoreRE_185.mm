uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

BOOL re::MaterialManager::entityHasSystemMaterialParameterBlock(re::MaterialManager *this, unint64_t a2)
{
  if (!*(this + 130))
  {
    return 0;
  }

  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v3 = *(*(this + 131) + 4 * ((v2 ^ (v2 >> 31)) % *(this + 266)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(this + 132);
  v6 = 0x7FFFFFFFLL;
  while (*(v5 + 32 * v3 + 8) != a2)
  {
    v3 = *(v5 + 32 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return v6 != 0x7FFFFFFF;
    }
  }

  v6 = v3;
  return v6 != 0x7FFFFFFF;
}

void re::MaterialManager::startFrame(re::MaterialManager *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken != -1)
  {
    goto LABEL_20;
  }

  while ((re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking & 1) == 0)
  {
    v2 = this + 1088;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, v2, 0);
    v3 = *&v24[0];
    v13 = *&v24[0];
    v14 = DWORD2(v24[0]);
    v4 = WORD4(v24[0]);
    v5 = HIWORD(DWORD2(v24[0]));
    if (v2 == *&v24[0] && WORD4(v24[0]) == 0xFFFF && v5 == 0xFFFF)
    {
      break;
    }

    while (1)
    {
      v6 = v5;
      v7 = *(v3 + 16);
      if (v7 <= v5)
      {
        break;
      }

      re::MaterialParameterBlock::clear((*(*(v3 + 32) + 16 * v5) + 1008 * v4));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v13);
      v3 = v13;
      v4 = v14;
      v5 = HIWORD(v14);
      if (v13 == v2 && v14 == 0xFFFF && HIWORD(v14) == 0xFFFF)
      {
        return;
      }
    }

    v15 = 0;
    memset(v24, 0, sizeof(v24));
    this = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    _os_log_send_and_compose_impl(v11, &v15, v24, 80, &dword_1E1C61000, this, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_20:
    dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
  }
}

void re::MaterialManager::getEngineShaderMetadata(uint64_t *__return_ptr a1@<X8>, re::MaterialManager *this@<X0>, const char *a3@<X1>)
{
  if (!*(this + 295))
  {
    v15 = *(*(this + 112) + 208);
    re::createMaterialSystemShaderMetadataForDevice(&v15, &v16);
    re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(this + 1152, &v16);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v16);

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1];
    if (v7)
    {
      v8 = a3 + 2;
      do
      {
        v6 = 31 * v6 + v7;
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_10:
  v14[0] = 2 * v6;
  v14[1] = a3;
  v10 = 0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31));
  v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 1152, v14, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31), &v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    v12 = 0;
  }

  else
  {
    v13 = *(this + 146) + 32 * v17;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    *(a1 + 1) = *(v13 + 24);
    v12 = 1;
  }

  *a1 = v12;
}

uint64_t re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

BOOL re::MaterialManager::isEngineDefinedTextureTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "fallback"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F8F8;
  do
  {
    v5 = v3;
    if (v3 == 11)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xB;
}

BOOL re::MaterialManager::isEngineDefinedConstantBufferTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "global"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F818;
  do
  {
    v5 = v3;
    if (v3 == 13)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xD;
}

BOOL re::MaterialManager::isEngineDefinedBufferTable(re::MaterialManager *this, const char *a2)
{
  if (!strcmp(this, "geometry"))
  {
    return 1;
  }

  v3 = 0;
  v4 = &off_1E871F9B8;
  do
  {
    v5 = v3;
    if (v3 == 12)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
    v7 = strcmp(this, v6);
    v3 = v5 + 1;
  }

  while (v7);
  return v5 < 0xC;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v13, v12);
    v9 = *a2;
    *(v8 + 16) = *a3;
    result = v8 + 16;
    *(result - 8) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    *(v11 + 16) = *a3;
    return v11 + 16;
  }

  return result;
}

void re::MaterialManager::resolveArgumentBuffers(id a1, id *a2)
{
  v3 = a1;
  v4 = *(a1 + 308);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 152);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 308);
        break;
      }
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    LODWORD(v9) = *(a1 + 308);
    v38 = a1;
    v35 = v9;
    while (1)
    {
      v10 = *(*(v3 + 152) + 32 * v8 + 16);
      v36 = v8;
      v37 = *(v10 + 32);
      if (v37)
      {
        v11 = 0;
        v12 = (*(v10 + 16) + 8);
        while (1)
        {
          v13 = *v12;
          v12 += 20;
          if (v13 < 0)
          {
            break;
          }

          if (v37 == ++v11)
          {
            LODWORD(v11) = *(v10 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      if (v11 != v37)
      {
        break;
      }

LABEL_48:
      v8 = v36;
      if (v9 <= v36 + 1)
      {
        v32 = v36 + 1;
      }

      else
      {
        v32 = v9;
      }

      v3 = v38;
      while (v32 - 1 != v8)
      {
        if ((*(*(v38 + 152) + 32 * ++v8) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      v8 = v32;
LABEL_56:
      if (v8 == v35)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v14 = (*(v10 + 16) + 80 * v11);
      v15 = v14[5];
      if (v15)
      {
        break;
      }

LABEL_32:
      v23 = v14[8];
      if (v23)
      {
        v24 = 16 * v23;
        v25 = v14[9] + 8;
        do
        {
          v26 = *(v25 - 8);
          if ((v26 + 8) <= v14[3])
          {
            v28 = v14[2];
            v29 = *a2;
            v39 = v29;
            re::DirectBuffer::readUsing(&v39, buf);

            v30 = *buf;
            a1 = [*buf gpuAddress];
            *(v28 + v26) = a1;
            if (v30)
            {
            }
          }

          else
          {
            v27 = *re::graphicsLogObjects(a1);
            a1 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Unable to reencode texture resourceID reference, the argument buffer is not large enough!", buf, 2u);
            }
          }

          v25 += 16;
          v24 -= 16;
        }

        while (v24);
      }

      v31 = *(v10 + 32);
      if (v31 <= v11 + 1)
      {
        v31 = v11 + 1;
      }

      while (v31 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(*(v10 + 16) + 80 * v11 + 8) & 0x80000000) != 0)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v11) = v31;
LABEL_46:
      if (v11 == v37)
      {
        LODWORD(v9) = v38[308];
        goto LABEL_48;
      }
    }

    v16 = v14[6];
    v17 = 32 * v15;
    while (1)
    {
      v18 = *(v16 + 16);
      if ((v18 + 8) <= v14[3])
      {
        break;
      }

      v19 = *re::graphicsLogObjects(a1);
      a1 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unable to reencode texture resourceID reference, the argument buffer is not large enough!", buf, 2u);
      }

LABEL_31:
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v20 = v14[2];
    re::ArgumentBufferTextureRecord::getRenderThreadTexture(buf, v16);
    if (*buf)
    {
      v21 = [*buf textureType];
      v22 = *(v16 + 24);
      if (v21 == v22)
      {
LABEL_29:
        *(v20 + v18) = [*buf gpuResourceID];
        a1 = *buf;
        if (*buf)
        {
        }

        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v22) = *(v16 + 24);
    }

    re::TextureManager::stockTextureForType(*(*(v38 + 112) + 56), v22, &v40);
    NS::SharedPtr<MTL::Texture>::operator=(buf, &v40);
    if (v40)
    {
    }

    goto LABEL_29;
  }

  LODWORD(v9) = *(a1 + 308);
LABEL_57:
  if (v3[307])
  {
    v33 = v3[306];
    if (v33)
    {
      memset_pattern16(*(v3 + 151), &memset_pattern_275, 4 * v33);
      LODWORD(v9) = v3[308];
    }

    if (v9)
    {
      v34 = *(v3 + 152);
      v9 = v9;
      do
      {
        if ((*v34 & 0x80000000) != 0)
        {
          *v34 &= ~0x80000000;
        }

        v34 += 8;
        --v9;
      }

      while (v9);
    }

    v3[309] = 0x7FFFFFFF;
    *(v3 + 307) = 0;
    ++v3[310];
  }
}

uint64_t re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::lookup@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 8), a2);
  if (result == -1)
  {
    v6 = 0;
  }

  else
  {
    *(a3 + 1) = *(*(a1 + 16) + 16 * result + 8);
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

id re::TextureTable::textureAt@<X0>(re::TextureTable *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 11);
  if (v5 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 13) + 32 * a2);
  *a3 = result;
  return result;
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D060D0;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D060D0;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);

  JUMPOUT(0x1E6906520);
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::operator()(re *a1)
{
  v1 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v3 = *(v2 + 896);
  v4 = v3[14];
  if (v4)
  {
    v5 = *(a1 + 6);
    v33 = 0;
    v30[1] = 0;
    v31 = 0;
    LODWORD(v32) = 0;
    v30[0] = v5;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v30, 0);
    LODWORD(v32) = v32 + 1;
    v27 = v4 + 104;
    v28 = 0;
    v6 = *(v4 + 120);
    if (v6 < 0x10)
    {
LABEL_6:
      v29 = -1;
    }

    else
    {
      v7 = 0;
      v8 = *(v4 + 104);
      v9 = v6 >> 4;
      while (1)
      {
        v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v28 = v10 ^ 0xFFFFLL;
        if (v10 != 0xFFFFLL)
        {
          break;
        }

        v7 -= 16;
        ++v8;
        if (!--v9)
        {
          goto LABEL_6;
        }
      }

      v18 = __clz(__rbit64(v10 ^ 0xFFFFLL));
      v19 = v18 - v7;
      v29 = v18 - v7;
      if (v18 + 1 != v7)
      {
        do
        {
          v20 = v27;
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v27);
          v21 = *(v20 + 8) + 48 * v19;
          if (*(v21 + 16) == *(v1 + 5))
          {
            v22 = *(v21 + 40);

            *v22 = 0;
            v22[1] = 0;
            re::internal::destroyPersistent<re::CachedArgumentBuffer>("destroyCachedArgumentBuffer", 185, v22);
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add(v30, v21);
          }

          v19 = v29;
        }

        while (v29 != -1);
      }
    }

    if (v31)
    {
      v11 = v33;
      v12 = 40 * v31;
      do
      {
        v13 = *v11;
        v14 = *(v11 + 16);
        v26 = *(v11 + 32);
        v24 = v13;
        v25 = v14;
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(v4 + 104, &v24);
        v11 += 40;
        v12 -= 40;
      }

      while (v12);
    }

    a1 = v30[0];
    if (v30[0] && v33)
    {
      a1 = (*(*v30[0] + 40))();
    }

    v3 = *(v2 + 896);
  }

  v23 = *(v1 + 1);
  v15 = *(v1 + 4);
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = 0;
  *&v24 = v2;
  v26 = v4;
  v32 = re::globalAllocators(a1)[2];
  v16 = (*(*v32 + 32))(v32, 48, 0);
  *v16 = &unk_1F5D06120;
  *(v16 + 8) = v2;
  *(v16 + 16) = v23;
  *(&v24 + 1) = 0;
  v25 = 0uLL;
  *(v16 + 32) = v15;
  *(v16 + 40) = v4;
  v33 = v16;
  re::RenderManager::addDelayedDestructor(v3, v30);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v30);
  return re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(&v24 + 1);
}

uint64_t re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D060D0;
  *(a2 + 8) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v3 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = v4;
  *(a2 + 40) = *(a1 + 40);
  return a2;
}

BOOL re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(a1, (*(a1 + 8) + 48 * v3));
    v10.i64[0] = -1;
    v10.i64[1] = v8;
    v11 = vaddq_s64(*(a1 + 24), v10);
    *(a1 + 24) = v11;
    v12 = *(a1 + 16);
    if (v12 >= 0x11 && v11.i64[0] < v12 >> 2)
    {
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

re *re::internal::destroyPersistent<re::CachedArgumentBuffer>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    objc_destroyWeak((a3 + 64));
    *(a3 + 64) = 0;
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(a3 + 16);
    for (i = 8; i != -8; i -= 8)
    {
      v6 = *(a3 + i);
      if (v6)
      {

        *(a3 + i) = 0;
      }
    }

    v7 = *(*v4 + 40);

    return v7(v4, a3);
  }

  return result;
}

unint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v3 = a1[2];
  if (v3 < 0x10 || !a1[3])
  {
    return -1;
  }

  v5 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v6 = (((v5 << 6) + (v5 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9) ^ v5) % (v3 >> 4);
  while (1)
  {
    v7 = *a1;
    v8 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
    v9 = *(v7 + 16 * v6);
    v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v8), v9), xmmword_1E304FAD0)))), 0x3830282018100800);
    v11 = __clz(__rbit64(v10));
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    if (v11 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v9, v12), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v6 == a1[2] >> 4)
    {
      v6 = 0;
    }

    v16 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::computeKeyHash(a1, a2) % (a1[2] >> 4);
    result = -1;
    if (v6 == v16)
    {
      return result;
    }
  }

  v13 = 16 * v6;
  while (1)
  {
    result = v11 + v13;
    v15 = (a1[1] + 48 * (v11 + v13));
    if (a2[2] == v15[2] && a2[3] == v15[3] && a2[4] == v15[4] && a2[1] == v15[1])
    {
      return result;
    }

    if (v11 <= 0x3E)
    {
      v11 = __clz(__rbit64((-2 << v11) & v10));
      if (v11 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

uint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(uint64_t result, void *a2)
{
  v2 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  *(result + 40) ^= v2 ^ ((v2 << 6) + (v2 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 48 * v11), (*(v19[0] + 8) + 48 * v11 + 40));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

uint64_t re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = (a2[2] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v9 = (((v8 << 6) + (v8 >> 2) + ((a2[4] + (a2[3] << 6) + (a2[3] >> 2) - 0x61C8864680B583E9) ^ a2[3]) - 0x61C8864680B583E9) ^ v8) % (v7 >> 4);
  v10 = *a1;
  v11 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v9 + 1 == a1[2] >> 4)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v10 = *a1;
      v11 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h2(a1, a2);
      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v10 + 16 * v9;
  v14 = *(v13 + v12);
  *(v13 + v12) = v11;
  v15 = 3 * (v12 + 16 * v9);
  v16 = a1[1] + 16 * v15;
  v17 = *a2;
  v18 = *(a2 + 1);
  *(v16 + 32) = a2[4];
  *v16 = v17;
  *(v16 + 16) = v18;
  *(a1[1] + 16 * v15 + 40) = *a3;
  if (v14 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(a1, (a1[1] + 16 * v15));
  return a1[1] + 16 * v15 + 40;
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D06120;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D06120;
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(a1 + 2);

  JUMPOUT(0x1E6906520);
}

void re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::operator()(void *a1)
{
  v169 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v150 = &v3[5 * v2];
    do
    {
      v151 = v3;
      v4 = *v3;
      if (!*v3)
      {
        goto LABEL_239;
      }

      v154 = *(v4 + 120);
      if (v154)
      {
        v5 = 0;
        v6 = *(v4 + 104);
        do
        {
          v7 = *v6;
          v6 += 8;
          if (v7 < 0)
          {
            goto LABEL_11;
          }

          ++v5;
        }

        while (v154 != v5);
        LODWORD(v5) = *(v4 + 120);
      }

      else
      {
        LODWORD(v5) = 0;
      }

LABEL_11:
      if (v5 == v154)
      {
        goto LABEL_239;
      }

      v153 = *v3;
      do
      {
        v8 = *(*(v4 + 104) + 32 * v5 + 16);
        v9 = a1[5];
        if (v9)
        {
          re::MaterialTechniqueVariant::releasePipelineStates(*(*(v4 + 104) + 32 * v5 + 16), *(v1 + 896), v9);
        }

        v10 = *(v8 + 248);
        if (!v10)
        {
          LODWORD(v11) = 0;
          goto LABEL_45;
        }

        v11 = 0;
        v12 = *(v8 + 232);
        do
        {
          v13 = *v12;
          v12 += 4;
          if (v13 < 0)
          {
            goto LABEL_45;
          }

          ++v11;
        }

        while (v10 != v11);
        LODWORD(v11) = *(v8 + 248);
LABEL_45:
        while (v11 != v10)
        {
          v14 = *(*(v8 + 232) + 16 * v11 + 8);
          re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 216, v14);
          if (!*(v1 + 144))
          {
            v15 = *(v1 + 160);
LABEL_28:
            v16 = 0x7FFFFFFFLL;
            goto LABEL_29;
          }

          v15 = *(v1 + 160);
          v16 = *(*(v1 + 152) + 4 * (v14 % *(v1 + 168)));
          if (v16 == 0x7FFFFFFF)
          {
            goto LABEL_28;
          }

          while (*(v15 + 24 * v16 + 8) != v14)
          {
            v16 = *(v15 + 24 * v16) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_28;
            }
          }

LABEL_29:
          v17 = *(v15 + 24 * v16 + 16);
          if (!*v17 || (v18 = *v17 - 1, (*v17 = v18) == 0))
          {
            re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(v17);
            if (*(v1 + 144))
            {
              v19 = v14 % *(v1 + 168);
              v20 = *(v1 + 152);
              v21 = *(v20 + 4 * v19);
              if (v21 != 0x7FFFFFFF)
              {
                v22 = *(v1 + 160);
                if (*(v22 + 24 * v21 + 8) == v14)
                {
                  v23 = (v22 + 24 * v21);
                  *(v20 + 4 * v19) = *v23 & 0x7FFFFFFF;
                }

                else
                {
                  do
                  {
                    v24 = v21;
                    v21 = *(v22 + 24 * v21) & 0x7FFFFFFF;
                    if (v21 == 0x7FFFFFFF)
                    {
                      goto LABEL_39;
                    }
                  }

                  while (*(v22 + 24 * v21 + 8) != v14);
                  v23 = (v22 + 24 * v21);
                  *(v22 + 24 * v24) = *(v22 + 24 * v24) & 0x80000000 | *v23 & 0x7FFFFFFF;
                }

                *v23 = *(v1 + 180);
                --*(v1 + 172);
                v25 = *(v1 + 184) + 1;
                *(v1 + 180) = v21;
                *(v1 + 184) = v25;
              }
            }
          }

LABEL_39:
          v26 = *(v8 + 248);
          if (v26 <= v11 + 1)
          {
            v26 = v11 + 1;
          }

          while (v26 - 1 != v11)
          {
            LODWORD(v11) = v11 + 1;
            if ((*(*(v8 + 232) + 16 * v11) & 0x80000000) != 0)
            {
              goto LABEL_45;
            }
          }

          LODWORD(v11) = v26;
        }

        v27 = *(v8 + 200);
        if (!v27)
        {
          LODWORD(v28) = 0;
          goto LABEL_76;
        }

        v28 = 0;
        v29 = *(v8 + 184);
        do
        {
          v30 = *v29;
          v29 += 4;
          if (v30 < 0)
          {
            goto LABEL_76;
          }

          ++v28;
        }

        while (v27 != v28);
        LODWORD(v28) = *(v8 + 200);
LABEL_76:
        while (2)
        {
          if (v28 != v27)
          {
            v31 = *(*(v8 + 184) + 16 * v28 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 168, v31);
            if (*(v1 + 96))
            {
              v32 = *(v1 + 112);
              v33 = *(*(v1 + 104) + 4 * (v31 % *(v1 + 120)));
              if (v33 != 0x7FFFFFFF)
              {
                while (*(v32 + 24 * v33 + 8) != v31)
                {
                  v33 = *(v32 + 24 * v33) & 0x7FFFFFFF;
                  if (v33 == 0x7FFFFFFF)
                  {
                    goto LABEL_59;
                  }
                }

                goto LABEL_60;
              }
            }

            else
            {
              v32 = *(v1 + 112);
            }

LABEL_59:
            v33 = 0x7FFFFFFFLL;
LABEL_60:
            v34 = *(v32 + 24 * v33 + 16);
            if (!*v34 || (v35 = *v34 - 1, (*v34 = v35) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v34);
              if (*(v1 + 96))
              {
                v36 = v31 % *(v1 + 120);
                v37 = *(v1 + 104);
                v38 = *(v37 + 4 * v36);
                if (v38 != 0x7FFFFFFF)
                {
                  v39 = *(v1 + 112);
                  if (*(v39 + 24 * v38 + 8) == v31)
                  {
                    v40 = (v39 + 24 * v38);
                    *(v37 + 4 * v36) = *v40 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v41 = v38;
                      v38 = *(v39 + 24 * v38) & 0x7FFFFFFF;
                      if (v38 == 0x7FFFFFFF)
                      {
                        goto LABEL_70;
                      }
                    }

                    while (*(v39 + 24 * v38 + 8) != v31);
                    v40 = (v39 + 24 * v38);
                    *(v39 + 24 * v41) = *(v39 + 24 * v41) & 0x80000000 | *v40 & 0x7FFFFFFF;
                  }

                  *v40 = *(v1 + 132);
                  --*(v1 + 124);
                  v42 = *(v1 + 136) + 1;
                  *(v1 + 132) = v38;
                  *(v1 + 136) = v42;
                }
              }
            }

LABEL_70:
            v43 = *(v8 + 200);
            if (v43 <= v28 + 1)
            {
              v43 = v28 + 1;
            }

            while (v43 - 1 != v28)
            {
              LODWORD(v28) = v28 + 1;
              if ((*(*(v8 + 184) + 16 * v28) & 0x80000000) != 0)
              {
                goto LABEL_76;
              }
            }

            LODWORD(v28) = v43;
            continue;
          }

          break;
        }

        v44 = *(v8 + 104);
        if (!v44)
        {
          LODWORD(v45) = 0;
          goto LABEL_107;
        }

        v45 = 0;
        v46 = *(v8 + 88);
        do
        {
          v47 = *v46;
          v46 += 4;
          if (v47 < 0)
          {
            goto LABEL_107;
          }

          ++v45;
        }

        while (v44 != v45);
        LODWORD(v45) = *(v8 + 104);
LABEL_107:
        while (2)
        {
          if (v45 != v44)
          {
            v48 = *(*(v8 + 88) + 16 * v45 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 72, v48);
            if (*v1)
            {
              v49 = *(v1 + 16);
              v50 = *(*(v1 + 8) + 4 * (v48 % *(v1 + 24)));
              if (v50 != 0x7FFFFFFF)
              {
                while (*(v49 + 24 * v50 + 8) != v48)
                {
                  v50 = *(v49 + 24 * v50) & 0x7FFFFFFF;
                  if (v50 == 0x7FFFFFFF)
                  {
                    goto LABEL_90;
                  }
                }

                goto LABEL_91;
              }
            }

            else
            {
              v49 = *(v1 + 16);
            }

LABEL_90:
            v50 = 0x7FFFFFFFLL;
LABEL_91:
            v51 = *(v49 + 24 * v50 + 16);
            if (!*v51 || (v52 = *v51 - 1, (*v51 = v52) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(v51);
              if (*v1)
              {
                v53 = v48 % *(v1 + 24);
                v54 = *(v1 + 8);
                v55 = *(v54 + 4 * v53);
                if (v55 != 0x7FFFFFFF)
                {
                  v56 = *(v1 + 16);
                  if (*(v56 + 24 * v55 + 8) == v48)
                  {
                    v57 = (v56 + 24 * v55);
                    *(v54 + 4 * v53) = *v57 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v58 = v55;
                      v55 = *(v56 + 24 * v55) & 0x7FFFFFFF;
                      if (v55 == 0x7FFFFFFF)
                      {
                        goto LABEL_101;
                      }
                    }

                    while (*(v56 + 24 * v55 + 8) != v48);
                    v57 = (v56 + 24 * v55);
                    *(v56 + 24 * v58) = *(v56 + 24 * v58) & 0x80000000 | *v57 & 0x7FFFFFFF;
                  }

                  *v57 = *(v1 + 36);
                  --*(v1 + 28);
                  v59 = *(v1 + 40) + 1;
                  *(v1 + 36) = v55;
                  *(v1 + 40) = v59;
                }
              }
            }

LABEL_101:
            v60 = *(v8 + 104);
            if (v60 <= v45 + 1)
            {
              v60 = v45 + 1;
            }

            while (v60 - 1 != v45)
            {
              LODWORD(v45) = v45 + 1;
              if ((*(*(v8 + 88) + 16 * v45) & 0x80000000) != 0)
              {
                goto LABEL_107;
              }
            }

            LODWORD(v45) = v60;
            continue;
          }

          break;
        }

        v61 = *(v8 + 152);
        if (!v61)
        {
          LODWORD(v62) = 0;
          goto LABEL_138;
        }

        v62 = 0;
        v63 = *(v8 + 136);
        do
        {
          v64 = *v63;
          v63 += 4;
          if (v64 < 0)
          {
            goto LABEL_138;
          }

          ++v62;
        }

        while (v61 != v62);
        LODWORD(v62) = *(v8 + 152);
LABEL_138:
        while (2)
        {
          if (v62 != v61)
          {
            v65 = *(*(v8 + 136) + 16 * v62 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 120, v65);
            if (*(v1 + 48))
            {
              v66 = *(v1 + 64);
              v67 = *(*(v1 + 56) + 4 * (v65 % *(v1 + 72)));
              if (v67 != 0x7FFFFFFF)
              {
                while (*(v66 + 24 * v67 + 8) != v65)
                {
                  v67 = *(v66 + 24 * v67) & 0x7FFFFFFF;
                  if (v67 == 0x7FFFFFFF)
                  {
                    goto LABEL_121;
                  }
                }

                goto LABEL_122;
              }
            }

            else
            {
              v66 = *(v1 + 64);
            }

LABEL_121:
            v67 = 0x7FFFFFFFLL;
LABEL_122:
            v68 = *(v66 + 24 * v67 + 16);
            if (!*v68 || (v69 = *v68 - 1, (*v68 = v69) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v68);
              if (*(v1 + 48))
              {
                v70 = v65 % *(v1 + 72);
                v71 = *(v1 + 56);
                v72 = *(v71 + 4 * v70);
                if (v72 != 0x7FFFFFFF)
                {
                  v73 = *(v1 + 64);
                  if (*(v73 + 24 * v72 + 8) == v65)
                  {
                    v74 = (v73 + 24 * v72);
                    *(v71 + 4 * v70) = *v74 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v75 = v72;
                      v72 = *(v73 + 24 * v72) & 0x7FFFFFFF;
                      if (v72 == 0x7FFFFFFF)
                      {
                        goto LABEL_132;
                      }
                    }

                    while (*(v73 + 24 * v72 + 8) != v65);
                    v74 = (v73 + 24 * v72);
                    *(v73 + 24 * v75) = *(v73 + 24 * v75) & 0x80000000 | *v74 & 0x7FFFFFFF;
                  }

                  *v74 = *(v1 + 84);
                  --*(v1 + 76);
                  v76 = *(v1 + 88) + 1;
                  *(v1 + 84) = v72;
                  *(v1 + 88) = v76;
                }
              }
            }

LABEL_132:
            v77 = *(v8 + 152);
            if (v77 <= v62 + 1)
            {
              v77 = v62 + 1;
            }

            while (v77 - 1 != v62)
            {
              LODWORD(v62) = v62 + 1;
              if ((*(*(v8 + 136) + 16 * v62) & 0x80000000) != 0)
              {
                goto LABEL_138;
              }
            }

            LODWORD(v62) = v77;
            continue;
          }

          break;
        }

        v78 = *(v8 + 296);
        if (!v78)
        {
          LODWORD(v79) = 0;
          goto LABEL_169;
        }

        v79 = 0;
        v80 = *(v8 + 280);
        do
        {
          v81 = *v80;
          v80 += 4;
          if (v81 < 0)
          {
            goto LABEL_169;
          }

          ++v79;
        }

        while (v78 != v79);
        LODWORD(v79) = *(v8 + 296);
LABEL_169:
        while (2)
        {
          if (v79 != v78)
          {
            v82 = *(*(v8 + 280) + 16 * v79 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 264, v82);
            if (*(v1 + 192))
            {
              v83 = *(v1 + 208);
              v84 = *(*(v1 + 200) + 4 * (v82 % *(v1 + 216)));
              if (v84 != 0x7FFFFFFF)
              {
                while (*(v83 + 24 * v84 + 8) != v82)
                {
                  v84 = *(v83 + 24 * v84) & 0x7FFFFFFF;
                  if (v84 == 0x7FFFFFFF)
                  {
                    goto LABEL_152;
                  }
                }

                goto LABEL_153;
              }
            }

            else
            {
              v83 = *(v1 + 208);
            }

LABEL_152:
            v84 = 0x7FFFFFFFLL;
LABEL_153:
            v85 = *(v83 + 24 * v84 + 16);
            if (!*v85 || (v86 = *v85 - 1, (*v85 = v86) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v85);
              if (*(v1 + 192))
              {
                v87 = v82 % *(v1 + 216);
                v88 = *(v1 + 200);
                v89 = *(v88 + 4 * v87);
                if (v89 != 0x7FFFFFFF)
                {
                  v90 = *(v1 + 208);
                  if (*(v90 + 24 * v89 + 8) == v82)
                  {
                    v91 = (v90 + 24 * v89);
                    *(v88 + 4 * v87) = *v91 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v92 = v89;
                      v89 = *(v90 + 24 * v89) & 0x7FFFFFFF;
                      if (v89 == 0x7FFFFFFF)
                      {
                        goto LABEL_163;
                      }
                    }

                    while (*(v90 + 24 * v89 + 8) != v82);
                    v91 = (v90 + 24 * v89);
                    *(v90 + 24 * v92) = *(v90 + 24 * v92) & 0x80000000 | *v91 & 0x7FFFFFFF;
                  }

                  *v91 = *(v1 + 228);
                  --*(v1 + 220);
                  v93 = *(v1 + 232) + 1;
                  *(v1 + 228) = v89;
                  *(v1 + 232) = v93;
                }
              }
            }

LABEL_163:
            v94 = *(v8 + 296);
            if (v94 <= v79 + 1)
            {
              v94 = v79 + 1;
            }

            while (v94 - 1 != v79)
            {
              LODWORD(v79) = v79 + 1;
              if ((*(*(v8 + 280) + 16 * v79) & 0x80000000) != 0)
              {
                goto LABEL_169;
              }
            }

            LODWORD(v79) = v94;
            continue;
          }

          break;
        }

        v95 = *(v8 + 344);
        if (!v95)
        {
          LODWORD(v96) = 0;
          goto LABEL_200;
        }

        v96 = 0;
        v97 = *(v8 + 328);
        do
        {
          v98 = *v97;
          v97 += 4;
          if (v98 < 0)
          {
            goto LABEL_200;
          }

          ++v96;
        }

        while (v95 != v96);
        LODWORD(v96) = *(v8 + 344);
LABEL_200:
        while (2)
        {
          if (v96 != v95)
          {
            v99 = *(*(v8 + 328) + 16 * v96 + 8);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 312, v99);
            if (*(v1 + 240))
            {
              v100 = *(v1 + 256);
              v101 = *(*(v1 + 248) + 4 * (v99 % *(v1 + 264)));
              if (v101 != 0x7FFFFFFF)
              {
                while (*(v100 + 24 * v101 + 8) != v99)
                {
                  v101 = *(v100 + 24 * v101) & 0x7FFFFFFF;
                  if (v101 == 0x7FFFFFFF)
                  {
                    goto LABEL_183;
                  }
                }

                goto LABEL_184;
              }
            }

            else
            {
              v100 = *(v1 + 256);
            }

LABEL_183:
            v101 = 0x7FFFFFFFLL;
LABEL_184:
            v102 = *(v100 + 24 * v101 + 16);
            if (!*v102 || (v103 = *v102 - 1, (*v102 = v103) == 0))
            {
              re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(v102);
              if (*(v1 + 240))
              {
                v104 = v99 % *(v1 + 264);
                v105 = *(v1 + 248);
                v106 = *(v105 + 4 * v104);
                if (v106 != 0x7FFFFFFF)
                {
                  v107 = *(v1 + 256);
                  if (*(v107 + 24 * v106 + 8) == v99)
                  {
                    v108 = (v107 + 24 * v106);
                    *(v105 + 4 * v104) = *v108 & 0x7FFFFFFF;
                  }

                  else
                  {
                    do
                    {
                      v109 = v106;
                      v106 = *(v107 + 24 * v106) & 0x7FFFFFFF;
                      if (v106 == 0x7FFFFFFF)
                      {
                        goto LABEL_194;
                      }
                    }

                    while (*(v107 + 24 * v106 + 8) != v99);
                    v108 = (v107 + 24 * v106);
                    *(v107 + 24 * v109) = *(v107 + 24 * v109) & 0x80000000 | *v108 & 0x7FFFFFFF;
                  }

                  *v108 = *(v1 + 276);
                  *(v1 + 276) = v106;
                  --*(v1 + 268);
                  ++*(v1 + 280);
                }
              }
            }

LABEL_194:
            v110 = *(v8 + 344);
            if (v110 <= v96 + 1)
            {
              v110 = v96 + 1;
            }

            while (v110 - 1 != v96)
            {
              LODWORD(v96) = v96 + 1;
              if ((*(*(v8 + 328) + 16 * v96) & 0x80000000) != 0)
              {
                goto LABEL_200;
              }
            }

            LODWORD(v96) = v110;
            continue;
          }

          break;
        }

        v111 = *(v8 + 392);
        if (!v111)
        {
          LODWORD(v112) = 0;
          goto LABEL_231;
        }

        v112 = 0;
        v113 = *(v8 + 376);
        do
        {
          v114 = *v113;
          v113 += 4;
          if (v114 < 0)
          {
            goto LABEL_231;
          }

          ++v112;
        }

        while (v111 != v112);
        LODWORD(v112) = *(v8 + 392);
LABEL_231:
        while (2)
        {
          if (v112 != v111)
          {
            v115 = *(*(v8 + 376) + 16 * v112 + 8);
            v116 = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(v8 + 360, v115);
            if (*(v1 + 288))
            {
              v117 = *(v1 + 304);
              v118 = *(*(v1 + 296) + 4 * (v115 % *(v1 + 312)));
              if (v118 != 0x7FFFFFFF)
              {
                while (*(v117 + 24 * v118 + 8) != v115)
                {
                  v118 = *(v117 + 24 * v118) & 0x7FFFFFFF;
                  if (v118 == 0x7FFFFFFF)
                  {
                    goto LABEL_214;
                  }
                }

                goto LABEL_215;
              }
            }

            else
            {
              v117 = *(v1 + 304);
            }

LABEL_214:
            v118 = 0x7FFFFFFFLL;
LABEL_215:
            v119 = *(v117 + 24 * v118 + 16);
            if (!*v119 || (v120 = *v119 - 1, (*v119 = v120) == 0))
            {
              v121 = re::globalAllocators(v116)[2];
              re::DynamicArray<re::ArgumentBufferResolution>::deinit((v119 + 12));
              re::DynamicArray<re::ArgumentBufferResolution>::deinit((v119 + 2));
              (*(*v121 + 40))(v121, v119);
              if (*(v1 + 288))
              {
                v122 = v115 % *(v1 + 312);
                v123 = *(v1 + 296);
                v124 = *(v123 + 4 * v122);
                if (v124 != 0x7FFFFFFF)
                {
                  v125 = *(v1 + 304);
                  if (*(v125 + 24 * v124 + 8) == v115)
                  {
                    v126 = (v125 + 24 * v124);
                    *(v123 + 4 * v122) = *v126 & 0x7FFFFFFF;
LABEL_224:
                    *v126 = *(v1 + 324);
                    *(v1 + 324) = v124;
                    --*(v1 + 316);
                    ++*(v1 + 328);
                  }

                  else
                  {
                    while (1)
                    {
                      v127 = v124;
                      v124 = *(v125 + 24 * v124) & 0x7FFFFFFF;
                      if (v124 == 0x7FFFFFFF)
                      {
                        break;
                      }

                      if (*(v125 + 24 * v124 + 8) == v115)
                      {
                        v126 = (v125 + 24 * v124);
                        *(v125 + 24 * v127) = *(v125 + 24 * v127) & 0x80000000 | *v126 & 0x7FFFFFFF;
                        goto LABEL_224;
                      }
                    }
                  }
                }
              }
            }

            v128 = *(v8 + 392);
            if (v128 <= v112 + 1)
            {
              v128 = v112 + 1;
            }

            while (v128 - 1 != v112)
            {
              LODWORD(v112) = v112 + 1;
              if ((*(*(v8 + 376) + 16 * v112) & 0x80000000) != 0)
              {
                goto LABEL_231;
              }
            }

            LODWORD(v112) = v128;
            continue;
          }

          break;
        }

        v4 = v153;
        v129 = *(v153 + 120);
        if (v129 <= v5 + 1)
        {
          v129 = v5 + 1;
        }

        while (v129 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(v153 + 104) + 32 * v5) & 0x80000000) != 0)
          {
            goto LABEL_238;
          }
        }

        LODWORD(v5) = v129;
LABEL_238:
        ;
      }

      while (v5 != v154);
LABEL_239:
      v3 = v151 + 5;
    }

    while (v151 + 5 != v150);
  }

  if (*(v1 + 416))
  {
    v130 = 0;
    do
    {
      WeakRetained = objc_loadWeakRetained((*(v1 + 432) + 8 * v130));
      if (WeakRetained)
      {

        ++v130;
        v132 = *(v1 + 416);
      }

      else
      {
        v133 = *(v1 + 416);
        if (v133 <= v130)
        {
          v155 = 0;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v164 = 0u;
          v148 = MEMORY[0x1E69E9C10];
          v156 = 136315906;
          v157 = "removeAt";
          v158 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v149 = 3;
          }

          else
          {
            v149 = 2;
          }

          v159 = 931;
          v160 = 2048;
          v161 = v130;
          v162 = 2048;
          v163 = v133;
          _os_log_send_and_compose_impl(v149, &v155, &v164, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v156, 38, v150, v151);
          _os_crash_msg();
          __break(1u);
        }

        v134 = *(v1 + 432);
        if (v133 - 1 > v130)
        {
          v135 = (v134 + 8 * v133 - 8);
          v136 = (v134 + 8 * v130);
          if (v135 != v136)
          {
            objc_destroyWeak((v134 + 8 * v130));
            *v136 = 0;
            objc_moveWeak(v136, v135);
            v133 = *(v1 + 416);
            v134 = *(v1 + 432);
          }
        }

        v137 = v134 + 8 * v133;
        objc_destroyWeak((v137 - 8));
        *(v137 - 8) = 0;
        v132 = *(v1 + 416) - 1;
        *(v1 + 416) = v132;
        ++*(v1 + 424);
      }
    }

    while (v130 < v132);
  }

  os_unfair_lock_lock((v1 + 488));
  v138 = *(v1 + 472);
  if (v138)
  {
    v139 = 0;
    v140 = *(v1 + 456);
    while (1)
    {
      v141 = *v140;
      v140 += 6;
      if (v141 < 0)
      {
        break;
      }

      if (v138 == ++v139)
      {
        LODWORD(v139) = *(v1 + 472);
        break;
      }
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

  while (v139 != v138)
  {
    v142 = *(v1 + 456) + 24 * v139 + 16;
    if (objc_isUniquelyReferenced())
    {
      if (*v142)
      {

        *v142 = 0;
      }

      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v1 + 440, (v142 - 8), *(v142 - 8), &v164);
      v143 = HIDWORD(v164);
      if (HIDWORD(v164) != 0x7FFFFFFF)
      {
        v144 = *(v1 + 456);
        v145 = *(v144 + 24 * HIDWORD(v164)) & 0x7FFFFFFF;
        if (v165 == 0x7FFFFFFF)
        {
          *(*(v1 + 448) + 4 * DWORD2(v164)) = v145;
          v143 = HIDWORD(v164);
        }

        else
        {
          *(v144 + 24 * v165) = *(v144 + 24 * v165) & 0x80000000 | v145;
        }

        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(v1 + 440, v143);
        v146 = HIDWORD(v164);
        *(*(v1 + 456) + 24 * HIDWORD(v164)) = *(*(v1 + 456) + 24 * HIDWORD(v164)) & 0x80000000 | *(v1 + 476);
        *(v1 + 476) = v146;
        --*(v1 + 468);
        ++*(v1 + 480);
      }
    }

    v147 = *(v1 + 472);
    if (v147 <= v139 + 1)
    {
      v147 = v139 + 1;
    }

    while (v147 - 1 != v139)
    {
      LODWORD(v139) = v139 + 1;
      if ((*(*(v1 + 456) + 24 * v139) & 0x80000000) != 0)
      {
        goto LABEL_271;
      }
    }

    LODWORD(v139) = v147;
LABEL_271:
    ;
  }

  os_unfair_lock_unlock((v1 + 488));
}

void *re::internal::MoveOnlyCallable<re::MaterialManager::destroyMaterial(unsigned long,re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>> &&)::$_0::operator()(void)::{lambda(void)#1},void ()(void)>::moveInto(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5D06120;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  v3 = a1[3];
  a2[2] = a1[2];
  a2[3] = v3;
  a1[2] = 0;
  a1[3] = 0;
  v4 = a2[4];
  a2[4] = a1[4];
  a1[4] = v4;
  a2[5] = a1[5];
  return a2;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::remove(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = a2 % v2;
    v4 = *(result + 8);
    v5 = *(v4 + 4 * (a2 % v2));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(result + 16);
      if (*(v6 + 16 * v5 + 8) == a2)
      {
        *(v4 + 4 * v3) = *(v6 + 16 * v5) & 0x7FFFFFFF;
LABEL_8:
        v8 = *(result + 16);
        v9 = (v8 + 16 * v5);
        v10 = *v9;
        if (*v9 < 0)
        {
          *v9 = v10 & 0x7FFFFFFF;
          v8 = *(result + 16);
          v10 = *(v8 + 16 * v5);
        }

        v11 = *(result + 40);
        *(v8 + 16 * v5) = *(result + 36) | v10 & 0x80000000;
        --*(result + 28);
        *(result + 36) = v5;
        *(result + 40) = v11 + 1;
      }

      else
      {
        while (1)
        {
          v7 = v5;
          v5 = *(v6 + 16 * v5) & 0x7FFFFFFF;
          if (v5 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v6 + 16 * v5 + 8) == a2)
          {
            *(v6 + 16 * v7) = *(v6 + 16 * v7) & 0x80000000 | *(v6 + 16 * v5) & 0x7FFFFFFF;
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ArgumentBufferResolution>::deinit(uint64_t a1)
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
        v6 = v3 + 80;
        do
        {
          v7 = *(v6 + 40);
          if (v7)
          {

            *(v6 + 40) = 0;
          }

          re::DynamicArray<re::ConstantResolution>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 144;
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

uint64_t re::DynamicArray<re::ConstantResolution>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        v6 = v3 + 56;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 48);
          v6 += 112;
          v5 -= 112;
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

void *re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
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
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(v11, v8);
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
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

_anonymous_namespace_ *re::DataArray<re::MaterialParameterBlock>::allocBlock(void *a1)
{
  v3 = 1008 * *(a1 + 11);
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 + 16) = 0u;
  *(v7 + 24) = *(a4 + 24);
  v8 = *(a4 + 8);
  *v7 = *a4;
  *a4 = 0;
  v9 = *(a4 + 16);
  *(a4 + 24) = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  v12 = *(a4 + 48);
  v13 = *(a4 + 64);
  v14 = *(a4 + 80);
  *(v7 + 96) = *(a4 + 96);
  *(v7 + 64) = v13;
  *(v7 + 80) = v14;
  *(v7 + 48) = v12;
  *(v7 + 32) = *(a4 + 32);
  ++*(a1 + 40);
  return v7;
}

double re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 72 * v15), (*(v23[0] + 8) + 72 * v15 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v25);
}

int64x2_t re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 9 * (v13 + 16 * v11);
  v17 = a1[1] + 72 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 64) = a3[7];
  a3[7] = 0;
  v18 = *(v17 + 8);
  *(v17 + 8) = *a3;
  *a3 = v18;
  v19 = *(v17 + 16);
  v20 = a3[2];
  *(v17 + 16) = a3[1];
  *(v17 + 24) = v20;
  a3[1] = v19;
  a3[2] = 0;
  v21 = *(v17 + 48);
  *(v17 + 48) = a3[5];
  a3[5] = v21;
  v22 = *(v17 + 56);
  *(v17 + 56) = a3[6];
  a3[6] = v22;
  v23 = *(v17 + 32);
  *(v17 + 32) = a3[3];
  a3[3] = v23;
  v24 = *(v17 + 40);
  *(v17 + 40) = a3[4];
  a3[4] = v24;
  if (v15 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  result = vaddq_s64(*(a1 + 3), v26);
  *(a1 + 3) = result;
  v28 = *(a1[1] + 8 * v16) ^ (*(a1[1] + 8 * v16) >> 30);
  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v28) ^ ((0xBF58476D1CE4E5B9 * v28) >> 27));
  a1[5] ^= (v29 >> 31) ^ v29;
  return result;
}

void *re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(void *a1)
{
  *a1 = &unk_1F5D061E0;
  v2 = a1 + 1;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  return a1;
}

uint64_t re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        v6 = (v3 + 16);
        do
        {
          if (*(v6 - 8) == 1 && *v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 2);
          if (v7)
          {

            *(v6 - 2) = 0;
          }

          v6 += 4;
          v5 -= 32;
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

double re::DataArray<re::MaterialParameterBlock>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::MaterialParameterBlock>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 9);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    v5 = v4;
    if (v4 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = a1[2];
          *&v27[16] = v13;
          a1[2] = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 3);
          v14 = *&v27[32];
          *(a1 + 3) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *v18 % *(a1 + 6), *v18);
                v20 = v18[1];
                *(v19 + 8) = *v18;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
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

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v21 = a1[2];
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = a1[2];
    v22 = *(v21 + 24 * v4);
    *(a1 + 9) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = a1[1];
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v21 + 24 * v4;
}

void re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_275, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 24 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(uint64_t result, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(result + 16);
    v5 = *(v4 + 24 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(result + 8) + 4 * a2[2]) = v5;
      v2 = a2[3];
    }

    else
    {
      *(v4 + 24 * v3) = *(v4 + 24 * v3) & 0x80000000 | v5;
    }

    v6 = *(result + 40);
    *(v4 + 24 * v2) = *(result + 36);
    --*(result + 28);
    *(result + 36) = v2;
    *(result + 40) = v6 + 1;
  }

  return result;
}

void *re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] == a2)
  {
    return result;
  }

  v4 = result;
  if (result[2] > a2)
  {
    return result;
  }

  v5 = *result;
  if (!*v4)
  {
    result = re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(v4, a2);
    ++*(v4 + 6);
    return result;
  }

  if (a2 >> 58)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
    __break(1u);
    goto LABEL_12;
  }

  v2 = a2 << 6;
  result = (*(*v5 + 32))(v5, a2 << 6, 16);
  if (!result)
  {
LABEL_12:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v4 + 8));
    result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
    __break(1u);
    return result;
  }

  v7 = result;
  if (v4[1])
  {
    memcpy(result, v4[4], v4[2] << 6);
    result = (*(**v4 + 40))(*v4, v4[4]);
  }

  v4[4] = v7;
  v4[1] = a2;
  return result;
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::SharedPtr<re::MaterialPipelineData> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v9 = *a4;
  *(v7 + 16) = *a4;
  v10 = v7 + 16;
  *(v7 + 8) = v8;
  if (v9)
  {
    v11 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v10;
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 1) % *(a1 + 24), *(v18 - 1));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v27);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 6), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v20 + 32 * v5;
}

void re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_275, 4 * v10);
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

void re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_275, 4 * v2);
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

uint64_t re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
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
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

void ___ZN2re20GraphicsFeatureFlags37systemMaterialParametersDirtyTrackingEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "GraphicsSystemMaterialParametersDirtyTracking", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Dirty tracking of SystemMaterialPrameterBlock parameters is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags20mergeComputeEncodersEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "GraphicsMergeComputeEncoders", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Merging Compute Encoders is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags16enableDepthPatchEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enableDepthPatch", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Depth Patch is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enablePbrToSurfaceShaderConversionEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enablePbrToSurfaceShaderConversion", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "PBR-to-Surface Shader runtime conversion is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enableMeshPartDepthBiasInSortGroupEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enableMeshPartDepthBiasInSortGroup", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "MeshPartDepthBiasInSortGroup is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags14enableUIShadowEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enableUIShadow", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableUIShadow is %s.", buf, 0xCu);
  }
}

void ___ZN2re20GraphicsFeatureFlags34enableOptOutFadeGroupInnerDistanceEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v5, "enableOptOutFadeGroupInnerDistance", a2);
  if (v5[0] == 1)
  {
    re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::gEnableOptOutFadeGroupInnerDistance = v5[1];
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::gEnableOptOutFadeGroupInnerDistance)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableOptOutFadeGroupInnerDistance is %s.", buf, 0xCu);
  }
}

uint64_t re::REAnalyticsEventShaderCompilationRequest(re *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, uint64_t a7, unsigned int *a8, unsigned int a9, unsigned int a10, uint64_t a11, const char *a12, uint64_t a13, char a14)
{
  v34 = a8;
  v33 = a6;
  if (!a4)
  {
    goto LABEL_19;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
  v17 = [v16 hasPrefix:@"snapshotCamera"];
  if (!v17)
  {
    if ([v16 hasPrefix:@"Reality Simulation Default Camera"])
    {
      v19 = [v16 rangeOfString:@"_" options:4];
      if (!v19 || (v21 = v19, v19 >= [v16 length]))
      {
        re::DynamicString::format(&v42, "RSCamera_%s", v20, "");
        goto LABEL_18;
      }

      v22 = [v16 substringFromIndex:v21 + 1];
      v30 = [v22 cStringUsingEncoding:4];
      re::DynamicString::format(&v42, "RSCamera_%s", v23, v30);
    }

    else
    {
      v24 = [v16 hasPrefix:@"rOS Shared Scene"];
      if (!v24)
      {
        v18 = a4;
        goto LABEL_4;
      }

      v25 = [v16 rangeOfString:@"_" options:4];
      if (!v25 || (v27 = v25, v25 >= [v16 length]))
      {
        re::DynamicString::format(&v42, "SharedScene_%s", v26, "");
        goto LABEL_18;
      }

      v22 = [v16 substringFromIndex:v27 + 1];
      v31 = [v22 cStringUsingEncoding:4];
      re::DynamicString::format(&v42, "SharedScene_%s", v28, v31);
    }

    goto LABEL_18;
  }

  v18 = "snapshotCamera";
LABEL_4:
LABEL_18:

LABEL_19:
  re::DynamicString::DynamicString(v35, &v42);
  v35[4] = a5;
  v35[5] = a7;
  v36 = v33;
  v37 = v34;
  v38 = a9;
  v39 = a10;
  v40 = a12;
  v35[6] = a11;
  v35[7] = a13;
  v41 = a14;
  AnalyticsSendEventLazy();
  if (v35[0])
  {
    if (v35[1])
    {
      (*(*v35[0] + 40))();
    }

    memset(v35, 0, 32);
  }

  result = v42;
  if (v42)
  {
    if (v43)
    {
      return (*(*v42 + 40))(v42, v44);
    }
  }

  return result;
}

id ___ZN2re40REAnalyticsEventShaderCompilationRequestEPKcS1_S1_S1_S1_jPjjjjS1_bmb_block_invoke(uint64_t a1)
{
  v21[14] = *MEMORY[0x1E69E9840];
  v20[0] = @"MaterialName";
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v21[0] = v19;
  v20[1] = @"TechniqueName";
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 40)];
  v21[1] = v18;
  v20[2] = @"NodeName";
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 48)];
  v21[2] = v17;
  v20[3] = @"GraphScope";
  if (*(a1 + 64))
  {
    v2 = *(a1 + 72);
  }

  else
  {
    v2 = a1 + 65;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  v21[3] = v16;
  v20[4] = @"TypeScope";
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 88)];
  v21[4] = v15;
  v20[5] = @"SampleCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 120)];
  v21[5] = v3;
  v20[6] = @"PixelFormats";
  v4 = *(a1 + 96);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u %u %u %u %u %u %u %u", *v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6], v4[7]];
  v21[6] = v5;
  v20[7] = @"DepthFormat";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 124)];
  v21[7] = v6;
  v20[8] = @"StencilFormat";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 128)];
  v21[8] = v7;
  v20[9] = @"TechniqueStateOverrideFlags";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 132)];
  v21[9] = v8;
  v20[10] = @"VertexDescriptor";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 104)];
  v21[10] = v9;
  v20[11] = @"CompiledInAssetRegistration";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 136)];
  v21[11] = v10;
  v20[12] = @"CompilationHash";
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", *(a1 + 112)];
  v21[12] = v11;
  v20[13] = @"IsFallback";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 137)];
  v21[13] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:14];

  return v13;
}

id ___ZN2re37REAnalyticsEventRenderGraphCacheStateEjjjj_block_invoke(unsigned int *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"GraphEmitCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[8]];
  v9[0] = v2;
  v8[1] = @"CacheHitCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[9]];
  v9[1] = v3;
  v8[2] = @"CacheMissCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[10]];
  v9[2] = v4;
  v8[3] = @"BuildErrorCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[11]];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id ___ZN2re48REAnalyticsEventShaderPermutationsForCustomClearEPKc_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"ShaderPermutation";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm4_float4(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = vadd_s32(v11, 0x100000001);
  v13 = vand_s8(v12, 0xFFFF0000FFFFLL);
  v14 = vceq_s32(vand_s8(v11, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v38) = v14.i16[2];
  v15 = vbic_s8(v11, v14);
  LOWORD(v38) = v14.i16[0];
  v14.i32[0] = a1[12].i32[1] & v38;
  v16.i32[0] = a1[12].u16[0];
  v16.i32[1] = a1[12].u16[1];
  v17 = vorr_s8(v15, *&vmovl_u16(v14));
  v18 = vbic_s8(v12, vceq_s32(v13, v16));
  v19 = a1[26];
  v20 = vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL);
  v21 = vshl_n_s32(vzip1_s32(v17, v18), 2uLL);
  v22 = vmul_n_s32(v20, *&a1[4]);
  v23 = *&v19 + (v21.i16[0] & 0xFFFC);
  v24 = v22.u32[1];
  v25 = v22.i32[0];
  v26 = *&v19 + (v21.i16[2] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v27 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v21)), v27), _Q3);
  v20.i32[0] = *(v23 + v24);
  v30 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v20)), v27), _Q3);
  v13.i32[0] = *(v26 + v25);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v13)), v27), _Q3);
  a8.i32[0] = *(v26 + v24);
  v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v27), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v29, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v31, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v32, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v26) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v26) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v26;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = a1[4];
  v13 = vzip2_s32(v9, v10);
  v14 = *&v11 + v9.u16[0];
  v15 = vmul_n_s32(vshr_n_s32(vshl_n_s32(v13, 0x10uLL), 0x10uLL), v12.i32[0]);
  v16 = v15.i32[0];
  v17 = *&v11 + v10.u16[0];
  v15.i8[0] = *(v14 + v15.u32[0]);
  v10.i8[0] = *(v14 + v15.u32[1]);
  v12.i8[0] = *(v17 + v16);
  v13.i8[0] = *(v17 + v15.u32[1]);
  __asm { FMOV            V5.2S, #1.0 }

  v23 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v23.f32[0], v4, 1) * v10.u32[0]) + (v15.u32[0] * vmuls_lane_f32(v23.f32[0], v23, 1))) + (v12.u32[0] * vmuls_lane_f32(*v4.i32, v23, 1))) + (v13.u32[0] * vmuls_lane_f32(*v4.i32, v4, 1));
  v24 = vdupq_lane_s32(v4, 0);
  v24.i32[3] = 1132396544;
  *&result = vmulq_f32(v24, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *v3.i64 = _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(*(a1 + 8), *(a1 + 56), a2, a3);
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v6 = fmaxf(a4, 0.0);
  v7 = v6 - truncf(v6);
  v8 = v6;
  if (a1 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = a1;
  }

  v10 = (a2 + 224 * v9);
  v11 = vmla_f32(0xBF000000BF000000, a3, v10[13]);
  v12 = vrndm_f32(v11);
  v13 = vsub_f32(v11, v12);
  v14 = vcvt_s32_f32(v12);
  v15 = vadd_s32(v14, 0x100000001);
  v16 = vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v67) = v16.i16[2];
  v17 = vbic_s8(v14, v16);
  LOWORD(v67) = v16.i16[0];
  v16.i32[0] = v10[12].i32[1] & v67;
  v18.i32[0] = v10[12].u16[0];
  v18.i32[1] = v10[12].u16[1];
  v19 = vorr_s8(v17, *&vmovl_u16(v16));
  v20 = vbic_s8(v15, vceq_s32(vand_s8(v15, 0xFFFF0000FFFFLL), v18));
  v21 = v10[26];
  v10 += 4;
  v22 = vld1_dup_f32(v10);
  v23 = vmul_s32(v22, vshr_n_s32(vshl_n_s32(vzip2_s32(v19, v20), 0x10uLL), 0x10uLL));
  v24 = vshl_n_s32(vzip1_s32(v19, v20), 2uLL);
  v25 = *&v21 + (v24.i16[0] & 0xFFFC);
  v26 = v23.u32[1];
  v27 = v23.i32[0];
  v24.i32[0] = *(v25 + v23.u32[0]);
  v28 = *&v21 + (v24.i16[2] & 0xFFFC);
  v29 = vdupq_n_s32(0x4B400000u);
  v30 = vdupq_n_s32(0xCB400000);
  v22.i32[0] = *(v25 + v26);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v24)), v29), v30);
  v32 = vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v29);
  v22.i32[0] = *(v28 + v27);
  v33 = vaddq_f32(v32, v30);
  v4.i32[0] = *(v28 + v26);
  v34 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v29), v30);
  v35 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v4)), v29), v30);
  __asm { FMOV            V3.2S, #1.0 }

  v41 = vsub_f32(_D3, v13);
  v42 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v33, vmuls_lane_f32(v41.f32[0], v13, 1)), v31, vmuls_lane_f32(v41.f32[0], v41, 1)), v34, vmuls_lane_f32(v13.f32[0], v41, 1)), v35, vmuls_lane_f32(v13.f32[0], v13, 1));
  if (v7 >= 0.00001 && v8 < a1)
  {
    v43 = (a2 + 224 * (v9 + 1));
    v44 = vmla_f32(0xBF000000BF000000, a3, v43[13]);
    v45 = vrndm_f32(v44);
    v46 = vsub_f32(v44, v45);
    v47 = vcvt_s32_f32(v45);
    v48 = vadd_s32(v47, 0x100000001);
    v49 = vand_s8(v48, 0xFFFF0000FFFFLL);
    v50 = vceq_s32(vand_s8(v47, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v66) = v50.i16[2];
    v51 = vbic_s8(v47, v50);
    LOWORD(v66) = v50.i16[0];
    v50.i32[0] = v43[12].i32[1] & v66;
    v52 = vorr_s8(v51, *&vmovl_u16(v50));
    v50.i32[0] = v43[12].u16[0];
    v50.i32[1] = v43[12].u16[1];
    v53 = vbic_s8(v48, vceq_s32(v49, v50));
    v54 = v43[26];
    v43 += 4;
    v55 = vld1_dup_f32(v43);
    v56 = vmul_s32(v55, vshr_n_s32(vshl_n_s32(vzip2_s32(v52, v53), 0x10uLL), 0x10uLL));
    v57 = vshl_n_s32(vzip1_s32(v52, v53), 2uLL);
    v58 = *&v54 + (v57.i16[0] & 0xFFFC);
    v59 = v56.u32[1];
    v60 = v56.i32[0];
    v61 = *&v54 + (v57.i16[2] & 0xFFFC);
    v57.i32[0] = *(v58 + v56.u32[0]);
    v62 = vdupq_n_s32(0x4B400000u);
    v63 = vdupq_n_s32(0xCB400000);
    v55.i32[0] = *(v58 + v59);
    v49.i32[0] = *(v61 + v60);
    v5.i32[0] = *(v61 + v59);
    v64 = vsub_f32(_D3, v46);
    v42.i64[0] = vmlaq_n_f32(v42, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v55)), v62), v63), vmuls_lane_f32(v64.f32[0], v46, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v57)), v62), v63), vmuls_lane_f32(v64.f32[0], v64, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v49)), v62), v63), vmuls_lane_f32(v46.f32[0], v64, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v5)), v62), v63), vmuls_lane_f32(v46.f32[0], v46, 1)), v42), v7).u64[0];
  }

  return *v42.i64;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<unsigned char>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4;
  v6 = v4 - truncf(v4);
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v57) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v57) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v57;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  v17 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  v19 = v17.i16[0];
  v20 = *&v18 + v16.u16[0];
  v21 = vshr_n_s32(vshl_n_s32(vzip2_s32(v16, v17), 0x10uLL), 0x10uLL);
  v22 = vld1_dup_f32(v8);
  v23 = vmul_s32(v22, v21);
  v24 = v23.i32[0];
  v25 = *&v18 + v19;
  v23.i8[0] = *(v20 + v23.u32[0]);
  *v22.i32 = v23.u32[0];
  v23.i8[0] = *(v20 + v23.u32[1]);
  *v13.i32 = v23.u32[0];
  v23.i8[0] = *(v25 + v24);
  v26 = v23.u32[0];
  v23.i8[0] = *(v25 + v23.u32[1]);
  v27 = v23.u32[0];
  __asm { FMOV            V5.2S, #1.0 }

  v32 = vsub_f32(_D5, v11);
  *v11.i32 = (((vmuls_lane_f32(v32.f32[0], v11, 1) * *v13.i32) + (*v22.i32 * vmuls_lane_f32(v32.f32[0], v32, 1))) + (v26 * vmuls_lane_f32(*v11.i32, v32, 1))) + (v27 * vmuls_lane_f32(*v11.i32, v11, 1));
  v33 = vdupq_lane_s32(v11, 0);
  v33.i32[3] = 1132396544;
  if (v6 >= 0.00001 && v5 < a1)
  {
    v35 = (a2 + 224 * (v7 + 1));
    v36 = vmla_f32(0xBF000000BF000000, a3, v35[13]);
    v37 = vrndm_f32(v36);
    v38 = vsub_f32(v36, v37);
    v39 = vcvt_s32_f32(v37);
    v40 = vadd_s32(v39, 0x100000001);
    v41 = vceq_s32(vand_s8(v39, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v56) = v41.i16[2];
    v42 = vbic_s8(v39, v41);
    LOWORD(v56) = v41.i16[0];
    v41.i32[0] = v35[12].i32[1] & v56;
    v37.i32[0] = v35[12].u16[0];
    v37.i32[1] = v35[12].u16[1];
    v43 = vorr_s8(v42, *&vmovl_u16(v41));
    v44 = vbic_s8(v40, vceq_s32(vand_s8(v40, 0xFFFF0000FFFFLL), v37));
    v45 = v35[26];
    v35 += 4;
    v46 = vzip2_s32(v43, v44);
    v47 = v44.i16[0];
    v48 = *&v45 + v43.u16[0];
    v49 = vld1_dup_f32(v35);
    v50 = vmul_s32(v49, vshr_n_s32(vshl_n_s32(v46, 0x10uLL), 0x10uLL));
    v51 = v50.i32[0];
    v52 = *&v45 + v47;
    v50.i8[0] = *(v48 + v50.u32[0]);
    v49.i8[0] = *(v48 + v50.u32[1]);
    v46.i8[0] = *(v52 + v51);
    v37.i8[0] = *(v52 + v50.u32[1]);
    v53 = vsub_f32(_D5, v38);
    *v38.i32 = (((vmuls_lane_f32(v53.f32[0], v38, 1) * v49.u32[0]) + (v50.u32[0] * vmuls_lane_f32(v53.f32[0], v53, 1))) + (v46.u32[0] * vmuls_lane_f32(*v38.i32, v53, 1))) + (v37.u32[0] * vmuls_lane_f32(*v38.i32, v38, 1));
    v54 = vdupq_lane_s32(v38, 0);
    v54.i32[3] = 1132396544;
    v33.i64[0] = vmlaq_n_f32(v33, vsubq_f32(v54, v33), v6).u64[0];
  }

  return *v33.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm4_float4(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = vadd_s32(v11, 0x100000001);
  v13 = vand_s8(v12, 0xFFFF0000FFFFLL);
  v14 = vceq_s32(vand_s8(v11, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v38) = v14.i16[2];
  v15 = vbic_s8(v11, v14);
  LOWORD(v38) = v14.i16[0];
  v14.i32[0] = a1[12].i32[1] & v38;
  v16.i32[0] = a1[12].u16[0];
  v16.i32[1] = a1[12].u16[1];
  v17 = vorr_s8(v15, *&vmovl_u16(v14));
  v18 = vbic_s8(v12, vceq_s32(v13, v16));
  v19 = a1[26];
  v20 = vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL);
  v21 = vshl_n_s32(vzip1_s32(v17, v18), 2uLL);
  v22 = vmul_n_s32(v20, *&a1[4]);
  v23 = *&v19 + (v21.i16[0] & 0xFFFC);
  v24 = v22.u32[1];
  v25 = v22.i32[0];
  v26 = *&v19 + (v21.i16[2] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v27 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v21)), v27), _Q3);
  v20.i32[0] = *(v23 + v24);
  v30 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v20)), v27), _Q3);
  v13.i32[0] = *(v26 + v25);
  v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v13)), v27), _Q3);
  a8.i32[0] = *(v26 + v24);
  v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v27), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v29, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v31, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v32, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v26) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v26) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v26;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = a1[4];
  v13 = vzip2_s32(v9, v10);
  v14 = *&v11 + v9.u16[0];
  v15 = vmul_n_s32(vshr_n_s32(vshl_n_s32(v13, 0x10uLL), 0x10uLL), v12.i32[0]);
  v16 = v15.i32[0];
  v17 = *&v11 + v10.u16[0];
  v15.i8[0] = *(v14 + v15.u32[0]);
  v10.i8[0] = *(v14 + v15.u32[1]);
  v12.i8[0] = *(v17 + v16);
  v13.i8[0] = *(v17 + v15.u32[1]);
  __asm { FMOV            V5.2S, #1.0 }

  v23 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v23.f32[0], v4, 1) * v10.u32[0]) + (v15.u32[0] * vmuls_lane_f32(v23.f32[0], v23, 1))) + (v12.u32[0] * vmuls_lane_f32(*v4.i32, v23, 1))) + (v13.u32[0] * vmuls_lane_f32(*v4.i32, v4, 1));
  v24 = vdupq_lane_s32(v4, 0);
  v24.i32[3] = 1132396544;
  *&result = vmulq_f32(v24, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *v3.i64 = _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_hEEDv4_fRKNS_7TextureEDv2_fNS_5levelE(*(a1 + 8), *(a1 + 56), vsub_f32(a2, vrndm_f32(a2)), a3);
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  *&result = vmulq_f32(v3, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm4_float4(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, uint8x8_t a7, uint8x8_t a8)
{
  v8 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v9 = vrndm_f32(v8);
  v10 = vsub_f32(v8, v9);
  v11 = vcvt_s32_f32(v9);
  v12 = *(a1 + 100);
  v13 = vmin_s16(vmax_s16(vuzp1_s16(v11, v10).u32[0], 0).u32[0], v12).u32[0];
  v14 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v11, 0x100000001), v10).u32[0], 0).u32[0], v12);
  v15 = *(a1 + 208);
  v16 = *(a1 + 32);
  v17 = v16 * (v13 >> 16);
  v18 = (v14.i32[0] >> 16) * v16;
  v19 = v15 + 4 * (v13 & 0x3FFF);
  v20 = v15 + 4 * (v14.i16[0] & 0x3FFF);
  v14.i32[0] = *(v19 + v17);
  v21 = vdupq_n_s32(0x4B400000u);
  _Q3 = vdupq_n_s32(0xCB400000);
  v23 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v14)), v21), _Q3);
  v24 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v19 + v18))), v21), _Q3);
  a7.i32[0] = *(v20 + v17);
  v25 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a7)), v21), _Q3);
  a8.i32[0] = *(v20 + v18);
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v21), _Q3);
  __asm { FMOV            V3.2S, #1.0 }

  *_Q3.f32 = vsub_f32(*_Q3.f32, v10);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, vmuls_lane_f32(_Q3.f32[0], v10, 1)), v23, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v25, vmuls_lane_f32(v10.f32[0], *_Q3.f32, 1)), v26, vmuls_lane_f32(v10.f32[0], v10, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm_float4(uint64_t a1, float32x2_t a2)
{
  *&result = vmulq_f32(v2, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_clamp_linear_float4<unsigned char>(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v5, v4).u32[0], 0).u32[0], v6).u32[0];
  v5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v5, 0x100000001), v4).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  v10 = v9 * (v7 >> 16);
  v11 = (v5.i32[0] >> 16) * v9;
  v12 = v8 + v7;
  v13 = v8 + v5.u16[0];
  v5.i8[0] = *(v12 + v10);
  LOBYTE(v6) = *(v12 + v11);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v19.f32[0], v4, 1) * v6) + (v5.u32[0] * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(v13 + v10) * vmuls_lane_f32(*v4.i32, v19, 1))) + (*(v13 + v11) * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v5 = v4 - truncf(v4);
  v6 = *(a1 + 8);
  v7 = v4;
  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v10 = v9 + 224 * v8;
  v11 = vmla_f32(0xBF000000BF000000, a2, *(v10 + 104));
  v12 = vrndm_f32(v11);
  v13 = vcvt_s32_f32(v12);
  v14 = *(v10 + 100);
  v15 = vmax_s16(vuzp1_s16(v13, a2).u32[0], 0).u32[0];
  v16 = vsub_f32(v11, v12);
  v17 = vmin_s16(v15.u32[0], v14).u32[0];
  v18 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v13, 0x100000001), a2).u32[0], 0).u32[0], v14);
  v19 = *(v10 + 208);
  LODWORD(v10) = *(v10 + 32);
  v20 = v10 * (v17 >> 16);
  LODWORD(v10) = (v18.i32[0] >> 16) * v10;
  v21 = v19 + 4 * (v17 & 0x3FFF);
  v22 = 4 * (v18.i16[0] & 0x3FFF);
  v18.i32[0] = *(v21 + v20);
  v23 = v19 + v22;
  v24 = vdupq_n_s32(0x4B400000u);
  v25 = vdupq_n_s32(0xCB400000);
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v18)), v24), v25);
  v27 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v21 + v10))), v24), v25);
  v15.i32[0] = *(v23 + v10);
  v28 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v23 + v20))), v24), v25);
  v29 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v15)), v24), v25);
  __asm { FMOV            V3.2S, #1.0 }

  v35 = vsub_f32(_D3, v16);
  v36 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, vmuls_lane_f32(v35.f32[0], v16, 1)), v26, vmuls_lane_f32(v35.f32[0], v35, 1)), v28, vmuls_lane_f32(v16.f32[0], v35, 1)), v29, vmuls_lane_f32(v16.f32[0], v16, 1));
  if (v5 >= 0.00001 && v6 > v7)
  {
    v37 = v9 + 224 * (v8 + 1);
    v38 = vmla_f32(0xBF000000BF000000, a2, *(v37 + 104));
    v39 = vrndm_f32(v38);
    v40 = vsub_f32(v38, v39);
    v41 = vcvt_s32_f32(v39);
    v42 = *(v37 + 100);
    v38.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v41, v40).u32[0], 0).u32[0], v42).u32[0];
    v43.i32[1] = 1;
    v44 = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v41, 0x100000001), v40).u32[0], 0).u32[0], v42);
    v45 = *(v37 + 208);
    LODWORD(v37) = *(v37 + 32);
    v46 = v37 * (v38.i32[0] >> 16);
    LODWORD(v37) = (v44.i32[0] >> 16) * v37;
    v47 = v45 + 4 * (v38.i16[0] & 0x3FFF);
    v48 = v45 + 4 * (v44.i16[0] & 0x3FFF);
    v44.i32[0] = *(v47 + v46);
    v49 = vdupq_n_s32(0x4B400000u);
    v50 = vdupq_n_s32(0xCB400000);
    v43.i32[0] = *(v48 + v46);
    v3.i32[0] = *(v48 + v37);
    v51 = vsub_f32(_D3, v40);
    v36 = vmlaq_n_f32(v36, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*(v47 + v37))), v49), v50), vmuls_lane_f32(v51.f32[0], v40, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v44)), v49), v50), vmuls_lane_f32(v51.f32[0], v51, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v43)), v49), v50), vmuls_lane_f32(v40.f32[0], v51, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v3)), v49), v50), vmuls_lane_f32(v40.f32[0], v40, 1)), v36), v5);
  }

  *&result = vmulq_f32(v36, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v15 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  v10 = v9;
  if (v15 >= 0.00001 && v6 > v5)
  {
    v14 = v9;
    v10 = vmlaq_n_f32(v14, vsubq_f32(v12, v14), v15);
  }

  *&result = vmulq_f32(v10, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleCube_linear_8Unorm4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  *v5.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(a1, a2, a3, a4, a5);
  *&result = vmulq_f32(v5, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v67 = a2;
  v66 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v39 = 0uLL;
    v40 = *(a1 + 32);
    v41 = vmovl_u16(*(&v63 + 8));
    HIWORD(v62) = v41.i16[2];
    LOWORD(v62) = v41.i16[0];
    v42 = 4 * v41.u16[0];
    v43 = vmovl_u16(*&v64);
    HIWORD(v61) = v43.i16[2];
    LOWORD(v61) = v43.i16[0];
    v44 = 4 * v43.u16[0];
    v45.i32[1] = HIDWORD(v64);
    v46 = vmovl_u16(*(&v64 + 8));
    HIWORD(v60) = v46.i16[2];
    LOWORD(v60) = v46.i16[0];
    v47 = *(a1 + 208);
    v45.i32[0] = *(v47 + HIDWORD(v40) * WORD6(v63) + v40 * HIWORD(v62) + v42);
    v48 = 4 * v46.u16[0];
    v49 = vmovl_u8(v45).u64[0];
    v45.i32[0] = *(v47 + HIDWORD(v40) * WORD2(v64) + v40 * HIWORD(v61) + v44);
    v50 = vmovl_u8(v45).u64[0];
    v45.i32[0] = *(v47 + HIDWORD(v40) * WORD6(v64) + v40 * HIWORD(v60) + v48);
    v51 = vmovl_u8(v45).u64[0];
    if (*v65.i32 != 0.0)
    {
      v52 = vmovl_u16(*&v63);
      HIWORD(v59) = v52.i16[2];
      LOWORD(v59) = v52.i16[0];
      v52.i32[0] = *(v47 + HIDWORD(v40) * WORD2(v63) + v40 * HIWORD(v59) + 4 * v52.u16[0]);
      v39 = vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v52.i8)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), *v65.i32);
    }

    v53 = vdupq_n_s32(0x4B400000u);
    v54 = vdupq_n_s32(0xCB400000);
    v55 = vaddq_f32(vorrq_s8(vmovl_u16(v51), v53), v54);
    v56 = vaddq_f32(vorrq_s8(vmovl_u16(v50), v53), v54);
    v57 = vaddq_f32(vorrq_s8(vmovl_u16(v49), v53), v54);
    v53.i64[0] = 0;
    v58 = vandq_s8(vmulq_lane_f32(v57, *v65.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v65.i8, 1), v53)), 0));
    *v53.i8 = vceqz_f32(*&vextq_s8(v65, v65, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(v55, v65, 3), vmovl_s16(vdup_lane_s16(*v53.i8, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(v56, v65, 2), vmovl_s16(vdup_lane_s16(*v53.i8, 0))), vaddq_f32(v58, v39))).u64[0];
  }

  else
  {
    v13 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(v13);
    v15 = vsub_f32(v13, v14);
    v16 = vcvt_s32_f32(v14);
    v17 = *(a1 + 100);
    v18 = vmin_s16(vmax_s16(vuzp1_s16(v16, v16).u32[0], 0).u32[0], v17).u32[0];
    v19 = vadd_s32(v16, 0x100000001);
    v20 = vmin_s16(vmax_s16(vuzp1_s16(v19, v19).u32[0], 0).u32[0], v17);
    v21 = *(a1 + 32);
    v22 = *(a1 + 208) + *(a1 + 36) * v66;
    v23 = v21 * (v18 >> 16);
    v24 = v21 * v20.i16[1];
    v25 = v22 + 4 * (v18 & 0x3FFF);
    v26 = v22 + 4 * (v20.i16[0] & 0x3FFF);
    v20.i32[0] = *(v25 + v23);
    v27 = vdupq_n_s32(0x4B400000u);
    v28 = vorrq_s8(vmovl_u16(*&vmovl_u8(v20)), v27);
    _Q3 = vdupq_n_s32(0xCB400000);
    v30 = vaddq_f32(v28, _Q3);
    v28.i32[0] = *(v25 + v24);
    v31 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v28.f32)), v27), _Q3);
    v10.i32[0] = *(v26 + v23);
    v32 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v10.i8)), v27), _Q3);
    v11.i32[0] = *(v26 + v24);
    v33 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v11.i8)), v27), _Q3);
    __asm { FMOV            V3.2S, #1.0 }

    *_Q3.f32 = vsub_f32(*_Q3.f32, v15);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v31, vmuls_lane_f32(_Q3.f32[0], v15, 1)), v30, vmuls_lane_f32(_Q3.f32[0], *_Q3.f32, 1)), v32, vmuls_lane_f32(v15.f32[0], *_Q3.f32, 1)), v33, vmuls_lane_f32(v15.f32[0], v15, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_linear_8Unorm_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  *&result = vmulq_f32(v5, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<unsigned char>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v59 = a2;
  v58 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v33 = *(a1 + 32);
    v34 = *(a1 + 36);
    v35 = vmovl_u16(*&v55);
    v36 = v34 * WORD2(v55) + v33 * v35.u16[2];
    v37 = v35.u16[0];
    v38 = vmovl_u16(*(&v55 + 8));
    v39 = v34 * WORD6(v55) + v33 * v38.u16[2];
    v40 = v38.u16[0];
    v41 = vmovl_u16(*&v56);
    v42 = v34 * WORD2(v56) + v33 * v41.u16[2];
    v43 = v41.u16[0];
    v32.n128_u64[0] = *(&v56 + 1);
    v41.i64[0] = vmovl_u16(*(&v56 + 8)).u64[0];
    v44 = v34 * WORD6(v56) + v33 * v41.u16[2];
    v45 = v41.u16[0];
    v46 = *(a1 + 208);
    v32.n128_u8[0] = *(v46 + v36 + v37);
    v32.n128_f32[0] = v32.n128_u32[0];
    v41.i8[0] = *(v46 + v39 + v40);
    *v41.i32 = v41.u32[0];
    LOBYTE(v47) = *(v46 + v42 + v43);
    *v48.i32 = v47;
    v49.i64[0] = 0;
    v50 = vandq_s8(vdupq_lane_s32(*&vmulq_f32(v32, v57), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v57, v49)), 0));
    v51 = vandq_s8(vmulq_lane_f32(vdupq_lane_s32(*v41.i8, 0), *v57.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v57.f32, 1), v49)), 0));
    v52 = vceqq_f32(vdupq_laneq_s32(v57, 2), v49);
    v53 = vdupq_laneq_s32(v57, 3);
    v54 = vceqq_f32(v53, v49);
    v53.i8[0] = *(v46 + v44 + v45);
    v53.f32[0] = v53.u32[0];
    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(*v53.f32, 0), v57, 3), vdupq_lane_s32(*&vmvnq_s8(v54), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(v48, 0), v57, 2), vdupq_lane_s32(*&vmvnq_s8(v52), 0)), vaddq_f32(v50, v51))).u64[0];
  }

  else
  {
    v13 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(v13);
    v15 = vsub_f32(v13, v14);
    v16 = vcvt_s32_f32(v14);
    v17 = *(a1 + 100);
    v18 = vmin_s16(vmax_s16(vuzp1_s16(v16, v15).u32[0], 0).u32[0], v17).u32[0];
    v16.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v16, 0x100000001), v15).u32[0], 0).u32[0], v17).u32[0];
    v19 = *(a1 + 32);
    v20 = *(a1 + 208) + *(a1 + 36) * v58;
    v21 = v19 * (v18 >> 16);
    v22 = v19 * (v16.i32[0] >> 16);
    v23 = v20 + v18;
    v24 = v20 + v16.u16[0];
    v16.i8[0] = *(v23 + v21);
    LOBYTE(v17) = *(v23 + v22);
    __asm { FMOV            V5.2S, #1.0 }

    v30 = vsub_f32(_D5, v15);
    v15.f32[0] = (((vmuls_lane_f32(v30.f32[0], v15, 1) * v17) + (v16.u32[0] * vmuls_lane_f32(v30.f32[0], v30, 1))) + (*(v24 + v21) * vmuls_lane_f32(v15.f32[0], v30, 1))) + (*(v24 + v22) * vmuls_lane_f32(v15.f32[0], v15, 1));
    *&result = vdupq_lane_s32(v15, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_8Unorm4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v19 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v19 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v18 = v12;
    *v15.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_hEEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, v19, *v12.i64, v11);
    v12 = vmlaq_n_f32(v18, vsubq_f32(v15, v18), *&v19);
  }

  *&result = vmulq_f32(v12, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::sampleCube_trilinear_8Unorm_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v19 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v19 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v18 = v12;
    v12 = vmlaq_n_f32(v18, vsubq_f32(v15, v18), *&v19);
  }

  *&result = vmulq_f32(v12, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixel_8Unorm4_float4(uint64_t a1, unsigned int a2, uint8x8_t a3)
{
  a3.i32[0] = *(*(a1 + 208) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a3)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixel_8Unorm_float4(uint64_t a1, unsigned int a2, double a3)
{
  LOBYTE(a3) = *(*(a1 + 208) + *(a1 + 32) * HIWORD(a2) + a2);
  *&a3 = LODWORD(a3) * 0.0039216;
  *&result = vdupq_lane_s32(*&a3, 0).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_8Unorm4_float4(uint64_t a1, unsigned int a2, int a3, uint8x8_t a4)
{
  a4.i32[0] = *(*(a1 + 208) + (*(a1 + 36) * a3) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_8Unorm_float4(uint64_t a1, unsigned int a2, int a3, double a4)
{
  LOBYTE(a4) = *(*(a1 + 208) + (*(a1 + 36) * a3) + *(a1 + 32) * HIWORD(a2) + a2);
  *&a4 = LODWORD(a4) * 0.0039216;
  *&result = vdupq_lane_s32(*&a4, 0).u64[0];
  return result;
}

int8x8_t MetalEmulation::writePixel_8Unorm4(uint64_t a1, unsigned int a2, float32x4_t a3)
{
  v3 = vdupq_n_s32(0x437F0000u);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v4, v3, a3), 0), v3)));
  result = vuzp1_s8(v5, v5);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 4 * a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixel_8Unorm(uint64_t a1, unsigned int a2, float a3)
{
  v3 = (a3 * 255.0) + 0.5;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
    if (v3 > 255.0)
    {
      v4 = 255.0;
    }
  }

  result = vdup_n_s8(v4);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixelArray_8Unorm4(uint64_t a1, unsigned int a2, int a3, float32x4_t a4)
{
  v4 = vdupq_n_s32(0x437F0000u);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, v4, a4), 0), v4)));
  result = vuzp1_s8(v6, v6);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 4 * a2) = result.i32[0];
  return result;
}

int8x8_t MetalEmulation::writePixelArray_8Unorm(uint64_t a1, unsigned int a2, int a3, float a4)
{
  v4 = (a4 * 255.0) + 0.5;
  v5 = 0.0;
  if (v4 >= 0.0)
  {
    v5 = v4;
    if (v4 > 255.0)
    {
      v5 = 255.0;
    }
  }

  result = vdup_n_s8(v5);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + a2) = result.i32[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 3uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v19.f32[0], v4, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v19.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v4.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  _D4 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v24) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v24) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v24;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  _D2 = vbic_s8(_D4, vceq_s32(vand_s8(_D4, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  _D3 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, _D2), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vzip1_s32(v9, _D2);
  _D1 = vadd_s32(v13, v13);
  v15 = *&v11 + (_D1.i16[0] & 0xFFFE);
  v16 = *&v11 + (_D1.i16[2] & 0xFFFE);
  _D1.i16[0] = *(v15 + _D3.u32[0]);
  _D2.i16[0] = *(v15 + _D3.u32[1]);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  _D3.i16[0] = *(v16 + _D3.u32[0]);
  _D4.i16[0] = *(v16 + _D3.u32[1]);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *_D2.i32) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (*_D3.i32 * vmuls_lane_f32(*v4.i32, v22, 1))) + (*_D4.i32 * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_DF16_EEDv4_fRKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v5 = fmaxf(a4, 0.0);
  v6 = v5 - truncf(v5);
  v7 = v5;
  if (a1 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = a1;
  }

  v9 = (a2 + 224 * v8);
  v10 = vmla_f32(0xBF000000BF000000, a3, v9[13]);
  v11 = vrndm_f32(v10);
  v12 = vsub_f32(v10, v11);
  v13 = vcvt_s32_f32(v11);
  v14 = vadd_s32(v13, 0x100000001);
  v15 = vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v47) = v15.i16[2];
  v16 = vbic_s8(v13, v15);
  LOWORD(v47) = v15.i16[0];
  v15.i32[0] = v9[12].i32[1] & v47;
  v17 = vorr_s8(v16, *&vmovl_u16(v15));
  v15.i32[0] = v9[12].u16[0];
  v15.i32[1] = v9[12].u16[1];
  v18 = vbic_s8(v14, vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), v15));
  v19 = v9[26];
  v9 += 4;
  v20 = vld1_dup_f32(v9);
  v21 = vmul_s32(v20, vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL));
  v22 = vshl_n_s32(vzip1_s32(v17, v18), 3uLL);
  __asm { FMOV            V6.2S, #1.0 }

  v27 = vsub_f32(_D6, v12);
  v28 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v19 + (v22.i16[0] & 0xFFF8) + v21.u32[1])), vmuls_lane_f32(v27.f32[0], v12, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[0] & 0xFFF8) + v21.u32[0])), vmuls_lane_f32(v27.f32[0], v27, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[2] & 0xFFF8) + v21.u32[0])), vmuls_lane_f32(v12.f32[0], v27, 1)), vcvtq_f32_f16(*(*&v19 + (v22.i16[2] & 0xFFF8) + v21.u32[1])), vmuls_lane_f32(v12.f32[0], v12, 1));
  if (v6 >= 0.00001 && v7 < a1)
  {
    v30 = (a2 + 224 * (v8 + 1));
    v31 = vmla_f32(0xBF000000BF000000, a3, v30[13]);
    v32 = vrndm_f32(v31);
    v33 = vsub_f32(v31, v32);
    v34 = vcvt_s32_f32(v32);
    v35 = vadd_s32(v34, 0x100000001);
    v36 = vceq_s32(vand_s8(v34, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v46) = v36.i16[2];
    v37 = vbic_s8(v34, v36);
    LOWORD(v46) = v36.i16[0];
    v36.i32[0] = v30[12].i32[1] & v46;
    v38 = vorr_s8(v37, *&vmovl_u16(v36));
    v36.i32[0] = v30[12].u16[0];
    v36.i32[1] = v30[12].u16[1];
    v39 = vbic_s8(v35, vceq_s32(vand_s8(v35, 0xFFFF0000FFFFLL), v36));
    v40 = v30[26];
    v30 += 4;
    v41 = vld1_dup_f32(v30);
    v42 = vmul_s32(v41, vshr_n_s32(vshl_n_s32(vzip2_s32(v38, v39), 0x10uLL), 0x10uLL));
    v43 = vshl_n_s32(vzip1_s32(v38, v39), 3uLL);
    v44 = vsub_f32(_D6, v33);
    v28.i64[0] = vmlaq_n_f32(v28, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v40 + (v43.i16[0] & 0xFFF8) + v42.u32[1])), vmuls_lane_f32(v44.f32[0], v33, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[0] & 0xFFF8) + v42.u32[0])), vmuls_lane_f32(v44.f32[0], v44, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[2] & 0xFFF8) + v42.u32[0])), vmuls_lane_f32(v33.f32[0], v44, 1)), vcvtq_f32_f16(*(*&v40 + (v43.i16[2] & 0xFFF8) + v42.u32[1])), vmuls_lane_f32(v33.f32[0], v33, 1)), v28), v6).u64[0];
  }

  return *v28.i64;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<half>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4 - truncf(v4);
  v6 = v4;
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v55) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v55) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v55;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  _D4 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  _D6 = vld1_dup_f32(v8);
  _D5 = vmul_s32(_D6, vshr_n_s32(vshl_n_s32(vzip2_s32(v16, _D4), 0x10uLL), 0x10uLL));
  v21 = vzip1_s32(v16, _D4);
  _D3 = vadd_s32(v21, v21);
  v23 = *&v18 + (_D3.i16[0] & 0xFFFE);
  v24 = _D5.i32[0];
  v25 = *&v18 + (_D3.i16[2] & 0xFFFE);
  _D3.i16[0] = *(v23 + _D5.u32[0]);
  __asm { FCVT            S4, H3 }

  _D3.i16[0] = *(v23 + _D5.u32[1]);
  __asm { FCVT            S5, H3 }

  _D3.i16[0] = *(v25 + v24);
  __asm { FCVT            S6, H3 }

  _D3.i16[0] = *(v25 + _D5.u32[1]);
  __asm
  {
    FCVT            S7, H3
    FMOV            V3.2S, #1.0
  }

  v32 = vsub_f32(_D3, v11);
  *v11.i32 = (((vmuls_lane_f32(v32.f32[0], v11, 1) * *_D5.i32) + (*_D4.i32 * vmuls_lane_f32(v32.f32[0], v32, 1))) + (*_D6.i32 * vmuls_lane_f32(*v11.i32, v32, 1))) + (_S7 * vmuls_lane_f32(*v11.i32, v11, 1));
  v33 = vdupq_lane_s32(v11, 0);
  v33.i32[3] = 1.0;
  if (v5 >= 0.00001 && v6 < a1)
  {
    v34 = (a2 + 224 * (v7 + 1));
    v35 = vmla_f32(0xBF000000BF000000, a3, v34[13]);
    v36 = vrndm_f32(v35);
    v37 = vsub_f32(v35, v36);
    v38 = vcvt_s32_f32(v36);
    v39 = vadd_s32(v38, 0x100000001);
    v40 = vceq_s32(vand_s8(v38, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v54) = v40.i16[2];
    v41 = vbic_s8(v38, v40);
    LOWORD(v54) = v40.i16[0];
    v40.i32[0] = v34[12].i32[1] & v54;
    v42 = vorr_s8(v41, *&vmovl_u16(v40));
    v40.i32[0] = v34[12].u16[0];
    v40.i32[1] = v34[12].u16[1];
    _D5 = vbic_s8(v39, vceq_s32(vand_s8(v39, 0xFFFF0000FFFFLL), v40));
    v44 = v34[26];
    v34 += 4;
    _D7 = vld1_dup_f32(v34);
    _D6 = vmul_s32(_D7, vshr_n_s32(vshl_n_s32(vzip2_s32(v42, _D5), 0x10uLL), 0x10uLL));
    v47 = vzip1_s32(v42, _D5);
    _D4 = vadd_s32(v47, v47);
    v49 = *&v44 + (_D4.i16[0] & 0xFFFE);
    v50 = *&v44 + (_D4.i16[2] & 0xFFFE);
    _D4.i16[0] = *(v49 + _D6.u32[0]);
    __asm { FCVT            S4, H4 }

    _D5.i16[0] = *(v49 + _D6.u32[1]);
    __asm { FCVT            S5, H5 }

    _D6.i16[0] = *(v50 + _D6.u32[0]);
    __asm { FCVT            S6, H6 }

    _D7.i16[0] = *(v50 + _D6.u32[1]);
    __asm { FCVT            S7, H7 }

    v51 = vsub_f32(_D3, v37);
    *v37.i32 = (((vmuls_lane_f32(v51.f32[0], v37, 1) * *_D5.i32) + (*_D4.i32 * vmuls_lane_f32(v51.f32[0], v51, 1))) + (*_D6.i32 * vmuls_lane_f32(*v37.i32, v51, 1))) + (*_D7.i32 * vmuls_lane_f32(*v37.i32, v37, 1));
    v52 = vdupq_lane_s32(v37, 0);
    v52.i32[3] = 1.0;
    v33.i64[0] = vmlaq_n_f32(v33, vsubq_f32(v52, v33), v5).u64[0];
  }

  return *v33.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_half4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 3uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v19.f32[0], v4, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[0] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v19.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[0])), vmuls_lane_f32(v4.f32[0], v19, 1)), vcvtq_f32_f16(*(*&v11 + (v13.i16[2] & 0xFFF8) + v12.u32[1])), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_half_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  _D4 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v24) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v24) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v24;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  _D2 = vbic_s8(_D4, vceq_s32(vand_s8(_D4, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  _D3 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, _D2), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vzip1_s32(v9, _D2);
  _D1 = vadd_s32(v13, v13);
  v15 = *&v11 + (_D1.i16[0] & 0xFFFE);
  v16 = *&v11 + (_D1.i16[2] & 0xFFFE);
  _D1.i16[0] = *(v15 + _D3.u32[0]);
  _D2.i16[0] = *(v15 + _D3.u32[1]);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  _D3.i16[0] = *(v16 + _D3.u32[0]);
  _D4.i16[0] = *(v16 + _D3.u32[1]);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *_D2.i32) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (*_D3.i32 * vmuls_lane_f32(*v4.i32, v22, 1))) + (*_D4.i32 * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_half4_float4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v2.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v5, v5).u32[0], 0).u32[0], v6).u32[0];
  v7 = vadd_s32(v5, 0x100000001);
  v7.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v7, v7).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vsub_f32(_D5, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v8 + 8 * (v2.i16[0] & 0x1FFF) + (v7.i16[1] * v9))), vmuls_lane_f32(v15.f32[0], v4, 1)), vcvtq_f32_f16(*(v8 + 8 * (v2.i16[0] & 0x1FFF) + (v9 * (v2.i32[0] >> 16)))), vmuls_lane_f32(v15.f32[0], v15, 1)), vcvtq_f32_f16(*(v8 + 8 * (v7.i16[0] & 0x1FFF) + (v9 * (v2.i32[0] >> 16)))), vmuls_lane_f32(v4.f32[0], v15, 1)), vcvtq_f32_f16(*(v8 + 8 * (v7.i16[0] & 0x1FFF) + (v7.i16[1] * v9))), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_linear_half_float4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  _D1 = vcvt_s32_f32(v3);
  _D2 = *(a1 + 100);
  _S3 = vmin_s16(vmax_s16(vuzp1_s16(_D1, v4).u32[0], 0).u32[0], _D2).u32[0];
  _D1.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D1, 0x100000001), v4).u32[0], 0).u32[0], _D2).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  v10 = v9 * (_S3 >> 16);
  v11 = (_D1.i32[0] >> 16) * v9;
  v12 = v8 + 2 * (_S3 & 0x7FFF);
  v13 = v8 + 2 * (_D1.i16[0] & 0x7FFF);
  _D1.i16[0] = *(v12 + v10);
  LOWORD(_D2) = *(v12 + v11);
  __asm
  {
    FCVT            S1, H1
    FCVT            S2, H2
  }

  LOWORD(_S3) = *(v13 + v10);
  _H4 = *(v13 + v11);
  __asm
  {
    FCVT            S3, H3
    FCVT            S4, H4
    FMOV            V5.2S, #1.0
  }

  v22 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v22.f32[0], v4, 1) * *&_D2) + (*_D1.i32 * vmuls_lane_f32(v22.f32[0], v22, 1))) + (_S3 * vmuls_lane_f32(*v4.i32, v22, 1))) + (_S4 * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_half4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v5 = v4 - truncf(v4);
  v6 = *(a1 + 8);
  v7 = v4;
  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v10 = v9 + 224 * v8;
  v11 = vmla_f32(0xBF000000BF000000, a2, *(v10 + 104));
  v12 = vrndm_f32(v11);
  v13 = vsub_f32(v11, v12);
  v14 = vcvt_s32_f32(v12);
  v15 = *(v10 + 100);
  v16 = vmin_s16(vmax_s16(vuzp1_s16(v14, v14).u32[0], 0).u32[0], v15).u32[0];
  v17 = vadd_s32(v14, 0x100000001);
  v17.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v17, v17).u32[0], 0).u32[0], v15).u32[0];
  v18 = *(v10 + 208);
  LODWORD(v10) = *(v10 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v24 = vsub_f32(_D5, v13);
  v25 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v18 + 8 * (v16 & 0x1FFF) + (v17.i16[1] * v10))), vmuls_lane_f32(v24.f32[0], v13, 1)), vcvtq_f32_f16(*(v18 + 8 * (v16 & 0x1FFF) + (v10 * (v16 >> 16)))), vmuls_lane_f32(v24.f32[0], v24, 1)), vcvtq_f32_f16(*(v18 + 8 * (v17.i16[0] & 0x1FFF) + (v10 * (v16 >> 16)))), vmuls_lane_f32(v13.f32[0], v24, 1)), vcvtq_f32_f16(*(v18 + 8 * (v17.i16[0] & 0x1FFF) + (v17.i16[1] * v10))), vmuls_lane_f32(v13.f32[0], v13, 1));
  if (v5 >= 0.00001 && v6 > v7)
  {
    v27 = v9 + 224 * (v8 + 1);
    v28 = vmla_f32(0xBF000000BF000000, a2, *(v27 + 104));
    v29 = vrndm_f32(v28);
    v30 = vsub_f32(v28, v29);
    v31 = vcvt_s32_f32(v29);
    v32 = *(v27 + 100);
    v29.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v31, *v25.f32).u32[0], 0).u32[0], v32).u32[0];
    v31.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v31, 0x100000001), *v25.f32).u32[0], 0).u32[0], v32).u32[0];
    v33 = *(v27 + 208);
    LODWORD(v27) = *(v27 + 32);
    v34 = vsub_f32(_D5, v30);
    v25.i64[0] = vmlaq_n_f32(v25, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v33 + 8 * (v29.i16[0] & 0x1FFF) + ((v31.i32[0] >> 16) * v27))), vmuls_lane_f32(v34.f32[0], v30, 1)), vcvtq_f32_f16(*(v33 + 8 * (v29.i16[0] & 0x1FFF) + (v27 * (v29.i32[0] >> 16)))), vmuls_lane_f32(v34.f32[0], v34, 1)), vcvtq_f32_f16(*(v33 + 8 * (v31.i16[0] & 0x1FFF) + (v27 * (v29.i32[0] >> 16)))), vmuls_lane_f32(v30.f32[0], v34, 1)), vcvtq_f32_f16(*(v33 + 8 * (v31.i16[0] & 0x1FFF) + ((v31.i32[0] >> 16) * v27))), vmuls_lane_f32(v30.f32[0], v30, 1)), v25), v5).u64[0];
  }

  return *v25.i64;
}

double MetalEmulation::sampleTexture_normalized_clamp_trilinear_half_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v3 = fmaxf(a3, 0.0);
  v4 = v3 - truncf(v3);
  v5 = *(a1 + 8);
  v6 = v3;
  if (v5 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  v9 = v8 + 224 * v7;
  v10 = vmla_f32(0xBF000000BF000000, a2, *(v9 + 104));
  v11 = vrndm_f32(v10);
  _D5 = vcvt_s32_f32(v11);
  _D6 = *(v9 + 100);
  v14 = vsub_f32(v10, v11);
  v15 = vmin_s16(vmax_s16(vuzp1_s16(_D5, a2).u32[0], 0).u32[0], _D6).u32[0];
  _D5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D5, 0x100000001), a2).u32[0], 0).u32[0], _D6).u32[0];
  v16 = *(v9 + 208);
  LODWORD(v9) = *(v9 + 32);
  v17 = v9 * (v15 >> 16);
  LODWORD(v9) = (_D5.i32[0] >> 16) * v9;
  v18 = v16 + 2 * (v15 & 0x7FFF);
  v19 = 2 * (_D5.i16[0] & 0x7FFF);
  _D5.i16[0] = *(v18 + v17);
  v20 = v16 + v19;
  __asm { FCVT            S5, H5 }

  LOWORD(_D6) = *(v18 + v9);
  _H7 = *(v20 + v17);
  __asm
  {
    FCVT            S16, H6
    FCVT            S7, H7
  }

  LOWORD(_D6) = *(v20 + v9);
  __asm
  {
    FCVT            S17, H6
    FMOV            V6.2S, #1.0
  }

  v30 = vsub_f32(_D6, v14);
  *v14.i32 = (((vmuls_lane_f32(v30.f32[0], v14, 1) * _S16) + (*_D5.i32 * vmuls_lane_f32(v30.f32[0], v30, 1))) + (_S7 * vmuls_lane_f32(*v14.i32, v30, 1))) + (_S17 * vmuls_lane_f32(*v14.i32, v14, 1));
  v31 = vdupq_lane_s32(v14, 0);
  v31.i32[3] = 1.0;
  if (v4 >= 0.00001 && v5 > v6)
  {
    v33 = v8 + 224 * (v7 + 1);
    v34 = vmla_f32(0xBF000000BF000000, a2, *(v33 + 104));
    v35 = vrndm_f32(v34);
    v36 = vsub_f32(v34, v35);
    _D3 = vcvt_s32_f32(v35);
    _D7 = *(v33 + 100);
    _S16 = vmin_s16(vmax_s16(vuzp1_s16(_D3, v36).u32[0], 0).u32[0], _D7).u32[0];
    _D3.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D3, 0x100000001), v36).u32[0], 0).u32[0], _D7).u32[0];
    v40 = *(v33 + 208);
    LODWORD(v33) = *(v33 + 32);
    v41 = v33 * (_S16 >> 16);
    LODWORD(v33) = (_D3.i32[0] >> 16) * v33;
    v42 = v40 + 2 * (_S16 & 0x7FFF);
    v43 = v40 + 2 * (_D3.i16[0] & 0x7FFF);
    _D3.i16[0] = *(v42 + v41);
    __asm { FCVT            S3, H3 }

    _H4 = *(v42 + v33);
    __asm { FCVT            S4, H4 }

    LOWORD(_D7) = *(v43 + v41);
    __asm { FCVT            S7, H7 }

    LOWORD(_S16) = *(v43 + v33);
    __asm { FCVT            S16, H16 }

    v47 = vsub_f32(_D6, v36);
    *v36.i32 = (((vmuls_lane_f32(v47.f32[0], v36, 1) * _S4) + (*_D3.i32 * vmuls_lane_f32(v47.f32[0], v47, 1))) + (*&_D7 * vmuls_lane_f32(*v36.i32, v47, 1))) + (_S16 * vmuls_lane_f32(*v36.i32, v36, 1));
    v48 = vdupq_lane_s32(v36, 0);
    v48.i32[3] = 1.0;
    v31.i64[0] = vmlaq_n_f32(v31, vsubq_f32(v48, v31), v4).u64[0];
  }

  return *v31.i64;
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v50 = a2;
  v49 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v30 = 0uLL;
    v31 = *(a1 + 32);
    v32 = vmovl_u16(*(&v46 + 8));
    HIWORD(v45) = v32.i16[2];
    LOWORD(v45) = v32.i16[0];
    v33 = 8 * v32.u16[0];
    v34 = vmovl_u16(*&v47);
    HIWORD(v44) = v34.i16[2];
    LOWORD(v44) = v34.i16[0];
    v35 = 8 * v34.u16[0];
    v36 = vmovl_u16(*(&v47 + 8));
    HIWORD(v43) = v36.i16[2];
    LOWORD(v43) = v36.i16[0];
    v37 = *(a1 + 208);
    v38 = *(v37 + HIDWORD(v31) * WORD6(v47) + v31 * HIWORD(v43) + 8 * v36.u16[0]);
    if (*v48.i32 != 0.0)
    {
      v39 = vmovl_u16(*&v46);
      HIWORD(v42) = v39.i16[2];
      LOWORD(v42) = v39.i16[0];
      v29 = vcvtq_f32_f16(*(v37 + HIDWORD(v31) * WORD2(v46) + v31 * HIWORD(v42) + 8 * v39.u16[0]));
      v30 = vmulq_n_f32(v29, *v48.i32);
    }

    v29.i64[0] = 0;
    v40 = vandq_s8(vmulq_lane_f32(vcvtq_f32_f16(*(v37 + HIDWORD(v31) * WORD6(v46) + v31 * HIWORD(v45) + v33)), *v48.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v48.i8, 1), v29)), 0));
    v41 = vceqz_f32(*&vextq_s8(v48, v48, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(vcvtq_f32_f16(v38), v48, 3), vmovl_s16(vdup_lane_s16(v41, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(vcvtq_f32_f16(*(v37 + HIDWORD(v31) * WORD2(v47) + v31 * HIWORD(v44) + v35)), v48, 2), vmovl_s16(vdup_lane_s16(v41, 0))), vaddq_f32(v40, v30))).u64[0];
  }

  else
  {
    v13 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(v13);
    v15 = vsub_f32(v13, v14);
    v16 = vcvt_s32_f32(v14);
    v17 = *(a1 + 100);
    v18 = vmin_s16(vmax_s16(vuzp1_s16(v16, v16).u32[0], 0).u32[0], v17).u32[0];
    v19 = vadd_s32(v16, 0x100000001);
    v19.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v19, v19).u32[0], 0).u32[0], v17).u32[0];
    v20 = *(a1 + 32);
    v21 = *(a1 + 208) + *(a1 + 36) * v49;
    __asm { FMOV            V5.2S, #1.0 }

    v27 = vsub_f32(_D5, v15);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v21 + 8 * (v18 & 0x1FFF) + (v20 * v19.i16[1]))), vmuls_lane_f32(v27.f32[0], v15, 1)), vcvtq_f32_f16(*(v21 + 8 * (v18 & 0x1FFF) + (v20 * (v18 >> 16)))), vmuls_lane_f32(v27.f32[0], v27, 1)), vcvtq_f32_f16(*(v21 + 8 * (v19.i16[0] & 0x1FFF) + (v20 * (v18 >> 16)))), vmuls_lane_f32(v15.f32[0], v27, 1)), vcvtq_f32_f16(*(v21 + 8 * (v19.i16[0] & 0x1FFF) + (v20 * v19.i16[1]))), vmuls_lane_f32(v15.f32[0], v15, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<half>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v66 = a2;
  v65 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v35 = *(a1 + 32);
    v36 = *(a1 + 36);
    v37 = vmovl_u16(*&v62);
    HIWORD(v61) = v37.i16[2];
    LOWORD(v61) = v37.i16[0];
    v38 = v36 * WORD2(v62) + v35 * HIWORD(v61);
    v39 = 2 * v37.u16[0];
    v40 = vmovl_u16(*(&v62 + 8));
    HIWORD(v60) = v40.i16[2];
    LOWORD(v60) = v40.i16[0];
    v41 = v36 * WORD6(v62) + v35 * HIWORD(v60);
    v42 = 2 * v40.u16[0];
    v43 = vmovl_u16(*&v63);
    HIWORD(v59) = v43.i16[2];
    LOWORD(v59) = v43.i16[0];
    v44 = v36 * WORD2(v63) + v35 * HIWORD(v59);
    v45 = 2 * v43.u16[0];
    _Q0.n128_u32[1] = HIDWORD(v63);
    _Q1 = vmovl_u16(*(&v63 + 8));
    HIWORD(v58) = _Q1.i16[2];
    LOWORD(v58) = _Q1.i16[0];
    v47 = v36 * WORD6(v63) + v35 * HIWORD(v58);
    v48 = 2 * _Q1.u16[0];
    v49 = *(a1 + 208);
    _Q0.n128_u16[0] = *(v49 + v38 + v39);
    __asm { FCVT            S0, H0 }

    _Q1.i16[0] = *(v49 + v41 + v42);
    __asm { FCVT            S1, H1 }

    _H2 = *(v49 + v44 + v45);
    __asm { FCVT            S2, H2 }

    v52.i64[0] = 0;
    v53 = vandq_s8(vdupq_lane_s32(*&vmulq_f32(_Q0, v64), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v64, v52)), 0));
    v54 = vandq_s8(vmulq_lane_f32(vdupq_lane_s32(*_Q1.i8, 0), *v64.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v64.f32, 1), v52)), 0));
    v55 = vceqq_f32(vdupq_laneq_s32(v64, 2), v52);
    _Q6 = vdupq_laneq_s32(v64, 3);
    v57 = vceqq_f32(_Q6, v52);
    _Q6.i16[0] = *(v49 + v47 + v48);
    __asm { FCVT            S6, H6 }

    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(*_Q6.f32, 0), v64, 3), vdupq_lane_s32(*&vmvnq_s8(v57), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(vdupq_lane_s32(_D2, 0), v64, 2), vdupq_lane_s32(*&vmvnq_s8(v55), 0)), vaddq_f32(v53, v54))).u64[0];
  }

  else
  {
    _D1 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(_D1);
    _D2 = vcvt_s32_f32(v14);
    _D3 = *(a1 + 100);
    _S4 = vmax_s16(vuzp1_s16(_D2, v14).u32[0], 0).u32[0];
    v18 = vsub_f32(_D1, v14);
    v19 = vmin_s16(_S4, _D3).u32[0];
    _D1.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(_D2, 0x100000001), v18).u32[0], 0).u32[0], _D3).u32[0];
    v20 = *(a1 + 32);
    v21 = *(a1 + 208) + *(a1 + 36) * v65;
    v22 = v20 * (v19 >> 16);
    v23 = v20 * (_D1.i32[0] >> 16);
    v24 = v21 + 2 * (v19 & 0x7FFF);
    v25 = v21 + 2 * (_D1.i16[0] & 0x7FFF);
    _D1.i16[0] = *(v24 + v22);
    __asm { FCVT            S1, H1 }

    _D2.i16[0] = *(v24 + v23);
    __asm { FCVT            S2, H2 }

    LOWORD(_D3) = *(v25 + v22);
    __asm { FCVT            S3, H3 }

    LOWORD(_S4) = *(v25 + v23);
    __asm
    {
      FCVT            S4, H4
      FMOV            V5.2S, #1.0
    }

    v32 = vsub_f32(_D5, v18);
    v18.f32[0] = (((vmuls_lane_f32(v32.f32[0], v18, 1) * *_D2.i32) + (_D1.f32[0] * vmuls_lane_f32(v32.f32[0], v32, 1))) + (*&_D3 * vmuls_lane_f32(v18.f32[0], v32, 1))) + (_S4 * vmuls_lane_f32(v18.f32[0], v18, 1));
    *&result = vdupq_lane_s32(v18, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_half4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_DF16_EEDv4_fRKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, *v12.i64, v18, v11);
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::sampleCube_trilinear_half_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::readPixel_half_float4(uint64_t a1, unsigned int a2, int32x2_t _D0)
{
  _D0.i16[0] = *(*(a1 + 208) + 2 * a2 + *(a1 + 32) * HIWORD(a2));
  __asm { FCVT            S0, H0 }

  *&result = vdupq_lane_s32(_D0, 0).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_half_float4(uint64_t a1, unsigned int a2, int a3, int32x2_t _D0)
{
  _D0.i16[0] = *(*(a1 + 208) + (*(a1 + 36) * a3) + 2 * a2 + *(a1 + 32) * HIWORD(a2));
  __asm { FCVT            S0, H0 }

  *&result = vdupq_lane_s32(_D0, 0).u64[0];
  return result;
}

float16x4_t MetalEmulation::writePixel_half4(uint64_t a1, unsigned int a2, float32x4_t a3)
{
  result = vcvt_f16_f32(a3);
  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 8 * a2) = result;
  return result;
}

__int16 MetalEmulation::writePixel_half@<H0>(uint64_t a1@<X0>, unsigned int a2@<W1>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(*(a1 + 176) + *(a1 + 32) * HIWORD(a2) + 2 * a2) = result;
  return result;
}

float16x4_t MetalEmulation::writePixelArray_half4(uint64_t a1, unsigned int a2, int a3, float32x4_t a4)
{
  result = vcvt_f16_f32(a4);
  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 8 * a2) = result;
  return result;
}

__int16 MetalEmulation::writePixelArray_half@<H0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(*(a1 + 176) + *(a1 + 36) * a3 + *(a1 + 32) * HIWORD(a2) + 2 * a2) = result;
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v23) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v23) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v23;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 4uLL);
  v14 = *&v11 + (v13.i16[0] & 0xFFF0);
  v15 = *&v11 + (v13.i16[2] & 0xFFF0);
  __asm { FMOV            V0.2S, #1.0 }

  v21 = vsub_f32(_D0, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v14 + v12.u32[1]), vmuls_lane_f32(v21.f32[0], v4, 1)), *(v14 + v12.u32[0]), vmuls_lane_f32(v21.f32[0], v21, 1)), *(v15 + v12.u32[0]), vmuls_lane_f32(v4.f32[0], v21, 1)), *(v15 + v12.u32[1]), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 2uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *v4.i32 = (((*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v19.f32[0], v4, 1)) + (*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(*v4.i32, v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_153sampleTexture_normalized_0to1_repeat_trilinear_float4IDv4_fEES2_RKNS_7TextureEDv2_fNS_5levelE(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v5 = fmaxf(a4, 0.0);
  v6 = v5 - truncf(v5);
  v7 = v5;
  if (a1 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = a1;
  }

  v9 = (a2 + 224 * v8);
  v10 = vmla_f32(0xBF000000BF000000, a3, v9[13]);
  v11 = vrndm_f32(v10);
  v12 = vsub_f32(v10, v11);
  v13 = vcvt_s32_f32(v11);
  v14 = vadd_s32(v13, 0x100000001);
  v15 = vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v49) = v15.i16[2];
  v16 = vbic_s8(v13, v15);
  LOWORD(v49) = v15.i16[0];
  v15.i32[0] = v9[12].i32[1] & v49;
  v17 = vorr_s8(v16, *&vmovl_u16(v15));
  v15.i32[0] = v9[12].u16[0];
  v15.i32[1] = v9[12].u16[1];
  v18 = vbic_s8(v14, vceq_s32(vand_s8(v14, 0xFFFF0000FFFFLL), v15));
  v19 = v9[26];
  v9 += 4;
  v20 = vld1_dup_f32(v9);
  v21 = vmul_s32(v20, vshr_n_s32(vshl_n_s32(vzip2_s32(v17, v18), 0x10uLL), 0x10uLL));
  v22 = vshl_n_s32(vzip1_s32(v17, v18), 4uLL);
  v23 = v21.u32[1];
  v24 = v21.i32[0];
  __asm { FMOV            V6.2S, #1.0 }

  v29 = vsub_f32(_D6, v12);
  v30 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(*&v19 + (v22.i16[0] & 0xFFF0) + v23), vmuls_lane_f32(v29.f32[0], v12, 1)), *(*&v19 + (v22.i16[0] & 0xFFF0) + v24), vmuls_lane_f32(v29.f32[0], v29, 1)), *(*&v19 + (v22.i16[2] & 0xFFF0) + v24), vmuls_lane_f32(v12.f32[0], v29, 1)), *(*&v19 + (v22.i16[2] & 0xFFF0) + v23), vmuls_lane_f32(v12.f32[0], v12, 1));
  if (v6 >= 0.00001 && v7 < a1)
  {
    v32 = (a2 + 224 * (v8 + 1));
    v33 = vmla_f32(0xBF000000BF000000, a3, v32[13]);
    v34 = vrndm_f32(v33);
    v35 = vsub_f32(v33, v34);
    v36 = vcvt_s32_f32(v34);
    v37 = vadd_s32(v36, 0x100000001);
    v38 = vceq_s32(vand_s8(v36, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v48) = v38.i16[2];
    v39 = vbic_s8(v36, v38);
    LOWORD(v48) = v38.i16[0];
    v38.i32[0] = v32[12].i32[1] & v48;
    v40 = vorr_s8(v39, *&vmovl_u16(v38));
    v38.i32[0] = v32[12].u16[0];
    v38.i32[1] = v32[12].u16[1];
    v41 = vbic_s8(v37, vceq_s32(vand_s8(v37, 0xFFFF0000FFFFLL), v38));
    v42 = v32[26];
    v32 += 4;
    v43 = vld1_dup_f32(v32);
    v44 = vmul_s32(v43, vshr_n_s32(vshl_n_s32(vzip2_s32(v40, v41), 0x10uLL), 0x10uLL));
    v45 = vshl_n_s32(vzip1_s32(v40, v41), 4uLL);
    v46 = vsub_f32(_D6, v35);
    v30.i64[0] = vmlaq_n_f32(v30, vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(*&v42 + (v45.i16[0] & 0xFFF0) + v44.u32[1]), vmuls_lane_f32(v46.f32[0], v35, 1)), *(*&v42 + (v45.i16[0] & 0xFFF0) + v44.u32[0]), vmuls_lane_f32(v46.f32[0], v46, 1)), *(*&v42 + (v45.i16[2] & 0xFFF0) + v44.u32[0]), vmuls_lane_f32(v35.f32[0], v46, 1)), *(*&v42 + (v45.i16[2] & 0xFFF0) + v44.u32[1]), vmuls_lane_f32(v35.f32[0], v35, 1)), v30), v6).u64[0];
  }

  return *v30.i64;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_0to1_repeat_trilinear_float4<float>(unsigned int a1, uint64_t a2, float32x2_t a3, float a4)
{
  v4 = fmaxf(a4, 0.0);
  v5 = v4;
  v6 = v4 - truncf(v4);
  if (a1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = (a2 + 224 * v7);
  v9 = vmla_f32(0xBF000000BF000000, a3, v8[13]);
  v10 = vrndm_f32(v9);
  v11 = vsub_f32(v9, v10);
  v12 = vcvt_s32_f32(v10);
  v13 = vadd_s32(v12, 0x100000001);
  v14 = vceq_s32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v51) = v14.i16[2];
  v15 = vbic_s8(v12, v14);
  LOWORD(v51) = v14.i16[0];
  v14.i32[0] = v8[12].i32[1] & v51;
  v16 = vorr_s8(v15, *&vmovl_u16(v14));
  v14.i32[0] = v8[12].u16[0];
  v14.i32[1] = v8[12].u16[1];
  v17 = vbic_s8(v13, vceq_s32(vand_s8(v13, 0xFFFF0000FFFFLL), v14));
  v18 = v8[26];
  v8 += 4;
  v19 = vshr_n_s32(vshl_n_s32(vzip2_s32(v16, v17), 0x10uLL), 0x10uLL);
  v20 = vld1_dup_f32(v8);
  v21 = vshl_n_s32(vzip1_s32(v16, v17), 2uLL);
  v22 = vmul_s32(v20, v19);
  v23 = *&v18 + (v21.i16[0] & 0xFFFC);
  v21.i32[0] = *(v23 + v22.u32[0]);
  v19.i32[0] = *(v23 + v22.u32[1]);
  v24 = *&v18 + (v21.i16[2] & 0xFFFC);
  v20.i32[0] = *(v24 + v22.u32[0]);
  v25 = *(v24 + v22.u32[1]);
  __asm { FMOV            V7.2S, #1.0 }

  v30 = vsub_f32(_D7, v11);
  *v11.i32 = (((*v19.i32 * vmuls_lane_f32(v30.f32[0], v11, 1)) + (*v21.i32 * vmuls_lane_f32(v30.f32[0], v30, 1))) + (*v20.i32 * vmuls_lane_f32(*v11.i32, v30, 1))) + (v25 * vmuls_lane_f32(*v11.i32, v11, 1));
  v31 = vdupq_lane_s32(v11, 0);
  v31.i32[3] = 1.0;
  if (v6 >= 0.00001 && v5 < a1)
  {
    v33 = (a2 + 224 * (v7 + 1));
    v34 = vmla_f32(0xBF000000BF000000, a3, v33[13]);
    v35 = vrndm_f32(v34);
    v36 = vcvt_s32_f32(v35);
    v37 = vadd_s32(v36, 0x100000001);
    v38 = vceq_s32(vand_s8(v36, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
    HIWORD(v50) = v38.i16[2];
    v39 = vbic_s8(v36, v38);
    LOWORD(v50) = v38.i16[0];
    v38.i32[0] = v33[12].i32[1] & v50;
    v40 = vorr_s8(v39, *&vmovl_u16(v38));
    v39.i32[0] = v33[12].u16[0];
    v39.i32[1] = v33[12].u16[1];
    v41 = vbic_s8(v37, vceq_s32(vand_s8(v37, 0xFFFF0000FFFFLL), v39));
    v42 = v33[26];
    v33 += 4;
    v43 = vld1_dup_f32(v33);
    v44 = vmul_s32(v43, vshr_n_s32(vshl_n_s32(vzip2_s32(v40, v41), 0x10uLL), 0x10uLL));
    v45 = vshl_n_s32(vzip1_s32(v40, v41), 2uLL);
    v46 = vsub_f32(v34, v35);
    v47 = vsub_f32(_D7, v46);
    *v46.i32 = (((*(*&v42 + (v45.i16[0] & 0xFFFC) + v44.u32[1]) * vmuls_lane_f32(v47.f32[0], v46, 1)) + (*(*&v42 + (v45.i16[0] & 0xFFFC) + v44.u32[0]) * vmuls_lane_f32(v47.f32[0], v47, 1))) + (*(*&v42 + (v45.i16[2] & 0xFFFC) + v44.u32[0]) * vmuls_lane_f32(*v46.i32, v47, 1))) + (*(*&v42 + (v45.i16[2] & 0xFFFC) + v44.u32[1]) * vmuls_lane_f32(*v46.i32, v46, 1));
    v48 = vdupq_lane_s32(v46, 0);
    v48.i32[3] = 1.0;
    v31.i64[0] = vmlaq_n_f32(v31, vsubq_f32(v48, v31), v6).u64[0];
  }

  return *v31.i64;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_float4_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v23) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v23) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v23;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 4uLL);
  v14 = *&v11 + (v13.i16[0] & 0xFFF0);
  v15 = *&v11 + (v13.i16[2] & 0xFFF0);
  __asm { FMOV            V0.2S, #1.0 }

  v21 = vsub_f32(_D0, v4);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v14 + v12.u32[1]), vmuls_lane_f32(v21.f32[0], v4, 1)), *(v14 + v12.u32[0]), vmuls_lane_f32(v21.f32[0], v21, 1)), *(v15 + v12.u32[0]), vmuls_lane_f32(v4.f32[0], v21, 1)), *(v15 + v12.u32[1]), vmuls_lane_f32(v4.f32[0], v4, 1)).u64[0];
  return result;
}

double MetalEmulation::sampleTexture_normalized_repeat_linear_float_float4(float32x2_t *a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, vsub_f32(a2, vrndm_f32(a2)), a1[13]);
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = vadd_s32(v5, 0x100000001);
  v7 = vceq_s32(vand_s8(v5, 0xFFFF0000FFFFLL), 0xFFFF0000FFFFLL);
  HIWORD(v21) = v7.i16[2];
  v8 = vbic_s8(v5, v7);
  LOWORD(v21) = v7.i16[0];
  v7.i32[0] = a1[12].i32[1] & v21;
  v9 = vorr_s8(v8, *&vmovl_u16(v7));
  v7.i32[0] = a1[12].u16[0];
  v7.i32[1] = a1[12].u16[1];
  v10 = vbic_s8(v6, vceq_s32(vand_s8(v6, 0xFFFF0000FFFFLL), v7));
  v11 = a1[26];
  v12 = vmul_n_s32(vshr_n_s32(vshl_n_s32(vzip2_s32(v9, v10), 0x10uLL), 0x10uLL), *&a1[4]);
  v13 = vshl_n_s32(vzip1_s32(v9, v10), 2uLL);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vsub_f32(_D5, v4);
  *v4.i32 = (((*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(v19.f32[0], v4, 1)) + (*(*&v11 + (v13.i16[0] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(v19.f32[0], v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[0]) * vmuls_lane_f32(*v4.i32, v19, 1))) + (*(*&v11 + (v13.i16[2] & 0xFFFC) + v12.u32[1]) * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

double _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vcvt_s32_f32(v3);
  v5 = *(a1 + 100);
  v6 = vsub_f32(v2, v3);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v4, v3).u32[0], 0).u32[0], v5).u32[0];
  v8 = vadd_s32(v4, 0x100000001);
  v8.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v8, v8).u32[0], 0).u32[0], v5).u32[0];
  v9 = *(a1 + 208);
  v10 = *(a1 + 32);
  v11 = v10 * (v7 >> 16);
  v12 = v8.i16[1] * v10;
  v13 = v9 + 16 * (v8.i16[0] & 0xFFF);
  __asm { FMOV            V0.2S, #1.0 }

  v19 = vsub_f32(_D0, v6);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v9 + 16 * (v7 & 0xFFF) + v12), vmuls_lane_f32(v19.f32[0], v6, 1)), *(v9 + 16 * (v7 & 0xFFF) + v11), vmuls_lane_f32(v19.f32[0], v19, 1)), *(v13 + v11), vmuls_lane_f32(v6.f32[0], v19, 1)), *(v13 + v12), vmuls_lane_f32(v6.f32[0], v6, 1)).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::sampleTexture_normalized_clamp_linear_float4<float>(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0xBF000000BF000000, a2, *(a1 + 104));
  v3 = vrndm_f32(v2);
  v4 = vsub_f32(v2, v3);
  v5 = vcvt_s32_f32(v3);
  v6 = *(a1 + 100);
  v7 = vmin_s16(vmax_s16(vuzp1_s16(v5, v4).u32[0], 0).u32[0], v6).u32[0];
  v5.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v5, 0x100000001), v4).u32[0], 0).u32[0], v6).u32[0];
  v8 = *(a1 + 208);
  v9 = *(a1 + 32);
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vsub_f32(_D5, v4);
  *v4.i32 = (((vmuls_lane_f32(v15.f32[0], v4, 1) * *(v8 + 4 * (v7 & 0x3FFF) + ((v5.i32[0] >> 16) * v9))) + (*(v8 + 4 * (v7 & 0x3FFF) + (v9 * (v7 >> 16))) * vmuls_lane_f32(v15.f32[0], v15, 1))) + (*(v8 + 4 * (v5.i16[0] & 0x3FFF) + (v9 * (v7 >> 16))) * vmuls_lane_f32(*v4.i32, v15, 1))) + (*(v8 + 4 * (v5.i16[0] & 0x3FFF) + ((v5.i32[0] >> 16) * v9)) * vmuls_lane_f32(*v4.i32, v4, 1));
  *&result = vdupq_lane_s32(v4, 0).u64[0];
  return result;
}

void MetalEmulation::sampleTexture_normalized_clamp_trilinear_float4_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v10 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(v8 + 224 * v7, a2);
  if (v10 >= 0.00001 && v6 > v5)
  {
    _ZN14MetalEmulation12_GLOBAL__N_144sampleTexture_normalized_clamp_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv2_f(v8 + 224 * (v7 + 1), a2);
  }
}

void MetalEmulation::sampleTexture_normalized_clamp_trilinear_float_float4(uint64_t a1, float32x2_t a2, float a3)
{
  v4 = fmaxf(a3, 0.0);
  v10 = v4 - truncf(v4);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 56);
  if (v10 >= 0.00001 && v6 > v5)
  {
  }
}

double _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v54 = a2;
  v53 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v34 = 0uLL;
    v35 = *(a1 + 32);
    v36 = vmovl_u16(*(&v50 + 8));
    HIWORD(v49) = v36.i16[2];
    LOWORD(v49) = v36.i16[0];
    v37 = 16 * v36.u16[0];
    v38 = vmovl_u16(*&v51);
    HIWORD(v48) = v38.i16[2];
    LOWORD(v48) = v38.i16[0];
    v39 = 16 * v38.u16[0];
    v40 = vmovl_u16(*(&v51 + 8));
    HIWORD(v47) = v40.i16[2];
    LOWORD(v47) = v40.i16[0];
    v41 = *(a1 + 208);
    v42 = *(v41 + HIDWORD(v35) * WORD6(v51) + v35 * HIWORD(v47) + 16 * v40.u16[0]);
    if (*v52.i32 != 0.0)
    {
      v43 = vmovl_u16(*&v50);
      HIWORD(v46) = v43.i16[2];
      LOWORD(v46) = v43.i16[0];
      v33 = *(v41 + HIDWORD(v35) * WORD2(v50) + v35 * HIWORD(v46) + 16 * v43.u16[0]);
      v34 = vmulq_n_f32(v33, *v52.i32);
    }

    v33.i64[0] = 0;
    v44 = vandq_s8(vmulq_lane_f32(*(v41 + HIDWORD(v35) * WORD6(v50) + v35 * HIWORD(v49) + v37), *v52.i8, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v52.i8, 1), v33)), 0));
    v45 = vceqz_f32(*&vextq_s8(v52, v52, 8uLL));
    *&result = vaddq_f32(vbicq_s8(vmulq_laneq_f32(v42, v52, 3), vmovl_s16(vdup_lane_s16(v45, 2))), vaddq_f32(vbicq_s8(vmulq_laneq_f32(*(v41 + HIDWORD(v35) * WORD2(v51) + v35 * HIWORD(v48) + v39), v52, 2), vmovl_s16(vdup_lane_s16(v45, 0))), vaddq_f32(v44, v34))).u64[0];
  }

  else
  {
    v13 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(v13);
    v15 = vsub_f32(v13, v14);
    v16 = vcvt_s32_f32(v14);
    v17 = *(a1 + 100);
    v18 = vmin_s16(vmax_s16(vuzp1_s16(v16, v16).u32[0], 0).u32[0], v17).u32[0];
    v19 = vadd_s32(v16, 0x100000001);
    v19.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(v19, v19).u32[0], 0).u32[0], v17).u32[0];
    v20 = *(a1 + 32);
    v21 = *(a1 + 208) + *(a1 + 36) * v53;
    v22 = v20 * (v18 >> 16);
    v23 = v20 * v19.i16[1];
    v24 = v21 + 16 * (v18 & 0xFFF);
    v25 = v21 + 16 * (v19.i16[0] & 0xFFF);
    __asm { FMOV            V0.2S, #1.0 }

    v31 = vsub_f32(_D0, v15);
    *&result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v24 + v23), vmuls_lane_f32(v31.f32[0], v15, 1)), *(v24 + v22), vmuls_lane_f32(v31.f32[0], v31, 1)), *(v25 + v22), vmuls_lane_f32(v15.f32[0], v31, 1)), *(v25 + v23), vmuls_lane_f32(v15.f32[0], v15, 1)).u64[0];
  }

  return result;
}

double MetalEmulation::anonymous namespace::sampleCube_linear_float4<float>(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  v58 = a2;
  v57 = 0;
  *v12.i8 = vcgt_f32(*(a1 + 64), v7.n128_u64[0]);
  v12.u64[1] = vcgt_f32(v7.n128_u64[0], *(a1 + 80));
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v6.n128_u64[0] = *(a1 + 120);
    v28 = *(a1 + 32);
    v29 = *(a1 + 36);
    v30 = vmovl_u16(*&v54);
    HIWORD(v53) = v30.i16[2];
    LOWORD(v53) = v30.i16[0];
    v31 = v29 * WORD2(v54) + v28 * HIWORD(v53);
    v32 = 4 * v30.u16[0];
    v33 = vmovl_u16(*(&v54 + 8));
    HIWORD(v52) = v33.i16[2];
    LOWORD(v52) = v33.i16[0];
    v34 = v29 * WORD6(v54) + v28 * HIWORD(v52);
    v35 = vmovl_u16(*&v55);
    HIWORD(v51) = v35.i16[2];
    LOWORD(v51) = v35.i16[0];
    v36 = v29 * WORD2(v55) + v28 * HIWORD(v51);
    v37 = 4 * v35.u16[0];
    v38 = vmovl_u16(*(&v55 + 8));
    HIWORD(v50) = v38.i16[2];
    LOWORD(v50) = v38.i16[0];
    v39 = v29 * WORD6(v55) + v28 * HIWORD(v50);
    v40 = 4 * v38.u16[0];
    v41 = *(a1 + 208);
    v42 = (v41 + 4 * v52 + v34);
    v43 = vld1q_dup_f32(v42);
    v44 = (v41 + v37 + v36);
    v45 = vld1q_dup_f32(v44);
    v46.i64[0] = 0;
    v47 = (v41 + v40 + v39);
    v48.i32[0] = *(v41 + v31 + v32);
    v49 = vld1q_dup_f32(v47);
    *&result = vaddq_f32(vandq_s8(vmulq_laneq_f32(v49, v56, 3), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_laneq_s32(v56, 3), v46)), 0)), vaddq_f32(vandq_s8(vmulq_laneq_f32(v45, v56, 2), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_laneq_s32(v56, 2), v46)), 0)), vaddq_f32(vandq_s8(vdupq_lane_s32(*&vmulq_f32(v48, v56), 0), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v56, v46)), 0)), vandq_s8(vmulq_lane_f32(v43, *v56.f32, 1), vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(vdupq_lane_s32(*v56.f32, 1), v46)), 0))))).u64[0];
  }

  else
  {
    v13 = vmla_f32(0xBF000000BF000000, v7.n128_u64[0], *(a1 + 104));
    v14 = vrndm_f32(v13);
    v15 = vcvt_s32_f32(v14);
    v16 = *(a1 + 100);
    v17 = vmin_s16(vmax_s16(vuzp1_s16(v15, v13).u32[0], 0).u32[0], v16).u32[0];
    v15.i32[0] = vmin_s16(vmax_s16(vuzp1_s16(vadd_s32(v15, 0x100000001), v13).u32[0], 0).u32[0], v16).u32[0];
    v18 = *(a1 + 32);
    v19 = *(a1 + 208) + *(a1 + 36) * v57;
    v20 = vsub_f32(v13, v14);
    __asm { FMOV            V5.2S, #1.0 }

    v26 = vsub_f32(_D5, v20);
    *v20.i32 = (((vmuls_lane_f32(v26.f32[0], v20, 1) * *(v19 + 4 * (v17 & 0x3FFF) + (v18 * (v15.i32[0] >> 16)))) + (*(v19 + 4 * (v17 & 0x3FFF) + (v18 * (v17 >> 16))) * vmuls_lane_f32(v26.f32[0], v26, 1))) + (*(v19 + 4 * (v15.i16[0] & 0x3FFF) + (v18 * (v17 >> 16))) * vmuls_lane_f32(*v20.i32, v26, 1))) + (*(v19 + 4 * (v15.i16[0] & 0x3FFF) + (v18 * (v15.i32[0] >> 16))) * vmuls_lane_f32(*v20.i32, v20, 1));
    *&result = vdupq_lane_s32(v20, 0).u64[0];
  }

  return result;
}

double MetalEmulation::sampleCube_trilinear_float4_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(v9 + 224 * v8, a2, a3, v5, a5);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    *v10.i64 = _ZN14MetalEmulation12_GLOBAL__N_124sampleCube_linear_float4IDv4_fEES2_RKNS_10TextureMipEDv3_f(v9 + 224 * (v8 + 1), v14, *v12.i64, v18, v11);
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::sampleCube_trilinear_float_float4(uint64_t a1, float32x4_t a2, double a3, double a4, double a5)
{
  HIDWORD(v5) = 0;
  *&v5 = fmaxf(*&a3, 0.0);
  *&a3 = *&v5 - truncf(*&v5);
  v18 = a3;
  v6 = *&v5;
  v7 = *(a1 + 8);
  if (v7 >= *&v5)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a1 + 56);
  v12 = v10;
  if (*&v18 >= 0.00001 && v7 > v6)
  {
    v14 = a2;
    v17 = v12;
    v10.i64[0] = vmlaq_n_f32(v17, vsubq_f32(v10, v17), *&v18).u64[0];
  }

  return *v10.i64;
}

double MetalEmulation::readPixel_float_float4(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 208) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vld1q_dup_f32(v2).u64[0];
  return result;
}

double MetalEmulation::readPixelArray_float_float4(uint64_t a1, unsigned int a2, int a3)
{
  v3 = (*(a1 + 208) + (*(a1 + 36) * a3) + 4 * a2 + *(a1 + 32) * HIWORD(a2));
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

double MetalEmulation::anonymous namespace::cubeDirToUVAndFace(float32x4_t *a1, char *a2, double a3, double a4, double a5, double a6)
{
  v6 = *a1;
  v7 = vabsq_f32(*a1);
  *&a6 = fmaxf(fmaxf(v7.f32[0], v7.f32[2]), v7.f32[1]);
  v8 = vdivq_f32(*a1, vdupq_lane_s32(*&a6, 0));
  if (*&a6 == v7.f32[0])
  {
    if (v6.f32[0] > 0.0)
    {
      *a2 = 0;
      v9.i32[1] = v8.i32[1];
      v9.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
      v10 = vneg_f32(v9);
      goto LABEL_14;
    }

    *a2 = 1;
    v11 = -*&v8.i32[1];
    v10.i32[0] = vdupq_laneq_s32(v8, 2).u32[0];
LABEL_11:
    v10.f32[1] = v11;
    goto LABEL_14;
  }

  if (*&a6 == v7.f32[1])
  {
    if (v6.f32[1] > 0.0)
    {
      *a2 = 2;
      v10 = vzip1_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
      goto LABEL_14;
    }

    *a2 = 3;
    v11 = -*&v8.i32[2];
    v10.i32[0] = v8.i32[0];
    goto LABEL_11;
  }

  if (v6.f32[2] <= 0.0)
  {
    v10 = vneg_f32(*v8.i8);
    v12 = 5;
  }

  else
  {
    v10.i32[0] = v8.i32[0];
    v10.f32[1] = -*&v8.i32[1];
    v12 = 4;
  }

  *a2 = v12;
LABEL_14:
  v13 = vmvn_s8(vceq_f32(v10, v10));
  if ((vpmax_u32(v13, v13).u32[0] & 0x80000000) == 0)
  {
    return COERCE_DOUBLE(vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, v10));
  }

  v15 = *a1;
  v16 = vmvnq_s8(vorrq_s8(vcltzq_f32(v8), vcgezq_f32(v8)));
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v23 = vorrq_s8(vandq_s8(*a1, v17), _Q4);
  v24 = vbslq_s8(vorrq_s8(vcltzq_f32(*a1), vcgtzq_f32(*a1)), v23, 0);
  v16.i32[3] = 0;
  v26 = vbslq_s8(vcltzq_s32(v16), v24, 0);
  v25 = vceqzq_f32(v15);
  v25.i32[3] = v25.i32[2];
  v25.i32[0] = vminvq_u32(v25);
  if (v25.i32[0] < 0)
  {
    *a2 = 0;
    v10 = 0;
    return COERCE_DOUBLE(vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, v10));
  }
}

__n128 MetalEmulation::anonymous namespace::computeCubeLinearBorderPixels(uint64_t a1, unsigned int a2, float32x2_t a3, __n128 a4, __n128 a5, float32x4_t a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v9 = a4.n128_u16[0];
  v10 = vmla_f32(0xBF000000BF000000, a5.n128_u64[0], a3);
  v11 = vrndm_f32(v10);
  *a8.i8 = vsub_f32(v10, v11);
  __asm { FMOV            V2.2S, #1.0 }

  *a9.i8 = vsub_f32(_D2, *a8.i8);
  *a6.f32 = vcvt_s32_f32(v11);
  a5.n128_u64[0] = vdup_n_s32(a4.n128_u16[0]);
  v16 = vshr_n_s32(vshr_n_s32(vshl_n_s32(*a6.f32, 0x10uLL), 0x10uLL), 0xFuLL);
  v17 = COERCE_DOUBLE(vcgt_s32(vshr_n_s32(vshl_n_s32(vadd_s32(*a6.f32, 0x100000001), 0x10uLL), 0x10uLL), vshr_n_s32(vshl_n_s32(a5.n128_u64[0], 0x10uLL), 0x10uLL)));
  v18 = v16.i16[2];
  v19 = v16.i32[0];
  v20 = &unk_1E30B5814 + 12 * a2;
  v21 = vextq_s8(vextq_s8(vextq_s8(a9, a9, 4uLL), a8, 8uLL), a8, 4uLL);
  *v22.f32 = vdup_lane_s32(*a9.i8, 1);
  a9.i32[1] = a8.i32[1];
  v22.i64[1] = a9.i64[0];
  v23 = vmulq_f32(v21, v22);
  *(a1 + 32) = v23;
  if (v19)
  {
    if (v18)
    {
      v24 = (&unk_1E30B585C + 16 * v20[4] + 8 * v20[5]);
      a4.n128_u16[0] = *v24;
      a4.n128_u16[2] = v24[1];
      v25 = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      LOWORD(v24) = v20[3];
      v26 = (&unk_1E30B585C + 16 * v20[1] + 8 * v20[2]);
      a6.i16[0] = *v26;
      a6.i16[2] = v26[1];
      a5.n128_u64[0] = vmul_s32(*a6.f32, a5.n128_u64[0]);
      v27 = a5.n128_u64[0];
      v27.i16[1] = a5.n128_i16[2];
      v27.i16[2] = *v20;
      v28 = 0;
      WORD2(v28) = a2;
      *(a1 + 16) = v27;
      *(a1 + 24) = v28;
      *v27.i32 = 0.33333 * v23.f32[0];
      v23 = vaddq_f32(vdupq_lane_s32(v27, 0), v23);
      a5.n128_u16[1] = a5.n128_u16[2];
      a5.n128_u16[2] = v27.u16[2];
      a5.n128_u16[4] = v25.i16[0];
      a5.n128_u16[5] = v25.u16[2];
      a5.n128_u16[6] = v24;
      *a1 = a5;
      v23.i32[0] = 0;
LABEL_21:
      *(a1 + 32) = v23;
      goto LABEL_52;
    }

    if (HIDWORD(v17))
    {
      v34 = &unk_1E30B585C + 16 * v20[4] + 8 * v20[5];
      a4.n128_u16[0] = *(v34 + 2);
      a4.n128_u16[2] = *(v34 + 3);
      a4.n128_u64[0] = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v35 = v20[3];
      v36 = a4.n128_u64[0];
      v36.i16[1] = a4.n128_i16[2];
      v36.i16[2] = v35;
      v37 = 0;
      WORD1(v37) = v9;
      WORD2(v37) = a2;
      *a1 = v36;
      *(a1 + 8) = v37;
      v38 = (&unk_1E30B585C + 16 * v20[10] + 8 * v20[11]);
      v36.i16[0] = *v38;
      v36.i16[2] = v38[1];
      v39 = vmul_s32(v36, a5.n128_u64[0]);
      *v36.i32 = vmuls_lane_f32(0.33333, v23, 2);
      v23 = vaddq_f32(vdupq_lane_s32(v36, 0), v23);
      a4.n128_u16[1] = a4.n128_u16[2];
      a4.n128_u16[2] = v35;
      a4.n128_u16[4] = v39.i16[0];
      a4.n128_u16[5] = v39.u16[2];
      a4.n128_u16[6] = v20[9];
      v23.i32[2] = 0;
      *(a1 + 16) = a4;
      *(a1 + 32) = v23;
    }

    else
    {
      v54 = v20[5];
      v55 = a4.n128_u16[0] - a6.i16[2];
      v56 = v20[4];
      v57 = v54 == 0;
      if (!v20[5])
      {
        v55 = a6.i16[2];
      }

      v58 = (&unk_1E30B585C + 16 * v20[4] + 8 * v54);
      v23.i16[0] = *v58;
      v23.i16[2] = v58[1];
      v59 = 0;
      v60 = 0;
      WORD1(v60) = a6.i16[2];
      WORD2(v60) = a2;
      *(a1 + 8) = v60;
      *(&v59 + 2) = (a6.i16[2] + 1);
      WORD2(v59) = a2;
      *(a1 + 24) = v59;
      v61 = v20[3];
      if (v57)
      {
        v62 = 1;
      }

      else
      {
        v62 = -1;
      }

      v63 = v55 + v62;
      if ((v56 - 1) > 1)
      {
        v23.i16[0] = v55;
        v23.i16[1] = v23.i16[2] * v9;
        v23.i16[2] = v61;
        *a1 = v23.i64[0];
        v23.i16[0] = v63;
      }

      else
      {
        v23.i32[0] *= v9;
        v64 = v23.i64[0];
        WORD1(v64) = v55;
        WORD2(v64) = v61;
        *a1 = v64;
        v23.i16[1] = v63;
      }

      v23.i16[2] = v61;
      *(a1 + 16) = v23.i64[0];
    }
  }

  else if (LODWORD(v17))
  {
    if (v18)
    {
      v29 = &unk_1E30B585C + 16 * v20[1] + 8 * v20[2];
      a4.n128_u16[0] = *(v29 + 2);
      a4.n128_u16[2] = *(v29 + 3);
      a4.n128_u64[0] = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v30 = a4;
      v30.n128_u16[1] = a4.n128_u16[2];
      v30.n128_u16[2] = *v20;
      v30.n128_u16[4] = a4.n128_u16[0];
      v30.n128_u16[5] = a4.n128_u16[2];
      v30.n128_u16[6] = v30.n128_u16[2];
      v31 = (&unk_1E30B585C + 16 * v20[7] + 8 * v20[8]);
      a4.n128_u16[0] = *v31;
      a4.n128_u16[2] = v31[1];
      v32 = vmul_s32(a4.n128_u64[0], a5.n128_u64[0]);
      v33 = v9;
      WORD2(v33) = a2;
      v32.i16[1] = v32.i16[2];
      v32.i16[2] = v20[6];
      *a1 = v30;
      *(a1 + 16) = v33;
      *(a1 + 24) = v32;
      *v32.i32 = vmuls_lane_f32(0.33333, *v23.f32, 1);
      v23 = vaddq_f32(vdupq_lane_s32(v32, 0), v23);
      v23.i32[1] = 0;
      goto LABEL_21;
    }

    if (HIDWORD(v17))
    {
      v50 = &unk_1E30B585C + 16 * v20[7] + 8 * v20[8];
      a6.i16[0] = *(v50 + 2);
      a6.i16[2] = *(v50 + 3);
      v51 = vmul_s32(*a6.f32, a5.n128_u64[0]);
      v52 = &unk_1E30B585C + 16 * v20[10] + 8 * v20[11];
      LOWORD(v17) = *(v52 + 2);
      WORD2(v17) = *(v52 + 3);
      a5.n128_u64[0] = vmul_s32(*&v17, a5.n128_u64[0]);
      v53 = a4;
      v53.n128_u16[1] = a4.n128_u16[0];
      v53.n128_u16[2] = a2;
      v53.n128_u16[4] = v51.i16[0];
      v53.n128_u16[5] = v51.u16[2];
      v53.n128_u16[6] = v20[6];
      a5.n128_u16[1] = a5.n128_u16[2];
      a5.n128_u16[2] = v20[9];
      a5.n128_u16[4] = a4.n128_u16[0];
      a5.n128_u16[5] = a4.n128_u16[0];
      a5.n128_u16[6] = a2;
      *a1 = v53;
      *(a1 + 16) = a5;
      a4.n128_f32[0] = vmuls_lane_f32(0.33333, v23, 2);
      v23 = vaddq_f32(vdupq_lane_s32(a4.n128_u64[0], 0), v23);
      v23.i32[3] = 0;
      goto LABEL_21;
    }

    v73 = v20[8];
    v74 = v20[7] - 1;
    v75 = v73 == 0;
    v76 = (&unk_1E30B585C + 16 * v20[7] + 8 * v73);
    v23.i16[0] = *v76;
    v23.i16[2] = v76[1];
    if (v75)
    {
      v77 = a6.i16[2];
    }

    else
    {
      v77 = a4.n128_u16[0] - a6.i16[2];
    }

    v78 = a4.n128_u64[0];
    WORD1(v78) = a6.i16[2];
    WORD2(v78) = a2;
    *a1 = v78;
    a4.n128_u16[1] = a6.i16[2] + 1;
    a4.n128_u16[2] = a2;
    *(a1 + 16) = a4.n128_u64[0];
    v79 = v20[6];
    if (v75)
    {
      v80 = 1;
    }

    else
    {
      v80 = -1;
    }

    v81 = v77 + v80;
    if (v74 > 1)
    {
      v23.i16[0] = v77;
      v23.i16[1] = v23.i16[2] * a4.n128_u16[0];
      v23.i16[2] = v79;
      *(a1 + 8) = v23.i64[0];
      v23.i16[0] = v81;
    }

    else
    {
      v23.i32[0] *= a4.n128_u16[0];
      v82 = v23.i64[0];
      WORD1(v82) = v77;
      WORD2(v82) = v79;
      *(a1 + 8) = v82;
      v23.i16[1] = v81;
    }

    v23.i16[2] = v79;
    *(a1 + 24) = v23.i64[0];
  }

  else
  {
    if (v18)
    {
      v40 = v20[2];
      v41 = a4.n128_u16[0] - a6.i16[0];
      v42 = v20[1];
      _ZF = v40 == 0;
      if (!v20[2])
      {
        v41 = a6.i16[0];
      }

      v44 = (&unk_1E30B585C + 16 * v20[1] + 8 * v40);
      v23.i16[0] = *v44;
      v23.i16[2] = v44[1];
      v45 = *v20;
      if (_ZF)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v47 = v23.i16[2];
      v23.i32[0] *= a4.n128_u16[0];
      v48 = *v23.i64;
      WORD1(v48) = v41;
      WORD2(v48) = v45;
      v23.i16[1] = v41 + v46;
      v23.i16[2] = v45;
      a5.n128_u16[0] = v41;
      a5.n128_u16[1] = v47 * v9;
      a5.n128_u16[2] = v45;
      LOWORD(v17) = v41 + v46;
      WORD1(v17) = v47 * v9;
      WORD2(v17) = v45;
      if ((v42 - 1) >= 2)
      {
        v48 = a5.n128_f64[0];
        *v23.i64 = v17;
      }

      *a1 = v48;
      *(a1 + 8) = v23.i64[0];
      v49 = a6.u16[0];
      WORD2(v49) = a2;
      v23.i64[0] = (a6.i16[0] + 1);
      v23.i16[2] = a2;
    }

    else
    {
      if (!HIDWORD(v17))
      {
        v23 = a6;
        v23.i16[1] = a6.i16[2];
        v23.i16[2] = a2;
        v23.i16[4] = a6.i16[0] + 1;
        v23.i16[5] = a6.i16[2];
        v23.i16[6] = a2;
        a6.i16[1] = a6.i16[2] + 1;
        a6.i16[2] = a2;
        a6.i16[4] = a6.i16[0] + 1;
        a6.i16[5] = a6.i16[1];
        a6.i16[6] = a2;
        *a1 = v23;
        *(a1 + 16) = a6;
        goto LABEL_52;
      }

      v65 = v20[11];
      v66 = v20[10] - 1;
      v67 = v65 == 0;
      v68 = (&unk_1E30B585C + 16 * v20[10] + 8 * v65);
      v23.i16[0] = *v68;
      v23.i16[2] = v68[1];
      if (v67)
      {
        v69 = a6.i16[0];
      }

      else
      {
        v69 = a4.n128_u16[0] - a6.i16[0];
      }

      a6.i16[1] = a4.n128_u16[0];
      a6.i16[2] = a2;
      a4.n128_u16[0] = a6.i16[0] + 1;
      a4.n128_u16[1] = v9;
      a4.n128_u16[2] = a2;
      *a1 = a6.i64[0];
      *(a1 + 8) = a4.n128_u64[0];
      v70 = v20[9];
      if (v67)
      {
        v71 = 1;
      }

      else
      {
        v71 = -1;
      }

      v72 = v69 + v71;
      if (v66 >= 2)
      {
        v23.i16[0] = v69;
        v23.i16[1] = v23.i16[2] * v9;
        v23.i16[2] = v70;
        a4.n128_u16[0] = v72;
        a4.n128_u16[1] = v23.u16[1];
        a4.n128_u16[2] = v70;
        *(a1 + 16) = v23.i64[0];
        *(a1 + 24) = a4.n128_u64[0];
        goto LABEL_52;
      }

      v23.i32[0] *= v9;
      v49 = v23.i64[0];
      WORD1(v49) = v69;
      WORD2(v49) = v70;
      v23.i16[1] = v72;
      v23.i16[2] = v70;
    }

    *(a1 + 16) = v49;
    *(a1 + 24) = v23.i64[0];
  }

LABEL_52:
  result.n128_u32[0] = v23.i32[0];
  result.n128_u16[2] = v23.u16[2];
  return result;
}

double MetalEmulation::wrapTextureMip@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int16x4_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = 0uLL;
  v30 = 0uLL;
  v28 = 0uLL;
  v10 = MetalEmulation::readPixelArray_8Unorm_float4;
  v11 = MetalEmulation::readPixel_8Unorm_float4;
  v12 = MetalEmulation::sampleCube_linear_8Unorm_float4;
  v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm_float4;
  v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm_float4;
  v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm_float4;
  if (*(&v25 + 1) <= 64)
  {
    if (*(&v25 + 1) <= 29)
    {
      if (*(&v25 + 1) == 10)
      {
        goto LABEL_21;
      }

      if (*(&v25 + 1) == 25)
      {
        v10 = MetalEmulation::readPixelArray_half_float4;
        v11 = MetalEmulation::readPixel_half_float4;
        v12 = MetalEmulation::sampleCube_linear_half_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_half_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_half_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (*(&v25 + 1) != 30)
    {
      if (*(&v25 + 1) == 55)
      {
        v10 = MetalEmulation::readPixelArray_float_float4;
        v11 = MetalEmulation::readPixel_float_float4;
        v12 = MetalEmulation::sampleCube_linear_float_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_float_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_float_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if (*(&v25 + 1) <= 104)
  {
    if (*(&v25 + 1) != 65)
    {
      if (*(&v25 + 1) == 70)
      {
        v10 = MetalEmulation::readPixelArray_8Unorm4_float4;
        v11 = MetalEmulation::readPixel_8Unorm4_float4;
        v12 = MetalEmulation::sampleCube_linear_8Unorm4_float4;
        v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_8Unorm4_float4;
        v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_8Unorm4_float4;
        v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_8Unorm4_float4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if (*(&v25 + 1) != 105)
  {
    if (*(&v25 + 1) == 115)
    {
      v10 = MetalEmulation::readPixelArray_half4_float4;
      v11 = MetalEmulation::readPixel_half4_float4;
      v12 = MetalEmulation::sampleCube_linear_half4_float4;
      v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_half4_float4;
      v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_half4_float4;
      v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_half4_float4;
      goto LABEL_21;
    }

    if (*(&v25 + 1) == 125)
    {
      v10 = MetalEmulation::readPixelArray_float4_float4;
      v11 = MetalEmulation::readPixel_float4_float4;
      v12 = MetalEmulation::sampleCube_linear_float4_float4;
      v13 = MetalEmulation::sampleTexture_normalized_clamp_linear_float4_float4;
      v14 = MetalEmulation::sampleTexture_normalized_repeat_linear_float4_float4;
      v15 = MetalEmulation::sampleTexture_normalized_0to1_repeat_linear_float4_float4;
LABEL_21:
      *&v28 = v15;
      *(&v28 + 1) = v14;
      *&v29 = v13;
      *(&v29 + 1) = v12;
      *&v30 = v11;
      *(&v30 + 1) = v10;
      goto LABEL_22;
    }

LABEL_18:
    a6[12] = 0uLL;
    a6[13] = 0uLL;
    a6[10] = 0uLL;
    a6[11] = 0uLL;
    a6[8] = 0uLL;
    a6[9] = 0uLL;
    a6[6] = 0uLL;
    a6[7] = 0uLL;
    a6[4] = 0uLL;
    a6[5] = 0uLL;
    a6[2] = 0uLL;
    a6[3] = 0uLL;
    *a6 = 0uLL;
    a6[1] = 0uLL;
    return *&v9;
  }

LABEL_22:
  *&v31 = a4;
  v16 = v29;
  a6[10] = v28;
  a6[11] = v16;
  v17 = v27[4];
  a6[6] = v27[3];
  a6[7] = v17;
  v18 = v27[6];
  a6[8] = v27[5];
  a6[9] = v18;
  v19 = v27[0];
  a6[2] = v26;
  a6[3] = v19;
  v20 = v27[2];
  a6[4] = v27[1];
  a6[5] = v20;
  v21 = v25;
  *a6 = v24;
  a6[1] = v21;
  *&v9 = v30;
  v22 = v31;
  a6[12] = v30;
  a6[13] = v22;
  return *&v9;
}

uint64_t MetalEmulation::anonymous namespace::wrapTextureMip(void *a1, unsigned int a2, int16x4_t *a3, unint64_t a4, int16x4_t *a5, uint64_t a6)
{
  a5[4] = *a3;
  v36 = vmax_u32(vshl_u32(vand_s8(__PAIR64__([a1 height], objc_msgSend(a1, sel_width)), 0xFFFF0000FFFFLL), vneg_s32(vdup_n_s32(a2))), 0x100000001);
  v11 = [a1 depth] >> a2;
  v12 = v36;
  v12.i16[1] = v36.i16[2];
  if (v11 <= 1)
  {
    LOWORD(v11) = 1;
  }

  v12.i16[2] = v11;
  *a5 = v12;
  a5[1].i16[0] = [a1 arrayLength];
  a5[3] = [a1 pixelFormat];
  v13 = [a1 textureType];
  result = 0;
  a5[2] = v13;
  a5[4] = *a3;
  v15 = a5[3];
  if (v15 <= 64)
  {
    if (v15 > 29)
    {
      if (v15 == 30)
      {
        v16 = 33620481;
      }

      else
      {
        if (v15 != 55)
        {
          return result;
        }

        v16 = 67371267;
      }
    }

    else
    {
      if (v15 == 10)
      {
        *a6 = 16843009;
        goto LABEL_25;
      }

      if (v15 != 25)
      {
        return result;
      }

      v16 = 33685762;
    }
  }

  else if (v15 <= 104)
  {
    if (v15 == 65)
    {
      v16 = 67240450;
    }

    else
    {
      if (v15 != 70)
      {
        return result;
      }

      v16 = 67175425;
    }
  }

  else
  {
    switch(v15)
    {
      case 'i':
        v16 = 134480387;
        break;
      case 's':
        v16 = 134349826;
        break;
      case '}':
        v16 = 268698627;
        break;
      default:
        return result;
    }
  }

  *a6 = v16;
LABEL_25:
  v17 = a5[1].u16[0] * a5->u16[2] * a3->u32[1];
  if ([a1 textureType] == 5 || objc_msgSend(a1, sel_textureType) == 6)
  {
    v17 *= 6;
  }

  if (v17 > a4 || a3->i32[0] * HIWORD(a5->u32[0]) > a3->i32[1] || *(a6 + 3) * a5->u16[0] > a3->i32[0])
  {
    return 0;
  }

  v18.i64[0] = -1;
  v18.i64[1] = -1;
  *(a6 + 72) = vadd_s16(*a5, -1);
  v19 = vmovl_u16(*a5).u64[0];
  *(a6 + 50) = v19.i16[2];
  v20 = vshl_n_s32(v19, 0x10uLL);
  *(a6 + 48) = v19.i16[0];
  v21 = vaddw_u16(v18, *a5);
  *(a6 + 54) = v21.i16[2];
  *(a6 + 52) = v21.i16[0];
  v22 = vdupq_n_s32(0x4B400000u);
  *v18.i8 = vsra_n_s32(*v22.i8, v20, 0x10uLL);
  v23 = vdupq_n_s32(0xCB400000);
  *v18.i8 = vadd_f32(*v18.i8, *v23.f32);
  v24 = vrecpe_f32(*v18.i8);
  v25 = vmul_f32(v24, vrecps_f32(*v18.i8, v24));
  *(a6 + 56) = v18.i64[0];
  *(a6 + 64) = vmul_f32(v25, vrecps_f32(*v18.i8, v25));
  v26 = vaddq_f32(vorrq_s8(vmovl_u16(*a5), v22), v23);
  *(a6 + 80) = v26;
  v26.i32[3] = 0;
  v27 = vrecpeq_f32(v26);
  v28 = vmulq_f32(v27, vrecpsq_f32(v26, v27));
  v29 = vmulq_f32(v28, vrecpsq_f32(v26, v28));
  *(a6 + 96) = v29;
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v30 = vmulq_f32(v29, v28);
  __asm { FMOV            V1.4S, #1.0 }

  *(a6 + 16) = v30;
  *(a6 + 32) = vsubq_f32(_Q1, v30);
  return 1;
}

float MetalEmulation::wrapTexture@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  if (v4 <= 64)
  {
    if (v4 > 29)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (v4 == 30)
      {
        goto LABEL_22;
      }

      if (v4 == 55)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_float_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_float_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_float_float4;
        v3 = MetalEmulation::sampleCube_trilinear_float_float4;
        goto LABEL_22;
      }
    }

    else
    {
      if (v4 == 10)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm_float4;
        v3 = MetalEmulation::sampleCube_trilinear_8Unorm_float4;
        goto LABEL_22;
      }

      if (v4 == 25)
      {
        v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_half_float4;
        v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_half_float4;
        v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_half_float4;
        v3 = MetalEmulation::sampleCube_trilinear_half_float4;
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4 <= 104)
  {
    if (v4 == 65)
    {
      goto LABEL_22;
    }

    if (v4 == 70)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_8Unorm4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_8Unorm4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_8Unorm4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_8Unorm4_float4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v4 != 105)
  {
    if (v4 == 115)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_half4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_half4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_half4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_half4_float4;
      goto LABEL_22;
    }

    if (v4 == 125)
    {
      v7 = MetalEmulation::sampleTexture_normalized_0to1_repeat_trilinear_float4_float4;
      v6 = MetalEmulation::sampleTexture_normalized_repeat_trilinear_float4_float4;
      v5 = MetalEmulation::sampleTexture_normalized_clamp_trilinear_float4_float4;
      v3 = MetalEmulation::sampleCube_trilinear_float4_float4;
      goto LABEL_22;
    }

LABEL_19:
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

LABEL_22:
  result = a2;
  *a3 = a2;
  *(a3 + 4) = (a2 - 1);
  *(a3 + 8) = a2 - 1;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  *(a3 + 48) = a2;
  *(a3 + 56) = a1;
  return result;
}

double MetalEmulation::wrapRenderTargetMip@<D0>(void *a1@<X0>, unsigned int a2@<W1>, int16x4_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  {
    goto LABEL_18;
  }

  v21 = 0uLL;
  v8 = MetalEmulation::writePixelArray_8Unorm;
  v9 = MetalEmulation::writePixel_8Unorm;
  if (*(&v18 + 1) <= 64)
  {
    if (*(&v18 + 1) <= 29)
    {
      if (*(&v18 + 1) == 10)
      {
        goto LABEL_21;
      }

      if (*(&v18 + 1) == 25)
      {
        v8 = MetalEmulation::writePixelArray_half;
        v9 = MetalEmulation::writePixel_half;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (*(&v18 + 1) != 30)
    {
      if (*(&v18 + 1) == 55)
      {
        v8 = MetalEmulation::writePixelArray_float;
        v9 = MetalEmulation::writePixel_float;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_22:
    *&v22 = a4;
    v11 = v20[6];
    a6[8] = v20[5];
    a6[9] = v11;
    v12 = v20[2];
    a6[4] = v20[1];
    a6[5] = v12;
    v13 = v20[4];
    a6[6] = v20[3];
    a6[7] = v13;
    v14 = v18;
    *a6 = v17;
    a6[1] = v14;
    v15 = v20[0];
    a6[2] = v19;
    a6[3] = v15;
    result = *&v21;
    v16 = v22;
    a6[10] = v21;
    a6[11] = v16;
    return result;
  }

  if (*(&v18 + 1) <= 104)
  {
    if (*(&v18 + 1) != 65)
    {
      if (*(&v18 + 1) == 70)
      {
        v8 = MetalEmulation::writePixelArray_8Unorm4;
        v9 = MetalEmulation::writePixel_8Unorm4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  switch(*(&v18 + 1))
  {
    case 'i':
      goto LABEL_22;
    case 's':
      v8 = MetalEmulation::writePixelArray_half4;
      v9 = MetalEmulation::writePixel_half4;
      goto LABEL_21;
    case '}':
      v8 = MetalEmulation::writePixelArray_float4;
      v9 = MetalEmulation::writePixel_float4;
LABEL_21:
      *&v21 = v9;
      *(&v21 + 1) = v8;
      goto LABEL_22;
  }

LABEL_18:
  result = 0.0;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}

uint64_t MetalEmulation::computeMip(uint64_t result, double *a2, __n128 a3)
{
  v3 = *(a2 + 3);
  v7[0] = result;
  v7[1] = a2;
  v4 = *(result + 4) * *(result + 8);
  if ((*(result + 16) - 5) < 2)
  {
    v4 *= 6;
  }

  v5 = *a2;
  if (v3 > 69)
  {
    switch(v3)
    {
      case '}':
        break;
      case 's':
        break;
      case 'F':
        break;
      default:
        return result;
    }
  }

  else if (v3 != 10)
  {
    if (v3 == 25)
    {
    }

    else
    {
      if (v3 != 55)
      {
        return result;
      }
    }
  }

  WORD2(v5) = v4;
  return MetalEmulation::internal::_executeShader(v6, v7, v5);
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_uchar(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = result[1];
  v5 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v6 = vmul_s32((*result)[4], v5);
  v7 = v6.i32[1] + (v3.i16[0] & 0xFFFEu) + v6.i32[0];
  v8 = v7 + *&(*result)[4];
  *(*&v4[26] + v4[4].i32[1] * v5.i32[1] + a2.u16[0] + v4[4].i32[0] * a2.u16[1]) = (*(*&(*result)[26] + v7 + 1) + *(*&(*result)[26] + v7) + *(*&(*result)[26] + v8) + *(*&(*result)[26] + v8 + 1)) >> 2;
  return result;
}

int8x8_t MetalEmulation::anonymous namespace::powerOfTwoComputeMip_uchar4(int32x2_t **a1, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = a1[1];
  v5 = (*a1)[4];
  v6 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v7 = vmul_s32(v5, v6);
  v8 = v7.i32[1] + 4 * (v3.i16[0] & 0xFFFEu) + v7.i32[0];
  v9 = (v8 + v5.i32[0]);
  v10 = (*a1)[26];
  v11 = (*&v10 + v8);
  v12 = (*&v10 + v9);
  v3.i32[0] = *v11;
  v5.i32[0] = v11[1];
  v13 = vaddl_u8(v5, v3);
  v5.i32[0] = *v12;
  v7.i32[0] = v12[1];
  LODWORD(v12) = v4[4].i32[1] * v6.i32[1] + 4 * a2.u16[0] + v4[4].i32[0] * a2.u16[1];
  result = vuzp1_s8(vshr_n_u16(*&vaddw_u8(vaddw_u8(v13, v5), v7), 2uLL), a2);
  *(*&v4[26] + v12) = result.i32[0];
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_half(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  _D1 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(_D1, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 2 * (_D1.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  v8 = (*result)[26];
  v9 = (*&v8 + v6);
  v10 = (*&v8 + v7);
  _D1.i16[0] = *v9;
  __asm { FCVT            S1, H1 }

  _H3 = v9[1];
  __asm { FCVT            S3, H3 }

  *_D1.i32 = *_D1.i32 + _S3;
  LOWORD(_S3) = *v10;
  __asm { FCVT            S3, H3 }

  *_D1.i32 = *_D1.i32 + _S3;
  LOWORD(_S3) = v10[1];
  __asm { FCVT            S3, H3 }

  *_D1.i32 = (*_D1.i32 + _S3) * 0.25;
  __asm { FCVT            H1, S1 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 2 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = _D1.i16[0];
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_half4(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 8 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  __asm { FMOV            V3.4S, #0.25 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 8 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = vcvt_f16_f32(vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_f16(*(*&(*result)[26] + v6)), vcvtq_f32_f16(*(*&(*result)[26] + v6 + 8))), vcvtq_f32_f16(*(*&(*result)[26] + v7))), vcvtq_f32_f16(*(*&(*result)[26] + v7 + 8))), _Q3));
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_float(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 4 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 4 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = (((*(*&(*result)[26] + v6) + *(*&(*result)[26] + v6 + 4)) + *(*&(*result)[26] + v7)) + *(*&(*result)[26] + v7 + 4)) * 0.25;
  return result;
}

int32x2_t **MetalEmulation::anonymous namespace::powerOfTwoComputeMip_float4(int32x2_t **result, uint16x4_t a2)
{
  v2 = vmovl_u16(a2).u64[0];
  v3 = vadd_s32(v2, v2);
  v4 = vand_s8(vext_s8(v3, vdup_lane_s32(a2, 1), 4uLL), 0xFFFF0000FFFFLL);
  v5 = vmul_s32((*result)[4], v4);
  v6 = v5.i32[1] + 16 * (v3.i16[0] & 0xFFFEu) + v5.i32[0];
  v7 = v6 + *&(*result)[4];
  __asm { FMOV            V3.4S, #0.25 }

  *(*&result[1][26] + result[1][4].i32[1] * v4.i32[1] + 16 * a2.u16[0] + result[1][4].i32[0] * a2.u16[1]) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(*&(*result)[26] + v6), *(*&(*result)[26] + v6 + 16)), *(*&(*result)[26] + v7)), *(*&(*result)[26] + v7 + 16)), _Q3);
  return result;
}

uint64_t MetalEmulation::copyMip(void *a1, double a2)
{
  v2 = a1[1];
  v3 = WORD2(a2);
  v4 = LODWORD(a2);
  (*(*a1 + 200))();
  v5 = *(v2 + 168);

  return v5(v2, v4, v3);
}

void *MetalEmulation::copy(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 4) * *(a1 + 8);
  if ((*(a1 + 16) - 5) < 2)
  {
    v5 *= 6;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    v6 = *(a1 + 36) * v5;
    v7 = *(a2 + 176);
    v8 = *(a1 + 208);

    return memcpy(v7, v8, v6);
  }

  else
  {
    v11[2] = v3;
    v11[3] = v4;
    v11[0] = a1;
    v11[1] = a2;
    v10 = *a1;
    WORD2(v10) = v5;
    return MetalEmulation::internal::_executeShader(MetalEmulation::copyMip, v11, v10);
  }
}

uint64_t re::RenderGraphContext::RenderGraphContext(uint64_t a1, uint64_t *a2, re::DrawCallRecorder *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a4;
  *(a1 + 32) = a7;
  *(a1 + 52) = a11;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  *(a1 + 64) = vnegq_f32(v16);
  *(a1 + 80) = v16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v64 = (a1 + 112);
  *(a1 + 120) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0x7FFFFFFFLL;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  *(a1 + 1120) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1168) = a6;
  *(a1 + 1176) = a8;
  *(a1 + 1184) = 4;
  *(a1 + 1192) = 0;
  *(a1 + 1208) = 1;
  *(a1 + 1216) = -1;
  v17 = re::globalAllocators(a1);
  v18 = (*(*v17[2] + 32))(v17[2], 16, 8);
  *v18 = 0;
  v19 = re::globalAllocators(v18);
  v20 = (*(*v19[2] + 32))(v19[2], 272, 8);
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  v20[7] = 0u;
  v20[8] = 0u;
  v20[9] = 0u;
  v20[10] = 0u;
  v20[11] = 0u;
  v20[12] = 0u;
  v20[13] = 0u;
  v20[14] = 0u;
  v20[15] = 0u;
  v20[16] = 0u;
  *(v18 + 1) = v20;
  *(a1 + 1200) = v18;
  *(a1 + 1224) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1317) = 0;
  *(a1 + 1332) = 134217472;
  *(a1 + 1340) = 134217472;
  re::DrawCallRecorder::DrawCallRecorder(a1 + 1352, (a2 + 5), a3, a2[4]);
  *(a1 + 1536) = a9;
  *(a1 + 1544) = a10;
  *(a1 + 1552) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0;
  *(a1 + 1644) = 0x7FFFFFFFLL;
  if (*a12)
  {
    v21 = *(a12 + 28) <= 3u ? 3 : *(a12 + 28);
    re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1 + 1608, *a12, v21);
    if (*(a12 + 32))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(a12 + 16);
        if ((*(v24 + v22) & 0x80000000) != 0)
        {
          v25 = re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1 + 1608, *(v24 + v22 + 8) % *(a1 + 1632), *(v24 + v22 + 8));
          v26 = *(a12 + 16) + v22;
          *(v25 + 8) = *(v26 + 8);
          v27 = *(v26 + 16);
          *(v25 + 16) = v27;
          if (v27)
          {
            v28 = (v27 + 8);
          }
        }

        ++v23;
        v22 += 24;
      }

      while (v23 < *(a12 + 32));
    }
  }

  v29 = a2[55];
  *(a1 + 1688) = 0;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1692) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1 + 1656, v29, 3);
  v30 = a2[55];
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 1;
  *(a1 + 1728) = 0u;
  *(a1 + 1704) = v30;
  v31 = re::DynamicOverflowArray<re::PatchTransform,5ul>::setCapacity((a1 + 1704), 0);
  *(a1 + 1720) += 2;
  v32 = *(a8 + 168);
  v33 = *(v32 + 352);
  v34 = v64;
  if (!v33)
  {
LABEL_43:
    if ((atomic_load_explicit(&qword_1EE1B9928, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  v35 = *(v32 + 368);
  v65 = v35 + 200 * v33;
  while (1)
  {
    v66 = v35;
    v36 = *(v35 + 56);
    if (v36)
    {
      break;
    }

LABEL_42:
    v35 = v66 + 200;
    if (v66 + 200 == v65)
    {
      goto LABEL_43;
    }
  }

  v37 = *(v35 + 72);
  v38 = v37 + (v36 << 6);
  while (*(v37 + 4) != 12)
  {
LABEL_41:
    v37 += 64;
    if (v37 == v38)
    {
      goto LABEL_42;
    }
  }

  v67[0] = 0;
  v67[1] = 0;
  v68 = 1;
  v69 = 0;
  v70 = 0;
  if (*(a1 + 1052))
  {
LABEL_17:
    re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::add(a1 + 1024, (v37 + 52), v67);
LABEL_38:
    v31 = v67[0];
    if (v67[0] && (v68 & 1) == 0)
    {
      v31 = (*(*v67[0] + 40))();
    }

    goto LABEL_41;
  }

  v39 = *v34;
  if (*v34)
  {
    v40 = 112 * v39;
    v41 = 112 * v39;
    v42 = (a1 + 128);
    do
    {
      if (*v42 == *(v37 + 52))
      {
        goto LABEL_38;
      }

      v42 += 28;
      v41 -= 112;
    }

    while (v41);
    if ((v39 & 0xFFFFFFF8) == 0)
    {
      goto LABEL_33;
    }

    if (!*(a1 + 1024))
    {
      v43 = *(a1 + 96);
      if (!v43)
      {
      }

      re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::init(a1 + 1024, v43, 16);
      if (!*v34)
      {
        goto LABEL_32;
      }

      v40 = 112 * *v34;
    }

    v44 = (a1 + 128);
    do
    {
      v71 = 0;
      v72 = 0;
      v73[0] = 0;
      v45 = 0xBF58476D1CE4E5B9 * (*v44 ^ (*v44 >> 30));
      re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a1 + 1024, v44, (0x94D049BB133111EBLL * (v45 ^ (v45 >> 27))) ^ ((0x94D049BB133111EBLL * (v45 ^ (v45 >> 27))) >> 31), &v71);
      if (HIDWORD(v72) == 0x7FFFFFFF)
      {
        v46 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::allocEntry(a1 + 1024, v72, v71);
        *(v46 + 4) = *v44;
        re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v46 + 16, (v44 + 4));
        ++*(a1 + 1064);
      }

      v44 += 28;
      v40 -= 112;
    }

    while (v40);
LABEL_32:
    v34 = v64;
    re::DynamicInlineArray<re::KeyValuePair<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>>,8ul>::clear(v64);
    goto LABEL_17;
  }

LABEL_33:
  LODWORD(v71) = *(v37 + 52);
  re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray(v73, v67);
  if (*v34 >= 8)
  {
    goto LABEL_57;
  }

  v48 = (a1 + 128 + 112 * *v34);
  *v48 = v71;
  re::DynamicOverflowArray<re::AABB,2ul>::DynamicOverflowArray((v48 + 4), v73);
  v50 = *(a1 + 112) + 1;
  *(a1 + 112) = v50;
  ++*(a1 + 120);
  if (v73[0] && (v74 & 1) == 0)
  {
    (*(*v73[0] + 40))();
    v50 = *v34;
  }

  if (v50)
  {
    goto LABEL_38;
  }

  re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v62, v63);
  __break(1u);
LABEL_57:
  re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
  _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
LABEL_58:
  if (__cxa_guard_acquire(&qword_1EE1B9928))
  {
    qword_1EE1B9920 = re::hashString("InplaceTonemappingData", v61);
    __cxa_guard_release(&qword_1EE1B9928);
  }

LABEL_44:
  v51 = *(a1 + 1168);
  v52 = "N2re22InplaceTonemappingDataE";
  if (("N2re22InplaceTonemappingDataE" & 0x8000000000000000) != 0)
  {
    v53 = ("N2re22InplaceTonemappingDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v54 = 5381;
    do
    {
      v52 = v54;
      v55 = *v53++;
      v54 = (33 * v54) ^ v55;
    }

    while (v55);
  }

  if (*(v51 + 64))
  {
    v56 = (qword_1EE1B9920 + (v52 << 6) + (v52 >> 2) - 0x61C8864680B583E9) ^ v52;
    v57 = *(*(v51 + 72) + 4 * (v56 % *(v51 + 88)));
    if (v57 != 0x7FFFFFFF)
    {
      v58 = *(v51 + 80);
      while (*(v58 + 24 * v57 + 8) != v56)
      {
        v57 = *(v58 + 24 * v57) & 0x7FFFFFFF;
        if (v57 == 0x7FFFFFFF)
        {
          return a1;
        }
      }

      v59 = *(v58 + 24 * v57 + 16);
      if (v59)
      {
        *(a1 + 1552) = *(v59 + 8);
      }
    }
  }

  return a1;
}

void re::RenderGraphContext::~RenderGraphContext(re::RenderGraphContext *this)
{
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 1704);
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 207);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 201);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 1560);
  re::DrawCallRecorder::~DrawCallRecorder((this + 1352));
  v2 = *(this + 159);
  if (v2)
  {

    *(this + 159) = 0;
  }

  v3 = *(this + 158);
  if (v3)
  {

    *(this + 158) = 0;
  }

  re::DynamicArray<re::mtl::RenderCommandEncoder>::deinit(this + 1224);
  re::internal::destroyPersistent<re::mtl::RenderCommandEncoder>("~CommandEncoder", 562, *(this + 150));
  *(this + 150) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 1128);
  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 134);
  re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::~SmallHashTable(this + 96);
}

void re::RenderGraphContext::selectViewport(unint64_t a1, uint64_t a2, uint64_t a3, _anonymous_namespace_ *a4, unint64_t a5)
{
  v115 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a3 + 8))
    {
      v10 = *(a3 + 16);
      v11 = *(a2 + 8);
      *(v10 + 16) = *(a2 + 24);
      *v10 = v11;
      if (*(a4 + 1))
      {
        **(a4 + 2) = xmmword_1E3063230;
        return;
      }

      goto LABEL_66;
    }

LABEL_62:
    v100[0] = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 0;
    v108 = 2048;
    v109 = 0;
    _os_log_send_and_compose_impl(v58, v100, &v110, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v100[0] = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 0;
    v108 = 2048;
    v109 = 0;
    _os_log_send_and_compose_impl(v61, v100, &v110, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v12 = a1;
  v13 = *(*(a1 + 1176) + 168);
  v6 = *(v12 + 48);
  v7 = v13[44];
  if (v7 <= v6)
  {
LABEL_70:
    v100[0] = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v105 = 789;
    v106 = 2048;
    v107 = v6;
    v108 = 2048;
    v109 = v7;
    _os_log_send_and_compose_impl(v64, v100, &v110, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v101 = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 0;
    v108 = 2048;
    v109 = 0;
    _os_log_send_and_compose_impl(v67, &v101, &v110, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

  v14 = v13[46] + 200 * v6;
  v15 = *(v14 + 56);
  if (!v15)
  {
    return;
  }

  v5 = a5;
  v16 = v13[37];
  v17 = v15 << 6;
  v6 = *(v16 + 16);
  for (i = (*(v14 + 72) + 52); ; i += 16)
  {
    v7 = *i;
    if (v6 <= v7)
    {
      v100[0] = 0;
      v114 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v102 = 136315906;
      v103 = "operator[]";
      v104 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v105 = 789;
      v106 = 2048;
      v107 = v7;
      v108 = 2048;
      v109 = v6;
      _os_log_send_and_compose_impl(v49, v100, &v110, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v101 = 0;
      v114 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v102 = 136315906;
      v103 = "operator[]";
      v104 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v105 = 468;
      v106 = 2048;
      v107 = v5;
      v108 = 2048;
      v109 = v12;
      _os_log_send_and_compose_impl(v52, &v101, &v110, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v101 = 0;
      v114 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v102 = 136315906;
      v103 = "operator[]";
      v104 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v105 = 468;
      v106 = 2048;
      v107 = v5;
      v108 = 2048;
      v109 = v12;
      _os_log_send_and_compose_impl(v55, &v101, &v110, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
      _os_crash_msg();
      __break(1u);
      goto LABEL_62;
    }

    v19 = *(v16 + 32) + 48 * v7;
    if (*v19 != 1)
    {
      v20 = *(i - 12);
      v21 = v20 > 8;
      v22 = (1 << v20) & 0x1CE;
      if (!v21 && v22 != 0)
      {
        break;
      }
    }

    v17 -= 64;
    if (!v17)
    {
      return;
    }
  }

  v110.i64[0] = *(v19 + 8) >> 1;
  v110.i64[1] = *(v19 + 24);
  re::RenderGraphResourceDescriptions::targetDescriptionSource(v13, &v110, v100);
  v7 = re::RenderGraphExecutable::targetDescription(*(v12 + 1176), v100);
  v6 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(v12 + 1168), *(*(v12 + 40) + 48));
  v24 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(v12 + 1168), *(*(v12 + 40) + 48));
  v26 = *(v7 + 12);
  v27.i64[0] = v26;
  v27.i64[1] = HIDWORD(v26);
  v28 = v27;
  if (!v24 || *(v24 + 12) != 1 || *(v14 + 171) != 1)
  {
    goto LABEL_24;
  }

  v97 = v28;
  v29 = *(v12 + 1176);
  v30 = *(v24 + 8);
  v31 = *(v29 + 104);
  if (v31 <= v30)
  {
LABEL_108:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, v31);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v91, v94);
    __break(1u);
  }

  v32 = *(*(v29 + 96) + 8 * v30);
  v28 = v97;
  if (v32)
  {
    v33 = v32;
    v110 = 0uLL;
    *&v111 = 0;
    [v32 screenSize];
    v98 = v110;

    v28 = v98;
  }

LABEL_24:
  v34 = *(a3 + 8);
  if (v34 < 2 || (v5 & 1) != 0)
  {
    if (v6 && !v5)
    {
      if (v6[1].i64[0])
      {
        if (*(a4 + 1))
        {
          **(a4 + 2) = v6[2];
          if (v6[1].i64[0])
          {
            if (*(a3 + 8))
            {
              v36 = *(a3 + 16);
              v37 = vcvtq_f64_u64(v28);
              *v36 = vrndaq_f32(vmulq_f32(v6[2], vcvt_hight_f32_f64(vcvt_f32_f64(v37), v37)));
              v36[1].i32[0] = 0;
              v38 = &v36[1].i32[1];
              goto LABEL_49;
            }

            goto LABEL_96;
          }

LABEL_95:
          re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v90, v93);
          __break(1u);
LABEL_96:
          v101 = 0;
          v114 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v80 = MEMORY[0x1E69E9C10];
          v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v102 = 136315906;
          v103 = "operator[]";
          v104 = 1024;
          if (v81)
          {
            v82 = 3;
          }

          else
          {
            v82 = 2;
          }

          v105 = 468;
          v106 = 2048;
          v107 = 0;
          v108 = 2048;
          v109 = 0;
          _os_log_send_and_compose_impl(v82, &v101, &v110, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
          _os_crash_msg();
          __break(1u);
LABEL_100:
          v101 = 0;
          v114 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v83 = MEMORY[0x1E69E9C10];
          v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v102 = 136315906;
          v103 = "operator[]";
          v104 = 1024;
          if (v84)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

          v105 = 468;
          v106 = 2048;
          v107 = 0;
          v108 = 2048;
          v109 = 0;
          _os_log_send_and_compose_impl(v85, &v101, &v110, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
          _os_crash_msg();
          __break(1u);
          goto LABEL_104;
        }

LABEL_91:
        v101 = 0;
        v114 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v77 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v102 = 136315906;
        v103 = "operator[]";
        v104 = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        v105 = 468;
        v106 = 2048;
        v107 = 0;
        v108 = 2048;
        v109 = 0;
        _os_log_send_and_compose_impl(v79, &v101, &v110, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_95;
      }

LABEL_90:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v89, v92);
      __break(1u);
      goto LABEL_91;
    }

    if (!v34)
    {
      return;
    }

    v39 = 0;
    v5 = 0;
    v40 = vcvt_f32_f64(vcvtq_f64_u64(v28));
    while (1)
    {
      v12 = *(a4 + 1);
      if (v12 <= v5)
      {
        goto LABEL_54;
      }

      *(*(a4 + 2) + 16 * v5) = xmmword_1E3063230;
      v12 = *(a3 + 8);
      if (v12 <= v5)
      {
        goto LABEL_58;
      }

      v41 = (*(a3 + 16) + v39);
      *v41 = 0;
      v41[1] = v40;
      v41[2] = 0x3F80000000000000;
      ++v5;
      v39 += 24;
      if (v12 <= v5)
      {
        return;
      }
    }
  }

  if (v6)
  {
    v35 = v6[1].i64[0];
    v110.i64[0] = &v6[2];
    v110.i64[1] = v35;
    v99 = v28;
    re::FixedArray<re::Vector4<float>>::operator=(a4, &v110);
    v28 = v99;
    goto LABEL_44;
  }

  if (!*(a4 + 1))
  {
    goto LABEL_100;
  }

  **(a4 + 2) = xmmword_1E3063230;
  v5 = *(a4 + 1);
  if (v5 <= 1)
  {
LABEL_104:
    v101 = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 1;
    v108 = 2048;
    v109 = v5;
    _os_log_send_and_compose_impl(v88, &v101, &v110, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  *(*(a4 + 2) + 16) = xmmword_1E3063230;
LABEL_44:
  v42 = *(a4 + 1);
  if (!v42)
  {
    goto LABEL_74;
  }

  v43 = *(a3 + 8);
  if (!v43)
  {
LABEL_78:
    v101 = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 0;
    v108 = 2048;
    v109 = 0;
    _os_log_send_and_compose_impl(v70, &v101, &v110, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

  v44 = vcvtq_f64_u64(v28);
  v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v44);
  v46 = *(a4 + 2);
  v47 = *(a3 + 16);
  *v47 = vrndaq_f32(vmulq_f32(*v46, v45));
  *(v47 + 16) = 0x3F80000000000000;
  if (v42 == 1)
  {
LABEL_82:
    v101 = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 1;
    v108 = 2048;
    v109 = 1;
    _os_log_send_and_compose_impl(v73, &v101, &v110, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_86;
  }

  if (v43 == 1)
  {
LABEL_86:
    v101 = 0;
    v114 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v102 = 136315906;
    v103 = "operator[]";
    v104 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v105 = 468;
    v106 = 2048;
    v107 = 1;
    v108 = 2048;
    v109 = 1;
    _os_log_send_and_compose_impl(v76, &v101, &v110, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v102, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  *(v47 + 24) = vrndaq_f32(vmulq_f32(v46[1], v45));
  *(v47 + 40) = 0;
  v38 = (v47 + 44);
LABEL_49:
  *v38 = 1065353216;
}

unint64_t re::RenderGraphContext::getRateMap(re::RenderGraphContext *this, unint64_t a2)
{
  v4 = *(this + 147);
  v5 = *(v4 + 104);
  if (v5 > a2)
  {
    return *(v4 + 96) + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v5, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v7, v8);
  __break(1u);
  return result;
}

uint64_t re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs@<X0>(re::RenderGraphContext *this@<X0>, uint64_t *a2@<X8>)
{
  PipelineCompilationData = re::RenderGraphContext::tryGetPipelineCompilationData(this, *(*(this + 5) + 48));
  v4 = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(this + 146), *(*(this + 5) + 48));
  v5 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(*(this + 146), *(*(this + 5) + 48));
  v6 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(this + 146), *(*(this + 5) + 48));
  v7 = re::RenderGraphDataStore::tryGet<re::ViewportData>(*(this + 146), *(*(this + 5) + 48));
  v8 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(this + 146), *(*(this + 5) + 48));
  v9 = re::RenderGraphDataStore::tryGet<re::TintContextData>(*(this + 146), *(*(this + 5) + 48));
  v10 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(this + 146), *(*(this + 5) + 48));
  v11 = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(*(this + 146), *(*(this + 5) + 48));
  result = re::RenderGraphDataStore::tryGet<re::PortalViewData>(*(this + 146), *(*(this + 5) + 48));
  *a2 = PipelineCompilationData;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = result;
  return result;
}

uint64_t re::RenderGraphContext::tryGetPipelineCompilationData(re::RenderGraphContext *this, uint64_t a2)
{
  result = re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(*(this + 146), a2);
  if (!result)
  {
    v4 = &qword_1EE1C5000;
    {
      v4 = &qword_1EE1C5000;
      if (v7)
      {
        re::RenderGraphContext::tryGetPipelineCompilationData(unsigned long long)const::kPipelineCompilationDataScopeHash = re::hashString("PipelineCompilationData", v8);
        v4 = &qword_1EE1C5000;
      }
    }

    v5 = v4[227];
    v6 = *(this + 146);

    return re::RenderGraphDataStore::tryGet<re::PipelineCompilationData>(v6, v5);
  }

  return result;
}

const char *re::RenderGraphContext::initOccupancyGridIfNecessary(re::RenderGraphContext *this, const char *a2)
{
  v31 = a2;
  result = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v13, this + 1072, &v31);
  if (v15 == 0x7FFFFFFF)
  {
    v31 = 0;
    v32 = 0;
    v33 = 1;
    v5 = &v34;
    v34 = 0;
    v35 = 0;
    re::RenderGraphContext::rtAttachmentHandles(this, *(this + 5), &v31);
    if ((v33 & 1) == 0)
    {
      v5 = v35;
    }

    if (v32)
    {
      v6 = &v5[2 * v32];
      while (1)
      {
        v30[0] = *v5;
        v30[1] = v5[1];
        if (*(re::RenderGraphResourceDescriptions::targetDescription(*(*(this + 147) + 168), v30) + 104) == 1)
        {
          break;
        }

        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_14;
        }
      }

      v7 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(this + 146), *(*(this + 5) + 48));
      if (v7)
      {
        v9 = *(v7 + 912);
      }

      else
      {
        v9 = 1;
      }

      re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(0, v8);
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v20 = 0x1600000017;
      v21 = v9;
      v22 = 0;
      re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(1uLL, v10);
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v27 = 0x1600000017;
      v28 = v9;
      v29 = 0;
      v13 = 2;
      v14 = 2;
      v38 = 0;
      v39 = a2;
      v36 = 0;
      v37 = 0;
      re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v36, this + 1072, &v39);
      if (HIDWORD(v37) == 0x7FFFFFFF)
      {
        v11 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 1072, v37, v36);
        v12 = v39;
        v11[5] = 0;
        v11 += 5;
        *(v11 + 2) = 0;
        re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>::move(v11, &v13);
        ++*(this + 278);
      }
    }

LABEL_14:
    result = v31;
    if (v31)
    {
      if ((v33 & 1) == 0)
      {
        return (*(*v31 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphContext::rtResolution(re::RenderGraphContext *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = *(this + 5);
  v2 = *(*(this + 147) + 168);
  v3 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v2 + 656, &v19);
  i = *(v2 + 352);
  if (i <= v3)
  {
    goto LABEL_14;
  }

  v5 = *(v2 + 368) + 200 * v3;
  v6 = *(v5 + 56);
  if (!v6)
  {
    return 0x100000001;
  }

  v3 = v6 << 6;
  for (i = (*(v5 + 72) + 52); ; i += 16)
  {
    v7 = *(*(this + 147) + 168);
    v8 = *(v7 + 296);
    v9 = *i;
    v10 = *(v8 + 16);
    if (v10 <= v9)
    {
      v20 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v21 = 136315906;
      *&v21[4] = "operator[]";
      *&v21[12] = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      *&v21[14] = 789;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v10;
      _os_log_send_and_compose_impl(v15, &v20, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19);
      _os_crash_msg();
      __break(1u);
LABEL_14:
      v20 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v21 = 136315906;
      *&v21[4] = "operator[]";
      *&v21[12] = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      *&v21[14] = 789;
      v22 = 2048;
      v23 = v3;
      v24 = 2048;
      v25 = i;
      _os_log_send_and_compose_impl(v18, &v20, &v26, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(v8 + 32) + 48 * v9;
    if (!*v11)
    {
      *v21 = *(v11 + 8) >> 1;
      *&v21[8] = *(v11 + 24);
      re::RenderGraphResourceDescriptions::targetDescriptionSource(v7, v21, &v26);
      if (*(i - 12) - 1 <= 2)
      {
        break;
      }
    }

    v3 -= 64;
    if (!v3)
    {
      return 0x100000001;
    }
  }

  return *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v26) + 12);
}

uint64_t re::MeshStats::setCurrentCategory(uint64_t result, int a2)
{
  if (*(result + 120) != a2)
  {
    *(result + 120) = a2;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        *(result + 96) = result + 32;
        *(result + 104) = result + 36;
        v2 = result + 40;
        goto LABEL_13;
      }

      if (a2 == 2)
      {
        *(result + 96) = result + 44;
        *(result + 104) = result + 48;
        v2 = result + 52;
        goto LABEL_13;
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          *(result + 96) = result + 56;
          *(result + 104) = result + 60;
          v2 = result + 64;
          goto LABEL_13;
        case 4:
          *(result + 96) = result + 68;
          *(result + 104) = result + 72;
          v2 = result + 76;
          goto LABEL_13;
        case 5:
          *(result + 96) = result + 80;
          *(result + 104) = result + 84;
          v2 = result + 88;
LABEL_13:
          *(result + 112) = v2;
          return result;
      }
    }

    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
  }

  return result;
}

void re::RenderGraphContext::acquireManagedRenderCommandEncoder(re::RenderGraphContext *this@<X0>, re::RenderGraphNodeBase *a2@<X1>, re::mtl::RenderCommandEncoder *a3@<X8>)
{
  v6 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v7 = re::RenderFrame::currentCommandBuffer(v6);

  re::RenderGraphContext::acquireManagedRenderEncoder(this, v7, a2, a3);
}

void re::RenderGraphContext::acquireManagedBlitCommandEncoder(uint64_t *__return_ptr a1@<X8>, re::RenderGraphContext *this@<X0>, unint64_t *a2@<X1>)
{
  v6 = re::RenderFrameBox::get((*(*(this + 1) + 112) + 328), *(*this + 40));
  v7 = re::RenderFrame::currentCommandBuffer(v6);
  v8 = *(this + 5);

  re::RenderGraphContext::acquireManagedBlitEncoder(this, v7, v8, a2, a1);
}

void re::RenderGraphContext::acquireManagedBlitEncoder(uint64_t a1@<X0>, uint64_t a2@<X1>, re::RenderGraphNodeBase *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v9 = *(a2 + 16);
  v44[0] = v9;
  v10 = *(a1 + 1184);
  if (v10 == 1)
  {
    v12 = 0;
LABEL_11:
    re::RenderGraphContext::releaseManagedEncoder(a1, v12);
    goto LABEL_12;
  }

  if (v10 != 2 && v10 != 4)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v52);
    if (v52 && (BYTE8(v52) & 1) != 0)
    {
      (*(*v52 + 40))();
    }

    v12 = 1;
    goto LABEL_11;
  }

LABEL_12:
  v13 = re::RenderGraphContext::setupUsesCustomEncoders(a1);
  if (v13)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v52);
    if (v52)
    {
      if (BYTE8(v52))
      {
        (*(*v52 + 40))();
      }
    }
  }

  if (*(a1 + 1184) == 4)
  {
    if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 8)))
    {
      v14 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
      QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v14);
      re::ObjCObject::operator=(v44, (QueuedCommandBuffer + 16));
      EncoderLabel = re::RenderGraphNodeBase::getEncoderLabel(a3);
      [v44[0] setLabel:*EncoderLabel];
      [v44[0] addCompletedHandler:&__block_literal_global_43_0];
    }

    LODWORD(v17) = 2;
    *(a1 + 1184) = 2;
    v18 = *(*(a1 + 1176) + 168);
    v19 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v18 + 656, &v45);
    v20 = *(v18 + 352);
    if (v20 <= v19)
    {
LABEL_45:
      v46 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v38 = MEMORY[0x1E69E9C10];
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      if (v39)
      {
        v40 = (v17 + 1);
      }

      else
      {
        v40 = v17;
      }

      *&v47[12] = 1024;
      *&v47[14] = 789;
      v48 = 2048;
      v49 = v19;
      v50 = 2048;
      v51 = v20;
      _os_log_send_and_compose_impl(v40, &v46, &v52, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v47, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
    }

    v43 = a5;
    v21 = *(v18 + 368) + 200 * v19;
    v22 = *(v21 + 56);
    if (v22)
    {
      v19 = 0;
      v23 = v22 << 6;
      v24 = (*(v21 + 72) + 52);
      v20 = 1;
      while (1)
      {
        if (*(v24 - 12) == 4)
        {
          v25 = *(*(a1 + 1176) + 168);
          v26 = *(v25 + 296);
          v17 = *v24;
          v27 = *(v26 + 16);
          if (v27 <= v17)
          {
            v46 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v47 = 136315906;
            *&v47[4] = "operator[]";
            *&v47[12] = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            *&v47[14] = 789;
            v48 = 2048;
            v49 = v17;
            v50 = 2048;
            v51 = v27;
            _os_log_send_and_compose_impl(v37, &v46, &v52, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v47, 38, v41, v43);
            _os_crash_msg();
            __break(1u);
            goto LABEL_45;
          }

          v28 = *(v26 + 32) + 48 * v17;
          if (*v28 == 1)
          {
            *v47 = *(v28 + 8) >> 1;
            *&v47[8] = *(v28 + 24);
            re::RenderGraphResourceDescriptions::bufferDescriptionSource(v25, v47, &v52);
            v30 = re::RenderGraphContext::metalBuffer(a1, &v52);
            v19 |= [*re::BufferSlice::buffer(v30 v31)];
          }

          else if (!*v28)
          {
            *v47 = *(v28 + 8) >> 1;
            *&v47[8] = *(v28 + 24);
            re::RenderGraphResourceDescriptions::targetDescriptionSource(v25, v47, &v52);
            *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v52) + 64) = 1;
            re::RenderGraphContext::metalTexture(a1, &v52, 0, 0, v47);
            v29 = [*v47 protectionOptions];
            if (*v47)
            {
            }

            v19 |= v29;
          }
        }

        v24 += 16;
        v23 -= 64;
        if (!v23)
        {
          goto LABEL_33;
        }
      }
    }

    v19 = 0;
LABEL_33:
    if ([v44[0] protectionOptions] != v19)
    {
      [v44[0] setProtectionOptions:v19];
    }

    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v52, v44);
    v32 = *(a1 + 1200);
    a5 = v43;
    if (v32 != &v52)
    {
      v33 = v52;
      *&v52 = 0;
      v34 = *v32;
      *v32 = v33;
    }

    [**(a1 + 1200) setLabel:*re::RenderGraphNodeBase::getEncoderLabel(v45)];
    *(a1 + 1192) = v19;
    *(a1 + 1208) = 1;
    *(a1 + 1216) = -1;
    re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(*(a1 + 32), *(a1 + 1200));
  }

  if (a4)
  {
    *a4 = *(a1 + 1192);
  }

  *a5 = **(a1 + 1200);
}

void re::RenderGraphContext::acquireManagedComputeCommandEncoder(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = re::RenderFrameBox::get((*(a1[1] + 112) + 328), *(*a1 + 40));
  v9 = re::RenderFrame::currentCommandBuffer(v8);
  v10 = a1[5];

  re::RenderGraphContext::acquireManagedComputeEncoder(a1, v9, v10, a2, a3, a4);
}

void re::RenderGraphContext::acquireManagedComputeEncoder(uint64_t a1@<X0>, id *a2@<X1>, re::RenderGraphNodeBase *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v52 = *a2;
  v10 = a2[2];
  v11 = v10;
  v53 = v10;
  v12 = *(a1 + 1184);
  if (v12 != 1 && v12 != 4)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v61);
    if (v61 && (BYTE8(v61) & 1) != 0)
    {
      (*(*v61 + 40))();
    }

    re::RenderGraphContext::releaseManagedEncoder(a1, 1);
    v12 = *(a1 + 1184);
  }

  if (v12 == 1 && ([**(a1 + 1200) dispatchType] == 1) != a4)
  {
    re::RenderGraphContext::releaseManagedEncoder(a1, 0);
  }

  v46 = *(*(a1 + 8) + 374);
  if ((v46 & 1) == 0 && *(a1 + 1184) == 1)
  {
    v14 = [**(a1 + 1200) dispatchType];
    if (a4 == 1 && v14 == 1)
    {
      re::RenderGraphContext::releaseManagedEncoder(a1, 0);
    }
  }

  v15 = re::RenderGraphContext::setupUsesCustomEncoders(a1);
  if (v15)
  {
    re::RenderGraphExecutable::addError(*(a1 + 1176), &v61);
    if (v61)
    {
      if (BYTE8(v61))
      {
        (*(*v61 + 40))();
      }
    }
  }

  v47 = a4;
  v16 = &v61;
  v17 = *(*(a1 + 1176) + 168);
  v18 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v17 + 656, &v54);
  v19 = *(v17 + 352);
  if (v19 <= v18)
  {
LABEL_56:
    v55 = 0;
    v16[3] = 0u;
    v16[4] = 0u;
    v16[2] = 0u;
    v61 = 0u;
    v62 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v56 = 136315906;
    *&v56[4] = "operator[]";
    *&v56[12] = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    *&v56[14] = 789;
    v57 = 2048;
    v58 = v18;
    v59 = 2048;
    v60 = v19;
    _os_log_send_and_compose_impl(v45, &v55, &v61, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v47, v48);
    _os_crash_msg();
    __break(1u);
  }

  v49 = a5;
  v50 = a6;
  v20 = *(v17 + 368) + 200 * v18;
  v21 = *(v20 + 56);
  if (v21)
  {
    v22 = 0;
    v23 = v21 << 6;
    v24 = (*(v20 + 72) + 52);
    v18 = &selRef_isLimitedRenderAsset;
    v19 = 1;
    while (1)
    {
      if (*(v24 - 12) == 5)
      {
        v25 = *(*(a1 + 1176) + 168);
        v26 = *(v25 + 296);
        v27 = *v24;
        v16 = *(v26 + 16);
        if (v16 <= v27)
        {
          v55 = 0;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          v61 = 0u;
          v62 = 0u;
          v40 = MEMORY[0x1E69E9C10];
          v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v56 = 136315906;
          *&v56[4] = "operator[]";
          *&v56[12] = 1024;
          if (v41)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          *&v56[14] = 789;
          v57 = 2048;
          v58 = v27;
          v59 = 2048;
          v60 = v16;
          _os_log_send_and_compose_impl(v42, &v55, &v61, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v47, v49);
          _os_crash_msg();
          __break(1u);
          goto LABEL_56;
        }

        v28 = *(v26 + 32) + 48 * v27;
        if (*v28 == 1)
        {
          *v56 = *(v28 + 8) >> 1;
          *&v56[8] = *(v28 + 24);
          re::RenderGraphResourceDescriptions::bufferDescriptionSource(v25, v56, &v61);
          v30 = re::RenderGraphContext::metalBuffer(a1, &v61);
          v22 |= [*re::BufferSlice::buffer(v30 v31)];
        }

        else if (!*v28)
        {
          *v56 = *(v28 + 8) >> 1;
          *&v56[8] = *(v28 + 24);
          re::RenderGraphResourceDescriptions::targetDescriptionSource(v25, v56, &v61);
          *(re::RenderGraphExecutable::targetDescription(*(a1 + 1176), &v61) + 64) = 1;
          re::RenderGraphContext::metalTexture(a1, &v61, 0, 0, v56);
          v29 = [*v56 protectionOptions];
          if (*v56)
          {
          }

          v22 |= v29;
        }
      }

      v24 += 16;
      v23 -= 64;
      if (!v23)
      {
        goto LABEL_35;
      }
    }
  }

  v22 = 0;
LABEL_35:
  if ([v11 protectionOptions] != v22)
  {
    if (*(a1 + 1184) != 4)
    {
      re::RenderGraphContext::releaseManagedEncoder(a1, 0);
    }

    [v11 setProtectionOptions:v22];
  }

  if (*(a1 + 1184) == 4)
  {
    if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 8)))
    {
      v32 = [v11 protectionOptions];
      v33 = re::RenderFrameBox::get((*(*(a1 + 8) + 112) + 328), *(*a1 + 40));
      QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v33);
      v52 = *QueuedCommandBuffer;
      re::ObjCObject::operator=(&v53, (QueuedCommandBuffer + 16));
      EncoderLabel = re::RenderGraphNodeBase::getEncoderLabel(v54);
      [v53 setLabel:*EncoderLabel];
      [v53 addCompletedHandler:&__block_literal_global_43_0];
      [v53 setProtectionOptions:v32];
      v11 = v53;
    }

    *(a1 + 1184) = 1;
    v36 = *(a1 + 8);
    v51 = v11;
    re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(v36, &v51, 1u, v47, &v61);
    v37 = *(a1 + 1200);
    if (v37 != &v61)
    {
      v38 = v61;
      *&v61 = 0;
      v39 = *v37;
      *v37 = v38;
    }

    [**(a1 + 1200) setLabel:*re::RenderGraphNodeBase::getEncoderLabel(v54)];
    *(a1 + 1192) = v22;
    *(a1 + 1208) = 1;
    *(a1 + 1216) = -1;
    re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(*(a1 + 32), *(a1 + 1200));
  }

  else
  {
    re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(*(a1 + 32), *(a1 + 1200));
    if (v46 && *(a1 + 1184) == 1 && [**(a1 + 1200) dispatchType] == 1)
    {
      [**(a1 + 1200) memoryBarrierWithScope:2];
      [**(a1 + 1200) memoryBarrierWithScope:1];
    }
  }

  if (v49)
  {
    *v49 = *(a1 + 1192);
  }

  *v50 = **(a1 + 1200);
}

void re::RenderGraphContext::metalTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, id *a5@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1176);
  v7 = *(a2 + 12);
  v8 = *(v6 + 56);
  if (v8 <= v7)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *v25 = 0u;
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
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(*(v6 + 64) + 8 * v7);
  *a5 = v11;
  if (a3)
  {
    if ([v11 pixelFormat] == 260)
    {
      v12 = [*a5 newTextureViewWithPixelFormat_];
    }

    else
    {
      if ([*a5 pixelFormat] != 255)
      {
        goto LABEL_9;
      }

      v12 = [*a5 newTextureViewWithPixelFormat_];
    }

    v25[0] = v12;
    NS::SharedPtr<MTL::Texture>::operator=(a5, v25);
    if (v25[0])
    {
    }
  }

LABEL_9:
  if (!a4)
  {
    return;
  }

  if ([*a5 textureType])
  {
    if ([*a5 textureType] == 2)
    {
      re::makeView2DTo2DArray(a5, v25);
    }

    else
    {
      if ([*a5 textureType] != 4)
      {
        return;
      }

      re::makeView2DMultisampleTo2DMultisampleArray(a5, v25);
    }
  }

  else
  {
    re::makeView1DTo1DArray(a5, v25);
  }

  NS::SharedPtr<MTL::Texture>::operator=(a5, v25);
  if (v25[0])
  {
  }
}

uint64_t re::RenderGraphContext::metalBuffer(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1176);
  v3 = *(a2 + 12);
  v4 = *(v2 + 80);
  if (v4 <= v3)
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
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(v2 + 88) + 40 * v3;
}

uint64_t re::RenderGraphContext::isSetupParallel(re::RenderGraphContext *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 147) + 168);
  v2 = *(this + 12);
  v3 = *(v1 + 352);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v1 + 368) + 200 * v2 + 170);
}

void re::RenderGraphContext::rtAttachmentHandles(uint64_t a1, size_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) += 2;
  v5 = *(*(a1 + 1176) + 168);
  v6 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v5 + 656, &v37);
  v7 = *(v5 + 352);
  if (v7 <= v6)
  {
    goto LABEL_31;
  }

  v8 = *(v5 + 368) + 200 * v6;
  v9 = *(v8 + 56);
  if (v9)
  {
    v6 = (a3 + 24);
    v7 = v9 << 6;
    for (i = (*(v8 + 72) + 52); ; i += 16)
    {
      v11 = *(*(a1 + 1176) + 168);
      v12 = *(v11 + 296);
      v13 = *i;
      v14 = *(v12 + 16);
      if (v14 <= v13)
      {
        v38 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        *&v39[12] = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&v39[14] = 789;
        v40 = 2048;
        v41 = v13;
        v42 = 2048;
        v43 = v14;
        _os_log_send_and_compose_impl(v33, &v38, &v44, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v37);
        _os_crash_msg();
        __break(1u);
LABEL_31:
        v38 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        *&v39[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v39[14] = 789;
        v40 = 2048;
        v41 = v6;
        v42 = 2048;
        v43 = v7;
        _os_log_send_and_compose_impl(v36, &v38, &v44, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v37);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(v12 + 32) + 48 * v13;
      if (!*v15)
      {
        v16 = *(i - 12);
        v17 = v16 > 6;
        v18 = (1 << v16) & 0x4E;
        if (!v17 && v18 != 0)
        {
          break;
        }
      }

LABEL_25:
      v7 -= 64;
      if (!v7)
      {
        return;
      }
    }

    *v39 = *(v15 + 8) >> 1;
    *&v39[8] = *(v15 + 24);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(v11, v39, &v44);
    if (*a3)
    {
      v21 = *(a3 + 8);
      v22 = *(a3 + 16);
      if (v22)
      {
        if (v21 - 8 < 0xFFFFFFFFFFFFFFF7)
        {
          v24 = v21 + 1;
          v25 = 16;
          goto LABEL_18;
        }
      }

      else
      {
        v23 = *v6;
        if (v21 >= *v6)
        {
          v24 = v21 + 1;
          if (v23 < v24)
          {
            v25 = 2 * v23;
LABEL_18:
            if (v25 <= v24)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a3, v27);
            v22 = *(a3 + 16);
          }
        }
      }
    }

    else
    {
      v26 = *(a3 + 8);
      re::DynamicOverflowArray<re::RenderGraphTargetHandle,8ul>::setCapacity(a3, v26 + 1);
      v22 = *(a3 + 16) + 2;
      *(a3 + 16) = v22;
    }

    v28 = a3 + 24;
    if ((v22 & 1) == 0)
    {
      v28 = *(a3 + 32);
    }

    v29 = *(a3 + 8);
    v30 = (v28 + 16 * v29);
    *v30 = 0;
    v30[1] = -1;
    *v30 = v44;
    *(a3 + 8) = v29 + 1;
    *(a3 + 16) += 2;
    goto LABEL_25;
  }
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 32 * v6 + 16;
}

void re::RenderGraphContext::rtInfo(uint64_t *__return_ptr a1@<X8>, re::RenderGraphContext *this@<X0>, re::RenderGraphNodeBase *a3@<X1>)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v5 = *(*(this + 147) + 168);
  v6 = *re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::operator[](v5 + 656, &v29);
  v7 = *(v5 + 352);
  if (v7 <= v6)
  {
    goto LABEL_39;
  }

  v8 = *(v5 + 368) + 200 * v6;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 29) = 0u;
  v9 = *(v8 + 56);
  v28 = v8;
  if (v9)
  {
    v6 = 0;
    v7 = 0;
    v10 = *(v8 + 72);
    v11 = v9 << 6;
    while (1)
    {
      v12 = *(*(this + 147) + 168);
      v13 = *(v12 + 296);
      v14 = v10[13];
      v15 = *(v13 + 16);
      if (v15 <= v14)
      {
        break;
      }

      v16 = *(v13 + 32) + 48 * v14;
      if (!*v16)
      {
        *v31 = *(v16 + 8) >> 1;
        *&v31[8] = *(v16 + 24);
        re::RenderGraphResourceDescriptions::targetDescriptionSource(v12, v31, &v36);
        v17 = v10[1];
        switch(v17)
        {
          case 3u:
            v6 = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v36) + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v36, 0, 0, v31);
              v6 = [*v31 sampleCount];
              if (*v31)
              {
              }
            }

            *(a1 + 10) = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v36) + 4);
            break;
          case 2u:
            v6 = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v36) + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v36, 0, 0, v31);
              v6 = [*v31 sampleCount];
              if (*v31)
              {
              }
            }

            *(a1 + 9) = *(re::RenderGraphExecutable::targetDescription(*(this + 147), &v36) + 4);
            break;
          case 1u:
            v18 = re::RenderGraphExecutable::targetDescription(*(this + 147), &v36);
            v6 = *(v18 + 20);
            if (v6 == -1)
            {
              re::RenderGraphContext::metalTexture(this, &v36, 0, 0, v31);
              v6 = [*v31 sampleCount];
              if (*v31)
              {
              }
            }

            re::RenderGraphContext::metalTexture(this, &v36, 0, 0, v31);
            *(a1 + *v10 + 1) = [*v31 pixelFormat];
            if (*v31)
            {
            }

            v7 = *(v18 + 32);
            if ((*(this + 1552) & 1) == 0)
            {
              if (v7 && *(*(*(this + 1) + 160) + 112) != 1)
              {
                v7 = 1;
              }

              else
              {
                v7 = *(*(this + 2) + 114);
              }
            }

            break;
        }
      }

      v10 += 16;
      v11 -= 64;
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    *a1 = v6;
    *(a1 + 12) = v7;
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    *&v31[14] = 789;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    _os_log_send_and_compose_impl(v22, &v30, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v26, v28);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *&v31[14] = 789;
    v32 = 2048;
    v33 = v6;
    v34 = 2048;
    v35 = v7;
    _os_log_send_and_compose_impl(v25, &v30, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v26, v27);
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v7) = 0;
  LODWORD(v6) = 0;
LABEL_30:
  *a1 = v6;
  *(a1 + 12) = v7;
  if (*(v28 + 171))
  {
    v19 = re::RenderGraphDataStore::tryGet<re::VRRData>(*(this + 146), *(v29 + 6));
    if (v19)
    {
      if (*(v19 + 12) == 1)
      {
        *(a1 + 44) = 1;
      }
    }
  }
}