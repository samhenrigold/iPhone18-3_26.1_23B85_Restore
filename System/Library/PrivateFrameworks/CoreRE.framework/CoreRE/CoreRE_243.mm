__n128 re::internal::defaultConstruct<re::ClockOrTimebase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0x3FF0000000000000;
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a3 + 40) = *MEMORY[0x1E6960CC0];
  v5 = *(v3 + 16);
  *(a3 + 56) = v5;
  *(a3 + 64) = result;
  *(a3 + 80) = v5;
  *(a3 + 88) = 0x3FF0000000000000;
  *(a3 + 112) = v5;
  *(a3 + 96) = result;
  *(a3 + 120) = result;
  *(a3 + 136) = v5;
  *(a3 + 144) = 0;
  *(a3 + 164) = v5;
  *(a3 + 148) = result;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ClockOrTimebase>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x3FF0000000000000;
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 40) = *MEMORY[0x1E6960CC0];
  v3 = *(v1 + 16);
  *(a1 + 56) = v3;
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0x3FF0000000000000;
  *(a1 + 112) = v3;
  *(a1 + 96) = result;
  *(a1 + 120) = result;
  *(a1 + 136) = v3;
  *(a1 + 144) = 0;
  *(a1 + 164) = v3;
  *(a1 + 148) = result;
  return result;
}

void *re::allocInfo_TimebaseTree(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4458, "TimebaseTree");
    __cxa_guard_release(&qword_1EE1C41C8);
  }

  return &unk_1EE1C4458;
}

void re::initInfo_TimebaseTree(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x3DB5CEF367814FF8;
  v27[1] = "TimebaseTree";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1C41D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41D0))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "nodes";
    *(v7 + 16) = &qword_1EE1C4318;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C42A0 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_uint64_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "masterID";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x3000000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C42A8 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_uint64_t(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "timeSyncClockGrandmasterID";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x7000000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C42B0 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_double(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "currentAbsoluteTime";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x6800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C42B8 = v19;
    v20 = re::introspectionAllocator();
    v21 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v21 = allocInfo_CMTime();
      qword_1EE1C4200 = v21;
      initInfo_CMTime(v21);
    }

    v22 = (*(*v20 + 32))(v20, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "masterAnchor";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3800000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1C42C0 = v22;
    v23 = re::introspectionAllocator();
    v24 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v24 = allocInfo_CMTime();
      qword_1EE1C4200 = v24;
      initInfo_CMTime(v24);
    }

    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "ownTimeForSourceAnchor";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000006;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1C42C8 = v25;
    __cxa_guard_release(&qword_1EE1C41D0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1C42A0;
  *(this + 9) = re::internal::defaultConstruct<re::TimebaseTree>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimebaseTree>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimebaseTree>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimebaseTree>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C4228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4228))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C4318);
    qword_1EE1C4318 = &unk_1F5D19E90;
    __cxa_guard_release(&qword_1EE1C4228);
  }

  if ((byte_1EE1C4199 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE1C41C0;
    if (!qword_1EE1C41C0)
    {
      v4 = re::allocInfo_ClockOrTimebase(v2);
      qword_1EE1C41C0 = v4;
      re::initInfo_ClockOrTimebase(v4, v5);
    }

    if ((byte_1EE1C4199 & 1) == 0)
    {
      byte_1EE1C4199 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C4318, 0);
      qword_1EE1C4328 = 0x3000000007;
      dword_1EE1C4330 = v6;
      word_1EE1C4334 = 0;
      *&xmmword_1EE1C4338 = 0;
      *(&xmmword_1EE1C4338 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C4348 = v3;
      unk_1EE1C4350 = 0;
      qword_1EE1C4358 = v4;
      unk_1EE1C4360 = 0;
      qword_1EE1C4318 = &unk_1F5D19E90;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1C4318);
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

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C4338 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

__n128 re::internal::defaultConstruct<re::TimebaseTree>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  *(a3 + 48) = 0;
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a3 + 56) = *MEMORY[0x1E6960CC0];
  v5 = *(v3 + 16);
  *(a3 + 72) = v5;
  *(a3 + 80) = result;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = v5;
  *(a3 + 120) = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::TimebaseTree>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0;
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 56) = *MEMORY[0x1E6960CC0];
  v3 = *(v1 + 16);
  *(a1 + 72) = v3;
  *(a1 + 80) = result;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = v3;
  *(a1 + 120) = 0;
  return result;
}

void *re::allocInfo_TimebaseService(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C44E8, "TimebaseService");
    __cxa_guard_release(&qword_1EE1C41D8);
  }

  return &unk_1EE1C44E8;
}

void re::initInfo_TimebaseService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x483E17396C8F9B2ELL;
  v6[1] = "TimebaseService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::TimebaseService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::TimebaseService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_TimebaseService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

id re::TimebaseLog(re *this)
{
  if (qword_1EE1C41E8 != -1)
  {
    dispatch_once(&qword_1EE1C41E8, &__block_literal_global_54);
  }

  v2 = qword_1EE1C41E0;

  return v2;
}

void ___ZN2re11TimebaseLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "Timebase");
  v1 = qword_1EE1C41E0;
  qword_1EE1C41E0 = v0;
}

void *allocInfo_CMTime(void)
{
  if ((atomic_load_explicit(&qword_1EE1C41F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4578, "CMTime");
    __cxa_guard_release(&qword_1EE1C41F0);
  }

  return &unk_1EE1C4578;
}

void initInfo_CMTime(re::IntrospectionBase *a1)
{
  v21[0] = 3983742126;
  v21[1] = "CMTime";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(a1 + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1C41F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41F8))
  {
    v4 = re::introspectionAllocator();
    v6 = re::introspect_int64_t(1, v5);
    v7 = (*(*v4 + 32))(v4, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "value";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C4230 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_int(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "timescale";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C4238 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_uint32_t(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "flags";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0xC00000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C4240 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_int64_t(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "epoch";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x1000000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C4248 = v19;
    __cxa_guard_release(&qword_1EE1C41F8);
  }

  *(a1 + 2) = 0x1800000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 4;
  *(a1 + 8) = &qword_1EE1C4230;
  *(a1 + 9) = re::internal::defaultConstruct<CMTime>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<CMTime>;
  *(a1 + 13) = re::internal::defaultConstructV2<CMTime>;
  *(a1 + 14) = re::internal::defaultDestructV2<CMTime>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v20 = v22;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 200 * v6 + 16;
  }
}

uint64_t re::TimebaseTree::rootID(re::TimebaseTree *this)
{
  if (!*(this + 7))
  {
    return 0;
  }

  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 2);
    while (1)
    {
      v5 = *v4;
      v4 += 50;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
        break;
      }
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v10 = *(*(this + 2) + 200 * v6 + 8);
  if (v10)
  {
    v8 = -1;
    while (++v8 < *(this + 7))
    {
      result = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, &v10);
      if (result)
      {
        v9 = result;
        result = v10;
        v10 = *(v9 + 24);
        if (v10)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

re *re::TimebaseService::CreateAudioClock(re::TimebaseService *this, OpaqueCMClock **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  HostTimeClock = 0;
  v2 = re::ProxyAudioClockCreate(&HostTimeClock, a2);
  if (v2)
  {
    v3 = v2;
    v4 = re::TimebaseLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "CreateAudioClock";
      v10 = 1024;
      v11 = 160;
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
    }
  }

  result = HostTimeClock;
  if (!HostTimeClock)
  {
    v6 = re::TimebaseLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AudioClock is unavailable! Falling back to host clock.", buf, 2u);
    }

    HostTimeClock = CMClockGetHostTimeClock();
    CFRetain(HostTimeClock);
    return HostTimeClock;
  }

  return result;
}

uint64_t re::TimebaseManager::TimebaseManager(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D19DB0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = a2;
  *(a1 + 248) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 324) = 0x7FFFFFFFLL;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  if (a2)
  {
    v4 = (*(*a2 + 64))(a2);
    *&v9 = a1;
    *(&v9 + 1) = re::TimebaseManager::didChangeSharedClocks;
    *&v10 = 0;
    *(&v10 + 1) = re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::createSubscription<re::TimebaseManager>(re::TimebaseManager *,REEventHandlerResult (re::TimebaseManager::*)(re::SharedClockService*,OpaqueCMClock *,OpaqueCMClock *,unsigned long long))::{lambda(re::SharedClockService*,re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::Subscription const&,OpaqueCMClock *&&,OpaqueCMClock *&,unsigned long long &&)#1}::__invoke;
    re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v4, &v9, v11);
    if ((v11[0] & 1) == 0)
    {
      if (*(v4 + 20))
      {
        v11[0] = 1;
        v12 = v9;
        v13 = v10;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v4 + 40, v11);
      }

      else
      {
        re::DynamicArray<re::EvaluationRegister>::add(v4, &v9);
      }
    }

    v5 = *(a1 + 64);
  }

  else
  {
    v5 = 1.0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 32, vcvtps_u32_f32(64.0 / v5));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 72, vcvtps_u32_f32(64.0 / *(a1 + 104)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 112, vcvtps_u32_f32(64.0 / *(a1 + 144)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 152, vcvtps_u32_f32(64.0 / *(a1 + 184)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 192, vcvtps_u32_f32(64.0 / *(a1 + 224)));
  v6 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v6, HostTimeClock, (a1 + 232));
  return a1;
}

uint64_t re::TimebaseManager::didChangeSharedClocks(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  os_unfair_lock_lock((a1 + 24));
  v11 = *(a1 + 272);
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 272) = v12;
  v13 = *(a1 + 264);
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 264) = v14;
  v15 = *(a1 + 280);
  if (!v15)
  {
    re::TimebaseManager::updatePrimarySharedClock(a1, v9, v10);
    v15 = *(a1 + 280);
  }

  re::TimebaseManager::updatePrimarySharedClock(a1, v9, v10);
  v16 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((a1 + 72), v15);
  if (v16)
  {
    v17 = v16;
    v61 = (a1 + 72);
    v18 = v16[3];
    *&v63 = v18;
    if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 112), v18))
    {
      v19 = CFRetain(*(a1 + 280));
      *&v66 = &v63;
      std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 112), v18, &v66)[3] = v19;
      CFRelease(v15);
    }

    v60 = v15;
    v20 = *(a1 + 280);
    v21 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v21 >> 47) ^ v21);
    v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
    v24 = *(a1 + 80);
    if (!*&v24)
    {
      goto LABEL_29;
    }

    v25 = vcnt_s8(v24);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
      if (v23 >= *&v24)
      {
        v26 = v23 % *&v24;
      }
    }

    else
    {
      v26 = v23 & (*&v24 - 1);
    }

    v27 = *(*v61 + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v23)
      {
        if (v28[2] == v20)
        {
          v15 = v60;
          v30 = v28[4];
          v28[3] = v17[3];
          v28[4] = 0;
          v31 = v17[4];
          v17[4] = 0;
          v32 = v28[4];
          v28[4] = v31;
          if (v32)
          {
            operator delete(v32);
          }

          v33 = v17[4];
          v17[4] = v30;
          if (v33)
          {
            operator delete(v33);
          }

          v34 = v28[6];
          v35 = v28[5];
          v36 = v17[6];
          v28[5] = v17[5];
          v17[5] = v35;
          v28[6] = v36;
          v17[6] = v34;
          v37 = v28[7];
          v28[7] = v17[7];
          v17[7] = v37;
          v38 = *(v28 + 16);
          *(v28 + 16) = *(v17 + 16);
          *(v17 + 16) = v38;
          if (v28[7])
          {
            v39 = v28[5];
            v40 = *(v28[6] + 8);
            if ((v39 & (v39 - 1)) != 0)
            {
              if (v40 >= v39)
              {
                v40 %= v39;
              }
            }

            else
            {
              v40 &= v39 - 1;
            }

            *(v28[4] + 8 * v40) = v28 + 6;
          }

          if (v37)
          {
            v41 = v17[5];
            v42 = *(v17[6] + 8);
            if ((v41 & (v41 - 1)) != 0)
            {
              if (v42 >= v41)
              {
                v42 %= v41;
              }
            }

            else
            {
              v42 &= v41 - 1;
            }

            *(v17[4] + 8 * v42) = v17 + 6;
          }

          std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(v61, v60);
          break;
        }
      }

      else
      {
        if (v25.u32[0] > 1uLL)
        {
          if (v29 >= *&v24)
          {
            v29 %= *&v24;
          }
        }

        else
        {
          v29 &= *&v24 - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_29;
        }
      }

      v28 = *v28;
      if (!v28)
      {
        goto LABEL_29;
      }
    }
  }

  for (i = *(a1 + 88); i; i = *i)
  {
    for (j = i[6]; j; j = *j)
    {
      v45 = j[2];
      *(v45 + 112) = a5;
      v46 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 288, v45);
      if (v46)
      {
        (*(*v46 + 16))();
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v68 = 1065353216;
  v63 = 0u;
  v64 = 0u;
  v65 = 1065353216;
  v47 = *(a1 + 128);
  if (v47)
  {
    while (1)
    {
      v48 = CFGetTypeID(v47[3]);
      if (v48 == CMTimebaseGetTypeID())
      {
        break;
      }

LABEL_70:
      v47 = *v47;
      if (!v47)
      {
        goto LABEL_71;
      }
    }

    v49 = CMTimebaseCopySource(v47[3]);
    v50 = v49;
    if (*(a1 + 264) && (v49 != v11 ? (v51 = v49 == v13) : (v51 = 1), v51 || re::TimebaseManager::matchesAudioClock(a1, v49)))
    {
      v52 = CFRetain(v47[3]);
      v62 = v52;
      v53 = &v63;
    }

    else
    {
      if (v50 != v11 && v50 != v13)
      {
        goto LABEL_69;
      }

      v52 = CFRetain(v47[3]);
      v62 = v52;
      v53 = &v66;
    }

    std::__hash_table<OpaqueCMTimebase *,std::hash<OpaqueCMTimebase *>,std::equal_to<OpaqueCMTimebase *>,std::allocator<OpaqueCMTimebase *>>::__emplace_unique_key_args<OpaqueCMTimebase *,OpaqueCMTimebase *>(v53, v52, &v62);
LABEL_69:
    CFRelease(v50);
    goto LABEL_70;
  }

LABEL_71:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  os_unfair_lock_unlock((a1 + 24));
  for (k = v67; k; k = *k)
  {
    v56 = *(a1 + 272);
    if (!v56)
    {
      v56 = *(a1 + 280);
    }

    CMTimebaseSetSourceClock(k[2], v56);
    CFRelease(k[2]);
  }

  for (m = v64; m; m = *m)
  {
    v58 = *(a1 + 264);
    if (!v58)
    {
      v58 = *(a1 + 280);
    }

    CMTimebaseSetSourceClock(m[2], v58);
    CFRelease(m[2]);
  }

  re::TimebaseManager::_beforeFrameUpdate(a1);
  re::TimebaseManager::_afterFrameUpdate(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v63);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v66);
  return 0;
}

void re::TimebaseManager::~TimebaseManager(re::TimebaseManager *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 30);
  if (v2)
  {
    v3 = (*(*v2 + 64))(v2);
    if (*(v3 + 16))
    {
      v4 = v3;
      v5 = 0;
      do
      {
        v6 = (*(v4 + 32) + 32 * v5);
        if (*v6 == this)
        {
          if (!*(v4 + 80))
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v4, v5);
            continue;
          }

          v27[0] = 0;
          v7 = *(v6 + 1);
          v28 = *v6;
          v29 = v7;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v4 + 40, v27);
        }

        ++v5;
      }

      while (v5 < *(v4 + 16));
    }
  }

  v8 = *(this + 34);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 35);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    CFRelease(v11);
  }

  for (i = *(this + 6); i; i = *i)
  {
    re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(this, i[2]);
  }

  for (j = *(this + 16); j; j = *j)
  {
    CFRelease(j[3]);
  }

  for (k = *(this + 21); k; k = *k)
  {
    CFRelease(k[3]);
  }

  CFRelease(*(this + 29));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  v15 = *(this + 26);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(this + 24);
  *(this + 24) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 21);
  if (v18)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = *(this + 19);
  *(this + 19) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 16);
  if (v21)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = *(this + 14);
  *(this + 14) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    do
    {
      v25 = *v24;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((v24 + 4));
      operator delete(v24);
      v24 = v25;
    }

    while (v25);
  }

  v26 = *(this + 9);
  *(this + 9) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TimebaseManager::~TimebaseManager(this);

  JUMPOUT(0x1E6906520);
}

void re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(re::TimebaseManager *this, OpaqueCMTimebase *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, this, *MEMORY[0x1E6960CE8], a2);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v5, this, *MEMORY[0x1E6960CD0], a2);
  v6 = CFNotificationCenterGetLocalCenter();
  v7 = *MEMORY[0x1E6960CE0];

  CFNotificationCenterRemoveObserver(v6, this, v7, a2);
}

re *re::TimebaseManager::audioClock(re::TimebaseManager *this, OpaqueCMClock **a2)
{
  result = *(this + 32);
  if (!result)
  {
    result = re::TimebaseService::CreateAudioClock(0, a2);
    *(this + 32) = result;
  }

  return result;
}

CMClockRef re::TimebaseManager::hostClock(re::TimebaseManager *this)
{
  result = *(this + 31);
  if (!result)
  {
    result = CMClockGetHostTimeClock();
    *(this + 31) = result;
  }

  return result;
}

void re::TimebaseManager::updatePrimarySharedClock(re::TimebaseManager *this, uint64_t a2, OpaqueCMClock **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(this + 33);
  if (v4 || (v4 = *(this + 34)) != 0)
  {
    *(this + 35) = CFRetain(v4);
  }

  else
  {
    HostTimeClock = *(this + 31);
    if (!HostTimeClock)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      *(this + 31) = HostTimeClock;
    }

    v6 = re::ManualCMClockCreateWithReference(HostTimeClock, (this + 280), a3);
    if (v6)
    {
      v7 = v6;
      v8 = re::TimebaseLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        v10 = "updatePrimarySharedClock";
        v11 = 1024;
        v12 = 284;
        v13 = 1024;
        v14 = v7;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v9, 0x18u);
      }
    }
  }
}

uint64_t re::TimebaseManager::matchesAudioClock(re::TimebaseManager *this, CMClockOrTimebaseRef clockOrTimebase1)
{
  AudioClock = *(this + 32);
  if (!AudioClock)
  {
    AudioClock = re::TimebaseService::CreateAudioClock(this, 0);
    *(this + 32) = AudioClock;
  }

  if (!CMSyncMightDrift(clockOrTimebase1, AudioClock))
  {
    return 1;
  }

  if (*(this + 336))
  {
    return 0;
  }

  v5 = +[REProxyAudioClockManager sharedInstance];
  v6 = [v5 copyAudioClock];

  if (!v6)
  {
    return 0;
  }

  v7 = CMSyncMightDrift(clockOrTimebase1, v6) == 0;
  CFRelease(v6);
  return v7;
}

void re::TimebaseManager::_beforeFrameUpdate(os_unfair_lock_s *this)
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  v2 = *&this[22]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = MEMORY[0x1E6960CC0];
    do
    {
      v4 = CFGetTypeID(v2[2]);
      if (v4 == CMClockGetTypeID())
      {
        v7 = v2[2];
        v8 = *&this[70]._os_unfair_lock_opaque;
        if (!v8)
        {
          re::TimebaseManager::updatePrimarySharedClock(this, v5, v6);
          v8 = *&this[70]._os_unfair_lock_opaque;
        }

        if (v7 == v8)
        {
          memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
          CMSyncGetTime(&outOfClockOrTimebaseAnchorTime, v2[2]);
          for (i = v2[6]; i; i = *i)
          {
            v28 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(i[2], v2 + 3);
            if (v28)
            {
              *(v28 + 40) = outOfClockOrTimebaseAnchorTime;
            }

            else
            {
              v29 = re::TimebaseLog(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                LOWORD(outRelativeToClockOrTimebaseAnchorTime.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Didn't find expected shared clock in TimebaseTree during beforeFrameUpdate", &outRelativeToClockOrTimebaseAnchorTime, 2u);
              }
            }
          }
        }

        else
        {
          v36 = 0.0;
          outRelativeRate = 0.0;
          v9 = *&this[66]._os_unfair_lock_opaque;
          if (v9)
          {
            RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v2[2], v9, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
            if (RelativeRateAndAnchorTime)
            {
              v11 = RelativeRateAndAnchorTime;
              v12 = re::TimebaseLog(RelativeRateAndAnchorTime);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v40.value) = 136315650;
                *(&v40.value + 4) = "_beforeFrameUpdate";
                LOWORD(v40.flags) = 1024;
                *(&v40.flags + 2) = 471;
                WORD1(v40.epoch) = 1024;
                HIDWORD(v40.epoch) = v11;
                _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v40, 0x18u);
              }
            }
          }

          else
          {
            outRelativeRate = 1.0;
            outOfClockOrTimebaseAnchorTime = *v3;
            outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
          }

          v14 = *&this[68]._os_unfair_lock_opaque;
          if (v14)
          {
            v15 = CMSyncGetRelativeRateAndAnchorTime(v2[2], v14, &v36, &v40, &v34);
            if (v15)
            {
              v16 = v15;
              v17 = re::TimebaseLog(v15);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.value) = 136315650;
                *(&buf.value + 4) = "_beforeFrameUpdate";
                LOWORD(buf.flags) = 1024;
                *(&buf.flags + 2) = 481;
                WORD1(buf.epoch) = 1024;
                HIDWORD(buf.epoch) = v16;
                _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &buf, 0x18u);
              }
            }
          }

          else
          {
            v36 = 1.0;
            v40 = *v3;
            v34 = v40;
          }

          for (j = v2[6]; j; j = *j)
          {
            v19 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(j[2], v2 + 3);
            if (v19)
            {
              v20 = v19;
              *(j[2] + 104) = CFAbsoluteTimeGetCurrent();
              v21 = *&this[68]._os_unfair_lock_opaque;
              if (v21)
              {
                time = *(v20 + 96);
                CMSyncConvertTime(&buf, &time, v2[2], v21);
              }

              else
              {
                buf = *v3;
              }

              v23 = *&this[66]._os_unfair_lock_opaque;
              if (v23)
              {
                v32 = *(v20 + 40);
                CMSyncConvertTime(&time, &v32, v2[2], v23);
              }

              else
              {
                time = *v3;
              }

              lhs = buf;
              rhs = *(v20 + 120);
              CMTimeSubtract(&v32, &lhs, &rhs);
              Seconds = CMTimeGetSeconds(&v32);
              lhs = time;
              rhs = *(v20 + 64);
              CMTimeSubtract(&v32, &lhs, &rhs);
              v25 = CMTimeGetSeconds(&v32);
              if (qword_1EE1C4210 != -1)
              {
                dispatch_once(&qword_1EE1C4210, &__block_literal_global_54_2);
              }

              if (fabs(Seconds) > *&qword_1EE1C4208 || fabs(v25) > *&qword_1EE1C4208)
              {
                *(v20 + 32) = outRelativeRate;
                *(v20 + 40) = outOfClockOrTimebaseAnchorTime;
                *(v20 + 64) = outRelativeToClockOrTimebaseAnchorTime;
                *(v20 + 88) = v36;
                *(v20 + 96) = v40;
                v26 = *&v34.value;
                *(v20 + 136) = v34.epoch;
                *(v20 + 120) = v26;
                v27 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], j[2]);
                if (v27)
                {
                  (*(*v27 + 16))();
                }
              }
            }

            else
            {
              v22 = re::TimebaseLog(0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Didn't find expected clock in TimebaseTree during beforeFrameUpdate", &buf, 2u);
              }
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  os_unfair_lock_unlock(this + 6);
}

void re::TimebaseManager::_afterFrameUpdate(os_unfair_lock_s *this)
{
  v1 = this;
  v180 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  if (*&v1[54]._os_unfair_lock_opaque)
  {
    re::StackScratchAllocator::StackScratchAllocator(v164);
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v163 = 0x7FFFFFFFLL;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v160, v164, 3);
    v4 = *&v1[52]._os_unfair_lock_opaque;
    if (v4)
    {
      v145 = 0;
      v146 = v1 + 66;
      v151 = v1 + 68;
      allocator = *MEMORY[0x1E695E480];
      v149 = v1;
      while (1)
      {
        if (!*&v146->_os_unfair_lock_opaque || (v5 = *&v1[60]._os_unfair_lock_opaque) == 0 || (v6 = (*(*v5 + 56))(v5), v7 = v146, v6 != *(v4[2] + 112)))
        {
          v7 = v151;
        }

        newSourceClock = *v7;
        if (!*v7)
        {
          newSourceClock = *&v1[70]._os_unfair_lock_opaque;
          if (!newSourceClock)
          {
            re::TimebaseManager::updatePrimarySharedClock(v1, v2, v3);
            newSourceClock = *&v1[70]._os_unfair_lock_opaque;
          }
        }

        v8 = v4[2];
        v153 = v4;
        if (*(v8 + 120) == 2)
        {
          v9 = re::TimebaseTree::rootID(v8);
          v10 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v9);
          if (newSourceClock)
          {
            if (v9)
            {
              if (v10)
              {
                v11 = v10[3];
                if (v11 != newSourceClock)
                {
                  v12 = v4[2];
                  timebaseOut.value = v9;
                  if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v9))
                  {
                    v13 = *(v12 + 32);
                    if (v13)
                    {
                      v14 = 0;
                      v15 = *(v12 + 16);
                      while (1)
                      {
                        v16 = *v15;
                        v15 += 50;
                        if (v16 < 0)
                        {
                          break;
                        }

                        if (v13 == ++v14)
                        {
                          LODWORD(v14) = *(v12 + 32);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v14) = 0;
                    }

LABEL_26:
                    while (v14 != v13)
                    {
                      v18 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, *(*(v12 + 16) + 200 * v14 + 8));
                      if (v18)
                      {
                        v19 = v18;
                        v20 = CFGetTypeID(v18[3]);
                        if (v20 == CMTimebaseGetTypeID())
                        {
                          v21 = v19[3];
                          v22 = CMTimebaseCopySource(v21);
                          if (v22 == v11)
                          {
                            v23 = CMTimebaseSetSourceClock(v21, newSourceClock);
                            if (v23)
                            {
                              v24 = v23;
                              v25 = re::TimebaseLog(v23);
                              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315650;
                                *&buf[4] = "changeSharedClock";
                                *&buf[12] = 1024;
                                *&buf[14] = 894;
                                *&buf[18] = 1024;
                                *&buf[20] = v24;
                                _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
                              }
                            }
                          }

                          CFRelease(v22);
                        }
                      }

                      v26 = *(v12 + 32);
                      if (v26 <= v14 + 1)
                      {
                        v26 = v14 + 1;
                      }

                      while (v26 - 1 != v14)
                      {
                        LODWORD(v14) = v14 + 1;
                        if ((*(*(v12 + 16) + 200 * v14) & 0x80000000) != 0)
                        {
                          goto LABEL_26;
                        }
                      }

                      LODWORD(v14) = v26;
                    }

                    v27 = CFRetain(newSourceClock);
                    *buf = &timebaseOut;
                    std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v1[38]._os_unfair_lock_opaque, v9, buf)[3] = v27;
                    CFRelease(v11);
                    v4 = v153;
                  }

                  else
                  {
                    v17 = re::TimebaseLog(0);
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot change unknown shared clock", buf, 2u);
                    }
                  }

                  v145 = 1;
                }
              }
            }
          }

          v8 = v4[2];
        }

        v154 = *(v8 + 32);
        if (v154)
        {
          v28 = 0;
          v29 = *(v8 + 16);
          do
          {
            v30 = *v29;
            v29 += 50;
            if (v30 < 0)
            {
              goto LABEL_50;
            }

            ++v28;
          }

          while (v154 != v28);
          LODWORD(v28) = *(v8 + 32);
        }

        else
        {
          LODWORD(v28) = 0;
        }

LABEL_50:
        if (v28 != v154)
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_244;
        }
      }

      v31 = *(v8 + 16) + 200 * v28;
      v159 = 0;
      v158 = *(v31 + 8);
      if (!v158)
      {
        goto LABEL_220;
      }

      v32 = 0;
      v33 = 0;
      value = 0;
      while (1)
      {
        v35 = value;
        v36 = v33;
        if (DWORD2(v161))
        {
          v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) >> 27));
          v38 = *(*(&v160 + 1) + 4 * ((v37 ^ (v37 >> 31)) % DWORD2(v161)));
          if (v38 != 0x7FFFFFFF)
          {
            while (*(v161 + 24 * v38 + 16) != v32)
            {
              LODWORD(v38) = *(v161 + 24 * v38 + 8) & 0x7FFFFFFF;
              if (v38 == 0x7FFFFFFF)
              {
                goto LABEL_57;
              }
            }

LABEL_220:
            v125 = *(v8 + 32);
            if (v125 <= v28 + 1)
            {
              v125 = v28 + 1;
            }

            while (v125 - 1 != v28)
            {
              LODWORD(v28) = v28 + 1;
              if ((*(*(v8 + 16) + 200 * v28) & 0x80000000) != 0)
              {
                goto LABEL_50;
              }
            }

            LODWORD(v28) = v125;
            goto LABEL_50;
          }
        }

LABEL_57:
        v39 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4[2], &v158);
        if (!v39)
        {
          v124 = re::TimebaseLog(0);
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_ERROR, "Failed to find expected ID", buf, 2u);
          }

          goto LABEL_219;
        }

        v33 = v39;
        v40 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v158);
        v155 = v36;
        if (!v40)
        {
          break;
        }

        value = v40[3];
LABEL_85:
        *(v40 + 56) = 1;
        if (!*(v33 + 24) && *(v4[2] + 48))
        {
          v53 = CMTimebaseCopySource(value);
          if (!v53)
          {
            v124 = re::TimebaseLog(0);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_ERROR, "root timebase with external source does not have valid source", buf, 2u);
            }

LABEL_219:

            goto LABEL_220;
          }

          v54 = v53;
          memset(&time1, 0, sizeof(time1));
          v55 = v4[2];
          *buf = *(v55 + 80);
          *&buf[16] = *(v55 + 96);
          CMSyncConvertTime(&time1, buf, value, v53);
          if ((time1.flags & 1) == 0 || (timebaseOut = time1, rhs = *(v4[2] + 56), CMTimeSubtract(buf, &timebaseOut, &rhs), fabs(CMTimeGetSeconds(buf)) > 0.001))
          {
            v56 = v4[2];
            *buf = *(v56 + 80);
            *&buf[16] = *(v56 + 96);
            timebaseOut = *(v4[2] + 56);
            v57 = CMTimebaseSetRateAndAnchorTime(value, 1.0, buf, &timebaseOut);
            if (v57)
            {
              v58 = v57;
              v59 = re::TimebaseLog(v57);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "_afterFrameUpdate";
                *&buf[12] = 1024;
                *&buf[14] = 704;
                *&buf[18] = 1024;
                *&buf[20] = v58;
                _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
              }

              v4 = v153;
            }

            snprintf(buf, 0x64uLL, "re-anchoring tree %p with root ID %llu", v4[2], *(v33 + 8));
            v60 = strlen(buf);
            if (v60 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v61 = v60;
            if (v60 >= 0x17)
            {
              operator new();
            }

            HIBYTE(rhs.epoch) = v60;
            if (v60)
            {
              memcpy(&rhs, buf, v60);
            }

            *(&rhs.value + v61) = 0;
            if ((atomic_load_explicit(&qword_1EE1C4218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4218))
            {
              xmmword_1EE1C4278 = 0u;
              *&qword_1EE1C4288 = 0u;
              dword_1EE1C4298 = 1065353216;
              __cxa_guard_release(&qword_1EE1C4218);
            }

            if ((atomic_load_explicit(&qword_1EE1C4220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4220))
            {
              dword_1EE1C419C = 0;
              __cxa_guard_release(&qword_1EE1C4220);
            }

            os_unfair_lock_lock(&dword_1EE1C419C);
            v63 = re::foundationTimingLogObjects(v62);
            if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEFAULT) && ((Current = CFAbsoluteTimeGetCurrent(), (v65 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(&xmmword_1EE1C4278, &rhs)) == 0) || Current - *(v65 + 5) >= 2.0))
            {
              timebaseOut.value = &rhs;
              *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&xmmword_1EE1C4278, &rhs, &std::piecewise_construct, &timebaseOut, &lhs) + 5) = Current;
              if (qword_1EE1C4290 == 100)
              {
                *&timebaseOut.timescale = 0;
                timebaseOut.epoch = 0;
                timebaseOut.value = &timebaseOut.timescale;
                for (i = qword_1EE1C4288; i; i = *i)
                {
                  lhs.value = i + 40;
                  v68 = std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&timebaseOut, (i + 40), &std::piecewise_construct, &lhs);
                  std::string::operator=((v68 + 5), (i + 16));
                }

                std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::clear(&xmmword_1EE1C4278);
                if (&timebaseOut.timescale != timebaseOut.value)
                {
                  v70 = 10;
                  p_timescale = &timebaseOut.timescale;
                  do
                  {
                    v72 = *p_timescale;
                    v73 = p_timescale;
                    if (*p_timescale)
                    {
                      do
                      {
                        v74 = v72;
                        v72 = v72[1];
                      }

                      while (v72);
                    }

                    else
                    {
                      do
                      {
                        v74 = *(v73 + 2);
                        v43 = *v74 == v73;
                        v73 = v74;
                      }

                      while (v43);
                    }

                    v75 = *(v74 + 4);
                    v69.n128_f64[0] = Current - v75;
                    if (Current - v75 >= 2.0)
                    {
                      break;
                    }

                    lhs.value = (v74 + 5);
                    *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&xmmword_1EE1C4278, v74 + 5, &std::piecewise_construct, &lhs, &immediateSourceTime) + 5) = v75;
                    v76 = *p_timescale;
                    if (*p_timescale)
                    {
                      do
                      {
                        v77 = v76;
                        v76 = v76[1];
                      }

                      while (v76);
                    }

                    else
                    {
                      do
                      {
                        v77 = *(p_timescale + 2);
                        v43 = *v77 == p_timescale;
                        p_timescale = v77;
                      }

                      while (v43);
                    }

                    if (!--v70)
                    {
                      break;
                    }

                    p_timescale = v77;
                  }

                  while (v77 != timebaseOut.value);
                }

                std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(&timebaseOut, *&timebaseOut.timescale, v69);
              }

              v66 = 1;
            }

            else
            {
              v66 = 0;
            }

            os_unfair_lock_unlock(&dword_1EE1C419C);
            if (SHIBYTE(rhs.epoch) < 0)
            {
              operator delete(rhs.value);
              if (!v66)
              {
                goto LABEL_131;
              }
            }

            else if (!v66)
            {
              goto LABEL_131;
            }

            v79 = *re::foundationTimingLogObjects(v78);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = v153[2];
              v147 = *(v33 + 8);
              v148 = *(v80 + 48);
              timebaseOut = *(v80 + 80);
              Seconds = CMTimeGetSeconds(&timebaseOut);
              timebaseOut = *(v153[2] + 56);
              v82 = CMTimeGetSeconds(&timebaseOut);
              LODWORD(timebaseOut.value) = 134219520;
              *(&timebaseOut.value + 4) = v80;
              LOWORD(timebaseOut.flags) = 2048;
              *(&timebaseOut.flags + 2) = v147;
              v1 = v149;
              HIWORD(timebaseOut.epoch) = 2048;
              v167 = value;
              v168 = 2048;
              v169 = v148;
              v170 = 2048;
              v171 = v54;
              v172 = 2048;
              v173 = Seconds;
              v174 = 2048;
              v175 = v82;
              _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "re-anchoring tree %p with root ID %llu (timebase %p) to source %llu (timebase %p) ownTime=%0.2f, sourceTime=%0.2f", &timebaseOut, 0x48u);
            }

LABEL_131:
            v4 = v153;
          }

          CFRelease(v54);
        }

        if (!v35)
        {
          goto LABEL_174;
        }

        v83 = CFGetTypeID(v35);
        if (v83 != CMTimebaseGetTypeID())
        {
          goto LABEL_174;
        }

        v84 = CMTimebaseCopySource(v35);
        CFRelease(v84);
        if (v84 != value)
        {
          v85 = CFGetTypeID(value);
          if (v85 == CMTimebaseGetTypeID())
          {
            v86 = CMTimebaseSetSourceTimebase(v35, value);
            if (v86)
            {
              v87 = v86;
              v88 = re::TimebaseLog(v86);
              if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
LABEL_142:

                goto LABEL_143;
              }

              *buf = 136315650;
              *&buf[4] = "_afterFrameUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 733;
              *&buf[18] = 1024;
              *&buf[20] = v87;
              v89 = v88;
LABEL_210:
              _os_log_error_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
              goto LABEL_142;
            }
          }

          else
          {
            v90 = CMTimebaseSetSourceClock(v35, value);
            if (v90)
            {
              v91 = v90;
              v88 = re::TimebaseLog(v90);
              if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_142;
              }

              *buf = 136315650;
              *&buf[4] = "_afterFrameUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 736;
              *&buf[18] = 1024;
              *&buf[20] = v91;
              v89 = v88;
              goto LABEL_210;
            }
          }
        }

LABEL_143:
        v92 = 32;
        if (value == *&v151->_os_unfair_lock_opaque)
        {
          v92 = 88;
        }

        v93 = 40;
        if (value == *&v151->_os_unfair_lock_opaque)
        {
          v93 = 96;
        }

        v94 = *(v155 + v92);
        v95 = 64;
        if (value == *&v151->_os_unfair_lock_opaque)
        {
          v95 = 120;
        }

        v96 = v155 + v93;
        *buf = *v96;
        *&buf[16] = *(v96 + 16);
        timebaseOut = *(v155 + v95);
        v97 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, *(v155 + 8));
        v98 = v97;
        if (*(v155 + 144) != 1 || !*v33)
        {
          if (v94 == 0.0)
          {
            if (CMTimebaseGetRate(v35) != 0.0)
            {
              v103 = CMTimebaseSetRate(v35, 0.0);
              if (v103)
              {
                v104 = v103;
                v105 = re::TimebaseLog(v103);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(time1.value) = 136315650;
                  *(&time1.value + 4) = "_afterFrameUpdate";
                  LOWORD(time1.flags) = 1024;
                  *(&time1.flags + 2) = 789;
                  WORD1(time1.epoch) = 1024;
                  HIDWORD(time1.epoch) = v104;
                  _os_log_error_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
                }

                v4 = v153;
              }
            }

            CMTimebaseGetTime(&time1, v35);
            rhs = *buf;
            if (CMTimeCompare(&time1, &rhs))
            {
              time1 = *buf;
              v106 = CMTimebaseSetTime(v35, &time1);
              if (v106)
              {
                v107 = v106;
                v108 = re::TimebaseLog(v106);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(time1.value) = 136315650;
                  *(&time1.value + 4) = "_afterFrameUpdate";
                  LOWORD(time1.flags) = 1024;
                  *(&time1.flags + 2) = 793;
                  WORD1(time1.epoch) = 1024;
                  HIDWORD(time1.epoch) = v107;
                  p_time1 = &time1;
                  v110 = v108;
                  goto LABEL_212;
                }

                goto LABEL_171;
              }
            }
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
            rhs = *buf;
            CMSyncConvertTime(&time1, &rhs, v35, value);
            memset(&rhs, 0, sizeof(rhs));
            lhs = time1;
            immediateSourceTime = timebaseOut;
            CMTimeSubtract(&rhs, &lhs, &immediateSourceTime);
            if (CMTimebaseGetRate(v35) != v94 || (lhs = rhs, fabs(CMTimeGetSeconds(&lhs)) > 0.001))
            {
              lhs = *buf;
              immediateSourceTime = timebaseOut;
              v111 = CMTimebaseSetRateAndAnchorTime(v35, v94, &lhs, &immediateSourceTime);
              if (v111)
              {
                v112 = v111;
                v108 = re::TimebaseLog(v111);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(lhs.value) = 136315650;
                  *(&lhs.value + 4) = "_afterFrameUpdate";
                  LOWORD(lhs.flags) = 1024;
                  *(&lhs.flags + 2) = 816;
                  WORD1(lhs.epoch) = 1024;
                  HIDWORD(lhs.epoch) = v112;
                  p_time1 = &lhs;
                  v110 = v108;
LABEL_212:
                  _os_log_error_impl(&dword_1E1C61000, v110, OS_LOG_TYPE_ERROR, "%s:%d error: %d", p_time1, 0x18u);
                }

LABEL_171:
              }
            }
          }

          if (v98)
          {
            v113 = MEMORY[0x1E6960C70];
            *(v98 + 2) = *MEMORY[0x1E6960C70];
            v98[6] = *(v113 + 16);
          }

          goto LABEL_174;
        }

        time1 = *(v155 + 148);
        rhs = *(v97 + 4);
        if (CMTimeCompare(&time1, &rhs))
        {
          time1 = *(v155 + 148);
          CMSyncGetTime(&rhs, value);
          v99 = CMTimebaseSetRateAndAnchorTime(v35, v94, &time1, &rhs);
          if (v99)
          {
            v100 = v99;
            v101 = re::TimebaseLog(v99);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time1.value) = 136315650;
              *(&time1.value + 4) = "_afterFrameUpdate";
              LOWORD(time1.flags) = 1024;
              *(&time1.flags + 2) = 767;
              WORD1(time1.epoch) = 1024;
              HIDWORD(time1.epoch) = v100;
              _os_log_error_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
            }
          }

          v102 = *(v155 + 148);
          v98[6] = *(v155 + 164);
          *(v98 + 2) = v102;
        }

        else if (CMTimebaseGetRate(v35) != v94)
        {
          v121 = CMTimebaseSetRate(v35, v94);
          if (v121)
          {
            v122 = v121;
            v123 = re::TimebaseLog(v121);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time1.value) = 136315650;
              *(&time1.value + 4) = "_afterFrameUpdate";
              LOWORD(time1.flags) = 1024;
              *(&time1.flags + 2) = 783;
              WORD1(time1.epoch) = 1024;
              HIDWORD(time1.epoch) = v122;
              _os_log_error_impl(&dword_1E1C61000, v123, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
            }
          }
        }

LABEL_174:
        if (v159)
        {
          if (HIDWORD(v161) == 1000)
          {
            v177 = 0;
            memset(buf, 0, sizeof(buf));
            v178 = 0x7FFFFFFFLL;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(buf, 1001);
            v114 = v162;
            if (v162)
            {
              v115 = 0;
              v116 = (v161 + 8);
              while (1)
              {
                v117 = *v116;
                v116 += 6;
                if (v117 < 0)
                {
                  break;
                }

                if (v162 == ++v115)
                {
                  LODWORD(v115) = v162;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v115) = 0;
            }

            if (v115 != v162)
            {
              v118 = v161;
              do
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(buf, (v118 + 24 * v115 + 16));
                v118 = v161;
                if (v162 <= v115 + 1)
                {
                  v119 = v115 + 1;
                }

                else
                {
                  v119 = v162;
                }

                while (v119 - 1 != v115)
                {
                  LODWORD(v115) = v115 + 1;
                  if ((*(v161 + 24 * v115 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_191;
                  }
                }

                LODWORD(v115) = v119;
LABEL_191:
                ;
              }

              while (v115 != v114);
            }

            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(&v160, buf);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v160, &v159);
        }

        v32 = v158;
        v158 = *(v33 + 24);
        v159 = v32;
        if (!v158)
        {
          goto LABEL_220;
        }
      }

      v41 = *v33;
      if (*v33)
      {
        v42 = v4[2];
        v43 = v41 != 3 && *(v42 + 120) == 2;
        v44 = v43;
        if (v41 != 4 && !v44 && !*(v42 + 48))
        {
          if (v41 == 1)
          {
            AudioClock = *&v1[64]._os_unfair_lock_opaque;
            if (!AudioClock)
            {
              AudioClock = re::TimebaseService::CreateAudioClock(0, v2);
              *&v1[64]._os_unfair_lock_opaque = AudioClock;
            }
          }

          else if (v41 == 3)
          {
            AudioClock = newSourceClock;
          }

          else
          {
            AudioClock = *&v1[62]._os_unfair_lock_opaque;
            if (!AudioClock)
            {
              AudioClock = CMClockGetHostTimeClock();
              *&v1[62]._os_unfair_lock_opaque = AudioClock;
            }
          }

          value = CFRetain(AudioClock);
          goto LABEL_84;
        }
      }

      timebaseOut.value = 0;
      if (*(v33 + 24) || (v49 = *(v4[2] + 48)) == 0)
      {
        v45 = CMTimebaseCreateWithSourceClock(allocator, newSourceClock, &timebaseOut);
        if (!v45)
        {
LABEL_81:
          value = timebaseOut.value;
          v52 = re::TimebaseLog(v45);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v158;
            _os_log_debug_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEBUG, "Creating externally controlled timebase with ID %llu", buf, 0xCu);
          }

LABEL_84:
          *buf = &v158;
          v40 = std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v1[38]._os_unfair_lock_opaque, v158, buf);
          v40[3] = value;
          goto LABEL_85;
        }

        v46 = v45;
        v47 = re::TimebaseLog(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
LABEL_80:

          goto LABEL_81;
        }

        *buf = 136315650;
        *&buf[4] = "_afterFrameUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 652;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        v48 = v47;
      }

      else
      {
        ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(v1, v49);
        if (!ClockOrTimebaseForID)
        {
          v126 = re::TimebaseLog(0);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            v127 = *(v4[2] + 48);
            *buf = 134217984;
            *&buf[4] = v127;
            _os_log_error_impl(&dword_1E1C61000, v126, OS_LOG_TYPE_ERROR, "Could not find manual timebase with ID %llu", buf, 0xCu);
          }

          goto LABEL_220;
        }

        v45 = CMTimebaseCreateWithSourceTimebase(allocator, ClockOrTimebaseForID, &timebaseOut);
        if (!v45)
        {
          goto LABEL_81;
        }

        v51 = v45;
        v47 = re::TimebaseLog(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *buf = 136315650;
        *&buf[4] = "_afterFrameUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 1024;
        *&buf[20] = v51;
        v48 = v47;
      }

      _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
      goto LABEL_80;
    }

    v145 = 0;
LABEL_244:
    v133 = *&v1[42]._os_unfair_lock_opaque;
    if (v133)
    {
      while ((v145 & 1) != 0 || LOBYTE(v133[14]._os_unfair_lock_opaque) == 1)
      {
        LOBYTE(v133[14]._os_unfair_lock_opaque) = 0;
        v134 = *&v133->_os_unfair_lock_opaque;
LABEL_276:
        v133 = v134;
        if (!v134)
        {
          goto LABEL_277;
        }
      }

      CFRelease(*&v133[6]._os_unfair_lock_opaque);
      v135 = *&v1[40]._os_unfair_lock_opaque;
      v136 = *&v133[2]._os_unfair_lock_opaque;
      v137 = vcnt_s8(v135);
      v137.i16[0] = vaddlv_u8(v137);
      if (v137.u32[0] > 1uLL)
      {
        if (v136 >= *&v135)
        {
          v136 %= *&v135;
        }
      }

      else
      {
        v136 &= *&v135 - 1;
      }

      v134 = *&v133->_os_unfair_lock_opaque;
      v138 = *&v1[38]._os_unfair_lock_opaque;
      v139 = *(v138 + 8 * v136);
      do
      {
        v140 = v139;
        v139 = *&v139->_os_unfair_lock_opaque;
      }

      while (v139 != v133);
      if (v140 == &v1[42])
      {
        goto LABEL_282;
      }

      v141 = *&v140[2]._os_unfair_lock_opaque;
      if (v137.u32[0] > 1uLL)
      {
        if (v141 >= *&v135)
        {
          v141 %= *&v135;
        }
      }

      else
      {
        v141 &= *&v135 - 1;
      }

      v142 = *&v133->_os_unfair_lock_opaque;
      if (v141 != v136)
      {
LABEL_282:
        if (v134)
        {
          v143 = *&v134[2]._os_unfair_lock_opaque;
          if (v137.u32[0] > 1uLL)
          {
            v144 = *&v134[2]._os_unfair_lock_opaque;
            if (v143 >= *&v135)
            {
              v144 = v143 % *&v135;
            }
          }

          else
          {
            v144 = v143 & (*&v135 - 1);
          }

          v142 = *&v133->_os_unfair_lock_opaque;
          if (v144 == v136)
          {
            goto LABEL_269;
          }
        }

        *(v138 + 8 * v136) = 0;
        v142 = *&v133->_os_unfair_lock_opaque;
      }

      if (!v142)
      {
LABEL_275:
        *&v140->_os_unfair_lock_opaque = v142;
        *&v133->_os_unfair_lock_opaque = 0;
        --*&v1[44]._os_unfair_lock_opaque;
        operator delete(v133);
        goto LABEL_276;
      }

      v143 = *(v142 + 8);
LABEL_269:
      if (v137.u32[0] > 1uLL)
      {
        if (v143 >= *&v135)
        {
          v143 %= *&v135;
        }
      }

      else
      {
        v143 &= *&v135 - 1;
      }

      if (v143 != v136)
      {
        *(*&v1[38]._os_unfair_lock_opaque + 8 * v143) = v140;
        v142 = *&v133->_os_unfair_lock_opaque;
      }

      goto LABEL_275;
    }

LABEL_277:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v160);
    re::StackScratchAllocator::~StackScratchAllocator(v164);
  }

  else
  {
    for (j = *&v1[42]._os_unfair_lock_opaque; j; j = *j)
    {
      CFRelease(j[3]);
    }

    if (*&v1[44]._os_unfair_lock_opaque)
    {
      v129 = *&v1[42]._os_unfair_lock_opaque;
      if (v129)
      {
        do
        {
          v130 = *v129;
          operator delete(v129);
          v129 = v130;
        }

        while (v130);
      }

      *&v1[42]._os_unfair_lock_opaque = 0;
      v131 = *&v1[40]._os_unfair_lock_opaque;
      if (v131)
      {
        for (k = 0; k != v131; ++k)
        {
          *(*&v1[38]._os_unfair_lock_opaque + 8 * k) = 0;
        }
      }

      *&v1[44]._os_unfair_lock_opaque = 0;
    }
  }

  os_unfair_lock_unlock(v1 + 6);
}

void re::TimebaseManager::setTreeDidChangeCallback(uint64_t a1, unint64_t a2, void *a3)
{
  aBlock = a3;
  os_unfair_lock_lock((a1 + 24));
  if (!aBlock)
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v10 ^ (v10 >> 31));
    v11 = HIDWORD(v21);
    if (HIDWORD(v21) == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 304);
    v13 = (v12 + 32 * HIDWORD(v21));
    v14 = *v13 & 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      *(*(a1 + 296) + 4 * v21) = v14;
    }

    else
    {
      *(v12 + 32 * v22) = *(v12 + 32 * v22) & 0x80000000 | v14;
    }

    v18 = *v13;
    if (*v13 < 0)
    {
      *v13 = v18 & 0x7FFFFFFF;

      v12 = *(a1 + 304);
      v18 = *(v12 + 32 * v11);
    }

    *(v12 + 32 * v11) = *(a1 + 324) | v18 & 0x80000000;
    *(a1 + 324) = v11;
    --*(a1 + 316);
    goto LABEL_17;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(a1 + 288) || (v7 = *(*(a1 + 296) + 4 * (v6 % *(a1 + 312))), v7 == 0x7FFFFFFF))
  {
LABEL_7:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v6);
    if (HIDWORD(v21) != 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    v9 = re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::allocEntry(a1 + 288, v21, v20);
    *(v9 + 8) = a2;
    *(v9 + 16) = _Block_copy(aBlock);
LABEL_17:
    ++*(a1 + 328);
    goto LABEL_18;
  }

  v8 = *(a1 + 304);
  while (*(v8 + 32 * v7 + 8) != a2)
  {
    v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_7;
    }
  }

  v15 = _Block_copy(aBlock);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v6);
  v16 = *(a1 + 304) + 32 * HIDWORD(v21);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;

LABEL_18:
  os_unfair_lock_unlock((a1 + 24));
}

void re::TimebaseManager::beforeFrameUpdate(re::TimebaseManager *this, float a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v10, 2516, this, 0, 0, 0);
  if (a2 > 0.0)
  {
    v4 = *(this + 29);
    CMTimebaseGetTime(&lhs, v4);
    CMTimeMake(&rhs, (a2 * 18000.0 + 0.5), 18000);
    CMTimeAdd(&time, &lhs, &rhs);
    CMTimebaseSetTime(v4, &time);
  }

  re::TimebaseManager::_beforeFrameUpdate(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v10, v5, v6);
}

void re::TimebaseManager::afterFrameUpdate(os_unfair_lock_s *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v4, 2518, this, 0, 0, 0);
  re::TimebaseManager::_afterFrameUpdate(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v4, v2, v3);
}

void *re::TimebaseManager::findClockOrTimebaseForID(re::TimebaseManager *this, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 19, a2);
  if (result)
  {
    return result[3];
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 14, a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t re::TimebaseManager::clockOrTimebaseTypeFromRef(re::TimebaseManager *this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CMTimebaseGetTypeID())
  {
    return 0;
  }

  HostTimeClock = *(this + 31);
  if (!HostTimeClock)
  {
    HostTimeClock = CMClockGetHostTimeClock();
    *(this + 31) = HostTimeClock;
  }

  if (CFEqual(HostTimeClock, cf))
  {
    return 2;
  }

  v9 = *(this + 33);
  if (v9 && !CMSyncMightDrift(v9, cf))
  {
    return 3;
  }

  v10 = *(this + 34);
  if (v10)
  {
    if (!CMSyncMightDrift(v10, cf))
    {
      return 3;
    }
  }

  v11 = *(this + 35);
  if (!v11)
  {
    re::TimebaseManager::updatePrimarySharedClock(this, v7, v8);
    v11 = *(this + 35);
  }

  if (!CMSyncMightDrift(v11, cf))
  {
    return 3;
  }

  if (re::TimebaseManager::matchesAudioClock(this, cf))
  {
    return 1;
  }

  return 4;
}

unint64_t re::TimebaseManager::addLocallyControlledTimebaseToTree(os_unfair_lock_s *this, OpaqueCMTimebase *a2, re::TimebaseTree *a3, int a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v84 = a3;
  os_unfair_lock_lock(this + 6);
  v82 = 0;
  v83 = 0;
  v81 = a2;
  if (!a2)
  {
    goto LABEL_80;
  }

  v6 = 0;
  v7 = 0;
  v68 = 0;
  name = *MEMORY[0x1E6960CE8];
  v63 = *MEMORY[0x1E6960CE0];
  v64 = *MEMORY[0x1E6960CD0];
  v8 = a2;
  timebase = a2;
  do
  {
    v80 = 0;
    v9 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
    if (v9)
    {
      v10 = v9;
      v80 = v9[3];
      v11 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v9 + 4, v84) != 0;
      if (v6)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v12 = arc4random();
    v80 = arc4random() | (v12 << 32);
    memset(&v88[8], 0, 32);
    v89 = 1065353216;
    *v88 = v80;
    v85 = &v84;
    std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(&v88[8], v84, &v85)[3] = 1;
    CFRetain(v8);
    v13 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ HIDWORD(v8));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v13 >> 47) ^ v13);
    v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
    v16 = *&this[20]._os_unfair_lock_opaque;
    if (!*&v16)
    {
      goto LABEL_22;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & v15;
    }

    v19 = *(*&this[18]._os_unfair_lock_opaque + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v15)
      {
        break;
      }

      if (v17.u32[0] > 1uLL)
      {
        if (v21 >= *&v16)
        {
          v21 %= *&v16;
        }
      }

      else
      {
        v21 &= *&v16 - 1;
      }

      if (v21 != v18)
      {
        goto LABEL_22;
      }

LABEL_21:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    if (v20[2] != v8)
    {
      goto LABEL_21;
    }

    a2 = timebase;
    v20[3] = *v88;
    if (v20 + 3 != v88)
    {
      *(v20 + 16) = v89;
      v22 = *&v88[24];
      v23 = v20[5];
      if (!v23)
      {
        goto LABEL_30;
      }

      for (i = 0; i != v23; ++i)
      {
        *(v20[4] + 8 * i) = 0;
      }

      v25 = v20[6];
      v20[6] = 0;
      v20[7] = 0;
      if (v25)
      {
        while (v22)
        {
          v25[2] = v22[2];
          v25[3] = v22[3];
          v26 = *v25;
          std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__node_insert_multi((v20 + 4), v25);
          v22 = *v22;
          v25 = v26;
          if (!v26)
          {
            goto LABEL_30;
          }
        }

        do
        {
          v27 = *v25;
          operator delete(v25);
          v25 = v27;
        }

        while (v27);
      }

      else
      {
LABEL_30:
        if (v22)
        {
          operator new();
        }
      }
    }

    v8 = v81;
    v85 = &v80;
    std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&this[28]._os_unfair_lock_opaque, v80, &v85)[3] = v8;
    v10 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v88[8]);
    v11 = 0;
    if (v82)
    {
LABEL_34:
      if (!*(re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v84, &v82) + 24))
      {
        v28 = v80;
        *(re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v84, &v82) + 24) = v28;
      }
    }

LABEL_36:
    v29 = CFEqual(v8, a2);
    if (v29)
    {
      v83 = v80;
      if (!std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[8]._os_unfair_lock_opaque, v8))
      {
        std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(&this[8]._os_unfair_lock_opaque, v8, &v81);
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, this, re::TimebaseManager::LeafTimebaseNeedsUpdating, name, v8, CFNotificationSuspensionBehaviorDrop);
        v31 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(v31, this, re::TimebaseManager::LeafTimebaseNeedsUpdating, v64, v8, CFNotificationSuspensionBehaviorDrop);
        v32 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(v32, this, re::TimebaseManager::LeafMasterDidChange, v63, v8, CFNotificationSuspensionBehaviorDrop);
      }
    }

    v35 = re::TimebaseManager::clockOrTimebaseTypeFromRef(this, v8);
    if ((v68 & (v7 != 0)) == 1)
    {
      CFRelease(v7);
      v68 = 0;
    }

    if (v35 == 3)
    {
      v8 = 0;
      if (v11)
      {
        goto LABEL_49;
      }

LABEL_51:
      outRelativeRate = 1.0;
      outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
      outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      v75 = **&MEMORY[0x1E6960CC0];
      v76 = 1.0;
      v74 = **&MEMORY[0x1E6960CC0];
      if (v8)
      {
        v38 = v81;
        RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v81, v8, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
        if (CMSyncGetRelativeRate(v38, v8) == 0.0 || RelativeRateAndAnchorTime == -12755)
        {
          CMSyncGetTime(v88, v38);
          outOfClockOrTimebaseAnchorTime = *v88;
          outRelativeToClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
        }

        else if (RelativeRateAndAnchorTime)
        {
          v41 = re::TimebaseLog(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *v88 = 67109120;
            *&v88[4] = RelativeRateAndAnchorTime;
            _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Failed to calculate relative rate and anchor: %d", v88, 8u);
          }
        }

        v42 = *&this[68]._os_unfair_lock_opaque;
        if (v8 == *&this[66]._os_unfair_lock_opaque && v42)
        {
          v43 = CMSyncGetRelativeRateAndAnchorTime(v38, v42, &v76, &v75, &v74);
          if (v43)
          {
            v44 = v43;
            v45 = re::TimebaseLog(v43);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *v88 = 136315650;
              *&v88[4] = "addLocallyControlledTimebaseToTree";
              *&v88[12] = 1024;
              *&v88[14] = 1042;
              *&v88[18] = 1024;
              *&v88[20] = v44;
              _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v88, 0x18u);
            }
          }
        }

        else if (v8 == v42)
        {
          v76 = outRelativeRate;
          v75 = outOfClockOrTimebaseAnchorTime;
          v74 = outRelativeToClockOrTimebaseAnchorTime;
          outRelativeRate = 1.0;
          outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
          outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
        }
      }

      v73 = **&MEMORY[0x1E6960CC0];
      if (v29)
      {
        v46 = a4;
      }

      else
      {
        v46 = 0;
      }

      if (v46 == 1)
      {
        if (CMTimebaseGetEffectiveRate(timebase) == 0.0)
        {
          CMTimebaseGetTime(&v73, timebase);
        }

        else
        {
          v48 = re::TimebaseLog(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *v88 = 0;
            _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "new locally-controlled timebase has non-zero rate so initial seek target is undefined", v88, 2u);
          }
        }
      }

      v49 = v84;
      v50 = v80;
      v51 = outRelativeRate;
      v72 = outOfClockOrTimebaseAnchorTime;
      v71 = outRelativeToClockOrTimebaseAnchorTime;
      v52 = v76;
      v70 = v75;
      v69 = v74;
      *&v88[3] = v73;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v84, &v80, v53 ^ (v53 >> 31), &v85);
      if (HIDWORD(v86) == 0x7FFFFFFF)
      {
        v54 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v49, v86, v85);
        *(v54 + 8) = v80;
        *(v54 + 16) = v35;
        *(v54 + 24) = v50;
        *(v54 + 32) = 1;
        *(v54 + 40) = 0;
        *(v54 + 48) = v51;
        *(v54 + 56) = v72;
        *(v54 + 80) = v71;
        *(v54 + 104) = v52;
        *(v54 + 112) = v70;
        *(v54 + 136) = v69;
        *(v54 + 160) = v46;
        *(v54 + 161) = *v88;
        *(v54 + 172) = *&v88[11];
        ++*(v49 + 10);
      }

      *v88 = &v84;
      v36 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v84, v88);
      v37 = 1;
    }

    else
    {
      if (v35)
      {
        v8 = *&this[70]._os_unfair_lock_opaque;
        if (v8)
        {
          if (!v11)
          {
            goto LABEL_51;
          }
        }

        else
        {
          re::TimebaseManager::updatePrimarySharedClock(this, v33, v34);
          v8 = *&this[70]._os_unfair_lock_opaque;
          if (!v11)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v8 = CMTimebaseCopySource(v81);
        v68 = 1;
        if (!v11)
        {
          goto LABEL_51;
        }
      }

LABEL_49:
      *v88 = &v84;
      v36 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v84, v88);
      v37 = v36[3] + 1;
    }

    v36[3] = v37;
    v6 = v80;
    v81 = v8;
    v82 = v80;
    v7 = v8;
    a2 = timebase;
  }

  while (v8);
LABEL_80:
  v55 = *&this[60]._os_unfair_lock_opaque;
  if (v55)
  {
    v55 = (*(*v55 + 56))(v55);
  }

  v56 = v84;
  *(v84 + 14) = v55;
  v57 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], v56);
  if (v57)
  {
    (*(*v57 + 16))();
  }

  v58 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v84, &v83);
  v59 = v58;
  if (!v58 || v58[144] != a4)
  {
    v60 = re::TimebaseLog(v58);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *v88 = 134218496;
      *&v88[4] = v83;
      *&v88[12] = 2048;
      *&v88[14] = v59;
      *&v88[22] = 1024;
      *&v88[24] = a4;
      _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "timebase %llu node %p has unexpected prioritizeContinuity state (expected %d)", v88, 0x1Cu);
    }
  }

  v61 = v83;
  os_unfair_lock_unlock(this + 6);
  return v61;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  return *(a1 + 16) + 200 * v6 + 16;
}

void re::TimebaseManager::LeafTimebaseNeedsUpdating(re::TimebaseManager *this, __CFNotificationCenter *a2, const __CFString *a3, __CFString *a4, CFDictionaryRef theDict, const __CFDictionary *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960CC8]);
  if (Value)
  {
    memset(&v38, 0, sizeof(v38));
    CMTimeMakeFromDictionary(&v38, Value);
  }

  else
  {
    v10 = re::TimebaseLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(outOfClockOrTimebaseAnchorTime.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "leaf timebase update does not have event time", &outOfClockOrTimebaseAnchorTime, 2u);
    }

    v38 = **&MEMORY[0x1E6960C70];
  }

  v45 = v38.value;
  flags = v38.flags;
  timescale = v38.timescale;
  epoch = v38.epoch;
  os_unfair_lock_lock(a2 + 6);
  if (a4)
  {
    v12 = 0;
    v13 = *MEMORY[0x1E6960CE8];
    v14 = MEMORY[0x1E6960CC0];
    while (1)
    {
      v15 = a4;
      v16 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(a2 + 9, a4);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v20 = re::TimebaseManager::clockOrTimebaseTypeFromRef(a2, a4);
      if (v12)
      {
        CFRelease(v15);
      }

      if (v20)
      {
        if (v20 == 3)
        {
          goto LABEL_51;
        }

        a4 = *(a2 + 35);
        if (a4)
        {
          v36 = 0;
        }

        else
        {
          re::TimebaseManager::updatePrimarySharedClock(a2, v18, v19);
          v36 = 0;
          a4 = *(a2 + 35);
        }
      }

      else
      {
        a4 = CMTimebaseCopySource(v15);
        v36 = 1;
      }

      outRelativeRate = 1.0;
      outOfClockOrTimebaseAnchorTime = *v14;
      outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      v40 = *v14;
      v41 = 1.0;
      v39 = *v14;
      RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v15, a4, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
      if (CMSyncGetRelativeRate(v15, a4) == 0.0 || RelativeRateAndAnchorTime)
      {
        outRelativeRate = 0.0;
        Time = CMSyncGetTime(&v47, v15);
        outOfClockOrTimebaseAnchorTime = v47;
        outRelativeToClockOrTimebaseAnchorTime = *v14;
        if (RelativeRateAndAnchorTime != -12755)
        {
          if (RelativeRateAndAnchorTime)
          {
            v23 = re::TimebaseLog(Time);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v47.value) = 67109120;
              HIDWORD(v47.value) = RelativeRateAndAnchorTime;
              _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Failed to calculate relative rate and anchor: %d", &v47, 8u);
            }
          }
        }
      }

      v24 = *(a2 + 34);
      if (a4 == *(a2 + 33) && v24)
      {
        v25 = CMSyncGetRelativeRateAndAnchorTime(v15, v24, &v41, &v40, &v39);
        if (v25)
        {
          v26 = v25;
          v27 = re::TimebaseLog(v25);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v47.value) = 136315650;
            *(&v47.value + 4) = "updateEffectiveRateOrAnchorThroughTimebase";
            LOWORD(v47.flags) = 1024;
            *(&v47.flags + 2) = 1265;
            WORD1(v47.epoch) = 1024;
            HIDWORD(v47.epoch) = v26;
            _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v47, 0x18u);
          }
        }
      }

      else if (a4 == v24)
      {
        v41 = outRelativeRate;
        v40 = outOfClockOrTimebaseAnchorTime;
        v39 = outRelativeToClockOrTimebaseAnchorTime;
        outRelativeRate = 1.0;
        outOfClockOrTimebaseAnchorTime = *v14;
        outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      }

      for (i = v17[6]; i; i = *i)
      {
        v29 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(i[2], v17 + 3);
        if (v29)
        {
          v30 = v29;
          if (CFStringCompare(a3, v13, 0) == kCFCompareEqualTo && *(v30 + 144) == 1 && (flags & 1) != 0)
          {
            *(v30 + 148) = v45;
            *(v30 + 156) = timescale;
            *(v30 + 160) = flags;
            *(v30 + 164) = epoch;
            *(v30 + 164) = atomic_fetch_add(a2 + 43, 1uLL) + 1;
          }

          *(v30 + 32) = outRelativeRate;
          *(v30 + 40) = outOfClockOrTimebaseAnchorTime;
          *(v30 + 64) = outRelativeToClockOrTimebaseAnchorTime;
          *(v30 + 88) = v41;
          *(v30 + 96) = v40;
          v32 = *&v39.value;
          *(v30 + 136) = v39.epoch;
          *(v30 + 120) = v32;
          v33 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a2 + 288, i[2]);
          if (v33)
          {
            (*(*v33 + 16))();
          }
        }

        else
        {
          v34 = re::TimebaseLog(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v47.value) = 0;
            _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Trying to update unknown struct in tree", &v47, 2u);
          }
        }
      }

      v12 = v36;
      if (!a4)
      {
        goto LABEL_51;
      }
    }

    v35 = re::TimebaseLog(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(outOfClockOrTimebaseAnchorTime.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Trying to update unknown clock or timebase", &outOfClockOrTimebaseAnchorTime, 2u);
    }
  }

LABEL_51:
  os_unfair_lock_unlock(a2 + 6);
}

void re::TimebaseManager::LeafMasterDidChange(re::TimebaseManager *this, os_unfair_lock_s *a2, void *a3, __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  os_unfair_lock_lock(a2 + 6);
  v8 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&a2[18]._os_unfair_lock_opaque, a4);
  if (v8)
  {
    v9 = v8;
    *buf = 0u;
    v23 = 0u;
    v24 = *(v8 + 16);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(buf, v8[5]);
    v10 = v9[6];
    if (!v10)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v11 = v10[2];
      v12 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
      v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
      v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
      if (!*&buf[8])
      {
        goto LABEL_19;
      }

      v15 = vcnt_s8(*&buf[8]);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
        if (v14 >= *&buf[8])
        {
          v16 = v14 % *&buf[8];
        }
      }

      else
      {
        v16 = v14 & (*&buf[8] - 1);
      }

      v17 = *(*buf + 8 * v16);
      if (!v17 || (v18 = *v17) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v19 = v18[1];
        if (v19 == v14)
        {
          break;
        }

        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&buf[8])
          {
            v19 %= *&buf[8];
          }
        }

        else
        {
          v19 &= *&buf[8] - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_19;
        }

LABEL_18:
        v18 = *v18;
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      if (v18[2] != v11)
      {
        goto LABEL_18;
      }

      v10 = *v10;
      if (!v10)
      {
LABEL_21:
        os_unfair_lock_unlock(a2 + 6);
        for (i = v23; i; i = *i)
        {
          re::TimebaseManager::removeLocallyControlledTimebaseFromTree(a2, a4, i[2], 0);
          re::TimebaseManager::addLocallyControlledTimebaseToTree(a2, a4, i[2], 0);
        }

        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(buf);
        return;
      }
    }
  }

  v21 = re::TimebaseLog(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Received update for unknown timebase", buf, 2u);
  }

  os_unfair_lock_unlock(a2 + 6);
}

void re::TimebaseManager::removeLocallyControlledTimebaseFromTree(os_unfair_lock_s *this, OpaqueCMTimebase *a2, re::TimebaseTree *a3, int a4)
{
  v5 = a3;
  v61 = a3;
  os_unfair_lock_lock(this + 6);
  v59 = 0;
  v60 = 0;
  if (a2)
  {
    v8 = a2;
    while (1)
    {
      v9 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
      v5 = v61;
      if (!v9)
      {
        goto LABEL_115;
      }

      v10 = v9;
      if (!std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v9 + 4, v61))
      {
        goto LABEL_115;
      }

      v59 = v10[3];
      v62 = &v61;
      v11 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v5, &v62);
      v12 = v11[3];
      v13 = v12 - 1;
      v11[3] = v12 - 1;
      if (v12 != 1)
      {
        goto LABEL_99;
      }

      v14 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v10 + 4, v61);
      if (v14)
      {
        break;
      }

LABEL_35:
      if (v8 == a2)
      {
        v25 = a4;
      }

      else
      {
        v25 = 1;
      }

      if (!v10[7] && v25)
      {
        std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(&this[18]._os_unfair_lock_opaque, v8);
        v26 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, v59);
        if (v26)
        {
          v27 = *&this[30]._os_unfair_lock_opaque;
          v28 = *&v26[2]._os_unfair_lock_opaque;
          v29 = vcnt_s8(v27);
          v29.i16[0] = vaddlv_u8(v29);
          if (v29.u32[0] > 1uLL)
          {
            if (v28 >= *&v27)
            {
              v28 %= *&v27;
            }
          }

          else
          {
            v28 &= *&v27 - 1;
          }

          v30 = *&v26->_os_unfair_lock_opaque;
          v31 = *&this[28]._os_unfair_lock_opaque;
          v32 = *(v31 + 8 * v28);
          do
          {
            v33 = v32;
            v32 = *&v32->_os_unfair_lock_opaque;
          }

          while (v32 != v26);
          if (v33 == &this[32])
          {
            goto LABEL_58;
          }

          v34 = *&v33[2]._os_unfair_lock_opaque;
          if (v29.u32[0] > 1uLL)
          {
            if (v34 >= *&v27)
            {
              v34 %= *&v27;
            }
          }

          else
          {
            v34 &= *&v27 - 1;
          }

          if (v34 == v28)
          {
LABEL_60:
            if (v30)
            {
              v35 = *(v30 + 8);
              goto LABEL_62;
            }
          }

          else
          {
LABEL_58:
            if (!v30)
            {
              goto LABEL_59;
            }

            v35 = *(v30 + 8);
            if (v29.u32[0] > 1uLL)
            {
              v36 = *(v30 + 8);
              if (v35 >= *&v27)
              {
                v36 = v35 % *&v27;
              }
            }

            else
            {
              v36 = v35 & (*&v27 - 1);
            }

            if (v36 != v28)
            {
LABEL_59:
              *(v31 + 8 * v28) = 0;
              v30 = *&v26->_os_unfair_lock_opaque;
              goto LABEL_60;
            }

LABEL_62:
            if (v29.u32[0] > 1uLL)
            {
              if (v35 >= *&v27)
              {
                v35 %= *&v27;
              }
            }

            else
            {
              v35 &= *&v27 - 1;
            }

            if (v35 != v28)
            {
              *(*&this[28]._os_unfair_lock_opaque + 8 * v35) = v33;
              v30 = *&v26->_os_unfair_lock_opaque;
            }
          }

          *&v33->_os_unfair_lock_opaque = v30;
          *&v26->_os_unfair_lock_opaque = 0;
          --*&this[34]._os_unfair_lock_opaque;
          operator delete(v26);
        }

        v37 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[8]._os_unfair_lock_opaque, v8);
        if (v37)
        {
          v38 = *&this[10]._os_unfair_lock_opaque;
          v39 = *&v37[2]._os_unfair_lock_opaque;
          v40 = vcnt_s8(v38);
          v40.i16[0] = vaddlv_u8(v40);
          if (v40.u32[0] > 1uLL)
          {
            if (v39 >= *&v38)
            {
              v39 %= *&v38;
            }
          }

          else
          {
            v39 &= *&v38 - 1;
          }

          v41 = *&v37->_os_unfair_lock_opaque;
          v42 = *&this[8]._os_unfair_lock_opaque;
          v43 = *(v42 + 8 * v39);
          do
          {
            v44 = v43;
            v43 = *&v43->_os_unfair_lock_opaque;
          }

          while (v43 != v37);
          if (v44 == &this[12])
          {
            goto LABEL_87;
          }

          v45 = *&v44[2]._os_unfair_lock_opaque;
          if (v40.u32[0] > 1uLL)
          {
            if (v45 >= *&v38)
            {
              v45 %= *&v38;
            }
          }

          else
          {
            v45 &= *&v38 - 1;
          }

          if (v45 == v39)
          {
LABEL_89:
            if (v41)
            {
              v46 = *(v41 + 8);
              goto LABEL_91;
            }
          }

          else
          {
LABEL_87:
            if (!v41)
            {
              goto LABEL_88;
            }

            v46 = *(v41 + 8);
            if (v40.u32[0] > 1uLL)
            {
              v47 = *(v41 + 8);
              if (v46 >= *&v38)
              {
                v47 = v46 % *&v38;
              }
            }

            else
            {
              v47 = v46 & (*&v38 - 1);
            }

            if (v47 != v39)
            {
LABEL_88:
              *(v42 + 8 * v39) = 0;
              v41 = *&v37->_os_unfair_lock_opaque;
              goto LABEL_89;
            }

LABEL_91:
            if (v40.u32[0] > 1uLL)
            {
              if (v46 >= *&v38)
              {
                v46 %= *&v38;
              }
            }

            else
            {
              v46 &= *&v38 - 1;
            }

            if (v46 != v39)
            {
              *(*&this[8]._os_unfair_lock_opaque + 8 * v46) = v44;
              v41 = *&v37->_os_unfair_lock_opaque;
            }
          }

          *&v44->_os_unfair_lock_opaque = v41;
          *&v37->_os_unfair_lock_opaque = 0;
          --*&this[14]._os_unfair_lock_opaque;
          operator delete(v37);
          re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(this, v8);
        }

        CFRelease(v8);
      }

LABEL_99:
      v48 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v61, &v59);
      if (v48 && (v49 = *(v48 + 24)) != 0 && (v50 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, v49)) != 0)
      {
        v8 = v50[3];
        if (!v13)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v8 = 0;
        if (!v13)
        {
LABEL_105:
          v51 = v61;
          v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v61, &v59, v52 ^ (v52 >> 31), &v62);
          v53 = v64;
          if (v64 != 0x7FFFFFFF)
          {
            v54 = *(v51 + 2);
            v55 = *(v54 + 200 * v64) & 0x7FFFFFFF;
            if (v65 == 0x7FFFFFFF)
            {
              *(*(v51 + 1) + 4 * v63) = v55;
              v53 = v64;
            }

            else
            {
              *(v54 + 200 * v65) = *(v54 + 200 * v65) & 0x80000000 | v55;
            }

            *(v54 + 200 * v53) = *(v51 + 9);
            --*(v51 + 7);
            v56 = *(v51 + 10) + 1;
            *(v51 + 9) = v53;
            *(v51 + 10) = v56;
          }

          if (v60)
          {
            v57 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v61, &v60);
            if (v57)
            {
              *(v57 + 24) = 0;
            }
          }
        }
      }

      v60 = v59;
      if (!v8)
      {
        v5 = v61;
        goto LABEL_115;
      }
    }

    v15 = v10[5];
    v16 = v14[1];
    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      if (v16 >= *&v15)
      {
        v16 %= *&v15;
      }
    }

    else
    {
      v16 &= *&v15 - 1;
    }

    v18 = *v14;
    v19 = v10[4];
    v20 = *(v19 + 8 * v16);
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20 != v14);
    if (v21 == v10 + 6)
    {
      goto LABEL_24;
    }

    v22 = v21[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v22 >= *&v15)
      {
        v22 %= *&v15;
      }
    }

    else
    {
      v22 &= *&v15 - 1;
    }

    if (v22 != v16)
    {
LABEL_24:
      if (v18)
      {
        v23 = *(v18 + 8);
        if (v17.u32[0] > 1uLL)
        {
          v24 = *(v18 + 8);
          if (v23 >= *&v15)
          {
            v24 = v23 % *&v15;
          }
        }

        else
        {
          v24 = v23 & (*&v15 - 1);
        }

        if (v24 == v16)
        {
          goto LABEL_28;
        }
      }

      *(v19 + 8 * v16) = 0;
      v18 = *v14;
    }

    if (!v18)
    {
LABEL_34:
      *v21 = v18;
      *v14 = 0;
      --v10[7];
      operator delete(v14);
      goto LABEL_35;
    }

    v23 = *(v18 + 8);
LABEL_28:
    if (v17.u32[0] > 1uLL)
    {
      if (v23 >= *&v15)
      {
        v23 %= *&v15;
      }
    }

    else
    {
      v23 &= *&v15 - 1;
    }

    if (v23 != v16)
    {
      *(v10[4] + 8 * v23) = v21;
      v18 = *v14;
    }

    goto LABEL_34;
  }

LABEL_115:
  v58 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], v5);
  if (v58)
  {
    (*(*v58 + 16))();
  }

  os_unfair_lock_unlock(this + 6);
}

uint64_t re::TimebaseManager::addExternallyControlledTree(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  if (std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[48]._os_unfair_lock_opaque, a2) || (v5 = *(a2 + 48)) != 0 && ((ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, v5)) == 0 || (v7 = CFGetTypeID(ClockOrTimebaseForID), v7 != CMTimebaseGetTypeID())))
  {
    os_unfair_lock_unlock(this + 6);
    return 0;
  }

  v8 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = *&this[50]._os_unfair_lock_opaque;
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*&this[48]._os_unfair_lock_opaque + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (v15[2] != a2)
  {
    goto LABEL_22;
  }

  os_unfair_lock_unlock(this + 6);
  re::TimebaseManager::_afterFrameUpdate(this);
  return 1;
}

uint64_t re::TimebaseManager::removeTimebaseTree(os_unfair_lock_s *this, re::TimebaseTree *a2)
{
  os_unfair_lock_lock(this + 6);
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 2);
    while (1)
    {
      v7 = *v6;
      v6 += 50;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
    goto LABEL_34;
  }

  v8 = *(a2 + 8);
  do
  {
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, *(*(a2 + 2) + 200 * v5 + 8));
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *&this[10]._os_unfair_lock_opaque;
    if (!*&v10)
    {
      goto LABEL_26;
    }

    v11 = v9[3];
    v12 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
    v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
    v15 = vcnt_s8(v10);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v14;
      if (v14 >= *&v10)
      {
        v16 = v14 % *&v10;
      }
    }

    else
    {
      v16 = v14 & (*&v10 - 1);
    }

    v17 = *(*&this[8]._os_unfair_lock_opaque + 8 * v16);
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    if (!v18)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v19 = v18[1];
      if (v14 == v19)
      {
        break;
      }

      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= *&v10)
        {
          v19 %= *&v10;
        }
      }

      else
      {
        v19 &= *&v10 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_26;
      }

LABEL_25:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (v18[2] != v11)
    {
      goto LABEL_25;
    }

    std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(&v34, v11, v9 + 3);
    v8 = *(a2 + 8);
LABEL_26:
    if (v8 <= v5 + 1)
    {
      v20 = v5 + 1;
    }

    else
    {
      v20 = v8;
    }

    while (v20 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a2 + 2) + 200 * v5) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v5) = v20;
LABEL_33:
    ;
  }

  while (v5 != v4);
LABEL_34:
  v21 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[48]._os_unfair_lock_opaque, a2);
  if (v21)
  {
    v22 = *&this[50]._os_unfair_lock_opaque;
    v23 = *&v21->_os_unfair_lock_opaque;
    v24 = *&v21[2]._os_unfair_lock_opaque;
    v25 = vcnt_s8(v22);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      if (v24 >= *&v22)
      {
        v24 %= *&v22;
      }
    }

    else
    {
      v24 &= *&v22 - 1;
    }

    v26 = *&this[48]._os_unfair_lock_opaque;
    v27 = *(v26 + 8 * v24);
    do
    {
      v28 = v27;
      v27 = *&v27->_os_unfair_lock_opaque;
    }

    while (v27 != v21);
    if (v28 == &this[52])
    {
      goto LABEL_52;
    }

    v29 = *&v28[2]._os_unfair_lock_opaque;
    if (v25.u32[0] > 1uLL)
    {
      if (v29 >= *&v22)
      {
        v29 %= *&v22;
      }
    }

    else
    {
      v29 &= *&v22 - 1;
    }

    if (v29 == v24)
    {
LABEL_54:
      if (v23)
      {
        v30 = *(v23 + 8);
        goto LABEL_56;
      }
    }

    else
    {
LABEL_52:
      if (!v23)
      {
        goto LABEL_53;
      }

      v30 = *(v23 + 8);
      if (v25.u32[0] > 1uLL)
      {
        v31 = *(v23 + 8);
        if (v30 >= *&v22)
        {
          v31 = v30 % *&v22;
        }
      }

      else
      {
        v31 = v30 & (*&v22 - 1);
      }

      if (v31 != v24)
      {
LABEL_53:
        *(v26 + 8 * v24) = 0;
        v23 = *&v21->_os_unfair_lock_opaque;
        goto LABEL_54;
      }

LABEL_56:
      if (v25.u32[0] > 1uLL)
      {
        if (v30 >= *&v22)
        {
          v30 %= *&v22;
        }
      }

      else
      {
        v30 &= *&v22 - 1;
      }

      if (v30 != v24)
      {
        *(*&this[48]._os_unfair_lock_opaque + 8 * v30) = v28;
        v23 = *&v21->_os_unfair_lock_opaque;
      }
    }

    *&v28->_os_unfair_lock_opaque = v23;
    *&v21->_os_unfair_lock_opaque = 0;
    --*&this[54]._os_unfair_lock_opaque;
    operator delete(v21);
  }

  os_unfair_lock_unlock(this + 6);
  for (i = v35; i; i = *i)
  {
    re::TimebaseManager::removeLocallyControlledTimebaseFromTree(this, i[2], a2, 1);
  }

  re::TimebaseManager::_afterFrameUpdate(this);
  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v34);
}

void *re::TimebaseManager::copyReadOnlyClockOrTimebaseForID(os_unfair_lock_s *this, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, a2);
  os_unfair_lock_unlock(this + 6);
  if (ClockOrTimebaseForID)
  {
    v5 = CFGetTypeID(ClockOrTimebaseForID);
    if (v5 == CMTimebaseGetTypeID())
    {
      OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
      if (OnlyTimebase)
      {
        v7 = OnlyTimebase;
        v8 = re::TimebaseLog(OnlyTimebase);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v11 = "copyReadOnlyClockOrTimebaseForID";
          v12 = 1024;
          v13 = 1400;
          v14 = 1024;
          v15 = v7;
          _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      return 0;
    }

    else
    {
      CFRetain(ClockOrTimebaseForID);
    }
  }

  return ClockOrTimebaseForID;
}

void *re::TimebaseManager::copyClockOrTimebaseForID(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, a2);
  os_unfair_lock_unlock(this + 6);
  if (ClockOrTimebaseForID)
  {
    CFRetain(ClockOrTimebaseForID);
  }

  return ClockOrTimebaseForID;
}

BOOL re::TimebaseManager::isLocallyControlledClockOrTimebase(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, a2) != 0;
  os_unfair_lock_unlock(this + 6);
  return v4;
}

void re::TimebaseManager::latestSeekTargetForTimebase(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = a2;
  os_unfair_lock_lock(this + 6);
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[38]._os_unfair_lock_opaque, a2);
  if (v6)
  {
    *a3 = *(v6 + 2);
    v7 = v6[6];
    goto LABEL_24;
  }

  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, a2);
  if (!v8)
  {
LABEL_23:
    v20 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v7 = *(v20 + 16);
    goto LABEL_24;
  }

  v9 = *&this[20]._os_unfair_lock_opaque;
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = *(v8 + 24);
  v11 = 0x9DDFEA08EB382D69 * ((8 * (v10 & 0x1FFFFFFF) + 8) ^ HIDWORD(v10));
  v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v11 >> 47) ^ v11);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
  v14 = vcnt_s8(v9);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v13;
    if (v13 >= *&v9)
    {
      v15 = v13 % *&v9;
    }
  }

  else
  {
    v15 = v13 & (*&v9 - 1);
  }

  v16 = *(*&this[18]._os_unfair_lock_opaque + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_20:
    v19 = re::TimebaseLog(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = a2;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "retrieving seek target for un-referenced timebase %llu", buf, 0xCu);
    }

    goto LABEL_23;
  }

  while (1)
  {
    v18 = v17[1];
    if (v13 == v18)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= *&v9)
      {
        v18 %= *&v9;
      }
    }

    else
    {
      v18 &= *&v9 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_20;
    }

LABEL_19:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (v17[2] != v10)
  {
    goto LABEL_19;
  }

  v21 = v17 + 6;
  do
  {
    v21 = *v21;
    if (!v21)
    {
      v22 = re::TimebaseLog(v8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v23;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "retrieving seek target for unused timebase %llu", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v8 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21[2], &v23);
  }

  while (!v8);
  if (*(v8 + 144) != 1)
  {
    goto LABEL_23;
  }

  *a3 = *(v8 + 148);
  v7 = *(v8 + 164);
LABEL_24:
  *(a3 + 16) = v7;
  os_unfair_lock_unlock(this + 6);
}

void ___ZL34AlignmentDifferenceUpdateThresholdv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"clockSyncUpdateThreshold"];
  qword_1EE1C4208 = v1;

  if (*&qword_1EE1C4208 == 0.0)
  {
    qword_1EE1C4208 = 0x3F847AE147AE147BLL;
  }
}

void std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void *re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, void *a5)
{
  *&v16[16] = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  *v16 = 0x3FF0000000000000uLL;
  *&v16[8] = *MEMORY[0x1E6960CC0];
  *&v16[24] = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v17 = *MEMORY[0x1E6960CC0];
  *&v18 = v8;
  *(&v18 + 1) = 0x3FF0000000000000;
  v9 = *MEMORY[0x1E6960CC0];
  *&v20[0] = *(MEMORY[0x1E6960CC0] + 16);
  v19 = v9;
  v10 = *MEMORY[0x1E6960CC0];
  *(&v20[1] + 1) = *(MEMORY[0x1E6960CC0] + 16);
  *(v20 + 8) = v10;
  v11 = *MEMORY[0x1E6960CC0];
  *(&v20[3] + 4) = *(MEMORY[0x1E6960CC0] + 16);
  *(&v20[2] + 4) = v11;
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v15);
  v13 = v12;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v12);
  return v13;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 50;
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
    v10 = *(a2 + 16) + 200 * v6;
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
      if ((*(*(a2 + 16) + 200 * v6) & 0x80000000) != 0)
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

void re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v22, v4, a2);
      v5 = *v22;
      *v22 = *a1;
      *a1 = v5;
      v6 = *&v22[16];
      v7 = *(a1 + 16);
      *&v22[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      ++*&v22[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v7 + 192) % *(a1 + 24), *(v7 + 192));
            *(v12 + 8) = *(v7 + 8);
            v13 = *(v7 + 128);
            v14 = *(v7 + 144);
            v15 = *(v7 + 176);
            *(v12 + 160) = *(v7 + 160);
            *(v12 + 176) = v15;
            *(v12 + 128) = v13;
            *(v12 + 144) = v14;
            v16 = *(v7 + 64);
            v17 = *(v7 + 80);
            v18 = *(v7 + 112);
            *(v12 + 96) = *(v7 + 96);
            *(v12 + 112) = v18;
            *(v12 + 64) = v16;
            *(v12 + 80) = v17;
            v19 = *(v7 + 16);
            v20 = *(v7 + 48);
            *(v12 + 32) = *(v7 + 32);
            *(v12 + 48) = v20;
            *(v12 + 16) = v19;
          }

          ++v11;
          v7 += 200;
        }

        while (v11 < v10);
      }

      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 200 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 200 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 200 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 192) = a3;
  ++*(a1 + 28);
  return v7 + 200 * v5;
}

void re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
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
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 50;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

__n128 re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, __int128 *a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v26);
  v7 = HIDWORD(v27);
  if (HIDWORD(v27) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v27, v26);
    *(v8 + 8) = *a2;
    v9 = a3[7];
    v10 = a3[8];
    v11 = a3[10];
    *(v8 + 160) = a3[9];
    *(v8 + 176) = v11;
    *(v8 + 128) = v9;
    *(v8 + 144) = v10;
    v12 = a3[3];
    v13 = a3[4];
    v14 = a3[6];
    *(v8 + 96) = a3[5];
    *(v8 + 112) = v14;
    *(v8 + 64) = v12;
    *(v8 + 80) = v13;
    v16 = *a3;
    result = a3[1];
    v17 = a3[2];
    *(v8 + 32) = result;
    *(v8 + 48) = v17;
    *(v8 + 16) = v16;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v18 = *(a1 + 16) + 200 * v7;
    v19 = a3[2];
    v20 = *a3;
    *(v18 + 32) = a3[1];
    *(v18 + 48) = v19;
    v21 = a3[3];
    v22 = a3[4];
    v23 = a3[6];
    *(v18 + 96) = a3[5];
    *(v18 + 112) = v23;
    *(v18 + 64) = v21;
    *(v18 + 80) = v22;
    result = a3[7];
    v24 = a3[8];
    v25 = a3[9];
    *(v18 + 172) = *(a3 + 156);
    *(v18 + 144) = v24;
    *(v18 + 160) = v25;
    *(v18 + 128) = result;
    *(v18 + 16) = v20;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 200 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 200 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 200 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 200 * v8) & 0x7FFFFFFF;
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, void *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 200 * v4) & 0x80000000) != 0)
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
          v5 += 50;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 200 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 200 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::createSubscription<re::TimebaseManager>(re::TimebaseManager *,REEventHandlerResult (re::TimebaseManager::*)(re::SharedClockService*,OpaqueCMClock *,OpaqueCMClock *,unsigned long long))::{lambda(re::SharedClockService*,re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::Subscription const&,OpaqueCMClock *&&,OpaqueCMClock *&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = (*a2 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a1, *a3, *a4, *a5);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
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

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>>>>::~unique_ptr[abi:ne200100](v13);
  }

  return result;
}

void std::__hash_table<OpaqueCMTimebase *,std::hash<OpaqueCMTimebase *>,std::equal_to<OpaqueCMTimebase *>,std::allocator<OpaqueCMTimebase *>>::__emplace_unique_key_args<OpaqueCMTimebase *,OpaqueCMTimebase *>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void *re::TraceDelta::reduce(void *this)
{
  v1 = this[4];
  if (v1)
  {
    v2 = this;
    v3 = this[6];
    if (v1 == 1)
    {
      v4 = this[6];
    }

    else
    {
      v5 = v3 + 64;
      do
      {
        if (*(v3 + 16))
        {
          if (*v3 == *v5 && *(v3 + 8) == *(v5 + 8))
          {
            re::TraceDelta::merge(this, v3, v5, &v11);
            v9 = v11;
            *(v3 + 16) = v12;
            *v3 = v9;
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, v13);
            this = v13[0];
            if (v13[0] && v13[4])
            {
              this = (*(*v13[0] + 40))();
            }
          }

          else
          {
            if (v5 - 64 != v3)
            {
              v7 = *v5;
              *(v3 + 80) = *(v5 + 16);
              *(v3 + 64) = v7;
              this = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 88, (v5 + 24));
            }

            v3 += 64;
          }
        }

        else
        {
          v8 = *v5;
          *(v3 + 16) = *(v5 + 16);
          *v3 = v8;
          this = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, (v5 + 24));
        }

        v5 += 64;
        v4 = v2[6];
      }

      while (v5 != v4 + (v2[4] << 6));
    }

    v10 = -64;
    if (*(v3 + 16))
    {
      v10 = 0;
    }

    return re::DynamicArray<re::TraceEntry>::resize(v2 + 2, ((v3 + v10 - v4) >> 6) + 1);
  }

  return this;
}

re *re::TraceDelta::merge@<X0>(re *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) > 1u)
  {
    if (*(a3 + 16) == 2)
    {
      v8 = *(a2 + 16);
      if (v8 == 3)
      {
        v9 = *re::traceLogObjects(result);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "TraceDelta: Unxpected sequence Remove + Update", v11, 2u);
        }

        *a4 = *a2;
        *(a4 + 16) = *(a2 + 16);
        return re::DynamicArray<BOOL>::DynamicArray(a4 + 24, (a2 + 24));
      }

      *a4 = *a3;
      *(a4 + 16) = v8;
      *(a4 + 17) = *(a3 + 17) | *(a2 + 17);
    }

    else
    {
      if (*(a2 + 16) == 1)
      {
        *(a4 + 56) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        *(a4 + 24) = 0;
        *(a4 + 48) = 0;
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return result;
      }

      *a4 = *a3;
      *(a4 + 16) = *(a3 + 16);
    }

    v6 = a4 + 24;
    v7 = (a3 + 24);
    goto LABEL_17;
  }

  if (!*(a3 + 16))
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 16);
    v6 = a4 + 24;
    v7 = (a2 + 24);
LABEL_17:

    return re::DynamicArray<BOOL>::DynamicArray(v6, v7);
  }

  v10 = *(a2 + 16);
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  result = re::DynamicArray<BOOL>::DynamicArray(a4 + 24, (a3 + 24));
  if (v10 == 3)
  {
    *(a4 + 16) = 2;
  }

  return result;
}

void *re::DynamicArray<re::TraceEntry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (a2 << 6) | 0x18;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 64;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TraceEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 56) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        *(v7 + 48) = 0;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::TraceDelta::merge(re::TraceDelta *this, const re::TraceDelta *a2)
{
  v3 = *(this + 3);
  v4 = (this + 16);
  v5 = *(this + 4);
  v25[0] = *(this + 2);
  v25[1] = v3;
  v26 = v5;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v6 = *(this + 6);
  v28 = v6;
  *(this + 6) = 0;
  ++*(this + 10);
  v27 = 1;
  v7 = *(a2 + 6);
  *(this + 1) = *(a2 + 1);
  v8 = *(a2 + 4) + v5;
  if (v8)
  {
    this = re::DynamicArray<re::TraceEntry>::setCapacity(this + 2, v8);
  }

  v9 = v6;
  while (1)
  {
    v10 = *(a2 + 6) + (*(a2 + 4) << 6);
    if (v9 == &v6[4 * v5])
    {
      break;
    }

    if (v7 == v10)
    {
      goto LABEL_14;
    }

    if (!v9[1].n128_u8[0] || ((v11 = v9->n128_u64[0], v12 = v9->n128_u64[1], v13 = *v7, v14 = *(v7 + 8), v9->n128_u64[0] == *v7) ? (v15 = v12 == v14) : (v15 = 0), v15))
    {
      re::TraceDelta::merge(this, v9, v7, &v21);
      if (v22)
      {
        v17 = re::DynamicArray<re::TraceEntry>::add(v4, &v21);
      }

      this = v23;
      if (v23 && v24)
      {
        this = (*(*v23 + 40))(v17);
      }

      v9 += 4;
      goto LABEL_23;
    }

    v16 = v12 < v14;
    if (v11 != v13)
    {
      v16 = v11 < v13;
    }

    if (v16)
    {
LABEL_14:
      re::DynamicArray<re::TraceEntry>::add(v4, v9);
      v9 += 4;
      goto LABEL_24;
    }

    v18 = v14 < v12;
    if (v11 == v13)
    {
      v19 = v18;
    }

    else
    {
      v19 = v13 < v11;
    }

    if (v19)
    {
      goto LABEL_16;
    }

LABEL_24:
    v6 = v28;
    v5 = v26;
  }

  if (v7 != v10)
  {
LABEL_16:
    this = re::DynamicArray<re::TraceEntry>::add(v4, v7);
LABEL_23:
    v7 += 64;
    goto LABEL_24;
  }

  return re::DynamicArray<re::TraceEntry>::deinit(v25);
}

uint64_t re::TraceDelta::indexOf@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 48);
  v5 = *(this + 32);
  v6 = (v4 + (v5 << 6));
  if (v5)
  {
    v7 = *(this + 48);
    do
    {
      v8 = v5 >> 1;
      v9 = &v7[8 * (v5 >> 1)];
      v11 = *v9;
      v12 = v9[1];
      v10 = v9 + 8;
      v13 = v12 < a3;
      v14 = v11 == a2;
      v15 = v11 < a2;
      if (v14)
      {
        v15 = v13;
      }

      v5 += ~(v5 >> 1);
      if (v15)
      {
        v7 = v10;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v5);
  }

  else
  {
    v7 = *(this + 48);
  }

  if (v7 != v6 && *v7 == a2 && v7[1] == a3)
  {
    *a4 = 1;
    *(a4 + 8) = (v7 - v4) >> 6;
  }

  else
  {
    *a4 = 0;
  }

  return this;
}

void std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::TraceEntry *,std::__less<void,void>>(__int128 *a1, unint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 6;
  if (v6 < 1)
  {
    v10 = 0;
LABEL_7:

    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(a1, a2, a3, v6, 0, v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = (a2 - a1) >> 6;
    while (1)
    {
      v9 = operator new(v8 << 6, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = v9;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(a1, a2, a3, v6, v9, v8);

    operator delete(v12);
  }
}

__int128 *std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(__int128 *result, unint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  v20 = result;
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = *(a2 - 8);
      v19 = (a2 - 8);
      v9 = v8 == *result;
      v10 = v8 < *result;
      if (v9)
      {
        v10 = *(a2 - 7) < *(result + 1);
      }

      if (v10)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v20, &v19);
      }
    }

    else
    {
      v11 = a4;
      if (a4 <= 0)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, a2);
      }

      else
      {
        v15 = a4 >> 1;
        v16 = &result[4 * (a4 >> 1)];
        v17 = a4 >> 1;
        if (v11 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, v16, a3, v17, a5);
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(&v7[8 * (v11 >> 1)], a2, a3, v11 - (v11 >> 1), &a5[4 * v15]);
          result = std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *,re::TraceEntry *,re::TraceEntry *>(a5, &a5[4 * v15], &a5[4 * v15], &a5[4 * v11], v7);
          if (a5)
          {
            v18 = &a5[1].n128_i64[1];
            do
            {
              result = re::DynamicArray<unsigned long>::deinit(v18);
              v18 += 64;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, v16, a3, v17, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(&v7[8 * (v11 >> 1)], a2, a3, v11 - (v11 >> 1), a5, a6);

          return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v7, &v7[8 * (v11 >> 1)], a2, a3, v11 >> 1, v11 - (v11 >> 1), a5, a6);
        }
      }
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v9 = *(*a1 + 8);
  v8 = **a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 5);
  v10[0] = *(*a1 + 3);
  v10[1] = v4;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v10[2] = v5;
  *(v2 + 5) = 0;
  v12 = *(v2 + 7);
  *(v2 + 7) = 0;
  ++*(v2 + 12);
  v11 = 1;
  v6 = *v3;
  *(v2 + 8) = *(v3 + 8);
  *v2 = v6;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v2 + 24, v3 + 3);
  *v3 = v8;
  *(v3 + 8) = v9;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, v10);
  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))();
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v24 = v2;
    v25 = v3;
    v5 = result;
    v6 = result + 64;
    if (result + 64 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v6;
        v10 = *(v8 + 64);
        v11 = v10 == *v8;
        v12 = v10 < *v8;
        if (v11)
        {
          v12 = *(v8 + 72) < *(v8 + 8);
        }

        if (v12)
        {
          v18 = *v9;
          v19 = *(v9 + 16);
          v20 = *(v8 + 88);
          v21 = *(v8 + 96);
          *(v8 + 88) = 0;
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;
          v23 = *(v8 + 120);
          *(v8 + 120) = 0;
          ++*(v8 + 112);
          v13 = v7;
          v22 = 1;
          while (1)
          {
            v14 = v5 + v13;
            *(v14 + 64) = *(v5 + v13);
            *(v14 + 80) = *(v5 + v13 + 16);
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v5 + v13 + 88, (v5 + v13 + 24));
            if (!v13)
            {
              break;
            }

            v15 = *(v14 - 64);
            v16 = v18 < v15;
            if (v18 == v15)
            {
              v16 = *(&v18 + 1) < *(v14 - 56);
            }

            v13 -= 64;
            if (!v16)
            {
              v17 = v5 + v13 + 64;
              goto LABEL_14;
            }
          }

          v17 = v5;
LABEL_14:
          *v17 = v18;
          *(v17 + 16) = v19;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v14 + 24, &v20);
          result = v20;
          if (v20)
          {
            if (v23)
            {
              result = (*(*v20 + 40))();
            }
          }
        }

        v6 = v9 + 64;
        v7 += 64;
        v8 = v9;
      }

      while (v9 + 64 != a2);
    }
  }

  return result;
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(__n128 *result, unint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  if (!a4)
  {
    return;
  }

  v5 = a5;
  v8 = result;
  if (a4 == 2)
  {
    v10 = *(a2 - 8);
    v11 = (a2 - 8);
    v12 = v10 == result->n128_u64[0];
    v13 = v10 < result->n128_u64[0];
    if (v12)
    {
      v13 = *(a2 - 7) < result->n128_u64[1];
    }

    if (!v13)
    {
      std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, result);
      v9 = v5 + 4;
      v14 = v11;
      goto LABEL_29;
    }

    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, v11);
    v9 = v5 + 4;
LABEL_9:
    v14 = v8;
LABEL_29:

    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v9, v14);
    return;
  }

  if (a4 == 1)
  {
    v9 = a5;
    goto LABEL_9;
  }

  if (a4 > 8)
  {
    n128_u64 = result[4 * (a4 >> 1)].n128_u64;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result->n128_u64, n128_u64, a3, a4 >> 1, a5, a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v8[4 * (a4 >> 1)].n128_u64, a2, a3, a4 - (a4 >> 1), &v5[4 * (a4 >> 1)], a4 - (a4 >> 1));
    v30 = &v8[4 * (a4 >> 1)];
    while (v30 != a2)
    {
      v31 = v30->n128_u64[0] < v8->n128_u64[0];
      if (v30->n128_u64[0] == v8->n128_u64[0])
      {
        v31 = v30->n128_u64[1] < v8->n128_u64[1];
      }

      if (v31)
      {
        std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v30);
        v30 += 4;
      }

      else
      {
        std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v8);
        v8 += 4;
      }

      v5 += 4;
      if (v8 == n128_u64)
      {
        while (v30 != a2)
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v30);
          v30 += 4;
          v5 += 4;
        }

        return;
      }
    }

    while (v8 != n128_u64)
    {
      std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v8);
      v8 += 4;
      v5 += 4;
    }
  }

  else if (result != a2)
  {
    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, result);
    v15 = v8 + 4;
    if (&v8[4] != a2)
    {
      v16 = 0;
      v17 = v5;
      do
      {
        v18 = v15;
        v19 = v17 + 4;
        v20 = v8[4].n128_u64[0];
        v12 = v20 == v17->n128_u64[0];
        v21 = v20 < v17->n128_u64[0];
        if (v12)
        {
          v21 = v8[4].n128_u64[1] < v17->n128_u64[1];
        }

        v22 = v17 + 4;
        if (v21)
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v22, v17);
          v23 = v5;
          if (v17 != v5)
          {
            v24 = v16;
            while (1)
            {
              v23 = (v5 + v24);
              v25 = *(v5[-4].n128_u64 + v24);
              v12 = v18->n128_u64[0] == v25;
              v26 = v18->n128_u64[0] < v25;
              if (v12)
              {
                v26 = v8[4].n128_u64[1] < *(&v5[-3] + v24 - 8);
              }

              if (!v26)
              {
                break;
              }

              *v23 = *(v5 + v24 - 64);
              v23[1].n128_u16[0] = *(v5[-3].n128_u16 + v24);
              re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v23[1].n128_i64[1], &v23[-3].n128_i64[1]);
              v24 -= 64;
              if (!v24)
              {
                v23 = v5;
                break;
              }
            }
          }

          v27 = *v18;
          v23[1].n128_u16[0] = v18[1].n128_u16[0];
          *v23 = v27;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v23[1].n128_i64[1], &v8[5].n128_i64[1]);
        }

        else
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v22, v18);
        }

        v15 = v18 + 4;
        v16 += 64;
        v17 = v19;
        v8 = v18;
      }

      while (&v18[4] != a2);
    }
  }
}

uint64_t std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *,re::TraceEntry *,re::TraceEntry *>(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v13 = *a3;
      *(a5 + 16) = *(a3 + 8);
      *a5 = v13;
      result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, a3 + 3);
      a3 += 4;
      a5 += 64;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      v10 = *a3 < *v9;
      if (*a3 == *v9)
      {
        v10 = *(a3 + 1) < *(v9 + 8);
      }

      if (v10)
      {
        v11 = *a3;
        *(a5 + 16) = *(a3 + 8);
        *a5 = v11;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, a3 + 3);
        a3 += 4;
      }

      else
      {
        v12 = *v9;
        *(a5 + 16) = *(v9 + 16);
        *a5 = v12;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, (v9 + 24));
        v9 += 64;
      }

      a5 += 64;
      if (v9 == a2)
      {
        goto LABEL_12;
      }
    }

    if (v9 != a2)
    {
      v14 = 0;
      do
      {
        v15 = a5 + v14;
        v16 = v9 + v14;
        v17 = *(v9 + v14);
        *(v15 + 16) = *(v9 + v14 + 16);
        *v15 = v17;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + v14 + 24, (v9 + v14 + 24));
        v14 += 64;
      }

      while (v16 + 64 != a2);
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(uint64_t result, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v93 = a2;
  if (a6)
  {
    v11 = a2;
    v12 = result;
    while (a5 > a8 && a6 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = *v11;
      v15 = -a5;
      while (1)
      {
        v16 = v12 + v13;
        v17 = *(v12 + v13);
        v65 = v14 == v17;
        v18 = v14 < v17;
        if (v65)
        {
          v18 = *(v11 + 1) < *(v12 + v13 + 8);
        }

        if (v18)
        {
          break;
        }

        v13 += 64;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v94 = (v12 + v13);
      v20 = -v15;
      v89 = a7;
      v91 = a3;
      if (-v15 >= a6)
      {
        if (v15 == -1)
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v94, &v93);
        }

        v33 = a6;
        v35 = v20 / 2;
        v25 = (v12 + ((v20 / 2) << 6) + v13);
        if (a3 == v11)
        {
          v22 = v11;
        }

        else
        {
          v36 = (a3 - v11) >> 6;
          v37 = *v25;
          v22 = v11;
          do
          {
            v38 = v36 >> 1;
            v39 = &v22[4 * (v36 >> 1)];
            v41 = *v39;
            v42 = *(v39 + 1);
            v40 = v39 + 4;
            v43 = v42 < *(v25 + 1);
            v65 = v41 == v37;
            v44 = v41 < v37;
            if (v65)
            {
              v44 = v43;
            }

            v36 += ~(v36 >> 1);
            if (v44)
            {
              v22 = v40;
            }

            else
            {
              v36 = v38;
            }
          }

          while (v36);
        }

        v21 = (v22 - v11) >> 6;
      }

      else
      {
        v21 = a6 / 2;
        v22 = &v11[4 * (a6 / 2)];
        if (v16 == v11)
        {
          v33 = a6;
          v34 = (v12 + v13);
          v25 = (v12 + v13);
        }

        else
        {
          v23 = (v11 - v12 - v13) >> 6;
          v24 = *v22;
          v25 = (v12 + v13);
          do
          {
            v26 = v23 >> 1;
            v27 = &v25[4 * (v23 >> 1)];
            v29 = *v27;
            v30 = v27[1];
            v28 = (v27 + 8);
            v31 = *(v22 + 1) < v30;
            v65 = v24 == v29;
            v32 = v24 < v29;
            if (v65)
            {
              v32 = v31;
            }

            v23 += ~(v23 >> 1);
            if (v32)
            {
              v23 = v26;
            }

            else
            {
              v25 = v28;
            }
          }

          while (v23);
          v33 = a6;
          v34 = v25;
        }

        v35 = (v34 - v12 - v13) >> 6;
      }

      v45 = v22;
      if (v25 != v11)
      {
        v45 = v25;
        if (v11 != v22)
        {
          v95 = v11;
          v96 = v25;
          while (1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v96, &v95);
            v45 = v96 + 4;
            v46 = v95 + 4;
            v95 = v46;
            v96 += 4;
            if (v46 == v22)
            {
              break;
            }

            if (v45 == v11)
            {
              v11 = v46;
            }
          }

          if (v45 != v11)
          {
            do
            {
              v95 = v11;
              while (1)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v96, &v95);
                v47 = v96 + 4;
                v48 = v95 + 4;
                v95 = v48;
                v96 += 4;
                if (v48 == v22)
                {
                  break;
                }

                if (v47 == v11)
                {
                  v11 = v48;
                }
              }
            }

            while (v47 != v11);
          }
        }
      }

      a5 = -(v35 + v15);
      v49 = v33;
      v50 = v33 - v21;
      if (v35 + v21 >= v49 - (v35 + v21) - v15)
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v45, v22, v91, a4, -(v35 + v15), v50, v89, a8);
        v22 = v25;
        a7 = v89;
        v50 = v21;
        a5 = v35;
        v91 = v45;
      }

      else
      {
        v51 = v25;
        a7 = v89;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v16, v51, v45, a4, v35, v21, v89, a8);
        v94 = v45;
        v16 = v45;
      }

      v93 = v22;
      a6 = v50;
      v11 = v22;
      v12 = v16;
      a3 = v91;
      if (!v50)
      {
        return result;
      }
    }

    if (a5 <= a6)
    {
      if (v12 == v11)
      {
        return result;
      }

      v70 = 0;
      v53 = 0;
      do
      {
        v71 = &a7[v70 / 0x10];
        v72 = v12 + v70;
        v73 = *(v12 + v70);
        *(v71 + 8) = *(v12 + v70 + 16);
        *v71 = v73;
        *(v71 + 7) = 0;
        *(v71 + 4) = 0;
        *(v71 + 5) = 0;
        *(v71 + 3) = 0;
        *(v71 + 12) = 0;
        v74 = *(v12 + v70 + 32);
        *(v71 + 3) = *(v12 + v70 + 24);
        *(v71 + 4) = v74;
        *(v72 + 24) = 0;
        *(v72 + 32) = 0;
        v75 = *(&a7[v70 / 0x10 + 2] + 1);
        *(v71 + 5) = *(v12 + v70 + 40);
        *(v72 + 40) = v75;
        v76 = *(&a7[v70 / 0x10 + 3] + 1);
        *(v71 + 7) = *(v12 + v70 + 56);
        *(v72 + 56) = v76;
        *(v72 + 48) = *(v12 + v70 + 48) + 1;
        *(v71 + 12) = LODWORD(a7[v70 / 0x10 + 3]) + 1;
        ++v53;
        v70 += 64;
      }

      while ((v72 + 64) != v11);
      v77 = &a7[v70 / 0x10];
      v78 = &a7[v70 / 0x10 - 4];
      v79 = a7;
      while (v11 != a3)
      {
        v80 = *v11 < *v79;
        if (*v11 == *v79)
        {
          v80 = *(v11 + 1) < *(v79 + 1);
        }

        if (v80)
        {
          v81 = *v11;
          *(v12 + 16) = *(v11 + 8);
          *v12 = v81;
          result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + 24, v11 + 3);
          v11 += 4;
        }

        else
        {
          v82 = *v79;
          *(v12 + 16) = *(v79 + 8);
          *v12 = v82;
          result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + 24, v79 + 3);
          v79 += 4;
        }

        v12 += 64;
        if (v77 == v79)
        {
          goto LABEL_93;
        }
      }

      v84 = 0;
      do
      {
        v85 = v12 + v84 * 16;
        v86 = &v79[v84];
        v87 = v79[v84];
        *(v85 + 16) = v79[v84 + 1];
        *v85 = v87;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + v84 * 16 + 24, &v79[v84 + 1] + 1);
        v84 += 4;
      }

      while (v78 != v86);
    }

    else
    {
      if (v11 == a3)
      {
        return result;
      }

      v52 = 0;
      v53 = 0;
      do
      {
        v54 = &a7[v52];
        v55 = &v11[v52];
        v56 = v11[v52];
        *(v54 + 8) = v11[v52 + 1];
        *v54 = v56;
        *(v54 + 7) = 0;
        *(v54 + 4) = 0;
        *(v54 + 5) = 0;
        *(v54 + 3) = 0;
        *(v54 + 12) = 0;
        v57 = *&v11[v52 + 2];
        *(v54 + 3) = *(&v11[v52 + 1] + 1);
        *(v54 + 4) = v57;
        *(v55 + 3) = 0;
        *(v55 + 4) = 0;
        v58 = *(&a7[v52 + 2] + 1);
        *(v54 + 5) = *(&v11[v52 + 2] + 1);
        *(v55 + 5) = v58;
        v59 = *(&a7[v52 + 3] + 1);
        *(v54 + 7) = *(&v11[v52 + 3] + 1);
        *(v55 + 7) = v59;
        *(v55 + 12) = LODWORD(v11[v52 + 3]) + 1;
        *(v54 + 12) = LODWORD(a7[v52 + 3]) + 1;
        ++v53;
        v52 += 4;
      }

      while (v55 + 4 != a3);
      v60 = a3 - 4;
      v61 = &a7[v52];
      while (v11 != v12)
      {
        v62 = *(v61 - 8);
        v63 = *(v11 - 8);
        v65 = v62 == v63;
        v64 = v62 < v63;
        if (v65)
        {
          v64 = *(v61 - 7) < *(v11 - 7);
        }

        v65 = !v64;
        if (v64)
        {
          v66 = v11 - 4;
        }

        else
        {
          v66 = v61 - 4;
        }

        v67 = *v66;
        v68 = *(v66 + 8);
        if (v65)
        {
          v69 = v61;
        }

        else
        {
          v69 = v11;
        }

        if (v65)
        {
          v61 -= 4;
        }

        else
        {
          v11 -= 4;
        }

        *(v60 + 8) = v68;
        *v60 = v67;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v60 + 24, v69 - 5);
        v60 -= 4;
        if (v61 == a7)
        {
          goto LABEL_93;
        }
      }

      for (; v61 != a7; v61 -= 4)
      {
        v83 = *(v61 - 4);
        *(v60 + 8) = *(v61 - 24);
        *v60 = v83;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v60 + 24, v61 - 5);
        v60 -= 4;
      }
    }

LABEL_93:
    if (a7)
    {
      v88 = a7 + 24;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v88);
        v88 += 64;
        --v53;
      }

      while (v53);
    }
  }

  return result;
}

__n128 std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  a1[3].n128_u64[1] = 0;
  a1[2] = 0uLL;
  a1[1].n128_u64[1] = 0;
  a1[3].n128_u32[0] = 0;
  v3 = a2[2].n128_u64[0];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a1[2].n128_u64[0] = v3;
  *(&a2[1] + 8) = 0uLL;
  v4 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v4;
  v5 = a1[3].n128_u64[1];
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v5;
  ++a2[3].n128_u32[0];
  ++a1[3].n128_u32[0];
  return result;
}

re::TraceServer *re::TraceServer::TraceServer(re::TraceServer *this)
{
  v21[1] = *MEMORY[0x1E69E9840];
  *(this + 32) = 0;
  v2 = this + 32;
  *(this + 10) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 96) = 0;
  v3 = this + 96;
  *(this + 88) = 0;
  *(this + 18) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 76) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *this = &unk_1F5D19F30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 56) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 32) = 850045863;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  *(this + 40) = 1018212795;
  *(this + 50) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);
  *(this + 31) = dispatch_queue_create("trace server", v5);
  dispatch_release(v5);
  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  *(this + 1) = secure_tcp;
  v7 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  v8 = re::TraceFramer::definition(v7);
  options = nw_framer_create_options(v8);
  nw_protocol_stack_prepend_application_protocol(v7, options);
  nw_release(options);
  nw_release(v7);
  v11 = *re::traceLogObjects(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "TraceServer: Construct", v21, 2u);
  }

  *(this + 32) = 3;
  *(this + 96) = 4;
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 56, 8);
  *v14 = v2;
  *(v14 + 8) = v3;
  *(v14 + 48) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 0;
  *(this + 3) = v14;
  re::Defaults::BOOLValue(v21, "trace.enableTraceFromInit", v15);
  if (LOBYTE(v21[0]))
  {
    v17 = BYTE1(v21[0]);
  }

  else
  {
    v17 = 0;
  }

  *(this + 153) = v17;
  v18 = *re::traceLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(this + 153);
    LODWORD(v21[0]) = 67109120;
    HIDWORD(v21[0]) = v19;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "TraceServer: Collect trace data from initialzation: %d", v21, 8u);
  }

  return this;
}

void re::TraceServer::~TraceServer(re::TraceServer *this)
{
  *this = &unk_1F5D19F30;
  re::TraceServer::stopListening(this);
  __lk.__m_ = (this + 256);
  __lk.__owns_ = 1;
  std::mutex::lock(this + 4);
  v2 = *(this + 31);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2re11TraceServerD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_35;
  block[4] = this;
  dispatch_async(v2, block);
  std::condition_variable::wait((this + 320), &__lk);
  v3 = *(this + 27);
  if (v3)
  {
    v4 = *(this + 29);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      nw_connection_set_state_changed_handler(*v6, 0);
      nw_connection_force_cancel(*v6);
      v8 = re::globalAllocators(v7)[2];
      re::TraceServer::NetworkClient::~NetworkClient(v6);
      (*(*v8 + 40))(v8, v6);
      v5 -= 8;
    }

    while (v5);
  }

  *(this + 27) = 0;
  ++*(this + 56);
  v9 = *(this + 1);
  if (v9)
  {
    nw_release(v9);
    *(this + 1) = 0;
  }

  dispatch_release(*(this + 31));
  *(this + 31) = 0;
  v11 = *(this + 3);
  if (v11)
  {
    v12 = re::globalAllocators(v10)[2];
    v13 = *(v11 + 16);
    *(v11 + 32) = 0;
    v14 = *(v11 + 40) + 1;
    *(v11 + 40) = v14;
    if (v13)
    {
      if (*(v11 + 48))
      {
        (*(*v13 + 40))(v13);
        v14 = *(v11 + 40);
      }

      *(v11 + 48) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v11 + 40) = v14 + 1;
    }

    (*(*v12 + 40))(v12, v11);
    *(this + 3) = 0;
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 368);
  std::condition_variable::~condition_variable((this + 320));
  std::mutex::~mutex(this + 4);
  v15 = *(this + 25);
  if (v15)
  {
    if (*(this + 29))
    {
      (*(*v15 + 40))(v15);
    }

    *(this + 29) = 0;
    *(this + 26) = 0;
    *(this + 27) = 0;
    *(this + 25) = 0;
    ++*(this + 56);
  }

  v16 = *(this + 20);
  if (v16)
  {
    v17 = *(this + 24);
    if (v17)
    {
      v18 = *(this + 22);
      if (v18)
      {
        v19 = 56 * v18;
        v20 = v17 + 16;
        do
        {
          re::DynamicArray<re::TraceEntry>::deinit(v20);
          v20 += 56;
          v19 -= 56;
        }

        while (v19);
        v16 = *(this + 20);
        v17 = *(this + 24);
      }

      (*(*v16 + 40))(v16, v17);
    }

    *(this + 24) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
    *(this + 20) = 0;
    ++*(this + 46);
  }

  re::DynamicArray<re::TraceEntry>::deinit(this + 112);
  re::DynamicArray<re::TraceEntry>::deinit(this + 48);
}

{
  re::TraceServer::~TraceServer(this);

  JUMPOUT(0x1E6906520);
}

void ___ZN2re11TraceServerD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 256));
  std::condition_variable::notify_all((v1 + 320));

  std::mutex::unlock((v1 + 256));
}

void re::TraceServer::startListening(nw_parameters_t *this, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *re::traceLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "TraceServer: start listening on port %s", buf, 0xCu);
  }

  ((*this)[5].isa)(this);
  v5 = nw_listener_create_with_port(a2, this[1]);
  this[2] = v5;
  nw_listener_set_queue(v5, this[31]);
  nw_listener_set_state_changed_handler(this[2], &__block_literal_global_55);
  v6 = this[31];
  v7 = this[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2re11TraceServer14startListeningEPKc_block_invoke_5;
  v8[3] = &__block_descriptor_tmp_7_0;
  v8[4] = this;
  v8[5] = v6;
  nw_listener_set_new_connection_handler(v7, v8);
  nw_listener_start(this[2]);
}

void ___ZN2re11TraceServer14startListeningEPKc_block_invoke(re *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *re::traceLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "TraceServer: listener state changed to %d\n", v4, 8u);
  }
}

void ___ZN2re11TraceServer14startListeningEPKc_block_invoke_5(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v5 = specific;
    re::TraceServer::addConnection(*(a1 + 32), a2);
    v6 = nw_connection_copy_endpoint(a2);
    v7 = nw_endpoint_copy_address_string(v6);
    v8 = nw_endpoint_copy_port_string(v6);
    v9 = *re::traceLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5[27];
      v11 = 136315650;
      v12 = v7;
      v13 = 2080;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "TraceServer: new client connection from %s port %s (count=%zu)", &v11, 0x20u);
    }

    free(v7);
    free(v8);
    nw_release(v6);
  }
}

void re::TraceServer::addConnection(re::TraceServer *this, NSObject *a2)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 160, 8);
  *v5 = a2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 100) = 0u;
  *(v5 + 116) = 0x7FFFFFFFLL;
  *(v5 + 128) = 1;
  *(v5 + 132) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  v6 = nw_retain(*v5);
  *(v5 + 8) = 2;
  v7 = *(this + 26);
  v8 = *(this + 27);
  if (v8 >= v7)
  {
    v9 = v8 + 1;
    if (v7 < v8 + 1)
    {
      if (*(this + 25))
      {
        v10 = 2 * v7;
        v11 = v7 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<float *>::setCapacity(this + 25, v13);
      }

      else
      {
        re::DynamicArray<float *>::setCapacity(this + 25, v9);
        ++*(this + 56);
      }
    }

    v8 = *(this + 27);
  }

  *(*(this + 29) + 8 * v8) = v5;
  *(this + 27) = v8 + 1;
  ++*(this + 56);
  v14 = *(this + 31);
  nw_connection_set_queue(a2, v14);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN2re11TraceServer13addConnectionEP13nw_connection_block_invoke;
  v15[3] = &__block_descriptor_tmp_13_2;
  v15[4] = v14;
  v15[5] = a2;
  nw_connection_set_state_changed_handler(a2, v15);
  nw_connection_start(a2);
}

void re::TraceServer::stopListening(re::TraceServer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    nw_listener_cancel(v2);
    nw_release(*(this + 2));
    *(this + 2) = 0;
  }
}

void re::TraceServer::send(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 248);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_10TraceDeltaENS_9REDeleterIS3_EEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_8_4;
  block[4] = a1;
  block[5] = v2;
  block[6] = v3;
  dispatch_async(v3, block);
}

{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 248);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_14TransferReportENS_9REDeleterIS3_EEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_9_2;
  v4[4] = v2;
  v4[5] = v3;
  dispatch_async(v3, v4);
}

re *___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_10TraceDeltaENS_9REDeleterIS3_EEEE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!specific)
  {
    goto LABEL_34;
  }

  v5 = specific;
  if (!(*(*specific + 72))(specific) && *(v3 + 153) != 1)
  {
    goto LABEL_34;
  }

  v7 = *(a1 + 40);
  v8 = *v7;
  if (!*v7 || !*(v7 + 4))
  {
    goto LABEL_34;
  }

  if (v8 == 3)
  {
    v9 = *(a1 + 40);
    *(v5 + 2) = *v9;
    re::DynamicArray<re::TraceEntry>::operator=((v5 + 48), (v9 + 16));
    atomic_store(1u, v5 + 152);
    goto LABEL_14;
  }

  if (v8 != 4)
  {
    if (!(*(*v5 + 72))(v5) && *(v3 + 153) == 1)
    {
      re::DynamicArray<re::TraceDelta>::add(v3 + 160, *(a1 + 40));
      goto LABEL_15;
    }

    re::TraceDelta::merge((v5 + 32), *(a1 + 40));
LABEL_14:
    goto LABEL_15;
  }

  *(v5 + 6) = *v7;
  re::DynamicArray<re::TraceEntry>::operator=((v5 + 112), v7 + 2);
  atomic_store(1u, v5 + 88);
LABEL_15:
  v11 = *(a1 + 40);
  v12 = *(v5 + 27);
  if (v12)
  {
    v13 = *(v5 + 29);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if ((*v13)[19])
      {
        re::TraceServer::trySendInitialDeltas(v5, *v13);
        if ((v15[16] & 1) == 0 && *(v11 + 1) > *(v15 + 18))
        {
          if (*(v15 + 33) < 1)
          {
            re::TraceServer::send(v5, v11, *v15);
            v15[18] = *(v11 + 1);
          }

          else
          {
            re::TraceDelta::merge((v15 + 1), v11);
          }
        }
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v16 = *(v5 + 3);
  v17 = v16[4];
  if (v17)
  {
    v18 = v16[6];
    v19 = 8 * v17;
    do
    {
      if ((*(*v18 + 8) & 1) == 0)
      {
        (*(**v18 + 16))(*v18, v11);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
    v20 = v16[4];
    if (v20)
    {
      v21 = v16[6];
      v22 = 8 * v20;
      do
      {
        if ((*v21)[8] == 1)
        {
          re::TraceDirectServer::trySendInitialDeltas(v16, *v21);
        }

        ++v21;
        v22 -= 8;
      }

      while (v22);
    }
  }

LABEL_34:

  return re::internal::destroyPersistent<re::TraceDelta>("operator()", 274, v2);
}

void re::anonymous namespace::validateTraceDelta(unint64_t **this, const re::TraceDelta *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v4 = this[4];
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = this[6];
      v9 = v4 << 6;
      do
      {
        if (*(v8 + 16) != 3 && !v8[5])
        {
          v10 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v16 = this[1];
            v17 = *v8;
            v18 = v8[1];
            v19 = *(v8 + 16);
            *buf = 134218752;
            *v23 = v16;
            *&v23[8] = 2048;
            *&v23[10] = v17;
            v24 = 2048;
            v25 = v18;
            v26 = 1024;
            v27 = v19;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Missing entry payload in non-removal trace: timestamp: %f, id=%llu, child=%llu, mode=%d", buf, 0x26u);
          }

          ++v5;
        }

        if (*v8 <= v6)
        {
          if (*v8 != v6 || v8[1] <= v7)
          {
            v11 = *re::traceLogObjects(v3);
            v3 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (v3)
            {
              v12 = this[1];
              v13 = *v8;
              v14 = v8[1];
              v15 = *(v8 + 16);
              *buf = 134219264;
              *v23 = v12;
              *&v23[8] = 2048;
              *&v23[10] = v13;
              v24 = 2048;
              v25 = v14;
              v26 = 1024;
              v27 = v15;
              v28 = 2048;
              v29 = v6;
              v30 = 2048;
              v31 = v7;
              _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Detected non-sorted entry: timestamp: %f, id=%llu, child=%llu, mode=%d, prevId=%llu, prevChild=%llu", buf, 0x3Au);
            }

            ++v5;
            v6 = *v8;
          }
        }

        else
        {
          v6 = *v8;
        }

        v7 = v8[1];
        v8 += 8;
        v9 -= 64;
      }

      while (v9);
      if (v5 > 0)
      {
        v20 = *re::traceLogObjects(v3);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = this[1];
          *buf = 67109376;
          *v23 = v5;
          *&v23[4] = 2048;
          *&v23[6] = v21;
          _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "%d errors found at timestamp: %f", buf, 0x12u);
        }
      }
    }
  }
}

void re::anonymous namespace::validateSnapshot(unint64_t **this, const re::TraceDelta *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    if (*this != 3)
    {
      v4 = *re::traceLogObjects(v3);
      v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        v28 = *this;
        *buf = 67109120;
        *v31 = v28;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid type for initial snapshot: %d", buf, 8u);
      }
    }

    v5 = this[4];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = this[6];
      v10 = v5 << 6;
      do
      {
        if (*(v9 + 16) != 1)
        {
          v11 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v14 = this[1];
            v15 = *v9;
            v16 = v9[1];
            v17 = *(v9 + 16);
            v18 = v9[5];
            *buf = 134219008;
            *v31 = v14;
            *&v31[8] = 2048;
            *&v31[10] = v15;
            v32 = 2048;
            v33 = v16;
            v34 = 1024;
            v35 = v17;
            v36 = 2048;
            v37 = v18;
            _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Unexpected mode in initial snapshot: timestamp: %f, id=%llu, child=%llu, mode=%d, data=%zu", buf, 0x30u);
          }

          ++v6;
        }

        if (!v9[5])
        {
          v12 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v19 = this[1];
            v20 = *v9;
            v21 = v9[1];
            v22 = *(v9 + 16);
            *buf = 134218752;
            *v31 = v19;
            *&v31[8] = 2048;
            *&v31[10] = v20;
            v32 = 2048;
            v33 = v21;
            v34 = 1024;
            v35 = v22;
            _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Missing snapshot payload in non-removal trace: timestamp: %f, id=%llu, child=%llu, mode=%d", buf, 0x26u);
          }

          ++v6;
        }

        if (*v9 <= v7)
        {
          if (*v9 != v7 || v9[1] <= v8)
          {
            v13 = *re::traceLogObjects(v3);
            v3 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
            if (v3)
            {
              v23 = this[1];
              v24 = *v9;
              v25 = v9[1];
              v26 = *(v9 + 16);
              *buf = 134219264;
              *v31 = v23;
              *&v31[8] = 2048;
              *&v31[10] = v24;
              v32 = 2048;
              v33 = v25;
              v34 = 1024;
              v35 = v26;
              v36 = 2048;
              v37 = v7;
              v38 = 2048;
              v39 = v8;
              _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Detected non-sorted entry in snapshot: timestamp: %f, id=%llu, child=%llu, mode=%d, prevId=%llu, prevChild=%llu", buf, 0x3Au);
            }

            ++v6;
            v7 = *v9;
          }
        }

        else
        {
          v7 = *v9;
        }

        v8 = v9[1];
        v9 += 8;
        v10 -= 64;
      }

      while (v10);
      if (v6 > 0)
      {
        v27 = *re::traceLogObjects(v3);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = this[1];
          *buf = 67109376;
          *v31 = v6;
          *&v31[4] = 2048;
          *&v31[6] = v29;
          _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "%d errors found in snapshot at timestamp: %f", buf, 0x12u);
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::TraceDelta>::add(uint64_t a1, uint64_t *a2)
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

        re::DynamicArray<re::TraceDelta>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::TraceDelta>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 56 * v5);
  *v11 = *a2;
  result = re::DynamicArray<re::TraceEntry>::DynamicArray((v11 + 1), a2 + 2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::TraceServer::trySendInitialDeltas(double *this, nw_connection **a2)
{
  if (*(a2 + 128) == 1)
  {
    v19[12] = v2;
    v19[13] = v3;
    if ((*(*this + 80))(this))
    {
      if ((*(*this + 88))(this))
      {
        v6 = this[13];
        v7 = this[5];
        if (v6 >= v7)
        {
          v8 = this + 4;
        }

        else
        {
          v8 = this + 12;
        }

        if (v6 >= v7)
        {
          v9 = this + 12;
        }

        else
        {
          v9 = this + 4;
        }

        if (v6 >= v7)
        {
          v10 = this + 13;
        }

        else
        {
          v10 = this + 5;
        }

        re::TraceServer::send(this, v8, *a2);
        re::TraceServer::send(this, v9, *a2);
        a2[18] = *v10;
        if (*(this + 153) == 1)
        {
          v11 = *(this + 22);
          if (v11)
          {
            v12 = 56 * v11;
            v13 = (*(this + 24) + 16);
            do
            {
              v18 = *(v13 - 1);
              re::DynamicArray<re::TraceEntry>::DynamicArray(v19, v13);
              re::TraceServer::send(this, &v18, *a2);
              re::TraceDelta::merge((this + 4), &v18);
              re::DynamicArray<re::TraceEntry>::deinit(v19);
              v13 += 7;
              v12 -= 56;
            }

            while (v12);
            v14 = *(this + 22);
            v15 = *(this + 24);
            *(this + 153) = 0;
            this[22] = 0.0;
            if (v14)
            {
              v16 = 56 * v14;
              v17 = v15 + 16;
              do
              {
                re::DynamicArray<re::TraceEntry>::deinit(v17);
                v17 += 56;
                v16 -= 56;
              }

              while (v16);
            }
          }

          else
          {
            *(this + 153) = 0;
          }

          ++*(this + 46);
        }

        *(a2 + 128) = 0;
      }
    }
  }
}

void re::TraceServer::send(re::TraceServer *this, const re::TraceDelta *a2, NSObject *a3)
{
  if (*(a2 + 1) == 0.0)
  {
    v7 = *re::traceLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Sending a trace frame with timestamp=0.0. This is unexpected!", buf, 2u);
    }
  }

  *buf = &unk_1F5D0CAE0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  re::zerocopy::DispatchWriteStream::clear(buf);
  *&v12[8] = vdupq_n_s64(0x1000uLL);
  *(&v11 + 1) = dispatch_data_create_alloc();
  v8 = &v9;
  v9 = buf;
  re::TraceDeltaWriter::writeDelta(&v8, a2);
  re::zerocopy::DispatchWriteStream::mergeTail(buf);
  v6 = v11;
  *&v11 = 0;
  re::zerocopy::DispatchWriteStream::clear(buf);
  *buf = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(buf);
  *buf = 2;
  *&v11 = v6;
  re::TraceServer::send(this, buf, a3);
  dispatch_release(v6);
}

void re::TraceServer::send(void *a1, unsigned __int8 *a2, NSObject *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[29];
    v7 = 8 * v5;
    while (**v6 != a3)
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (*a2 == 2)
    {
      ++*(*v6 + 132);
    }
  }

LABEL_8:
  v8 = a1[31];
  v9 = *a2;
  v10 = nw_content_context_create("re-trace");
  re::TraceFramer::setMessageType(v10, *a2);
  v11 = *(a2 + 1);
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 0x40000000;
  completion[2] = ___ZN2re11TraceServer4sendERKNS_12TraceMessageEP13nw_connection_block_invoke;
  completion[3] = &__block_descriptor_tmp_17_1;
  v13 = v9;
  completion[4] = v8;
  completion[5] = a3;
  nw_connection_send(a3, v11, v10, 1, completion);
  nw_release(v10);
}

re *___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_14TransferReportENS_9REDeleterIS3_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (specific)
  {
    v4 = specific;
    v5 = specific[27];
    if (v5)
    {
      v6 = specific[29];
      for (i = 8 * v5; i; i -= 8)
      {
        v8 = *v6;
        if ((*(*v6 + 152) & 2) != 0)
        {
          if (*(v8 + 136) < 1)
          {
            if (*(v8 + 108))
            {
              re::TransferReport::aggregate((v8 + 64), *(a1 + 32));
              re::TraceServer::send(v4, v8 + 64, *v8);
              memset(v16, 0, 36);
              *&v16[36] = 0x7FFFFFFFLL;
              *(v8 + 64) = 0u;
              v10 = (v8 + 80);
              if ((v8 + 80) != v16)
              {
                v11 = *v10;
                if (*v10)
                {
                  v12 = v11 == *v16;
                }

                else
                {
                  v12 = 1;
                }

                if (v12)
                {
                  *(v8 + 80) = *v16;
                  *v16 = v11;
                  v13 = *(v8 + 88);
                  *(v8 + 88) = *&v16[8];
                  *&v16[8] = v13;
                  v14 = *(v8 + 104);
                  *(v8 + 104) = *&v16[24];
                  *&v16[24] = v14;
                  goto LABEL_20;
                }

                re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(v8 + 80);
                if (*v16)
                {
                  if (*(v8 + 104) < *&v16[28])
                  {
                    re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity((v8 + 80), *&v16[28]);
                  }

                  re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move((v8 + 80), v16);
LABEL_20:
                  ++*(v8 + 120);
                }
              }

              re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v16);
              goto LABEL_22;
            }

            re::TraceServer::send(v4, *(a1 + 32), *v8);
          }

          else
          {
            re::TransferReport::aggregate((v8 + 64), *(a1 + 32));
          }
        }

LABEL_22:
        ++v6;
      }
    }
  }

  return re::internal::destroyPersistent<re::TransferReport>("operator()", 356, v2);
}

void re::TraceServer::send(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = &unk_1F5D0CAE0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  re::zerocopy::DispatchWriteStream::clear(&v9);
  *&v11[8] = vdupq_n_s64(0x1000uLL);
  *(&v10 + 1) = dispatch_data_create_alloc();
  v7 = &v8;
  v8 = &v9;
  re::TransferReportWriter::write(&v7, a2);
  re::zerocopy::DispatchWriteStream::mergeTail(&v9);
  v6 = v10;
  *&v10 = 0;
  re::zerocopy::DispatchWriteStream::clear(&v9);
  v9 = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(&v9);
  v9 = 3;
  *&v10 = v6;
  re::TraceServer::send(a1, &v9, a3);
  dispatch_release(v6);
}

BOOL re::TraceServer::addClientFromConnectedSocket(re::TraceServer *this, uint64_t a2)
{
  v2 = a2;
  v4 = nw_connection_create_with_connected_socket_and_parameters();
  if (v4)
  {
    v5 = *(this + 31);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2re11TraceServer28addClientFromConnectedSocketEi_block_invoke;
    block[3] = &__block_descriptor_tmp_10_1;
    block[4] = v4;
    block[5] = v5;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v4 != 0;
}

void ___ZN2re11TraceServer28addClientFromConnectedSocketEi_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (specific)
  {
    v4 = specific;
    re::TraceServer::addConnection(specific, v2);
    v6 = *re::traceLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(v4 + 27);
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 2048;
      v11 = v8;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "TraceServer: new client connection from fd://%d (count=%zu)", v9, 0x12u);
    }
  }

  nw_release(v2);
}

void re::TraceServer::addDirectClient(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2re11TraceServer15addDirectClientEPNS_17TraceDirectClientE_block_invoke;
  v3[3] = &__block_descriptor_tmp_11_1;
  v3[4] = v2;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2re11TraceServer15addDirectClientEPNS_17TraceDirectClientE_block_invoke(uint64_t a1)
{
  if (specific)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(specific + 3);
      v5 = *(v4 + 48);
      v6 = *(v4 + 32);
      v7 = v5;
      if (v6)
      {
        v8 = 8 * v6;
        v7 = *(v4 + 48);
        while (*v7 != v3)
        {
          ++v7;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      if (v7 == &v5[v6])
      {
LABEL_13:
        v12 = *(v4 + 24);
        if (v6 >= v12)
        {
          v13 = v6 + 1;
          if (v12 < v6 + 1)
          {
            if (*(v4 + 16))
            {
              v14 = 2 * v12;
              if (!v12)
              {
                v14 = 8;
              }

              if (v14 <= v13)
              {
                v15 = v13;
              }

              else
              {
                v15 = v14;
              }

              re::DynamicArray<float *>::setCapacity((v4 + 16), v15);
            }

            else
            {
              re::DynamicArray<float *>::setCapacity((v4 + 16), v13);
              ++*(v4 + 40);
            }
          }

          v6 = *(v4 + 32);
          v5 = *(v4 + 48);
        }

        v5[v6] = v3;
        *(v4 + 32) = v6 + 1;
        ++*(v4 + 40);
        v3[8] = 1;

        re::TraceDirectServer::trySendInitialDeltas(v4, v3);
      }

      else
      {
        v9 = *re::traceLogObjects(specific);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v16 = 0;
          v10 = "TraceServer: error adding TraceDirectClient. The client has already been added";
          v11 = &v16;
LABEL_28:
          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
        }
      }
    }

    else
    {
      v9 = *re::traceLogObjects(specific);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = buf;
        goto LABEL_28;
      }
    }
  }
}

void re::TraceServer::removeDirectClient(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2re11TraceServer18removeDirectClientEPNS_17TraceDirectClientE_block_invoke;
  v3[3] = &__block_descriptor_tmp_12_2;
  v3[4] = v2;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2re11TraceServer18removeDirectClientEPNS_17TraceDirectClientE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v3 = specific;
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(specific + 3);
      v6 = *(v5 + 48);
      v7 = *(v5 + 32);
      v8 = v6;
      if (v7)
      {
        v9 = 8 * v7;
        v8 = *(v5 + 48);
        while (*v8 != v4)
        {
          v8 += 8;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_16;
          }
        }
      }

      v10 = &v6[8 * v7];
      if (v8 != v10)
      {
        v11 = v8 - v6;
        if (v7 <= v11 >> 3)
        {
          v17 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          *buf = 0u;
          v13 = MEMORY[0x1E69E9C10];
          v14 = v11 >> 3;
          v18 = 136315906;
          v19 = "removeAt";
          v20 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v21 = 931;
          v22 = 2048;
          v23 = v14;
          v24 = 2048;
          v25 = v7;
          _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        if (v7 - 1 > v11 >> 3)
        {
          *&v6[v11] = *(v10 - 1);
        }

        *(v5 + 32) = v7 - 1;
        ++*(v5 + 40);
      }
    }

    else
    {
      v12 = *re::traceLogObjects(specific);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
      }
    }

LABEL_16:

    re::TraceServer::tryClearDeltas(v3);
  }
}

void re::TraceServer::tryClearDeltas(re::TraceServer *this)
{
  if (!(*(*this + 72))(this))
  {
    *(this + 5) = 0;
    re::DynamicArray<re::TraceEntry>::clear(this + 48);
    atomic_store(0, this + 152);
    *(this + 13) = 0;
    re::DynamicArray<re::TraceEntry>::clear(this + 112);
    atomic_store(0, this + 88);

    re::DynamicArray<re::SceneCompatibilityVariant>::clear(this + 368);
  }
}

void ___ZN2re11TraceServer13addConnectionEP13nw_connection_block_invoke(uint64_t a1, int a2)
{
  if (specific)
  {
    if (a2 == 3)
    {
      v5 = *(a1 + 40);
      v6 = *(specific + 31);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke;
      v8[3] = &__block_descriptor_tmp_15_2;
      v8[4] = v6;
      v8[5] = v5;
      nw_connection_receive_message(v5, v8);
    }

    else if ((a2 & 0xFFFFFFFE) == 4)
    {
      v7 = *(a1 + 40);

      re::TraceServer::removeConnection(specific, v7);
    }
  }
}

void re::TraceServer::removeConnection(re::TraceServer *this, nw_connection_t connection)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 27);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = -v3;
    while (1)
    {
      v7 = *(*(this + 29) + v5);
      if (*v7 == connection)
      {
        break;
      }

      v5 += 8;
      if (v6 == --v4)
      {
        goto LABEL_14;
      }
    }

    v8 = -v4;
    if (*(v7 + 152))
    {
      atomic_fetch_add(this + 30, 0xFFFFFFFFFFFFFFFFLL);
    }

    nw_connection_cancel(connection);
    v10 = re::globalAllocators(v9)[2];
    re::TraceServer::NetworkClient::~NetworkClient(v7);
    v11 = (*(*v10 + 40))(v10, v7);
    v12 = *(this + 27);
    if (v12 <= v8)
    {
      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v20 = 136315906;
      v21 = "removeStableAt";
      v22 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v23 = 969;
      v24 = 2048;
      v25 = v8;
      v26 = 2048;
      v27 = v12;
      _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    v13 = v12 - 1;
    if (v12 - 1 > v8 && 8 * v12 - 8 != v5)
    {
      v11 = memmove((*(this + 29) + v5), (*(this + 29) + v5 + 8), 8 * v12 - v5 - 8);
      v13 = *(this + 27) - 1;
    }

    *(this + 27) = v13;
    ++*(this + 56);
    v14 = *re::traceLogObjects(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(this + 27);
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "TraceServer: removed client connection (count=%zu)", buf, 0xCu);
    }
  }

LABEL_14:
  re::TraceServer::tryClearDeltas(this);
}

void ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke(uint64_t a1, void *a2, re::TraceFramer *a3, char a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!specific)
  {
    return;
  }

  v11 = specific;
  if (a2)
  {
    if (a3)
    {
      re::TraceFramer::messageType(&v43, a3);
      if (v43 == 1)
      {
        v13 = *(v11 + 27);
        if (v13)
        {
          v14 = *(a1 + 40);
          v15 = v44;
          v16 = 8 * v13;
          v17 = *(v11 + 29);
          while (1)
          {
            v18 = *v17;
            if (**v17 == v14)
            {
              break;
            }

            ++v17;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_62;
            }
          }

          if (v44 != 4)
          {
            if (v44 != 1)
            {
              v28 = *re::traceLogObjects(v12);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 67109120;
                HIDWORD(buf[0]) = v15;
                _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "TraceServer received unexpected TraceMessageType: %hhu", buf, 8u);
              }

              goto LABEL_62;
            }

            re::zerocopy::DispatchReadStream::DispatchReadStream(v49, a2);
            re::OPackReader::OPackReader(buf, v49);
            if (re::OPackReader::next(buf, v19) && v54[140] == 6)
            {
              v20 = *(v18 + 38);
              v21 = v55 & 1;
              *(v18 + 38) = v55;
              if ((v20 & 1) != 0 || !v21)
              {
                if ((v20 & 1) != 0 && !v21)
                {
                  atomic_fetch_add(v11 + 30, 0xFFFFFFFFFFFFFFFFLL);
                }
              }

              else
              {
                atomic_fetch_add(v11 + 30, 1uLL);
                re::TraceServer::trySendInitialDeltas(v11, v18);
              }
            }

            if (!v57)
            {
              goto LABEL_61;
            }

            if (v61)
            {
              (*(*v57 + 40))();
            }

            v61 = 0;
            v58 = 0;
            v59 = 0;
            v57 = 0;
            goto LABEL_60;
          }

          re::zerocopy::DispatchReadStream::DispatchReadStream(v49, a2);
          re::OPackReader::OPackReader(buf, v49);
          v48 = 0;
          v45[1] = 0;
          v46 = 0;
          v45[0] = 0;
          v47 = 0;
          *v50 = buf;
          v22 = re::TraceTargetAppInfoReader::read(v50, v45);
          if (v22)
          {
            v23 = v46;
            v24 = atomic_load(v11 + 30);
            v25 = *(v11 + 48);
            if (v24)
            {
              if (v25 != v46)
              {
LABEL_34:
                v29 = *re::traceLogObjects(v22);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v50 = 0;
                  _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "TraceServer is already capturing with different app-mode configuration, stopping the connection", v50, 2u);
                }

                re::TraceServer::removeConnection(v11, v14);
                goto LABEL_56;
              }

              if (v46)
              {
                v26 = (v48 + 1);
                v27 = *(v11 + 50) + 8;
                while (1)
                {
                  v22 = re::DynamicString::operator!=(v27, v26);
                  if (v22)
                  {
                    goto LABEL_34;
                  }

                  v26 += 40;
                  v27 += 40;
                  if (!--v23)
                  {
                    goto LABEL_56;
                  }
                }
              }

LABEL_38:
              if (v46)
              {
                v30 = v48;
                v31 = 40 * v46;
                do
                {
                  v32 = v30[2];
                  if (v32)
                  {
                    v33 = v32 >> 1;
                  }

                  else
                  {
                    v33 = v32 >> 1;
                  }

                  if (v33 && *v30)
                  {
                    v34 = *re::traceLogObjects(v22);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v30[2])
                      {
                        v35 = v30[3];
                      }

                      else
                      {
                        v35 = v30 + 17;
                      }

                      v37 = *v30;
                      *v50 = 136315394;
                      *&v50[4] = v35;
                      v51 = 2048;
                      v52 = v37;
                      _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "TraceServer received App mode request: %s, %llu", v50, 0x16u);
                    }

                    v38 = *(v11 + 48);
                    if (v38 >= *(v11 + 47))
                    {
                      re::DynamicArray<re::TraceTargetAppInfo>::growCapacity((v11 + 368), v38 + 1);
                      v38 = *(v11 + 48);
                    }

                    v39 = (*(v11 + 50) + 40 * v38);
                    *v39 = *v30;
                    v22 = re::DynamicString::DynamicString((v39 + 1), (v30 + 1));
                    ++*(v11 + 48);
                    ++*(v11 + 98);
                  }

                  else
                  {
                    v36 = *re::traceLogObjects(v22);
                    v22 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                    if (v22)
                    {
                      *v50 = 0;
                      _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "TraceServer received App mode request with incorrect bundleID or peerID", v50, 2u);
                    }
                  }

                  v30 += 5;
                  v31 -= 40;
                }

                while (v31);
              }

              goto LABEL_56;
            }

            if (!v25)
            {
              goto LABEL_38;
            }
          }

LABEL_56:
          re::DynamicArray<re::SceneCompatibilityVariant>::deinit(v45);
          if (!v57)
          {
LABEL_61:
            re::OPackReader::Buffer::~Buffer(&v56);
            re::zerocopy::BufferedReadStream::~BufferedReadStream(v54);
            re::zerocopy::DispatchReadStream::~DispatchReadStream(v49);
            goto LABEL_62;
          }

          if (v61)
          {
            (*(*v57 + 40))();
          }

          v61 = 0;
          v58 = 0;
          v59 = 0;
          v57 = 0;
LABEL_60:
          ++v60;
          goto LABEL_61;
        }
      }
    }
  }

LABEL_62:
  if (a2)
  {
    v40 = 0;
  }

  else
  {
    v40 = a4;
  }

  if ((v40 & 1) == 0 && !a5)
  {
    v41 = *(a1 + 40);
    v42 = *(v11 + 31);
    buf[0] = MEMORY[0x1E69E9820];
    buf[1] = 0x40000000;
    buf[2] = ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke;
    buf[3] = &__block_descriptor_tmp_15_2;
    buf[4] = v42;
    buf[5] = v41;
    nw_connection_receive_message(v41, buf);
  }
}

re::TraceServer *___ZN2re11TraceServer4sendERKNS_12TraceMessageEP13nw_connection_block_invoke(uint64_t a1)
{
  if (result)
  {
    v3 = *(result + 27);
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 40);
      v6 = 8 * v3;
      for (i = *(result + 29); ; ++i)
      {
        v8 = *i;
        v9 = **i;
        if (v9 == v5)
        {
          break;
        }

        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      if (v4 == 2)
      {
        v10 = *(v8 + 33) - 1;
        *(v8 + 33) = v10;
        if (!v10)
        {
          if (v8[5])
          {
            re::TraceServer::send(result, (v8 + 1), v9);
            v8[18] = v8[2];

            return re::DynamicArray<re::TraceEntry>::clear((v8 + 3));
          }
        }
      }
    }
  }

  return result;
}

void re::TraceServer::NetworkClient::~NetworkClient(void **this)
{
  v2 = (this + 10);
  nw_release(*this);
  *this = 0;
  re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v2);
  re::DynamicArray<re::TraceEntry>::deinit((this + 3));
}

void *re::TraceDirectServer::trySendInitialDeltas(void *result, _BYTE *a2)
{
  if (*(result[1] + 32))
  {
    v3 = result;
    if (*(*result + 32))
    {
      if (a2[8] == 1)
      {
        (*(*a2 + 16))(a2);
        result = (*(*a2 + 16))(a2, *v3);
        a2[8] = 0;
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::TraceEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::TraceEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::TraceEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::TraceEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::TraceEntry>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::TraceEntry>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::TraceEntry>::setCapacity(result, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = v3[2];
    v14 = v3[4];
    if (v13)
    {
      v15 = &v12[4 * v13];
      do
      {
        v16 = *v12;
        *(v14 + 16) = *(v12 + 8);
        *v14 = v16;
        result = re::DynamicArray<BOOL>::operator=(v14 + 24, v12 + 3);
        v12 += 4;
        v14 += 64;
      }

      while (v12 != v15);
      v14 = v3[4];
      v13 = v3[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = (v4 << 6) - (v13 << 6);
      v18 = (v13 << 6) | 0x18;
      v19 = (v12 + v18);
      result = (v14 + v18);
      do
      {
        v20 = *(v19 - 3);
        *(result - 4) = *(v19 - 4);
        *(result - 3) = v20;
        v21 = re::DynamicArray<BOOL>::DynamicArray(result, v19);
        v19 += 8;
        result = (v21 + 64);
        v17 -= 64;
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
      v8 = &v7[4 * v4];
      do
      {
        v9 = *v7;
        *(v6 + 16) = *(v7 + 8);
        *v6 = v9;
        result = re::DynamicArray<BOOL>::operator=(v6 + 24, v7 + 3);
        v7 += 4;
        v6 += 64;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v10 = (v5 << 6) - (v4 << 6);
      v11 = v6 + (v4 << 6) + 24;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v11);
        v11 += 64;
        v10 -= 64;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::anonymous namespace::enableTraceValidation(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4610, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1EE1C4610);
    if (v2)
    {
      __cxa_guard_release(&qword_1EE1C4610);
    }
  }

  return _MergedGlobals_570;
}

uint64_t re::anonymous namespace::enableTraceValidation(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(v6, "trace.validateTraces", a2);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 0;
  }

  v4 = *re::traceLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 67109120;
    HIDWORD(v6[0]) = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "ValidateSnapshot enabled: %d", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::DynamicArray<re::TraceEntry>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::TraceEntry>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::TraceEntry>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::TraceDelta>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TraceDelta>::setCapacity(v5, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
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
          re::DynamicArray<re::TraceEntry>::deinit(v14);
          v11 += 7;
          v8 = v14 + 40;
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

_anonymous_namespace_ *re::DynamicArray<re::TraceTargetAppInfo>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(v5, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v13;
          *v12 = 0;
          v11[4] = v12[3];
          v12[3] = 0;
          v15 = v11[2];
          v14 = v11[3];
          v16 = v12[2];
          v11[2] = v12[1];
          v11[3] = v16;
          v12[1] = v15;
          v12[2] = v14;
          re::DynamicString::deinit(v12);
          v11 += 5;
          v8 = v12 + 4;
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

void re::TraceHistory::TraceHistory(re::TraceHistory *this)
{
  *this = 0x3E800000000;
  *(this + 4) = 0;
  *(this + 5) = re::s_nullDelegate;
  operator new();
}

uint64_t re::TraceHistory::setPersistence(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    *(a1 + 32) = a2;
    v5 = *(a1 + 24);
    *(v5 + 8) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
    (*(**(a1 + 32) + 64))(*(a1 + 32), *(a1 + 24));
    (*(**(a1 + 40) + 24))(*(a1 + 40), *(a1 + 24));
    (*(**(a1 + 32) + 88))(*(a1 + 32));
    v6 = *(**(a1 + 40) + 16);

    return v6();
  }

  return result;
}

void re::TraceHistory::~TraceHistory(re::TraceHistory *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v2 + 16);
    MEMORY[0x1E6906520](v2, 0x1020C4094B8BC74);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v3 + 16);
    MEMORY[0x1E6906520](v3, 0x1020C4094B8BC74);
  }

  *(this + 2) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v4 + 16);
    MEMORY[0x1E6906520](v4, 0x1020C4094B8BC74);
  }

  *(this + 3) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 4) = 0;
}

re::TraceDelta **re::TraceHistory::addData(re::TraceDelta **this, const re::TraceDelta *a2)
{
  v2 = *a2;
  if ((v2 - 1) < 2)
  {
    return re::TraceHistory::addDelta(this, a2);
  }

  if (v2 == 4)
  {
    return re::TraceHistory::addMetadata(this, a2);
  }

  if (v2 == 3)
  {
    return re::TraceHistory::addSnapshot(this, a2);
  }

  return this;
}

uint64_t re::TraceHistory::addSnapshot(re::TraceHistory *this, const re::TraceDelta *a2)
{
  (*(**(this + 4) + 40))(*(this + 4), a2, 0);
  v4 = *(this + 2);
  *v4 = *a2;
  re::DynamicArray<re::TraceEntry>::operator=((v4 + 1), a2 + 2);
  v5 = *(this + 1);
  *(v5 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
  *this = 0;
  (*(**(this + 4) + 88))(*(this + 4));
  v6 = *(**(this + 5) + 16);

  return v6();
}