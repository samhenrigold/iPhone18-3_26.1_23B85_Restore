uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BufferWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BufferWrite>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetWrite>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetWrite>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BufferWrite>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v11 = 0u;
  v10[1] = -1;
  DWORD1(v11) = 1;
  v12 = xmmword_1E30474D0;
  v13 = 0u;
  DWORD2(v13) = 0;
  re::DynamicArray<re::TargetWrite>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::BufferWrite>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetWrite>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetWrite>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::ProjectiveMeshShadowBuilder::buildShadowGenerationData(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>)
{
  v11 = a2;
  v350 = *MEMORY[0x1E69E9840];
  v14 = *(a6 + 8);
  v15 = *(a2 + 64);
  v268 = v14;
  v269 = a7;
  if (!v15)
  {
    goto LABEL_167;
  }

  v8 = a5;
  v16 = *(v14 + 112);
  if (v16)
  {
    v17 = *(v16 + 320);
  }

  else
  {
    v17 = 0;
  }

  v267 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v17, *(*(v14 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v14 + 144) + 16) << 60));
  if ((atomic_load_explicit(&qword_1EE1BF0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF0D8))
  {
    _MergedGlobals_511 = re::hashString("ProjectiveMeshShadow", v250);
    __cxa_guard_release(&qword_1EE1BF0D8);
  }

  if ((atomic_load_explicit(&qword_1EE1BF0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF0E8))
  {
    v7 = _MergedGlobals_511;
    qword_1EE1BF0E0 = ((v7 << 6) + (v7 >> 2) + re::hashString("RenderFrame", v251) - 0x61C8864680B583E9) ^ v7;
    __cxa_guard_release(&qword_1EE1BF0E8);
  }

  v18 = *(*(a6 + 8) + 96);
  if (v18)
  {
    goto LABEL_284;
  }

LABEL_8:
  v19 = &v316;
  v21 = re::WorldOrderedShadows::create((v11 + 48), v341);
  v22 = *&v341[16];
  v289 = *&v341[16];
  v286 = a1;
  v288 = a4;
  v266 = v11;
  if (!*&v341[16])
  {
    goto LABEL_28;
  }

  if (*&v341[16] >= 0x24924924924924AuLL)
  {
    re::internal::assertLog(6, v20, v21, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, *&v341[16]);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v252, v257);
    __break(1u);
    goto LABEL_287;
  }

  v23 = (*(*a4 + 32))(a4, 112 * *&v341[16], 16, v21);
  *(&v289 + 1) = v23;
  if (!v23)
  {
LABEL_287:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    goto LABEL_288;
  }

  v25 = v22 - 1;
  if (v22 != 1)
  {
    do
    {
      *v23 = 0;
      *(v23 + 8) = 0;
      v23 += 112;
      --v25;
    }

    while (v25);
  }

  *v23 = 0;
  *(v23 + 8) = 0;
  v9 = *&v341[16];
  if (!*&v341[16])
  {
LABEL_28:
    v22 = v8 + 80;
    a7 = v8 + 56;
    v278 = *(v8 + 56);
    v275 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(*(v8 + 80), a4);
    goto LABEL_29;
  }

  if (*&v341[16] > 0x2AAAAAAAAAAAAAAuLL)
  {
    goto LABEL_298;
  }

  v7 = 96 * *&v341[16];
  v26 = (*(*a4 + 32))(a4, 96 * *&v341[16], 16);
  if (v26)
  {
    v28 = v26;
    v29 = v26;
    if (v9 != 1)
    {
      bzero(v26, v7 - 96);
      v29 = &v28[v7 - 96];
    }

    v264 = 96 * v9;
    a7 = 0;
    *(v29 + 4) = 0u;
    *(v29 + 5) = 0u;
    *(v29 + 2) = 0u;
    *(v29 + 3) = 0u;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    a1 = 1;
    v19 = *(&v289 + 1);
    do
    {
      v11 = *&v341[16];
      if (*&v341[16] <= a7)
      {
        goto LABEL_260;
      }

      v11 = *&v341[32] + 32 * a7;
      v7 = v286;
      ShadowInfo = re::PersistentShadowState::getShadowInfo(v286, v11);
      v31 = *(ShadowInfo + 176);
      v342[0] = *(ShadowInfo + 160);
      v342[1] = v31;
      v32 = *(ShadowInfo + 208);
      v342[2] = *(ShadowInfo + 192);
      v342[3] = v32;
      v280 = v342[1];
      v283 = v342[0];
      v274 = v32;
      v277 = v342[2];
      _S8 = *(ShadowInfo + 256);
      v8 = *(v11 + 24);
      v34 = re::PersistentShadowState::getShadowInfo(v286, v11);
      if (v9 <= a7)
      {
        goto LABEL_264;
      }

      v36 = *(v34 + 1296);
      v37 = vmulq_f32(v36, v36);
      *&_S2 = v37.f32[2] + vaddv_f32(*v37.f32);
      *v37.f32 = vrsqrte_f32(_S2);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(_S2, vmul_f32(*v37.f32, *v37.f32)));
      v37.i32[0] = vmul_f32(*v37.f32, vrsqrts_f32(_S2, vmul_f32(*v37.f32, *v37.f32))).u32[0];
      __asm { FCVT            H2, S8 }

      v42 = &v28[96 * a7];
      *v42 = v283;
      *(v42 + 1) = v280;
      *(v42 + 2) = v277;
      *(v42 + 3) = v274;
      *(v42 + 32) = _S2;
      *(v42 + 33) = v8;
      *(v42 + 5) = vmulq_n_f32(v36, v37.f32[0]);
      re::buildCullingPlanes(v342, v319, v35);
      if (v22 <= a7)
      {
        goto LABEL_268;
      }

      v43 = &v19[7 * a7];
      if (v43 != v319)
      {
        re::DynamicInlineArray<re::PlaneF,6ul>::move(&v19[7 * a7], v319);
        ++*(v43 + 2);
      }

      a7 = a1;
      v44 = v9 > a1;
      a1 = (a1 + 1);
    }

    while (v44);
    v8 = a5;
    v22 = a5 + 80;
    v11 = *(a5 + 80);
    v311[0] = 0x31EF696315A95E84;
    re::PerFrameAllocatorGPU::allocInternal(v267, v264, 0x10uLL, 0, v319);
    v7 = *&v319[8];
    memcpy((*v319 + *&v319[8]), v28, v264);
    v290 = **&v319[24];
    v293 = 0;
    v294 = v7;
    v295 = 96 * v9;
    v45 = re::MaterialParameterBlock::setBuffer(v11, v311, &v290, &v313);
    v313 = 0;
    if (v293 != -1)
    {
      (off_1F5D11560[v293])(v319, &v290, v45);
    }

    v293 = -1;
    a7 = a5 + 56;
    v278 = *(a5 + 56);
    v275 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v11, a4);
    (*(*a4 + 40))(a4, v28);
    v19 = &v316;
LABEL_29:
    v9 = *&v341[16];
    if (!*&v341[16])
    {
      v7 = *a7;
      v58 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(*v22, a4);
      goto LABEL_42;
    }

    if (*&v341[16] < 0x666666666666667uLL)
    {
      v7 = 40 * *&v341[16];
      v47 = (*(*a4 + 32))(a4, 40 * *&v341[16], 8);
      if (v47)
      {
        v49 = v47;
        v50 = v47;
        if (v9 != 1)
        {
          bzero(v47, v7 - 40);
          v50 = v49 + v7 - 40;
        }

        v8 = 0;
        v11 = 0;
        *(v50 + 4) = 0;
        *v50 = 0u;
        *(v50 + 1) = 0u;
        v19 = v49 + 1;
        while (1)
        {
          a1 = *&v341[16];
          if (*&v341[16] <= v11)
          {
            break;
          }

          v51 = *(*&v341[32] + v8 + 16);
          v342[0] = *(*&v341[32] + v8);
          v342[1] = v51;
          v52 = re::PersistentShadowState::getShadowInfo(v286, v342);
          if (v9 == v11)
          {
            goto LABEL_236;
          }

          v54 = *(v52 + 240);
          v53 = *(v52 + 248);
          v55 = *(v52 + 224);
          *(v19 - 8) = WORD4(v342[1]);
          *(v19 - 8) = v55;
          *(v19 + 1) = v54;
          *(v19 + 2) = v53;
          ++v11;
          v19 = (v19 + 40);
          v8 += 32;
          if (v9 == v11)
          {
            v11 = *v22;
            *&v342[0] = 0x29BCD869CB9AA7DDLL;
            re::PerFrameAllocatorGPU::allocInternal(v267, 40 * v9, 0x10uLL, 0, v336);
            v56 = DWORD2(v336[0]);
            memcpy((*&v336[0] + *(&v336[0] + 1)), v49, 40 * v9);
            *v319 = **(&v336[1] + 1);
            *&v319[24] = 0;
            *&v319[32] = v56;
            *&v319[36] = v7;
            v57 = re::MaterialParameterBlock::setBuffer(v11, v342, v319, v336);
            *&v336[0] = 0;
            if (*&v319[24] != -1)
            {
              (off_1F5D11560[*&v319[24]])(&v290, v319, v57);
            }

            *&v319[24] = -1;
            v7 = *a7;
            v58 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v11, a4);
            (*(*a4 + 40))(a4, v49);
            v8 = a5;
            v19 = &v316;
LABEL_42:
            a7 = *&v341[16];
            v267 = v7;
            v265 = v58;
            if (!*&v341[16])
            {
              v284 = 0;
              goto LABEL_49;
            }

            if (!(*&v341[16] >> 61))
            {
              v60 = (*(*a4 + 32))(a4, 8 * *&v341[16], 8);
              if (v60)
              {
                v62 = v60;
                v63 = v60;
                if (a7 != 1)
                {
                  bzero(v60, 8 * a7 - 8);
                  v63 = &v62[a7 - 1];
                }

                v284 = v62;
                *v63 = 0;
LABEL_49:
                v11 = 0xBF58476D1CE4E5B9;
                v316 = 0uLL;
                v317 = 0;
                re::FixedArray<int>::init<>(&v316, a4, a7);
                memset(v342, 0, 36);
                *(&v342[2] + 4) = 0x7FFFFFFFLL;
                re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v342, a4, 3);
                if (a7)
                {
                  v22 = 0;
                  a1 = v319;
                  v9 = 0x7FFFFFFFLL;
                  v281 = a7;
                  v272 = a4;
                  do
                  {
                    v7 = *&v341[16];
                    if (*&v341[16] <= v22)
                    {
                      goto LABEL_240;
                    }

                    a7 = v11;
                    v64 = *&v341[32] + 32 * v22;
                    v11 = v8;
                    v19 = v286;
                    v7 = re::PersistentShadowState::getShadowInfo(v286, v64);
                    v65 = *(v8 + 72);
                    re::MaterialParameterBlock::setVector4F(v65, "receiverPlane", *v7, *(v7 + 8), &v290);
                    v290 = 0;
                    re::MaterialParameterBlock::setFloat(v343, v65, "receiverDepthNormalization", *(v7 + 16));
                    *v343 = 0;
                    re::MaterialParameterBlock::setVector4F(v65, "floorPlane", *(v7 + 32), *(v7 + 40), &v313);
                    v313 = 0;
                    re::MaterialParameterBlock::setInt(v65, "tileIndex", *(v64 + 24), v312);
                    v312[0] = 0;
                    v66 = *(v7 + 112);
                    *v319 = *(v7 + 96);
                    *&v319[16] = v66;
                    v67 = *(v7 + 144);
                    *&v319[32] = *(v7 + 128);
                    *&v319[48] = v67;
                    re::MaterialParameterBlock::setMatrix4x4F(v65, "tileProj", v319, v311);
                    v311[0] = 0;
                    LODWORD(v336[0]) = *(v11 + 204);
                    *v319 = 0x58F744A8543328D7;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v310);
                    v310[0] = 0;
                    LODWORD(v336[0]) = *(v11 + 228);
                    *v319 = 0x13276C0E66FCCEDLL;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v309);
                    v309[0] = 0;
                    LODWORD(v336[0]) = *(v11 + 232);
                    *v319 = 0x76708FF238D5F0A6;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v308);
                    v308[0] = 0;
                    v68 = cos(*(v11 + 248) * 3.14159265 / 180.0);
                    *v336 = v68;
                    *v319 = 0x7DDA5D55C0FC4FA9;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v307);
                    v307[0] = 0;
                    LODWORD(v336[0]) = *(v11 + 252);
                    *v319 = 0x17E9B59A609C84C2;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v306);
                    v306[0] = 0;
                    if (*(v7 + 64))
                    {
                      v69 = 1;
                    }

                    else
                    {
                      v69 = 2;
                    }

                    if (re::internal::shadows::g_enableShadowFlattening)
                    {
                      v70 = v69;
                    }

                    else
                    {
                      v70 = 1;
                    }

                    LODWORD(v336[0]) = v70;
                    *v319 = 0x5FE82A114F627B09;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 7, v305);
                    v305[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 48);
                    *v319 = 0x65BBCF6D7FDD200ALL;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v304);
                    v304[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 52);
                    *v319 = 0x7300C2F63F7BC750;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v303);
                    v303[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 56);
                    *v319 = 0x71A74BC906F47D1BLL;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v302);
                    v302[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 68);
                    *v319 = 0x572BFF15FAD034E6;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v301);
                    v301[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 72);
                    *v319 = 0x27F92942C5FF139DLL;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v300);
                    v300[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 76);
                    *v319 = 0x521049A67D17C4ELL;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v299);
                    v299[0] = 0;
                    LODWORD(v336[0]) = *(v7 + 80);
                    *v319 = 0x99AD6FB8E5505;
                    re::MaterialParameterBlock::setConstant(v65, v319, 4uLL, v336, 1, v298);
                    v298[0] = 0;
                    v296 = 0x3559BD29F3DDB747;
                    re::MaterialParameterBlock::setBinding(v65, &v296, "rendergraph", "MeshShadowMippedReceiverDepthColorTexture", 2, v297);
                    v296 = 0;
                    v297[0] = 0;
                    a4 = v272;
                    v284[v22] = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v65, v272);
                    v8 = *(&v316 + 1);
                    if (*(&v316 + 1) <= v22)
                    {
                      goto LABEL_244;
                    }

                    *(v317 + 4 * v22) = *(v7 + 60);
                    v71 = *(v64 + 16);
                    *v319 = *v64;
                    *&v319[8] = v71;
                    v72 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::tryGet(v286 + 128, v319);
                    v73 = *(v72 + 16);
                    v8 = a5;
                    v11 = a7;
                    v19 = &v316;
                    if (v73)
                    {
                      v74 = *(v72 + 32);
                      v75 = 16 * v73;
                      do
                      {
                        memset(&v319[8], 0, 20);
                        *&v319[32] = 0;
                        *v319 = v272;
                        re::DynamicArray<int>::setCapacity(v319, 0);
                        ++*&v319[24];
                        memset(v336, 0, 24);
                        v76 = (*v74 ^ (*v74 >> 30)) * a7;
                        re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v342, v74, (0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) ^ ((0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) >> 31), v336);
                        if (HIDWORD(v336[0]) == 0x7FFFFFFF)
                        {
                          v77 = re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v342, DWORD2(v336[0]), *&v336[0]);
                          v78 = *v74;
                          *(v77 + 16) = *v319;
                          v79 = v77 + 16;
                          *(v79 - 8) = v78;
                          *(v79 + 8) = *&v319[8];
                          memset(v319, 0, 24);
                          *(v79 + 32) = *&v319[32];
                          *&v319[32] = 0;
                          ++*&v319[24];
                          *(v79 + 24) = 1;
                          ++DWORD2(v342[2]);
                        }

                        else
                        {
                          v79 = *&v342[1] + (HIDWORD(v336[0]) << 6) + 16;
                        }

                        LODWORD(v336[0]) = v22;
                        re::DynamicArray<int>::add(v79, v336);
                        if (*v319 && *&v319[32])
                        {
                          (*(**v319 + 40))();
                        }

                        v74 += 2;
                        v75 -= 16;
                      }

                      while (v75);
                    }

                    ++v22;
                    a7 = v281;
                  }

                  while (v22 != v281);
                }

                *&v336[0] = *(v8 + 48);
                *(&v336[0] + 1) = a4;
                *&v336[1] = a7;
                *(&v336[1] + 1) = v284;
                v336[2] = v316;
                v80 = v317;
                v317 = 0;
                v316 = 0uLL;
                v81 = *(v8 + 96);
                *&v337 = v80;
                *(&v337 + 1) = v81;
                *v338 = v342[0];
                memset(v342, 0, 24);
                *&v338[16] = *&v342[1];
                v339 = *(&v342[1] + 8);
                *(&v342[1] + 8) = xmmword_1E3058120;
                v340 = 1;
                v82 = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v342);
                if (v316 && *(&v316 + 1))
                {
                  (*(*v316 + 40))(v82);
                }

                v83 = *&v341[16];
                v290 = 0;
                v291 = 0;
                __src = 0;
                re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(&v290, a4, *&v341[16]);
                v19 = v286;
                if (v83)
                {
                  v8 = 0;
                  a7 = 0;
                  v22 = v291;
                  v7 = __src;
                  do
                  {
                    v9 = *&v341[16];
                    if (*&v341[16] <= a7)
                    {
                      goto LABEL_248;
                    }

                    v84 = re::PersistentShadowState::getShadowInfo(v286, *&v341[32] + v8);
                    if (v22 == a7)
                    {
                      goto LABEL_252;
                    }

                    memcpy(v7, (v84 + 272), 0x394uLL);
                    ++a7;
                    v7 += 928;
                    v8 += 32;
                  }

                  while (v83 != a7);
                }

                memset(v342, 0, 24);
                v85 = v290;
                v19 = a5;
                if (v290)
                {
                  v7 = v291;
                  re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(v342, v290, v291);
                  if (*(&v342[0] + 1) == v7)
                  {
                    if (v7)
                    {
                      v87 = __src;
                      memmove(*&v342[1], __src, 928 * v7 - 12);
                      (*(*v85 + 40))(v85, v87);
                    }

                    goto LABEL_81;
                  }

LABEL_292:
                  re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                  _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
                  __break(1u);
LABEL_293:
                  re::internal::assertLog(6, v157, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, v7);
                  _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v255, v260);
                  __break(1u);
LABEL_294:
                  re::internal::assertLog(4, v159, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                  _os_crash("assertion failure: (m_data) Out of memory.");
                  __break(1u);
LABEL_295:
                  re::internal::assertLog(4, v88, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                  _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
                  __break(1u);
LABEL_296:
                  re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                  _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
                  __break(1u);
                  goto LABEL_297;
                }

LABEL_81:
                v7 = v319;
                v8 = &v316;
                *v319 = 0;
                *&v319[16] = 0u;
                a7 = v319;
                *&v319[8] = a4;
                *&v319[32] = a4;
                *&v319[40] = 0u;
                *&v319[56] = -1;
                memset(&v319[60], 0, 40);
                *&v319[100] = 0x7FFFFFFFLL;
                re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v319[64], a4, 3);
                memset(v321, 0, 40);
                v320 = 0u;
                *&v321[1] = a4;
                *&v322[4] = xmmword_1E3072DE0;
                *v322 = 1065353216;
                *&v322[20] = 3;
                *&v322[24] = xmmword_1E3072DF0;
                *&v322[40] = 0;
                v322[42] = 1;
                v323 = xmmword_1E3072E00;
                *v324 = 1061158912;
                v324[4] = 1;
                *&v324[8] = xmmword_1E3072E10;
                *&v324[24] = xmmword_1E3072E20;
                *&v324[40] = 0x3DCCCCCD41F00000;
                LODWORD(v325) = 1097877340;
                BYTE4(v325) = 1;
                v326 = xmmword_1E30476B0;
                LOBYTE(v327) = 1;
                *&v328 = 0x3F8000003F2D42C4;
                *(&v328 + 1) = 0x193F800000;
                v329 = xmmword_1E3072E30;
                *&v330 = 1056964608;
                DWORD2(v330) = 0x40000000;
                WORD6(v330) = 256;
                v332 = 0u;
                v333 = 0;
                *&v334 = 0;
                v331 = a4;
                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v331, 0);
                ++v333;
                *(&v334 + 1) = 0;
                v335 = 0u;
                *(&v320 + 1) = v265;
                *&v321[0] = v278;
                *(&v321[0] + 1) = v275;
                *&v320 = v267;
                *v319 = *&v336[0];
                v89 = *&v319[8];
                if (*&v319[8] && *&v319[8] != *(&v336[0] + 1))
                {
                  goto LABEL_295;
                }

                v7 = v336;
                v90 = *&v319[16];
                v91 = *&v319[24];
                *&v319[8] = *(&v336[0] + 1);
                *&v319[16] = v336[1];
                *(&v336[0] + 1) = v89;
                *&v336[1] = v90;
                *(&v336[1] + 1) = v91;
                re::FixedArray<float>::operator=(&v319[32], &v336[2]);
                v93 = *v338;
                *&v319[56] = *(&v337 + 1);
                v94 = *&v319[64];
                if (!*&v319[64] || *&v319[64] == *v338)
                {
                  *&v319[64] = *v338;
                  *v338 = v94;
                  v99 = *&v319[72];
                  *&v319[72] = *&v338[8];
                  *&v338[8] = v99;
                  v100 = *&v319[88];
                  *&v319[88] = v339;
                  v339 = v100;
                  goto LABEL_100;
                }

                if (*&v319[92])
                {
                  if (*&v319[88])
                  {
                    memset_pattern16(*&v319[72], &unk_1E304C660, 4 * *&v319[88]);
                  }

                  v95 = *&v319[96];
                  if (*&v319[96])
                  {
                    v96 = 0;
                    v8 = 0;
                    do
                    {
                      v97 = *&v319[80];
                      v98 = *(*&v319[80] + v96);
                      if (v98 < 0)
                      {
                        *(*&v319[80] + v96) = v98 & 0x7FFFFFFF;
                        re::DynamicArray<unsigned long>::deinit(v97 + v96 + 16);
                        v95 = *&v319[96];
                      }

                      ++v8;
                      v96 += 64;
                    }

                    while (v8 < v95);
                    v93 = *v338;
                  }

                  *&v319[96] = 0;
                  *&v319[92] = 0;
                  *&v319[100] = 0x7FFFFFFF;
                  ++*&v319[104];
                }

                if (v93)
                {
                  if (*&v319[88] < DWORD1(v339))
                  {
                    re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(&v319[64], DWORD1(v339));
                  }

                  re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(&v319[64], v338);
LABEL_100:
                  ++*&v319[104];
                }

                v101 = *&v321[1];
                if (*&v321[1] && *&v321[1] != *&v342[0])
                {
                  goto LABEL_296;
                }

                v102 = *(&v321[1] + 1);
                v103 = *&v321[2];
                v321[1] = v342[0];
                *&v342[0] = v101;
                *(&v342[0] + 1) = v102;
                *&v321[2] = *&v342[1];
                *&v342[1] = v103;
                if (v331)
                {
                  if (*v341)
                  {
                    re::DynamicArray<re::AllocatedShadowHandle>::copy(&v331, v341);
                  }

                  else
                  {
                    *(&v332 + 1) = 0;
                  }

                  ++v333;
                }

                else if (*v341)
                {
                  v331 = *v341;
                  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v331, *&v341[16]);
                  ++v333;
                  re::DynamicArray<re::AllocatedShadowHandle>::copy(&v331, v341);
                }

                v104 = *(a5 + 320);
                v328 = *(a5 + 304);
                v329 = v104;
                v330 = *(a5 + 336);
                v105 = *(a5 + 256);
                *&v324[32] = *(a5 + 240);
                v325 = v105;
                v106 = *(a5 + 288);
                v326 = *(a5 + 272);
                v327 = v106;
                v107 = *(a5 + 192);
                *&v322[32] = *(a5 + 176);
                v323 = v107;
                v108 = *(a5 + 224);
                *v324 = *(a5 + 208);
                *&v324[16] = v108;
                v109 = *(a5 + 160);
                *v322 = *(a5 + 144);
                *&v322[16] = v109;
                v110 = *(&v334 + 1);
                if (!*(&v334 + 1) || *(&v334 + 1) == v288)
                {
                  v111 = v335;
                  *(&v334 + 1) = v288;
                  v335 = v289;
                  v288 = v110;
                  v289 = v111;
                  v112 = "N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE";
                  if (("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x8000000000000000) != 0)
                  {
                    v113 = ("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
                    v114 = 5381;
                    do
                    {
                      v112 = v114;
                      v115 = *v113++;
                      v114 = (33 * v114) ^ v115;
                    }

                    while (v115);
                  }

                  v290 = (qword_1EE1BF0E0 + (v112 << 6) + (v112 >> 2) - 0x61C8864680B583E9) ^ v112;
                  v116 = (*(**(a6 + 40) + 32))(*(a6 + 40), 464, 16);
                  *v116 = &unk_1F5D11598;
                  *(v116 + 16) = *v319;
                  v117 = *&v319[16];
                  *&v319[8] = 0u;
                  *(v116 + 32) = v117;
                  *(v116 + 40) = *&v319[24];
                  *&v319[24] = 0u;
                  v118 = *&v319[48];
                  *(v116 + 56) = *&v319[40];
                  *(v116 + 64) = v118;
                  *&v319[40] = 0;
                  *&v319[48] = 0;
                  *(v116 + 72) = *&v319[56];
                  *(v116 + 112) = 0;
                  *(v116 + 80) = *&v319[64];
                  *&v319[64] = 0u;
                  *(v116 + 96) = *&v319[80];
                  *(v116 + 104) = *&v319[88];
                  *&v319[88] = xmmword_1E3058120;
                  *(v116 + 120) = 1;
                  v119 = v321[0];
                  *(v116 + 128) = v320;
                  *(v116 + 144) = v119;
                  v120 = v321[1];
                  v321[1] = 0u;
                  *(v116 + 160) = v120;
                  *(v116 + 176) = *&v321[2];
                  *&v319[80] = 0;
                  *&v321[2] = 0;
                  *(v116 + 192) = *v322;
                  v121 = *&v322[16];
                  v122 = *&v322[32];
                  v123 = *v324;
                  *(v116 + 240) = v323;
                  *(v116 + 256) = v123;
                  *(v116 + 208) = v121;
                  *(v116 + 224) = v122;
                  v124 = *&v324[16];
                  v125 = *&v324[32];
                  v126 = v326;
                  *(v116 + 304) = v325;
                  *(v116 + 320) = v126;
                  *(v116 + 272) = v124;
                  *(v116 + 288) = v125;
                  v127 = v327;
                  v128 = v328;
                  v129 = v330;
                  *(v116 + 368) = v329;
                  *(v116 + 384) = v129;
                  *(v116 + 336) = v127;
                  *(v116 + 352) = v128;
                  *(v116 + 424) = 0;
                  *(v116 + 400) = v331;
                  v331 = 0;
                  v130 = v332;
                  v332 = 0u;
                  *(v116 + 408) = v130;
                  ++v333;
                  *(v116 + 424) = 1;
                  *(v116 + 432) = v334;
                  v334 = 0u;
                  v131 = *(&v335 + 1);
                  *(v116 + 448) = v335;
                  *(v116 + 456) = v131;
                  v335 = 0uLL;
                  *v343 = v116;
                  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a6 + 96, &v290, v343);
                  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(&v334 + 1);
                  if (v331)
                  {
                    if (v334)
                    {
                      (*(*v331 + 40))();
                    }

                    *&v334 = 0;
                    v332 = 0uLL;
                    v331 = 0;
                    ++v333;
                  }

                  if (*&v321[1])
                  {
                    if (*(&v321[1] + 1))
                    {
                      (*(**&v321[1] + 40))();
                      *(&v321[1] + 1) = 0;
                      *&v321[2] = 0;
                    }

                    *&v321[1] = 0;
                  }

                  v132.n128_f64[0] = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(&v319[64]);
                  if (*&v319[32])
                  {
                    if (*&v319[40])
                    {
                      (*(**&v319[32] + 40))(v132.n128_f64[0]);
                      *&v319[40] = 0;
                      *&v319[48] = 0;
                    }

                    *&v319[32] = 0;
                  }

                  if (*&v319[8] && *&v319[16])
                  {
                    (*(**&v319[8] + 40))(v132);
                  }

                  if (*&v342[0] && *(&v342[0] + 1))
                  {
                    (*(**&v342[0] + 40))(v132);
                  }

                  v133.n128_f64[0] = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v338);
                  if (*&v336[2])
                  {
                    if (*(&v336[2] + 1))
                    {
                      (*(**&v336[2] + 40))(v133.n128_f64[0]);
                      *(&v336[2] + 1) = 0;
                      *&v337 = 0;
                    }

                    *&v336[2] = 0;
                  }

                  if (*(&v336[0] + 1) && *&v336[1])
                  {
                    (*(**(&v336[0] + 1) + 40))(v133);
                  }

                  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(&v288);
                  v7 = *(a5 + 16);
                  if (!v7)
                  {
LABEL_162:
                    v154 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v341[40]);
                    if (*v341 && *&v341[32])
                    {
                      (*(**v341 + 40))(v154);
                    }

                    a7 = v269;
                    a1 = v286;
                    v11 = v266;
                    goto LABEL_166;
                  }

                  v22 = 0;
                  v9 = "N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE";
                  a1 = 0x7FFFFFFFLL;
                  while (1)
                  {
                    v134 = *(a5 + 32) + 32 * v22;
                    a7 = *(v134 + 24);
                    v290 = a7;
                    if (v7 <= v22)
                    {
                      goto LABEL_256;
                    }

                    v136 = *v134;
                    v135 = *(v134 + 8);
                    v137 = strlen(*v134);
                    if (v137)
                    {
                      MurmurHash3_x64_128(v136, v137, 0, v319);
                      v8 = ((*&v319[8] - 0x61C8864680B583E9 + (*v319 << 6) + (*v319 >> 2)) ^ *v319) - 0x61C8864680B583E9;
                      a7 = v290;
                    }

                    else
                    {
                      v8 = 0x9E3779B97F4A7C17;
                    }

                    v138 = v135 >> 1;
                    *v319 = a7;
                    *&v319[8] = v138;
                    v139 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(&v341[40], v319);
                    if (v139)
                    {
                      v140 = v139;
                      v141 = 0;
                      v142 = *(a3 + 32);
                      v143 = 368 * *(a3 + 16);
                      do
                      {
                        if (*(v142 + 360) == v138)
                        {
                          v141 = v142;
                        }

                        v142 += 368;
                        v143 -= 368;
                      }

                      while (v143);
                      v144 = 0x94D049BB133111EBLL * (((v290 ^ (v290 >> 30)) * v11) ^ (((v290 ^ (v290 >> 30)) * v11) >> 27));
                      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v141 + 264, &v290, v144 ^ (v144 >> 31), v319);
                      if (*&v319[12] == 0x7FFFFFFF)
                      {
                        v145 = 0;
                      }

                      else
                      {
                        v145 = *(v141 + 280) + 72 * *&v319[12] + 16;
                      }

                      memset(v319, 0, 36);
                      *&v319[36] = 0x7FFFFFFFLL;
                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v319, a4, 3);
                      *&v319[48] = 0;
                      memset(v342, 0, 48);
                      DWORD1(v342[2]) = 0x7FFFFFFF;
                      if (v145)
                      {
                        v147 = v145;
                      }

                      else
                      {
                        v147 = v342;
                      }

                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v336, v147);
                      *&v337 = *v140;
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v342);
                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v319, v336);
                      *&v319[48] = v337;
                      v148.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v336);
                      v149 = "N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE";
                      if (("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x8000000000000000) != 0)
                      {
                        v150 = 5381;
                        v151 = ("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
                        do
                        {
                          v149 = v150;
                          v152 = *v151++;
                          v150 = (33 * v150) ^ v152;
                        }

                        while (v152);
                      }

                      *&v336[0] = (((v8 + (_MergedGlobals_511 << 6) + (_MergedGlobals_511 >> 2)) ^ _MergedGlobals_511) - 0x61C8864680B583E9 + (v149 << 6) + (v149 >> 2)) ^ v149;
                      v153 = (*(**(a6 + 40) + 32))(*(a6 + 40), 64, 8, v148);
                      *v153 = &unk_1F5D115D8;
                      *(v153 + 40) = 0;
                      *(v153 + 48) = 0;
                      *(v153 + 8) = *v319;
                      *(v153 + 16) = *&v319[8];
                      *v319 = 0;
                      *&v319[8] = 0;
                      *(v153 + 24) = *&v319[16];
                      *(v153 + 32) = 0;
                      *&v319[16] = 0;
                      *(v153 + 32) = *&v319[24];
                      *(v153 + 40) = *&v319[32];
                      *&v319[24] = xmmword_1E3058120;
                      *(v153 + 56) = *&v319[48];
                      *&v342[0] = v153;
                      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a6 + 96, v336, v342);
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v319);
                    }

                    ++v22;
                    v7 = *(a5 + 16);
                    if (v7 <= v22)
                    {
                      goto LABEL_162;
                    }
                  }
                }

LABEL_297:
                re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
                __break(1u);
LABEL_298:
                re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, v9);
                _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v256, v261);
                __break(1u);
                goto LABEL_299;
              }

LABEL_291:
              re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash("assertion failure: (m_data) Out of memory.");
              __break(1u);
              goto LABEL_292;
            }

LABEL_290:
            re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a7);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v254, v259);
            __break(1u);
            goto LABEL_291;
          }
        }

        *&v342[0] = 0;
        memset(v319, 0, 80);
        v210 = MEMORY[0x1E69E9C10];
        v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v211)
        {
          v212 = 3;
        }

        else
        {
          v212 = 2;
        }

        *(v336 + 14) = 797;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = v11;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = a1;
        _os_log_send_and_compose_impl(v212, v342, v319, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_236:
        v290 = 0;
        memset(v319, 0, 80);
        v213 = MEMORY[0x1E69E9C10];
        v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v214)
        {
          v215 = 3;
        }

        else
        {
          v215 = 2;
        }

        *(v336 + 14) = 468;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = v9;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v9;
        _os_log_send_and_compose_impl(v215, &v290, v319, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_240:
        v318 = 0;
        v19[5] = 0u;
        v19[6] = 0u;
        v19[3] = 0u;
        v19[4] = 0u;
        v19[2] = 0u;
        v216 = MEMORY[0x1E69E9C10];
        v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v217)
        {
          v218 = 3;
        }

        else
        {
          v218 = 2;
        }

        *(v336 + 14) = 797;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = v22;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v7;
        _os_log_send_and_compose_impl(v218, &v318, v319, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_244:
        v318 = 0;
        memset(v319, 0, 80);
        v219 = MEMORY[0x1E69E9C10];
        v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v220)
        {
          v221 = 3;
        }

        else
        {
          v221 = 2;
        }

        *(v336 + 14) = 468;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = v22;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v8;
        _os_log_send_and_compose_impl(v221, &v318, v319, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_248:
        *v343 = 0;
        memset(v319, 0, 80);
        v222 = MEMORY[0x1E69E9C10];
        v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        if (v223)
        {
          v224 = 3;
        }

        else
        {
          v224 = 2;
        }

        *(v342 + 14) = 797;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = a7;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v9;
        _os_log_send_and_compose_impl(v224, v343, v319, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_252:
        *v343 = 0;
        memset(v319, 0, 80);
        v225 = MEMORY[0x1E69E9C10];
        v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v342[0]) = 136315906;
        *(v342 + 4) = "operator[]";
        WORD6(v342[0]) = 1024;
        if (v226)
        {
          v227 = 3;
        }

        else
        {
          v227 = 2;
        }

        *(v342 + 14) = 468;
        WORD1(v342[1]) = 2048;
        *(&v342[1] + 4) = v22;
        WORD6(v342[1]) = 2048;
        *(&v342[1] + 14) = v22;
        _os_log_send_and_compose_impl(v227, v343, v319, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_256:
        *&v342[0] = 0;
        memset(v319, 0, 80);
        v228 = MEMORY[0x1E69E9C10];
        v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v229)
        {
          v230 = 3;
        }

        else
        {
          v230 = 2;
        }

        *(v336 + 14) = 789;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = v22;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v7;
        _os_log_send_and_compose_impl(v230, v342, v319, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_260:
        *&v342[0] = 0;
        memset(v319, 0, 80);
        v231 = MEMORY[0x1E69E9C10];
        v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v232)
        {
          v233 = 3;
        }

        else
        {
          v233 = 2;
        }

        *(v336 + 14) = 797;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = a7;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v11;
        _os_log_send_and_compose_impl(v233, v342, v319, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_264:
        *v343 = 0;
        memset(v319, 0, 80);
        v234 = MEMORY[0x1E69E9C10];
        v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v336[0]) = 136315906;
        *(v336 + 4) = "operator[]";
        WORD6(v336[0]) = 1024;
        if (v235)
        {
          v236 = 3;
        }

        else
        {
          v236 = 2;
        }

        *(v336 + 14) = 468;
        WORD1(v336[1]) = 2048;
        *(&v336[1] + 4) = a7;
        WORD6(v336[1]) = 2048;
        *(&v336[1] + 14) = v9;
        _os_log_send_and_compose_impl(v236, v343, v319, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v336, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_268:
        v312[0] = 0;
        v337 = 0u;
        *v338 = 0u;
        memset(v336, 0, sizeof(v336));
        v237 = MEMORY[0x1E69E9C10];
        v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v343 = 136315906;
        *&v343[4] = "operator[]";
        v344 = 1024;
        if (v238)
        {
          v239 = 3;
        }

        else
        {
          v239 = 2;
        }

        v345 = 468;
        v346 = 2048;
        v347 = a7;
        v348 = 2048;
        v349 = v22;
        _os_log_send_and_compose_impl(v239, v312, v336, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v343, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_272:
        *&v342[0] = 0;
        memset(v319, 0, 80);
        v240 = MEMORY[0x1E69E9C10];
        v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v341 = 136315906;
        *&v341[4] = "operator[]";
        *&v341[12] = 1024;
        if (v241)
        {
          v242 = 3;
        }

        else
        {
          v242 = 2;
        }

        *&v341[14] = 468;
        *&v341[18] = 2048;
        *&v341[20] = v22;
        *&v341[28] = 2048;
        *&v341[30] = v19;
        _os_log_send_and_compose_impl(v242, v342, v319, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v341, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
LABEL_276:
        *&v342[0] = 0;
        memset(v319, 0, 80);
        v243 = MEMORY[0x1E69E9C10];
        v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v341 = 136315906;
        *&v341[4] = "operator[]";
        *&v341[12] = 1024;
        if (v244)
        {
          v245 = 3;
        }

        else
        {
          v245 = 2;
        }

        *&v341[14] = 468;
        *&v341[18] = 2048;
        *&v341[20] = v22;
        *&v341[28] = 2048;
        *&v341[30] = v7;
        _os_log_send_and_compose_impl(v245, v342, v319, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v341, 38, v262, v263);
        _os_crash_msg();
        __break(1u);
        goto LABEL_280;
      }

LABEL_289:
      re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_290;
    }

LABEL_288:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v9);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v253, v258);
    __break(1u);
    goto LABEL_289;
  }

LABEL_299:
  v262 = "init";
  v263 = 327;
  re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data");
  _os_crash("assertion failure: (m_data) Out of memory.");
  __break(1u);
  while (1)
  {
    v249 = v336[0];
    re::StringID::destroyString(v319);
    if (v249)
    {
      goto LABEL_8;
    }

LABEL_166:
    LODWORD(v15) = *(v11 + 64) != 0;
LABEL_167:
    if (*(v11 + 28))
    {
      _ZF = 0;
    }

    else
    {
      _ZF = v15 == 0;
    }

    if (_ZF)
    {
      *a7 = 0;
      return;
    }

    re::WorldOrderedShadows::create(a1 + 80, v336);
    v7 = *&v336[1];
    if (!*&v336[1])
    {
      memset(v319, 0, 36);
      *&v319[36] = 0x7FFFFFFFLL;
      *&v319[48] = *&v336[0];
      memset(v336, 0, 24);
      *&v319[56] = *(v336 + 8);
      ++DWORD2(v336[1]);
      *&v319[80] = v336[2];
      *&v319[96] = v337;
      v336[2] = 0u;
      v337 = 0u;
      v320 = *v338;
      *v338 = xmmword_1E3058120;
      *&v319[72] = 1;
      LODWORD(v321[0]) = 1;
      *(&v321[0] + 1) = 0;
      *(&v321[1] + 8) = 0u;
      goto LABEL_224;
    }

    v314 = 0;
    v313 = 0;
    v315 = 0;
    re::FixedArray<re::Matrix4x4<float>>::init<>(&v313, a4, *&v336[1]);
    if (v7 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_293;
    }

    v11 = 96 * v7;
    v158 = (*(*a4 + 32))(a4, 96 * v7, 16);
    if (!v158)
    {
      goto LABEL_294;
    }

    v160 = v158;
    v161 = v158;
    v162 = v7 - 1;
    if (v7 != 1)
    {
      v161 = v158;
      do
      {
        *(v161 + 64) = 0uLL;
        *(v161 + 80) = 0uLL;
        *(v161 + 32) = 0uLL;
        *(v161 + 48) = 0uLL;
        *(v161 + 8) = 0;
        *(v161 + 16) = 0;
        *v161 = 0;
        *(v161 + 24) = 0;
        v161 += 96;
        --v162;
      }

      while (v162);
    }

    *(v161 + 64) = 0u;
    *(v161 + 80) = 0u;
    *(v161 + 32) = 0u;
    *(v161 + 48) = 0u;
    *(v161 + 8) = 0;
    *(v161 + 16) = 0;
    *v161 = 0;
    *(v161 + 24) = 0;
    if (*&v336[1])
    {
      v22 = 0;
      a7 = 1;
      v9 = 96;
      do
      {
        v8 = *&v336[2] + 32 * v22;
        v163 = re::PersistentShadowState::getShadowInfo(a1, v8);
        v19 = v314;
        if (v314 <= v22)
        {
          goto LABEL_272;
        }

        v164 = (v315 + (v22 << 6));
        v165 = *(v163 + 1200);
        v166 = *(v163 + 1216);
        v167 = *(v163 + 1248);
        v164[2] = *(v163 + 1232);
        v164[3] = v167;
        *v164 = v165;
        v164[1] = v166;
        if (v7 <= v22)
        {
          goto LABEL_276;
        }

        v168 = v160 + 96 * v22;
        *(v168 + 16) = *(v163 + 1264);
        *(v168 + 20) = *(v163 + 1268);
        *v168 = *(v163 + 1280);
        *(v168 + 24) = *(v8 + 24);
        v169 = *(v163 + 1328);
        v170 = *(v163 + 1344);
        v171 = *(v163 + 1360);
        *(v168 + 32) = *(v163 + 1312);
        *(v168 + 48) = v169;
        *(v168 + 64) = v170;
        *(v168 + 80) = v171;
        v22 = a7;
        v44 = *&v336[1] > a7;
        a7 = (a7 + 1);
      }

      while (v44);
    }

    v172 = [*(v268 + 208) newBufferWithBytes:v315 length:v7 << 6 options:0];
    v8 = [*(v268 + 208) newBufferWithBytes:v160 length:v11 options:0];
    v9 = *(a5 + 88);
    if (v9)
    {
      v173 = (v9 + 8);
    }

    v311[0] = 0x26B98E39084D2FA1;
    *v319 = v172;
    *&v319[24] = 0;
    *&v319[32] = 0;
    *&v319[36] = [v172 length];
    v174 = re::MaterialParameterBlock::setBuffer(v9, v311, v319, v342);
    *&v342[0] = 0;
    if (*&v319[24] != -1)
    {
      (off_1F5D11560[*&v319[24]])(v341, v319, v174);
    }

    *&v319[24] = -1;
    v311[0] = 0;
    v310[0] = 0x5A438D3F6E44D7FFLL;
    *v341 = v8;
    *&v341[24] = 0;
    *&v341[32] = 0;
    *&v341[36] = [v8 length];
    v175 = re::MaterialParameterBlock::setBuffer(v9, v310, v341, &v290);
    v290 = 0;
    if (*&v341[24] != -1)
    {
      (off_1F5D11560[*&v341[24]])(v343, v341, v175);
    }

    *&v341[24] = -1;
    v310[0] = 0;
    v176 = cos(*(a5 + 244) * 3.14159265 / 180.0);
    *v309 = v176;
    v312[0] = 0x7DDA5D55C0FC4FA9;
    v177.n128_f64[0] = re::MaterialParameterBlock::setConstant(v9, v312, 4uLL, v309, 1, v343);
    *v343 = 0;
    if (v9)
    {
      v178 = (v9 + 8);
    }

    if (v8)
    {
    }

    if (v172)
    {
    }

    (*(*a4 + 40))(a4, v160, v177);
    v179 = v313;
    if (v313 && v314)
    {
      v179 = (*(*v313 + 40))();
    }

    memset(v342, 0, 24);
    v285 = v9;
    if (!*&v336[1])
    {
      break;
    }

    v7 = 0;
    v181 = 1;
    a7 = *(&v342[0] + 1);
    v11 = *&v342[1];
    a4 = 96;
    while (1)
    {
      v182 = *&v336[2] + 32 * v7;
      v180 = re::PersistentShadowState::getShadowInfo(a1, v182);
      if (a7 <= v7)
      {
        break;
      }

      v183 = *(v180 + 1816);
      v184 = *(v182 + 24);
      v185 = *(v180 + 1808);
      v186 = *(v180 + 1792);
      v187 = v11 + 96 * v7;
      v188 = *(v180 + 1728);
      v189 = *(v180 + 1744);
      v190 = *(v180 + 1776);
      *(v187 + 32) = *(v180 + 1760);
      *(v187 + 48) = v190;
      *v187 = v188;
      *(v187 + 16) = v189;
      *(v187 + 64) = v186;
      *(v187 + 80) = v185;
      *(v187 + 84) = v184;
      *(v187 + 88) = v183;
      v7 = v181;
      v44 = *&v336[1] > v181++;
      if (!v44)
      {
        v279 = v11;
        v282 = a7;
        goto LABEL_205;
      }
    }

LABEL_280:
    v290 = 0;
    memset(v319, 0, 80);
    v246 = MEMORY[0x1E69E9C10];
    v247 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v341 = 136315906;
    *&v341[4] = "operator[]";
    *&v341[12] = 1024;
    if (v247)
    {
      v248 = 3;
    }

    else
    {
      v248 = 2;
    }

    *&v341[14] = 468;
    *&v341[18] = 2048;
    *&v341[20] = v7;
    *&v341[28] = 2048;
    *&v341[30] = a7;
    _os_log_send_and_compose_impl(v248, &v290, v319, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v341, 38, v262, v263);
    v18 = _os_crash_msg();
    __break(1u);
LABEL_284:
    *v319 = 0xAD90622DE24C6320;
    *&v319[8] = "meshshadow:enableShadow";
    LOBYTE(v336[0]) = 0;
    if (re::DebugSettingsManager::getWithErrorCode<BOOL>(v18, v319, v336))
    {
      re::StringID::destroyString(v319);
      goto LABEL_8;
    }
  }

  v282 = *(&v342[0] + 1);
  v279 = *&v342[1];
LABEL_205:
  v276 = *&v342[0];
  memset(v341, 0, 36);
  *&v341[36] = 0x7FFFFFFFLL;
  v192 = *(a3 + 16);
  if (v192)
  {
    v193 = *(a3 + 32);
    v287 = v193 + 368 * v192;
    do
    {
      v194 = *(v193 + 296);
      if (v194)
      {
        v195 = 0;
        v196 = *(v193 + 280);
        while (1)
        {
          v197 = *v196;
          v196 += 18;
          if (v197 < 0)
          {
            break;
          }

          if (v194 == ++v195)
          {
            LODWORD(v195) = *(v193 + 296);
            break;
          }
        }
      }

      else
      {
        LODWORD(v195) = 0;
      }

LABEL_221:
      while (v195 != v194)
      {
        v198 = *(v193 + 280);
        v199 = *(v198 + 72 * v195 + 8);
        v200 = *(v193 + 360);
        memset(v319, 0, 24);
        v201 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v199 ^ (v199 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v199 ^ (v199 >> 30))) >> 27));
        v202 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v200 ^ (v200 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v200 ^ (v200 >> 30))) >> 27));
        re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(v319, v341, v199, v200, ((v202 ^ (v202 >> 31)) - 0x61C8864680B583E9 + ((v201 ^ (v201 >> 31)) << 6) + ((v201 ^ (v201 >> 31)) >> 2)) ^ v201 ^ (v201 >> 31));
        if (*&v319[12] == 0x7FFFFFFF)
        {
          v203 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v341, *&v319[8], *v319);
          *(v203 + 8) = v199;
          *(v203 + 16) = v200;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v203 + 24, v198 + 72 * v195 + 16);
          ++*&v341[40];
        }

        v204 = *(v193 + 296);
        if (v204 <= v195 + 1)
        {
          v204 = v195 + 1;
        }

        while (v204 - 1 != v195)
        {
          LODWORD(v195) = v195 + 1;
          if ((*(*(v193 + 280) + 72 * v195) & 0x80000000) != 0)
          {
            goto LABEL_221;
          }
        }

        LODWORD(v195) = v204;
      }

      v193 += 368;
    }

    while (v193 != v287);
  }

  *v319 = *v341;
  memset(v341, 0, 24);
  *&v319[16] = *&v341[16];
  *&v319[24] = *&v341[24];
  *&v341[24] = xmmword_1E3058120;
  *&v319[40] = 1;
  *&v319[48] = *&v336[0];
  memset(v336, 0, 24);
  *&v319[56] = *(v336 + 8);
  ++DWORD2(v336[1]);
  *&v319[80] = v336[2];
  *&v319[96] = v337;
  v336[2] = 0u;
  v337 = 0u;
  v320 = *v338;
  *v338 = xmmword_1E3058120;
  *&v319[72] = 1;
  LODWORD(v321[0]) = 1;
  *(&v321[0] + 1) = v285;
  *&v321[1] = v276;
  *(&v321[1] + 1) = v282;
  *&v321[2] = v279;
  re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v341);
  a7 = v269;
LABEL_224:
  v205 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v336[2] + 1);
  if (*&v336[0] && *&v336[2])
  {
    (*(**&v336[0] + 40))(v205);
  }

  v206 = *&v319[48];
  *(a7 + 24) = *&v319[16];
  *a7 = 1;
  *(a7 + 8) = *v319;
  *v319 = 0u;
  *(a7 + 32) = *&v319[24];
  *(a7 + 64) = *&v319[56];
  v207 = *&v319[96];
  *(a7 + 88) = *&v319[80];
  *&v319[24] = xmmword_1E3058120;
  *(a7 + 48) = 1;
  *(a7 + 56) = v206;
  *&v319[16] = 0;
  memset(&v319[48], 0, 24);
  ++*&v319[72];
  *(a7 + 80) = 1;
  *(a7 + 104) = v207;
  memset(&v319[80], 0, 32);
  *(a7 + 120) = v320;
  v320 = xmmword_1E3058120;
  *(a7 + 136) = 1;
  *(a7 + 144) = *(v321 + 8);
  *(v321 + 8) = 0u;
  v208 = *&v321[2];
  *(a7 + 160) = *(&v321[1] + 1);
  *(a7 + 168) = v208;
  *(&v321[1] + 1) = 0;
  *&v321[2] = 0;
  v209 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v319[88]);
  if (*&v319[48])
  {
    if (*&v319[80])
    {
      (*(**&v319[48] + 40))(v209);
    }

    *&v319[80] = 0;
    memset(&v319[48], 0, 24);
    ++*&v319[72];
  }

  re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v319);
}

uint64_t *re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(uint64_t a1, re::PersistentShadowState *a2, uint64_t a3, re::MaterialParameterTableBuilder *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v218 = *MEMORY[0x1E69E9840];
  v10 = *(a8 + 8);
  v11 = v10[14];
  if (v11)
  {
    v12 = *(v11 + 320);
  }

  else
  {
    v12 = 0;
  }

  result = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v12, *(v10[18] + 24) & 0xFFFFFFFFFFFFFFFLL | (*(v10[18] + 16) << 60));
  v15 = a3;
  if (!*(a3 + 64))
  {
    return result;
  }

  v16 = result;
  v201 = *(a3 + 64);
  if ((atomic_load_explicit(&qword_1EE1BF0F8, memory_order_acquire) & 1) == 0)
  {
    v188 = __cxa_guard_acquire(&qword_1EE1BF0F8);
    v15 = a3;
    if (v188)
    {
      qword_1EE1BF0F0 = re::hashString("ProjectiveMeshShadow", v14);
      __cxa_guard_release(&qword_1EE1BF0F8);
      v15 = a3;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1BF108, memory_order_acquire) & 1) == 0)
  {
    v189 = __cxa_guard_acquire(&qword_1EE1BF108);
    v15 = a3;
    if (v189)
    {
      v190 = v10;
      v191 = qword_1EE1BF0F0;
      v192 = ((v191 << 6) - 0x61C8864680B583E9 + (v191 >> 2) + re::hashString("RenderFrame", v14)) ^ v191;
      v10 = v190;
      qword_1EE1BF100 = v192;
      __cxa_guard_release(&qword_1EE1BF108);
      v15 = a3;
    }
  }

  v203 = a5;
  v199 = v10;
  v200 = v10[12];
  if (v200)
  {
    goto LABEL_197;
  }

  while (1)
  {
    while (1)
    {
      v17 = *(a5 + 40);
      v18 = *(v15 + 64);
      v19 = *(v15 + 136);
      if (!v18)
      {
        goto LABEL_34;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_200;
      }

      v20 = 2 * v18;
      v21 = (*(*a4 + 32))(a4, 2 * v18, 2);
      if (v21)
      {
        break;
      }

LABEL_201:
      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_202:
      v187 = v212[0];
      re::StringID::destroyString(v213);
      v15 = a3;
      if (v187 != 1)
      {
        v90 = 1;
        goto LABEL_66;
      }
    }

    v23 = v21;
    v197 = v16;
    v24 = v21;
    if (v18 != 1)
    {
      bzero(v21, v20 - 2);
      v24 = &v23[v20 / 2 - 1];
    }

    *v24 = 0;
    v25 = a3;
    if (*(a3 + 64))
    {
      a5 = 0;
      v16 = 0;
      do
      {
        v26 = (*(v25 + 80) + 32 * a5);
        v27 = *v26;
        v210[0] = *v26;
        v28 = *(a7 + 16);
        _H0 = 0;
        if (v28)
        {
          v31 = v26[1];
          v30 = v26[2];
          v32 = *(a7 + 32) + 312;
          v33 = 368 * v28;
          while (*(v32 + 48) != v30)
          {
            v32 += 368;
            v33 -= 368;
            if (!v33)
            {
              goto LABEL_29;
            }
          }

          if (*v32)
          {
            v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
            v35 = *(*(v32 + 8) + 4 * ((v34 ^ (v34 >> 31)) % *(v32 + 24)));
            if (v35 != 0x7FFFFFFF)
            {
              v36 = *(v32 + 16);
              while (*(v36 + 40 * v35 + 8) != v27)
              {
                v35 = *(v36 + 40 * v35) & 0x7FFFFFFF;
                if (v35 == 0x7FFFFFFF)
                {
                  goto LABEL_29;
                }
              }

              v37 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v32, v210);
              v25 = a3;
              _S0 = *v37;
              if (v31)
              {
                _S0 = *v37 * (1.0 - v37[1]);
              }

              __asm { FCVT            H0, S0 }
            }
          }
        }

LABEL_29:
        if (v18 <= a5)
        {
          goto LABEL_193;
        }

        v23[a5] = _H0;
        a5 = (v16 + 1);
        v16 = a5;
      }

      while (*(v25 + 64) > a5);
    }

    re::PerFrameAllocatorGPU::allocInternal(v197, 2 * v18, 0x10uLL, 0, v212);
    v42 = *&v212[8];
    memcpy((*v212 + *&v212[8]), v23, v20);
    *&v213[0] = **&v212[24];
    DWORD2(v213[1]) = 0;
    *v214 = v42;
    *&v214[4] = v20;
    re::MaterialParameterBlock::setBuffer(v19, "receiverPerFrameParameterArray", v213, v212);
    *v212 = 0;
    if (DWORD2(v213[1]) != -1)
    {
      (off_1F5D11560[DWORD2(v213[1])])(v215, v213);
    }

    DWORD2(v213[1]) = -1;
    (*(*a4 + 40))(a4, v23);
    a5 = v203;
    v15 = a3;
LABEL_34:
    LODWORD(v209[0]) = v17;
    v210[0] = 0x114714ADE9B09C5FLL;
    v18 = v15;
    re::MaterialParameterBlock::setConstant(v19, v210, 4uLL, v209, 1, v215);
    *v215 = 0;
    v43 = *(a5 + 64);
    a5 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v19, a4);
    v44 = *(v18 + 152);
    v45 = *(v18 + 160);
    memset(v215, 0, 24);
    re::FixedArray<re::MeshReceiverPerShadowConstants>::init<>(v215, a4, v44);
    if (*&v215[8] != v44)
    {
      re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
      __break(1u);
LABEL_200:
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, v18);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v193, v194);
      __break(1u);
      goto LABEL_201;
    }

    v47 = *&v215[16];
    if (v44)
    {
      memmove(*&v215[16], v45, 96 * v44 - 4);
    }

    v48 = a3;
    if (!*(a3 + 64))
    {
      break;
    }

    v198 = a5;
    a5 = 0;
    v49 = 0;
    v50 = 96;
    v16 = 368;
    v18 = 40;
    while (1)
    {
      v51 = (*(v48 + 80) + 32 * a5);
      v52 = *v51;
      v209[0] = *v51;
      v53 = *(a7 + 16);
      if (!v53)
      {
        goto LABEL_49;
      }

      v55 = v51[1];
      v54 = v51[2];
      v56 = *(a7 + 32) + 312;
      v57 = 368 * v53;
      while (*(v56 + 48) != v54)
      {
        v56 += 368;
        v57 -= 368;
        if (!v57)
        {
          goto LABEL_49;
        }
      }

      if (*v56 && (v58 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) >> 27)), v59 = *(*(v56 + 8) + 4 * ((v58 ^ (v58 >> 31)) % *(v56 + 24))), v59 != 0x7FFFFFFF))
      {
        v60 = *(v56 + 16);
        while (*(v60 + 40 * v59 + 8) != v52)
        {
          v59 = *(v60 + 40 * v59) & 0x7FFFFFFF;
          if (v59 == 0x7FFFFFFF)
          {
            goto LABEL_49;
          }
        }

        v62 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v56, v209);
        v48 = a3;
        v61 = *v62;
        if (v55)
        {
          v61 = *v62 * (1.0 - v62[1]);
        }

        v44 = *&v215[8];
      }

      else
      {
LABEL_49:
        v61 = 1.0;
      }

      if (v44 <= a5)
      {
        break;
      }

      v47 = *&v215[16];
      *(*&v215[16] + 96 * a5 + 88) = v61;
      a5 = ++v49;
      if (*(v48 + 64) <= v49)
      {
        a5 = v198;
        goto LABEL_56;
      }
    }

    v210[0] = 0;
    memset(v214, 0, 48);
    memset(v213, 0, sizeof(v213));
    v178 = MEMORY[0x1E69E9C10];
    v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v212 = 136315906;
    *&v212[4] = "operator[]";
    *&v212[12] = 1024;
    if (v179)
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    *&v212[14] = 468;
    *&v212[18] = 2048;
    *&v212[20] = a5;
    *&v212[28] = 2048;
    *&v212[30] = v44;
    _os_log_send_and_compose_impl(v180, v210, v213, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v212, 38, v195, v196);
    _os_crash_msg();
    __break(1u);
LABEL_189:
    v210[0] = 0;
    memset(v214, 0, 48);
    memset(v213, 0, sizeof(v213));
    v181 = MEMORY[0x1E69E9C10];
    v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v215 = 136315906;
    *&v215[4] = "operator[]";
    *&v215[12] = 1024;
    if (v182)
    {
      v183 = 3;
    }

    else
    {
      v183 = 2;
    }

    *&v215[14] = 789;
    *&v215[18] = 2048;
    *&v215[20] = v50;
    v216 = 2048;
    v217 = v18;
    _os_log_send_and_compose_impl(v183, v210, v213, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v215, 38, v195, v196);
    _os_crash_msg();
    __break(1u);
LABEL_193:
    *v215 = 0;
    memset(v214, 0, 48);
    memset(v213, 0, sizeof(v213));
    v184 = MEMORY[0x1E69E9C10];
    v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v212 = 136315906;
    *&v212[4] = "operator[]";
    *&v212[12] = 1024;
    if (v185)
    {
      v186 = 3;
    }

    else
    {
      v186 = 2;
    }

    *&v212[14] = 468;
    *&v212[18] = 2048;
    *&v212[20] = a5;
    *&v212[28] = 2048;
    *&v212[30] = v18;
    _os_log_send_and_compose_impl(v186, v215, v213, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v212, 38, v195, v196);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    *&v213[0] = 0xAD90622DE24C6320;
    *(&v213[0] + 1) = "meshshadow:enableShadow";
    v212[0] = 0;
    if (!re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v213, v212))
    {
      goto LABEL_202;
    }

    re::StringID::destroyString(v213);
    v15 = a3;
  }

LABEL_56:
  *v212 = *v215;
  *&v212[8] = v44;
  *&v212[16] = v47;
  *(v213 + 5) = 0;
  *&v213[0] = 0;
  v213[1] = a4;
  *v214 = 0;
  *&v214[36] = xmmword_1E3072DE0;
  *&v214[32] = 1065353216;
  *&v214[52] = 3;
  *&v214[56] = xmmword_1E3072DF0;
  *&v214[72] = 0;
  v214[74] = 1;
  *&v214[80] = xmmword_1E3072E00;
  *&v214[96] = 1061158912;
  v214[100] = 1;
  *&v214[104] = xmmword_1E3072E10;
  *&v214[120] = xmmword_1E3072E20;
  *&v214[136] = 0x3DCCCCCD41F00000;
  *&v214[144] = 1097877340;
  v214[148] = 1;
  *&v214[160] = xmmword_1E30476B0;
  v214[176] = 1;
  *&v214[192] = 0x3F8000003F2D42C4;
  *&v214[200] = 0x193F800000;
  *&v214[208] = xmmword_1E3072E30;
  *&v214[224] = 1056964608;
  *&v214[232] = 0x40000000;
  *&v214[236] = 256;
  *&v214[8] = v43;
  *&v214[16] = a5;
  re::FixedArray<float>::operator=(&v213[1], v212);
  a5 = v203;
  v63 = *(v203 + 288);
  v64 = *(v203 + 320);
  v65 = *(v203 + 336);
  *&v214[192] = *(v203 + 304);
  *&v214[208] = v64;
  *&v214[224] = v65;
  v66 = *(v203 + 224);
  v67 = *(v203 + 256);
  v68 = *(v203 + 272);
  *&v214[128] = *(v203 + 240);
  *&v214[144] = v67;
  *&v214[160] = v68;
  *&v214[176] = v63;
  v69 = *(v203 + 160);
  v70 = *(v203 + 192);
  v71 = *(v203 + 208);
  *&v214[64] = *(v203 + 176);
  *&v214[80] = v70;
  v72 = *(v203 + 152);
  DWORD2(v213[0]) = *(a2 + 7);
  *&v213[0] = __PAIR64__(v201, v72);
  BYTE12(v213[0]) = *(v203 + 185);
  *&v214[96] = v71;
  *&v214[112] = v66;
  *&v214[32] = *(v203 + 144);
  *&v214[48] = v69;
  v73 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v74 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v75 = 5381;
    do
    {
      v73 = v75;
      v76 = *v74++;
      v75 = (33 * v75) ^ v76;
    }

    while (v76);
  }

  *v215 = (qword_1EE1BF100 - 0x61C8864680B583E9 + (v73 << 6) + (v73 >> 2)) ^ v73;
  v77 = (*(**(a8 + 40) + 32))(*(a8 + 40), 288, 16);
  *v77 = &unk_1F5D11618;
  *(v77 + 21) = *(v213 + 5);
  *(v77 + 16) = *&v213[0];
  v78 = v213[1];
  v213[1] = 0uLL;
  *(v77 + 32) = v78;
  *(v77 + 48) = 0;
  *(v77 + 48) = *v214;
  *v214 = 0;
  v79 = *&v214[8];
  v80 = *&v214[24];
  *(v77 + 88) = *&v214[40];
  *(v77 + 72) = v80;
  *(v77 + 56) = v79;
  v81 = *&v214[56];
  v82 = *&v214[72];
  v83 = *&v214[88];
  *(v77 + 152) = *&v214[104];
  *(v77 + 136) = v83;
  *(v77 + 120) = v82;
  *(v77 + 104) = v81;
  v84 = *&v214[120];
  v85 = *&v214[136];
  v86 = *&v214[152];
  *(v77 + 216) = *&v214[168];
  *(v77 + 200) = v86;
  *(v77 + 184) = v85;
  *(v77 + 168) = v84;
  v87 = *&v214[184];
  v88 = *&v214[200];
  v89 = *&v214[216];
  *(v77 + 280) = *&v214[232];
  *(v77 + 264) = v89;
  *(v77 + 248) = v88;
  *(v77 + 232) = v87;
  v210[0] = v77;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a8 + 96, v215, v210);
  if (*&v213[1] && *(&v213[1] + 1))
  {
    (*(**&v213[1] + 40))();
  }

  if (*v212 && *&v212[8])
  {
    (*(**v212 + 40))();
  }

  v90 = 0;
LABEL_66:
  memset(v212, 0, 36);
  *&v212[36] = 0x7FFFFFFFLL;
  re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v212, a4, 3);
  if ((v90 & 1) == 0)
  {
    v18 = *(a5 + 16);
    if (v18)
    {
      v50 = 0;
      v16 = v213;
      do
      {
        if (v18 <= v50)
        {
          goto LABEL_189;
        }

        v92 = *(a5 + 32) + 32 * v50;
        a7 = *(v92 + 24);
        v93 = *v92;
        v94 = *(v92 + 8);
        v95 = strlen(*v92);
        if (v95)
        {
          MurmurHash3_x64_128(v93, v95, 0, v213);
          v96 = (*(&v213[0] + 1) - 0x61C8864680B583E9 + (*&v213[0] << 6) + (*&v213[0] >> 2)) ^ *&v213[0];
        }

        else
        {
          v96 = 0;
        }

        v97 = v94 >> 1;
        *&v213[1] = 0;
        DWORD2(v213[1]) = 0;
        *v214 = 0;
        v213[0] = a4;
        re::DynamicArray<float *>::setCapacity(v213, 0);
        ++DWORD2(v213[1]);
        memset(&v214[16], 0, 20);
        *&v214[40] = 0;
        *&v214[8] = a4;
        re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(&v214[8], 0);
        ++*&v214[32];
        v98 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v97 ^ (v94 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v97 ^ (v94 >> 31))) >> 27));
        v99 = v98 ^ (v98 >> 31);
        if (*v212)
        {
          v100 = v99 % *&v212[24];
          v101 = *(*&v212[8] + 4 * v100);
          if (v101 != 0x7FFFFFFF)
          {
            while (*(*&v212[16] + 104 * v101 + 8) != v97)
            {
              LODWORD(v101) = *(*&v212[16] + 104 * v101) & 0x7FFFFFFF;
              if (v101 == 0x7FFFFFFF)
              {
                goto LABEL_79;
              }
            }

            v103 = *&v212[16] + 104 * v101 + 16;
            goto LABEL_81;
          }
        }

        else
        {
          LODWORD(v100) = 0;
        }

LABEL_79:
        v102 = re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v212, v100, v99);
        *(v102 + 16) = *&v213[0];
        v103 = v102 + 16;
        *(v102 + 8) = v97;
        *&v213[0] = 0;
        *(v102 + 24) = *(v213 + 8);
        *(v213 + 8) = 0u;
        *(v102 + 40) = 1;
        *(v102 + 48) = *v214;
        *(v102 + 64) = *&v214[16];
        *(v102 + 88) = *&v214[40];
        memset(v214, 0, 32);
        *&v214[40] = 0;
        ++DWORD2(v213[1]);
        ++*&v214[32];
        *(v102 + 80) = 1;
        ++*&v212[40];
LABEL_81:
        re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(&v214[8]);
        if (*&v213[0] && *v214)
        {
          (*(**&v213[0] + 40))();
        }

        *&v213[0] = a7;
        *(&v213[0] + 1) = v94 >> 1;
        v91 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a3 + 88, v213);
        if (v91)
        {
          v104 = v91;
          *&v213[0] = v96;
          re::DynamicArray<re::TransitionCondition *>::add(v103, v213);
          v213[1] = 0u;
          memset(v214, 0, 20);
          *&v213[0] = 0;
          BYTE8(v213[0]) = 0;
          *&v214[20] = 0x7FFFFFFFLL;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v213[1], a4, 3);
          *&v213[0] = *v104;
          BYTE8(v213[0]) = a7 != 0;
          *&v214[32] = v96;
          v105 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a7 ^ (a7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a7 ^ (a7 >> 30))) >> 27));
          v106 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(v215, a3, a7, v97, (v99 - 0x61C8864680B583E9 + ((v105 ^ (v105 >> 31)) << 6) + ((v105 ^ (v105 >> 31)) >> 2)) ^ v105 ^ (v105 >> 31));
          if (*&v215[12] != 0x7FFFFFFF)
          {
            v106 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(&v213[1], *(a3 + 16) + 80 * *&v215[12] + 24);
          }

          v107 = *(v103 + 48);
          v108 = *(v103 + 56);
          if (v108 >= v107)
          {
            v109 = v108 + 1;
            if (v107 < v108 + 1)
            {
              if (*(v103 + 40))
              {
                v110 = 2 * v107;
                _ZF = v107 == 0;
                v111 = 8;
                if (!_ZF)
                {
                  v111 = v110;
                }

                if (v111 <= v109)
                {
                  v112 = v109;
                }

                else
                {
                  v112 = v111;
                }

                re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v103 + 40), v112);
              }

              else
              {
                re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v103 + 40), v109);
                ++*(v103 + 64);
              }
            }

            v108 = *(v103 + 56);
          }

          v113 = *(v103 + 72) + 72 * v108;
          v114 = *&v213[0];
          *(v113 + 8) = BYTE8(v213[0]);
          *v113 = v114;
          *(v113 + 48) = 0;
          *(v113 + 16) = 0u;
          *(v113 + 32) = 0u;
          *(v113 + 52) = 0x7FFFFFFFLL;
          *(v113 + 16) = *&v213[1];
          *&v213[1] = 0;
          v115 = *(v113 + 24);
          *(v113 + 24) = *(&v213[1] + 1);
          *(&v213[1] + 1) = v115;
          v116 = *(v113 + 32);
          *(v113 + 32) = *v214;
          *v214 = v116;
          LODWORD(v116) = *(v113 + 40);
          *(v113 + 40) = *&v214[8];
          *&v214[8] = v116;
          LODWORD(v116) = *(v113 + 44);
          *(v113 + 44) = *&v214[12];
          *&v214[12] = v116;
          LODWORD(v116) = *(v113 + 48);
          *(v113 + 48) = *&v214[16];
          *&v214[16] = v116;
          LODWORD(v116) = *(v113 + 52);
          *(v113 + 52) = *&v214[20];
          *&v214[20] = v116;
          *(v113 + 64) = *&v214[32];
          ++*(v103 + 56);
          ++*(v103 + 64);
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v213[1]);
        }

        ++v50;
        a5 = v203;
        v18 = *(v203 + 16);
      }

      while (v18 > v50);
    }
  }

  v117 = *&v212[32];
  if (*&v212[32])
  {
    v118 = 0;
    v119 = *&v212[16];
    while (1)
    {
      v120 = *v119;
      v119 += 26;
      if (v120 < 0)
      {
        break;
      }

      if (*&v212[32] == ++v118)
      {
        LODWORD(v118) = *&v212[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v118) = 0;
  }

  if (v118 != *&v212[32])
  {
    v121 = *&v212[16];
    v205 = *&v212[32];
    v122 = *&v212[32];
    do
    {
      v123 = (v121 + 104 * v118);
      v124 = v123[4];
      if (v124)
      {
        v125 = v123[6];
        v126 = &v125[v124];
        do
        {
          v127 = "N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE";
          if (("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x8000000000000000) != 0)
          {
            v128 = 5381;
            v129 = ("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
            do
            {
              v127 = v128;
              v130 = *v129++;
              v128 = (33 * v128) ^ v130;
            }

            while (v130);
          }

          *&v213[0] = (((*v125 - 0x61C8864680B583E9 + (qword_1EE1BF0F0 << 6) + (qword_1EE1BF0F0 >> 2)) ^ qword_1EE1BF0F0) - 0x61C8864680B583E9 + (v127 << 6) + (v127 >> 2)) ^ v127;
          v131 = re::globalAllocators(v91);
          v132 = (*(*v131[2] + 32))(v131[2], 48, 8);
          v133 = v132;
          *(v132 + 8) = 0;
          v134 = (v132 + 8);
          *v132 = &unk_1F5D11658;
          *(v132 + 40) = 0;
          *(v132 + 16) = 0;
          *(v132 + 24) = 0;
          *(v132 + 32) = 0;
          v135 = v123[7];
          if (v135)
          {
            v136 = v123[9];
            *(v132 + 8) = v135;
            re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v132 + 8), v136);
            ++*(v133 + 32);
            v137 = v123[9];
            v138 = *(v133 + 24);
            if (v137 >= v138)
            {
              re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(v134, v123[9]);
              v145 = v123[11];
              v146 = *(v133 + 24);
              v147 = *(v133 + 40);
              if (v146)
              {
                v148 = &v145[9 * v146];
                do
                {
                  v149 = *v145;
                  *(v147 + 8) = *(v145 + 8);
                  *v147 = v149;
                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v147 + 16, (v145 + 2));
                  *(v147 + 64) = v145[8];
                  v145 += 9;
                  v147 += 72;
                }

                while (v145 != v148);
                v147 = *(v133 + 40);
                v146 = *(v133 + 24);
                v145 = v123[11];
              }

              if (v146 != v137)
              {
                v150 = &v145[9 * v137];
                v151 = 9 * v146;
                v152 = &v145[v151 + 2];
                v153 = v147 + 8 * v151 + 16;
                do
                {
                  v154 = *(v152 - 16);
                  *(v153 - 8) = *(v152 - 8);
                  *(v153 - 16) = v154;
                  v155 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v153, v152);
                  *(v155 + 48) = *(v152 + 48);
                  v156 = v152 + 56;
                  v152 += 72;
                  v153 = v155 + 72;
                }

                while (v156 != v150);
              }
            }

            else
            {
              v139 = *(v133 + 40);
              if (v137)
              {
                v140 = v123[11];
                v141 = &v140[9 * v137];
                do
                {
                  v142 = *v140;
                  *(v139 + 8) = *(v140 + 8);
                  *v139 = v142;
                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v139 + 16, (v140 + 2));
                  *(v139 + 64) = v140[8];
                  v140 += 9;
                  v139 += 72;
                }

                while (v140 != v141);
                v139 = *(v133 + 40);
                v138 = *(v133 + 24);
              }

              if (v137 != v138)
              {
                v143 = 72 * v138 - 72 * v137;
                v144 = (v139 + 72 * v137 + 16);
                do
                {
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v144);
                  v144 += 9;
                  v143 -= 72;
                }

                while (v143);
              }
            }

            *(v133 + 24) = v137;
          }

          *v215 = v133;
          v91 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a8 + 48, v213, v215);
          ++v125;
        }

        while (v125 != v126);
        v122 = *&v212[32];
        v121 = *&v212[16];
        v117 = v205;
      }

      if (v122 <= v118 + 1)
      {
        v157 = v118 + 1;
      }

      else
      {
        v157 = v122;
      }

      while (v157 - 1 != v118)
      {
        LODWORD(v118) = v118 + 1;
        if ((*(v121 + 104 * v118) & 0x80000000) != 0)
        {
          goto LABEL_140;
        }
      }

      LODWORD(v118) = v157;
LABEL_140:
      ;
    }

    while (v118 != v117);
  }

  if (!v200)
  {
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v212);
  }

  *&v213[0] = 0x3C62BE4765422600;
  *(&v213[0] + 1) = "meshshadow:visualizeClusters";
  v215[0] = 0;
  v158 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v213, v215);
  v159 = v215[0];
  *v215 = 0x26DCF6608CA13E42;
  *&v215[8] = "meshshadow:visualizeClusterInfo";
  LOBYTE(v210[0]) = 0;
  v160 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v215, v210);
  v161 = LOBYTE(v210[0]);
  v210[0] = 0x3C62BEC2F3809D42;
  v210[1] = "meshshadow:visualizeMatrices";
  LOBYTE(v209[0]) = 0;
  v162 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v210, v209);
  v163 = v209[0];
  v209[0] = 0x572C0E956CDDF93CLL;
  v209[1] = "meshshadow:visualizePlanes";
  LOBYTE(v208[0]) = 0;
  v164 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v209, v208);
  v165 = v208[0];
  v208[0] = 0x5A213028C6E74578;
  v208[1] = "meshshadow:visualizeCullBoundingBoxes";
  v211 = 0;
  v166 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v200, v208, &v211);
  v167 = v166;
  v168 = v211;
  if (v208[0])
  {
    if (v208[0])
    {
    }
  }

  if (v209[0])
  {
    if (v209[0])
    {
    }
  }

  if (v210[0])
  {
    if (v210[0])
    {
    }
  }

  if (v215[0])
  {
    if (v215[0])
    {
    }
  }

  if (v213[0])
  {
    if (v213[0])
    {
    }
  }

  v169 = v167 == 0;
  v170 = v158 == 0;
  _ZF = v163 && v162 == 0;
  v172 = _ZF;
  v173 = v165 && v164 == 0;
  v174 = v173;
  v175 = v199[10];
  if (!v175)
  {
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v212);
  }

  v176 = v170 & v159;
  v177 = v169 & v168;
  if (!v160 && v161 && *(v203 + 104) == 1)
  {
    re::PersistentShadowState::visualizeShadowClusterInfo(a2, v199[10], (v203 + 112), v203 + 144);
    if ((v176 & 1) == 0)
    {
      goto LABEL_174;
    }

LABEL_181:
    re::PersistentShadowState::visualizeShadowClusters(a2, v175);
    if (!v172)
    {
      goto LABEL_182;
    }

LABEL_175:
    re::PersistentShadowState::visualizeShadowMatrices(a2, v175);
    if (!v174)
    {
      goto LABEL_176;
    }

LABEL_183:
    re::PersistentShadowState::visualizeShadowPlanes(a2, v175);
    if ((v177 & 1) == 0)
    {
      return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v212);
    }

LABEL_177:
    re::PersistentShadowState::visualizeCullBoundingBoxes(a2, v175);
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v212);
  }

  if (v176)
  {
    goto LABEL_181;
  }

LABEL_174:
  if (v172)
  {
    goto LABEL_175;
  }

LABEL_182:
  if (v174)
  {
    goto LABEL_183;
  }

LABEL_176:
  if (v177)
  {
    goto LABEL_177;
  }

  return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v212);
}

uint64_t *re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
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
          re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(v6 + v4 + 56);
          re::DynamicArray<unsigned long>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 104;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::ProjectiveMeshShadowBuilder::requiresDebugFont(re::ProjectiveMeshShadowBuilder *this, const re::RenderManager *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = *(this + 12);
  if (!v2)
  {
    return 0;
  }

  v6[0] = 0x26DCF6608CA13E42;
  v6[1] = "meshshadow:visualizeClusterInfo";
  v7 = 0;
  v3 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v2, v6, &v7);
  v4 = (v3 == 0) & v7;
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  return v4;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 8);
        *(result + 48) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 8) = v9;
        *(result + 16) = 0;
        v10 = *(v8 + 24);
        *(result + 16) = *(v8 + 16);
        *(result + 24) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v11 = *(result + 32);
        *(result + 32) = *(v8 + 32);
        *(v8 + 32) = v11;
        v12 = *(result + 48);
        *(result + 48) = *(v8 + 48);
        *(v8 + 48) = v12;
        ++*(v8 + 40);
        ++*(result + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x469EE58469EE59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 928, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v14, v15);
    __break(1u);
    goto LABEL_13;
  }

  v5 = (*(*a2 + 32))(a2, 928 * a3, 16);
  a1[2] = v5;
  if (!v5)
  {
LABEL_13:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v7 = v5;
  v8 = a3 - 1;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      bzero(v7, 0x3A0uLL);
      v10 = 0;
      do
      {
        v11 = &v7[v10];
        v10 += 14;
        v11[7] = 0uLL;
        v11[8] = 0uLL;
        v11[5] = 0uLL;
        v11[6] = 0uLL;
        v11[3] = 0uLL;
        v11[4] = 0uLL;
        v11[10] = 0uLL;
        v11[11] = 0uLL;
        v11[12] = 0uLL;
        v11[13] = 0uLL;
      }

      while (v10 != 56);
      v7 += 58;
    }
  }

  bzero(v7, 0x3A0uLL);
  v12 = v7 + 10;
  v13 = 896;
  do
  {
    *(v12 - 3) = 0uLL;
    *(v12 - 2) = 0uLL;
    *(v12 - 5) = 0uLL;
    *(v12 - 4) = 0uLL;
    *(v12 - 7) = 0uLL;
    *(v12 - 6) = 0uLL;
    *v12 = 0uLL;
    v12[1] = 0uLL;
    v12[2] = 0uLL;
    v12[3] = 0uLL;
    v12 += 14;
    v13 -= 224;
  }

  while (v13);
}

uint64_t re::FixedArray<re::MeshReceiverPerShadowConstants>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 88) = 0;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 78) = 0;
      result += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 88) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 78) = 0;
  return result;
}

void *re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
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
        v10 = &v8[9 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 8) = *(v8 + 8);
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 2, v8 + 2);
          v11[8] = v8[8];
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v8 + 2);
          v8 += 9;
          v11 += 9;
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

uint64_t re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(uint64_t a1)
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
        v5 = 72 * v4;
        v6 = (v3 + 16);
        do
        {
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v6);
          v6 += 9;
          v5 -= 72;
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

uint64_t re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = a1[2] + 112 * v3;
      v5 = a1[2];
      do
      {
        *v5 = 0;
        ++*(v5 + 8);
        v5 += 112;
      }

      while (v5 != v4);
      result = (*(*result + 40))(result);
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
  }

  return result;
}

uint64_t *re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D11598;
  v2 = a1 + 3;
  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(a1 + 55);
  re::DynamicArray<unsigned long>::deinit((a1 + 50));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D11598;
  v2 = a1 + 3;
  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(a1 + 55);
  re::DynamicArray<unsigned long>::deinit((a1 + 50));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneGenerationData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D115D8;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 1);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneGenerationData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D115D8;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  v9 = v8 + 80 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 80 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 80 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 80 * v14) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(a1, v9);
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 6), *(v7 + v5 + 72));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        v9 = *(a2 + 16) + v5;
        *(v8 + 24) = 0u;
        v8 += 24;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v8, (v9 + 24));
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11618;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11618;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 48;
            do
            {
              if ((*(v17 - 48) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 48) % *(a1 + 24), *(v17 + 48));
                v19 = *(v17 - 40);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 24);
                *(v18 + 16) = *(v17 - 32);
                *(v18 + 24) = v20;
                *(v17 - 32) = 0;
                *(v17 - 24) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v17 - 16);
                *(v17 - 16) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *v17;
                *v17 = v22;
                ++*(v17 - 8);
                ++*(v18 + 40);
                *(v18 + 88) = 0;
                *(v18 + 64) = 0;
                *(v18 + 72) = 0;
                *(v18 + 56) = 0;
                *(v18 + 80) = 0;
                v23 = *(v17 + 16);
                *(v18 + 56) = *(v17 + 8);
                *(v18 + 64) = v23;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v24 = *(v18 + 72);
                *(v18 + 72) = *(v17 + 24);
                *(v17 + 24) = v24;
                v25 = *(v18 + 88);
                *(v18 + 88) = *(v17 + 40);
                *(v17 + 40) = v25;
                ++*(v17 + 32);
                ++*(v18 + 80);
              }

              v17 += 104;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 104 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 104 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 104 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 96) = a3;
  ++*(a1 + 28);
  return v26 + 104 * v5;
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11658;
  re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit((a1 + 1));
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11658;
  re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

re *re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::ARSegmentationEmitterCache *this, re::RenderGraphManager *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  result = re::FontID::isValid((this + 64));
  if ((result & 1) == 0)
  {
    v5 = re::globalAllocators(result);
    v6 = v5[2];
    v11[0] = &unk_1F5D11920;
    v11[3] = v6;
    v11[4] = v11;
    v7 = re::globalAllocators(v5)[2];
    v10[0] = &unk_1F5D11978;
    v10[3] = v7;
    v10[4] = v10;
    re::RenderGraphManager::addProvider(a2, "ARSegmentationCache", v11, v10, 0, v9);
    v8 = re::StringID::operator=((this + 64), v9);
    *(this + 10) = v9[2];
    if (v9[0])
    {
      if (v9[0])
      {
      }
    }

    v9[0] = 0;
    v9[1] = &str_67;
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v10);
    return re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v11);
  }

  return result;
}

void re::ARSegmentationEmitterCache::unregisterRenderGraphProvider(const StringID *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid(&this[4]))
  {
    re::StringID::StringID(v5, this + 4);
    v5[2] = *&this[5].var0;
    v4 = re::RenderGraphManager::removeProvider(a2, v5);
    if (v5[0])
    {
      if (v5[0])
      {
      }
    }

    v5[0] = 0;
    v5[1] = &str_67;
    re::ProviderHandle::invalidate(&this[4]);
  }
}

void re::ARSegmentationEmitterCache::applyCachedDataToGraph(void **this, const re::ARSegmentationConnectionData *a2, re::RenderManager **a3, const char *a4)
{
  if (re::ARSegmentationEmitterCache::changeSpecification(this, a2))
  {
    re::ARSegmentationEmitterCache::reallocateCachedData(this, a3[1]);
  }

  re::ARSegmentationEmitterCache::setTexturesOnLanes(this, a3, a4);
}

uint64_t re::ARSegmentationEmitterCache::changeSpecification(_DWORD *a1, _DWORD *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v4 = a1[13] == v2 && a1[12] == v3;
  v5 = a2[9];
  v6 = a2[10];
  v8 = v4 && a1[14] == v5 && a1[15] == v6;
  v9 = !v8;
  if (!v8)
  {
    a1[12] = v3;
    a1[13] = v2;
    a1[14] = v5;
    a1[15] = v6;
  }

  return v9;
}

void re::ARSegmentationEmitterCache::reallocateCachedData(void **this, id *a2)
{
  v3 = a2 + 26;
  v4 = a2[26];
  v5 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v5 setWidth_];
  [v5 setHeight_];
  [v5 setUsage_];
  [v5 setStorageMode_];
  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(&v6, v5, v3);
  NS::SharedPtr<MTL::Texture>::operator=(this + 3, &v6);
  if (v6)
  {
  }

  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(&v6, v5, v3);
  NS::SharedPtr<MTL::Texture>::operator=(this + 4, &v6);
  if (v6)
  {
  }

  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(&v6, v5, v3);
  NS::SharedPtr<MTL::Texture>::operator=(this + 5, &v6);
  if (v6)
  {
  }

  if (v5)
  {
  }
}

void re::ARSegmentationEmitterCache::setTexturesOnLanes(id *this, re::RenderFrame *a2, const char *a3)
{
  if (a3)
  {
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

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = v6;
  v10 = this[3];
  v15 = re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFLL;
  v16 = v10;
  re::RenderFrame::registerExternalTexture(a2, &v16, &v15, &v17, 0);
  if (v10)
  {
  }

  v11 = this[4];
  v14 = v11;
  v15 = re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::registerExternalTexture(a2, &v14, &v15, &v17, 0);
  if (v11)
  {
  }

  v12 = this[5];
  v13 = v12;
  v15 = re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::registerExternalTexture(a2, &v13, &v15, &v17, 0);
  if (v12)
  {
  }

  re::RenderFrame::emitGraph(a2, "ARSegmentationCache", a3);
}

uint64_t re::createARSegmentationGenerateGuideData@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    v13 = a2;
    a2 = v13;
    if (v14)
    {
      re::createARSegmentationGenerateGuideData(re::RenderFrame &,re::RenderSceneContext &)::kARSegmentationDataTypeScopeHash = re::hashString("ARSegmentationData", v13);
      a2 = v13;
    }
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::createARSegmentationGenerateGuideData(re::RenderFrame &,re::RenderSceneContext &)::kARSegmentationDataTypeScopeHash;
  v7 = *(a2 + 6);
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, v15);
    v5 = ((v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0]) - 0x61C8864680B583E9;
  }

  v9 = re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a1 + 32, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  *a3 = &unk_1F5D119D0;
  *(a3 + 32) = 0x7300000046;
  *(a3 + 40) = 25;
  if (v9)
  {
    v10 = v9;
    *(a3 + 8) = [*(v9 + 8) width];
    *(a3 + 12) = [*(v10 + 32) height];
    *(a3 + 16) = [*(v10 + 8) width];
    result = [*(v10 + 8) height];
    v12 = -1;
  }

  else
  {
    *(a3 + 8) = 0x100000001;
    result = 1;
    *(a3 + 16) = 1;
    v12 = 1;
  }

  *(a3 + 20) = result;
  *(a3 + 24) = v12;
  *(a3 + 28) = v12;
  return result;
}

uint64_t re::ARSegmentationDilationNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v12 = 0;
  v15 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 38, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v23)
  {

    v23 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v12 == 1 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v14 = 0u;
    v13 = 0u;
  }

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

void re::ARSegmentationDilationNode::setup(re::ARSegmentationDilationNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 288, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::ARSegmentationDilationNode::execute(id *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = v10;
    v12 = [this[38] threadExecutionWidth];
    v13 = [this[38] maxTotalThreadsPerThreadgroup] / v12;
    v14 = *(v11 + 8);
    v19[2] = v14;
    v15 = v13 - 2 * v14;
    v19[1] = v15;
    v19[0] = v12 - 2 * v14;
    v16 = ([*(v8 + 8) width] + v19[0] - 1) / v19[0];
    v17 = ([*(v8 + 8) height] + v15 - 1) / v15;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v18);
    [v18 setComputePipelineState:this[38]];
    [v18 setTexture:*(v8 + 8) atIndex:0];
    [v18 setTexture:*(v8 + 16) atIndex:1];
    re::RenderGraphContext::metalTexture(a2, (this + 36), 0, 0, v21);
    [v18 setTexture:v21[0] atIndex:2];
    if (v21[0])
    {
    }

    [v18 setBytes:v19 length:8 atIndex:0];
    [v18 setThreadgroupMemoryLength:4 * v13 * v12 atIndex:0];
    [v18 setThreadgroupMemoryLength:2 * v13 * v12 atIndex:1];
    v21[0] = v16;
    v21[1] = v17;
    v21[2] = 1;
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = 1;
    [v18 dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  }
}

uint64_t re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ARSegmentationData", 0x12uLL, 0, &v10);
  v4 = v10;
  v5 = v11;
  v6 = strlen(a2);
  if (v6)
  {
    MurmurHash3_x64_128(a2, v6, 0, &v10);
    v7 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = (v5 - 0x61C8864680B583E9 + (v4 << 6) + (v4 >> 2)) ^ v4;
  return re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a1, ((v8 >> 2) + (v8 << 6) + v7) ^ v8);
}

void re::ARSegmentationGenerateGuideNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v13 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 40, ComputePipelineState);
  if (v26)
  {

    v26 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  v9 = v11;
  if (v11 && (v12 & 1) != 0)
  {
    v9 = (*(*v11 + 40))();
  }

  v13 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 257;
  v10 = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 41, v10);
  if (v26)
  {

    v26 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

uint64_t re::ARSegmentationGenerateGuideNode::setup(re::ARSegmentationGenerateGuideNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, this + 288, v6);
  *(v6 + 3) = 0;
  LODWORD(v6[0]) = 0;
  v6[1] = 2;
  re::RenderGraphBuilder::read(a2, this + 288, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  result = re::RenderGraphBuilder::write(a2, this + 304, v6);
  *(a2 + 593) = 1;
  return result;
}

void re::ARSegmentationGenerateGuideNode::execute(re::ARSegmentationGenerateGuideNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v24 = v10;
    re::RenderGraphContext::metalTexture(a2, this + 288, 0, 0, &v28);
    re::RenderGraphContext::metalTexture(a2, this + 304, 0, 0, &v27);
    re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v26);
    v11 = [v8[3] width];
    v12 = [v8[4] width];
    if (v12 < v11)
    {
      v11 = v12;
    }

    v25 = vcvtps_u32_f32(v11 / [v8[1] width]);
    [v26 setComputePipelineState:*(this + 40)];
    [v26 setTexture:v8[3] atIndex:0];
    [v26 setTexture:v8[4] atIndex:1];
    [v26 setTexture:v28 atIndex:2];
    [v26 setBytes:&v25 length:4 atIndex:0];
    v13 = [*(this + 40) threadExecutionWidth];
    v14 = [*(this + 40) maxTotalThreadsPerThreadgroup] / v13;
    v15 = (v13 + [v28 width] - 1) / v13;
    v16 = [v28 height];
    v32 = v15;
    v33 = (v14 + v16 - 1) / v14;
    v34 = 1;
    v29 = v13;
    v30 = v14;
    v31 = 1;
    [v26 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
    [v26 setComputePipelineState:*(this + 41)];
    [v26 setTexture:v28 atIndex:0];
    [v26 setTexture:v27 atIndex:1];
    [v26 setBytes:&v25 length:4 atIndex:0];
    v17 = [*(this + 41) threadExecutionWidth];
    v18 = [*(this + 41) maxTotalThreadsPerThreadgroup] / v17;
    v19 = (v17 + [v27 width] - 1) / v17;
    v20 = [v27 height];
    v32 = v19;
    v33 = (v18 + v20 - 1) / v18;
    v34 = 1;
    v29 = v17;
    v30 = v18;
    v31 = 1;
    [v26 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
    re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v26, 1);
    v21 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    v22 = re::RenderFrame::currentCommandBuffer(v21);
    v23 = *(v24 + 32);
    ++**(v24 + 40);
    [*(v22 + 2) encodeSignalEvent:v23 value:?];

    if (v27)
    {
    }

    if (v28)
    {
    }
  }
}

uint64_t re::ARSegmentationDualGuidedFilterNode::setup(re::ARSegmentationDualGuidedFilterNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a2 + 593) = 1;
  *(v6 + 3) = 0;
  LODWORD(v6[0]) = 0;
  v6[1] = 2;
  re::RenderGraphBuilder::read(a2, this + 264, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, this + 280, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  return re::RenderGraphBuilder::write(a2, this + 296, v6);
}

void re::ARSegmentationDualGuidedFilterNode::execute(re::ARSegmentationDualGuidedFilterNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = v10;
    v12 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    v13 = (re::RenderFrame::currentCommandBuffer(v12) + 16);
    [*v13 encodeWaitForEvent:*(v11 + 32) value:**(v11 + 40)];
    re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v17);
    re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v16);
    re::RenderGraphContext::metalTexture(a2, this + 296, 0, 0, &v15);
    re::ar::DualGuidedFilter::encodeDualCoefficients((v11 + 24), v13, &v17, (v8 + 8), &v16, &v15);
    v14 = *(v11 + 32);
    ++**(v11 + 40);
    [*v13 encodeSignalEvent:v14 value:?];
    if (v15)
    {
    }

    if (v16)
    {
    }

    if (v17)
    {
    }
  }
}

uint64_t re::ARSegmentationCompositeNode::execute(re::ARSegmentationCompositeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  result = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = result;
    v12 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    [*(re::RenderFrame::currentCommandBuffer(v12) + 2) encodeWaitForEvent:*(v11 + 32) value:**(v11 + 40)];
    v13 = *a2;
    v24 = 0x5739F99E7C0200E3;
    re::DynamicTextureTableAdd((v13 + 368), &v24, (v8 + 24));
    v14 = *a2;
    v24 = 0x239F7200ED1CA884;
    re::DynamicTextureTableAdd((v14 + 368), &v24, (v8 + 32));
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v24, (*a2 + 16), 8uLL, 8uLL);
    v15 = v26;
    v16 = v25;
    *(v24 + v25) = *(v11 + 16);
    v17 = *a2;
    v23 = 0x3A4249E1C0094FBALL;
    v24 = v15;
    LODWORD(v25) = 0;
    v26 = v16;
    re::BufferTable::setBuffer((v17 + 480), &v23, &v24);
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    v18 = *a2;
    v24 = 0x5739F99E7C0200E3;
    re::DynamicTextureTableRemove((v18 + 368), &v24, v19);
    v20 = *a2;
    v24 = 0x239F7200ED1CA884;
    re::DynamicTextureTableRemove((v20 + 368), &v24, v21);
    v22 = *a2;
    v24 = 0x3A4249E1C0094FBALL;
    return re::BufferTable::removeBuffer((v22 + 480), &v24);
  }

  return result;
}

void *re::allocInfo_ARSegmentationConnectionData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_512, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_512))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF210, "ARSegmentationConnectionData");
    __cxa_guard_release(&_MergedGlobals_512);
  }

  return &unk_1EE1BF210;
}

void re::initInfo_ARSegmentationConnectionData(re *this, re::IntrospectionBase *a2)
{
  v50[0] = 0x938F17887DE011F6;
  v50[1] = "ARSegmentationConnectionData";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1BF118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF118))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BF1C0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_uint32_t(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "guideScratchWidth";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BF1C8 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_uint32_t(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "guideScratchHeight";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xC00000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BF1D0 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_uint32_t(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "guideWidth";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BF1D8 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_uint32_t(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "guideHeight";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x1400000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BF1E0 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_uint32_t(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "compositionAlphaWidth";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1800000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BF1E8 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_uint32_t(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "compositionAlphaHeight";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x1C00000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1BF1F0 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::mtl::introspect_PixelFormat(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "guideFormat";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x2000000007;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1BF1F8 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::mtl::introspect_PixelFormat(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "coefficientsFormat";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x2400000008;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1BF200 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::mtl::introspect_PixelFormat(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "dilatedFormat";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x2800000009;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1BF208 = v48;
    __cxa_guard_release(&qword_1EE1BF118);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BF1C0;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationConnectionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationConnectionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationConnectionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationConnectionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v49 = v51;
}

void *re::allocInfo_ARSegmentationDilationNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF120))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF2A0, "ARSegmentationDilationNode");
    __cxa_guard_release(&qword_1EE1BF120);
  }

  return &unk_1EE1BF2A0;
}

void re::initInfo_ARSegmentationDilationNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xCBB585821370F806;
  v17[1] = "ARSegmentationDilationNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1BF128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF128))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF168 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "library";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF170 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_RenderGraphTargetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "dilatedDepthTexture";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x12000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF178 = v15;
    __cxa_guard_release(&qword_1EE1BF128);
  }

  *(this + 2) = 0x13800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BF168;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationDilationNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationDilationNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationDilationNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationDilationNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::ARSegmentationDilationNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11680;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  result = NAN;
  *(v3 + 37) = -1;
  *(v3 + 38) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationDilationNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11680;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  result = NAN;
  *(v1 + 37) = -1;
  *(v1 + 38) = 0;
  return result;
}

void *re::allocInfo_ARSegmentationGenerateGuideNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF130))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF330, "ARSegmentationGenerateGuideNode");
    __cxa_guard_release(&qword_1EE1BF130);
  }

  return &unk_1EE1BF330;
}

void re::initInfo_ARSegmentationGenerateGuideNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x475A9A5066DB65ECLL;
  v21[1] = "ARSegmentationGenerateGuideNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BF138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF138))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF180 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "library";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF188 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_RenderGraphTargetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "guideScratchTexture";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x12000000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF190 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_RenderGraphTargetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "guideTexture";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x13000000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BF198 = v19;
    __cxa_guard_release(&qword_1EE1BF138);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF180;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationGenerateGuideNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationGenerateGuideNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationGenerateGuideNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationGenerateGuideNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::ARSegmentationGenerateGuideNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11728;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  result = NAN;
  *(v3 + 37) = -1;
  *(v3 + 38) = 0;
  *(v3 + 39) = -1;
  *(v3 + 40) = 0;
  *(v3 + 41) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationGenerateGuideNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11728;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  result = NAN;
  *(v1 + 37) = -1;
  *(v1 + 38) = 0;
  *(v1 + 39) = -1;
  *(v1 + 40) = 0;
  *(v1 + 41) = 0;
  return result;
}

void *re::allocInfo_ARSegmentationDualGuidedFilterNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF140))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF3C0, "ARSegmentationDualGuidedFilterNode");
    __cxa_guard_release(&qword_1EE1BF140);
  }

  return &unk_1EE1BF3C0;
}

void re::initInfo_ARSegmentationDualGuidedFilterNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x9399778B94A360A2;
  v21[1] = "ARSegmentationDualGuidedFilterNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BF148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF148))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF1A0 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_RenderGraphTargetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "guideTexture";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF1A8 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_RenderGraphTargetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "coefficientsTextureFG";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x11800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF1B0 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_RenderGraphTargetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "coefficientsTextureBG";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x12800000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BF1B8 = v19;
    __cxa_guard_release(&qword_1EE1BF148);
  }

  *(this + 2) = 0x13800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF1A0;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::ARSegmentationDualGuidedFilterNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D117D0;
  *(v3 + 33) = 0;
  result = NAN;
  *(v3 + 34) = -1;
  *(v3 + 35) = 0;
  *(v3 + 36) = -1;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationDualGuidedFilterNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D117D0;
  *(v1 + 33) = 0;
  result = NAN;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  return result;
}

void *re::allocInfo_ARSegmentationCompositeNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF450, "ARSegmentationCompositeNode");
    __cxa_guard_release(&qword_1EE1BF150);
  }

  return &unk_1EE1BF450;
}

void re::initInfo_ARSegmentationCompositeNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x9962540693657AECLL;
  v9[1] = "ARSegmentationCompositeNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1BF160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF160))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphFullscreenNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphFullscreenNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF158 = v7;
    __cxa_guard_release(&qword_1EE1BF160);
  }

  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BF158;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationCompositeNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationCompositeNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationCompositeNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationCompositeNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

double re::internal::defaultConstruct<re::ARSegmentationCompositeNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D11878;
  *(v3 + 59) = 0;
  result = NAN;
  *(v3 + 60) = -1;
  *(v3 + 61) = 0;
  *(v3 + 62) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationCompositeNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D11878;
  *(v1 + 59) = 0;
  result = NAN;
  *(v1 + 60) = -1;
  *(v1 + 61) = 0;
  *(v1 + 62) = -1;
  return result;
}

void re::ARSegmentationDilationNode::~ARSegmentationDilationNode(re::ARSegmentationDilationNode *this)
{
  re::ARSegmentationDilationNode::~ARSegmentationDilationNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::ARSegmentationGenerateGuideNode::~ARSegmentationGenerateGuideNode(re::ARSegmentationGenerateGuideNode *this)
{
  re::ARSegmentationGenerateGuideNode::~ARSegmentationGenerateGuideNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 41);
  if (v2)
  {

    *(this + 41) = 0;
  }

  v3 = *(this + 40);
  if (v3)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::ARSegmentationDualGuidedFilterNode::~ARSegmentationDualGuidedFilterNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::ARSegmentationCompositeNode::~ARSegmentationCompositeNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11920;
  return result;
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11920;
  return result;
}

void re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::operator()(int a1, int a2, char **a3, re::RenderFrame *this)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = 0x9E3779B97F4A7C17;
    v7 = *v5;
    if (*v5)
    {
      v8 = v5[1];
      if (v8)
      {
        v9 = (v5 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v6 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v6 = 0x1E3779B97F4A7C16;
  }

  v19 = 0x200000000;
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0;
  v24 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v25 = _D0;
  v26 = xmmword_1E30A3B60;
  v27 = 0x2000000000;
  v28 = -1;
  v29 = -1;
  v30 = -1;
  v32 = 0;
  v18 = 2;
  v31 = (v6 + (re::kARSegmentationTextureFG << 6) + ((re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(&v17, this, &v18, off_1ECF17AF0);
  v16 = 0x3A41DA2B27DFFE0CLL;
  re::RenderFrame::addTargetOutput(this, &v16, &v17, v5);
  v31 = (v6 + (re::kARSegmentationTextureBG << 6) + ((re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(&v17, this, &v18, off_1ECF17B00);
  v16 = 0x3A41DA2B27DFFD90;
  re::RenderFrame::addTargetOutput(this, &v16, &v17, v5);
  v31 = (v6 + (re::kARSegmentationTextureDilatedDepth << 6) + ((re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(&v17, this, &v18, off_1ECF17B10);
  v16 = 0x5F7D65B7480CA957;
  re::RenderFrame::addTargetOutput(this, &v16, &v17, v5);
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11978;
  return result;
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11978;
  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23ARSegmentationInputDataE";
  if (("N2re23ARSegmentationInputDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23ARSegmentationInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ARSegmentationData", 0x12uLL, 0, &v17);
  v4 = v17;
  v5 = v18;
  v6 = strlen(a2);
  if (v6)
  {
    MurmurHash3_x64_128(a2, v6, 0, &v17);
    v7 = ((v18 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = "N2re25ARSegmentationExecuteDataE";
  if (("N2re25ARSegmentationExecuteDataE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re25ARSegmentationExecuteDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v12 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v13 = ((((v12 >> 2) + (v12 << 6) + v7) ^ v12) - 0x61C8864680B583E9 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v14 = *(*(a1 + 24) + 4 * (v13 % *(a1 + 40)));
  if (v14 == 0x7FFFFFFF)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  while (*(v15 + 24 * v14 + 8) != v13)
  {
    v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v15 + 24 * v14 + 16);
}

void re::RenderGraphUploadPostParams::execute(re::RenderGraphUploadPostParams *this, re::RenderGraphContext *a2)
{
  if (*(this + 264) == 1 && (*(this + 265) & 1) == 0)
  {
    v4 = re::RenderGraphDataStore::add<re::TonemapParametersData>(*(a2 + 146), *(*(a2 + 5) + 48));
    re::TonemapUserParameters::computeRenderParameters((this + 268), &v29);
    v5 = v33;
    *(v4 + 88) = v34;
    v6 = v36;
    *(v4 + 104) = v35;
    *(v4 + 120) = v6;
    v7 = v29;
    *(v4 + 24) = v30;
    v8 = v32;
    *(v4 + 40) = v31;
    *(v4 + 56) = v8;
    *(v4 + 72) = v5;
    *(v4 + 136) = v37;
    *(v4 + 8) = v7;
  }

  if (*(this + 266) == 1)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    re::BloomUserParameters::computeRenderParameters((this + 328), &v29);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v24, (*a2 + 16), 0x98uLL, 4uLL);
    v9 = v26;
    v22 = v25;
    v10 = &v24[v25];
    *(v10 + 6) = v35;
    *(v10 + 7) = v36;
    *(v10 + 8) = v37;
    *(v10 + 18) = v38;
    *(v10 + 2) = v31;
    *(v10 + 3) = v32;
    *(v10 + 4) = v33;
    *(v10 + 5) = v34;
    *v10 = v29;
    *(v10 + 1) = v30;
    v11 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    *(v11 + 48) = HIDWORD(v29);
    v24 = v9;
    v27 = 0;
    v28 = v22;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 8, &v24);
    *(v11 + 40) = v28;
    if (v27 != -1)
    {
      (off_1F5D11B50[v27])(&v39, &v24);
    }
  }

  if (*(this + 267) == 1)
  {
    v12 = *(a2 + 2);
    v13 = xmmword_1E30476A0;
    v14 = xmmword_1E3047680;
    v15 = xmmword_1E3047670;
    if (v12[112] == 1 && *v12 != v12[1] && v12[113] == 1)
    {
      v15 = *(v12 + 1);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
    }

    v19 = v15;
    v20 = v14;
    v21 = v13;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v29, (*a2 + 16), 0x30uLL, 0x10uLL);
    v16 = v30;
    v23 = *(&v29 + 1);
    v17 = (v29 + DWORD2(v29));
    *v17 = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    *&v29 = v16;
    DWORD2(v30) = 0;
    *&v31 = v23;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 8, &v29);
    *(v18 + 40) = v31;
    if (DWORD2(v30) != -1)
    {
      (off_1F5D11B50[DWORD2(v30)])(&v24, &v29);
    }
  }
}

void re::RenderGraphCombinedPostProcessNode::configure(re::RenderGraphCombinedPostProcessNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(this + 54);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i < v8; ++i)
    {
      v11 = (*(this + 56) + v9);
      if (*(v11 + 1))
      {
        if (v8 <= i)
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

          v20 = 789;
          v21 = 2048;
          v22 = i;
          v23 = 2048;
          v24 = v8;
          _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
          _os_crash_msg();
          __break(1u);
        }

        re::AssetHandle::loadAsync(v11);
        v8 = *(this + 54);
      }

      if (i > 0xE)
      {
        break;
      }

      v9 += 24;
    }
  }

  v12 = *(this + 33);
  if (v12 > 0xF)
  {
    if (v12 == 16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    bzero(this + 8 * v12 + 280, 128 - 8 * v12);
  }

  *(this + 33) = 16;
  ++*(this + 68);
LABEL_12:

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

uint64_t re::RenderGraphCombinedPostProcessNode::setup(re::RenderGraphCombinedPostProcessNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
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

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  re::RenderGraphBuilder::read(a2, *(this + 27), *(this + 27) + 16);
  if (*(this + 410) == 1)
  {
    *(&v22 + 3) = 0;
    LODWORD(v22) = 0;
    *(&v22 + 1) = 2;
    re::RenderGraphBuilder::read(a2, this + 456, &v22);
  }

  if (!*(this + 30))
  {
LABEL_10:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 32);
  *&v22 = 0x100000000;
  v23 = xmmword_1E30474D0;
  LOWORD(v24) = 0;
  *(&v24 + 4) = 0;
  return re::RenderGraphBuilder::write(a2, v5, &v22);
}

void re::RenderGraphCombinedPostProcessNode::execute(id *this, re::RenderGraphContext *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v118, 5042, 0, 0, 0, 0);
  if (*(this + 408) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1BF4E8, memory_order_acquire) & 1) == 0)
    {
      v76 = __cxa_guard_acquire(&qword_1EE1BF4E8);
      if (v76)
      {
        _MergedGlobals_513 = re::getCombinedScopeHash(v76, v77, v78);
        __cxa_guard_release(&qword_1EE1BF4E8);
      }
    }

    if (*(this + 409) == 1)
    {
      v7 = _MergedGlobals_513;
      v8 = *(a2 + 146);
    }

    else
    {
      v8 = *(a2 + 146);
      v7 = *(*(a2 + 5) + 48);
    }

    v9 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(v8, v7);
    if (!v9)
    {
      v40 = *re::graphicsLogObjects(0);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      LOWORD(v129) = 0;
      v41 = "RenderGraphCombinedPostProcessNode expects TonemapParametersData from the render graph data store but there isn't any. Will skip the execution.";
LABEL_48:
      _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, v41, &v129, 2u);
      goto LABEL_83;
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v129, (*a2 + 16), 0x84uLL, 4uLL);
    v10 = v130;
    v11 = *(&v129 + 1);
    v12 = v129 + DWORD2(v129);
    *v12 = *(v9 + 8);
    v13 = *(v9 + 24);
    v14 = *(v9 + 40);
    v15 = *(v9 + 72);
    *(v12 + 48) = *(v9 + 56);
    *(v12 + 64) = v15;
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    v16 = *(v9 + 88);
    v17 = *(v9 + 104);
    v18 = *(v9 + 120);
    *(v12 + 128) = *(v9 + 136);
    *(v12 + 96) = v17;
    *(v12 + 112) = v18;
    *(v12 + 80) = v16;
    v19 = *a2;
    v125[0] = 0x1C6D7B14F4E32CD0;
    *&v129 = v10;
    DWORD2(v129) = 0;
    *&v130 = v11;
    re::BufferTable::setBuffer((v19 + 480), v125, &v129);
  }

  if (*(this + 410) != 1)
  {
    goto LABEL_15;
  }

  v20 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v20)
  {
    v40 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(v129) = 0;
    v41 = "RenderGraphCombinedPostProcessNode expects BloomExecDataWrapper from the render graph data store but there isn't any. Will skip the execution. Did you forget to add a upload node?";
    goto LABEL_48;
  }

  v21 = v20;
  v22 = *a2;
  *&v129 = 0x12DFD1912E60118;
  re::RenderGraphContext::metalTexture(a2, (this + 57), 0, 0, v119);
  re::makeView2DTo2DArray(v119, v125);
  re::DynamicTextureTableAdd((v22 + 368), &v129, v125);
  if (v125[0])
  {

    v125[0] = 0;
  }

  if (v119[0])
  {
  }

  v23 = *a2;
  *&v129 = 0x127DBE076EDDD69;
  re::BufferTable::setBuffer((v23 + 480), &v129, (v21 + 8));
LABEL_15:
  if (*(this + 412) != 1)
  {
    goto LABEL_18;
  }

  v24 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v24)
  {
    v40 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(v129) = 0;
    v41 = "RenderGraphCombinedPostProcessNode expects ColorExecDataWrapper from the render graph data store but there isn't any. Will skip the execution. Did you forget to add a upload node?";
    goto LABEL_48;
  }

  v25 = *a2;
  *&v129 = 0x775E00AD509B0A76;
  re::BufferTable::setBuffer((v25 + 480), &v129, (v24 + 8));
LABEL_18:
  v26 = v125;
  v27 = *a2;
  v98 = 0xA3521511A35B9;
  if (!this[25])
  {
LABEL_90:
    v119[0] = 0;
    *(v26 + 11) = 0u;
    *(v26 + 12) = 0u;
    *(v26 + 9) = 0u;
    *(v26 + 10) = 0u;
    *(v26 + 8) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v125[0]) = 136315906;
    *(v26 + 4) = "operator[]";
    WORD2(v125[1]) = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *(v26 + 14) = 789;
    WORD1(v125[2]) = 2048;
    *(v26 + 20) = 0;
    WORD2(v125[3]) = 2048;
    *(v26 + 30) = 0;
    _os_log_send_and_compose_impl(v73, v119, &v129, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v87, v88);
    _os_crash_msg();
    __break(1u);
LABEL_94:
    v119[0] = 0;
    this = v125;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v125[0]) = 136315906;
    *(v125 + 4) = "operator[]";
    WORD2(v125[1]) = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    *(&v125[1] + 6) = 789;
    WORD1(v125[2]) = 2048;
    *(&v125[2] + 4) = v2;
    WORD2(v125[3]) = 2048;
    *(&v125[3] + 6) = v4;
    _os_log_send_and_compose_impl(v75, v119, &v129, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v87, v88);
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v89 = 0;
    v90 = 0;
    v87 = "operator[]";
    v88 = 264;
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v82, v86);
    __break(1u);
LABEL_99:
    v56 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, this[2], v27);
LABEL_71:
    v105 = v56;
    LOBYTE(v106) = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v119);
    re::RenderGraphContext::encodeDrawCalls(a2, v119, &v98, v57, v58, v59, v60, v61, v79, v83, v87, v88, v89, v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, SBYTE1(v113), SBYTE2(v113), SBYTE3(v113), SBYTE4(v113), v114, v115, v116, v117, v118[0], v118[1], v119[0], v119[1], v120, v121, v122, v123, v124, v125[0], v125[1], *&v125[2], v125[4], *&v125[5]);
    v62 = *a2;
    v119[0] = v3;
    re::DynamicTextureTableRemove((v62 + 368), v119, v63);
    if (*(this + 408) == 1)
    {
      v64 = *a2;
      v119[0] = 0x1C6D7B14F4E32CD0;
      re::BufferTable::removeBuffer((v64 + 480), v119);
    }

    if (*(this + 410) == 1)
    {
      v65 = *a2;
      v119[0] = 0x12DFD1912E60118;
      re::DynamicTextureTableRemove((v65 + 368), v119, v34);
      v66 = *a2;
      v119[0] = 0x127DBE076EDDD69;
      re::BufferTable::removeBuffer((v66 + 480), v119);
    }

    if (*(this + 412) == 1)
    {
      v67 = *a2;
      v119[0] = 0x775E00AD509B0A76;
      re::BufferTable::removeBuffer((v67 + 480), v119);
    }

    if (v111)
    {
      v33 = v113;
      if (v113)
      {
        (*(*v111 + 40))();
      }
    }

    v42 = v114;
    if (!v114)
    {
      goto LABEL_83;
    }

    v33 = v117;
    if (!v117)
    {
      goto LABEL_83;
    }

LABEL_82:
    (*(*v42 + 40))(v42, v33);
    goto LABEL_83;
  }

  re::RenderGraphContext::metalTexture(a2, this[27], 0, 0, v125);
  re::makeView2DTo2DArray(v125, &v129);
  re::DynamicTextureTableAdd((v27 + 368), &v98, &v129);
  if (v129)
  {

    *&v129 = 0;
  }

  if (v125[0])
  {
  }

  v27 = *(this + 408);
  v2 = *(this + 410);
  v28 = *(this + 411);
  v29 = *(this + 412);
  v30 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v96 = v30;
  if (v30)
  {
    HIDWORD(v97) = *(v30 + 65);
  }

  else
  {
    HIDWORD(v97) = 0;
  }

  if (!this[54])
  {
    v4 = 0;
    v36 = this[33];
LABEL_35:
    v2 = v27 | (2 * v2) | (4 * v28) | (8 * v29);
    if (v36 <= v2)
    {
      re::DynamicString::format(&v129, "%s: Permutation %du was requested but only %lu materials exist.", v31, this[2], v2, v36);
      re::RenderGraphExecutable::addError(*(a2 + 147), &v129);
      v42 = v129;
      if (!v129 || (BYTE8(v129) & 1) == 0)
      {
        goto LABEL_83;
      }

      v33 = v130;
      goto LABEL_82;
    }

    if (v4 <= v2)
    {
      goto LABEL_94;
    }

    v37 = *(this[v2 + 35] + 222);
    v38 = *(this[56] + 3 * v2 + 1);
    if (v38)
    {
      v39 = *(v38 + 792);
    }

    else
    {
      v39 = 0;
    }

    v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27));
    MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(a2, v39 ^ (v43 >> 31) ^ v43);
    re::RenderGraphContext::makeFullscreenDrawCall(a2, v37, "Post Processing Combined", MaterialTableForAsset, 0, 0, 0, 0, &v129);
    if ((v97 & 0x100000000) != 0)
    {
      v27 = "fullscreenarray";
    }

    else
    {
      v27 = "fullscreen";
    }

    v45 = *(&v133 + 1);
    if ((v97 & 0x100000000) != 0)
    {
      v46 = 15;
    }

    else
    {
      v46 = 10;
    }

    MurmurHash3_x64_128(v27, v46, 0, v125);
    v47 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v45, (v125[1] + 64 * v125[0] + (v125[0] >> 2) - 0x61C8864680B583E9) ^ v125[0]);
    if (!v33)
    {
      goto LABEL_98;
    }

    HIDWORD(v131) = *v47;
    if (HIDWORD(v131) == -1)
    {
      goto LABEL_83;
    }

    v48 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
    v117 = 0;
    v115 = 0uLL;
    v113 = 0;
    v114 = 0;
    v116 = 0;
    *&v112 = 0;
    v111 = 0uLL;
    DWORD2(v112) = 0;
    if (v48)
    {
      v2 = v48;
      if (*(v48 + 128))
      {
        v29 = 0;
        v26 = 0;
        v3 = v48 + 144;
        v4 = (v48 + 64);
        while (1)
        {
          v49 = v3 + 240 * v29;
          if (*(v49 + 80) == 1)
          {
            v50 = *(v49 + 96);
            v51 = *(v49 + 112);
            v52 = *(v49 + 144);
            *&v125[4] = *(v49 + 128);
            *&v125[6] = v52;
            *v125 = v50;
            *&v125[2] = v51;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v125, v49);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add(&v111, v125);
          v54 = *(v2 + 48);
          if (v54 <= v29)
          {
            break;
          }

          re::RenderCamera::computeInverseTransform(v125, &v4[2 * v29]);
          re::DynamicArray<re::Matrix4x4<float>>::add(&v114, v125);
          v26 = (v26 + 1);
          v29 = v26;
          if (*(v2 + 128) <= v26)
          {
            goto LABEL_66;
          }
        }

LABEL_89:
        re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v29, v54);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v81, v85);
        __break(1u);
        goto LABEL_90;
      }

LABEL_66:
      v55 = *(v2 + 890);
    }

    else
    {
      v94 = xmmword_1E3047670;
      v93 = xmmword_1E3047680;
      *v125 = xmmword_1E3047670;
      *&v125[2] = xmmword_1E3047680;
      v92 = xmmword_1E30476A0;
      v91 = xmmword_1E30474D0;
      *&v125[4] = xmmword_1E30476A0;
      *&v125[6] = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(&v111, v125);
      *v125 = xmmword_1E3047670;
      *&v125[2] = xmmword_1E3047680;
      *&v125[4] = xmmword_1E30476A0;
      *&v125[6] = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(&v114, v125);
      if ((v97 & 0x100000000) != 0)
      {
        v55 = *(v96 + 64);
        *v125 = xmmword_1E3047670;
        *&v125[2] = xmmword_1E3047680;
        *&v125[4] = xmmword_1E30476A0;
        *&v125[6] = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(&v111, v125);
        *v125 = xmmword_1E3047670;
        *&v125[2] = xmmword_1E3047680;
        *&v125[4] = xmmword_1E30476A0;
        *&v125[6] = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(&v114, v125);
      }

      else
      {
        v55 = 1;
      }
    }

    v3 = 0xA3521511A35B9;
    DWORD1(v131) = v55;
    re::DrawCallRef::DrawCallRef(&v107, &v129);
    v56 = 0;
    v125[0] = &v107;
    v125[3] = &v108;
    v125[6] = &v109;
    v125[9] = &v110;
    *&v125[1] = vdupq_n_s64(1uLL);
    *&v125[4] = *&v125[1];
    *&v125[7] = *&v125[1];
    v126 = *&v125[1];
    v127 = &v110 + 8;
    v128 = *&v125[1];
    v98 = v27;
    v99 = v125;
    v100 = v117;
    v101 = v113;
    v102 = 0;
    LOBYTE(v103) = v55;
    *(&v103 + 1) = 2;
    WORD2(v103) = 0;
    HIBYTE(v104) = 0;
    if (!*(a2 + 338))
    {
      goto LABEL_71;
    }

    goto LABEL_99;
  }

  v32 = 0;
  v3 = 0;
  v26 = this + 35;
  while (re::AssetHandle::loadedAsset<re::MaterialAsset>((this[56] + v32)))
  {
    v4 = this[54];
    if (v4 <= v3)
    {
      v119[0] = 0;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v129 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v125[0]) = 136315906;
      *(v125 + 4) = "operator[]";
      WORD2(v125[1]) = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      *(&v125[1] + 6) = 789;
      WORD1(v125[2]) = 2048;
      *(&v125[2] + 4) = v3;
      WORD2(v125[3]) = 2048;
      *(&v125[3] + 6) = v4;
      _os_log_send_and_compose_impl(v70, v119, &v129, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v87, v88);
      _os_crash_msg();
      __break(1u);
LABEL_88:
      re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v3, v36);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v80, v84);
      __break(1u);
      goto LABEL_89;
    }

    v35 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this[56] + v32));
    v36 = this[33];
    if (v36 <= v3)
    {
      goto LABEL_88;
    }

    v26[v3] = v35;
    v4 = this[54];
    if (v3 <= 0xE)
    {
      ++v3;
      v32 += 24;
      if (v4 > v3)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

LABEL_83:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v118, v33, v34);
}

void re::RenderGraphCombinedPostProcessNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 408) | (2 * *(a1 + 410)) | (4 * *(a1 + 411)) | (8 * *(a1 + 412));
  if (*(a1 + 432) > v2)
  {
    v4 = (*(a1 + 448) + 24 * v2);
    if (*(v4 + 1))
    {
      v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v4);
      if (v6)
      {
        v7 = *(v6 + 1784);
        if (v7)
        {
          v8 = *(a1 + 432);
          if (v8 <= v2)
          {
            v16 = 0;
            memset(v24, 0, sizeof(v24));
            v12 = MEMORY[0x1E69E9C10];
            v13 = v8;
            *v17 = 136315906;
            *&v17[4] = "operator[]";
            v18 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v19 = 797;
            v20 = 2048;
            v21 = v2;
            v22 = 2048;
            v23 = v13;
            _os_log_send_and_compose_impl(v14, &v16, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v17, 38, v15);
            _os_crash_msg();
            __break(1u);
          }

          v9 = *(*(a1 + 448) + 24 * v2 + 8);
          if (v9)
          {
            v10 = *(v9 + 792);
          }

          else
          {
            v10 = 0;
          }

          v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
          *&v24[0] = v10 ^ (v11 >> 31) ^ v11;
          re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v17, v7);
          re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, v24, v17);
          if (*v17)
          {
          }
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphUploadPostParams(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF4F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF588, "RenderGraphUploadPostParams");
    __cxa_guard_release(&qword_1EE1BF4F0);
  }

  return &unk_1EE1BF588;
}

void re::initInfo_RenderGraphUploadPostParams(re *this, re::IntrospectionBase *a2)
{
  v36[0] = 0x5202598F4D5E78FELL;
  v36[1] = "RenderGraphUploadPostParams";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1BF4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF4F8))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF510 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "tonemappingEnabled";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF518 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "bloomEnabled";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x10A00000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF520 = v15;
    v16 = re::introspectionAllocator();
    v22 = re::introspect_TonemapUserParameters(1, v17, v18, v19, v20, v21);
    v23 = (*(*v16 + 32))(v16, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "tonemapUserParameters";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x10C00000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1BF528 = v23;
    v24 = re::introspectionAllocator();
    v25 = re::introspect_BloomUserParameters(1);
    v26 = (*(*v24 + 32))(v24, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "bloomUserParameters";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x14800000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1BF530 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "colorConvertEnabled";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x10B00000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1BF538 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "tonemappingSharedParamsEnabled";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x10900000006;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1BF540 = v34;
    __cxa_guard_release(&qword_1EE1BF4F8);
  }

  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1BF510;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphUploadPostParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphUploadPostParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphUploadPostParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphUploadPostParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v35 = v37;
}

void *re::allocInfo_RenderGraphCombinedPostProcessNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF500))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF618, "RenderGraphCombinedPostProcessNode");
    __cxa_guard_release(&qword_1EE1BF500);
  }

  return &unk_1EE1BF618;
}

void re::initInfo_RenderGraphCombinedPostProcessNode(re *this, re::IntrospectionBase *a2)
{
  v37[0] = 0x41FFC6ACD6032468;
  v37[1] = "RenderGraphCombinedPostProcessNode";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE1BF508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF508))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BF548 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "tonemappingEnabled";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x19800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BF550 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "bloomEnabled";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x19A00000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BF558 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_BOOL(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "vignetteEnabled";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x19B00000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BF560 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_RenderGraphTargetHandle(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "downsampledTarget";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x1C800000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1BF568 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "combinedMaterialPermutations";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x1A000000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1BF570 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_BOOL(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "colorConvertEnabled";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x19C00000006;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1BF578 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_BOOL(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "tonemappingSharedParamsEnabled";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x19900000007;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1BF580 = v35;
    __cxa_guard_release(&qword_1EE1BF508);
  }

  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1BF548;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCombinedPostProcessNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCombinedPostProcessNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCombinedPostProcessNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCombinedPostProcessNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v36 = v38;
}

double re::internal::defaultConstruct<re::RenderGraphCombinedPostProcessNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11AB8;
  *(v3 + 33) = 0;
  *(v3 + 68) = 0;
  *(v3 + 52) = 0;
  *(v3 + 110) = 0;
  *(v3 + 424) = 0u;
  *(v3 + 102) = 0;
  *(v3 + 412) = 0;
  *(v3 + 28) = 0u;
  result = NAN;
  *(v3 + 58) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphCombinedPostProcessNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11AB8;
  *(v1 + 33) = 0;
  *(v1 + 68) = 0;
  *(v1 + 52) = 0;
  *(v1 + 110) = 0;
  *(v1 + 424) = 0u;
  *(v1 + 102) = 0;
  *(v1 + 412) = 0;
  *(v1 + 28) = 0u;
  result = NAN;
  *(v1 + 58) = -1;
  return result;
}

void re::RenderGraphUploadPostParams::~RenderGraphUploadPostParams(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphCombinedPostProcessNode::~RenderGraphCombinedPostProcessNode(re::RenderGraphCombinedPostProcessNode *this)
{
  *this = &unk_1F5D11AB8;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D11AB8;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::TonemapParametersData>(uint64_t a1, uint64_t a2)
{
  v3 = "N2re21TonemapParametersDataE";
  if (("N2re21TonemapParametersDataE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re21TonemapParametersDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v10 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8), 216, 8);
  *(v7 + 120) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 136) = 0;
  *v7 = &unk_1F5D11B88;
  *(v7 + 128) = 1;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0;
  v9 = v7;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v10, &v9);
}

void re::TonemapParametersData::~TonemapParametersData(re::TonemapParametersData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(re *a1, uint64_t a2)
{
  v3 = "N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v11 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 48, 8);
  v8[3] = 0;
  v8[4] = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F5D11BC8;
  v8[5] = 0;
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v11, &v10);
}

uint64_t re::RenderGraphDataStoreWrapper<re::ColorExecData>::~RenderGraphDataStoreWrapper(uint64_t a1)
{
  *a1 = &unk_1F5D11BC8;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D11B50[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11BC8;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D11B50[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return MEMORY[0x1E6906520](a1, 0x10A3C40957976B0);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

double re::RenderGraphUploadPostParams::RenderGraphUploadPostParams(re::RenderGraphUploadPostParams *this)
{
  v1 = (this + 268);
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D11A10;
  *(v2 + 66) = 0;
  *v1 = xmmword_1E3054790;
  v1[1] = xmmword_1E304F3C0;
  *(v2 + 300) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 38) = _D0;
  *(v2 + 312) = 0;
  *(v2 + 316) = 0x3F80000000000000;
  *(v2 + 324) = 0;
  result = 0.00781250182;
  *(v2 + 41) = 0x3F8000003E800000;
  *(v2 + 42) = 0x13F800000;
  return result;
}

uint64_t *re::RenderFrameContextBuilder::build@<X0>(re::RenderFrameContextBuilder *this@<X0>, re::RenderFrame *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v416 = *MEMORY[0x1E69E9840];
  v281 = *(a2 + 1);
  v7 = *(a2 + 49);
  *a3 = 0;
  *(a3 + 8) = 0u;
  v8 = (a3 + 8);
  *(a3 + 16) = v7;
  v9 = (a3 + 16);
  *(a3 + 24) = 0u;
  v343 = 0;
  v341 = 0;
  v342 = 0;
  v340[1] = 0;
  v340[0] = v7;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v340, 0);
  ++v342;
  v10 = *(v6 + 74);
  if (v10)
  {
    j = 0;
    v12 = *(v6 + 35);
    while (1)
    {
      v13 = *v12;
      v12 += 18;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++j)
      {
        j = *(v6 + 74);
        break;
      }
    }
  }

  else
  {
    j = 0;
  }

  if (j != v10)
  {
    v3 = *(v6 + 35);
    do
    {
      v14 = *(v3 + 72 * j + 64);
      if ((*(*v14 + 480))(v14))
      {
        re::DynamicArray<re::WeakStringID>::add(v340, (v3 + 72 * j + 8));
      }

      LODWORD(v15) = *(v6 + 74);
      if (v15 <= j + 1)
      {
        v15 = (j + 1);
      }

      else
      {
        v15 = v15;
      }

      v3 = *(v6 + 35);
      while (v15 - 1 != j)
      {
        j = (j + 1);
        if ((*(v3 + 72 * j) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      j = v15;
LABEL_19:
      ;
    }

    while (j != v10);
  }

  if (!v341)
  {
    return re::DynamicArray<re::WeakStringID>::deinit(v340);
  }

  v17 = (*(**(v6 + 40) + 192))(*(v6 + 40));
  v18 = v341;
  *&v345 = 0;
  *&v344 = v7;
  *(&v344 + 1) = v341;
  if (v341)
  {
    if (v341 >= 0x29CBC14E5E0A73)
    {
      re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 1568, v341);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v274, v276);
      __break(1u);
    }

    else
    {
      v19 = (*(*v7 + 32))(v7, 1568 * v341, 16);
      *&v345 = v19;
      if (v19)
      {
        while (--v18)
        {
          v19 = re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(v19, v7) + 1568;
        }

        re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(v19, v7);
        goto LABEL_27;
      }
    }

    re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    goto LABEL_440;
  }

LABEL_27:
  if (v9 != &v344)
  {
    v21 = *v9;
    if (*v9 && v21 != v344)
    {
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
      _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
      goto LABEL_446;
    }

    v22 = *(a3 + 24);
    v23 = *(a3 + 32);
    v24 = *(&v344 + 1);
    v25 = v345;
    *(a3 + 16) = v344;
    *(a3 + 24) = v24;
    *&v344 = v21;
    *(&v344 + 1) = v22;
    *(a3 + 32) = v25;
    *&v345 = v23;
  }

  v285 = v6;
  v26 = re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(&v344);
  v317[0] = 0;
  v318 = 0;
  v319 = 0u;
  v321 = 0u;
  v320 = 0;
  v322 = 0;
  v323 = 0x1FFFFFFFFLL;
  v325 = 0;
  v327 = 0;
  v330 = 0;
  v328 = 0;
  v329 = 0;
  v331 = 0;
  v333 = 0;
  v332 = 0;
  v334 = 0;
  v335 = 0x1FFFFFFFFLL;
  v337 = 0;
  v339 = 0;
  v324 = 0x80000000800;
  v326 = v7;
  v336 = 0x80000000800;
  v338 = v7;
  v5 = v341;
  if (!v5)
  {
    v286 = 0;
    goto LABEL_39;
  }

  if (v5 < 0x15BABCC647FA92)
  {
    if (v28)
    {
      v30 = v28;
      v31 = v5 - 1;
      if (v5 != 1)
      {
        v30 = v28;
        do
        {
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 24) = 0;
          *(v30 + 16) = 0;
          *(v30 + 80) = 0;
          *(v30 + 88) = 0;
          v32 = (v30 + 2948);
          *(v30 + 2912) = 0uLL;
          *(v30 + 2928) = 0uLL;
          *(v30 + 2944) = 0;
          *(v30 + 32) = 0uLL;
          *(v30 + 48) = 0uLL;
          *(v30 + 60) = 0uLL;
          *(v30 + 2960) = v317;
          *(v30 + 2968) = 1;
          *(v30 + 3008) = 0;
          *(v30 + 2992) = 0uLL;
          *(v30 + 2976) = 0uLL;
          v30 += 3016;
          *v32 = 0x7FFFFFFFLL;
          --v31;
        }

        while (v31);
      }

      v286 = v28;
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 24) = 0;
      *(v30 + 16) = 0;
      *(v30 + 80) = 0;
      *(v30 + 88) = 0;
      *(v30 + 2912) = 0u;
      *(v30 + 2928) = 0u;
      *(v30 + 2944) = 0;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0u;
      *(v30 + 60) = 0u;
      *(v30 + 2948) = 0x7FFFFFFFLL;
      *(v30 + 2960) = v317;
      *(v30 + 2968) = 1;
      *(v30 + 3008) = 0;
      *(v30 + 2992) = 0u;
      *(v30 + 2976) = 0u;
LABEL_39:
      v289 = (v6 + 264);
      v282 = *(*(v6 + 1) + 424);
      *v8 = *(v6 + 40);
      v395 = 0;
      v393 = 0;
      v394 = 0;
      v392[1] = 0;
      v392[0] = v7;
      v33 = re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(v392, 0);
      ++v394;
      v396 = 1065353216;
      v399 = 0;
      v400 = 0u;
      v401 = 0xFFFFFFFFLL;
      v402 = 0;
      *&v406[4] = xmmword_1E3072DE0;
      *v406 = 1065353216;
      *&v406[20] = 3;
      *&v406[24] = xmmword_1E3072DF0;
      *&v406[40] = 0;
      v406[42] = 1;
      v407 = xmmword_1E3072E00;
      *v408 = 1061158912;
      v408[4] = 1;
      *&v408[8] = xmmword_1E3072E10;
      *&v408[24] = xmmword_1E3072E20;
      *&v408[40] = 0x3DCCCCCD41F00000;
      LODWORD(v409) = 1097877340;
      BYTE4(v409) = 1;
      v410 = xmmword_1E30476B0;
      LOBYTE(v411) = 1;
      *&v412 = 0x3F8000003F2D42C4;
      *(&v412 + 1) = 0x193F800000;
      v413 = xmmword_1E3072E30;
      *&v414 = 1056964608;
      DWORD2(v414) = 0x40000000;
      WORD6(v414) = 256;
      v415 = 0;
      v34 = *(*(v6 + 1) + 96);
      v35 = v341;
      v313 = 0u;
      v314 = 0u;
      v315 = 0;
      v316 = 0x7FFFFFFFLL;
      v36 = v35;
      j = v34;
      memset(v312, 0, 36);
      *&v312[36] = 0x7FFFFFFFLL;
      v311 = 1;
      if (v34)
      {
        goto LABEL_437;
      }

      goto LABEL_40;
    }

    goto LABEL_441;
  }

LABEL_440:
  re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 3016, v5);
  _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v275, v277);
  __break(1u);
LABEL_441:
  re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
  _os_crash("assertion failure: (m_data) Out of memory.");
  __break(1u);
LABEL_442:
  std::__throw_bad_function_call[abi:nn200100]();
LABEL_443:
  v278 = "build";
  v279 = 514;
  re::internal::assertLog(4, v125, "assertion failure: '%s' (%s:line %i) Mesh Shadow Global Data should not be nullptr if mesh shadow per frame update data exists", "meshShadowGlobalData");
  _os_crash("assertion failure: (meshShadowGlobalData) Mesh Shadow Global Data should not be nullptr if mesh shadow per frame update data exists");
  __break(1u);
LABEL_444:
  *&v344 = 0x6F2CA1B2EF949A36;
  *(&v344 + 1) = "meshshadow:textureGenerationNominalDequeueSize";
  *v381 = 0;
  re::DebugSettingsManager::getWithErrorCode<int>(j, &v344, v381);
LABEL_446:
  re::StringID::destroyString(&v344);
  *&v344 = 0xAD1A32C714F7C026;
  *(&v344 + 1) = "meshshadow:textureGenerationWorkDivisionFactor";
  *v381 = 0;
  re::DebugSettingsManager::getWithErrorCode<int>(j, &v344, v381);
  re::StringID::destroyString(&v344);
LABEL_178:
  v381[0] = 0;
  if (v311)
  {
    ReceiverMesh = re::ShadowRenderManager::getReceiverMesh(v8);
    v127 = *ReceiverMesh;
    v128 = *(*ReceiverMesh + 432);
    v300[0] = *(*ReceiverMesh + 416);
    v300[1] = v128;
    v129 = *&v312[8];
    v3 = *v312;
    memset(v312, 0, 24);
    v130 = *&v312[24];
    v5 = *&v312[28];
    v131 = *&v312[32];
    v132 = *&v312[36];
    *&v312[24] = xmmword_1E3058120;
    v302 = 1;
    LOBYTE(v344) = 1;
    v345 = v300[0];
    v346 = v128;
    *v347 = __PAIR128__(v129, v3);
    memset(v301, 0, 24);
    *&v347[16] = *&v312[16];
    *&v347[24] = v130;
    *&v347[28] = v5;
    *&v347[32] = v131;
    *&v347[36] = v132;
    *&v301[24] = xmmword_1E3058120;
    LODWORD(v348) = 1;
    if (v381[0])
    {
      v133 = *(v127 + 432);
      *&v382[4] = *(v127 + 416);
      *&v382[20] = v133;
      if (!__b || __b == v3)
      {
        *v347 = __b;
        v140 = *__b_8;
        __b = v3;
        __b_8[0] = v129;
        __b_8[1] = *&v312[16];
        *&v347[8] = v140;
        v141 = v385;
        *&v385 = __PAIR64__(v5, v130);
        *(&v385 + 1) = __PAIR64__(v132, v131);
        *&v347[24] = v141;
      }

      else
      {
        if (DWORD1(v385))
        {
          if (v385)
          {
            memset_pattern16(__b_8[0], &unk_1E304C660, 4 * v385);
          }

          v134 = DWORD2(v385);
          if (DWORD2(v385))
          {
            v135 = 0;
            v136 = 0;
            do
            {
              v137 = __b_8[1];
              v138 = *(__b_8[1] + v135);
              if (v138 < 0)
              {
                *(__b_8[1] + v135) = v138 & 0x7FFFFFFF;
                re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v137[v135 + 16]);
                v134 = DWORD2(v385);
              }

              ++v136;
              v135 += 72;
            }

            while (v136 < v134);
          }

          *(&v385 + 4) = 0;
          HIDWORD(v385) = 0x7FFFFFFF;
          ++v386;
        }

        if (!v3)
        {
          goto LABEL_199;
        }

        if (v385 < v5)
        {
          re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(&__b, v5);
        }

        re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(&__b, v347);
      }

      ++v386;
    }

    else
    {
      v381[0] = 1;
      v139 = *(v127 + 432);
      *&v382[4] = *(v127 + 416);
      *&v382[20] = v139;
      __b = v3;
      __b_8[0] = v129;
      memset(v347, 0, 24);
      __b_8[1] = *&v312[16];
      *&v385 = __PAIR64__(v5, v130);
      *(&v385 + 1) = __PAIR64__(v132, v131);
      *&v347[24] = xmmword_1E3058120;
      v386 = 1;
    }

LABEL_199:
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v347);
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v301);
    v6 = v285;
  }

  re::PersistentShadowState::processMeshShadowUpdate((v8 + 3), &v304, v300);
  atomic_store(v4[38], v8 + 76);
  v142 = *v4;
  v398 = v4[2];
  v397 = v142;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v399, v4[3]);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v400, v4[4]);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v400 + 1, v4[5]);
  v401 = v4[6];
  if (v402)
  {
    if (v4[7])
    {
      re::StringID::operator=(&v403, v4 + 8);
    }

    else
    {
      if (v403)
      {
        if (v403)
        {
        }
      }

      v404 = &str_67;
      v403 = 0;
      v402 = 0;
    }
  }

  else if (v4[7])
  {
    v402 = 1;
    re::StringID::StringID(&v403, v4 + 4);
  }

  v144 = *(v4 + 5);
  v145 = *(v4 + 6);
  *&v406[16] = *(v4 + 7);
  *v406 = v145;
  v405 = v144;
  v146 = *(v4 + 8);
  v147 = *(v4 + 9);
  v148 = *(v4 + 10);
  *&v408[16] = *(v4 + 11);
  *v408 = v148;
  v407 = v147;
  *&v406[32] = v146;
  v149 = *(v4 + 12);
  v150 = *(v4 + 13);
  v151 = *(v4 + 14);
  v411 = *(v4 + 15);
  v410 = v151;
  v409 = v150;
  *&v408[32] = v149;
  v152 = *(v4 + 16);
  v153 = *(v4 + 17);
  v154 = *(v4 + 18);
  v415 = v4[38];
  v414 = v154;
  v413 = v153;
  v412 = v152;
  re::ProjectiveMeshShadowBuilder::buildShadowGenerationData((v8 + 3), v300, &v304, v284, v392, v6, &v344);
  if (v344 == 1)
  {
    v157 = (v8 + 468);
    v158 = v8 + 55;
    if (v8 + 440 == &v344 + 8)
    {
      goto LABEL_228;
    }

    v159 = *v158;
    v160 = *(&v344 + 1);
    if (!*v158 || v159 == *(&v344 + 1))
    {
      *(v8 + 55) = *(&v344 + 1);
      *(&v344 + 1) = v159;
      v167 = v346;
      v168 = v8[28];
      v169 = v8[29];
      v8[28] = v345;
      v8[29] = v167;
      v345 = v168;
      v346 = v169;
    }

    else
    {
      if (*v157)
      {
        v161 = *(v8 + 116);
        if (v161)
        {
          memset_pattern16(*(v8 + 56), &unk_1E304C660, 4 * v161);
        }

        v162 = *(v8 + 118);
        if (v162)
        {
          v163 = 0;
          for (i = 0; i < v162; ++i)
          {
            v165 = *(v8 + 57);
            v166 = *(v165 + v163);
            if (v166 < 0)
            {
              *(v165 + v163) = v166 & 0x7FFFFFFF;
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v165 + v163 + 24));
              v162 = *(v8 + 118);
            }

            v163 += 80;
          }
        }

        *(v8 + 119) = 0x7FFFFFFF;
        *v157 = 0;
        ++*(v8 + 120);
        v160 = *(&v344 + 1);
      }

      if (!v160)
      {
LABEL_228:
        v3 = &v347[8];
        if (v8 + 488 != &v347[8])
        {
          v170 = *(v8 + 61);
          if (v170 && *&v347[8] && v170 != *&v347[8])
          {
            re::internal::assertLog(4, v155, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
            _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
            __break(1u);
          }

          *(v8 + 61) = *&v347[8];
          *&v347[8] = v170;
          v171 = v8[31];
          v8[31] = *&v347[16];
          *&v347[16] = v171;
          v172 = *(v8 + 65);
          *(v8 + 65) = v348;
          v348 = v172;
          ++*&v347[32];
          ++*(v8 + 128);
        }

        v5 = (v8 + 33);
        v4 = &v349;
        if (v8 + 33 == &v349)
        {
          goto LABEL_251;
        }

        v173 = *v5;
        v174 = v349;
        if (!*v5 || v173 == v349)
        {
          *(v8 + 66) = v349;
          v349 = v173;
          v178 = *(v8 + 536);
          *(v8 + 536) = v350;
          v350 = v178;
          v179 = *(v8 + 552);
          *(v8 + 552) = v351;
          v351 = v179;
        }

        else
        {
          if (*(v8 + 139))
          {
            v175 = *(v8 + 138);
            if (v175)
            {
              memset_pattern16(*(v8 + 67), &unk_1E304C660, 4 * v175);
            }

            v176 = *(v8 + 140);
            if (v176)
            {
              v177 = *(v8 + 68);
              do
              {
                if ((*v177 & 0x80000000) != 0)
                {
                  *v177 &= ~0x80000000;
                }

                v177 += 10;
                --v176;
              }

              while (v176);
            }

            *(v8 + 141) = 0x7FFFFFFF;
            *(v8 + 556) = 0;
            ++*(v8 + 142);
          }

          if (!v174)
          {
            goto LABEL_251;
          }

          if (*(v8 + 138) < DWORD1(v351))
          {
            re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity((v8 + 33), DWORD1(v351));
          }

          re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move((v8 + 33), &v349);
        }

        ++*(v8 + 142);
LABEL_251:
        v180 = *(v8 + 72);
        *(v8 + 72) = v353;
        v353 = v180;
        re::FixedArray<float>::operator=(v8 + 73, &v354);
        v6 = v285;
        if (v344)
        {
          if (v354)
          {
            if (v355)
            {
              (*(*v354 + 40))();
              v355 = 0;
              v356 = 0;
            }

            v354 = 0;
          }

          if (v353)
          {

            v353 = 0;
          }

          v181 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v349);
          if (*&v347[8])
          {
            if (v348)
            {
              (*(**&v347[8] + 40))(v181);
            }

            v348 = 0;
            memset(&v347[8], 0, 24);
            ++*&v347[32];
          }

          v156.n128_f64[0] = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(&v344 + 1);
        }

        goto LABEL_263;
      }

      if (*(v8 + 116) < DWORD1(v346))
      {
        re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(v8 + 440, DWORD1(v346));
      }

      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(v8 + 55, &v344 + 8);
    }

    ++*(v8 + 120);
    goto LABEL_228;
  }

LABEL_263:
  if (*&v301[16])
  {
    if (v303)
    {
      (*(**&v301[16] + 40))(v156);
    }

    v303 = 0;
    memset(&v301[16], 0, 24);
    ++v302;
  }

  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v300);
  if (v381[0] == 1)
  {
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&__b);
  }

  re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(&v308, (*(v281 + 192) + 48), *(v281 + 192) + 440, *(v6 + 49), v392, v17, &v304, v6);
  while (1)
  {
    if (v341)
    {
      v39 = 0;
      v299 = 0;
      v5 = &v344;
      v7 = v379;
      v17 = 0x7FFFFFFFLL;
      while (1)
      {
        j = *(a3 + 24);
        if (j <= v39)
        {
          goto LABEL_400;
        }

        v8 = (v343 + 8 * v39);
        v182 = *(a3 + 32);
        j = re::RenderFrameData::stream(v289, v8);
        v183 = **(re::RenderFrameData::stream(v289, v8) + 48);
        v4 = (*(v183 + 520))();
        *&v345 = 0;
        DWORD2(v345) = 0;
        *&v346 = 0;
        v344 = v284;
        re::DynamicArray<re::MeshScene>::setCapacity(&v344, 0);
        ++DWORD2(v345);
        v379[0] = &unk_1F5D11E20;
        v379[1] = &v344;
        v380 = v379;
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v300, v381);
        if (*v382 != 0x7FFFFFFF)
        {
          v184 = *(j + 16) + 96 * *v382;
          if (j)
          {
            v6 = *(j + 40);
            if (v6)
            {
              break;
            }
          }
        }

LABEL_279:
        if (v380 == v379)
        {
          (*(*v380 + 32))(v380);
        }

        else if (v380)
        {
          (*(*v380 + 40))();
        }

        v3 = v182 + 1568 * v39;
        if (v345)
        {
          v186 = re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(v3 + 40);
          *(v186 + 32) = 0;
          *(v186 + 24) = 0;
          *(v186 + 8) = 0;
          *(v186 + 16) = 0;
          *v186 = 0;
          *v186 = v344;
          *(v186 + 16) = v345;
          v344 = 0uLL;
          *&v345 = 0;
          *(v186 + 32) = v346;
          *&v346 = 0;
          ++DWORD2(v345);
          ++*(v186 + 24);
        }

        re::DynamicArray<re::MeshScene>::deinit(&v344);
        if (v4)
        {
          v187 = v4[5];
          if (v187)
          {
            for (j = 0; j != v187; ++j)
            {
              v188 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v4, j);
              v189 = re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(v3 + 40);
              *(v189 + 32) = 0;
              *(v189 + 24) = 0;
              *(v189 + 8) = 0;
              *(v189 + 16) = 0;
              *v189 = 0;
              *v189 = *v188;
              v190 = *(v188 + 8);
              *v188 = 0;
              *(v189 + 8) = v190;
              *(v188 + 8) = 0;
              v191 = *(v189 + 16);
              *(v189 + 16) = *(v188 + 16);
              *(v188 + 16) = v191;
              v192 = *(v189 + 32);
              *(v189 + 32) = *(v188 + 32);
              v193 = *(v188 + 24) + 1;
              *(v188 + 32) = v192;
              *(v188 + 24) = v193;
              ++*(v189 + 24);
            }
          }
        }

        *(v3 + 96) = (*(**(v3 + 1544) + 760))(*(v3 + 1544));
        *(v3 + 632) = (*(**(v3 + 1544) + 696))();
        *(v3 + 640) = (*(**(v3 + 1544) + 728))();
        if (v39 == v287)
        {
          goto LABEL_404;
        }

        v194 = v286 + 3016 * v39;
        if ((*(v194 + 2968) & 1) == 0)
        {
          re::LightContextBuilder::prepare(v194, v285[49], v3 + 40, *(v3 + 96), *(v3 + 104), *(v3 + 112), v3 + 512);
        }

        j = re::RenderFrameData::stream(v289, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
        if (HIDWORD(v344) == 0x7FFFFFFF)
        {
          v195 = 0;
        }

        else
        {
          v196 = *(j + 16) + 96 * HIDWORD(v344);
          if (v195)
          {
            if (!*(v195 + 40))
            {
              goto LABEL_424;
            }

            v195 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v195, 0);
          }
        }

        *(v3 + 16) = v195;
        j = re::RenderFrameData::stream(v289, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
        if (HIDWORD(v344) == 0x7FFFFFFF)
        {
          v198 = 0;
        }

        else
        {
          v199 = *(j + 16) + 96 * HIDWORD(v344);
          if (v198)
          {
            if (!*(v198 + 40))
            {
              goto LABEL_425;
            }

            v198 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v198, 0);
          }
        }

        *(v3 + 24) = v198;
        j = re::RenderFrameData::stream(v289, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
        if (HIDWORD(v344) == 0x7FFFFFFF)
        {
          v201 = 0;
        }

        else
        {
          v202 = *(j + 16) + 96 * HIDWORD(v344);
          if (v201)
          {
            if (!*(v201 + 40))
            {
              goto LABEL_426;
            }

            v201 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v201, 0);
          }
        }

        *(v3 + 32) = v201;
        j = re::RenderFrameData::stream(v289, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
        if (HIDWORD(v344) != 0x7FFFFFFF)
        {
          v204 = *(j + 16) + 96 * HIDWORD(v344);
          if (v206)
          {
            if (!*(v206 + 40))
            {
              goto LABEL_427;
            }

            if (!*(v206 + 8))
            {
              goto LABEL_429;
            }

            if ((*(v3 + 1520) & 1) == 0)
            {
              *(v3 + 1520) = 1;
            }

            *(v3 + 1521) = v299++;
          }
        }

        v207 = re::RenderFrameData::stream(v289, v8);
        *(v3 + 1552) = (*(**(v207 + 48) + 1272))(*(v207 + 48));
        j = re::RenderFrameData::stream(v289, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
        if (HIDWORD(v344) == 0x7FFFFFFF)
        {
          v208 = 0;
        }

        else
        {
          v209 = *(j + 16) + 96 * HIDWORD(v344);
          if (v208)
          {
            if (!*(v208 + 40))
            {
              goto LABEL_428;
            }

            v208 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v208, 0);
          }
        }

        *(v3 + 1560) = v208;
        if (++v39 >= v341)
        {
          goto LABEL_320;
        }
      }

      v3 = 0;
      while (1)
      {
        v185 = re::BucketArray<re::MeshScene,4ul>::operator[](j, v3);
        if (!v380)
        {
          goto LABEL_442;
        }

        (*(*v380 + 48))(v380, v185);
        if (v6 == ++v3)
        {
          goto LABEL_279;
        }
      }
    }

LABEL_320:
    re::LightContextAtlasContainer::allocateTiles(v317);
    v211 = v341;
    v3 = v287;
    v212 = a3;
    v213 = v285;
    if (!v341)
    {
      break;
    }

    v7 = 0;
    v39 = 0;
    v8 = &v344;
    v4 = &v375;
    v17 = v286;
    while (1)
    {
      j = *(v212 + 24);
      if (j <= v39)
      {
        break;
      }

      if (v3 == v39)
      {
        goto LABEL_412;
      }

      _X9 = v17 + 5984;
      __asm { PRFM            #0, [X9] }

      if ((*(v17 + 2968) & 1) == 0)
      {
        v220 = v213[49];
        v5 = *(v212 + 32) + v7;
        v221 = *(v5 + 96);
        v222 = *(v5 + 104);
        v223 = *(v5 + 112);
        v224 = (*(**(v5 + 1544) + 864))(*(v5 + 1544));
        re::LightContextBuilder::build(v17, v220, v5 + 40, v221, v222, v223, v5 + 512, v224, &v344);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5 + 136, &v344);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5 + 176, &v346 + 1);
        re::BucketArray<re::BufferSlice,8ul>::operator=((v5 + 216), &v347[32]);
        re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v5 + 272, &v352);
        re::FixedArray<float>::operator=((v5 + 320), &v357);
        re::FixedArray<float>::operator=((v5 + 344), &v360);
        re::FixedArray<float>::operator=((v5 + 368), &v363);
        re::FixedArray<float>::operator=((v5 + 392), &v366);
        re::FixedArray<float>::operator=((v5 + 416), &v369);
        re::FixedArray<float>::operator=((v5 + 440), &v372);
        v225 = v375;
        *(v5 + 480) = v376;
        *(v5 + 464) = v225;
        v226 = v378;
        *(v5 + 488) = v377;
        *(v5 + 504) = v226;
        if (v372)
        {
          if (v373)
          {
            (*(*v372 + 40))();
            v373 = 0;
            v374 = 0;
          }

          v372 = 0;
        }

        v3 = v287;
        v213 = v285;
        if (v369)
        {
          if (v370)
          {
            (*(*v369 + 40))();
            v370 = 0;
            v371 = 0;
          }

          v369 = 0;
        }

        if (v366)
        {
          if (v367)
          {
            (*(*v366 + 40))();
            v367 = 0;
            v368 = 0;
          }

          v366 = 0;
        }

        if (v363)
        {
          if (v364)
          {
            (*(*v363 + 40))();
            v364 = 0;
            v365 = 0;
          }

          v363 = 0;
        }

        if (v360)
        {
          if (v361)
          {
            (*(*v360 + 40))();
            v361 = 0;
            v362 = 0;
          }

          v360 = 0;
        }

        if (v357)
        {
          if (v358)
          {
            (*(*v357 + 40))();
            v358 = 0;
            v359 = 0;
          }

          v357 = 0;
        }

        re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(&v352);
        re::BucketArray<re::LightContext,16ul>::deinit(&v347[32]);
        if (*&v347[32])
        {
          v227 = v349;
          if ((v349 & 1) == 0)
          {
            (*(**&v347[32] + 40))();
            v227 = v349;
          }

          *&v347[32] = 0;
          v348 = 0;
          LODWORD(v349) = (v227 | 1) + 2;
        }

        re::DynamicArray<re::FilterView>::deinit(&v346 + 8);
        re::DynamicArray<re::ShadowView>::deinit(&v344);
        v211 = v341;
        v212 = a3;
      }

      ++v39;
      v17 += 3016;
      v7 += 1568;
      if (v39 >= v211)
      {
        goto LABEL_355;
      }
    }

LABEL_408:
    *&v300[0] = 0;
    memset(v347, 0, 32);
    v345 = 0u;
    v346 = 0u;
    v344 = 0u;
    v252 = MEMORY[0x1E69E9C10];
    v253 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v381 = 136315906;
    *&v381[4] = "operator[]";
    *v382 = 1024;
    if (v253)
    {
      v254 = 3;
    }

    else
    {
      v254 = 2;
    }

    *&v382[2] = 468;
    *&v382[6] = 2048;
    *&v382[8] = v39;
    *&v382[16] = 2048;
    *&v382[18] = j;
    _os_log_send_and_compose_impl(v254, v300, &v344, 80, &dword_1E1C61000, v252, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
    _os_crash_msg();
    __break(1u);
LABEL_412:
    *&v300[0] = 0;
    memset(v347, 0, 32);
    v345 = 0u;
    v346 = 0u;
    v344 = 0u;
    v255 = MEMORY[0x1E69E9C10];
    v256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v381 = 136315906;
    *&v381[4] = "operator[]";
    *v382 = 1024;
    if (v256)
    {
      v257 = 3;
    }

    else
    {
      v257 = 2;
    }

    *&v382[2] = 468;
    *&v382[6] = 2048;
    *&v382[8] = v3;
    *&v382[16] = 2048;
    *&v382[18] = v3;
    _os_log_send_and_compose_impl(v257, v300, &v344, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
    _os_crash_msg();
    __break(1u);
LABEL_416:
    *&v300[0] = 0;
    memset(v347, 0, 32);
    v345 = 0u;
    v346 = 0u;
    v344 = 0u;
    v258 = MEMORY[0x1E69E9C10];
    v259 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v381 = 136315906;
    *&v381[4] = "operator[]";
    *v382 = 1024;
    if (v259)
    {
      v260 = 3;
    }

    else
    {
      v260 = 2;
    }

    *&v382[2] = 468;
    *&v382[6] = 2048;
    *&v382[8] = v17;
    *&v382[16] = 2048;
    *&v382[18] = j;
    _os_log_send_and_compose_impl(v260, v300, &v344, 80, &dword_1E1C61000, v258, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
    _os_crash_msg();
    __break(1u);
LABEL_420:
    *&v300[0] = 0;
    memset(v347, 0, 32);
    v345 = 0u;
    v346 = 0u;
    v344 = 0u;
    v261 = MEMORY[0x1E69E9C10];
    v262 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v381 = 136315906;
    *&v381[4] = "operator[]";
    *v382 = 1024;
    if (v262)
    {
      v263 = 3;
    }

    else
    {
      v263 = 2;
    }

    *&v382[2] = 468;
    *&v382[6] = 2048;
    *&v382[8] = v3;
    *&v382[16] = 2048;
    *&v382[18] = v3;
    _os_log_send_and_compose_impl(v263, v300, &v344, 80, &dword_1E1C61000, v261, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
    _os_crash_msg();
    __break(1u);
LABEL_424:
    re::internal::assertLog(4, v197, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_425:
    re::internal::assertLog(4, v200, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_426:
    re::internal::assertLog(4, v203, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_427:
    re::internal::assertLog(4, v205, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_428:
    v278 = "first";
    v279 = 754;
    re::internal::assertLog(4, v210, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0");
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_429:
    *&v300[0] = 0;
    memset(v347, 0, 32);
    v345 = 0u;
    v346 = 0u;
    v344 = 0u;
    v264 = MEMORY[0x1E69E9C10];
    v265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v381 = 136315906;
    *&v381[4] = "operator[]";
    *v382 = 1024;
    if (v265)
    {
      v266 = 3;
    }

    else
    {
      v266 = 2;
    }

    *&v382[2] = 858;
    *&v382[6] = 2048;
    *&v382[8] = 0;
    *&v382[16] = 2048;
    *&v382[18] = 0;
    _os_log_send_and_compose_impl(v266, v300, &v344, 80, &dword_1E1C61000, v264, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
    _os_crash_msg();
    __break(1u);
    while (1)
    {
      *&v300[0] = 0;
      memset(v347, 0, 32);
      v345 = 0u;
      v346 = 0u;
      v344 = 0u;
      v267 = MEMORY[0x1E69E9C10];
      v268 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v381 = 136315906;
      *&v381[4] = "operator[]";
      *v382 = 1024;
      if (v268)
      {
        v269 = 3;
      }

      else
      {
        v269 = 2;
      }

      *&v382[2] = 866;
      *&v382[6] = 2048;
      *&v382[8] = 0;
      *&v382[16] = 2048;
      *&v382[18] = 0;
      _os_log_send_and_compose_impl(v269, v300, &v344, 80, &dword_1E1C61000, v267, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
      _os_crash_msg();
      __break(1u);
LABEL_437:
      *&v344 = 0xBEE9CE6A024C1838;
      *(&v344 + 1) = "meshshadow:textureGenerationEnableViewFrustumCulling";
      re::DebugSettingsManager::getWithErrorCode<BOOL>(j, &v344, &v311);
      re::StringID::destroyString(&v344);
LABEL_40:
      v283 = j;
      v284 = v7;
      v38 = v341;
      v280 = v8;
      if (v341)
      {
        v39 = 0;
        j = 0xBF58476D1CE4E5B9;
        v3 = 0x94D049BB133111EBLL;
        v7 = 24;
        v40 = a3;
        while (1)
        {
          v4 = *(v40 + 24);
          if (v4 <= v39)
          {
            *&v300[0] = 0;
            memset(v347, 0, 32);
            v345 = 0u;
            v346 = 0u;
            v344 = 0u;
            v240 = MEMORY[0x1E69E9C10];
            v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v381 = 136315906;
            *&v381[4] = "operator[]";
            *v382 = 1024;
            if (v241)
            {
              v242 = 3;
            }

            else
            {
              v242 = 2;
            }

            *&v382[2] = 468;
            *&v382[6] = 2048;
            *&v382[8] = v39;
            *&v382[16] = 2048;
            *&v382[18] = v4;
            _os_log_send_and_compose_impl(v242, v300, &v344, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
            _os_crash_msg();
            __break(1u);
LABEL_396:
            *&v300[0] = 0;
            memset(v347, 0, 32);
            v345 = 0u;
            v346 = 0u;
            v344 = 0u;
            v243 = MEMORY[0x1E69E9C10];
            v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v381 = 136315906;
            *&v381[4] = "operator[]";
            *v382 = 1024;
            if (v244)
            {
              v245 = 3;
            }

            else
            {
              v245 = 2;
            }

            *&v382[2] = 468;
            *&v382[6] = 2048;
            *&v382[8] = v39;
            *&v382[16] = 2048;
            *&v382[18] = v4;
            _os_log_send_and_compose_impl(v245, v300, &v344, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
            _os_crash_msg();
            __break(1u);
LABEL_400:
            *&v300[0] = 0;
            memset(v347, 0, 32);
            v345 = 0u;
            v346 = 0u;
            v344 = 0u;
            v246 = MEMORY[0x1E69E9C10];
            v247 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v381 = 136315906;
            *&v381[4] = "operator[]";
            *v382 = 1024;
            if (v247)
            {
              v248 = 3;
            }

            else
            {
              v248 = 2;
            }

            *&v382[2] = 468;
            *&v382[6] = 2048;
            *&v382[8] = v39;
            *&v382[16] = 2048;
            *&v382[18] = j;
            _os_log_send_and_compose_impl(v248, v300, &v344, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
            _os_crash_msg();
            __break(1u);
LABEL_404:
            *&v300[0] = 0;
            memset(v347, 0, 32);
            v345 = 0u;
            v346 = 0u;
            v344 = 0u;
            v249 = MEMORY[0x1E69E9C10];
            v250 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v381 = 136315906;
            *&v381[4] = "operator[]";
            *v382 = 1024;
            if (v250)
            {
              v251 = 3;
            }

            else
            {
              v251 = 2;
            }

            *&v382[2] = 468;
            *&v382[6] = 2048;
            *&v382[8] = v287;
            *&v382[16] = 2048;
            *&v382[18] = v287;
            _os_log_send_and_compose_impl(v251, v300, &v344, 80, &dword_1E1C61000, v249, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v381, 38, v278, v279);
            _os_crash_msg();
            __break(1u);
            goto LABEL_408;
          }

          v8 = (v343 + 8 * v39);
          v41 = 0xBF58476D1CE4E5B9 * (*v8 ^ (*v8 >> 30));
          v42 = (0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) ^ ((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) >> 31);
          if (!v313)
          {
            break;
          }

          v43 = v42 % DWORD2(v314);
          v44 = *(*(&v313 + 1) + 4 * v43);
          if (v44 == 0x7FFFFFFF)
          {
            goto LABEL_49;
          }

          while (*(v314 + 24 * v44 + 8) != *v8)
          {
            LODWORD(v44) = *(v314 + 24 * v44) & 0x7FFFFFFF;
            if (v44 == 0x7FFFFFFF)
            {
              goto LABEL_49;
            }
          }

LABEL_50:
          if (v4 <= v39)
          {
            goto LABEL_396;
          }

          v4 = (*(v40 + 32) + 1568 * v39);
          v47 = *(re::RenderFrameData::stream(v289, v8) + 48);
          v4[193] = v47;
          if (v17)
          {
            v48 = (*(*v47 + 880))(v47) != 0;
            v47 = v4[193];
          }

          else
          {
            v48 = 0;
          }

          *(v4 + 1504) = v48;
          *(v4 + 1505) = 0;
          *v4 = (*(*v47 + 480))(v47);
          ++v39;
          v38 = v341;
          v40 = a3;
          if (v39 >= v341)
          {
            j = v283;
            goto LABEL_57;
          }
        }

        LODWORD(v43) = 0;
LABEL_49:
        v45 = *(v40 + 32) + 1568 * v39;
        v46 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v313, v43, v42);
        *(v46 + 8) = *v8;
        *(v46 + 16) = v45;
        ++HIDWORD(v316);
        v40 = a3;
        v4 = *(a3 + 24);
        goto LABEL_50;
      }

      v40 = a3;
LABEL_57:
      v310 = 5.0;
      v3 = v5;
      if (j)
      {
        *&v344 = 0xB06DDEFED9D91CB8;
        *(&v344 + 1) = "iblshadow:distanceforglobaldirectionallight";
        v49 = re::DebugSettingsManager::getWithErrorCode<float>(j, &v344, &v310);
        if (v344)
        {
          if (v344)
          {
          }
        }

        v38 = v341;
        v40 = a3;
      }

      v287 = v5;
      if (!v38)
      {
        break;
      }

      v17 = 0;
      v4 = &v344;
      v7 = 1;
      LODWORD(v295) = v38;
      j = *(v40 + 24);
      if (!j)
      {
        goto LABEL_416;
      }

      v50 = *(v40 + 32);
      if ((*v40 & 1) == 0)
      {
        v51 = *(*v50 + 32);
        *v40 = 1;
        *(v40 + 1) = v51;
      }

      v6 = v343;
      *(v50 + 8) = *v343;
      v8 = re::RenderFrameData::stream(v289, v6);
      *(v50 + 104) = (*(**(v50 + 1544) + 568))();
      *(v50 + 112) = (*(**(v50 + 1544) + 600))();
      *(v50 + 120) = (*(**(v50 + 1544) + 632))();
      *(v50 + 128) = (*(**(v50 + 1544) + 664))();
      v298 = v50;
      *(v50 + 648) = (*(**(v50 + 1544) + 832))();
      j = re::RenderFrameData::stream(v289, v6);
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v381, &v344);
      if (HIDWORD(v344) == 0x7FFFFFFF)
      {
        v309 = 0;
        v52 = v283;
        goto LABEL_76;
      }

      v53 = *(j + 16) + 96 * HIDWORD(v344);
      v309 = 0;
      v52 = v283;
      if (!v54 || !*(v54 + 40))
      {
        goto LABEL_76;
      }

      if (*(v54 + 8))
      {
        if (*(v54 + 16))
        {
          v55 = (v54 + 24);
        }

        else
        {
          v55 = *(v54 + 32);
        }

        if (**v55 == 1)
        {
          v309 = 1;
        }

LABEL_76:
        if (v52)
        {
          *&v344 = 0xDE63B48E3B4B8A1ELL;
          *(&v344 + 1) = "globaldirectionallight";
          v56 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v52, &v344, &v309);
          if (v344)
          {
            if (v344)
            {
            }
          }
        }

        if (v5)
        {
          *(v286 + 2969) = v282;
          if (v309 == 1)
          {
            re::LightContextBuilder::addGlobalDirectionalLight(v286, v310);
          }

          v17 = v390;
          v390[0] = &unk_1F5D11BF0;
          v390[1] = v286;
          v391 = v390;
          re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v8, v381, &v344);
          {
LABEL_89:
            if (v391 == v390)
            {
              (*(*v391 + 32))(v391);
              v60 = v296;
            }

            else
            {
              v60 = v296;
              if (v391)
              {
                (*(*v391 + 40))();
              }
            }

            v61 = *(v298 + 648);
            if (!v61 || (v291 = *(v61 + 40)) == 0)
            {
LABEL_134:
              v85 = *(v298 + 120);
              if (v85)
              {
                v86 = *(v85 + 40);
                if (v86)
                {
                  for (k = 0; k != v86; ++k)
                  {
                    v88 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v85, k);
                    v89 = *(v88 + 16);
                    if (v89)
                    {
                      v90 = 1648 * v89;
                      v91 = (*(v88 + 32) + 1633);
                      do
                      {
                        v92 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v313, *(v91 - 81) >> 1);
                        if (v92)
                        {
                          *(v298 + 1512) = ***v92;
                          v93 = *v91;
                          if (v93 == 1)
                          {
                            *(v298 + 1504) = *(*v92 + 1504);
                          }

                          *(v298 + 626) = 1;
                          *(v298 + 625) = *(v91 - 1);
                          *(v298 + 624) = v93;
                        }

                        v91 += 1648;
                        v90 -= 1648;
                      }

                      while (v90);
                    }
                  }
                }
              }

              v94 = *(v298 + 128);
              if (v94)
              {
                v95 = *(v94 + 40);
                if (v95)
                {
                  for (m = 0; m != v95; ++m)
                  {
                    v97 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v94, m);
                    v98 = *(v97 + 16);
                    if (v98)
                    {
                      v99 = 3216 * v98;
                      v100 = (*(v97 + 32) + 3201);
                      do
                      {
                        v101 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v313, *(v100 - 81) >> 1);
                        if (v101)
                        {
                          *(v298 + 1512) = ***v101;
                          v102 = *v100;
                          if (v102 == 1)
                          {
                            *(v298 + 1504) = *(*v101 + 1504);
                          }

                          *(v298 + 626) = 1;
                          *(v298 + 625) = *(v100 - 1);
                          *(v298 + 624) = v102;
                        }

                        v100 += 3216;
                        v99 -= 3216;
                      }

                      while (v99);
                    }
                  }
                }
              }

              v389 = 0;
              operator new();
            }

            v62 = 0;
            v290 = *(v298 + 648);
LABEL_96:
            v292 = v62;
            v63 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v61, v62);
            v64 = *(v63 + 6972);
            if (v64)
            {
              v65 = v63 + 6944;
              v295 = *(v63 + 6976);
              v60 = 0;
              if (v295)
              {
                v66 = *(v63 + 6960);
                do
                {
                  if ((*v66 & 0x80000000) != 0)
                  {
                    goto LABEL_104;
                  }

                  v66 += 216;
                  ++v60;
                }

                while (v295 != v60);
                v60 = *(v63 + 6976);
              }

              else
              {
                LODWORD(v295) = 0;
              }

LABEL_104:
              v293 = v63 + 6944;
            }

            else
            {
              v65 = v63 + 32;
              v293 = v63 + 32 + 864 * *(v63 + 16);
            }

            v294 = *(v63 + 6972);
            while (1)
            {
LABEL_106:
              if (v64)
              {
                if (v295 == v60)
                {
                  goto LABEL_133;
                }

                v67 = *(v65 + 16) + 864 * v60 + 16;
              }

              else
              {
                if (v65 == v293)
                {
LABEL_133:
                  v62 = v292 + 1;
                  v61 = v290;
                  if (v292 + 1 == v291)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_96;
                }

                v67 = v65 + 16;
              }

              v68 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v313, *v67 >> 1);
              if (v68)
              {
                v69 = v68;
                v297 = v60;
                v70 = *v68;
                v71 = *(v298 + 104);
                if (v71)
                {
                  v72 = *(v71 + 40);
                  if (v72)
                  {
                    for (n = 0; n != v72; ++n)
                    {
                      v74 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v71, n);
                      *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized((v70 + 512)) = v74;
                    }
                  }
                }

                v75 = *(v298 + 112);
                if (v75)
                {
                  v76 = *(v75 + 40);
                  if (v76)
                  {
                    for (ii = 0; ii != v76; ++ii)
                    {
                      v78 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v75, ii);
                      *re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized((v70 + 568)) = v78;
                    }
                  }
                }

                v79 = *(v298 + 8);
                v80 = *v69;
                if ((*(*v69 + 1528) & 1) == 0)
                {
                  *(v80 + 1528) = 1;
                }

                *(v80 + 1536) = v79;
                v60 = v297;
                v64 = v294;
                if ((*(v67 + 768) & 1) == 0)
                {
                  *(v80 + 1512) = **v298;
                  v80 = *v69;
                }

                *(v80 + 1504) = *(v298 + 1504);
                v70[626] = 1;
                v70[625] = *(v67 + 769);
                v70[624] = *(v67 + 770);
              }

              if (v64)
              {
                v81 = *(v65 + 32);
                v82 = v60 + 1;
                if (v81 <= v60 + 1)
                {
                  v60 = (v60 + 1);
                }

                else
                {
                  v60 = v81;
                }

                do
                {
                  if (v60 == v82)
                  {
                    goto LABEL_106;
                  }

                  v83 = v82;
                  v84 = *(*(v65 + 16) + 864 * v82++);
                }

                while ((v84 & 0x80000000) == 0);
                v60 = v83;
              }

              else
              {
                v65 += 864;
              }
            }
          }

          v3 = 0;
          while (1)
          {
            v59 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](j, v3);
            if (!v391)
            {
              goto LABEL_442;
            }

            (*(*v391 + 48))(v391, v59);
            if (v58 == ++v3)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_420;
      }
    }

    *&v307 = 0;
    v305 = 0;
    v306 = 0;
    v304 = v284;
    re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(&v304, 0);
    ++v306;
    *&v344 = 0xC1ECEDF69A9CD01;
    v103 = re::RenderFrameData::stream(v289, &v344);
    v387[0] = &unk_1F5D11D50;
    v387[1] = &v304;
    v388 = v387;
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v103, v381, &v344);
    if (HIDWORD(v344) == 0x7FFFFFFF)
    {
      v6 = v285;
      v3 = v280;
    }

    else
    {
      v104 = *(v103 + 16) + 96 * HIDWORD(v344);
      v6 = v285;
      v3 = v280;
      if (j)
      {
        v105 = *(j + 40);
        if (v105)
        {
          v17 = 0;
          do
          {
            v106 = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](j, v17);
            if (!v388)
            {
              goto LABEL_442;
            }

            (*(*v388 + 48))(v388, v106);
          }

          while (v105 != ++v17);
        }
      }
    }

    if (v388 == v387)
    {
      (*(*v388 + 32))(v388);
      j = v283;
    }

    else
    {
      j = v283;
      if (v388)
      {
        (*(*v388 + 40))();
      }
    }

    v107 = (*(**v3 + 280))(*v3);
    if (v107)
    {
      v108 = v107;
      if ((atomic_load_explicit(&qword_1EE1BF6B0, memory_order_acquire) & 1) == 0)
      {
        v107 = __cxa_guard_acquire(&qword_1EE1BF6B0);
        if (v107)
        {
          _MergedGlobals_514 = re::hashString("SkyScope", v270);
          __cxa_guard_release(&qword_1EE1BF6B0);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1BF6C0, memory_order_acquire) & 1) == 0)
      {
        v107 = __cxa_guard_acquire(&qword_1EE1BF6C0);
        if (v107)
        {
          v272 = _MergedGlobals_514;
          v273 = ((v272 << 6) - 0x61C8864680B583E9 + (v272 >> 2) + re::hashString("RenderFrame", v271)) ^ v272;
          j = v283;
          qword_1EE1BF6B8 = v273;
          __cxa_guard_release(&qword_1EE1BF6C0);
        }
      }

      v109 = "N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE" & 0x8000000000000000) != 0)
      {
        v110 = ("N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
        v111 = 5381;
        do
        {
          v109 = v111;
          v112 = *v110++;
          v111 = (33 * v111) ^ v112;
        }

        while (v112);
      }

      *&v344 = (qword_1EE1BF6B8 - 0x61C8864680B583E9 + (v109 << 6) + (v109 >> 2)) ^ v109;
      v113 = re::globalAllocators(v107);
      v114 = (*(*v113[2] + 32))(v113[2], 224, 16);
      *v114 = &unk_1F5D11DF8;
      v115 = *(v108 + 1);
      *(v114 + 16) = *v108;
      *(v114 + 32) = v115;
      v116 = *(v108 + 2);
      v117 = *(v108 + 3);
      v118 = *(v108 + 4);
      *(v114 + 96) = *(v108 + 20);
      *(v114 + 64) = v117;
      *(v114 + 80) = v118;
      *(v114 + 48) = v116;
      *(v114 + 136) = 0;
      *(v114 + 112) = 0;
      *(v114 + 120) = 0;
      *(v114 + 104) = 0;
      *(v114 + 128) = 0;
      *(v114 + 104) = *(v108 + 11);
      *(v108 + 11) = 0;
      *(v114 + 112) = *(v108 + 12);
      *(v108 + 12) = 0;
      v119 = *(v114 + 120);
      *(v114 + 120) = *(v108 + 13);
      *(v108 + 13) = v119;
      v120 = *(v114 + 136);
      *(v114 + 136) = *(v108 + 15);
      *(v108 + 15) = v120;
      ++*(v108 + 28);
      ++*(v114 + 128);
      *(v114 + 176) = 0;
      *(v114 + 152) = 0;
      *(v114 + 160) = 0;
      *(v114 + 144) = 0;
      *(v114 + 168) = 0;
      *(v114 + 144) = *(v108 + 16);
      *(v108 + 16) = 0;
      *(v114 + 152) = *(v108 + 17);
      *(v108 + 17) = 0;
      v121 = *(v114 + 160);
      *(v114 + 160) = *(v108 + 18);
      *(v108 + 18) = v121;
      v122 = *(v114 + 176);
      *(v114 + 176) = *(v108 + 20);
      *(v108 + 20) = v122;
      ++*(v108 + 38);
      ++*(v114 + 168);
      v123 = *(v108 + 168);
      *(v114 + 193) = *(v108 + 177);
      *(v114 + 184) = v123;
      *v381 = v114;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 48, &v344, v381);
    }

    v17 = (*(**v3 + 344))(*v3);
    v124 = (*(**v3 + 312))(*v3);
    if (v17)
    {
      v4 = v124;
      if (!v124)
      {
        goto LABEL_443;
      }

      v8 = *(v281 + 192);
      if (j)
      {
        goto LABEL_444;
      }

      goto LABEL_178;
    }
  }

LABEL_355:
  v228 = v304;
  if (v304)
  {
    v229 = v307;
    if (v307)
    {
      if (v305)
      {
        v230 = 0;
        v231 = 368 * v305;
        do
        {
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v229 + v230 + 312));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v229 + v230 + 264));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v229 + v230 + 216));
          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v229 + v230 + 168));
          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v229 + v230 + 120));
          re::DynamicArray<unsigned long>::deinit(v229 + v230 + 80);
          re::DynamicArray<unsigned long>::deinit(v229 + v230 + 40);
          re::DynamicArray<unsigned long>::deinit(v229 + v230);
          v230 += 368;
        }

        while (v231 != v230);
        v228 = v304;
        v229 = v307;
      }

      (*(*v228 + 40))(v228, v229);
    }
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v312);
  v233.n128_f64[0] = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v313);
  if (v402 == 1)
  {
    if (v403)
    {
      if (v403)
      {
      }
    }

    v404 = &str_67;
    v403 = 0;
  }

  if (*(&v400 + 1))
  {

    *(&v400 + 1) = 0;
  }

  if (v400)
  {

    *&v400 = 0;
  }

  if (v399)
  {

    v399 = 0;
  }

  v234 = v392[0];
  if (v392[0] && v395)
  {
    if (v393)
    {
      v235 = 32 * v393;
      v236 = (v395 + 8);
      do
      {
        re::StringID::destroyString(v236);
        v236 = (v236 + 32);
        v235 -= 32;
      }

      while (v235);
      v234 = v392[0];
    }

    (*(*v234 + 40))(v234, v233);
  }

  if (v3)
  {
    v237 = 3016 * v3;
    v238 = v286;
    do
    {
      re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((v238 + 80));
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit((v238 + 2912));
      *(v238 + 64) = 0;
      *(v238 + 72) = 0;
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit((v238 + 2912));
      re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((v238 + 80));
      re::FixedArray<re::FixedArray<unsigned int>>::deinit((v238 + 40));
      re::DynamicArray<re::DirectionalLightInfo>::deinit(v238);
      v238 += 3016;
      v237 -= 3016;
    }

    while (v237);
  }

  re::DataArray<re::TextureAtlasTile>::deinit(&v328);
  if (v328)
  {
    if (v332)
    {
      (*(*v328 + 40))();
    }

    v332 = 0;
    v329 = 0;
    v330 = 0;
    v328 = 0;
    ++v331;
  }

  re::DataArray<re::TextureAtlasTile>::deinit(&v318);
  if (v318 && v321)
  {
    (*(*v318 + 40))();
  }

  return re::DynamicArray<re::WeakStringID>::deinit(v340);
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 16;
  }
}

void *re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
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
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v14 = v12[2];
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          v11[3] = v14;
          re::StringID::destroyString(v12);
          v11 += 4;
          v8 = v12 + 3;
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

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, unint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }

  v5 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = 0u;
  result = v5 + 16;
  *(result - 8) = v6;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 36) = 0x7FFFFFFF;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, unint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }

  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = 0;
  result = v5 + 16;
  *(result - 8) = v6;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  ++*(a1 + 40);
  return result;
}

unint64_t *re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 112 * v5;
  *v11 = 0;
  *(v11 + 8) = 0;
  result = re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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