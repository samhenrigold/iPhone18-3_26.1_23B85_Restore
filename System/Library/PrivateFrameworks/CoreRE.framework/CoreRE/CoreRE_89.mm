double re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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

        v4 += 20;
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

uint64_t *re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
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
          re::DynamicArray<re::VFXScene>::deinit(v6 + v4 + 16);
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
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void ___ZN2re4ecs212_GLOBAL__N_129legacyMaterialParameterTablesEv_block_invoke()
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = 0x9E3779B97F4A7C17;
  MurmurHash3_x64_128("Opaque", 6uLL, 0, &v49);
  v2 = v49;
  v3 = *(&v49 + 1) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583E9;
  MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v49);
  v37 = *(&v49 + 1) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583E9;
  v38 = v49;
  v4 = MurmurHash3_x64_128("VFXDepthWrite", 0xDuLL, 0, &v49);
  v5 = v49;
  v6 = *(&v49 + 1) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583E9;
  for (i = 0; i != 4; ++i)
  {
    re::make::shared::object<re::MaterialParameterTable>(v7, &v39);
    v9 = qword_1EE19E8A8;
    if (qword_1EE19E8A8 <= i)
    {
      v40 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v19 = MEMORY[0x1E69E9C10];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v41 = 136315906;
      v42 = "operator[]";
      v43 = 1024;
      if (v20)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v44 = 468;
      v45 = 2048;
      v46 = i;
      v47 = 2048;
      v48 = v9;
      _os_log_send_and_compose_impl(v21, &v40, &v49, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v33, v35);
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v40 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v41 = 136315906;
      v42 = "operator[]";
      v43 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v44 = 468;
      v45 = 2048;
      v46 = i;
      v47 = 2048;
      v48 = i;
      _os_log_send_and_compose_impl(v24, &v40, &v49, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v34, v36);
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v40 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v41 = 136315906;
      v42 = "operator[]";
      v43 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v44 = 468;
      v45 = 2048;
      v46 = v6;
      v47 = 2048;
      v48 = v6;
      _os_log_send_and_compose_impl(v27, &v40, &v49, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v34, v36);
      _os_crash_msg();
      __break(1u);
      goto LABEL_44;
    }

    v10 = *(qword_1EE19E8B0 + 8 * i);
    *(qword_1EE19E8B0 + 8 * i) = v39;
    v39 = v10;
    if (v10)
    {
    }
  }

  if (!qword_1EE19E8A8)
  {
LABEL_44:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v44 = 468;
    v45 = 2048;
    v46 = 0;
    v47 = 2048;
    v48 = 0;
    _os_log_send_and_compose_impl(v30, &v40, &v49, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v33, v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  if (qword_1EE19E8A8 == 1)
  {
LABEL_48:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v44 = 468;
    v45 = 2048;
    v46 = 1;
    v47 = 2048;
    v48 = 1;
    _os_log_send_and_compose_impl(v32, &v40, &v49, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v33, v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  i = *qword_1EE19E8B0;
  v11 = *(qword_1EE19E8B0 + 8);
  v0 = &unk_1EE1C6000;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once == -1)
  {
    goto LABEL_9;
  }

LABEL_52:
  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
LABEL_9:
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, v3 ^ v2, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v11, v37 ^ v38, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v34 = v11;
  v36 = v6;
  re::MaterialParameterTable::addPassTechniqueMapping(v11, v6 ^ v5, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  MurmurHash3_x64_128("FadeDepthPrepass", 0x10uLL, 0, &v49);
  v0 = v49;
  v13 = &v1[64 * v49 + *(&v49 + 1) + (v49 >> 2)];
  MurmurHash3_x64_128("FadeOpaque", 0xAuLL, 0, &v49);
  v3 = v49;
  v14 = &v1[64 * v49 + *(&v49 + 1)];
  MurmurHash3_x64_128("VFXFadeOpaqueDepthWrite", 0x17uLL, 0, &v49);
  v2 = v49;
  v15 = &v1[*(&v49 + 1)];
  v1 = &unk_1EE1C6000;
  v16 = v5;
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v5 = &v15[64 * v2];
  re::MaterialParameterTable::addPassTechniqueMapping(i, v13 ^ v0, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, &v14[v3 >> 2] ^ v3, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, &v5[v2 >> 2] ^ v2, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v34, v37 ^ v38, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v17 = re::MaterialParameterTable::addPassTechniqueMapping(v34, v36 ^ v16, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  v18 = 0;
  i = qword_1EE19E8A8;
  v6 = qword_1EE19E890;
  do
  {
    if (i == v18)
    {
      goto LABEL_36;
    }

    if (v6 == v18)
    {
      goto LABEL_40;
    }

    *(qword_1EE19E898 + 8 * v18) = *(qword_1EE19E8B0 + 8 * v18);
    ++v18;
  }

  while (v18 != 4);
}

_OWORD *re::FixedArray<re::SharedPtr<re::MaterialParameterTable>>::init<>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 4;
  result = (*(*a2 + 32))(a2, 32, 8);
  a1[2] = result;
  if (result)
  {
    *result = 0u;
    result[1] = 0u;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return result;
}

void re::make::shared::object<re::MaterialParameterTable>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 1128, 8);
  bzero(v4, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v4);
  *a2 = v4;
}

double re::MaterialParameterTable::MaterialParameterTable(re::MaterialParameterTable *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CD3BF8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = &unk_1F5CC38C8;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 88) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 106) = 1;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 54) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 58) = 0;
  *(this + 67) = 0;
  *(this + 136) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 98) = 0;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 85) = &unk_1F5CC8148;
  *(this + 868) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 792) = 0u;
  *(this + 266) = 0;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 888) = 0u;
  *(this + 1068) = 0x7FFFFFFFLL;
  *(this + 1080) = 0;
  *(this + 1092) = 0;
  *(this + 560) = 0;
  *(this + 1122) = 0;
  return result;
}

void re::MaterialParameterTable::~MaterialParameterTable(re::MaterialParameterTable *this)
{
  re::MaterialParameterTable::~MaterialParameterTable(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CD3BF8;
  v2 = (this + 24);
  re::ShaderParameterTable::deinit((this + 24));
  re::TextureParameterTable::deinit((this + 552));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 129);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 129);
  re::TextureParameterTable::~TextureParameterTable((this + 552));
  re::ShaderParameterTable::~ShaderParameterTable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

double re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v6 + v4 + 16));
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

void ___ZN2re4ecs212_GLOBAL__N_123materialParameterTablesEv_block_invoke()
{
  v62 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Opaque", 6uLL, 0, &v57);
  v1 = v57;
  v2 = *(&v57 + 1) + (v57 << 6) + (v57 >> 2) - 0x61C8864680B583E9;
  MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v57);
  v3 = v57;
  v45 = *(&v57 + 1) + (v57 << 6) + (v57 >> 2) - 0x61C8864680B583E9;
  v4 = MurmurHash3_x64_128("VFXDepthWrite", 0xDuLL, 0, &v57);
  v5 = v57;
  v6 = *(&v57 + 1) + (v57 << 6) + (v57 >> 2) - 0x61C8864680B583E9;
  v8 = 0;
  v9 = &unk_1EE19E000;
  do
  {
    re::make::shared::object<re::MaterialParameterTable>(v7, &v47);
    v10 = qword_1EE19E8D8;
    if (qword_1EE19E8D8 <= v8)
    {
      v48 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v52 = 468;
      v53 = 2048;
      v54 = v8;
      v55 = 2048;
      v56 = v10;
      _os_log_send_and_compose_impl(v24, &v48, &v57, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v41);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v48 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v52 = 468;
      v53 = 2048;
      v54 = v8;
      v55 = 2048;
      v56 = v8;
      _os_log_send_and_compose_impl(v27, &v48, &v57, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v42);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v48 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v52 = 468;
      v53 = 2048;
      v54 = v10;
      v55 = 2048;
      v56 = v10;
      _os_log_send_and_compose_impl(v30, &v48, &v57, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v42);
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

    v11 = *(qword_1EE19E8E0 + 8 * v8);
    *(qword_1EE19E8E0 + 8 * v8) = v47;
    v47 = v11;
    if (v11)
    {
    }

    ++v8;
  }

  while (v8 != 4);
  if (!qword_1EE19E8D8)
  {
LABEL_51:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v52 = 468;
    v53 = 2048;
    v54 = 0;
    v55 = 2048;
    v56 = 0;
    _os_log_send_and_compose_impl(v33, &v48, &v57, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  if (qword_1EE19E8D8 == 1)
  {
LABEL_55:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v52 = 468;
    v53 = 2048;
    v54 = 1;
    v55 = 2048;
    v56 = 1;
    _os_log_send_and_compose_impl(v36, &v48, &v57, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

  if (qword_1EE19E8D8 <= 2)
  {
LABEL_59:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v52 = 468;
    v53 = 2048;
    v54 = 2;
    v55 = 2048;
    v56 = 2;
    _os_log_send_and_compose_impl(v39, &v48, &v57, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  v10 = *qword_1EE19E8E0;
  v46 = *(qword_1EE19E8E0 + 8);
  v8 = *(qword_1EE19E8E0 + 16);
  v0 = &unk_1EE1C6000;
  v9 = v2;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once == -1)
  {
    goto LABEL_10;
  }

LABEL_63:
  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
LABEL_10:
  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v10, v9 ^ v1, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v46, v45 ^ v3, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v8, v45 ^ v3, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  v43 = v3;
  if (v0[270] != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v3 = v5;
  v44 = v6;
  re::MaterialParameterTable::addPassTechniqueMapping(v8, v6 ^ v5, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  MurmurHash3_x64_128("FadeDepthPrepass", 0x10uLL, 0, &v57);
  v14 = v57;
  v5 = *(&v57 + 1) - 0x61C8864680B583E9 + (v57 << 6) + (v57 >> 2);
  MurmurHash3_x64_128("FadeOpaque", 0xAuLL, 0, &v57);
  v15 = v57;
  v16 = *(&v57 + 1) - 0x61C8864680B583E9 + (v57 << 6);
  MurmurHash3_x64_128("VFXFadeOpaqueDepthWrite", 0x17uLL, 0, &v57);
  v1 = v57;
  v17 = *(&v57 + 1) - 0x61C8864680B583E9;
  v0 = &unk_1EE1C6000;
  v42 = v8;
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v18 = v17 + (v1 << 6);
  v19 = v16 + (v15 >> 2);
  v6 = &unk_1EE1C6000;
  re::MaterialParameterTable::addPassTechniqueMapping(v10, v5 ^ v14, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v9 = v18 + (v1 >> 2);
  re::MaterialParameterTable::addPassTechniqueMapping(v10, v19 ^ v15, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v10, v9 ^ v1, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v46, v45 ^ v43, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v42, v45 ^ v43, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v20 = re::MaterialParameterTable::addPassTechniqueMapping(v42, v44 ^ v3, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  v21 = 0;
  v8 = qword_1EE19E8D8;
  v10 = qword_1EE19E8C0;
  do
  {
    if (v8 == v21)
    {
      goto LABEL_43;
    }

    if (v10 == v21)
    {
      goto LABEL_47;
    }

    *(qword_1EE19E8C8 + 8 * v21) = *(qword_1EE19E8E0 + 8 * v21);
    v21 = (v21 + 1);
  }

  while (v21 != 4);
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine28getOcclusionTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = 1.0;
  v3 = 1.0 - (*a2 / a2[1]);
  if (v3 <= 1.0)
  {
    v2 = 1.0 - (*a2 / a2[1]);
  }

  v4 = v3 < 0.0;
  result = 0.0;
  if (!v4)
  {
    return v2;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine28getOcclusionTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = *a2 / a2[1];
  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v3 = *a2 / a2[1];
  }

  v4 = v2 < 0.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine34getDepthMitigationTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = 1.0;
  v3 = 1.0 - (*a2 / a2[1]);
  if (v3 <= 1.0)
  {
    v4 = 1.0 - (*a2 / a2[1]);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = v3 < 0.0;
  result = 0.0;
  if (v5)
  {
    v4 = 0.0;
  }

  v7 = 1.0 - ((v4 - a2[4]) / (a2[3] - a2[4]));
  if (v7 <= 1.0)
  {
    v2 = v7;
  }

  if (v7 >= 0.0)
  {
    return v2;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine34getDepthMitigationTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = *a2 / a2[1];
  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v4 = *a2 / a2[1];
  }

  else
  {
    v4 = 1.0;
  }

  v5 = v2 < 0.0;
  result = 0.0;
  if (v5)
  {
    v4 = 0.0;
  }

  v7 = 1.0 - ((v4 - a2[4]) / (a2[3] - a2[4]));
  if (v7 <= 1.0)
  {
    v3 = v7;
  }

  if (v7 >= 0.0)
  {
    return v3;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine37getSceneUnderstandingTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = 1.0;
  v3 = 1.0 - (*a2 / a2[1]);
  if (v3 <= 1.0)
  {
    v4 = 1.0 - (*a2 / a2[1]);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = v3 < 0.0;
  result = 0.0;
  if (v5)
  {
    v4 = 0.0;
  }

  v7 = (v4 - a2[3]) / (a2[2] - a2[3]);
  if (v7 <= 1.0)
  {
    v2 = v7;
  }

  if (v7 >= 0.0)
  {
    return v2;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine37getSceneUnderstandingTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = *a2 / a2[1];
  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v4 = *a2 / a2[1];
  }

  else
  {
    v4 = 1.0;
  }

  v5 = v2 < 0.0;
  result = 0.0;
  if (v5)
  {
    v4 = 0.0;
  }

  v7 = (v4 - a2[3]) / (a2[2] - a2[3]);
  if (v7 <= 1.0)
  {
    v3 = v7;
  }

  if (v7 >= 0.0)
  {
    return v3;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZNK2re4ecs221OcclusionStateMachine44getOcclusionEntityReactivateTransitionFactorEvEUlRKT_E_EEJRKNS0_6__baseILNS0_6_TraitE0EJNS9_21OcclusionEnabledStateENS9_22OcclusionDisabledStateENS9_34OcclusionTransitionToDisabledStateENS9_33OcclusionTransitionToEnabledStateENS9_38EntityDeactivateInOcclusionEnableStateENS9_43TransitionFromEntityDeactivateToEnableStateEEEEEEEDcSB_DpT0_(uint64_t a1, float *a2)
{
  v2 = *a2 / a2[1];
  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v3 = *a2 / a2[1];
  }

  v4 = v2 < 0.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

void *re::DynamicArray<re::VFXScene>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::VFXScene>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 54)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1024, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v42, v44);
          __break(1u);
        }

        else
        {
          v2 = a2 << 10;
          result = (*(*result + 32))(result, a2 << 10, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_26;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v43, v45);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_26:
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
        v11 = (v8 + (v9 << 10));
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          memcpy(&v7[v10 / 8], (v8 + v10), 0x160uLL);
          v14 = v13 + 44;
          *(v13 + 22) = 0u;
          *(v13 + 23) = 0u;
          v15 = (v8 + v10 + 352);
          *(v13 + 24) = 0u;
          *(v13 + 25) = 0u;
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(&v7[v10 / 8 + 44], v15);
          *(v13 + 104) = *(v8 + v10 + 416);
          v16 = *(v8 + v10 + 424);
          *(v13 + 424) = v16;
          if (v16 == 1)
          {
            v13[54] = *(v12 + 432);
          }

          v17 = *(v12 + 440);
          *(v13 + 57) = *(v12 + 456);
          *(v13 + 55) = v17;
          v18 = *(v12 + 472);
          v19 = *(v12 + 488);
          v20 = *(v12 + 504);
          *(v13 + 517) = *(v12 + 517);
          *(v13 + 63) = v20;
          *(v13 + 61) = v19;
          *(v13 + 59) = v18;
          v21 = *(v12 + 544);
          *(v13 + 544) = v21;
          if (v21 == 1)
          {
            v22 = &v7[v10 / 8];
            v23 = *(v8 + v10 + 576);
            *(v22 + 35) = *(v8 + v10 + 560);
            *(v22 + 36) = v23;
          }

          v13[74] = *(v12 + 592);
          v24 = *(v12 + 608);
          *(v13 + 608) = v24;
          if (v24 == 1)
          {
            v25 = &v7[v10 / 8];
            v26 = *(v8 + v10 + 624);
            v27 = *(v8 + v10 + 640);
            v28 = *(v8 + v10 + 672);
            v25[41] = *(v8 + v10 + 656);
            v25[42] = v28;
            v25[39] = v26;
            v25[40] = v27;
          }

          v29 = *(v12 + 688);
          v30 = *(v12 + 704);
          *(v13 + 360) = *(v12 + 720);
          *(v13 + 43) = v29;
          *(v13 + 44) = v30;
          *(v13 + 46) = *(v12 + 736);
          v31 = *(v12 + 752);
          *(v12 + 752) = 0;
          v13[94] = v31;
          *(v13 + 48) = *(v12 + 768);
          v32 = *(v12 + 784);
          v33 = *(v12 + 800);
          v34 = *(v12 + 832);
          *(v13 + 51) = *(v12 + 816);
          *(v13 + 52) = v34;
          *(v13 + 49) = v32;
          *(v13 + 50) = v33;
          v35 = *(v12 + 848);
          v36 = *(v12 + 864);
          v37 = *(v12 + 880);
          *(v13 + 224) = *(v12 + 896);
          *(v13 + 54) = v36;
          *(v13 + 55) = v37;
          *(v13 + 53) = v35;
          LODWORD(v31) = *(v12 + 900);
          *(v13 + 900) = v31;
          if (v31 == 1)
          {
            LODWORD(v7[v10 / 8 + 113]) = *(v8 + v10 + 904);
          }

          v13[114] = *(v12 + 912);
          v38 = &v7[v10 / 8];
          v39 = v8 + v10;
          re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(&v7[v10 / 8 + 115], v8 + v10 + 920);
          v40 = *(v8 + v10 + 960);
          *(v14 + 608) = v40;
          if (v40 == 1)
          {
            v41 = *(v39 + 992);
            *(v38 + 61) = *(v39 + 976);
            *(v38 + 62) = v41;
          }

          *(v14 + 164) = *(v8 + v10 + 1008);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + v10 + 920);

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v15);
          v10 += 1024;
        }

        while (v15 + 84 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<unsigned short,8ul>::move(a1, a2);
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
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned short,8ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 2 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 2 * v12), 2 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 2 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 2 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
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

        memcpy(v14, v16, 2 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 2, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 2 * a2;
        v10 = (*(*v5 + 32))(*result, 2 * a2, 2);
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

          result = memcpy(v10, v13, 2 * *(v4 + 1));
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

uint64_t re::DynamicArray<re::VFXScene>::deinit(uint64_t a1)
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
        v5 = v4 << 10;
        v6 = v3 + 920;
        do
        {
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6);

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v6 - 568);
          v6 += 1024;
          v5 -= 1024;
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

void re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::setTexture(uint64_t *a1, void *a2, id *a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 1, a2);
  if (v8 == -1)
  {
    v16 = a1[11];
    v29[0] = *a3;
    LOBYTE(v29[1]) = 0;
    LOBYTE(v30[1]) = 0;
    re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::add((a1 + 9), v29);
    if (LOBYTE(v29[1]) == 1 && v30[0])
    {

      v30[0] = 0;
    }

    if (v29[0])
    {
    }

    LOBYTE(v29[0]) = a4;
    BYTE1(v29[0]) = v16;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addOrReplace(a1 + 1, a2, v29);
  }

  else
  {
    v9 = a1[2] + 16 * v8;
    v10 = *(v9 + 9);
    v11 = a1[11];
    if (v11 <= v10)
    {
      v20 = 0;
      v32 = 0u;
      v33 = 0u;
      *v30 = 0u;
      v31 = 0u;
      *v29 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v24 = 789;
      v25 = 2048;
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(v9 + 8);
    v13 = (a1[13] + 32 * v10);
    LOBYTE(v29[0]) = 0;
    re::Optional<NS::SharedPtr<MTL::Texture>>::operator=((v13 + 1), v29);
    if (LOBYTE(v29[0]) == 1 && v29[1])
    {
    }

    if (*a3 != *v13)
    {
      if (*a3)
      {
        v14 = *v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = v14;
      NS::SharedPtr<MTL::Buffer>::operator=(v13, a3);
      if (v12 != a4)
      {
        LOBYTE(v29[0]) = a4;
        BYTE1(v29[0]) = v10;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::replace(a1 + 1, a2, v29);
      }

      if (v15)
      {
        v29[0] = a1;
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(a1 + 1, v29);
      }
    }
  }
}

BOOL re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::replace(void *a1, void *a2, _WORD *a3)
{
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v6 = v5;
  if (v5 != -1)
  {
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(a1, a1[1] + 16 * v5);
    *(a1[1] + 16 * v6 + 8) = *a3;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
  }

  return v6 != -1;
}

_anonymous_namespace_ *re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 32 * v4;
  *v5 = *a2;
  *a2 = 0;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  v7 = *(a2 + 24);
  *(v5 + 24) = v7;
  if (v7 == 1)
  {
    *(v5 + 25) = *(a2 + 25);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

unint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addOrReplace(uint64_t *a1, void *a2, _WORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    *(a1[1] + 16 * v7 + 8) = *a3;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(a1, a1[1] + 16 * v7);
    return a1[1] + 16 * v7 + 8;
  }
}

uint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = __rev16(*(a2 + 8));
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  *(result + 48) ^= v3 ^ ((v3 << 6) + (v3 >> 2) + (v5 ^ (v5 >> 31)) - 0x61C8864680B583E9);
  return result;
}

int8x16_t **re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(int8x16_t **result, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  result[5] = 0;
  v18 = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19 = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v20 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        i64 = v18[1][v10].i64;
        v12 = *(i64 + 8) >> 8;
        v13 = *(*a2 + 88);
        if (v13 <= v12)
        {
          v21 = 0;
          memset(v30, 0, sizeof(v30));
          v15 = MEMORY[0x1E69E9C10];
          v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v22 = 136315906;
          v23 = "operator[]";
          v24 = 1024;
          if (v16)
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v25 = 789;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = v13;
          _os_log_send_and_compose_impl(v17, &v21, v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
          _os_crash_msg();
          __break(1u);
        }

        if (*(*(*a2 + 104) + 32 * v12))
        {
          v14 = 0xBF58476D1CE4E5B9 * (*i64 ^ (*i64 >> 30));
          v4[5] = (v4[5] ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))));
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v18);
        v10 = v20;
      }

      while (v20 != -1);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 == a2)
  {
    return result;
  }

  v5 = result;
  if (result[2] > a2)
  {
    return result;
  }

  result = *result;
  if (!*v5)
  {
    result = re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v5, a2);
    ++*(v5 + 6);
    return result;
  }

  if (a2)
  {
    if (a2 >> 59)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
      _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
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
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }

    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
    result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
    __break(1u);
    return result;
  }

  v7 = 0;
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_11:
  v8 = v5[4];
  v9 = v5[2];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = 0;
  v11 = 32 * v9;
  do
  {
    v12 = &v7[v10 / 8];
    v13 = v8 + v10;
    *v12 = *(v8 + v10);
    *(v8 + v10) = 0;
    v14 = *(v8 + v10 + 8);
    *(v12 + 8) = v14;
    if (v14 == 1)
    {
      v12[2] = *(v13 + 16);
      *(v13 + 16) = 0;
      v15 = *(v13 + 24);
      *(v12 + 24) = v15;
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = *(v13 + 24);
      *(v12 + 24) = v16;
      if (v16 != 1)
      {
        goto LABEL_20;
      }
    }

    v17 = v8 + v10;
    *(&v7[v10 / 8 + 3] + 1) = *(v8 + v10 + 25);
    if (*(v13 + 8))
    {
      v18 = *(v17 + 16);
      if (v18)
      {

        *(v17 + 16) = 0;
      }
    }

LABEL_20:
    v19 = *(v8 + v10);
    if (v19)
    {

      *(v8 + v10) = 0;
    }

    v10 += 32;
  }

  while (v11 != v10);
  v8 = v5[4];
LABEL_24:
  result = (*(**v5 + 40))(*v5, v8);
LABEL_25:
  v5[4] = v7;
  v5[1] = a2;
  return result;
}

unint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd(uint64_t *a1, void *a2, _WORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::resize(a1, 1);
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
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateHashes(a1, a1[1] + 16 * v16);
  return a1[1] + 16 * v16 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateHashes(a1, a1[1] + 16 * v16);
  return a1[1] + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = *(result + 48);
  *(result + 40) ^= v3;
  v5 = __rev16(*(a2 + 8));
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v5) ^ ((0xBF58476D1CE4E5B9 * v5) >> 27));
  *(result + 48) = v4 ^ v3 ^ ((v3 << 6) + (v3 >> 2) + (v6 ^ (v6 >> 31)) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
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
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v21);
}

void ___ZN2re4ecs217VFXSceneComponent10LegacyImpl4loadENS_10ArcWeakPtrIS1_EEPKNS_8VFXAssetEPNS_10VFXManagerE_block_invoke(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = WeakRetained[3];
    if (v5 == a2)
    {
      v6 = *(a2 + 56);

      if (v6)
      {
        v8 = *(v4 + 55);
        v9 = *(a2 + 56);
        v33 = v9;
        re::ObjCObject::operator=(v4 + 5, &v33);
        v10 = [v9 effect];
        v11 = v10;
        if (v10)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v31 = v10;
          obj = [v10 bindings];
          v12 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v41;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v40 + 1) + 8 * i);
                v17 = [v16 objectName];
                v18 = [v17 UTF8String];

                v19 = [v16 bindingName];
                v20 = [v19 UTF8String];

                if (re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v4 + 144, &v34))
                {
                  if (v36)
                  {
                    v21 = *&v37[7];
                  }

                  else
                  {
                    v21 = v37;
                  }

                  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
                  v23 = [v16 objectID];
                  v24 = v22;
                  *buf = 0;
                  v45 = 0;
                  v46 = 0;
                  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) >> 27));
                  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v8, v34, v25 ^ (v25 >> 31));
                  v26 = v24;
                  if (HIDWORD(v45) == 0x7FFFFFFF)
                  {
                    v27 = re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::LegacyImpl::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v8, v45, *buf);
                    v26 = 0;
                    v27[1] = v34;
                    v27[2] = v23;
                    v27[3] = 0;
                    v27[4] = v24;
                    ++*(v8 + 40);
                  }
                }

                else
                {
                  v28 = *re::ecsComponentsLogObjects(0);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Missing VFX binding", buf, 2u);
                  }
                }

                if (v35 && (v36 & 1) != 0)
                {
                  (*(*v35 + 40))();
                }

                if (v38 && (v39 & 1) != 0)
                {
                  (*(*v38 + 40))();
                }
              }

              v13 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
            }

            while (v13);
          }

          v11 = v31;
        }

        else
        {
          v30 = *re::ecsComponentsLogObjects(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *v47 = 0;
            _os_log_debug_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEBUG, "Unable to get VFX effect from runtime scene", v47, 2u);
          }
        }
      }

      else
      {
        v29 = *re::ecsComponentsLogObjects(v7);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *v47 = 0;
          _os_log_debug_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEBUG, "VFXLoadRuntimeTask has invalid runtime", v47, 2u);
        }
      }

      v5 = *(v4 + 3);
    }

    if (v5)
    {

      *(v4 + 3) = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::LegacyImpl::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
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
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::LegacyImpl::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                *(v19 + 8) = *(v18 - 3);
                *(v19 + 16) = *(v18 - 1);
                v20 = *v18;
                *v18 = 0;
                *(v19 + 32) = v20;
              }

              ++v17;
              v18 += 6;
            }

            while (v17 < v16);
          }

          re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(v27);
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
    v22 = *(v21 + 48 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 48 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 48 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 40) = a3;
  ++*(a1 + 28);
  return v21 + 48 * v5;
}

uint64_t __Block_byref_object_copy__137(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2re4ecs212_GLOBAL__N_118getOrAddAnchorNodeEP8VFXWorldP6NSUUID_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 compare:*(a1 + 32)];

  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void ___ZN2re4ecs217VFXSceneComponent10LegacyImpl32updateBindingStatesInitialValuesERS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    [*(a1 + 32) effect];
  }

  else
  {
    [*(a1 + 32) effect];
  }
  v4 = ;
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 184);
    if (v6)
    {
      v7 = 0;
      v8 = *(v5 + 168);
      while (1)
      {
        v9 = *v8;
        v8 += 22;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v5 + 184);
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
      v10 = *(v5 + 184);
      do
      {
        v11 = *(v5 + 168) + 88 * v7;
        if (!*(v11 + 64))
        {
          v12 = v11 + 16;
          Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v18, *(v11 + 16));
          if (Descriptor[9])
          {
            v14 = Descriptor[10];
          }

          else
          {
            v14 = Descriptor + 73;
          }

          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl32updateBindingStatesInitialValuesERS1__block_invoke_2;
          aBlock[3] = &__block_descriptor_40_e13_v24__0r_v8Q16l;
          aBlock[4] = v12 + 8;
          v16 = _Block_copy(aBlock);
          [v4 parameterOf:*(v12 + 56) named:v15 type:Descriptor[16] with:v16];
          *(v12 + 48) = 1;

          v10 = *(v5 + 184);
        }

        if (v10 <= v7 + 1)
        {
          v17 = v7 + 1;
        }

        else
        {
          v17 = v10;
        }

        while (v17 - 1 != v7)
        {
          LODWORD(v7) = v7 + 1;
          if ((*(*(v5 + 168) + 88 * v7) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }
        }

        LODWORD(v7) = v17;
LABEL_25:
        ;
      }

      while (v7 != v6);
    }
  }
}

void *___ZN2re4ecs217VFXSceneComponent10LegacyImpl32updateBindingStatesInitialValuesERS1__block_invoke_2(uint64_t a1, const void *a2, unint64_t a3)
{
  re::DynamicArray<BOOL>::resize(*(a1 + 32), a3);
  v6 = *(*(a1 + 32) + 32);

  return memcpy(v6, a2, a3);
}

void ___ZN2re4ecs217VFXSceneComponent10LegacyImpl22writeBindingsToRuntimeERS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v3 = *(a1 + 48);
  }

  else
  {
    v5 = *(v3 + 304);
  }

  v6 = *(v3 + 184);
  if (v6)
  {
    v7 = 0;
    v8 = *(v3 + 168);
    while (1)
    {
      v9 = *v8;
      v8 += 22;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(v3 + 184);
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
    v10 = *(v3 + 168) + 88 * v7;
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v5, v12);
    v14 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2, *(v11 - 8));
    if (v14)
    {
      v15 = v14;
      v16 = *(v11 + 48);
      if (*(v14 + 8) != v16)
      {
        *(v14 + 8) = v16;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl22writeBindingsToRuntimeERS1__block_invoke_2;
        aBlock[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
        aBlock[4] = v11 + 8;
        v17 = _Block_copy(aBlock);
        [*(a1 + 32) setParameterOf:*v15 named:v15[2] type:*(Descriptor + 128) size:*(v11 + 24) with:v17];
      }
    }

    v18 = *(v3 + 184);
    if (v18 <= v7 + 1)
    {
      v18 = v7 + 1;
    }

    while (v18 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(v3 + 168) + 88 * v7) & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v7) = v18;
LABEL_20:
    ;
  }
}

void *___ZN2re4ecs217VFXSceneComponent10LegacyImpl22writeBindingsToRuntimeERS1__block_invoke_2(void *result, void *__dst, size_t a3)
{
  v3 = result[4];
  if (*(v3 + 16) == a3)
  {
    return memcpy(__dst, *(v3 + 32), a3);
  }

  return result;
}

void ___ZN2re4ecs217VFXSceneComponent10LegacyImpl23readBindingsFromRuntimeERS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v4 = *(v1 + 304);
  }

  v5 = *(a1 + 56);
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 48);
    while (1)
    {
      v9 = *v8;
      v8 += 22;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(v5 + 64);
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
    v10 = *(v5 + 48) + 88 * v7;
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v4, v12);
    v15 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2, v14);
    if (v15)
    {
      v16 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl23readBindingsFromRuntimeERS1__block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e13_v24__0r_v8Q16l;
      aBlock[4] = v11 + 8;
      v17 = _Block_copy(aBlock);
      [*(a1 + 32) parameterOf:*v16 named:v16[2] type:Descriptor[16] with:v17];
    }

    v18 = *(v5 + 64);
    if (v18 <= v7 + 1)
    {
      v18 = v7 + 1;
    }

    while (v18 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(v5 + 48) + 88 * v7) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    LODWORD(v7) = v18;
LABEL_19:
    ;
  }
}

void *___ZN2re4ecs217VFXSceneComponent10LegacyImpl23readBindingsFromRuntimeERS1__block_invoke_2(uint64_t a1, const void *a2, unint64_t a3)
{
  re::DynamicArray<BOOL>::resize(*(a1 + 32), a3);
  v6 = *(*(a1 + 32) + 32);

  return memcpy(v6, a2, a3);
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 88 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 88 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 88 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 88 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
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

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24), *(v7 + 40));
        v8 = *(a2 + 16) + v6;
        *(result + 8) = *(v8 - 32);
        *(result + 16) = *(v8 - 24);
        *(result + 56) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        *(result + 48) = 0;
        v9 = *(v8 - 8);
        *(result + 24) = *(v8 - 16);
        *(result + 32) = v9;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
        v10 = *(result + 40);
        *(result + 40) = *v8;
        *v8 = v10;
        v11 = *(result + 56);
        *(result + 56) = *(v8 + 16);
        *(v8 + 16) = v11;
        ++*(v8 + 8);
        ++*(result + 48);
        *(result + 64) = *(v8 + 24);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

void *re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v11 = 0u;
  v12 = 0u;
  v10[0] = 0xFFFFFFFFuLL;
  v10[1] = 0uLL;
  LODWORD(v11) = 0;
  v8 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(a4, a5, v10);
  if (*(&v10[0] + 1) && *(&v11 + 1))
  {
    (*(**(&v10[0] + 1) + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 22;
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
    v10 = *(a2 + 16) + 88 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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
      if ((*(*(a2 + 16) + 88 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

double re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 24);
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v16);
  v7 = HIDWORD(v17);
  if (HIDWORD(v17) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v17, v16);
    v9 = *a2;
    *(v8 + 16) = *a3;
    v10 = v8 + 16;
    *(v8 + 8) = v9;
    *(v8 + 56) = 0;
    *(v8 + 48) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 24) = 0;
    v11 = *(a3 + 16);
    *(v8 + 24) = *(a3 + 8);
    *(v8 + 32) = v11;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v12 = *(v8 + 40);
    *(v8 + 40) = *(a3 + 24);
    *(a3 + 24) = v12;
    v13 = *(v8 + 56);
    *(v8 + 56) = *(a3 + 40);
    *(a3 + 40) = v13;
    ++*(a3 + 32);
    ++*(v8 + 48);
    *(v8 + 64) = *(a3 + 48);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v14 = *(a1 + 16) + 88 * v7;
    *(v14 + 16) = *a3;
    v10 = v14 + 16;
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v10 + 8, (a3 + 8));
    *(v10 + 48) = *(a3 + 48);
  }

  return v10;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(a1);

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 88 * v4) & 0x80000000) != 0)
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
          v5 += 22;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  re::DynamicString::setCapacity(&v12, 0);
  memset(&v14[8], 0, 32);
  v10 = re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::addOrReplace(a4, a5, &v12);
  re::AssetHandle::~AssetHandle(&v14[8]);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 22;
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
    v10 = *(a2 + 16) + 88 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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
      if ((*(*(a2 + 16) + 88 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

double re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::free(a1[2], v3++);
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

double re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 88 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::AssetHandle::~AssetHandle((v2 + 12));

    return re::DynamicString::deinit((v2 + 4));
  }

  return result;
}

void re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::move(a1, v9);
      re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24), *(v7 + 40));
        v8 = (*(a2 + 16) + v6);
        *(result + 8) = *(v8 - 4);
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 40) = *v8;
        v9 = *(v8 - 2);
        *(result + 16) = *(v8 - 3);
        *(v8 - 3) = 0;
        v10 = *(v8 - 1);
        *v8 = 0;
        v12 = *(result + 24);
        v11 = *(result + 32);
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(v8 - 2) = v12;
        *(v8 - 1) = v11;
        *(result + 48) = 0;
        *(result + 56) = 0;
        *(result + 64) = 0;
        *(result + 56) = v8[2];
        v8[2] = 0;
        v13 = *(result + 48);
        *(result + 48) = 0;
        *(result + 48) = v8[1];
        v8[1] = v13;
        v14 = *(result + 64);
        v15 = v8[4];
        *(result + 64) = v8[3];
        v8[3] = v14;
        *(result + 72) = v15;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::clear(uint64_t a1)
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
        re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::free(*(a1 + 16), v3++);
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

re::DynamicString *re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, re::DynamicString *a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v24);
  v7 = HIDWORD(v25);
  if (HIDWORD(v25) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(a1, v25, v24);
    v9 = *a2;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    result = (v8 + 16);
    *(result + 3) = *(a3 + 3);
    v11 = *a3;
    v12 = *(a3 + 1);
    *(result - 1) = v9;
    *result = v11;
    *a3 = 0;
    v13 = *(a3 + 2);
    *(a3 + 3) = 0;
    v15 = *(result + 1);
    v14 = *(result + 2);
    *(result + 1) = v12;
    *(result + 2) = v13;
    *(a3 + 1) = v15;
    *(a3 + 2) = v14;
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
    *(result + 5) = *(a3 + 5);
    *(a3 + 5) = 0;
    v16 = *(result + 4);
    *(result + 4) = 0;
    *(result + 4) = *(a3 + 4);
    *(a3 + 4) = v16;
    v17 = *(result + 6);
    v18 = *(a3 + 7);
    *(result + 6) = *(a3 + 6);
    *(a3 + 6) = v17;
    *(result + 7) = v18;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v19 = (*(a1 + 16) + 88 * v7);
    result = re::DynamicString::operator=((v19 + 2), a3);
    v20 = v19[7];
    v19[7] = *(a3 + 5);
    *(a3 + 5) = v20;
    v21 = v19[6];
    v19[6] = 0;
    v19[6] = *(a3 + 4);
    *(a3 + 4) = v21;
    v22 = v19[8];
    v23 = *(a3 + 7);
    v19[8] = *(a3 + 6);
    *(a3 + 6) = v22;
    v19[9] = v23;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(a1);

  return re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(a1);

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

re::DynamicString *re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 88 * v4) & 0x80000000) != 0)
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
          v5 += 22;
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

uint64_t re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs217VFXSceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::VFXSceneReadbackComponent::~VFXSceneReadbackComponent(re::ecs2::VFXSceneReadbackComponent *this)
{
  *this = &unk_1F5CD3B70;
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD3B70;
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneReadbackComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void *re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v8 = re::DynamicString::setCapacity(&v21, 0);
  v24 = 0uLL;
  *&v25 = 0;
  v9 = re::DynamicString::setCapacity(&v23 + 1, 0);
  v26 = 0uLL;
  *&v27 = 0;
  v10 = re::DynamicString::setCapacity(&v25 + 1, 0);
  v28 = 0uLL;
  *v29 = 0;
  re::DynamicString::setCapacity(&v27 + 1, 0);
  v11 = *(a4 + 16);
  if (v11 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::growCapacity(a4, v11 + 1);
    v11 = *(a4 + 16);
  }

  v12 = *(a4 + 32) + 160 * v11;
  *v12 = v21;
  *(v12 + 8) = v22;
  v13 = *(&v23 + 1);
  *(v12 + 24) = v23;
  *(v12 + 32) = v13;
  *(v12 + 40) = v24;
  v14 = *(&v25 + 1);
  *(v12 + 56) = v25;
  *(v12 + 64) = v14;
  v15 = *(&v26 + 1);
  *(v12 + 72) = v26;
  *(v12 + 80) = v15;
  v16 = *(&v27 + 1);
  *(v12 + 88) = v27;
  *(v12 + 96) = v16;
  *(v12 + 120) = *v29;
  *(v12 + 104) = v28;
  v17 = *&v29[24];
  *(v12 + 128) = *&v29[8];
  *(v12 + 144) = v17;
  v18 = *(a4 + 16);
  *(a4 + 16) = v18 + 1;
  ++*(a4 + 24);
  v19 = (*(a4 + 32) + 160 * v18);
  re::introspectionInitElement(a2, a3, a1[6], v19);
  return v19;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::VFXREBindingDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 160 * a3;
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

  return *(a2 + 32) + 160 * a3;
}

uint64_t re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          re::DynamicString::deinit((v3 + 96));
          re::DynamicString::deinit((v3 + 64));
          re::DynamicString::deinit((v3 + 32));
          re::DynamicString::deinit(v3);
          v3 += 160;
          v5 -= 160;
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

void *re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v26, v28);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v27, v29);
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
        v10 = v8 + 160 * v9;
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
          *(v11 + 4) = 0u;
          *(v11 + 5) = 0u;
          v11[8] = *(v8 + 64);
          *(v8 + 64) = 0;
          v11[11] = *(v8 + 88);
          *(v8 + 88) = 0;
          v20 = v11[9];
          v19 = v11[10];
          v21 = *(v8 + 80);
          v11[9] = *(v8 + 72);
          v11[10] = v21;
          *(v8 + 72) = v20;
          *(v8 + 80) = v19;
          *(v11 + 6) = 0u;
          *(v11 + 7) = 0u;
          v11[12] = *(v8 + 96);
          *(v8 + 96) = 0;
          v11[15] = *(v8 + 120);
          *(v8 + 120) = 0;
          v23 = v11[13];
          v22 = v11[14];
          v24 = *(v8 + 112);
          v11[13] = *(v8 + 104);
          v11[14] = v24;
          *(v8 + 104) = v23;
          *(v8 + 112) = v22;
          v25 = *(v8 + 144);
          *(v11 + 8) = *(v8 + 128);
          *(v11 + 9) = v25;
          re::DynamicString::deinit((v8 + 96));
          re::DynamicString::deinit((v8 + 64));
          re::DynamicString::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v11 += 20;
          v8 += 160;
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

void re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v11 = 160 * a2;
    v12 = a2;
    do
    {
      v13 = *(v3 + 4) + v11;
      re::DynamicString::deinit((v13 + 96));
      re::DynamicString::deinit((v13 + 64));
      re::DynamicString::deinit((v13 + 32));
      re::DynamicString::deinit(v13);
      ++v12;
      v11 += 160;
    }

    while (v12 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 160 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 32) = 0u;
        v9 = re::DynamicString::setCapacity((v7 + 32), 0);
        *(v7 + 80) = 0u;
        *(v7 + 64) = 0u;
        v10 = re::DynamicString::setCapacity((v7 + 64), 0);
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        v7 += 96;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        v6 += 160;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 160 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 160;
        v11 -= 160;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 160 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 160 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::ecs2::VFXSceneMetadataComponent::~VFXSceneMetadataComponent(re::ecs2::VFXSceneMetadataComponent *this)
{
  *this = &unk_1F5CD3AE8;
  v2 = this + 32;
  re::AssetHandle::~AssetHandle((this + 72));
  re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD3AE8;
  v2 = this + 32;
  re::AssetHandle::~AssetHandle((this + 72));
  re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneMetadataComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

uint64_t re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::VFXSystem>(re::ecs2::VFXSystem *,REEventHandlerResult (re::ecs2::VFXSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + (v7 << 6) + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + (v7 << 6)) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + (v6 << 6) + 8) != a3)
  {
    LODWORD(v9) = *(v8 + (v7 << 6)) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + (v6 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + (v9 << 6) + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 40 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::DynamicOverflowArray<re::MeshScene,2ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = a1 + 4;
      }

      else
      {
        v3 = a1[5];
      }

      v4 = 736 * v2;
      v5 = (v3 + 44);
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v5);
        v5 += 736;
        v4 -= 736;
      }

      while (v4);
    }

    v6 = *(a1 + 4);
    if ((v6 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[5]);
      v6 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v6 | 1) + 2;
  }
}

uint64_t re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<unsigned short,8ul>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned short,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 2 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 2 * v12), 2 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 2 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 2 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

double re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(a1[2], v3++);
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

void re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + (a2 << 6);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    v3 = *(v2 + 16);
  }
}

uint64_t **std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(v2);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

double re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(uint64_t *a1)
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

uint64_t re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24), v17[3]);
                v18[1] = *(v17 - 3);
                v19 = *(v17 - 2);
                *(v17 - 2) = 0;
                v18[2] = v19;
                v20 = *(v17 - 1);
                *(v17 - 1) = 0;
                v18[3] = v20;
                v21 = *v17;
                *v17 = 0;
                v18[4] = v21;
                v22 = v17[1];
                v23 = v17[2];
                v17[1] = 0;
                v18[5] = v22;
                v18[6] = v23;
              }

              v17 += 8;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v30);
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
    v25 = *(v24 + (v5 << 6));
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + (v5 << 6);
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v27 + 56) = a3;
  *(v28 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v24 + (v5 << 6);
}

void *re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(v5, a2);
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
        v10 = v8 + 72 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 2) = *(v8 + 8);
          v11[6] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          *(v11 + 10) = 0;
          v12 = *(v8 + 16);
          v13 = *(v8 + 24);
          v14 = v8 + 16;
          v11[2] = v12;
          v11[3] = v13;
          *v14 = 0;
          *(v14 + 8) = 0;
          v15 = v11[4];
          v11[4] = *(v14 + 16);
          *(v14 + 16) = v15;
          v16 = v11[6];
          v11[6] = *(v14 + 32);
          *(v14 + 32) = v16;
          ++*(v14 + 24);
          ++*(v11 + 10);
          *(v11 + 7) = *(v14 + 40);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 9;
          v8 = v14 + 56;
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

uint64_t re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 56 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(a1, *(v17 + 2) % *(a1 + 24), *(v17 + 2));
                *(v18 + 8) = *(v17 - 3);
                *(v18 + 16) = *(v17 - 1);
                v19 = *v17;
                *v17 = 0;
                *(v17 + 1) = 0;
                *(v18 + 32) = v19;
              }

              v17 = (v17 + 56);
              --v16;
            }

            while (v16);
          }

          re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(v26);
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

void re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *>(*(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 160 * v8;
      v12 = 160 * v4;
      do
      {
        v13 = v10 + v11;
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicString::DynamicString((v10 + v11 + 32), (v9 + v11 + 32));
        re::DynamicString::DynamicString((v10 + v11 + 64), (v9 + v11 + 64));
        re::DynamicString::DynamicString((v10 + v11 + 96), (v9 + v11 + 96));
        v14 = *(v9 + v11 + 144);
        *(v13 + 128) = *(v9 + v11 + 128);
        *(v13 + 144) = v14;
        v9 += 160;
        v12 -= 160;
        v10 += 160;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *>(*(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 160 * v4;
      v7 = 160 * v5 - 160 * v4;
      do
      {
        re::DynamicString::deinit((v6 + 96));
        re::DynamicString::deinit((v6 + 64));
        re::DynamicString::deinit((v6 + 32));
        re::DynamicString::deinit(v6);
        v6 += 160;
        v7 -= 160;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *,re::ecs2::VFXREBindingDescriptor *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      re::DynamicString::operator=((a3 + v6), (a1 + v6));
      re::DynamicString::operator=((a3 + v6 + 32), (a1 + v6 + 32));
      re::DynamicString::operator=((a3 + v6 + 64), (a1 + v6 + 64));
      re::DynamicString::operator=((a3 + v6 + 96), (a1 + v6 + 96));
      result = *(a1 + v6 + 128);
      v9 = *(a1 + v6 + 144);
      *(v7 + 128) = result;
      *(v7 + 144) = v9;
      v6 += 160;
    }

    while (a1 + v6 != a2);
  }

  return result;
}

void *re::ecs2::allocInfo_VideoAudioTetherSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_144, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_144))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EEC0, "VideoAudioTetherSystem");
    __cxa_guard_release(&_MergedGlobals_144);
  }

  return &unk_1EE19EEC0;
}

void re::ecs2::initInfo_VideoAudioTetherSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xF7A308684364178;
  v8[1] = "VideoAudioTetherSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VideoAudioTetherSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoAudioTetherSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoAudioTetherSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VideoAudioTetherSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VideoAudioTetherSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoAudioTetherSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoAudioTetherSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::ecs2::VideoAudioTetherSystem *re::ecs2::VideoAudioTetherSystem::VideoAudioTetherSystem(re::ecs2::VideoAudioTetherSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CD3C40;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(this + 28) = v4;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 268) = 0x7FFFFFFFLL;
  return this;
}

void re::ecs2::VideoAudioTetherSystem::~VideoAudioTetherSystem(re::ecs2::VideoAudioTetherSystem *this)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioTetherSystem", 42, *(this + 28));
  *(this + 28) = 0;
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 29);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::VideoAudioTetherSystem::~VideoAudioTetherSystem(this);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>(re *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(a3);
    v5.n128_f64[0] = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(a3);
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

uint64_t re::ecs2::VideoAudioTetherSystem::getAudioTetherControlComponentUnderneathParent(uint64_t this, re::ecs2::Entity *a2)
{
  if (this)
  {
    v2 = *(this + 344);
    if (v2)
    {
      v3 = *(this + 360);
      v4 = 8 * v2;
      while (1)
      {
        v5 = *v3;
        if ((*(*v3 + 288) ^ 0x9C876DD94291F46ALL) <= 1)
        {
          v6 = *(v5 + 296);
          if (v6 == "__InternalVPC-Audio__" || !strcmp(v6, "__InternalVPC-Audio__"))
          {
            break;
          }
        }

        ++v3;
        v4 -= 8;
        if (!v4)
        {
          return 0;
        }
      }

      return re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

re::ecs2::Component *re::ecs2::VideoAudioTetherSystem::createAudioTetherControlComponentUnderneathParent(re::ecs2::AudioComponentForwarder **this, re::ecs2::Entity *a2)
{
  v8[0] = 0x9C876DD94291F46ALL;
  v8[1] = "__InternalVPC-Audio__";
  v4 = re::ecs2::EntityChildCollection::getOrAdd((a2 + 320), v8);
  v5 = v4;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(v5 + 76) |= 0x1400u;
  if (!*(v5 + 27))
  {
    re::ecs2::EntityComponentCollection::add((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  if (!*(v5 + 32))
  {
    re::ecs2::EntityComponentCollection::add((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v6 = re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::Component::markDirty(v6);
  re::ecs2::AudioComponentForwarder::forwardAudioComponentState(this[28], a2, v5);
  return v6;
}

void re::ecs2::VideoAudioTetherSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (v3)
  {
    v5 = *(a3 + 216);
    v6 = v5 + 8 * v3;
    do
    {
      v7 = re::ecs2::SceneComponentTable::get((*v5 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7)
      {
        v8 = *(v7 + 384);
        if (v8)
        {
          v9 = *(v7 + 400);
          v10 = 8 * v8;
          while (1)
          {
            v11 = *v9;
            v12 = re::AssetHandle::loadedAsset<re::VideoAsset>((*v9 + 208));
            v13 = 0;
            if ((*(v11 + 331) & 1) == 0 && v12)
            {
              v13 = re::VideoAsset::getAVPlayer(v12);
            }

            v14 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 232, *v9);
            v15 = *v9;
            if (!*(*v9 + 16))
            {
              break;
            }

            if (v13)
            {
              if (v14)
              {
                if (v13 != *v14)
                {
                  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
                  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v19, a1 + 232, v15, v16 ^ (v16 >> 31));
                  objc_storeStrong((*(a1 + 248) + 32 * HIDWORD(v20) + 16), v13);
                }
              }

              else
              {
                v19 = 0;
                v20 = 0;
                v21 = 0;
                v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
                re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v19, a1 + 232, v15, v17 ^ (v17 >> 31));
                if (HIDWORD(v20) == 0x7FFFFFFF)
                {
                  v18 = re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::allocEntry(a1 + 232, v20, v19);
                  *(v18 + 8) = *v9;
                  *(v18 + 16) = v13;
                  ++*(a1 + 272);
                }
              }
            }

            else if (v14)
            {
              re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::remove(a1 + 232, *v9);
            }

            ++v9;
            v10 -= 8;
            if (!v10)
            {
              goto LABEL_21;
            }
          }
        }
      }

LABEL_21:
      v5 += 8;
    }

    while (v5 != v6);
  }
}

void re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 32 * v13) = *(v5 + 32 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      *v6 = v8 & 0x7FFFFFFF;

      v5 = *(a1 + 16);
      v8 = *(v5 + 32 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 32 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

void re::ecs2::VideoAudioTetherSystem::cleanUpAudioTetherControl(re::ecs2::AudioComponentForwarder **this, re::ecs2::Entity *a2)
{
  if (a2)
  {
    AudioTetherControlComponentUnderneathParent = re::ecs2::VideoAudioTetherSystem::getAudioTetherControlComponentUnderneathParent(a2, a2);
    if (AudioTetherControlComponentUnderneathParent)
    {
      v5 = *(AudioTetherControlComponentUnderneathParent + 16);
      if (v5)
      {
        re::ecs2::AudioComponentForwarder::stopForwardingAudioComponentState(this[28], a2, v5);
        v7 = v5;
        v6 = (v5 + 8);
        re::ecs2::EntityChildCollection::remove((a2 + 320), &v7);
      }
    }
  }
}

double re::ecs2::VideoAudioTetherSystem::willAddSceneToECSService(re::ecs2::VideoAudioTetherSystem *this, re::ecs2::Scene *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddComponents,re::ecs2::VideoAudioTetherSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v7);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveComponents,re::ecs2::VideoAudioTetherSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddVideoComponents,re::ecs2::VideoAudioTetherSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 8), &v7);
    *&v7 = this;
    *(&v7 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveVideoComponents,re::ecs2::VideoAudioTetherSystem>;
    v8 = 0;
    v9 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 272), &v7);
  }

  return result;
}

void re::ecs2::VideoAudioTetherSystem::willRemoveSceneFromECSService(re::ecs2::VideoAudioTetherSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddComponents,re::ecs2::VideoAudioTetherSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v6);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveComponents,re::ecs2::VideoAudioTetherSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v6);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddVideoComponents,re::ecs2::VideoAudioTetherSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 8, &v6);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveVideoComponents,re::ecs2::VideoAudioTetherSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 272, &v6);
  }
}

uint64_t re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v18 = re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 8) = *(v17 - 1);
                v19 = *v17;
                *v17 = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddComponents,re::ecs2::VideoAudioTetherSystem>(re::ecs2::AudioComponentForwarder **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *a3;
      v8 = *(*a3 + 16);
      if (v8)
      {
        re::ecs2::Entity::debugDescription(&v23, *(*a3 + 16));
        v9 = re::AssetHandle::loadedAsset<re::VideoAsset>((v7 + 40));
        if (v9)
        {
          v10 = v9;
          v11 = re::VideoAsset::getAVPlayer(v9);
          v12 = re::VideoAsset::getAVSampleBufferVideoRenderer(v10);
          v13 = v12;
          if (v11 | v12)
          {
            v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{re::ecs2::VideoAudioTetherSystem::createAudioTetherControlComponentUnderneathParent(a1, v8) + 25}];
            v19 = *re::audioLogObjects(v18);
            if (v18)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                if (v24)
                {
                  v20 = v26;
                }

                else
                {
                  v20 = v25;
                }

                *buf = 138412546;
                v28 = v18;
                v29 = 2080;
                v30 = v20;
                _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "[RE/ECS] adding audio tether %@ to %s", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              if (v24)
              {
                v21 = v26;
              }

              else
              {
                v21 = v25;
              }

              *buf = 136315138;
              v28 = v21;
              _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "[RE/ECS] failed to create anchor UUID for VPC on %s", buf, 0xCu);
            }
          }

          else
          {
            v14 = *re::audioLogObjects(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              if (v24)
              {
                v15 = v26;
              }

              else
              {
                v15 = v25;
              }

              *buf = 134218242;
              v28 = v7;
              v29 = 2080;
              v30 = v15;
              _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[RE/ECS] skipping newly added VPC %p on %s b/c it has no player", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = *re::audioLogObjects(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            if (v24)
            {
              v17 = v26;
            }

            else
            {
              v17 = v25;
            }

            *buf = 134218242;
            v28 = v7;
            v29 = 2080;
            v30 = v17;
            _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[RE/ECS] skipping newly added VPC %p on %s b/c it has no video asset", buf, 0x16u);
          }
        }

        if (v23 && (v24 & 1) != 0)
        {
          (*(*v23 + 40))();
        }
      }

      ++a3;
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveComponents,re::ecs2::VideoAudioTetherSystem>(re::ecs2::AudioComponentForwarder **a1, re::ecs2::Entity *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *(*a3 + 16);
      AudioTetherControlComponentUnderneathParent = re::ecs2::VideoAudioTetherSystem::getAudioTetherControlComponentUnderneathParent(v7, a2);
      if (AudioTetherControlComponentUnderneathParent)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:AudioTetherControlComponentUnderneathParent + 25];
        if (v9)
        {
          v10 = re::ecs2::Entity::debugDescription(&v14, v7);
          v11 = *re::audioLogObjects(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            if (v15)
            {
              v12 = *&v16[7];
            }

            else
            {
              v12 = v16;
            }

            *buf = 138412546;
            v18 = v9;
            v19 = 2080;
            v20 = v12;
            _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[RE/ECS] removing audio tether %@ from %s", buf, 0x16u);
          }

          if (v14 && (v15 & 1) != 0)
          {
            (*(*v14 + 40))();
          }
        }

        re::ecs2::VideoAudioTetherSystem::cleanUpAudioTetherControl(a1, v7);
      }

      a3 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::didAddVideoComponents,re::ecs2::VideoAudioTetherSystem>(re::ecs2::AudioComponentForwarder **this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *(*a3 + 16);
      if (v7)
      {
        re::ecs2::VideoAudioTetherSystem::createAudioTetherControlComponentUnderneathParent(this, v7);
      }

      a3 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoAudioTetherSystem::willRemoveVideoComponents,re::ecs2::VideoAudioTetherSystem>(re::ecs2::AudioComponentForwarder **this, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      v7 = *a3;
      v8 = *(*a3 + 16);
      if (v8)
      {
        re::ecs2::VideoAudioTetherSystem::cleanUpAudioTetherControl(this, v8);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet((this + 29), v7);
        re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::remove((this + 29), v7);
      }

      ++a3;
      v6 -= 8;
    }

    while (v6);
  }

  return 0;
}

void *re::ecs2::allocInfo_EntityFunctionConstantComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19EF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19EF58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EFD0, "EntityFunctionConstantComponent");
    __cxa_guard_release(&qword_1EE19EF58);
  }

  return &unk_1EE19EFD0;
}

void re::ecs2::initInfo_EntityFunctionConstantComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xE1861B4742BD63FCLL;
  v19[1] = "EntityFunctionConstantComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19EF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19EF60))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19EF70 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "functionConstants";
    *(v17 + 16) = &qword_1EE19EF80;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE19EF78 = v17;
    __cxa_guard_release(&qword_1EE19EF60);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19EF70;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EntityFunctionConstantComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EntityFunctionConstantComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EntityFunctionConstantComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EntityFunctionConstantComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231EntityFunctionConstantComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19EF68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19EF68))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19EF80);
    qword_1EE19EF80 = &unk_1F5CD3CD0;
    __cxa_guard_release(&qword_1EE19EF68);
  }

  if ((_MergedGlobals_145 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v4 = re::introspect_int(1, v3);
    if ((_MergedGlobals_145 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_145 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE19EF80, 0);
      qword_1EE19EF90 = 0x3000000007;
      dword_1EE19EF98 = v6;
      word_1EE19EF9C = 0;
      *&xmmword_1EE19EFA0 = 0;
      *(&xmmword_1EE19EFA0 + 1) = 0xFFFFFFFFLL;
      qword_1EE19EFB0 = v2;
      unk_1EE19EFB8 = 0;
      qword_1EE19EFC0 = v5;
      unk_1EE19EFC8 = 0;
      qword_1EE19EF80 = &unk_1F5CD3CD0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE19EF80);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE19EFA0 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::EntityFunctionConstantComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3D70;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::EntityFunctionConstantComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 4);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::EntityFunctionConstantComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3D70;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::EntityFunctionConstantComponent>(void *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 4);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a2);
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

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v10 = 0;
  v8 = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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

void re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
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

uint64_t re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v13, v12);
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void re::ecs2::EntityFunctionConstantComponent::~EntityFunctionConstantComponent(re::ecs2::EntityFunctionConstantComponent *this)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs231EntityFunctionConstantComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 6;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::SpatialMedia::ImmersiveTransition::allocInfo_Configuration(re::ecs2::SpatialMedia::ImmersiveTransition *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_146, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_146))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F098, "Configuration");
    __cxa_guard_release(&_MergedGlobals_146);
  }

  return &unk_1EE19F098;
}

void re::ecs2::SpatialMedia::ImmersiveTransition::initInfo_Configuration(re::ecs2::SpatialMedia::ImmersiveTransition *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x99DC5C145A549ACLL;
  v24[1] = "Configuration";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE19F068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F068))
  {
    v7 = re::introspectionAllocator();
    v8 = re::introspect_Vector2F(1);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "portalScreenSize";
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE19F070 = v9;
    v10 = re::introspectionAllocator();
    v11 = re::introspect_Vector2F(1);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "portalMediaSize";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE19F078 = v12;
    v13 = re::introspectionAllocator();
    v14 = re::introspect_Vector2F(1);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "immersiveScreenSize";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1000000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE19F080 = v15;
    v16 = re::introspectionAllocator();
    v17 = re::introspect_Vector2F(1);
    v18 = (*(*v16 + 32))(v16, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "immersiveMediaSize";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F088 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::ecs2::introspect_ImmersiveAnimationMode(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "targetMode";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19F090 = v22;
    __cxa_guard_release(&qword_1EE19F068);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE19F070;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

double re::internal::defaultConstruct<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::SpatialMedia::ImmersiveTransition::Configuration>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void re::ecs2::BallSocketJointComponent::addToSimulation(re::ecs2::BallSocketJointComponent *this, re::PhysicsSimulation *a2, const re::ecs2::Entity *a3)
{
  if (RigidBody)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v12 = re::PhysicsFactory::defaultFactory(v10, v11);
    *(this + 19) = v13;
    re::PhysicsJointCollection::add((a2 + 136), v13);
    objc_storeWeak(this + 20, a2 + 8);

    re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::registerConstraint(this);
  }
}

char *anonymous namespace::getRigidBody(id *this, re::ecs2::EntityHandle *a2, const re::ecs2::Entity *a3)
{
  result = re::ecs2::EntityHandle::resolve(this, a2);
  if (result)
  {
    result = re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      return *(result + 42);
    }
  }

  return result;
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::registerConstraint(id *a1)
{
  v2 = re::ecs2::EntityHandle::resolve(a1 + 4, a1[2]);
  re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::registerConstraint(v2, a1[2]);
  v3 = re::ecs2::EntityHandle::resolve(a1 + 7, a1[2]);
  v4 = a1[2];

  re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::registerConstraint(v3, v4);
}

void re::ecs2::BallSocketJointComponent::removeFromSimulation(id *this)
{
  if (this[19])
  {
    WeakRetained = objc_loadWeakRetained(this + 20);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v7 = this[19];
      re::DynamicArray<re::Allocator const*>::removeStable(WeakRetained + 18, &v7);
      objc_destroyWeak(this + 20);
      this[20] = 0;
    }

    v4 = this[19];
    if (v4)
    {
      (**v4)(this[19]);
    }

    this[19] = 0;
    v5 = this[2];
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v6)
      {

        re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::removeConstraintsFromSimulation(v6);
      }
    }
  }
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::removeConstraintsFromSimulation(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1[6] >= 1)
  {
    v2 = a1[2];
    v3 = a1[6] & 0x7FFFFFFFLL;
    v4 = v3 + 1;
    v5 = 8 * v3 - 8;
    do
    {
      v6 = a1[6];
      if (v6 <= v4 - 2)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        v11 = MEMORY[0x1E69E9C10];
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v18 = 789;
        v19 = 2048;
        v20 = v4 - 2;
        v21 = 2048;
        v22 = v6;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      WeakRetained = objc_loadWeakRetained((a1[8] + v5));
      if (WeakRetained)
      {
        v8 = WeakRetained;
        v9 = re::ecs2::EntityComponentCollection::get((WeakRetained + 40), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v9 || (v10 = v9, re::ecs2::EntityHandle::resolve((v9 + 32), (v8 - 8)) != v2) && re::ecs2::EntityHandle::resolve((v10 + 56), (v8 - 8)) != v2)
        {
          re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::removeAt((a1 + 4), v4 - 2);
        }
      }

      else
      {
        re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::removeAt((a1 + 4), v4 - 2);
      }

      --v4;
      v5 -= 8;
    }

    while (v4 > 1);
  }
}

BOOL re::ecs2::BallSocketJointComponent::needsUpdate(re::ecs2::BallSocketJointComponent *this)
{
  v1 = *(this + 19);
  if (!v1)
  {
    return 1;
  }

  v3 = (*(**(v1 + 40) + 16))(*(v1 + 40));
  {
    return 1;
  }

  (*(**(this + 19) + 40))(v11);
  v6 = vmvnq_s8(vceqq_f32(v11[0], *(this + 5)));
  v6.i32[3] = v6.i32[2];
  if ((vmaxvq_u32(v6) & 0x80000000) != 0)
  {
    return 1;
  }

  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v11[1], *(this + 6)))) & 0x80000000) != 0)
  {
    return 1;
  }

  v7 = (*(**(*(this + 19) + 40) + 24))(*(*(this + 19) + 40));
  {
    return 1;
  }

  (*(**(this + 19) + 48))(v10);
  v9 = vmvnq_s8(vceqq_f32(v10[0], *(this + 7)));
  v9.i32[3] = v9.i32[2];
  return (vmaxvq_u32(v9) & 0x80000000) != 0 || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v10[1], *(this + 8)))) & 0x80000000) != 0 || *(this + 144) != (*(**(*(this + 19) + 40) + 48))(*(*(this + 19) + 40));
}

void *re::ecs2::allocInfo_BallSocketJointComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_147, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_147))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F168, "BallSocketJointComponent");
    __cxa_guard_release(&_MergedGlobals_147);
  }

  return &unk_1EE19F168;
}

void re::ecs2::initInfo_BallSocketJointComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v34[0] = 0x8BC71053146C7D4ALL;
  v34[1] = "BallSocketJointComponent";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&qword_1EE19F130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F130))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F138 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_EntityHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "bodyA";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F140 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::ecs2::introspect_EntityHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "bodyB";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19F148 = v22;
    v23 = re::introspectionAllocator();
    v24 = re::introspect_PoseF(1);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "localAnchorPoseA";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE19F150 = v25;
    v26 = re::introspectionAllocator();
    v27 = re::introspect_PoseF(1);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "localAnchorPoseB";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x7000000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE19F158 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "collisionsEnabled";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x9000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE19F160 = v32;
    __cxa_guard_release(&qword_1EE19F130);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE19F138;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BallSocketJointComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BallSocketJointComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BallSocketJointComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BallSocketJointComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224BallSocketJointComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v33 = v35;
}

void *re::internal::defaultDestruct<re::ecs2::BallSocketJointComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_destroyWeak((a3 + 160));
  *(a3 + 160) = 0;
  re::ecs2::EntityHandle::reset((a3 + 56));
  objc_destroyWeak((a3 + 56));
  *(a3 + 56) = 0;
  re::ecs2::EntityHandle::reset((a3 + 32));
  objc_destroyWeak((a3 + 32));
  *(a3 + 32) = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::BallSocketJointComponent>(uint64_t a1)
{
  objc_destroyWeak((a1 + 160));
  *(a1 + 160) = 0;
  re::ecs2::EntityHandle::reset((a1 + 56));
  objc_destroyWeak((a1 + 56));
  *(a1 + 56) = 0;
  re::ecs2::EntityHandle::reset((a1 + 32));
  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::BallSocketJointComponent>::registerConstraint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (a2)
    {
      v4 = (a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    objc_initWeak(&location, v4);
    v5 = v3[6];
    if (v5)
    {
      v6 = 8 * v5;
      v7 = v3[8];
      while (*v7 != location)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = v3[8];
    }

    if (v7 == (v3[8] + 8 * v5))
    {
LABEL_12:
      re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::add((v3 + 4), &location);
    }

    objc_destroyWeak(&location);
  }
}

void re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::add(_anonymous_namespace_ *this, id *from)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 8 * v4);
  *v5 = 0;
  objc_copyWeak(v5, from);
  ++*(this + 2);
  ++*(this + 6);
}

void re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::removeAt(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "removeAt";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 931;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((*(a1 + 32) + 8 * a2), (*(a1 + 32) + 8 * v3 - 8));
    v3 = *(a1 + 16);
  }

  v5 = *(a1 + 32) + 8 * v3;
  objc_destroyWeak((v5 - 8));
  *(v5 - 8) = 0;
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::BallSocketJointComponent>(uint64_t a1)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = (a1 + 160);
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD3DF8;
  objc_initWeak(v3, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ecs2::EntityHandle::reset(v3);
  objc_initWeak((a1 + 56), 0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  re::ecs2::EntityHandle::reset((a1 + 56));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3F80000000000000;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x3F80000000000000;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  objc_initWeak(v2, 0);
  return a1;
}

void re::ecs2::BallSocketJointComponent::~BallSocketJointComponent(id *this)
{
  objc_destroyWeak(this + 20);
  this[20] = 0;
  re::ecs2::EntityHandle::reset((this + 7));
  objc_destroyWeak(this + 7);
  this[7] = 0;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  objc_destroyWeak(this + 20);
  this[20] = 0;
  re::ecs2::EntityHandle::reset((this + 7));
  objc_destroyWeak(this + 7);
  this[7] = 0;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs224BallSocketJointComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::TransformInteractionComponent::~TransformInteractionComponent(re::ecs2::TransformInteractionComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::ecs2::ManipulationHitTargetComponent *re::ecs2::ManipulationHitTargetComponent::ManipulationHitTargetComponent(re::ecs2::ManipulationHitTargetComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD3ED8;
  objc_initWeak((v2 + 32), 0);
  *(this + 5) = 0;
  *(this + 6) = 0;
  re::ecs2::EntityHandle::reset((this + 32));
  return this;
}

void re::ecs2::ManipulationHitTargetComponent::~ManipulationHitTargetComponent(id *this)
{
  *this = &unk_1F5CD3ED8;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CD3ED8;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_TransformInteractionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19F200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F200))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F2E8, "TransformInteractionComponent");
    __cxa_guard_release(&qword_1EE19F200);
  }

  return &unk_1EE19F2E8;
}

void re::ecs2::initInfo_TransformInteractionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v43[0] = 0xC4BEED6B306688EELL;
  v43[1] = "TransformInteractionComponent";
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  *(this + 2) = v44;
  if ((atomic_load_explicit(&qword_1EE19F208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F208))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F260 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "allowsSingleHandedRotation";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F268 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "allowsTwoHandedRotation";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19F270 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "allowsTwoHandedScale";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1B00000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE19F278 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "resetsOnRelease";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1C00000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE19F280 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "usesDefaultAudio";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1D00000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE19F288 = v34;
    v35 = re::introspectionAllocator();
    re::ecs2::introspect_TransformInteractionInertia(v35, v36);
    v37 = (*(*v35 + 32))(v35, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "inertia";
    *(v37 + 16) = &qword_1EE19F2A0;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x1E00000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE19F290 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_BOOL(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "allowsTranslation";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x1F00000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE19F298 = v41;
    __cxa_guard_release(&qword_1EE19F208);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE19F260;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransformInteractionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransformInteractionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransformInteractionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransformInteractionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs229TransformInteractionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v42 = v44;
}

void re::internal::defaultConstruct<re::ecs2::TransformInteractionComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3E80;
  *(v3 + 25) = 16843009;
  *(v3 + 29) = 1;
  *(v3 + 30) = 256;
}

void re::internal::defaultConstructV2<re::ecs2::TransformInteractionComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3E80;
  *(v1 + 25) = 16843009;
  *(v1 + 29) = 1;
  *(v1 + 30) = 256;
}

void *re::ecs2::allocInfo_ManipulationHitTargetComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19F210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F210))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F378, "ManipulationHitTargetComponent");
    __cxa_guard_release(&qword_1EE19F210);
  }

  return &unk_1EE19F378;
}

void re::ecs2::initInfo_ManipulationHitTargetComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x18512719E78481ECLL;
  v20[1] = "ManipulationHitTargetComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19F218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F218))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F230 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::ecs2::introspect_EntityHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "redirectedEntity";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F238 = v18;
    __cxa_guard_release(&qword_1EE19F218);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19F230;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ManipulationHitTargetComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ManipulationHitTargetComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ManipulationHitTargetComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ManipulationHitTargetComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230ManipulationHitTargetComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::ManipulationHitTargetComponent>(int a1, int a2, id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  this[2] = 0;
  *(this + 24) = 0;
  *this = &unk_1F5CD3ED8;
  objc_initWeak(this + 4, 0);
  this[5] = 0;
  this[6] = 0;

  re::ecs2::EntityHandle::reset((this + 4));
}

void re::internal::defaultConstructV2<re::ecs2::ManipulationHitTargetComponent>(void *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD3ED8;
  objc_initWeak((v2 + 32), 0);
  a1[5] = 0;
  a1[6] = 0;

  re::ecs2::EntityHandle::reset((a1 + 4));
}

void re::ecs2::introspect_TransformInteractionInertia(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19F220, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19F228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F228))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19F2A0, "TransformInteractionInertia", 1, 1, 1, 1);
      qword_1EE19F2A0 = &unk_1F5D0C658;
      qword_1EE19F2E0 = &re::ecs2::introspect_TransformInteractionInertia(BOOL)::enumTable;
      dword_1EE19F2B0 = 9;
      __cxa_guard_release(&qword_1EE19F228);
    }

    if (_MergedGlobals_148)
    {
      break;
    }

    _MergedGlobals_148 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19F2A0, a2);
    v37 = 0x3EF2659AF07F168;
    v38 = "TransformInteractionInertia";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19F2E0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE19F2C0 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE19F220))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Zero";
      qword_1EE19F240 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Low";
      qword_1EE19F248 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Medium";
      qword_1EE19F250 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "High";
      qword_1EE19F258 = v35;
      __cxa_guard_release(&qword_1EE19F220);
    }
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs229TransformInteractionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs230ManipulationHitTargetComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_PortalService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_149, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_149))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F410, "PortalService");
    __cxa_guard_release(&_MergedGlobals_149);
  }

  return &unk_1EE19F410;
}

void re::ecs2::initInfo_PortalService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x25EC7FC57101E912;
  v8[1] = "PortalService";
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
  *(this + 8) = &re::ecs2::initInfo_PortalService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::allocInfo_PbrMaterialConstants(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F5E0, "PbrMaterialConstants");
    __cxa_guard_release(&_MergedGlobals_150);
  }

  return &unk_1EE19F5E0;
}

void re::initInfo_PbrMaterialConstants(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v76[0] = 0x465F2192D8590650;
  v76[1] = "PbrMaterialConstants";
  if (v76[0])
  {
    if (v76[0])
    {
    }
  }

  *(this + 2) = v77;
  if ((atomic_load_explicit(&qword_1EE19F4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F4A8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_ColorGamut4F(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "baseColorTint";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F568 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "metallicScale";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1400000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F570 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "specularScale";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1800000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19F578 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "roughnessScale";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1C00000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE19F580 = v26;
    v27 = re::introspectionAllocator();
    v33 = re::introspect_ColorGamut3F(1, v28, v29, v30, v31, v32);
    v34 = (*(*v27 + 32))(v27, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "emissiveColor";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x2000000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE19F588 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "emissiveScale";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x3000000006;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE19F590 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_float(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "opacityThreshold";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x3400000007;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE19F598 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_float(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "clearcoatScale";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x3800000008;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE19F5A0 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_float(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "clearcoatRoughnessScale";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x3C00000009;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE19F5A8 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_float(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "anisotropyLevelScale";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x400000000ALL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE19F5B0 = v54;
    v55 = re::introspectionAllocator();
    v61 = re::introspect_ColorGamut3F(1, v56, v57, v58, v59, v60);
    v62 = (*(*v55 + 32))(v55, 72, 8);
    *v62 = 1;
    *(v62 + 8) = "sheenColorTint";
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0x480000000BLL;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 0;
    qword_1EE19F5B8 = v62;
    v63 = re::introspectionAllocator();
    v64 = re::introspect_Vector4F(1);
    v65 = (*(*v63 + 32))(v63, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "uvTransform0";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0x600000000CLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE19F5C0 = v65;
    v66 = re::introspectionAllocator();
    v67 = re::introspect_Vector4F(1);
    v68 = (*(*v66 + 32))(v66, 72, 8);
    *v68 = 1;
    *(v68 + 8) = "uvTransform1";
    *(v68 + 16) = v67;
    *(v68 + 24) = 0;
    *(v68 + 32) = 0x700000000DLL;
    *(v68 + 40) = 0;
    *(v68 + 48) = 0;
    *(v68 + 56) = 0;
    *(v68 + 64) = 0;
    qword_1EE19F5C8 = v68;
    v69 = re::introspectionAllocator();
    v70 = re::introspect_Vector2F(1);
    v71 = (*(*v69 + 32))(v69, 72, 8);
    *v71 = 1;
    *(v71 + 8) = "uvOffset0";
    *(v71 + 16) = v70;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0x800000000ELL;
    *(v71 + 40) = 0;
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    *(v71 + 64) = 0;
    qword_1EE19F5D0 = v71;
    v72 = re::introspectionAllocator();
    v73 = re::introspect_Vector2F(1);
    v74 = (*(*v72 + 32))(v72, 72, 8);
    *v74 = 1;
    *(v74 + 8) = "uvOffset1";
    *(v74 + 16) = v73;
    *(v74 + 24) = 0;
    *(v74 + 32) = 0x880000000FLL;
    *(v74 + 40) = 0;
    *(v74 + 48) = 0;
    *(v74 + 56) = 0;
    *(v74 + 64) = 0;
    qword_1EE19F5D8 = v74;
    __cxa_guard_release(&qword_1EE19F4A8);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE19F568;
  *(this + 9) = re::internal::defaultConstruct<re::PbrMaterialConstants>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PbrMaterialConstants>;
  *(this + 13) = re::internal::defaultConstructV2<re::PbrMaterialConstants>;
  *(this + 14) = re::internal::defaultDestructV2<re::PbrMaterialConstants>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v75 = v77;
}

double re::internal::defaultConstruct<re::PbrMaterialConstants>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a3 = _Q0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x3F00000000000000;
  *(a3 + 28) = 1065353216;
  *(a3 + 32) = 0;
  *(a3 + 37) = 0;
  *(a3 + 48) = xmmword_1E306DB60;
  *(a3 + 64) = xmmword_1E306DB70;
  *(a3 + 80) = 1025758986;
  *(a3 + 84) = 0;
  *&result = 1065353216;
  *(a3 + 96) = xmmword_1E3060D30;
  *(a3 + 112) = xmmword_1E3060D30;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::PbrMaterialConstants>(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = _Q0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0x3F00000000000000;
  *(a1 + 28) = 1065353216;
  *(a1 + 32) = 0;
  *(a1 + 37) = 0;
  *(a1 + 48) = xmmword_1E306DB60;
  *(a1 + 64) = xmmword_1E306DB70;
  *(a1 + 80) = 1025758986;
  *(a1 + 84) = 0;
  *&result = 1065353216;
  *(a1 + 96) = xmmword_1E3060D30;
  *(a1 + 112) = xmmword_1E3060D30;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

void *re::allocInfo_PbrMaterialTextures(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19F4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F4B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F670, "PbrMaterialTextures");
    __cxa_guard_release(&qword_1EE19F4B8);
  }

  return &unk_1EE19F670;
}

void re::initInfo_PbrMaterialTextures(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v64[0] = 0x4455A71457457B7ELL;
  v64[1] = "PbrMaterialTextures";
  if (v64[0])
  {
    if (v64[0])
    {
    }
  }

  *(this + 2) = v65;
  if ((atomic_load_explicit(&qword_1EE19F4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F4C0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "baseColorTexture";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19F4F8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_AssetHandle(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "metallicTexture";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x4800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F500 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "roughnessTexture";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x6000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19F508 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_AssetHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "emissiveTexture";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19F510 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_AssetHandle(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "specularTexture";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x7800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE19F518 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_AssetHandle(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "opacityTexture";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xA800000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE19F520 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_AssetHandle(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "normalTexture";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x9000000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE19F528 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_AssetHandle(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "clearcoatTexture";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x10800000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE19F530 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_AssetHandle(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "clearcoatRoughnessTexture";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0xF000000009;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE19F538 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_AssetHandle(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "anisotropyAngleTexture";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0xD80000000ALL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE19F540 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_AssetHandle(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "anisotropyLevelTexture";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0xC00000000BLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE19F548 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_AssetHandle(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "sheenColorTexture";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x1200000000CLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE19F550 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::introspect_AssetHandle(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "ambientOcclusionTexture";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0x180000000DLL;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE19F558 = v58;
    v59 = re::introspectionAllocator();
    v61 = re::introspect_AssetHandle(1, v60);
    v62 = (*(*v59 + 32))(v59, 72, 8);
    *v62 = 1;
    *(v62 + 8) = "clearcoatNormalTexture";
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0x1380000000ELL;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 0;
    qword_1EE19F560 = v62;
    __cxa_guard_release(&qword_1EE19F4C0);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE19F4F8;
  *(this + 9) = re::internal::defaultConstruct<re::PbrMaterialTextures>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PbrMaterialTextures>;
  *(this + 13) = re::internal::defaultConstructV2<re::PbrMaterialTextures>;
  *(this + 14) = re::internal::defaultDestructV2<re::PbrMaterialTextures>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v63 = v65;
}

double re::internal::defaultConstruct<re::PbrMaterialTextures>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

void re::internal::defaultDestruct<re::PbrMaterialTextures>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 312));
  re::AssetHandle::~AssetHandle((a3 + 288));
  re::AssetHandle::~AssetHandle((a3 + 264));
  re::AssetHandle::~AssetHandle((a3 + 240));
  re::AssetHandle::~AssetHandle((a3 + 216));
  re::AssetHandle::~AssetHandle((a3 + 192));
  re::AssetHandle::~AssetHandle((a3 + 168));
  re::AssetHandle::~AssetHandle((a3 + 144));
  re::AssetHandle::~AssetHandle((a3 + 120));
  re::AssetHandle::~AssetHandle((a3 + 96));
  re::AssetHandle::~AssetHandle((a3 + 72));
  re::AssetHandle::~AssetHandle((a3 + 48));
  re::AssetHandle::~AssetHandle((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

double re::internal::defaultConstructV2<re::PbrMaterialTextures>(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::PbrMaterialTextures>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 312));
  re::AssetHandle::~AssetHandle((a1 + 288));
  re::AssetHandle::~AssetHandle((a1 + 264));
  re::AssetHandle::~AssetHandle((a1 + 240));
  re::AssetHandle::~AssetHandle((a1 + 216));
  re::AssetHandle::~AssetHandle((a1 + 192));
  re::AssetHandle::~AssetHandle((a1 + 168));
  re::AssetHandle::~AssetHandle((a1 + 144));
  re::AssetHandle::~AssetHandle((a1 + 120));
  re::AssetHandle::~AssetHandle((a1 + 96));
  re::AssetHandle::~AssetHandle((a1 + 72));
  re::AssetHandle::~AssetHandle((a1 + 48));
  re::AssetHandle::~AssetHandle((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

void *re::allocInfo_PbrMaterialParameters(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19F4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F4D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F700, "PbrMaterialParameters");
    __cxa_guard_release(&qword_1EE19F4D0);
  }

  return &unk_1EE19F700;
}

void re::initInfo_PbrMaterialParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0x85876C7281FC1662;
  v26[1] = "PbrMaterialParameters";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE19F4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F4D8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE19F4B0;
    if (!qword_1EE19F4B0)
    {
      v9 = re::allocInfo_PbrMaterialConstants(v7);
      qword_1EE19F4B0 = v9;
      re::initInfo_PbrMaterialConstants(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "Constants";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x15000000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE19F4E0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "ConstantValid";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1E400000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE19F4E8 = v17;
    v18 = re::introspectionAllocator();
    v19 = v18;
    v20 = qword_1EE19F4C8;
    if (!qword_1EE19F4C8)
    {
      v20 = re::allocInfo_PbrMaterialTextures(v18);
      qword_1EE19F4C8 = v20;
      re::initInfo_PbrMaterialTextures(v20, v21, v22, v23);
    }

    v24 = (*(*v19 + 32))(v19, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "Textures";
    *(v24 + 16) = v20;
    *(v24 + 24) = 0;
    *(v24 + 32) = 3;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE19F4F0 = v24;
    __cxa_guard_release(&qword_1EE19F4D8);
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19F4E0;
  *(this + 9) = re::internal::defaultConstruct<re::PbrMaterialParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PbrMaterialParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::PbrMaterialParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::PbrMaterialParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v25 = v27;
}

void re::internal::defaultDestruct<re::PbrMaterialParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 312));
  re::AssetHandle::~AssetHandle((a3 + 288));
  re::AssetHandle::~AssetHandle((a3 + 264));
  re::AssetHandle::~AssetHandle((a3 + 240));
  re::AssetHandle::~AssetHandle((a3 + 216));
  re::AssetHandle::~AssetHandle((a3 + 192));
  re::AssetHandle::~AssetHandle((a3 + 168));
  re::AssetHandle::~AssetHandle((a3 + 144));
  re::AssetHandle::~AssetHandle((a3 + 120));
  re::AssetHandle::~AssetHandle((a3 + 96));
  re::AssetHandle::~AssetHandle((a3 + 72));
  re::AssetHandle::~AssetHandle((a3 + 48));
  re::AssetHandle::~AssetHandle((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

void re::internal::defaultDestructV2<re::PbrMaterialParameters>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 312));
  re::AssetHandle::~AssetHandle((a1 + 288));
  re::AssetHandle::~AssetHandle((a1 + 264));
  re::AssetHandle::~AssetHandle((a1 + 240));
  re::AssetHandle::~AssetHandle((a1 + 216));
  re::AssetHandle::~AssetHandle((a1 + 192));
  re::AssetHandle::~AssetHandle((a1 + 168));
  re::AssetHandle::~AssetHandle((a1 + 144));
  re::AssetHandle::~AssetHandle((a1 + 120));
  re::AssetHandle::~AssetHandle((a1 + 96));
  re::AssetHandle::~AssetHandle((a1 + 72));
  re::AssetHandle::~AssetHandle((a1 + 48));
  re::AssetHandle::~AssetHandle((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

__n128 re::PbrMaterialConstants::asPbrConstants@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && (v5 = *(a2 + 160)) != 0)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  re::ColorGamut4F::as(a1, v6, 1, &v15);
  *a3 = v15;
  *(a3 + 16) = *(a1 + 20);
  *(a3 + 24) = *(a1 + 28);
  *&v7 = re::ColorGamut3F::as((a1 + 32), v6, 1);
  DWORD2(v7) = v8;
  v9 = *(a1 + 48);
  *(a3 + 32) = v7;
  *(a3 + 48) = v9;
  *(a3 + 64) = 0;
  *&v10 = re::ColorGamut3F::as((a1 + 72), v6, 1);
  DWORD2(v10) = v11;
  v12 = *(a1 + 96);
  v13 = *(a1 + 112);
  *(a3 + 80) = v10;
  *(a3 + 96) = v12;
  result = *(a1 + 128);
  *(a3 + 112) = v13;
  *(a3 + 128) = result;
  return result;
}

re::TextureHandle *re::PbrMaterial::makeTextureHandle@<X0>(re::PbrMaterial *this@<X0>, re::TextureHandle *a2@<X8>)
{
  result = re::AssetHandle::loadedAsset<re::TextureAsset>(this);
  if (result)
  {

    return re::TextureHandle::TextureHandle(a2, (result + 8));
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  return result;
}

void re::PbrMaterial::parameterTable(re::PbrMaterial *this@<X0>, const re::RenderManager *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 69);
  if (v4)
  {
    *a3 = v4;
LABEL_8:
    v17 = (v4 + 8);
    return;
  }

  re::make::shared::object<re::PbrParameterTable>(this, v18);
  v7 = *(this + 69);
  *(this + 69) = *&v18[0];
  *&v18[0] = v7;
  if (v7)
  {
  }

  v8 = (this + 32);
  re::PbrMaterialConstants::asPbrConstants(this + 368, a2, v18);
  v9 = *(this + 69);
  v10 = v18[6];
  v9[8] = v18[5];
  v9[9] = v10;
  v11 = v18[8];
  v9[10] = v18[7];
  v9[11] = v11;
  v12 = v18[2];
  v13 = v18[3];
  v14 = v18[0];
  v9[4] = v18[1];
  v9[5] = v12;
  v15 = v18[4];
  v9[6] = v13;
  v9[7] = v15;
  v9[3] = v14;
  *(*(this + 69) + 192) = *(this + 129);
  for (i = 216; i != 440; i += 16)
  {
    re::PbrMaterial::makeTextureHandle(v8, v18);
    re::TextureHandle::operator=(*(this + 69) + i, v18);
    re::TextureHandle::invalidate(v18);
    v8 = (v8 + 24);
  }

  *(this + 70) = 0xFFFFFFFFFFFFFFFLL;
  v4 = *(this + 69);
  *a3 = v4;
  if (v4)
  {
    goto LABEL_8;
  }
}

uint64_t re::PbrMaterial::addRenderFrameParameterDelta(re::PbrMaterial *this, re::RenderManager *a2)
{
  v3 = *(a2 + 14);
  if (v3 && re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(v3, *(this + 72)))
  {
    v5 = *(a2 + 18);
    v6 = *(v5 + 48);
    if (((*(this + 71) ^ v6) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      *(this + 71) = v6 & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 40) << 60);
      re::PbrMaterial::parameterTable(this, a2, &v9);
      *(this + 72) = re::DrawingManager::addRenderFrameDeltaForNextFrame<re::PbrParameterDelta,re::PbrParameterTable>(v3, &v9);
      if (v9)
      {
      }
    }

    return *(this + 72);
  }

  else
  {
    *(this + 72) = 0;
    v8 = *(this + 69);
    if (v8)
    {

      result = 0;
      *(this + 69) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(uint64_t a1, uint64_t a2)
{
  v4 = re::DrawingManager::didExceedFlywheelThresholdFrameCount(a1);
  if (*(a1 + 784) != 1 || (v5 = *(a1 + 312)) != 0 && *v5 == pthread_self())
  {
    v6 = *(a1 + 1800);
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 ^ 1 | v4;
  if (v7)
  {
    if (a2)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & v6) == 1)
    {
      v11 = a2;
      re::DynamicOverflowArray<unsigned long long,1ul>::indexOf(a1 + 608, &v11, v12);
      if (v12[0] == 1)
      {
        v9 = v11;
        (*(*v11 + 16))(v11);
        objc_destroyWeak((v9 + 8));
        *(v9 + 8) = 0;
        re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::remove(a1 + 608, &v11);
      }
    }
  }

  return (v7 & 1) == 0;
}

uint64_t re::DrawingManager::addRenderFrameDeltaForNextFrame<re::PbrParameterDelta,re::PbrParameterTable>(uint64_t a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::PerFrameAllocatorManager::perFrameAllocator(v4[6], *(*(*(a1 + 256) + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 40) << 60));
  v6 = (*(*v5 + 32))(v5, 400, 16);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *v6 = &unk_1F5CD4138;
  objc_initWeak((v6 + 8), 0);
  *v6 = &unk_1F5CD3F90;
  __asm { FMOV            V0.4S, #1.0 }

  *(v6 + 32) = _Q0;
  *(v6 + 48) = 0x3F00000000000000;
  *(v6 + 56) = 1065353216;
  *(v6 + 64) = 0u;
  *(v6 + 80) = xmmword_1E306DB60;
  *(v6 + 96) = 0;
  *(v6 + 112) = vdupq_n_s32(0x3D23D70Au);
  *(v6 + 128) = xmmword_1E3060D30;
  *(v6 + 144) = xmmword_1E3060D30;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  v12 = *a2;
  *(v6 + 16) = 0;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v6 + 20) = 0;
  objc_storeWeak((v6 + 8), v13);
  if (!*(a1 + 608))
  {
    *(a1 + 608) = v5;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity((a1 + 608), 0);
    *(a1 + 624) += 2;
  }

  v15 = v6;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(a1 + 608, &v15);
  return v6;
}

uint64_t re::PbrMaterialTextures::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = re::AssetHandle::operator=(a1, a2);
  re::AssetHandle::operator=(v4 + 24, a2 + 3);
  re::AssetHandle::operator=(a1 + 48, a2 + 6);
  re::AssetHandle::operator=(a1 + 72, a2 + 9);
  re::AssetHandle::operator=(a1 + 96, a2 + 12);
  re::AssetHandle::operator=(a1 + 120, a2 + 15);
  re::AssetHandle::operator=(a1 + 144, a2 + 18);
  re::AssetHandle::operator=(a1 + 168, a2 + 21);
  re::AssetHandle::operator=(a1 + 192, a2 + 24);
  re::AssetHandle::operator=(a1 + 216, a2 + 27);
  re::AssetHandle::operator=(a1 + 240, a2 + 30);
  re::AssetHandle::operator=(a1 + 264, a2 + 33);
  re::AssetHandle::operator=(a1 + 288, a2 + 36);
  re::AssetHandle::operator=(a1 + 312, a2 + 39);
  return a1;
}

uint64_t re::PbrParameterDelta::init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 20) = 0;
  return result;
}

void re::PbrParameterDelta::applyDeltaChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(this + 16) == 1)
    {
      *(WeakRetained + 46) = *(this + 5);
      v4 = *(this + 5);
      v5 = *(this + 6);
      v6 = *(this + 4);
      *(WeakRetained + 56) = *(this + 3);
      *(WeakRetained + 104) = v5;
      *(WeakRetained + 88) = v4;
      *(WeakRetained + 72) = v6;
      v7 = *(this + 9);
      v8 = *(this + 10);
      v9 = *(this + 8);
      *(WeakRetained + 120) = *(this + 7);
      *(WeakRetained + 168) = v8;
      *(WeakRetained + 152) = v7;
      *(WeakRetained + 136) = v9;
      *(WeakRetained + 40) = *(this + 2);
    }

    if (*(this + 17) == 1)
    {
      v10 = this + 22;
      v11 = (WeakRetained + 208);
      v12 = 14;
      do
      {
        v13 = re::TextureHandle::operator=(v11, v10);
        v10 += 2;
        v11 = v13 + 16;
        --v12;
      }

      while (v12);
    }
  }
}

double re::PbrMaterialParameters::PbrMaterialParameters(re::PbrMaterialParameters *this)
{
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  __asm { FMOV            V1.4S, #1.0 }

  *(this + 20) = 0u;
  *(this + 21) = _Q1;
  *(this + 352) = 0;
  *(this + 89) = 0;
  *(this + 45) = 0x3F8000003F000000;
  *(this + 46) = 0;
  *(this + 373) = 0;
  *(this + 24) = xmmword_1E306DB60;
  *(this + 25) = xmmword_1E306DB70;
  *(this + 104) = 1025758986;
  *(this + 420) = 0;
  *&result = 1065353216;
  *(this + 27) = xmmword_1E3060D30;
  *(this + 28) = xmmword_1E3060D30;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 58) = 0;
  *(this + 122) = 0;
  return result;
}

int64x2_t re::PbrMaterial::PbrMaterial(uint64_t a1, int a2)
{
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 352) = 0u;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0x3F8000003F000000;
  *(a1 + 400) = 0;
  *(a1 + 405) = 0;
  *(a1 + 416) = xmmword_1E306DB60;
  *(a1 + 432) = xmmword_1E306DB70;
  *(a1 + 448) = 1025758986;
  *(a1 + 452) = 0;
  *(a1 + 464) = xmmword_1E3060D30;
  *(a1 + 480) = xmmword_1E3060D30;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = a2;
  *(a1 + 516) = 0;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CD3FE0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  result = vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL);
  *(a1 + 560) = result;
  *(a1 + 576) = 0;
  return result;
}

void re::PbrMaterial::~PbrMaterial(re::PbrMaterial *this)
{
  *this = &unk_1F5CD3FE0;
  v2 = *(this + 69);
  if (v2)
  {

    *(this + 69) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 528));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::AssetHandle::~AssetHandle((this + 272));
  re::AssetHandle::~AssetHandle((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  re::AssetHandle::~AssetHandle((this + 128));
  re::AssetHandle::~AssetHandle((this + 104));
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle((this + 32));
}

{
  *this = &unk_1F5CD3FE0;
  v2 = *(this + 69);
  if (v2)
  {

    *(this + 69) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 528));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::AssetHandle::~AssetHandle((this + 272));
  re::AssetHandle::~AssetHandle((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  re::AssetHandle::~AssetHandle((this + 128));
  re::AssetHandle::~AssetHandle((this + 104));
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle((this + 32));

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<re::PbrParameterTable>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 448, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0u;
  *(v4 + 384) = 0u;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 0u;
  *(v4 + 432) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CD4058;
  *(v4 + 32) = &unk_1F5CD40A0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 48) = _Q0;
  *(v4 + 64) = 0x3F00000000000000;
  *(v4 + 72) = 1065353216;
  *(v4 + 80) = 0u;
  *(v4 + 96) = xmmword_1E306DB60;
  *(v4 + 112) = 0;
  *(v4 + 128) = vdupq_n_s32(0x3D23D70Au);
  *(v4 + 144) = xmmword_1E3060D30;
  *(v4 + 160) = xmmword_1E3060D30;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 208) = &unk_1F5CD40E0;
  result = 0.0;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *a2 = v4;
  return result;
}

void re::PbrParameterTable::~PbrParameterTable(re::PbrParameterTable *this)
{
  *this = &unk_1F5CD4058;
  *(this + 26) = &unk_1F5CD40E0;
  for (i = 424; i != 200; i -= 16)
  {
    re::TextureHandle::invalidate((this + i));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD4058;
  *(this + 26) = &unk_1F5CD40E0;
  for (i = 424; i != 200; i -= 16)
  {
    re::TextureHandle::invalidate((this + i));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}