void re::FrameAnalysisManager::loadFont(re::StringID **this)
{
  if (!re::FontID::isValid((this + 90)))
  {
    v2 = re::ServiceLocator::serviceOrNull<re::AssetService>(this[4]);
    if (v2)
    {
      (*(*v2 + 8))(v5);
      re::AssetHandle::loadNow(v5[1], 0);
      re::makeFontID(&v4, v5);
      v3 = re::StringID::operator=((this + 90), &v4);
      if (v4)
      {
        if (v4)
        {
        }
      }

      re::AssetHandle::~AssetHandle(v5);
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::TransformService>(re::StringID *a1)
{
  {
    re::introspect<re::TransformService>(BOOL)::info = re::introspect_TransformService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::TransformService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::RenderManager>(re::StringID *a1)
{
  {
    re::introspect<re::RenderManager>(BOOL)::info = re::introspect_RenderManager(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::RenderManager>(BOOL)::info;
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

float re::ExtractAngularSizePoints(float32x4_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, float *a5)
{
  v5 = a1[1];
  v6 = vcgtq_f32(*a1, v5);
  v6.i32[3] = v6.i32[2];
  v7 = vmaxvq_u32(v6);
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vmulq_f32(vaddq_f32(*a1, v5), v8);
  v10 = v9.i64[1];
  if (v7 >= 0)
  {
    v11 = v9.i64[0];
  }

  else
  {
    v11 = 0;
  }

  if (v7 < 0)
  {
    v10 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 4) = a1[1].i32[1];
  *(a2 + 8) = a1->i32[2];
  v12 = a1[1];
  v13 = vcgtq_f32(*a1, v12);
  v13.i32[3] = v13.i32[2];
  v14 = vmaxvq_u32(v13);
  v15 = vmulq_f32(vaddq_f32(*a1, v12), v8);
  v16 = v15.i64[1];
  if (v14 >= 0)
  {
    v17 = v15.i64[0];
  }

  else
  {
    v17 = 0;
  }

  if (v14 < 0)
  {
    v16 = 0;
  }

  *a3 = v17;
  a3[1] = v16;
  *(a3 + 4) = *(a1->i64 + 4);
  v18 = a1[1];
  v19 = vcgtq_f32(*a1, v18);
  v19.i32[3] = v19.i32[2];
  v20 = vmaxvq_u32(v19);
  v21 = vmulq_f32(vaddq_f32(*a1, v18), v8);
  v22 = v21.i64[1];
  if (v20 >= 0)
  {
    v23 = v21.i64[0];
  }

  else
  {
    v23 = 0;
  }

  if (v20 < 0)
  {
    v22 = 0;
  }

  *a4 = v23;
  a4[1] = v22;
  *a4 = a1->i32[0];
  *(a4 + 2) = a1[1].i32[2];
  v24 = a1[1];
  v25 = vcgtq_f32(*a1, v24);
  v25.i32[3] = v25.i32[2];
  v26 = vmaxvq_u32(v25);
  v27 = vmulq_f32(vaddq_f32(*a1, v24), v8);
  v28 = v27.i64[1];
  if (v26 >= 0)
  {
    v29 = v27.i64[0];
  }

  else
  {
    v29 = 0;
  }

  if (v26 < 0)
  {
    v28 = 0;
  }

  *a5 = v29;
  *(a5 + 1) = v28;
  *a5 = a1[1].f32[0];
  result = a1[1].f32[2];
  a5[2] = result;
  return result;
}

void re::FrameAnalysisManager::resetFrameData(re::FrameAnalysisManager *this)
{
  *(this + 184) = 0;
  *(this + 40) = 0;
  *(this + 165) = 0;
  *(this + 169) = 0;
  v8 = 0;
  v9 = &str_67;
  v2 = re::StringID::operator=((this + 736), &v8);
  if (v8)
  {
  }

  v8 = 0;
  v9 = &str_67;
  v3 = re::StringID::operator=((this + 752), &v8);
  if (v8)
  {
  }

  v4 = *(this + 98);
  v5 = __OFADD__(v4++, 1);
  v6 = (v4 < 0) ^ v5;
  v7 = v4 & 1;
  if (v6)
  {
    v7 = -v7;
  }

  *(this + 98) = v7;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 48 * v7 + 400);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 344);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 496);
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_165, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
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

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::FrameAnalysisManager::hasModifiedRenderFrameData(re::FrameAnalysisManager *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    (*(v2 + 16))(v2, this + 128);
  }

  if (*(this + 160) & 1) != 0 || (*(this + 161) & 1) != 0 || (*(this + 162) & 1) != 0 || (*(this + 164) & 1) != 0 || (*(this + 165) & 1) != 0 || (*(this + 166) & 1) != 0 || (*(this + 167) & 1) != 0 || (*(this + 168) & 1) != 0 || (*(this + 169) & 1) != 0 || (*(this + 184))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 170);
  }

  return v3 & 1;
}

BOOL re::FrameAnalysisManager::entityOrChildrenHaveModifiedRenderFrameData(re::FrameAnalysisManager *this, re::ecs2::Entity *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 39);
  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 496, &v3);
}

BOOL re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 24 * v5 + 16) == v3)
  {
    return 1;
  }

  do
  {
    LODWORD(v5) = *(v7 + 24 * v5 + 8) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 24 * v5 + 16) != v3);
  return result;
}

uint64_t re::FrameAnalysisManager::modifiedRenderFrameDataAddIgnoredEntity(uint64_t this, unint64_t a2)
{
  v2 = this;
  v10 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *(this + 96);
  if (v5)
  {
    v7 = v4 % v5;
    v8 = *(*(this + 80) + 4 * (v4 % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 88);
      if (*(v9 + 24 * v8 + 16) == a2)
      {
        return this;
      }

      while (1)
      {
        LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 24 * v8 + 16) == a2)
        {
          return this;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  this = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(this + 72, v7, v4, &v10, &v10);
  ++*(v2 + 112);
  return this;
}

uint64_t re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != v3)
  {
    while (1)
    {
      v10 = v7;
      LODWORD(v7) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == v3)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_9:
  v11 = *(a1 + 16);
  v12 = v11 + 24 * v7;
  v15 = *(v12 + 8);
  v14 = (v12 + 8);
  v13 = v15;
  if (v15 < 0)
  {
    *v14 = v13 & 0x7FFFFFFF;
    v11 = *(a1 + 16);
    v13 = *(v11 + 24 * v7 + 8);
  }

  v16 = *(a1 + 40);
  *(v11 + 24 * v7 + 8) = *(a1 + 36) | v13 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

uint64_t re::FrameAnalysisManager::reportRenderedEntity(re::FrameAnalysisManager *this, const re::ecs2::Entity *a2, int a3, int a4)
{
  result = re::FrameAnalysisManager::getOrCreateEntityState(this, a2);
  v9 = result;
  *(result + 11) = a4;
  if (a4)
  {
    v10 = this + 48 * *(this + 98);
    v11 = *(a2 + 39);
    result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((v10 + 400), &v11);
  }

  if (a3)
  {
    *(v9 + 10) = a3;
    v11 = *(a2 + 39);
    return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 344, &v11);
  }

  return result;
}

uint64_t re::FrameAnalysisManager::getOrCreateEntityState(re::FrameAnalysisManager *this, const re::ecs2::Entity *a2)
{
  v8 = *(a2 + 39);
  v4 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 296, &v8);
  if (!v4)
  {
    objc_initWeak(&location, 0);
    v7 = 0x1000000;
    objc_storeWeak(&location, a2 + 8);
    v4 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 296, &v8, &location);
    objc_destroyWeak(&location);
  }

  return v4;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::FrameAnalysisManager::processFrameComponentModified(uint64_t this, const re::ecs2::Entity *a2, const re::ecs2::ComponentTypeBase *a3, const char *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = a2;
  if (*(a3 + 44) == 1)
  {
    v6 = this;
    this = (*(*a3 + 8))(a3);
    if ((this & 1) == 0)
    {
      this = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v6 + 72, &v13);
      if ((this & 1) == 0)
      {
        if (*(v6 + 712) == 1)
        {
          v7 = *re::foundationProfilingLogObjects(this);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(v13 + 37);
            v9 = *(a3 + 4);
            *buf = 136315650;
            *&buf[4] = v8;
            v15 = 2080;
            v16 = v9;
            v17 = 2080;
            v18 = a4;
            _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "FrameAnalysisManager::processFrameComponentModified(), entity named %s, with component %s, had an event %s", buf, 0x20u);
          }
        }

        if (*(v6 + 736) <= 1uLL)
        {
          v10 = *(v6 + 744);
          if (v10)
          {
            if (!*v10)
            {
              re::StringID::operator=((v6 + 736), v13 + 36);
              re::StringID::operator=((v6 + 752), a3 + 3);
            }
          }
        }

        v11 = v13;
        if (v13)
        {
          do
          {
            *buf = *(v11 + 39);
            if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v6 + 496, buf))
            {
              break;
            }

            *buf = *(v11 + 39);
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v6 + 496, buf);
            v11 = *(v11 + 4);
            if (!v11)
            {
              break;
            }
          }

          while ((*(v11 + 304) & 0x80) == 0);
        }

        *buf = *(v13 + 39);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v6 + 344, buf);
        this = re::FrameAnalysisManager::getOrCreateEntityState(v6, v13);
        if (re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a3 && re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a3)
        {
          *(this + 9) = 1;
        }
      }
    }
  }

  return this;
}

BOOL re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 24 * v5 + 16) == v3)
  {
    return 1;
  }

  do
  {
    LODWORD(v5) = *(v7 + 24 * v5 + 8) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 24 * v5 + 16) != v3);
  return result;
}

void re::FrameAnalysisManager::markECSDirty(re::FrameAnalysisManager *this, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 712) == 1)
  {
    v4 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "FrameAnalysisManager::markECSDirty(), dirtied due to %s", &v5, 0xCu);
    }
  }

  *(this + 160) = 1;
}

uint64_t re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

void re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v11);
  v4 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 40 * v13) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v6;
      v4 = v13;
    }

    else
    {
      *(v5 + 40 * v14) = *(v5 + 40 * v14) & 0x80000000 | v6;
    }

    v7 = (v5 + 40 * v4);
    v8 = *v7;
    if (*v7 < 0)
    {
      *v7 = v8 & 0x7FFFFFFF;
      objc_destroyWeak(v7 + 2);
      *(v7 + 2) = 0;
      v9 = v13;
      v5 = *(a1 + 16);
      v8 = *(v5 + 40 * v13);
      v4 = v13;
    }

    else
    {
      v9 = v4;
    }

    v10 = *(a1 + 40);
    *(v5 + 40 * v9) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v10 + 1;
  }
}

void *re::FrameAnalysisManager::modifiedRenderFrameDataSetDebugBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 120) = result;
  return result;
}

re *re::FrameAnalysisManager::createIntersectedMeshComponentDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = re::ServiceLocator::serviceOrNull<re::TransformService>(*(a1 + 32));
  v10 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(*(a1 + 32));
  v147 = (*(*v10 + 16))(v10);
  *(a1 + 768) = 0;
  v123 = a1;
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(a1 + 32));
  if (!v11)
  {
    return 0;
  }

  v12 = (*(*v11 + 288))(v11) + 120;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v142, v12, 0);
  v146.i64[0] = v142.i64[0];
  v146.i32[2] = v142.i32[2];
  v121 = v12;
  if (v12 == v142.i64[0] && v142.u32[2] == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v119 = a4;
  v120 = a5;
  v129 = 0;
  v118 = a2;
  v14.i64[0] = a2;
  v14.i64[1] = a3;
  v134 = v14;
  v131 = vdupq_laneq_s32(v14, 2);
  v132 = vdupq_lane_s32(a2, 1);
  v15 = INFINITY;
  v122 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  do
  {
    v16 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v146);
    v17 = *(v16 + 200);
    if (v17)
    {
      v18 = *(v16 + 216);
      v135 = v18 + 8 * v17;
      do
      {
        v19 = *(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 8);
        if (*(*v18 + 224) > v19)
        {
          v20 = *(*(*v18 + 240) + 8 * v19);
          if (v20)
          {
            v21 = *(v20 + 384);
            if (v21)
            {
              v22 = *(v20 + 400);
              v23 = &v22[v21];
              do
              {
                v24 = *v22;
                v25 = *(*v22 + 16);
                v26 = *(v25 + 296);
                if ((!v26 || strncmp(*(v25 + 296), "Mesh Entity", 0xBuLL) && strncmp(v26, "Skydome", 7uLL)) && *re::ecs2::RenderOptions::forEntity(&v147, v25) == 1)
                {
                  if (*(v25 + 256))
                  {
                    v27 = *(v24 + 40);
                    if (v27)
                    {
                      v28 = atomic_load((v27 + 896));
                      if (v28 == 2)
                      {
                        v29 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v24 + 32));
                        if (*(v29 + 1264))
                        {
                          v30 = 608;
                        }

                        else
                        {
                          v30 = 32;
                        }

                        if (*(v29 + v30))
                        {
                          v31 = v29;
                          v32 = 0;
                          v33.i64[0] = 0x7F0000007FLL;
                          v33.i64[1] = 0x7F0000007FLL;
                          v34.i64[0] = 0x7F0000007FLL;
                          v34.i64[1] = 0x7F0000007FLL;
                          v137 = v34;
                          v136 = vnegq_f32(v33);
                          do
                          {
                            re::MeshAsset::boundingBoxForModel(&v142, v31, v32);
                            v35 = v136;
                            v35.i32[3] = 0;
                            v36 = v142;
                            v37 = v143;
                            v36.i32[3] = 0;
                            v136 = vminnmq_f32(v35, v36);
                            v38 = v137;
                            v38.i32[3] = 0;
                            v37.i32[3] = 0;
                            v137 = vmaxnmq_f32(v38, v37);
                            ++v32;
                            if (*(v31 + 1264))
                            {
                              v39 = 608;
                            }

                            else
                            {
                              v39 = 32;
                            }
                          }

                          while (v32 < *(v31 + v39));
                        }

                        else
                        {
                          v40.i64[0] = 0x7F0000007FLL;
                          v40.i64[1] = 0x7F0000007FLL;
                          v41.i64[0] = 0x7F0000007FLL;
                          v41.i64[1] = 0x7F0000007FLL;
                          v137 = v41;
                          v136 = vnegq_f32(v40);
                        }

                        re::TransformService::worldMatrix(v133, v25, 0, &v142);
                        v148.columns[2] = v144;
                        v148.columns[3] = v145;
                        v148.columns[0] = v142;
                        v148.columns[1] = v143;
                        v149 = __invert_f4(v148);
                        v42 = vaddq_f32(v149.columns[3], vmlaq_f32(vmlaq_f32(vmulq_n_f32(v149.columns[0], v134.f32[0]), v132, v149.columns[1]), v131, v149.columns[2]));
                        v149.columns[1] = vcgtq_f32(v136, v42);
                        v149.columns[1].i32[3] = v149.columns[1].i32[2];
                        if ((vmaxvq_u32(v149.columns[1]) & 0x80000000) != 0 || (v43 = vcgtq_f32(v42, v137), v43.i32[3] = v43.i32[2], (vmaxvq_u32(v43) & 0x80000000) != 0))
                        {
                          v44 = vcgtq_f32(v136, v137);
                          v44.i32[3] = v44.i32[2];
                          v45 = vmaxvq_u32(v44);
                          v46.i64[0] = 0x3F0000003F000000;
                          v46.i64[1] = 0x3F0000003F000000;
                          v47 = vmulq_f32(vaddq_f32(v136, v137), v46);
                          v48 = v45 < 0;
                          v49 = v45 >= 0 ? v47.i64[1] : 0;
                          if (v48)
                          {
                            v50 = 0;
                          }

                          else
                          {
                            v50 = *v47.f32;
                          }

                          *v51.f32 = v50;
                          v51.i64[1] = v49;
                          v53 = v142;
                          v52 = v143;
                          v54 = v144;
                          v55 = v145;
                          v56 = vmulq_n_f32(v142, *v50.i32);
                          v57 = vaddq_f32(v145, vmlaq_laneq_f32(vmlaq_lane_f32(v56, v143, v50, 1), v144, v51, 2));
                          v58 = vsubq_f32(vdivq_f32(v57, vdupq_laneq_s32(v57, 3)), v134);
                          v59 = vmulq_f32(v58, v58);
                          v60 = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
                          if (v60 <= v15)
                          {
                            v130 = vdupq_lane_s32(v50, 1);
                            *(v123 + 768) = 900;
                            v61 = v143;
                            *(v123 + 784) = v142;
                            *(v123 + 800) = v61;
                            v62 = v145;
                            *(v123 + 816) = v144;
                            *(v123 + 832) = v62;
                            *(v123 + 848) = v136;
                            *(v123 + 864) = v137;
                            v63 = vaddq_f32(v55, vmlaq_laneq_f32(vmlaq_lane_f32(v56, v52, *v137.f32, 1), v54, v136, 2));
                            v64 = vsubq_f32(vdivq_f32(v63, vdupq_laneq_s32(v63, 3)), v134);
                            v65 = vmulq_f32(v64, v64);
                            *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
                            *v65.f32 = vrsqrte_f32(v66);
                            *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
                            v67 = vmulq_n_f32(v64, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
                            v68 = vaddq_f32(v55, vmlaq_laneq_f32(vmlaq_lane_f32(v56, v52, *v136.f32, 1), v54, v136, 2));
                            v69 = vsubq_f32(vdivq_f32(v68, vdupq_laneq_s32(v68, 3)), v134);
                            v70 = vmulq_f32(v69, v69);
                            *&v71 = v70.f32[2] + vaddv_f32(*v70.f32);
                            *v70.f32 = vrsqrte_f32(v71);
                            *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32)));
                            v72 = vmulq_f32(v67, vmulq_n_f32(v69, vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32))).f32[0]));
                            v126 = v54;
                            v127 = v55;
                            v124 = v53;
                            v125 = v52;
                            v128 = acosf(v72.f32[2] + vaddv_f32(*v72.f32));
                            v73 = vaddq_f32(v127, vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v124, v136.f32[0]), v130, v125), v126, v137, 2));
                            v74 = vsubq_f32(vdivq_f32(v73, vdupq_laneq_s32(v73, 3)), v134);
                            v75 = vmulq_f32(v74, v74);
                            *&v76 = v75.f32[2] + vaddv_f32(*v75.f32);
                            *v75.f32 = vrsqrte_f32(v76);
                            *v75.f32 = vmul_f32(*v75.f32, vrsqrts_f32(v76, vmul_f32(*v75.f32, *v75.f32)));
                            v77 = vmulq_n_f32(v74, vmul_f32(*v75.f32, vrsqrts_f32(v76, vmul_f32(*v75.f32, *v75.f32))).f32[0]);
                            v78 = vaddq_f32(v127, vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v124, v137.f32[0]), v130, v125), v126, v137, 2));
                            v79 = vsubq_f32(vdivq_f32(v78, vdupq_laneq_s32(v78, 3)), v134);
                            v80 = vmulq_f32(v79, v79);
                            *&v81 = v80.f32[2] + vaddv_f32(*v80.f32);
                            *v80.f32 = vrsqrte_f32(v81);
                            *v80.f32 = vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32)));
                            v82 = vmulq_f32(v77, vmulq_n_f32(v79, vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32))).f32[0]));
                            *(v123 + 880) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(acosf(v82.f32[2] + vaddv_f32(*v82.f32))), LODWORD(v128))), v122));
                            v129 = v25;
                            v15 = v60;
                          }
                        }
                      }
                    }
                  }
                }

                ++v22;
              }

              while (v22 != v23);
            }
          }
        }

        v18 += 8;
      }

      while (v18 != v135);
    }

    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v146);
  }

  while (v146.i64[0] != v121 || v146.u16[4] != 0xFFFF || v146.u16[5] != 0xFFFF);
  if (!v129)
  {
    return 0;
  }

  v146 = 0u;
  v140 = 0u;
  v141 = 0u;
  v139 = 0u;
  re::ExtractAngularSizePoints((v123 + 848), &v146, &v141, &v140, v139.f32);
  v85 = *(v123 + 784);
  v86 = *(v123 + 800);
  v87 = *(v123 + 816);
  v88 = *(v123 + 832);
  v89 = vaddq_f32(v88, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v146.f32[0]), v86, *v146.f32, 1), v87, v146, 2));
  v90 = v89.i64[1];
  v91 = vaddq_f32(v88, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v141.f32[0]), v86, *v141.f32, 1), v87, v141, 2));
  v138 = v91.i64[1];
  v92 = v89.i64[0];
  v93 = v91.i64[0];
  v94 = vaddq_f32(v88, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v140.f32[0]), v86, *v140.f32, 1), v87, v140, 2));
  v95 = v94.i64[1];
  v96 = v94.i64[0];
  v97 = vaddq_f32(v88, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v139.f32[0]), v86, *v139.f32, 1), v87, v139, 2));
  v98 = v97.i64[1];
  v99 = v97.i64[0];
  re::AABB::transform(v123 + 848, (v123 + 784), &v142);
  v100 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  re::CFDictionarySetFloat(Mutable, @"horizontalAngle", v102, *(v123 + 884));
  re::CFDictionarySetFloat(Mutable, @"verticalAngle", v103, *(v123 + 880));
  re::CFDictionarySetFloat3(Mutable, @"worldTopCenter", v92, v90);
  re::CFDictionarySetFloat3(Mutable, @"worldBottomCenter", v93, v138);
  re::CFDictionarySetFloat3(Mutable, @"worldLeftCenter", v96, v95);
  re::CFDictionarySetFloat3(Mutable, @"worldRightCenter", v99, v98);
  re::CFDictionarySetFloat3(Mutable, @"origin", v118, a3);
  re::CFDictionarySetFloat3(Mutable, @"direction", v119, v120);
  *v104.i32 = v143.f32[1] - v142.f32[1];
  v105 = vdupq_lane_s32(v104, 0);
  re::CFDictionarySetFloat3(Mutable, @"worldHeight", v105.i64[0], v105.i64[1]);
  v106 = vcgtq_f32(v142, v143);
  v106.i32[3] = v106.i32[2];
  v107 = vmaxvq_u32(v106);
  v108.i64[0] = 0x3F0000003F000000;
  v108.i64[1] = 0x3F0000003F000000;
  v109 = vmulq_f32(vaddq_f32(v142, v143), v108);
  if (v107 >= 0)
  {
    v110 = v109.i64[0];
  }

  else
  {
    v110 = 0;
  }

  if (v107 >= 0)
  {
    v111 = v109.i64[1];
  }

  else
  {
    v111 = 0;
  }

  re::CFDictionarySetFloat3(Mutable, @"worldCenter", v110, v111);
  v112.i64[0] = v110;
  v112.i64[1] = v111;
  v113 = vsubq_f32(v112, v134);
  v114 = vmulq_f32(v113, v113);
  v114.f32[0] = sqrtf(v114.f32[2] + vaddv_f32(*v114.f32));
  v115 = vdupq_lane_s32(*v114.f32, 0);
  re::CFDictionarySetFloat3(Mutable, @"distance", v115.i64[0], v115.i64[1]);
  v116 = CFStringCreateWithCString(v100, *(v129 + 296), 0x8000100u);
  CFDictionarySetValue(Mutable, @"name", v116);
  CFRelease(v116);
  return Mutable;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MeshAsset>(re::MeshAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::MeshAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

__n128 re::MeshAsset::boundingBoxForModel@<Q0>(uint64_t *__return_ptr a1@<X8>, re::MeshAsset *this@<X0>, unint64_t a3@<X1>)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = 32;
  if (*(this + 1264))
  {
    v5 = 608;
  }

  if (*(this + v5) <= a3)
  {
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) ", "modelIndex < modelCount()", "boundingBoxForModel", 225);
    _os_crash("assertion failure: (modelIndex < modelCount()) ");
    __break(1u);
    goto LABEL_13;
  }

  v3 = a3;
  if (!*(this + 1264))
  {
    v4 = *(this + 4);
    if (v4 > a3)
    {
      v9 = *(this + 6) + (a3 << 9);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v6 = *(this + 79);
  if (!v6)
  {
LABEL_13:
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) ", "meshManager != nullptr", "boundingBoxForModel", 228);
    _os_crash("assertion failure: (meshManager != nullptr) ");
    __break(1u);
LABEL_14:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(this + 76);
  if (v4 <= a3)
  {
LABEL_18:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v8 = MEMORY[0x1E69E9C10];
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

    v25 = 797;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v15, &v21, &v30, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
LABEL_22:
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

    v25 = 797;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(this + 78) + 8 * a3);
  v8 = WORD1(v7);
  v4 = *(v6 + 24);
  if (v4 <= WORD1(v7))
  {
    goto LABEL_22;
  }

  v9 = *(*(v6 + 40) + 16 * WORD1(v7)) + 864 * v7;
LABEL_11:
  result = *(v9 + 16);
  v11 = *(v9 + 32);
  *a1 = result;
  *(a1 + 1) = v11;
  return result;
}

void re::CFDictionarySetFloat(re *this, __CFDictionary *a2, const __CFString *a3, float a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(this, a2, v6);
  CFRelease(v6);
}

void re::CFDictionarySetFloat3(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = 3;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9C0]);
  v9 = v11;
  do
  {
    v10 = CFNumberCreate(v6, kCFNumberFloatType, v9);
    CFArrayAppendValue(Mutable, v10);
    CFRelease(v10);
    v9 = (v9 + 4);
    --v7;
  }

  while (v7);
  CFDictionarySetValue(a1, a2, Mutable);
  CFRelease(Mutable);
}

uint64_t re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::FrameAnalysisManager::RenderState>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 40 * HIDWORD(v9) + 16;
  }
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB54C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB54C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB5518;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB5518;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB5570;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB5570;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB55C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB55C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB5620;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::FrameAnalysisManager,REEventHandlerResult (re::FrameAnalysisManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB5620;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(uint64_t a1))(void)
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

double re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          objc_destroyWeak((v6 + v4 + 16));
          *(v8 + 16) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 40;
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

_anonymous_namespace_ *re::BucketArray<RESubscriptionHandle,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 128, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::ensureCapacity(a1);
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

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 2;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 2)
    {
      return result;
    }

    v5 = 4;
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

  return re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(result, a2);
}

uint64_t re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<RESubscriptionHandle,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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
  return v5 + 16 * (v2 & 7);
}

unint64_t re::BucketArray<RESubscriptionHandle,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 16 * (a2 & 7);
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

  return *(v5 + 8 * v2) + 16 * (a2 & 7);
}

uint64_t re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<RESubscriptionHandle,8ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

unint64_t re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 24) != v2 && *(a1 + 28) <= v2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v13, v4, v2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (v2)
    {
      v12 = v2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_165, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 80 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24), *(v13 + 72));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<RESubscriptionHandle,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

uint64_t re::BucketArray<RESubscriptionHandle,8ul>::swap(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v6, a1);
  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(a2, v6);
  result = v6[0];
  if (v6[0] && (v7 & 1) == 0)
  {
    result = (*(*v6[0] + 40))();
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<REComponentDidChangeEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB5758;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB57B0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentDidChangeEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentDidChangeEvent>(void)const::s_id = re::EventBus::typeStringToId(("25REComponentDidChangeEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[18];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB5758;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB5758;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB5758;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB5758;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB57B0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB57B0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB57B0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidChangeEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB57B0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(a1);
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

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentWillDeactivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB5688;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB56E0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentWillDeactivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentWillDeactivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("30REComponentWillDeactivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[11];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB5688;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB5688;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB5688;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB5688;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB56E0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB56E0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB56E0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB56E0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(a1);
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

uint64_t re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 40 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::FrameAnalysisManager::RenderState>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  objc_moveWeak((v7 + 16), a4);
  *(v9 + 8) = *(a4 + 8);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 16) % *(a1 + 6), *(v17 + 16));
                v19 = *(v17 - 8);
                *(v18 + 16) = 0;
                v20 = v18 + 16;
                *(v18 + 8) = v19;
                objc_moveWeak((v18 + 16), v17);
                *(v20 + 8) = *(v17 + 8);
              }

              v17 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v21 = a1[2];
    v22 = *(v21 + 40 * v5);
  }

  else
  {
    v21 = a1[2];
    v22 = *(v21 + 40 * v5);
    *(a1 + 9) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 40 * v5;
  *v24 = v22 | 0x80000000;
  v25 = a1[1];
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 32) = a3;
  ++*(a1 + 7);
  return v21 + 40 * v5;
}

void re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_165, 4 * v10);
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

uint64_t re::internal::engineExecutePhase(re::Engine *a1, uint64_t a2)
{
  if (*(a1 + 332) >= 1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid nested engine tick", "!engine->isInsideTick()", "engineExecutePhase", 234, v2, v3);
    result = _os_crash("assertion failure: (!engine->isInsideTick()) Invalid nested engine tick");
    __break(1u);
  }

  else
  {

    return re::Engine::executePhase(a1, a2);
  }

  return result;
}

uint64_t re::Engine::executePhase(re::Engine *this, unsigned int a2)
{
  if (a2 == 5 && (*(this + 674) & 1) != 0)
  {
    v4 = *(this + 125);
    if (v4)
    {
      result = (*(*v4 + 64))(v4);
      v6 = *(this + 125);
      if ((result & 1) == 0)
      {
        *(v6 + 185) = 1;
        return result;
      }

      *(v6 + 185) = 0;
    }
  }

  ++*(this + 332);
  v7 = *(this + 88);
  if (v7)
  {
    *(v7 + 392) = *(v7 + 384);
  }

  if (*(this + 728) >= a2)
  {
    re::Engine::checkForDefaultConfigureSystemChanges(this);
    v8 = *(this + 90);
    v9 = 0.0;
    if (a2 == 1)
    {
      v9 = (*(**(this + 124) + 56))(*(this + 124), 0.0);
    }

    v11 = 0;
    v12 = 0;
    v13 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::Scheduler::beginPhaseExecution(v8, &v11, v9, 0.00277777785);
    if (v11)
    {
      v10 = v13;
      if ((v13 & 1) == 0)
      {
        (*(*v11 + 40))();
        v10 = v13;
      }

      v11 = 0;
      v12 = 0;
      v13 = (v10 | 1) + 2;
    }
  }

  result = re::Scheduler::executePhase(*(this + 90), *(this + a2 + 4));
  *(this + 728) = a2;
  if (a2 == 5 && (*(this + 417) & 1) != 0 && *(this + 416))
  {
    *(this + 416) = 0;
    result = *(this + 90);
    if (result)
    {
      result = re::Scheduler::setEnabled(result, this + 344, 0);
    }
  }

  --*(this + 332);
  return result;
}

uint64_t re::internal::engineEnterFrameWithTimeDelta(re::internal *this, re::Engine *a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 332) >= 1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid nested engine tick", "!engine->isInsideTick()", "engineEnterFrameWithTimeDelta", 240);
    _os_crash("assertion failure: (!engine->isInsideTick()) Invalid nested engine tick");
    __break(1u);
  }

  v5 = (*(**(this + 124) + 120))(*(this + 124), a2);
  *&v9 = this;
  *(&v9 + 1) = re::Engine::timeDidChange;
  v10 = 0;
  v11 = re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::createSubscription<re::Engine>(re::Engine *,REEventHandlerResult (re::Engine::*)(re::SimulationTimer*,re::SimulationTimerEventArgs const&))::{lambda(re::SimulationTimer*,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription const&,re::SimulationTimerEventArgs const&)#1}::__invoke;
  re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::removeSubscription(v5, &v9);
  re::ManualClock::update(*(this + 123), a3, v6);
  v7 = (*(**(this + 124) + 120))(*(this + 124));
  *&v9 = this;
  *(&v9 + 1) = re::Engine::timeDidChange;
  v10 = 0;
  v11 = re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::createSubscription<re::Engine>(re::Engine *,REEventHandlerResult (re::Engine::*)(re::SimulationTimer*,re::SimulationTimerEventArgs const&))::{lambda(re::SimulationTimer*,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription const&,re::SimulationTimerEventArgs const&)#1}::__invoke;
  re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::addSubscription(v7, &v9);

  return re::Engine::executePhase(this, 1u);
}

re::Engine *re::Engine::Engine(re::Engine *this)
{
  v2 = re::globalAllocators(this)[2];
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 2) = v2;
  *this = &unk_1F5CB5808;
  *(this + 24) = 0;
  *(this + 164) = 259;
  *(this + 83) = 1023969417;
  *(this + 336) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 90) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 51) = 0;
  *(this + 208) = 1;
  re::EngineConfiguration::EngineConfiguration((this + 424));
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 680) = 0u;
  *(this + 728) = 8;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 244) = 0;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 984) = 0u;
  *(this + 314) = -1;
  *(this + 1260) = 0u;
  *(this + 1276) = 0u;
  *(this + 1292) = 0;
  *(this + 164) = 0xBFF0000000000000;
  *(this + 165) = 0;
  *(this + 332) = 0;
  *(this + 167) = 0;
  *(this + 169) = 0;
  *(this + 168) = 0;
  *(this + 340) = 0;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 350) = 0;
  *(this + 178) = 0;
  *(this + 180) = 0;
  *(this + 179) = 0;
  *(this + 362) = 0;
  *(this + 187) = 0;
  *(this + 376) = 0;
  *(this + 91) = 0u;
  *(this + 92) = 0u;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 772) = 256;
  *(this + 372) = 0;
  if (atomic_fetch_add_explicit(re::Engine::s_instanceCount, 1u, memory_order_relaxed) >= 8)
  {
    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Exceeded max Engine count (%d)", "oldCount < kMaxInstanceCount", "Engine", 261, 8);
    result = _os_crash("assertion failure: (oldCount < kMaxInstanceCount) Exceeded max Engine count (%d)", v6);
    __break(1u);
  }

  else
  {
    *(this + 40) = -1;
    *&v4 = -1;
    *(&v4 + 1) = -1;
    *(this + 18) = v4;
    *(this + 19) = v4;
    *(this + 16) = v4;
    *(this + 17) = v4;
    *(this + 14) = v4;
    *(this + 15) = v4;
    *(this + 12) = v4;
    *(this + 13) = v4;
    *(this + 10) = v4;
    *(this + 11) = v4;
    *(this + 8) = v4;
    *(this + 9) = v4;
    *(this + 6) = v4;
    *(this + 7) = v4;
    *(this + 4) = v4;
    *(this + 5) = v4;
    *(this + 2) = v4;
    *(this + 3) = v4;
    return this;
  }

  return result;
}

void re::Engine::~Engine(id *this)
{
  *this = &unk_1F5CB5808;
  re::Engine::deinit(this);
  if (atomic_fetch_add_explicit(re::Engine::s_instanceCount, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Engine count is 0", "oldCount > 0", "~Engine", 271);
    _os_crash("assertion failure: (oldCount > 0) Engine count is 0");
    __break(1u);
  }

  else
  {

    v3 = this[189];
    if (v3)
    {

      this[189] = 0;
    }

    re::Event<re::Engine>::~Event((this + 178));
    re::Event<re::Engine>::~Event((this + 167));
    v4 = this[160];
    if (v4)
    {

      this[160] = 0;
    }

    v5 = this[159];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = this[125];
    if (v6)
    {

      this[125] = 0;
    }

    v7 = this[119];
    if (v7)
    {

      this[119] = 0;
    }

    v8 = this[112];
    if (v8)
    {

      this[112] = 0;
    }

    v9 = this[88];
    if (v9)
    {

      this[88] = 0;
    }

    re::FunctionBase<24ul,void ()(void)>::destroyCallable((this + 62));
    re::DynamicString::deinit((this + 56));

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 43));
    *this = &unk_1F5CCF868;
    objc_destructInstance(this + 1);
  }
}

{
  re::Engine::~Engine(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Engine::deinit(uint64_t this)
{
  v267 = *MEMORY[0x1E69E9840];
  if (*(this + 24) == 1)
  {
    v1 = this;
    v2 = *(this + 880);
    if (v2)
    {
      v3 = *(v2 + 112);
      if (v3)
      {
        re::DrawingManager::prepareForDeinit(v3);
      }
    }

    dispatch_block_cancel(*(v1 + 1536));
    (*(**(v1 + 984) + 72))(*(v1 + 984));
    (*(**(v1 + 992) + 136))(*(v1 + 992));
    v4 = (*(**(v1 + 992) + 120))(*(v1 + 992));
    *&v264 = v1;
    *(&v264 + 1) = re::Engine::timeDidChange;
    v265 = 0;
    v266 = re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::createSubscription<re::Engine>(re::Engine *,REEventHandlerResult (re::Engine::*)(re::SimulationTimer*,re::SimulationTimerEventArgs const&))::{lambda(re::SimulationTimer*,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription const&,re::SimulationTimerEventArgs const&)#1}::__invoke;
    re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::removeSubscription(v4, &v264);
    (*(*v1 + 40))(v1);
    if (*(v1 + 1336))
    {
      re::DynamicArray<unsigned long>::deinit(v1 + 1336);
    }

    if (*(v1 + 1424))
    {
      re::DynamicArray<unsigned long>::deinit(v1 + 1424);
    }

    v7 = *(v1 + 784);
    if (v7)
    {
      v6.n128_f64[0] = re::AssetHelper::deinitDefaultAssetTypes(v7, v5);
    }

    v8 = *(v1 + 1008);
    if (v8 && *(v8 + 204) == 1 && (*(v8 + 17) & 1) == 0)
    {
      re::FrameProfiler::setOverlayEnabled(v8, 0);
      v9 = *(v1 + 704);
      if (v9)
      {
        v10 = *(v1 + 1256);
        v11 = re::DataArray<re::ecs2::SceneGroup>::get(v9 + 160, *(v9 + 384));
        re::ecs2::SceneGroup::removeSystem(v11, (v9 + 48), v10);
      }

      *(v1 + 1256) = 0xFFFFFFFFLL;
    }

    v12 = *(v1 + 704);
    if (v12)
    {

      *(v1 + 704) = 0;
    }

    v13 = *(v1 + 952);
    if (v13)
    {

      *(v1 + 952) = 0;
    }

    v14 = *(v1 + 1000);
    if (v14)
    {

      *(v1 + 1000) = 0;
    }

    v15 = *(v1 + 808);
    if (v15)
    {
      v16 = re::globalAllocators(v8)[2];
      re::DrawableQueueManager::~DrawableQueueManager(v15);
      v8 = (*(*v16 + 40))(v16, v15);
    }

    *(v1 + 808) = 0;
    v17 = *(v1 + 864);
    if (v17)
    {
      v18 = re::globalAllocators(v8)[2];
      re::ResourceSharingManager::~ResourceSharingManager(v17);
      (*(*v18 + 40))(v18, v17);
    }

    *(v1 + 864) = 0;
    v19 = *(v1 + 792);
    if (v19)
    {
      (*(*v19 + 16))(v19, v6);
    }

    v20 = *(v1 + 784);
    if (v20)
    {
      re::AssetManager::deinit(v20);
      v21 = *(v1 + 784);
      if (v21)
      {
        v22 = re::globalAllocators(v20)[2];
        re::AssetManager::~AssetManager(v21);
        v20 = (*(*v22 + 40))(v22, v21);
      }

      *(v1 + 784) = 0;
    }

    v23 = *(v1 + 800);
    if (v23)
    {
      v24 = re::globalAllocators(v20);
      v20 = (*(*v24[2] + 40))(v24[2], v23);
      *(v1 + 800) = 0;
    }

    v25 = *(v1 + 848);
    if (v25)
    {
      v6 = 0uLL;
      *(v25 + 24) = 0u;
      *(v25 + 8) = 0u;
      v26 = *(v1 + 848);
      if (v26)
      {
        v27 = re::globalAllocators(v20)[2];
        (*(*v26 + 16))(v26);
        (*(*v27 + 40))(v27, v26);
      }

      *(v1 + 848) = 0;
    }

    v28 = *(v1 + 856);
    if (v28)
    {
      re::NetworkAssetManager::deinit(v28);
      v29 = *(v1 + 856);
      if (v29)
      {
        v30 = re::globalAllocators(v28)[2];
        *v29 = &unk_1F5CB7F98;
        re::StringID::destroyString((v29 + 25));
        v31 = v29[23];
        if (v31)
        {

          v29[23] = 0;
        }

        re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29 + 16);
        re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29 + 10);
        v32.n128_f64[0] = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29 + 4);
        v33 = v29[3];
        if (v33)
        {

          v29[3] = 0;
        }

        v28 = (*(*v30 + 40))(v30, v29, v32);
      }

      *(v1 + 856) = 0;
    }

    v34 = *(v1 + 792);
    if (v34)
    {
      v35 = re::globalAllocators(v28)[2];
      *v34 = &unk_1F5CB8F30;
      v36 = re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v34 + 17);
      (*(*v35 + 40))(v35, v34, v36);
      *(v1 + 792) = 0;
    }

    if (*(v1 + 832))
    {
      v37 = *(v1 + 688);
      re::StringID::invalid(&v262);
      {
        re::introspect<re::DirectResourceAssetTracker>(BOOL)::info = re::introspect_DirectResourceAssetTracker(0, v202, v203, v204, v205, v206);
      }

      v38 = re::introspect<re::DirectResourceAssetTracker>(BOOL)::info;
      re::StringID::StringID(&v263, &v262);
      *&v264 = v38;
      v39 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v40 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v37 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v262.var0)
      {
        if (*&v262.var0)
        {
        }
      }

      *&v262.var0 = 0;
      v262.var1 = &str_67;
      v41 = *(v1 + 832);
      if (v41)
      {
        v42 = re::globalAllocators(v40)[2];
        re::DirectResourceAssetTracker::~DirectResourceAssetTracker(v41);
        (*(*v42 + 40))(v42, v41);
      }

      *(v1 + 832) = 0;
    }

    if (*(v1 + 824))
    {
      v43 = *(v1 + 688);
      re::StringID::invalid(&v261);
      {
        re::introspect<re::DRContextService>(BOOL)::info = re::introspect_DRContextService(0, v207, v208, v209, v210, v211);
      }

      v44 = re::introspect<re::DRContextService>(BOOL)::info;
      re::StringID::StringID(&v263, &v261);
      *&v264 = v44;
      v45 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v46 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v43 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v261.var0)
      {
        if (*&v261.var0)
        {
        }
      }

      *&v261.var0 = 0;
      v261.var1 = &str_67;
      v47 = *(v1 + 824);
      *(v1 + 824) = 0;
    }

    v48 = *(v1 + 1264);
    if (v48)
    {
      (*(*v48 + 128))(v48, v6);
    }

    v49 = *(v1 + 1272);
    *(v1 + 1264) = 0u;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    }

    v50 = *(v1 + 872);
    if (v50)
    {
      v51 = re::globalAllocators(v49)[2];
      re::ResourceFetchManager::~ResourceFetchManager(v50);
      (*(*v51 + 40))(v51, v50);
    }

    *(v1 + 872) = 0;
    if (*(v1 + 1160))
    {
      v52 = *(v1 + 688);
      re::StringID::invalid(&v260);
      {
        re::introspect<re::ecs2::CARESortingService>(BOOL)::info = re::ecs2::introspect_CARESortingService(0, v212, v213, v214, v215, v216);
      }

      v53 = re::introspect<re::ecs2::CARESortingService>(BOOL)::info;
      re::StringID::StringID(&v263, &v260);
      *&v264 = v53;
      v54 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v55 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v52 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v260.var0)
      {
        if (*&v260.var0)
        {
        }
      }

      *&v260.var0 = 0;
      v260.var1 = &str_67;
      v56 = *(v1 + 1160);
      if (v56)
      {
        v57 = re::globalAllocators(v55)[2];
        (**v56)(v56);
        (*(*v57 + 40))(v57, v56);
      }

      *(v1 + 1160) = 0;
    }

    if (*(v1 + 1168))
    {
      v58 = *(v1 + 688);
      re::StringID::invalid(&v259);
      {
        re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info = re::ecs2::introspect_RemoteEffectsService(0, v217, v218, v219, v220, v221);
      }

      v59 = re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info;
      re::StringID::StringID(&v263, &v259);
      *&v264 = v59;
      v60 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v61 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v58 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v259.var0)
      {
        if (*&v259.var0)
        {
        }
      }

      *&v259.var0 = 0;
      v259.var1 = &str_67;
      v62 = *(v1 + 1168);
      if (v62)
      {
        v63 = re::globalAllocators(v61)[2];
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62 + 65);
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62 + 59);
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62 + 53);
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v62 + 47);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v62 + 41);
        re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v62 + 35);
        re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v62 + 29);
        re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v62 + 23);
        std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table((v62 + 18));
        re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v62 + 12);
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v62 + 6);
        v64 = re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v62);
        (*(*v63 + 40))(v63, v62, v64);
      }

      *(v1 + 1168) = 0;
    }

    v65 = *(v1 + 1016);
    if (v65)
    {
      v65 = (*(*v65 + 24))(v65);
      v66 = *(v1 + 1016);
      if (v66)
      {
        v67 = re::globalAllocators(v65)[2];
        (**v66)(v66);
        v65 = (*(*v67 + 40))(v67, v66);
      }

      *(v1 + 1016) = 0;
    }

    v68 = *(v1 + 1280);
    if (v68)
    {

      *(v1 + 1280) = 0;
    }

    v69 = *(v1 + 1288);
    if (v69)
    {
      v70 = re::globalAllocators(v65)[2];
      re::SharedClockManager::~SharedClockManager(v69);
      v65 = (*(*v70 + 40))(v70, v69);
      *(v1 + 1288) = 0;
    }

    v71 = *(v1 + 1032);
    if (v71)
    {
      v72 = re::globalAllocators(v65)[2];
      (**v71)(v71);
      v65 = (*(*v72 + 40))(v72, v71);
    }

    *(v1 + 1032) = 0;
    if (*(v1 + 904))
    {
      v73 = *(v1 + 688);
      re::StringID::invalid(&v258);
      {
        re::introspect<re::NetworkSystem>(BOOL)::info = re::introspect_NetworkSystem(0, v222, v223, v224, v225, v226);
      }

      v74 = re::introspect<re::NetworkSystem>(BOOL)::info;
      re::StringID::StringID(&v263, &v258);
      *&v264 = v74;
      v75 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v73 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v258.var0)
      {
        if (*&v258.var0)
        {
        }
      }

      *&v258.var0 = 0;
      v258.var1 = &str_67;
      v76 = *(v1 + 904);
      if (v76)
      {
        v77 = re::globalAllocators(v65)[2];
        re::NetworkSystem::~NetworkSystem(v76);
        v65 = (*(*v77 + 40))(v77, v76);
      }

      *(v1 + 904) = 0;
    }

    if (*(v1 + 912))
    {
      v78 = *(v1 + 688);
      re::StringID::invalid(&v257);
      {
        re::introspect<re::VideoService>(BOOL)::info = re::introspect_VideoService(0, v227, v228, v229, v230, v231);
      }

      v79 = re::introspect<re::VideoService>(BOOL)::info;
      re::StringID::StringID(&v263, &v257);
      *&v264 = v79;
      v80 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v78 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v257.var0)
      {
        if (*&v257.var0)
        {
        }
      }

      *&v257.var0 = 0;
      v257.var1 = &str_67;
      v81 = *(v1 + 912);
      if (v81)
      {
        v82 = re::globalAllocators(v65)[2];
        re::VideoManager::~VideoManager(v81);
        v65 = (*(*v82 + 40))(v82, v81);
      }

      *(v1 + 912) = 0;
    }

    if (*(v1 + 920))
    {
      v83 = *(v1 + 688);
      re::StringID::invalid(&v256);
      {
        re::introspect<re::ImagePresentationService>(BOOL)::info = re::introspect_ImagePresentationService(0, v232, v233, v234, v235, v236);
      }

      v84 = re::introspect<re::ImagePresentationService>(BOOL)::info;
      re::StringID::StringID(&v263, &v256);
      *&v264 = v84;
      v85 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v83 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v256.var0)
      {
        if (*&v256.var0)
        {
        }
      }

      *&v256.var0 = 0;
      v256.var1 = &str_67;
      v86 = *(v1 + 920);
      if (v86)
      {
        v87 = re::globalAllocators(v65)[2];
        re::ImagePresentationManager::~ImagePresentationManager(v86);
        v65 = (*(*v87 + 40))(v87, v86);
      }

      *(v1 + 920) = 0;
    }

    if (*(v1 + 928))
    {
      v88 = *(v1 + 688);
      re::StringID::invalid(&v255);
      {
        re::introspect<re::SpatialMediaService>(BOOL)::info = re::introspect_SpatialMediaService(0, v237, v238, v239, v240, v241);
      }

      v89 = re::introspect<re::SpatialMediaService>(BOOL)::info;
      re::StringID::StringID(&v263, &v255);
      *&v264 = v89;
      v90 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v88 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v255.var0)
      {
        if (*&v255.var0)
        {
        }
      }

      *&v255.var0 = 0;
      v255.var1 = &str_67;
      v91 = *(v1 + 928);
      if (v91)
      {
        v92 = re::globalAllocators(v65)[2];
        re::SpatialMediaManager::~SpatialMediaManager(v91);
        v65 = (*(*v92 + 40))(v92, v91);
      }

      *(v1 + 928) = 0;
    }

    if (*(v1 + 936))
    {
      v93 = *(v1 + 688);
      re::StringID::invalid(&v254);
      {
        re::introspect<re::MXIService>(BOOL)::info = re::introspect_MXIService(0, v242, v243, v244, v245, v246);
      }

      v94 = re::introspect<re::MXIService>(BOOL)::info;
      re::StringID::StringID(&v263, &v254);
      *&v264 = v94;
      v95 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v93 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v254.var0)
      {
        if (*&v254.var0)
        {
        }
      }

      *&v254.var0 = 0;
      v254.var1 = &str_67;
      v96 = *(v1 + 936);
      if (v96)
      {
        v97 = re::globalAllocators(v65)[2];
        re::MXIManager::~MXIManager(v96);
        v65 = (*(*v97 + 40))(v97, v96);
      }

      *(v1 + 936) = 0;
    }

    if (*(v1 + 944))
    {
      v98 = *(v1 + 688);
      re::StringID::invalid(&v253);
      {
        re::introspect<re::MaterialParametersService>(BOOL)::info = re::introspect_MaterialParametersService(0, v247, v248, v249, v250, v251);
      }

      v99 = re::introspect<re::MaterialParametersService>(BOOL)::info;
      re::StringID::StringID(&v263, &v253);
      *&v264 = v99;
      v100 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v98 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v253.var0)
      {
        if (*&v253.var0)
        {
        }
      }

      *&v253.var0 = 0;
      v253.var1 = &str_67;
      v101 = *(v1 + 944);
      if (v101)
      {
        v102 = re::globalAllocators(v65)[2];
        re::MaterialParametersManager::~MaterialParametersManager(v101);
        v65 = (*(*v102 + 40))(v102, v101);
      }

      *(v1 + 944) = 0;
    }

    v103 = *(v1 + 992);
    if (v103)
    {
      v104 = re::globalAllocators(v65)[2];
      (**v103)(v103);
      v65 = (*(*v104 + 40))(v104, v103);
    }

    *(v1 + 992) = 0;
    v105 = *(v1 + 1512);
    if (v105)
    {

      *(v1 + 1512) = 0;
    }

    v106 = *(v1 + 984);
    if (v106)
    {
      v107 = re::globalAllocators(v65)[2];
      (**v106)(v106);
      (*(*v107 + 40))(v107, v106);
      *(v1 + 984) = 0;
      v108 = *(v1 + 688);
      re::StringID::invalid(&v252);
      {
        re::introspect<re::SimulationClock>(BOOL)::info = re::introspect_SimulationClock(0);
      }

      v109 = re::introspect<re::SimulationClock>(BOOL)::info;
      re::StringID::StringID(&v263, &v252);
      *&v264 = v109;
      v110 = re::StringID::StringID((&v264 + 8), &v263);
      if (*&v263.var0)
      {
        if (*&v263.var0)
        {
        }
      }

      *&v263.var0 = 0;
      v263.var1 = &str_67;
      v65 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v108 + 16, &v264);
      if (BYTE8(v264))
      {
        if (BYTE8(v264))
        {
        }
      }

      if (*&v252.var0)
      {
        if (*&v252.var0)
        {
        }
      }

      *&v252.var0 = 0;
      v252.var1 = &str_67;
    }

    v111 = *(v1 + 968);
    if (v111)
    {
      v112 = re::globalAllocators(v65)[2];
      re::InputManager::unsubscribe(v111, v113);
      v65 = (*(*v112 + 40))(v112, v111);
    }

    *(v1 + 968) = 0;
    v115 = *(v1 + 712);
    if (v115)
    {
      v116 = re::globalAllocators(v65)[2];
      re::BackgroundTaskManager::~BackgroundTaskManager(v115);
      v65 = (*(*v116 + 40))(v116, v115);
    }

    *(v1 + 712) = 0;
    v117 = *(v1 + 1216);
    if (v117)
    {
      v118 = re::globalAllocators(v65)[2];
      (**v117)(v117);
      v65 = (*(*v118 + 40))(v118, v117);
      *(v1 + 1216) = 0;
    }

    v119 = *(v1 + 1232);
    if (v119)
    {
      v120 = re::globalAllocators(v65)[2];
      (**v119)(v119);
      v65 = (*(*v120 + 40))(v120, v119);
      *(v1 + 1232) = 0;
    }

    v121 = *(v1 + 1224);
    if (v121)
    {
      v122 = re::globalAllocators(v65)[2];
      (**v121)(v121);
      v65 = (*(*v122 + 40))(v122, v121);
      *(v1 + 1224) = 0;
    }

    v123 = *(v1 + 1040);
    if (v123)
    {
      v124 = re::globalAllocators(v65)[2];
      (**v123)(v123);
      v65 = (*(*v124 + 40))(v124, v123);
      *(v1 + 1040) = 0;
    }

    v125 = *(v1 + 1064);
    if (v125)
    {
      v126 = re::globalAllocators(v65)[2];
      (**v125)(v125);
      v65 = (*(*v126 + 40))(v126, v125);
      *(v1 + 1064) = 0;
    }

    v127 = *(v1 + 1072);
    if (v127)
    {
      v128 = re::globalAllocators(v65)[2];
      (**v127)(v127);
      v65 = (*(*v128 + 40))(v128, v127);
      *(v1 + 1072) = 0;
    }

    v129 = *(v1 + 1080);
    if (v129)
    {
      v130 = re::globalAllocators(v65)[2];
      (**v129)(v129);
      v65 = (*(*v130 + 40))(v130, v129);
      *(v1 + 1080) = 0;
    }

    v131 = *(v1 + 1088);
    if (v131)
    {
      v132 = re::globalAllocators(v65)[2];
      (**v131)(v131);
      v65 = (*(*v132 + 40))(v132, v131);
      *(v1 + 1088) = 0;
    }

    v133 = *(v1 + 1192);
    if (v133)
    {
      v134 = re::globalAllocators(v65)[2];
      (**v133)(v133);
      v65 = (*(*v134 + 40))(v134, v133);
      *(v1 + 1192) = 0;
    }

    v135 = *(v1 + 1048);
    if (v135)
    {
      v136 = re::globalAllocators(v65)[2];
      (**v135)(v135);
      v65 = (*(*v136 + 40))(v136, v135);
      *(v1 + 1048) = 0;
    }

    v137 = *(v1 + 1104);
    if (v137)
    {
      v138 = re::globalAllocators(v65)[2];
      (**v137)(v137);
      v65 = (*(*v138 + 40))(v138, v137);
      *(v1 + 1104) = 0;
    }

    v139 = *(v1 + 1184);
    if (v139)
    {
      v140 = re::globalAllocators(v65)[2];
      (**v139)(v139);
      v65 = (*(*v140 + 40))(v140, v139);
      *(v1 + 1184) = 0;
    }

    v141 = *(v1 + 1112);
    if (v141)
    {
      v142 = re::globalAllocators(v65)[2];
      (**v141)(v141);
      v65 = (*(*v142 + 40))(v142, v141);
      *(v1 + 1112) = 0;
    }

    v143 = *(v1 + 1120);
    if (v143)
    {
      v144 = re::globalAllocators(v65)[2];
      (**v143)(v143);
      v65 = (*(*v144 + 40))(v144, v143);
      *(v1 + 1120) = 0;
    }

    v145 = *(v1 + 1096);
    if (v145)
    {
      v146 = re::globalAllocators(v65)[2];
      (**v145)(v145);
      v65 = (*(*v146 + 40))(v146, v145);
      *(v1 + 1096) = 0;
    }

    v147 = *(v1 + 1128);
    if (v147)
    {
      v148 = re::globalAllocators(v65)[2];
      (**v147)(v147);
      v65 = (*(*v148 + 40))(v148, v147);
      *(v1 + 1128) = 0;
    }

    v149 = *(v1 + 1136);
    if (v149)
    {
      v150 = re::globalAllocators(v65)[2];
      (**v149)(v149);
      v65 = (*(*v150 + 40))(v150, v149);
      *(v1 + 1136) = 0;
    }

    v151 = *(v1 + 1144);
    if (v151)
    {
      v152 = re::globalAllocators(v65)[2];
      (**v151)(v151);
      (*(*v152 + 40))(v152, v151);
      *(v1 + 1144) = 0;
    }

    v153 = *(v1 + 1200);
    if (v153)
    {
      v153 = re::ColorManager::deinit(v153);
      v154 = *(v1 + 1200);
      if (v154)
      {
        v155 = re::globalAllocators(v153);
        v153 = (*(*v155[2] + 40))(v155[2], v154);
      }

      *(v1 + 1200) = 0;
    }

    v156 = *(v1 + 1208);
    if (v156)
    {
      v157 = re::globalAllocators(v153)[2];

      re::DynamicArray<unsigned long>::deinit(v156 + 152);
      re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v156 + 104));
      re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v156 + 56));

      v153 = (*(*v157 + 40))(v157, v156);
      *(v1 + 1208) = 0;
    }

    v158 = *(v1 + 1056);
    if (v158)
    {
      v159 = re::globalAllocators(v153)[2];
      (**v158)(v158);
      v153 = (*(*v159 + 40))(v159, v158);
      *(v1 + 1056) = 0;
    }

    v160 = *(v1 + 1152);
    if (v160)
    {
      v161 = re::globalAllocators(v153)[2];
      (**v160)(v160);
      (*(*v161 + 40))(v161, v160);
      *(v1 + 1152) = 0;
    }

    v162 = *(v1 + 840);
    if (v162)
    {
      v163 = re::ImportGraphicsResources::deinit(v162);
      v164 = *(v1 + 840);
      if (v164)
      {
        v165 = re::globalAllocators(v163)[2];
        re::ImportGraphicsResources::~ImportGraphicsResources(v164);
        (*(*v165 + 40))(v165, v164);
      }

      *(v1 + 840) = 0;
    }

    v166 = *(v1 + 880);
    if (v166)
    {
      v166 = re::RenderManager::deinit(v166);
      v167 = *(v1 + 880);
      if (v167)
      {
        v168 = re::globalAllocators(v166)[2];
        re::RenderManager::~RenderManager(v167);
        v166 = (*(*v168 + 40))(v168, v167);
      }

      *(v1 + 880) = 0;
    }

    v169 = *(v1 + 888);
    if (v169)
    {
      v170 = re::globalAllocators(v166)[2];
      (**v169)(v169);
      v166 = (*(*v170 + 40))(v170, v169);
      *(v1 + 888) = 0;
    }

    v171 = *(v1 + 1024);
    if (v171)
    {
      v172 = re::globalAllocators(v166)[2];
      re::ProfilerManager::~ProfilerManager(v171);
      (*(*v172 + 40))(v172, v171);
    }

    *(v1 + 1024) = 0;
    *(v1 + 1008) = 0;
    re::FrameManager::deinit(*(v1 + 896));
    v174 = *(v1 + 896);
    if (v174)
    {

      *(v1 + 896) = 0;
    }

    v175 = *(v1 + 960);
    if (v175)
    {
      v176 = re::globalAllocators(v173)[2];
      re::ecs2::PhysicsSimulationManager::deinit(v175);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v175 + 85);
      re::ecs2::PhysicsSimulationTracking::~PhysicsSimulationTracking((v175 + 2));
      (*(*v176 + 40))(v176, v175);
    }

    *(v1 + 960) = 0;
    v177 = *(v1 + 768);
    if (v177)
    {
      re::AnimationManager::deinit(v177);
      v177 = re::internal::destroyPersistent<re::AnimationManager>("deinit", 1737, *(v1 + 768));
      *(v1 + 768) = 0;
    }

    v178 = *(v1 + 776);
    if (v178)
    {
      v179 = re::globalAllocators(v177)[2];
      (**v178)(v178);
      v177 = (*(*v179 + 40))(v179, v178);
      *(v1 + 776) = 0;
    }

    v180 = *(v1 + 816);
    if (v180)
    {
      v181 = re::globalAllocators(v177)[2];
      (**v180)(v180);
      v177 = (*(*v181 + 40))(v181, v180);
      *(v1 + 816) = 0;
    }

    v182 = *(v1 + 736);
    if (v182)
    {
      v183 = re::globalAllocators(v177)[2];
      (**v182)(v182);
      v177 = (*(*v183 + 40))(v183, v182);
      *(v1 + 736) = 0;
    }

    v184 = *(v1 + 744);
    if (v184)
    {
      v185 = re::globalAllocators(v177)[2];
      (**v184)(v184);
      v177 = (*(*v185 + 40))(v185, v184);
      *(v1 + 744) = 0;
    }

    v186 = *(v1 + 752);
    if (v186)
    {
      v187 = re::globalAllocators(v177)[2];
      (**v186)(v186);
      v177 = (*(*v187 + 40))(v187, v186);
      *(v1 + 752) = 0;
    }

    v188 = *(v1 + 760);
    if (v188)
    {
      v189 = re::globalAllocators(v177)[2];
      (**v188)(v188);
      v177 = (*(*v189 + 40))(v189, v188);
      *(v1 + 760) = 0;
    }

    v190 = *(v1 + 1176);
    if (v190)
    {
      v191 = re::globalAllocators(v177)[2];
      (**v190)(v190);
      v177 = (*(*v191 + 40))(v191, v190);
      *(v1 + 1176) = 0;
    }

    v192 = *(v1 + 1240);
    if (v192)
    {
      v193 = re::globalAllocators(v177)[2];
      (**v192)(v192);
      (*(*v193 + 40))(v193, v192);
      *(v1 + 1240) = 0;
    }

    *(v1 + 696) = 0;
    v194 = *(v1 + 1248);
    if (v194)
    {
      re::EntitlementManager::deinit(v194);
      v195 = *(v1 + 1248);
      if (v195)
      {
        v196 = re::globalAllocators(v194)[2];
        re::EntitlementManager::~EntitlementManager(v195);
        v194 = (*(*v196 + 40))(v196, v195);
      }

      *(v1 + 1248) = 0;
    }

    v197 = *(v1 + 688);
    if (v197)
    {
      v198 = re::globalAllocators(v194)[2];
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((v197 + 16));
      v199 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((v197 + 16));
      (*(*v198 + 40))(v198, v197, v199);
    }

    *(v1 + 688) = 0;
    v200 = re::internal::destroyPersistent<re::Scheduler>("deinit", 1795, *(v1 + 720));
    *(v1 + 720) = 0;
    *&v201 = -1;
    *(&v201 + 1) = -1;
    *(v1 + 32) = v201;
    *(v1 + 48) = v201;
    *(v1 + 64) = v201;
    *(v1 + 80) = v201;
    *(v1 + 96) = v201;
    *(v1 + 112) = v201;
    *(v1 + 128) = v201;
    *(v1 + 144) = v201;
    *(v1 + 160) = v201;
    *(v1 + 176) = v201;
    *(v1 + 192) = v201;
    *(v1 + 208) = v201;
    *(v1 + 224) = v201;
    *(v1 + 240) = v201;
    *(v1 + 256) = v201;
    *(v1 + 272) = v201;
    *(v1 + 288) = v201;
    *(v1 + 304) = v201;
    *(v1 + 320) = -1;
    *(v1 + 24) = 0;
    RESharedEngineContextRelease(v200);
    if (re::Engine::s_sharedEngine == v1)
    {
      re::Engine::s_sharedEngine = 0;
    }

    this = re::internal::enableSignposts(0, 0);
    if (this)
    {
      return kdebug_trace();
    }
  }

  return this;
}

void re::Engine::init(re::Engine *this, const re::EngineConfiguration *a2, BOOL a3)
{
  v142 = *MEMORY[0x1E69E9840];
  v5 = re::internal::enableSignposts(0, 0);
  if (v5)
  {
    v5 = kdebug_trace();
  }

  v6 = *(a2 + 15);
  v7 = *a2;
  *(this + 108) = *(a2 + 2);
  *(this + 53) = v7;
  re::ObjCObject::operator=(this + 55, a2 + 2);
  re::DynamicString::operator=((this + 448), (a2 + 24));
  *(this + 60) = *(a2 + 7);
  re::ObjCObject::operator=(this + 61, a2 + 8);
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(this + 496, a2 + 72);
  *(this + 536) = *(a2 + 7);
  v8 = *(a2 + 11);
  v10 = *(a2 + 8);
  v9 = *(a2 + 9);
  *(this + 584) = *(a2 + 10);
  *(this + 600) = v8;
  *(this + 552) = v10;
  *(this + 568) = v9;
  *(this + 616) = *(a2 + 12);
  v11 = re::ObjCObject::operator=(this + 79, a2 + 26);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(this + 670) = *(a2 + 246);
  *(this + 40) = v13;
  *(this + 41) = v14;
  *(this + 1545) = *a2 ^ 1;
  if ((*(this + 616) & 1) == 0)
  {
    *(this + 108) &= ~0x10u;
    re::Defaults::BOOLValue(&__str, "metalIndependentRenderServiceEnabled", v12);
    if (__str.__r_.__value_.__s.__data_[0] == 1 && (__str.__r_.__value_.__s.__data_[1] & 1) == 0)
    {
      *(this + 107) &= ~0x10u;
    }
  }

  *(this + 24) = 1;
  v15 = re::globalAllocators(v11);
  v16 = (*(*v15[2] + 32))(v15[2], 64, 8);
  *(v16 + 16) = 0u;
  *v16 = &unk_1F5D197B0;
  *(v16 + 8) = 0;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v16 + 52) = 0x7FFFFFFFLL;
  *(this + 86) = v16;
  re::StringID::invalid(&v140);
  {
    re::introspect<re::ServiceRegistry>(BOOL)::info = re::introspect_ServiceRegistry(0);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::ServiceRegistry>(BOOL)::info, &v140, v16);
  v17 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v16 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v18 = *(this + 86);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::Engine>(BOOL)::info = re::internal::getOrCreateInfo("Engine", re::allocInfo_Engine, re::initInfo_Engine, &unk_1EE191740, 0);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::Engine>(BOOL)::info, &v140, this);
  v19 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v18 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 312, 8);
  re::EntitlementManager::EntitlementManager(v21);
  *(this + 156) = v22;
  __str.__r_.__value_.__r.__words[0] = *(this + 86);
  re::EntitlementManager::init(v22, &__str);
  v23 = *(this + 86);
  v24 = *(this + 156);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::EntitlementService>(BOOL)::info = re::introspect_EntitlementService(0);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::EntitlementService>(BOOL)::info, &v140, v24);
  v25 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v23 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v26 = g_jobService;
  *(this + 87) = g_jobService;
  v27 = *(this + 86);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::JobService>(BOOL)::info = re::introspect_JobService(0);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::JobService>(BOOL)::info, &v140, v26);
  v28 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v27 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  re::make::shared::object<re::EventBus>(v28, &__str);
  v29 = *(this + 189);
  v30 = __str.__r_.__value_.__r.__words[0];
  *(this + 189) = __str.__r_.__value_.__r.__words[0];
  __str.__r_.__value_.__r.__words[0] = v29;
  if (v29)
  {

    v30 = *(this + 189);
  }

  v31 = *(this + 86);
  re::StringID::invalid(&__str);
  re::ServiceRegistry::add<re::EventBus>(v31, v30, &__str);
  if (__str.__r_.__value_.__s.__data_[0])
  {
    if (__str.__r_.__value_.__s.__data_[0])
    {
    }
  }

  v33 = re::globalAllocators(v32);
  v34 = (*(*v33[2] + 32))(v33[2], 864, 8);
  bzero(v34, 0x350uLL);
  *(v34 + 18) = 1;
  *(v34 + 5) = 0u;
  v34[15] = 0;
  *(v34 + 8) = 0u;
  *(v34 + 36) = 1;
  *(v34 + 19) = 0u;
  v34[24] = 0;
  *(v34 + 25) = 0u;
  *(v34 + 54) = 1;
  *(v34 + 14) = 0u;
  *(v34 + 33) = 0u;
  v34[35] = 0;
  *(v34 + 72) = 1;
  *(v34 + 37) = 0u;
  *(v34 + 21) = 0u;
  v34[44] = 0;
  *(v34 + 90) = 1;
  *(v34 + 23) = 0u;
  *(v34 + 182) = 0;
  *(v34 + 87) = 0u;
  *(v34 + 89) = 0u;
  *(v34 + 83) = 0u;
  *(v34 + 85) = 0u;
  *(v34 + 79) = 0u;
  *(v34 + 81) = 0u;
  *(v34 + 75) = 0u;
  *(v34 + 77) = 0u;
  *(v34 + 71) = 0u;
  *(v34 + 73) = 0u;
  *(v34 + 67) = 0u;
  *(v34 + 69) = 0u;
  *(v34 + 63) = 0u;
  *(v34 + 65) = 0u;
  *(v34 + 59) = 0u;
  *(v34 + 61) = 0u;
  *(v34 + 55) = 0u;
  *(v34 + 57) = 0u;
  *(v34 + 51) = 0u;
  *(v34 + 53) = 0u;
  v34[94] = 0x7F7FFFFF00000000;
  *(v34 + 46) = 0u;
  *(v34 + 95) = 0u;
  *(v34 + 97) = 0u;
  *(v34 + 99) = 0u;
  *(v34 + 101) = 0u;
  *(v34 + 103) = 0u;
  *(v34 + 837) = 0;
  v34[106] = -1;
  v34[107] = -1;
  *(this + 90) = v34;
  v37 = re::globalAllocators(v36);
  v38 = (*(*v37[2] + 32))(v37[2], 488, 8);
  v39 = re::NetworkOPACKSerializer::NetworkOPACKSerializer(v38);
  *(this + 92) = v39;
  v40 = *(this + 86);
  *(v39 + 57) = v40;
  re::StringID::invalid(&v140);
  {
    re::introspect<re::NetworkOPACKSerializer>(BOOL)::info = re::introspect_NetworkOPACKSerializer(0, v95, v96, v97, v98, v99);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::NetworkOPACKSerializer>(BOOL)::info, &v140, v38);
  v41 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v40 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 488, 8);
  v44 = re::NetworkOPACKDeserializer::NetworkOPACKDeserializer(v43);
  *(this + 93) = v44;
  v45 = *(this + 86);
  *(v44 + 57) = v45;
  re::StringID::invalid(&v140);
  {
    re::introspect<re::NetworkOPACKDeserializer>(BOOL)::info = re::introspect_NetworkOPACKDeserializer(0, v100, v101, v102, v103, v104);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::NetworkOPACKDeserializer>(BOOL)::info, &v140, v43);
  v46 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v45 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v47 = re::globalAllocators(v46);
  v48 = (*(*v47[2] + 32))(v47[2], 472, 8);
  v49 = re::NetworkCompatSerializer::NetworkCompatSerializer(v48);
  *(this + 94) = v49;
  v50 = *(this + 86);
  *(v49 + 55) = v50;
  re::StringID::invalid(&v140);
  {
    re::introspect<re::NetworkCompatSerializer>(BOOL)::info = re::introspect_NetworkCompatSerializer(0, v105, v106, v107, v108, v109);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::NetworkCompatSerializer>(BOOL)::info, &v140, v48);
  v51 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v50 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  v52 = re::globalAllocators(v51);
  v53 = (*(*v52[2] + 32))(v52[2], 472, 8);
  v54 = re::NetworkCompatDeserializer::NetworkCompatDeserializer(v53);
  *(this + 95) = v54;
  v55 = *(this + 86);
  *(v54 + 55) = v55;
  re::StringID::invalid(&v140);
  {
    re::introspect<re::NetworkCompatDeserializer>(BOOL)::info = re::introspect_NetworkCompatDeserializer(0, v110, v111, v112, v113, v114);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::NetworkCompatDeserializer>(BOOL)::info, &v140, v53);
  v56 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v55 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&__str);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&__str);
  if ((*(this + 214) & 0x104) != 0)
  {
    *(this + 161) = 0;
    v58 = re::globalAllocators(v57);
    v59 = (*(*v58[2] + 32))(v58[2], 352, 8);
    v60 = re::TimebaseManager::TimebaseManager(v59, *(this + 161));
    v61 = *(this + 160);
    *(this + 160) = v60;
    if (v61)
    {

      v59 = *(this + 160);
    }

    v62 = *(this + 86);
    re::StringID::invalid(&v140);
    {
      re::introspect<re::TimebaseService>(BOOL)::info = re::introspect_TimebaseService(0);
    }

    re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::TimebaseService>(BOOL)::info, &v140, v59);
    v57 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v62 + 16, &__str);
    if (__str.__r_.__value_.__s.__data_[8])
    {
      if (__str.__r_.__value_.__s.__data_[8])
      {
      }
    }

    if (*&v140.var0)
    {
      if (*&v140.var0)
      {
      }
    }
  }

  v63 = re::globalAllocators(v57);
  v64 = (*(*v63[2] + 32))(v63[2], 448, 8);
  *(this + 102) = re::TransformService::TransformService(v64);
  v65 = *(this + 86);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::TransformService>(BOOL)::info = re::introspect_TransformService(0, v115, v116, v117, v118, v119);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::TransformService>(BOOL)::info, &v140, v64);
  v66 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v65 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  if (*(this + 102))
  {
    operator new();
  }

  v67 = *(this + 107);
  if ((v67 & 4) != 0)
  {
    v68 = re::globalAllocators(v66);
    v69 = (*(*v68[2] + 32))(v68[2], 512, 8);
    re::AnimationManager::AnimationManager(v69);
    *(this + 96) = v70;
    re::AnimationManager::init(v70, *(*(this + 160) + 232), 0);
    v71 = *(this + 86);
    v72 = *(this + 96);
    re::StringID::invalid(&v140);
    {
      re::introspect<re::AnimationService>(BOOL)::info = re::introspect_AnimationService(0, v125, v126, v127, v128, v129);
    }

    re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::AnimationService>(BOOL)::info, &v140, v72);
    v66 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v71 + 16, &__str);
    if (__str.__r_.__value_.__s.__data_[8])
    {
      if (__str.__r_.__value_.__s.__data_[8])
      {
      }
    }

    if (*&v140.var0)
    {
      if (*&v140.var0)
      {
      }
    }

    v67 = *(this + 107);
  }

  if ((v67 & 2) != 0)
  {
    v73 = re::globalAllocators(v66);
    v74 = (*(*v73[2] + 32))(v73[2], 464, 8);
    *v74 = &unk_1F5CEBB78;
    *(v74 + 1) = &unk_1F5CEBB28;
    *(v74 + 2) = v74;
    *(v74 + 3) = 0;
    *(v74 + 4) = 0;
    *(v74 + 10) = 1;
    *(v74 + 3) = 0u;
    *(v74 + 4) = 0u;
    *(v74 + 5) = 0u;
    *(v74 + 92) = 0u;
    *(v74 + 108) = 0x7FFFFFFFLL;
    *(v74 + 16) = 0;
    *(v74 + 17) = 0;
    *(v74 + 15) = 0;
    *(v74 + 36) = 0;
    *(v74 + 152) = 0u;
    *(v74 + 168) = 0u;
    *(v74 + 180) = 0u;
    *(v74 + 196) = 0x7FFFFFFFLL;
    *(v74 + 26) = 0;
    *(v74 + 27) = 0;
    *(v74 + 56) = 1;
    *(v74 + 30) = 0;
    *(v74 + 31) = 0;
    *(v74 + 64) = 0;
    *(v74 + 29) = 0;
    *(v74 + 132) = 259;
    *(v74 + 67) = 1023969417;
    v74[272] = 0;
    *(v74 + 35) = 0;
    *(v74 + 36) = 0;
    *(v74 + 74) = 1;
    *(v74 + 38) = 0;
    *(v74 + 39) = 0;
    *(this + 97) = v74;
    v75 = *(this + 86);
    re::StringID::invalid(&v140);
    {
      re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info = re::ecs2::introspect_AnimationSceneService(0, v130, v131, v132, v133, v134);
    }

    re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info, &v140, v74);
    v66 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v75 + 16, &__str);
    if (__str.__r_.__value_.__s.__data_[8])
    {
      if (__str.__r_.__value_.__s.__data_[8])
      {
      }
    }

    if (*&v140.var0)
    {
      if (*&v140.var0)
      {
      }
    }
  }

  if ((*(a2 + 242) & 1) == 0 && (physx::shdfnd::g_alwaysUseLocking & 1) == 0)
  {
    physx::shdfnd::g_alwaysUseLocking = 1;
  }

  if ((*(this + 428) & 0x20) != 0)
  {
    v76 = re::globalAllocators(v66);
    v77 = (*(*v76[2] + 32))(v76[2], 736, 16);
    bzero(v77, 0x2E0uLL);
    *v77 = &unk_1F5CD6348;
    re::ecs2::PhysicsSimulationTracking::PhysicsSimulationTracking((v77 + 2));
    *(v77 + 664) = 0;
    v77[82] = 0;
    *(v77 + 40) = 0u;
    *(v77 + 42) = 0u;
    *(v77 + 43) = 0u;
    *(v77 + 700) = 0u;
    *(v77 + 716) = 0x7FFFFFFFLL;
    *(this + 120) = v77;
    re::ecs2::PhysicsSimulationManager::init(v77, *(this + 86), *(a2 + 241));
    v78 = *(this + 86);
    v79 = *(this + 120);
    re::StringID::invalid(&v140);
    {
      re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info = re::ecs2::introspect_PhysicsSimulationService(0, v135, v136, v137, v138, v139);
    }

    re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info, &v140, v79);
    v66 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v78 + 16, &__str);
    if (__str.__r_.__value_.__s.__data_[8])
    {
      if (__str.__r_.__value_.__s.__data_[8])
      {
      }
    }

    if (*&v140.var0)
    {
      if (*&v140.var0)
      {
      }
    }
  }

  else
  {
    if (re::PhysicsFactory::m_lazilyInitializedPhysicsFactory == 1)
    {
      v66 = re::PhysicsFactory::deinit(v66);
    }

    {
      v66 = re::deinitCollision(v66);
    }
  }

  v80 = re::globalAllocators(v66);
  v81 = (*(*v80[2] + 32))(v80[2], 368, 8);
  v82 = re::FrameManager::FrameManager(v81);
  v83 = *(this + 112);
  *(this + 112) = v82;
  if (v83)
  {

    v82 = *(this + 112);
  }

  re::FrameManager::init(v82);
  v84 = *(this + 86);
  v85 = *(this + 112);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::FrameManager>(BOOL)::info = re::introspect_FrameManager(0, v120, v121, v122, v123, v124);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::FrameManager>(BOOL)::info, &v140, v85);
  v86 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v84 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  if (g_jobService)
  {
    v87 = (*(*g_jobService + 16))(g_jobService) + 14;
  }

  else
  {
    v87 = 14;
  }

  v88 = std::thread::hardware_concurrency();
  v89 = v88;
  if (v87 > v88)
  {
    v89 = v87;
  }

  if (v89 >= 0x20)
  {
    v90 = 32;
  }

  else
  {
    v90 = v89;
  }

  v91 = re::globalAllocators(v88);
  v92 = (*(*v91[2] + 32))(v91[2], 536, 8);
  *v92 = atomic_fetch_add(&qword_1EE191748, 1uLL) + 1;
  *(v92 + 1) = 0;
  *(v92 + 4) = 0;
  *(v92 + 3) = v90;
  *(v92 + 2) = 0u;
  *(v92 + 3) = 0u;
  *(v92 + 4) = 0u;
  *(v92 + 5) = 0u;
  *(v92 + 12) = 0;
  *(v92 + 26) = 1065353216;
  *(v92 + 7) = 0u;
  *(v92 + 8) = 0u;
  *(v92 + 9) = 0u;
  *(v92 + 10) = 0u;
  *(v92 + 11) = 0u;
  *(v92 + 48) = 1065353216;
  *(v92 + 216) = 0u;
  *(v92 + 232) = 0u;
  *(v92 + 248) = 0u;
  *(v92 + 200) = 0u;
  *(v92 + 264) = 0u;
  *(v92 + 70) = 1065353216;
  *(v92 + 18) = 0u;
  *(v92 + 19) = 0u;
  *(v92 + 20) = 0u;
  *(v92 + 21) = 0u;
  *(v92 + 22) = 0u;
  *(v92 + 23) = 0u;
  *(v92 + 24) = 0u;
  *(v92 + 25) = 0u;
  *(v92 + 26) = 0u;
  *(v92 + 27) = 0u;
  *(v92 + 28) = 0u;
  *(v92 + 29) = 0u;
  *(v92 + 30) = 0u;
  *(v92 + 31) = 0u;
  *(v92 + 128) = 1065353216;
  *(v92 + 520) = 0u;
  *(v92 + 65) = mach_absolute_time();
  *(this + 128) = v92;
  v93 = *(this + 86);
  re::StringID::invalid(&v140);
  {
    re::introspect<re::ProfilerManager>(BOOL)::info = re::introspect_ProfilerManager(0);
  }

  re::ServiceRegistration::ServiceRegistration(&__str, re::introspect<re::ProfilerManager>(BOOL)::info, &v140, v92);
  v94 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(v93 + 16, &__str);
  if (__str.__r_.__value_.__s.__data_[8])
  {
    if (__str.__r_.__value_.__s.__data_[8])
    {
    }
  }

  if (*&v140.var0)
  {
    if (*&v140.var0)
    {
    }
  }

  os_unfair_lock_lock((*(this + 128) + 16));
  re::ProfilerManager::getProcessorId<re::FrameProfiler>();
  operator new();
}

void re::ServiceRegistry::add<re::EventBus>(uint64_t a1, uint64_t a2, StringID *a3)
{
  v3 = a2;
  v5 = &unk_1EE187000;
  {
    v11 = a3;
    v5 = &unk_1EE187000;
    a3 = v11;
    v3 = a2;
    if (v7)
    {
      re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0, v8, v11, a2, v9, v10);
      v5 = &unk_1EE187000;
      a3 = v11;
      v3 = a2;
    }
  }

  re::ServiceRegistration::ServiceRegistration(&v13, v5[44], a3, v3);
  v6 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(a1 + 16, &v13);
  if (v14)
  {
    if (v14)
    {
    }
  }
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 208) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 224);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 216) = *(*(a1 + 208) + 24);
  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 208) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 224);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 216) = *(*(a1 + 208) + 24);
  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 192) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 208);
  re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 200) = *(*(a1 + 192) + 24);
  return result;
}

uint64_t re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 192) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 208);
  re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 200) = *(*(a1 + 192) + 24);
  return result;
}

uint64_t re::ProfilerManager::getProcessor<re::FrameProfiler,void>(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v5 = re::ProfilerManager::getProcessorId<re::FrameProfiler>();
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&a1[120]._os_unfair_lock_opaque, &v5);
  if (v2)
  {
    v3 = v2[3];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1 + 4);
  return v3;
}

void re::ProfilerManager::setProcessorEnabled<re::FrameProfiler,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::FrameProfiler>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

void re::ProfilerManager::setProcessorEnabled<re::ProfilerLogProcessor,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::ProfilerLogProcessor>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

void re::ProfilerManager::setProcessorEnabled<re::ProfilerFlameChartProcessor,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

void re::ProfilerManager::setProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

void re::ProfilerManager::setProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

void re::ProfilerManager::setProcessorEnabled<re::ProfilerCsvProcessor,void>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 532) = 0;
  isStatisticCollectionEnabled = re::ProfilerManager::getProcessorId<re::ProfilerCsvProcessor>();
  v5 = *(a1 + 496);
  if (v5)
  {
    v6 = isStatisticCollectionEnabled;
    do
    {
      v7 = v5[3];
      if (v5[2] == v6)
      {
        v7[8] = a2;
        isStatisticCollectionEnabled = (*(*v7 + 64))(v7, a2);
      }

      if (v7[8] == 1)
      {
        if (*(a1 + 532))
        {
          v8 = 1;
        }

        else
        {
          v8 = (*(*v7 + 24))(v7);
        }

        *(a1 + 532) = v8;
        if (*(a1 + 533))
        {
          v9 = 1;
        }

        else
        {
          v9 = (*(*v7 + 32))(v7);
        }

        *(a1 + 533) = v9;
        if (*(a1 + 534))
        {
          v10 = 1;
        }

        else
        {
          v10 = (*(*v7 + 40))(v7);
        }

        *(a1 + 534) = v10;
        if (*(a1 + 535))
        {
          isStatisticCollectionEnabled = 1;
        }

        else
        {
          isStatisticCollectionEnabled = (*(*v7 + 48))(v7);
        }

        *(a1 + 535) = isStatisticCollectionEnabled;
      }

      v5 = *v5;
    }

    while (v5);
  }

  if (*(a1 + 532))
  {
    v11 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Processor needs events but event collection is disabled.", buf, 2u);
    }
  }

  if (*(a1 + 533) == 1)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if ((isStatisticCollectionEnabled & 1) == 0)
    {
      v12 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
      isStatisticCollectionEnabled = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isStatisticCollectionEnabled)
      {
        *v17 = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Processor needs statistics but statistic collection is disabled.", v17, 2u);
      }
    }
  }

  if (*(a1 + 534) == 1)
  {
    v13 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    isStatisticCollectionEnabled = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (isStatisticCollectionEnabled)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Processor needs attributions but attribution collection is disabled.", v16, 2u);
    }
  }

  if (*(a1 + 535) == 1)
  {
    v14 = *re::foundationProfilingLogObjects(isStatisticCollectionEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Processor needs memory statistics but memory statistic collection is disabled.", v15, 2u);
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t re::ProfilerManager::getProcessor<re::ProfilerMiniHUDProcessor,void>(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>();
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&a1[120]._os_unfair_lock_opaque, &v5);
  if (v2)
  {
    v3 = v2[3];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1 + 4);
  return v3;
}

void re::ServiceRegistry::add<re::DrawableQueueService>(uint64_t a1, uint64_t a2, StringID *a3)
{
  v3 = a2;
  v5 = &unk_1EE187000;
  {
    v11 = a3;
    v5 = &unk_1EE187000;
    a3 = v11;
    v3 = a2;
    if (v7)
    {
      re::introspect<re::DrawableQueueService>(BOOL)::info = re::introspect_DrawableQueueService(0, v8, v11, a2, v9, v10);
      v5 = &unk_1EE187000;
      a3 = v11;
      v3 = a2;
    }
  }

  re::ServiceRegistration::ServiceRegistration(&v13, v5[203], a3, v3);
  v6 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(a1 + 16, &v13);
  if (v14)
  {
    if (v14)
    {
    }
  }
}

void ___ZN2re6Engine4initERKNS_19EngineConfigurationE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 864);
  v4 = DRResourcesCommitCopyToXPC();
  re::ResourceSharingManager::pushDirectCommit(v3, v4);
}

void ___ZN2re6Engine4initERKNS_19EngineConfigurationE_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (DRResourcesCommitHasEvent())
  {
    v5 = DRResourcesCommitCopyEventWithDevice();
    v6 = v5;

    Id = DRResourcesCommitGetId();
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN2re6Engine4initERKNS_19EngineConfigurationE_block_invoke_3;
    block[3] = &__block_descriptor_56_a8_32c34_ZTSN2re10ArcWeakPtrINS_6EngineEEE40c40_ZTSN2NS9SharedPtrIN3MTL11SharedEventEEE_e5_v8__0l;
    v10 = 0;
    objc_copyWeak(&v10, (a1 + 48));
    v11 = v5;
    v12 = Id;
    dispatch_async(v8, block);
    if (v11)
    {

      v11 = 0;
    }

    objc_destroyWeak(&v10);
    v10 = 0;
    if (v5)
    {
    }
  }
}

void ___ZN2re6Engine4initERKNS_19EngineConfigurationE_block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(*(WeakRetained + 109) + 112);
    v5 = a1[5];
    v6 = v5;
    re::DrawingManager::addFrameBeganSignal(v4, &v6, a1[6]);
    if (v5)
    {
    }
  }
}

id __copy_helper_block_a8_32c34_ZTSN2re10ArcWeakPtrINS_6EngineEEE40c40_ZTSN2NS9SharedPtrIN3MTL11SharedEventEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(v3 + 8) = result;
  return result;
}

void __destroy_helper_block_a8_32c34_ZTSN2re10ArcWeakPtrINS_6EngineEEE40c40_ZTSN2NS9SharedPtrIN3MTL11SharedEventEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    *(a1 + 40) = 0;
  }

  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;
}

void __copy_helper_block_a8_40c34_ZTSN2NS9SharedPtrIN3MTL6DeviceEEE48c34_ZTSN2re10ArcWeakPtrINS_6EngineEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 48) = 0;
  v5 = (a1 + 48);
  *(v5 - 1) = v4;

  objc_copyWeak(v5, (a2 + 48));
}

void __destroy_helper_block_a8_40c34_ZTSN2NS9SharedPtrIN3MTL6DeviceEEE48c34_ZTSN2re10ArcWeakPtrINS_6EngineEEE(uint64_t a1)
{
  objc_destroyWeak((a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {

    *(a1 + 40) = 0;
  }
}

void re::Engine::setAcceptingInput(re::Engine *this, re::InputManager *a2)
{
  v2 = *(this + 121);
  if (v2)
  {
    if (a2)
    {
      v4 = *(this + 55);
      re::InputManager::subscribe(v2, &v4);
    }

    else
    {
      v3 = *(this + 121);

      re::InputManager::unsubscribe(v3, a2);
    }
  }
}

void re::ServiceRegistry::add<re::ecs2::CARESortingService>(uint64_t a1, uint64_t a2, StringID *a3)
{
  v3 = a2;
  v5 = &unk_1EE187000;
  {
    v11 = a3;
    v5 = &unk_1EE187000;
    a3 = v11;
    v3 = a2;
    if (v7)
    {
      re::introspect<re::ecs2::CARESortingService>(BOOL)::info = re::ecs2::introspect_CARESortingService(0, v8, v11, a2, v9, v10);
      v5 = &unk_1EE187000;
      a3 = v11;
      v3 = a2;
    }
  }

  re::ServiceRegistration::ServiceRegistration(&v13, v5[125], a3, v3);
  v6 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(a1 + 16, &v13);
  if (v14)
  {
    if (v14)
    {
    }
  }
}

uint64_t re::Engine::timeDidChange(re::Engine *a1, uint64_t a2)
{
  v4 = *(a1 + 126);
  if (v4)
  {
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
    *(v4 + 264) = 0;
    *(v4 + 248) = std::chrono::steady_clock::now();
    *(v4 + 264) = 1;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v13, 1504, a1, (*(*(a1 + 112) + 24) & 0xFFFFFFFFFFFFFFFLL) + 1, 0, 0);
  v5 = (*(*a2 + 104))(a2);
  if (v5 >= (*(*a2 + 64))(a2) - 1)
  {
    re::Engine::executePhase(a1, 1u);
    re::Engine::executePhase(a1, 2u);
  }

  re::Engine::executePhase(a1, 3u);
  if (!(*(*a2 + 104))(a2))
  {
    re::Engine::executePhase(a1, 4u);
    re::Engine::executePhase(a1, 5u);
    re::Engine::executePhase(a1, 6u);
    re::Engine::executePhase(a1, 7u);
  }

  v8 = *(a1 + 126);
  if (v8)
  {
    v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v10 = 0x41CDCD6500000000;
    LOBYTE(v10) = *(v8 + 264);
    v11 = (*(v8 + 256) + (v9.__d_.__rep_ - *(v8 + 248)) / 1000000000.0 * v10) * 1000.0;
    *(v8 + 236) = v11;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v13, v6, v7);
  return 0;
}

void ___ZN2re6Engine4initERKNS_19EngineConfigurationE_block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  re::Engine::tick(v1);

  objc_autoreleasePoolPop(v2);
}

uint64_t re::Engine::tick(re::Engine *this)
{
  v3 = CACurrentMediaTime();
  v4 = v3 - *(this + 163);
  *(this + 163) = v3;
  v5 = 3600.0;
  if (v4 <= 3600.0)
  {
    v5 = v4;
  }

  if (v4 < 0.0)
  {
    v5 = 0.0;
  }

  return re::Engine::tick(this, v5, v2);
}

uint64_t re::Engine::configureScheduling(uint64_t this)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 24) == 1)
  {
    v1 = this;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v31 = 0;
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    *&v41 = -1;
    re::Engine::configureSchedulingPhases(this, (this + 32), v27, &v41, 0xFFFFFFFFLL);
    re::Scheduler::configure(*(v1 + 720), v27);
    re::Engine::updateRaiseUpdateEventScheduleState(v1);
    v2 = *(v1 + 360);
    if (v2)
    {
      v3 = (v1 + 368);
    }

    else
    {
      v3 = *(v1 + 376);
    }

    v4 = *(v1 + 352);
    while (1)
    {
      v5 = v1 + 368;
      if ((v2 & 1) == 0)
      {
        v5 = *(v1 + 376);
      }

      if (v3 == (v5 + 8 * v4))
      {
        break;
      }

      *v3++ = 0;
      v2 = *(v1 + 360);
    }

    v6 = *(v1 + 720);
    if (v6)
    {
      v7 = *(v6 + 40);
      v8 = *(v1 + 408);
      if ((v7 & 0x3F) != 0)
      {
        v9 = (v7 >> 6) + 1;
      }

      else
      {
        v9 = v7 >> 6;
      }

      *(v1 + 408) = v7;
      *&v41 = 0;
      re::DynamicOverflowArray<unsigned long long,5ul>::resize((v1 + 344), v9, &v41);
      if (v7)
      {
        v10 = v8 > v7;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = 63;
        v12 = *(v1 + 408) & 0x3FLL;
        if (v12)
        {
          v13 = v12 == 63;
          v14 = -1 << v12;
          if (!v13)
          {
            v11 = ~v14;
          }
        }

        v15 = v1 + 368;
        if ((*(v1 + 360) & 1) == 0)
        {
          v15 = *(v1 + 376);
        }

        *(v15 + 8 * *(v1 + 352) - 8) &= v11;
      }

      for (i = 0; i != 8; ++i)
      {
        v17 = *(v1 + 104 + 8 * re::Engine::kOutputDeviceFrameTasks[i]);
        if (v17 < v7)
        {
          v18 = v17 >> 6;
          v19 = *(v1 + 352);
          if (v19 <= v17 >> 6)
          {
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v36 = 858;
            v37 = 2048;
            v38 = v18;
            v39 = 2048;
            v40 = v19;
            _os_log_send_and_compose_impl(v25, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v26, v27[0]);
            _os_crash_msg();
            __break(1u);
          }

          v20 = v1 + 368;
          if ((*(v1 + 360) & 1) == 0)
          {
            v20 = *(v1 + 376);
          }

          *(v20 + 8 * v18) |= 1 << v17;
        }
      }

      v21 = *(v1 + 704);
      if (v21)
      {
        re::ecs2::ECSManager::outputDeviceSystemTasks(&v41, v21);
        re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v1 + 344, &v41);
        if (v41)
        {
          if ((v42 & 1) == 0)
          {
            (*(*v41 + 40))();
          }
        }
      }

      v22 = *(v1 + 720);
      if (v22)
      {
        re::Scheduler::setEnabled(v22, v1 + 344, *(v1 + 416));
      }
    }

    re::DynamicArray<re::Scheduler::TaskDescriptor>::deinit(v29 + 8);
    return re::DynamicArray<re::StringID>::deinit(v27);
  }

  return this;
}

uint64_t re::Engine::checkForDefaultConfigureSystemChanges(re::Engine *this)
{
  result = re::Engine::hasPendingSystemChanges(this, 0xFFFFFFFFLL);
  if (result)
  {
    v3 = *(this + 88);
    if (v3)
    {
      re::ecs2::SceneGroupCollection::configureSystemChanges(v3 + 40, 0xFFFFFFFFLL);
    }

    *(this + 1544) = 1;
  }

  else if ((*(this + 1544) & 1) == 0)
  {
    return result;
  }

  result = re::Engine::configureScheduling(this);
  *(this + 1544) = 0;
  return result;
}

re *re::internal::destroyPersistent<re::AnimationManager>(re *result, uint64_t a2, re::AnimationManager *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::AnimationManager::~AnimationManager(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::internal::destroyPersistent<re::Scheduler>(re *result, uint64_t a2, re::Scheduler *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::Scheduler::~Scheduler(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::Engine::configureSchedulingPhases(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v117 = *MEMORY[0x1E69E9840];
  v99 = 0x1A73B3E1A79F3CALL;
  v100 = "Enter Frame";
  v10 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v11 = v10;
  if (v99)
  {
  }

  v94 = v11;
  a2[1] = v11;
  v99 = 0xBBDDDE49C7E29768;
  v100 = "Enter Frame Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v10)[2];
  v110 = &v106;
  v106 = &unk_1F5CB6DA8;
  v107 = a1;
  v111 = v11;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v12 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v13 = *a4;
  if (*a4)
  {
    v14 = *(a1 + 896);
    v99 = 0xEEA8176B5CA41DF0;
    v100 = "Increment Frame Counter";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v15 = re::globalAllocators(v12)[2];
    v108 = a1 + 1320;
    v109 = v15;
    v106 = &unk_1F5CB6E00;
    v107 = v14;
    v110 = &v106;
    v111 = v11;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    a2[9] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v12 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v13 = *a4;
  }

  if ((v13 & 2) != 0 && (~*(a1 + 432) & 0x100012) == 0)
  {
    v16 = *(a1 + 1000);
    v99 = 0xA8BB4F263E93A12ALL;
    v100 = "Notify Frame Analysis Frame Start";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v12)[2];
    v110 = &v106;
    v106 = &unk_1F5CB6E58;
    v107 = v16;
    v111 = v11;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[10] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v12 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v13 = *a4;
  }

  if (v13 & 4) != 0 && (*(a1 + 433))
  {
    v17 = *(a1 + 1264);
    v95 = &unk_1F5CB7B10;
    v96 = a2;
    v97 = a3;
    v98 = &v95;
    (*(*v17 + 72))(v17, &v94, &v95);
    v12 = std::__function::__value_func<void ()(re::Scheduler::TaskDescriptor)>::~__value_func[abi:nn200100](&v95);
  }

  v18 = *(a1 + 896);
  v99 = 0x8120BAF859FB454CLL;
  v100 = "Enter Frame Profiling End";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v19 = re::globalAllocators(v12)[2];
  v108 = a1;
  v109 = v19;
  v106 = &unk_1F5CB6EB0;
  v107 = v18;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v110 = &v106;
  v111 = v94;
  v112 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v20 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 0x22A07D49CELL;
  v100 = "Prepare";
  v21 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v22 = v21;
  if (v99)
  {
  }

  a2[2] = v22;
  v99 = 0x7B2E133A3B21656CLL;
  v100 = "Prepare Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v21)[2];
  v110 = &v106;
  v106 = &unk_1F5CB6F08;
  v107 = a1;
  v111 = v22;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v24 = *a4;
  if ((*a4 & 8) != 0 && (*(a1 + 432) & 0x40) != 0)
  {
    v25 = *(a1 + 968);
    v99 = 0x3611AC122B14243ELL;
    v100 = "Input Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v23)[2];
    v110 = &v106;
    v106 = &unk_1F5CB6F60;
    v107 = v25;
    v111 = v22;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[12] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v24 = *a4;
  }

  v26 = *(a1 + 432);
  if ((v26 & 0x104) != 0 && (v26 & 2) != 0)
  {
    if ((v24 & 0x10) != 0)
    {
      v27 = *(a1 + 1288);
      if (v27)
      {
        v99 = 0x4005877381F5E22CLL;
        v100 = "Shared Clock Update";
        v101 = 1;
        v102 = 0;
        v103 = 0;
        LOWORD(v104) = 260;
        HIDWORD(v104) = 1023969417;
        v105 = 0;
        v109 = re::globalAllocators(v23)[2];
        v110 = &v106;
        v106 = &unk_1F5CB6FB8;
        v107 = v27;
        v111 = v22;
        v112 = 0;
        v116 = 0;
        v115 = 0;
        v113 = 0;
        v114 = 0;
        a2[13] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
        if (v112)
        {
          if (v116)
          {
            (*(*v112 + 40))();
          }

          v116 = 0;
          v113 = 0;
          v114 = 0;
          v112 = 0;
          ++v115;
        }

        v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
        if (v99)
        {
          if (v99)
          {
          }
        }

        v24 = *a4;
      }
    }

    if ((v24 & 0x20) != 0)
    {
      v28 = *(a1 + 1280);
      if (v28)
      {
        v99 = 0x874A02CC4DB88436;
        v100 = "Timebase Before Frame Update";
        v101 = 1;
        v102 = 0;
        v103 = 0;
        LOWORD(v104) = 260;
        HIDWORD(v104) = 1023969417;
        v105 = 0;
        v109 = re::globalAllocators(v23)[2];
        v110 = &v106;
        v106 = &unk_1F5CB7010;
        v107 = v28;
        v111 = v22;
        v112 = 0;
        v116 = 0;
        v115 = 0;
        v113 = 0;
        v114 = 0;
        a2[14] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
        if (v112)
        {
          if (v116)
          {
            (*(*v112 + 40))();
          }

          v116 = 0;
          v113 = 0;
          v114 = 0;
          v112 = 0;
          ++v115;
        }

        v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
        if (v99)
        {
          if (v99)
          {
          }
        }

        v24 = *a4;
      }
    }
  }

  if ((v24 & 0x40) != 0 && (*(a1 + 432) & 0x80) != 0)
  {
    v29 = *(a1 + 904);
    if (v29)
    {
      v99 = 0x691970AE8D5439D6;
      v100 = "Network Before Frame Update";
      v101 = 1;
      v102 = 0;
      v103 = 0;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v23)[2];
      v110 = &v106;
      v106 = &unk_1F5CB7068;
      v107 = v29;
      v111 = v22;
      v112 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      a2[15] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      v24 = *a4;
    }
  }

  if ((v24 & 0x80) != 0)
  {
    v30 = *(a1 + 712);
    v99 = 0x5D0715B967600FE4;
    v100 = "Background Task Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v23)[2];
    v110 = &v106;
    v106 = &unk_1F5CB70C0;
    v107 = v30;
    v111 = v22;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[16] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v24 = *a4;
  }

  v31 = *(a1 + 432);
  if ((v24 & 0x100) != 0 && (v31 & 8) != 0)
  {
    v32 = *(a1 + 784);
    v99 = 0x308AF400B2139072;
    v100 = "Asset Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v23)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7118;
    v107 = v32;
    v111 = v22;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v33 = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    a2[17] = v33;
    v24 = *a4;
    v31 = *(a1 + 432);
  }

  if ((v24 & 0x200) != 0 && (v31 & 4) != 0)
  {
    v34 = *(a1 + 704);
    v35 = *(a1 + 768);
    v99 = 0x1D1930259178F24ALL;
    v100 = "Animation Update";
    v36 = *(v35 + 116);
    if (v36)
    {
      if (*(v35 + 112))
      {
        LOBYTE(v36) = 1;
      }

      else
      {
        LOBYTE(v36) = *(v35 + 176) != 0;
      }
    }

    v101 = v36;
    v102 = 0;
    v103 = 0;
    v37 = *(v35 + 16);
    v105 = *(v35 + 24);
    v104 = v37;
    v38 = re::globalAllocators(v23)[2];
    v108 = v35;
    v109 = v38;
    v106 = &unk_1F5CB7170;
    v107 = v34;
    v110 = &v106;
    v111 = v22;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    v39 = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v23 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    a2[18] = v39;
    v40 = *(a1 + 768);
    *(v40 + 8) = *(a1 + 720);
    *(v40 + 32) = v39;
    v31 = *(a1 + 432);
  }

  if ((v31 & 2) != 0)
  {
    re::ecs2::ECSManager::configurePreparePhase(*(a1 + 704), a5, a3, v22);
  }

  v41 = *(a1 + 896);
  v99 = 0x2239DAB9BBDDC450;
  v100 = "Prepare Profiling End";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v42 = re::globalAllocators(v23)[2];
  v108 = a1;
  v109 = v42;
  v106 = &unk_1F5CB71C8;
  v107 = v41;
  v110 = &v106;
  v111 = v22;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v43 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 0x4544226CC88;
  v100 = "Simulate";
  v44 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v45 = v44;
  if (v99)
  {
  }

  a2[3] = v45;
  v99 = 0xD57EE63E48F23426;
  v100 = "Simulate Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v44)[2];
  v110 = &v106;
  v106 = &unk_1F5CB7220;
  v107 = a1;
  v111 = v45;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v46 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v47 = *a4;
  if ((*a4 & 0x800) != 0)
  {
    v99 = 0xAAFBCE219D0498AELL;
    v100 = "Raise Update Event";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v46)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7278;
    v107 = a1;
    v111 = v45;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[20] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v46 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v47 = *a4;
  }

  v48 = *(a1 + 432);
  if ((v47 & 0x1000) != 0 && (v48 & 0x8000) != 0)
  {
    v49 = *(a1 + 952);
    v99 = 0xD275FE6FB8A1FF7ELL;
    v100 = "Throttle Service";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v46)[2];
    v110 = &v106;
    v106 = &unk_1F5CB72D0;
    v107 = v49;
    v111 = v45;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[21] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v46 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    v48 = *(a1 + 432);
  }

  if ((v48 & 2) != 0)
  {
    re::ecs2::ECSManager::configureSimulatePhase(*(a1 + 704), a5, a3, v45);
    if ((*(a4 + 1) & 0x20) != 0 && (*(a1 + 432) & 0x20) != 0 && (*(a1 + 665) & 1) == 0)
    {
      v50 = *(a1 + 704);
      v51 = *(a1 + 960);
      v99 = 0x494D4D6493EA9B80;
      v100 = "Physics Simulation";
      v101 = 1;
      v102 = 0;
      v103 = 1;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v46)[2];
      v52 = (*(*v109 + 32))(v109, 32, 0);
      *v52 = &unk_1F5CB7328;
      v52[1] = v50;
      v52[2] = v51;
      v52[3] = a1;
      v110 = v52;
      v111 = v45;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      v53 = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v46 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      a2[22] = v53;
    }
  }

  v54 = *(a1 + 896);
  v99 = 0x8C9BF83F7726F98ALL;
  v100 = "Simulate Profiling End";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v55 = re::globalAllocators(v46)[2];
  v108 = a1;
  v109 = v55;
  v106 = &unk_1F5CB7380;
  v107 = v54;
  v110 = &v106;
  v111 = v45;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v56 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 4048038574;
  v100 = "Commit";
  v57 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v58 = v57;
  if (v99)
  {
  }

  v94 = v58;
  a2[4] = v58;
  v99 = 0x62A8C35CEECE864CLL;
  v100 = "Commit Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v57)[2];
  v110 = &v106;
  v106 = &unk_1F5CB73D8;
  v107 = a1;
  v111 = v58;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  if ((*(a4 + 1) & 0x80) != 0 && (*(a1 + 428) & 0x10) != 0 && (*(a1 + 432) & 8) != 0)
  {
    v60 = *(a1 + 824);
    v99 = 0x1AF7B461BE06DD12;
    v100 = "DirectResource After Frame Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v61 = v60;
    v62 = re::globalAllocators(v61)[2];
    v108 = v61;
    v109 = v62;
    v106 = &unk_1F5CB7430;
    v107 = a1;
    v110 = &v106;
    v111 = v58;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    a2[24] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v63 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }
  }

  if ((*(a1 + 432) & 2) != 0)
  {
    re::ecs2::ECSManager::configureCommitPhase(*(a1 + 704), a5, a3, v58);
  }

  v64 = *a4;
  if ((*a4 & 0x4000) != 0 && (~*(a1 + 432) & 0x18) == 0)
  {
    v65 = *(a1 + 808);
    if (v65)
    {
      v99 = 0xB6A9C34D18D9D762;
      v100 = "Drawable Queue After Frame Update";
      v101 = 1;
      v102 = 0;
      v103 = 0;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v59)[2];
      v110 = &v106;
      v106 = &unk_1F5CB7488;
      v107 = v65;
      v111 = v58;
      v112 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      a2[23] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      v64 = *a4;
    }
  }

  if ((v64 & 0x10000) != 0 && (*(a1 + 432) & 8) != 0)
  {
    v66 = *(a1 + 784);
    v99 = 0xFBA855DF8D4C94A0;
    v100 = "Asset After Frame Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v59)[2];
    v110 = &v106;
    v106 = &unk_1F5CB74E0;
    v107 = v66;
    v111 = v58;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v67 = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }

    a2[25] = v67;
    v64 = *a4;
  }

  if ((v64 & 0x20000) != 0 && (*(a1 + 432) & 0x80) != 0)
  {
    v68 = *(a1 + 904);
    if (v68)
    {
      if (*(v68 + 2416))
      {
        v99 = 0xB96777787FFDBCA4;
        v100 = "Network After Frame Update";
        v101 = 1;
        v102 = 0;
        v103 = 0;
        LOWORD(v104) = 260;
        HIDWORD(v104) = 1023969417;
        v105 = 0;
        v109 = re::globalAllocators(v59)[2];
        v110 = &v106;
        v106 = &unk_1F5CB7538;
        v107 = v68;
        v111 = v58;
        v112 = 0;
        v116 = 0;
        v115 = 0;
        v113 = 0;
        v114 = 0;
        a2[26] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
        if (v112)
        {
          if (v116)
          {
            (*(*v112 + 40))();
          }

          v116 = 0;
          v113 = 0;
          v114 = 0;
          v112 = 0;
          ++v115;
        }

        v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
        if (v99)
        {
          if (v99)
          {
          }
        }

        v64 = *a4;
      }
    }
  }

  if ((v64 & 0x40000) != 0)
  {
    v69 = *(a1 + 432);
    if ((v69 & 0x104) != 0 && (v69 & 2) != 0)
    {
      v70 = *(a1 + 1280);
      if (v70)
      {
        v99 = 0xB21EB5FD96B6A644;
        v100 = "Timebase After Frame Update";
        v101 = 1;
        v102 = 0;
        v103 = 0;
        LOWORD(v104) = 260;
        HIDWORD(v104) = 1023969417;
        v105 = 0;
        v109 = re::globalAllocators(v59)[2];
        v110 = &v106;
        v106 = &unk_1F5CB7590;
        v107 = v70;
        v111 = v58;
        v112 = 0;
        v116 = 0;
        v115 = 0;
        v113 = 0;
        v114 = 0;
        a2[27] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
        if (v112)
        {
          if (v116)
          {
            (*(*v112 + 40))();
          }

          v116 = 0;
          v113 = 0;
          v114 = 0;
          v112 = 0;
          ++v115;
        }

        v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
        if (v99)
        {
          if (v99)
          {
          }
        }

        v64 = *a4;
      }
    }
  }

  if (v64 & 0x80000) != 0 && (*(a1 + 433))
  {
    v71 = *(a1 + 1264);
    v95 = &unk_1F5CB7BA0;
    v96 = a2;
    v97 = a3;
    v98 = &v95;
    (*(*v71 + 80))(v71, &v94, &v95);
    v59 = std::__function::__value_func<void ()(re::Scheduler::TaskDescriptor)>::~__value_func[abi:nn200100](&v95);
    v64 = *a4;
  }

  if ((v64 & 0x100000) != 0 && (~*(a1 + 432) & 0x100012) == 0)
  {
    v72 = *(a1 + 1000);
    if (v72)
    {
      v99 = 0xC9B6A3CA79E3CCA2;
      v100 = "Frame Analysis After Frame Update";
      v101 = 1;
      v102 = 0;
      v103 = 0;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v59)[2];
      v110 = &v106;
      v106 = &unk_1F5CB75E8;
      v107 = v72;
      v111 = v94;
      v112 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      a2[29] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      v64 = *a4;
    }
  }

  if ((v64 & 0x200000) != 0 && (*(a1 + 432) & 0x12) != 0)
  {
    v99 = 0xCA668105099A87ECLL;
    v100 = "ColorManager After Frame Update";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v59)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7640;
    v107 = a1;
    v111 = v94;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[30] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v59 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }
  }

  v73 = *(a1 + 896);
  v99 = 0xBFA2F07C801D9D30;
  v100 = "Commit Profiling End";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v74 = re::globalAllocators(v59)[2];
  v108 = a1;
  v109 = v74;
  v106 = &unk_1F5CB7698;
  v107 = v73;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v110 = &v106;
  v111 = v94;
  v112 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v75 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 0x123605B6CLL;
  v100 = "Render";
  v76 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v77 = v76;
  if (v99)
  {
  }

  a2[5] = v77;
  v99 = 0xF32E3A1A8997B0ALL;
  v100 = "Render Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v76)[2];
  v110 = &v106;
  v106 = &unk_1F5CB76F0;
  v107 = a1;
  v111 = v77;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v78 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  if ((*(a4 + 2) & 0x40) != 0 && (*(a1 + 432) & 0x10) != 0)
  {
    v99 = 0x39632A79442;
    v100 = "DoRender";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v78)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7748;
    v107 = a1;
    v111 = v77;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[31] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v78 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }
  }

  v99 = 0xF32E3A1A8997B0ALL;
  v100 = "Render Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v78)[2];
  v110 = &v106;
  v106 = &unk_1F5CB77A0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v111 = v77;
  v112 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v79 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 0x3A2CE5BC404;
  v100 = "End Tick";
  v80 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v81 = v80;
  if (v99)
  {
  }

  a2[6] = v81;
  v99 = 0xC9DEE6B0E4A0B3A2;
  v100 = "End Tick Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v80)[2];
  v110 = &v106;
  v106 = &unk_1F5CB77F8;
  v107 = a1;
  v111 = v81;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v82 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  if ((*(a4 + 2) & 0x80) != 0 && *(a1 + 480) == 1)
  {
    v99 = 0x50005DFB508F214ALL;
    v100 = "Schedule Continuous Tick";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 259;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v82)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7850;
    v107 = a1;
    v111 = v81;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    a2[32] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v82 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }
  }

  v99 = 0x7D9AB786E06D5540;
  v100 = "Exit Tick Profiling End";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v82)[2];
  v110 = &v106;
  v106 = &unk_1F5CB78A8;
  v107 = a1;
  v111 = v81;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v83 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v99 = 0xDB60E4C7127D6;
  v100 = "Exit Frame";
  v84 = re::Scheduler::ScheduleDescriptor::addPhase(a3, &v99);
  v85 = v84;
  if (v99)
  {
  }

  a2[7] = v85;
  v99 = 0x260FC32374E83374;
  v100 = "Exit Frame Profiling Begin";
  v101 = 1;
  v102 = 0;
  v103 = 0;
  LOWORD(v104) = 260;
  HIDWORD(v104) = 1023969417;
  v105 = 0;
  v109 = re::globalAllocators(v84)[2];
  v110 = &v106;
  v106 = &unk_1F5CB7900;
  v107 = a1;
  v111 = v85;
  v112 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v86 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v87 = *a4;
  if ((*a4 & 0x1000000) != 0)
  {
    v88 = *(a1 + 1008);
    if (v88)
    {
      v99 = 0x47C2C45EE134F02;
      v100 = "End Frame Profiler";
      v101 = 1;
      v102 = 0;
      v103 = 0;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v86)[2];
      v110 = &v106;
      v106 = &unk_1F5CB7958;
      v107 = v88;
      v111 = v85;
      v112 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      a2[33] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v86 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      v87 = *a4;
    }
  }

  if ((v87 & 0x2000000) != 0 && *(a1 + 704))
  {
    v99 = 0x9027F98B17907458;
    v100 = "Exit Frame Profiling End";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v86)[2];
    v89 = &unk_1F5CB79B0;
  }

  else
  {
    v99 = 0x9027F98B17907458;
    v100 = "Exit Frame Profiling End";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v86)[2];
    v89 = &unk_1F5CB7A08;
  }

  v106 = v89;
  v107 = a1;
  v110 = &v106;
  v111 = v85;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  a2[34] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  v90 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
  if (v99)
  {
    if (v99)
    {
    }
  }

  v91 = *a4;
  if ((*a4 & 2) != 0 && *(a1 + 674) == 1 && (~*(a1 + 432) & 0x100012) == 0)
  {
    v92 = *(a1 + 1000);
    if (v92)
    {
      v99 = 0x10E792C3CBE49C9ALL;
      v100 = "Frame Analysis Reset After Render Update";
      v101 = 1;
      v102 = 0;
      v103 = 0;
      LOWORD(v104) = 260;
      HIDWORD(v104) = 1023969417;
      v105 = 0;
      v109 = re::globalAllocators(v90)[2];
      v110 = &v106;
      v106 = &unk_1F5CB7A60;
      v107 = v92;
      v111 = v85;
      v112 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
      v114 = 0;
      a2[36] = re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
      if (v112)
      {
        if (v116)
        {
          (*(*v112 + 40))();
        }

        v116 = 0;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        ++v115;
      }

      v90 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
      if (v99)
      {
        if (v99)
        {
        }
      }

      v91 = *a4;
    }
  }

  if ((v91 & 0x4000000) != 0)
  {
    v99 = 0x966E2F48F8574292;
    v100 = "Reset Target Display Time";
    v101 = 1;
    v102 = 0;
    v103 = 0;
    LOWORD(v104) = 260;
    HIDWORD(v104) = 1023969417;
    v105 = 0;
    v109 = re::globalAllocators(v90)[2];
    v110 = &v106;
    v106 = &unk_1F5CB7AB8;
    v107 = a1;
    v111 = v85;
    v112 = 0;
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    re::Scheduler::ScheduleDescriptor::addTask(a3, &v99);
    if (v112)
    {
      if (v116)
      {
        (*(*v112 + 40))();
      }

      v116 = 0;
      v113 = 0;
      v114 = 0;
      v112 = 0;
      ++v115;
    }

    v93 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v106);
    if (v99)
    {
      if (v99)
      {
      }
    }
  }
}

re::Scheduler *re::Engine::updateRaiseUpdateEventScheduleState(re::Engine *this)
{
  result = *(this + 90);
  if (result)
  {
    v3 = *(this + 24);
    v4 = re::Scheduler::taskScheduleType(result, v3);
    v5 = *(this + 169);
    v6 = *(this + 189);
    updated = re::EventBus::subscriptionCountInternal<re::Engine,REEngineDoUpdateEvent>(v6, this, 0);
    result = re::EventBus::subscriptionCountInternal<re::Engine,REEngineDoUpdateEvent>(v6, 0, 0);
    if ((v4 == 4) == ((result + updated + v5) != 0))
    {
      v8 = -(result + updated);
      v9 = *(this + 90);
      if (v5 == v8)
      {

        return re::Scheduler::updateTaskSchedule(v9, v3, 4);
      }

      else
      {

        return re::Scheduler::setTaskOptions(v9, v3, this + 82);
      }
    }
  }

  return result;
}

uint64_t re::Engine::tick(re::Engine *this, float a2, uint64_t a3)
{
  if (*(this + 332) >= 1)
  {
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) Invalid nested engine tick", "!isInsideTick()", "tick", 1871, v3, v4);
    result = _os_crash("assertion failure: (!isInsideTick()) Invalid nested engine tick");
    __break(1u);
  }

  else
  {
    v5 = *(this + 123);

    return re::ManualClock::update(v5, a2, a3);
  }

  return result;
}

float *re::Engine::setPreferredFramesPerSecond(float *this, float a2)
{
  this[324] = a2;
  if (!*(this + 120))
  {
    v2 = this;
    v3 = *(this + 123);
    if (a2 <= 0.0)
    {
      this = [*(v3 + 144) setPreferredFramesPerSecond:60];
      if ((v2[108] & 0x10) != 0)
      {
        v4 = *(*(v2 + 110) + 112);
        if (v4)
        {
          v5 = 60.0;
          goto LABEL_9;
        }
      }
    }

    else
    {
      this = [*(v3 + 144) setPreferredFramesPerSecond:llroundf(a2)];
      if ((v2[108] & 0x10) != 0)
      {
        v4 = *(*(v2 + 110) + 112);
        if (v4)
        {
          v5 = roundf(v2[324]);
LABEL_9:
          *(v4 + 1792) = v5;
        }
      }
    }
  }

  return this;
}

void re::Engine::doUpdate(re::EventBus **this, float a2)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v6 + 152))
    {
      v2 = mach_absolute_time();
    }
  }

  else
  {
    v6 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v17, 1510, this, *(this[112] + 3) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  re::Event<re::Engine>::raise((this + 167), this);
  v7 = this[189];
  v16 = a2;
  Type = re::EventBus::getTypeId<REEngineDoUpdateEvent>();
  re::EventBus::publish(v7, this, Type, &v16, 4uLL, 0);
  re::Engine::updateRaiseUpdateEventScheduleState(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v17, v9, v10);
  if (v6)
  {
    if (*(v6 + 152))
    {
      v11 = mach_absolute_time();
      v12 = *(v6 + 152);
      if (v12)
      {
        v13 = v12[152].u64[0];
        if (v13 >= v11 - v2)
        {
          v13 = v11 - v2;
        }

        v12[152].i64[0] = v13;
        v14 = v12[152].u64[1];
        if (v14 <= v11 - v2)
        {
          v14 = v11 - v2;
        }

        v12[152].i64[1] = v14;
        v15 = vdupq_n_s64(1uLL);
        v15.i64[0] = v11 - v2;
        v12[153] = vaddq_s64(v12[153], v15);
        *(v6 + 184) = 0;
      }
    }
  }
}

void re::Event<re::Engine>::raise(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          v17 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl(v15, &v17, v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v18[0] = *v10;
        v18[1] = v12;
        v19 = v11;
        if (LOBYTE(v18[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v18 + 1, v28);
          if ((v28[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v18 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v18 + 1);
        }

        v7 += 40;
      }
    }
  }
}

int64x2_t re::Engine::doRender(re::Engine *this)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v4 + 152))
    {
      v1 = mach_absolute_time();
    }
  }

  else
  {
    v4 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v16, 5000, *(this + 110), *(*(this + 112) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  *(*(this + 126) + 296) = 1;
  re::Event<re::Engine>::raise(this + 1424, this);
  v5 = *(this + 189);
  v15 = (*(**(this + 124) + 56))(*(this + 124));
  if ((atomic_load_explicit(&qword_1EE191788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191788))
  {
    qword_1EE191780 = re::EventBus::typeStringToId(("21REEngineDoRenderEvent" & 0x7FFFFFFFFFFFFFFFLL), v14);
    __cxa_guard_release(&qword_1EE191788);
  }

  re::EventBus::publish(v5, this, qword_1EE191780, &v15, 4uLL, 0);
  *(*(this + 126) + 296) = 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v16, v6, v7);
  if (v4)
  {
    if (*(v4 + 152))
    {
      v9 = mach_absolute_time();
      v10 = *(v4 + 152);
      if (v10)
      {
        v11 = v10[80].u64[0];
        if (v11 >= v9 - v1)
        {
          v11 = v9 - v1;
        }

        v10[80].i64[0] = v11;
        v12 = v10[80].u64[1];
        if (v12 <= v9 - v1)
        {
          v12 = v9 - v1;
        }

        v10[80].i64[1] = v12;
        v13 = vdupq_n_s64(1uLL);
        v13.i64[0] = v9 - v1;
        result = vaddq_s64(v10[81], v13);
        v10[81] = result;
        *(v4 + 184) = 0;
      }
    }
  }

  return result;
}

uint64_t re::Scheduler::ScheduleDescriptor::addPhase(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*a1)
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::StringID>::setCapacity(a1, v11);
      }

      else
      {
        re::DynamicArray<re::StringID>::setCapacity(a1, v7);
        ++*(a1 + 24);
      }
    }

    v6 = *(a1 + 16);
  }

  v12 = (*(a1 + 32) + 16 * v6);
  *v12 = v3;
  v12[1] = v4;
  result = *(a1 + 16);
  *(a1 + 16) = result + 1;
  ++*(a1 + 24);
  return result;
}

uint64_t re::Scheduler::ScheduleDescriptor::addTask(uint64_t a1, uint64_t *a2)
{
  if (a2[9])
  {
    re::DynamicArray<re::Scheduler::TaskDescriptor>::add((a1 + 40), a2);
    return *(a1 + 56) - 1;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Task Descriptor does not contain an update function", "taskDescriptor.taskFunction", "addTask", 149);
    result = _os_crash("assertion failure: (taskDescriptor.taskFunction) Task Descriptor does not contain an update function");
    __break(1u);
  }

  return result;
}

uint64_t re::Engine::enableHackedAutoDisableOutputSystemsCode(uint64_t this)
{
  *(this + 417) = 1;
  if (*(this + 416))
  {
    *(this + 416) = 0;
    if (*(this + 720))
    {
      return re::Scheduler::setEnabled(*(this + 720), this + 344, 0);
    }
  }

  return this;
}

re::Scheduler *re::Engine::setRaiseUpdateEventFrameTaskOptions(uint64_t a1, float *a2)
{
  result = *(a1 + 720);
  if (result)
  {
    v5 = *(a1 + 192);
    result = re::Scheduler::taskScheduleType(result, v5);
    if (result == *(a1 + 328))
    {
      result = re::Scheduler::setTaskOptions(*(a1 + 720), v5, a2);
    }
  }

  v6 = *a2;
  *(a1 + 336) = *(a2 + 8);
  *(a1 + 328) = v6;
  return result;
}

uint64_t re::Scheduler::taskScheduleType(re::Scheduler *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 56);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 57) + a2);
}

uint64_t re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 > *(a1 + 64))
  {
    if ((v4 & 0x3F) != 0)
    {
      v5 = (v4 >> 6) + 1;
    }

    else
    {
      v5 = v4 >> 6;
    }

    *(a1 + 64) = v4;
    v11 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize(a1, v5, &v11);
  }

  v6 = *(a2 + 8);
  if (v6 >= *(a1 + 8))
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(a2 + 32);
      if (*(a2 + 16))
      {
        v8 = a2 + 24;
      }

      v9 = a1 + 24;
      if ((*(a1 + 16) & 1) == 0)
      {
        v9 = *(a1 + 32);
      }

      *(v9 + 8 * i) |= *(v8 + 8 * i);
    }
  }

  return a1;
}

uint64_t re::Engine::start(uint64_t this)
{
  v1 = this;
  v2 = *(this + 976);
  if (!v2)
  {
    v3 = re::ServiceLocator::service<re::SimulationClock>(*(this + 688));
    this = (*(*v3 + 64))(v3);
    v2 = *(v1 + 244);
  }

  *(v1 + 244) = v2 + 1;
  if (*(v1 + 120) == 1)
  {

    return re::Engine::tick(v1);
  }

  return this;
}

_anonymous_namespace_ *re::ServiceLocator::service<re::SimulationClock>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::SimulationClock>(a1);
  if (!result)
  {
    v2 = re::introspect<re::SimulationClock>();
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::SimulationClock>();
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

uint64_t re::Engine::stop(uint64_t this)
{
  v2 = *(this + 976);
  if (!v2 || (v3 = v2 - 1, (*(this + 976) = v3) == 0))
  {
    v4 = *(*re::ServiceLocator::service<re::SimulationClock>(*(this + 688)) + 72);

    return v4();
  }

  return this;
}

_anonymous_namespace_ *re::Engine::isRunning(re::StringID **this)
{
  result = re::ServiceLocator::serviceOrNull<re::SimulationClock>(this[86]);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SimulationClock>(re::StringID *a1)
{
  {
    re::introspect<re::SimulationClock>(BOOL)::info = re::introspect_SimulationClock(0);
  }

  v2 = re::introspect<re::SimulationClock>(BOOL)::info;
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

BOOL re::Engine::createDrawingManager(re::Engine *this)
{
  v1 = *(*(this + 110) + 112);
  if (!v1)
  {
    v3 = *re::appLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Enter CreateDrawingManager", &v21, 2u);
    }

    DrawingManager = re::RenderManager::createDrawingManager(*(this + 110));
    v5 = *(*(this + 110) + 112);
    if (v5)
    {
      v6 = *(v5 + 296);
    }

    else
    {
      v6 = 0;
    }

    v7 = re::globalAllocators(DrawingManager);
    v8 = (*(*v7[2] + 32))(v7[2], 8, 8);
    *v8 = &unk_1F5CB66C0;
    v9 = re::RenderGraphManager::setDataPipeFactory(v6, v8);
    v10 = *(this + 110);
    v11 = *(v10 + 112);
    if (v11)
    {
      v9 = *(this + 128);
      *(v11 + 1664) = v9;
      if (v9)
      {
        v9 = re::ProfilerManager::getProcessor<re::FrameProfiler,void>(v9);
        *(v11 + 1648) = v9;
        v10 = *(this + 110);
      }
    }

    if (*(this + 98) && *(v10 + 112) && !*(this + 101))
    {
      v12 = re::globalAllocators(v9);
      v13 = (*(*v12[2] + 32))(v12[2], 104, 8);
      *v13 = &unk_1F5CBD9C8;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0;
      *(v13 + 52) = 0x7FFFFFFFLL;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = 0;
      *(this + 101) = v13;
      v14 = *(this + 110);
      *(v13 + 88) = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(this + 86));
      *(v13 + 8) = v14;
      v15 = *(this + 86);
      v16 = *(this + 101);
      re::StringID::invalid(&v21);
      re::ServiceRegistry::add<re::DrawableQueueService>(v15, v16, &v21);
      if (*&v21.var0)
      {
        if (*&v21.var0)
        {
        }
      }

      v10 = *(this + 110);
    }

    *(this + 108) |= 0x10u;
    *(v10 + 205) = 1;
    v17 = *re::appLogObjects(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "CreateDrawingManager: about to call remove/add scenes", &v21, 2u);
    }

    v18 = *(this + 88);
    if (v18)
    {
      v18 = re::ecs2::ECSManager::removeAndAddRealityRendererScenes(v18);
    }

    *(this + 1544) = 1;
    v19 = *re::appLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Exit CreateDrawingManager", &v21, 2u);
    }
  }

  return v1 == 0;
}

BOOL re::Engine::hasPendingSystemChanges(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 704);
  if (!v2)
  {
    return 0;
  }

  result = re::ecs2::SceneGroupCollection::hasPendingSystemChanges(v2 + 40, a2);
  if (result)
  {
    re::ecs2::SceneGroupCollection::configureSystemChanges(*(a1 + 704) + 40, a2);
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ColorManager>(re::StringID *a1)
{
  {
    re::introspect<re::ColorManager>(BOOL)::info = re::introspect_ColorManager(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ColorManager>(BOOL)::info;
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

void re::EngineOverlay::init(re::EngineOverlay *this, re::Engine *a2)
{
  *(this + 3) = a2;
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::ManualClock::ManualClock(v4);
  *(this + 4) = v5;
  v6 = re::globalAllocators(v5);
  v7 = (*(*v6[2] + 32))(v6[2], 248, 8);
  v8 = re::VariableStepTimer::VariableStepTimer(v7);
  *(this + 5) = v8;
  re::VariableStepTimer::setClock(v8, *(this + 4));
  v9 = *(this + 4);
  *(*(this + 5) + 24) = 1;
  *(v9 + 8) = 1;
}

void re::EngineOverlay::~EngineOverlay(re::EngineOverlay *this)
{
  *this = &unk_1F5CB58C0;
  v2 = *(this + 5);
  *(*(this + 4) + 8) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = re::globalAllocators(this)[2];
  re::VariableStepTimer::~VariableStepTimer(v2);
  v4 = (*(*v3 + 40))(v3, v2);
  *(this + 5) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    v6 = re::globalAllocators(v4)[2];
    (**v5)(v5);
    (*(*v6 + 40))(v6, v5);
  }

  *(this + 4) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 368);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::EngineOverlay::~EngineOverlay(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::EngineOverlay::executePhase(uint64_t a1, unsigned int a2)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(*(a1 + 24) + 688));
  if (result)
  {
    v5 = result;
    v6 = (*(*result + 304))(result, *(a1 + 48));
    result = (*(*v5 + 304))(v5, *(a1 + 48));
    v7 = *(result + 9);
    if (v7)
    {
      if (a2 == 1)
      {
        if (*(a1 + 57) == 1)
        {
          *(re::ServiceLocator::serviceOrNull<re::FrameManager>(*(*(a1 + 24) + 688)) + 360) = 1;
          *(a1 + 57) = 0;
        }
      }

      else if (a2 == 4)
      {
        v8 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(*(a1 + 24) + 688));
        v9 = re::RenderFrameBox::get((*(v8 + 14) + 328), 0xFFFFFFFFFFFFFFFuLL);
        v10 = *(v9 + 384);
        if (((*(v9 + 416) ^ v10) & 0xFFFFFFFFFFFFFFFLL) == 0)
        {
          *(a1 + 360) = v10;
        }
      }

      if (*(a1 + 56) >= a2)
      {
        re::EngineOverlay::configureScheduling(a1, v6);
        v11 = *(a1 + 40);
        if (a2 == 1)
        {
          v12 = *(v11 + 40);
        }

        else
        {
          v12 = 0.0;
        }

        v13 = *(v11 + 40) * 0.5;
        re::DynamicOverflowArray<unsigned long long,2ul>::DynamicOverflowArray(v15, (a1 + 368));
        v17 = *(a1 + 408);
        re::Scheduler::beginPhaseExecution(v7, v15, v12, v13);
        if (v15[0])
        {
          v14 = v16;
          if ((v16 & 1) == 0)
          {
            (*(*v15[0] + 40))();
            v14 = v16;
          }

          v15[0] = 0;
          v15[1] = 0;
          v16 = (v14 | 1) + 2;
        }

        *(a1 + 408) = 0;
        v18 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 368), 0, &v18);
      }

      result = re::Scheduler::executePhase(v7, *(a1 + 8 * a2 + 64));
      *(a1 + 56) = a2;
    }
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::FrameManager>(re::StringID *a1)
{
  {
    re::introspect<re::FrameManager>(BOOL)::info = re::introspect_FrameManager(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::FrameManager>(BOOL)::info;
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

uint64_t re::EngineOverlay::configureScheduling(re::EngineOverlay *this, re::ecs2::SceneGroup *a2)
{
  if (re::Engine::hasPendingSystemChanges(*(this + 3), *(this + 6)) || (result = re::ecs2::SceneGroup::hasPendingSystemChanges(a2), result))
  {
    v5 = *(*(this + 3) + 704);
    if (v5)
    {
      re::ecs2::SceneGroupCollection::configureSystemChanges(v5 + 40, *(this + 6));
    }

    re::ecs2::SceneGroup::configureSystemChanges(a2);
    v11 = -60461133;
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    v10 = 0;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    re::Engine::configureSchedulingPhases(*(this + 3), this + 8, v6, &v11, *(this + 6));
    re::Scheduler::configure(*(a2 + 9), v6);
    re::DynamicArray<re::Scheduler::TaskDescriptor>::deinit(v8 + 8);
    return re::DynamicArray<re::StringID>::deinit(v6);
  }

  return result;
}

_anonymous_namespace_ *re::EngineOverlay::skipPhaseForNextUpdate(_anonymous_namespace_ *result, unsigned int a2)
{
  v3 = result;
  v32 = *MEMORY[0x1E69E9840];
  if (*(result + 51))
  {
    v4 = *(result + 47);
  }

  else
  {
    v5 = *(result + 15) + 1;
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    *(result + 51) = v5;
    *&v31[0] = 0;
    result = re::DynamicOverflowArray<unsigned long long,2ul>::resize((result + 368), v6, v31);
    v4 = *(v3 + 47);
    if (!v4)
    {
      v21 = 0;
      v16 = *(v3 + a2 + 8) >> 6;
      goto LABEL_27;
    }

    v7 = *(v3 + 96);
    if (v7)
    {
      v8 = v3 + 392;
    }

    else
    {
      v8 = *(v3 + 50);
    }

    v9 = v3 + 392;
    while (1)
    {
      v10 = v3 + 392;
      if ((v7 & 1) == 0)
      {
        v10 = *(v3 + 50);
      }

      if (v8 == &v10[8 * v4 - 8])
      {
        break;
      }

      *v8 = -1;
      v8 += 8;
      v7 = *(v3 + 96);
    }

    v11 = 63;
    v12 = *(v3 + 51) & 0x3FLL;
    if (v12)
    {
      v13 = v12 == 63;
      v14 = -1 << v12;
      if (!v13)
      {
        v11 = ~v14;
      }
    }

    if ((v7 & 1) == 0)
    {
      v9 = *(v3 + 50);
    }

    *&v9[8 * v4 - 8] = v11;
  }

  v15 = *(v3 + a2 + 8);
  v16 = v15 >> 6;
  if (v4 <= v15 >> 6)
  {
    while (1)
    {
      v21 = v4;
LABEL_27:
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 858;
      v27 = 2048;
      v28 = v16;
      v29 = 2048;
      v30 = v21;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }
  }

  if (*(v3 + 384))
  {
    v17 = v3 + 392;
  }

  else
  {
    v17 = *(v3 + 50);
  }

  *&v17[8 * v16] &= ~(1 << v15);
  return result;
}

uint64_t re::EngineOverlay::setSceneGroupHandle(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 52) & 0xFFFFFF) != 0)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) EngineOverlay can only be configured for 1 scene group.", "m_sceneGroupHandle.isNull()", "setSceneGroupHandle", 3472);
    _os_crash("assertion failure: (m_sceneGroupHandle.isNull()) EngineOverlay can only be configured for 1 scene group.");
    __break(1u);
    goto LABEL_7;
  }

  *(a1 + 48) = a2;
  v3 = *re::ServiceLocator::service<re::ecs2::ECSService>(*(*(a1 + 24) + 688));
  v4 = (*(v3 + 304))();
  if (*(v4 + 8) != 2)
  {
LABEL_7:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) EngineOverlay can only be configured scene groups not updated by default.", "!sceneGroup.isUpdateByDefault()", "setSceneGroupHandle", 3477);
    result = _os_crash("assertion failure: (!sceneGroup.isUpdateByDefault()) EngineOverlay can only be configured scene groups not updated by default.");
    __break(1u);
    return result;
  }

  return re::EngineOverlay::configureScheduling(a1, v4);
}

_anonymous_namespace_ *re::ServiceLocator::service<re::ecs2::ECSService>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ecs2::ECSService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::ecs2::ECSService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

BOOL re::EngineOverlay::canReuseLastFrame(re::EngineOverlay *this)
{
  v2 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(*(this + 3) + 688));
  v3 = *(v2 + 14);
  if (v3 && (*(v3 + 784) != 1 || (v4 = v2, v5 = *(v3 + 312), std::mutex::lock((v5 + 208)), v6 = *(v5 + 184), v7 = *(v5 + 176), std::mutex::unlock((v5 + 208)), v6 >= v7) && (v3 = *(v4 + 14)) != 0) && (v8 = *(v3 + 296)) != 0 && (*(v8 + 380) & 1) == 0)
  {
    return ((*(this + 45) ^ *(re::ServiceLocator::serviceOrNull<re::FrameManager>(*(*(this + 3) + 688)) + 3)) & 0xFFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_Engine(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_29, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_29))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191790, "Engine");
    __cxa_guard_release(&_MergedGlobals_29);
  }

  return &unk_1EE191790;
}

void re::initInfo_Engine(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 4160343236;
  v8[1] = "Engine";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x61000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::Engine>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::Engine>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_Engine(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::EngineConfiguration *re::EngineConfiguration::EngineConfiguration(re::EngineConfiguration *this)
{
  *this = 0;
  *(this + 4) = -65537;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  *(this + 2) = v2;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v4 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 12) = re::globalAllocators(v4)[2];
  *(this + 13) = 0;
  *(this + 7) = xmmword_1E3054760;
  *(this + 8) = xmmword_1E3054770;
  *(this + 19) = 0x101010101010101;
  *(this + 20) = 0x101010101010101;
  *(this + 18) = 32505856;
  *(this + 42) = 257;
  *(this + 172) = 1;
  *(this + 173) = 0;
  *(this + 177) = 0x100010001000001;
  *(this + 185) = 0;
  *(this + 187) = 0;
  *(this + 47) = 40;
  *(this + 192) = 1;
  *(this + 216) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  re::Defaults::BOOLValue(&v14, "shareAssetStates", v5);
  *(this + 217) = v14 & BYTE1(v14);
  re::Defaults::BOOLValue(&v14, "calculateAssetRuntimeSize", v6);
  *(this + 218) = v14 & BYTE1(v14);
  re::Defaults::uint64Value(&v14, "assetRuntimeSizeLimit", v7);
  if (v14)
  {
    v9 = v15;
  }

  else
  {
    v9 = -1;
  }

  *(this + 28) = v9;
  re::Defaults::uint64Value(&v14, "assetRuntimeUpdateTimeoutNanoseconds", v8);
  if (v14)
  {
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  *(this + 29) = v10;
  *(this + 240) = 0;
  *(this + 241) = _os_feature_enabled_impl() ^ 1;
  *(this + 242) = _os_feature_enabled_impl();
  *(this + 243) = 257;
  *(this + 245) = 0;
  re::Defaults::BOOLValue(&v14, "preloadEngineAssets", v11);
  *(this + 246) = v14 & BYTE1(v14);
  *(this + 247) = 0x10000;
  *(this + 251) = 257;
  re::Defaults::BOOLValue(&v14, "preloadMXIAssets", v12);
  *(this + 253) = v14 & BYTE1(v14);
  return this;
}

re::NetworkOPACKSerializer *re::NetworkOPACKSerializer::NetworkOPACKSerializer(re::NetworkOPACKSerializer *this)
{
  *&v4.var0 = 0xD66B7D4190E6B598;
  v4.var1 = "NetworkOPACKSerializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(this, &v4);
  *v2 = &unk_1F5CB59E0;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 200) = v2 + 448;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB5920;
  return this;
}

void re::NetworkOPACKSerializer::~NetworkOPACKSerializer(re::NetworkOPACKSerializer *this)
{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doClose(uint64_t a1)
{
  re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializeSharedObjects(a1);
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 208);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v30, v19, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 208);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}