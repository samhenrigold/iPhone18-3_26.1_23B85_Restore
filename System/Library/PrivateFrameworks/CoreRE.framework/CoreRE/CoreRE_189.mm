void re::ShaderManager::addBinaryArchivesToFunction(uint64_t a1, id *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      *&v20[0] = a3;
      v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, v20);
      if (v7)
      {
        if (!*(a1 + 448))
        {
          v11 = 0;
          memset(v20, 0, sizeof(v20));
          v8 = MEMORY[0x1E69E9C10];
          v12 = 136315906;
          v13 = "operator[]";
          v14 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          v15 = 789;
          v16 = 2048;
          v17 = 0;
          v18 = 2048;
          v19 = 0;
          _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
          _os_crash_msg();
          __break(1u);
        }

        [**(a1 + 464) addFunctionWithDescriptor:*a2 library:*(v7 + 8) error:0];
      }
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::installLibrary(re::ShaderManager *this, unint64_t a2, id *a3)
{
  *buf = a2;
  v6 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, buf);
  if (v6)
  {
    *buf = a2;
    v6 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(this + 376, buf);
  }

  if (*a3)
  {
    v12 = 0;
    re::ObjCObject::operator=(&v12, a3);
    v11 = 1;
    v10 = a2;
    *buf = 0;
    v14 = 0;
    v15 = 0;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 376, &v10, v7 ^ (v7 >> 31), buf);
    if (HIDWORD(v14) == 0x7FFFFFFF)
    {
      v8 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(this + 47, v14, *buf);
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 24) = v12;
      ++*(this + 104);
    }
  }

  else
  {
    v9 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot install a NULL library.", buf, 2u);
    }
  }
}

void re::ShaderManager::makeRenderPipelineDescriptor(uint64_t *__return_ptr a1@<X8>, re::ShaderManager *this@<X0>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974148] alloc)];
  *a1 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToRenderPipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeComputePipelineDescriptor(uint64_t *__return_ptr a1@<X8>, re::ShaderManager *this@<X0>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974030] alloc)];
  *a1 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToComputePipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeTileRenderPipelineDescriptor(uint64_t *__return_ptr a1@<X8>, re::ShaderManager *this@<X0>)
{
  v4 = [objc_msgSend(MEMORY[0x1E69741C8] alloc)];
  *a1 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToTilePipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::logShaderCompilationRequest(re *a1, uint64_t a2, int a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B9A68, memory_order_acquire) & 1) == 0)
  {
    v17 = a1;
    v19 = __cxa_guard_acquire(&qword_1EE1B9A68);
    a1 = v17;
    if (v19)
    {
      re::Defaults::BOOLValue(&v21, "enableShaderDebugLogs", v18);
      if (v21)
      {
        v20 = BYTE1(v21);
      }

      else
      {
        v20 = 0;
      }

      _MergedGlobals_454 = v20;
      __cxa_guard_release(&qword_1EE1B9A68);
      a1 = v17;
    }
  }

  if (_MergedGlobals_454 != 1)
  {
    return;
  }

  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v7 = *re::graphicsLogObjects(a1);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v13 = *(a2 + 8);
        v21 = 136446722;
        *v22 = v13;
        *&v22[8] = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = a4;
        v9 = "SC request for linked function %{public}s in %dms (elapsed %dms)";
      }

      else
      {
        v7 = *re::graphicsLogObjects(a1);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v10 = *(a2 + 8);
        v21 = 136446722;
        *v22 = v10;
        *&v22[8] = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = a4;
        v9 = "SC request for API function %{public}s in %dms (elapsed %dms)";
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v11 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = 67109376;
      *v22 = a3;
      *&v22[4] = 1024;
      *&v22[6] = a4;
      v9 = "SC request for polyphase init in %dms (elapsed %dms)";
    }

    else
    {
      if (a1 != 7)
      {
        return;
      }

      v11 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = 67109376;
      *v22 = a3;
      *&v22[4] = 1024;
      *&v22[6] = a4;
      v9 = "SC request for MPD creation in %dms (elapsed %dms)";
    }

LABEL_29:
    v15 = v11;
    v16 = 14;
    goto LABEL_30;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v14 = *(a2 + 8);
      v21 = 136446722;
      *v22 = v14;
      *&v22[8] = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      v9 = "SC request for reflection of %{public}s in %dms (elapsed %dms)";
      goto LABEL_26;
    }

    v11 = *re::graphicsLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 67109376;
    *v22 = a3;
    *&v22[4] = 1024;
    *&v22[6] = a4;
    v9 = "SC request for reflection scheduling in %dms (elapsed %dms)";
    goto LABEL_29;
  }

  if (!a1)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = *(a2 + 8);
    v21 = 136446722;
    *v22 = v12;
    *&v22[8] = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    v9 = "SC request for specialization of %{public}s in %dms (elapsed %dms)";
    goto LABEL_26;
  }

  if (a1 == 1)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v21 = 136446722;
      *v22 = v8;
      *&v22[8] = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      v9 = "SC request for pipeline %{public}s in %dms (elapsed %dms)";
LABEL_26:
      v15 = v7;
      v16 = 24;
LABEL_30:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v9, &v21, v16);
    }
  }
}

double re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit((v6 + v4 + 16));
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
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::BucketArray<re::CachedMetalFunction,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D06698;
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(a1 + 8, a2);
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 48) = 0;
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 80) = v4;
  v5 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 88) = v5;
  return a1;
}

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D06698;

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1 + 8);
  return a1;
}

void re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D06698;

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1 + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 88), *(a1 + 56), &v2);
  if (v2)
  {
    v3[0] = &unk_1F5D066F0;
    v3[1] = &v2;
    *&v4 = a1 + 8;
    *(&v4 + 1) = v3;
    re::runInLocalAutoreleasePool(v3);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *v3 = 0u;
    v4 = 0u;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v3);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v3[1]);
    if (v3[0])
    {
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06698;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(a2 + 8, a1 + 8);
  v4 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v4;
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v5;
  *(a2 + 88) = *(a1 + 88);
  return a2;
}

__n128 std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D066F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v5 = 0;
  *v2 = 0u;
  v3 = 0u;
  v4 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(v2, *(a1 + 8));
  (*(**(*(a1 + 16) + 32) + 16))(*(*(a1 + 16) + 32), v2);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v2[1]);
  if (v2[0])
  {
  }
}

uint64_t std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::destroyCallable(a1);
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

uint64_t re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::destroyCallable(a1);
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

double re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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

BOOL re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 40 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;

      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 40 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 40 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke(uint64_t a1))(void)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_2;
  v10[3] = &__block_descriptor_tmp_51;
  v3 = *(a1 + 40);
  v10[4] = v2;
  v10[5] = v3;
  v11[3] = *(a1 + 72);
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v11, a1 + 48);
  v11[5] = *(a1 + 88);
  v14 = *(a1 + 113);
  re::StringID::StringID(&v12, (a1 + 96));
  dispatch_async(*(v2 + 848), v10);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v11);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_48c24_ZTSN2re8FunctionIFvvEEE96c18_ZTSN2re8StringIDE(void *a1, const StringID *a2)
{
  a1[9] = a2[4].var1;
  a1[10] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 6), &a2[3]);

  return re::StringID::StringID((a1 + 12), a2 + 6);
}

uint64_t (***__destroy_helper_block_8_48c24_ZTSN2re8FunctionIFvvEEE96c18_ZTSN2re8StringIDE(uint64_t a1))(void)
{
  re::StringID::destroyString((a1 + 96));

  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 48);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_49(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke(uint64_t a1))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2;
  v8[3] = &__block_descriptor_tmp_55_0;
  v3 = *(a1 + 48);
  v8[4] = v2;
  v8[5] = v3;
  v9[3] = *(a1 + 80);
  v9[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v9, a1 + 56);
  v9[5] = *(a1 + 96);
  v11 = *(a1 + 120);
  re::StringID::StringID(v10, (a1 + 104));
  v4 = *(v2 + 848);
  v7 = v4;
  re::dispatch::Group::async((a1 + 40), &v7, v8);

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_40c144_ZTSZNK2re13ShaderManager37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(void *a1, uint64_t a2)
{
  a1[5] = *(a2 + 40);
  a1[10] = *(a2 + 80);
  a1[11] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 7), a2 + 56);

  return re::StringID::StringID((a1 + 13), (a2 + 104));
}

void __destroy_helper_block_8_40c144_ZTSZNK2re13ShaderManager37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(uint64_t a1)
{
  re::StringID::destroyString((a1 + 104));
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 56);
  v2 = *(a1 + 40);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_57(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke(uint64_t a1))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2;
  v8[3] = &__block_descriptor_tmp_63_1;
  v3 = *(a1 + 48);
  v8[4] = v2;
  v8[5] = v3;
  v9[3] = *(a1 + 80);
  v9[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v9, a1 + 56);
  v9[5] = *(a1 + 96);
  v11 = *(a1 + 120);
  re::StringID::StringID(v10, (a1 + 104));
  v4 = *(v2 + 848);
  v7 = v4;
  re::dispatch::Group::async((a1 + 40), &v7, v8);

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_40c147_ZTSZNK2re13ShaderManager40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(void *a1, uint64_t a2)
{
  a1[5] = *(a2 + 40);
  a1[10] = *(a2 + 80);
  a1[11] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 7), a2 + 56);

  return re::StringID::StringID((a1 + 13), (a2 + 104));
}

void __destroy_helper_block_8_40c147_ZTSZNK2re13ShaderManager40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(uint64_t a1)
{
  re::StringID::destroyString((a1 + 104));
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 56);
  v2 = *(a1 + 40);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v27, v9, v8);
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
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *v18 % *(a1 + 6), *v18);
                *(v19 + 8) = *(v18 - 3);
                *(v19 + 16) = *(v18 - 4);
                v20 = *(v18 - 1);
                *(v18 - 1) = 0;
                *(v19 + 24) = v20;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v27);
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

void re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_74, 4 * v10);
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

__n128 re::CameraView::makeCameraData@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  re::CameraData::CameraData(a4, *a3);
  re::DynamicString::operator=((a4 + 8), a1);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 48), v8))
  {
    v9 = a4 + 32 * *(a4 + 48);
    v10 = *(a1 + 48);
    *(v9 + 64) = *(a1 + 32);
    *(v9 + 80) = v10;
    ++*(a4 + 48);
    ++*(a4 + 56);
  }

  re::DynamicInlineArray<re::Projection,2ul>::add((a4 + 128), a1 + 64);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 624), v11))
  {
    v12 = (a4 + (*(a4 + 624) << 6));
    v13 = *(a1 + 1136);
    v14 = *(a1 + 1104);
    v12[40] = *(a1 + 1088);
    v12[41] = v14;
    v12[42] = *(a1 + 1120);
    v12[43] = v13;
    ++*(a4 + 624);
    ++*(a4 + 632);
  }

  *(a4 + 840) = *(a3 + 32);
  *(a4 + 816) = *(a1 + 672);
  *(a4 + 856) = *(a1 + 692);
  *(a4 + 884) = *(a1 + 712);
  *(a4 + 860) = *(a1 + 696);
  *(a4 + 864) = *(a1 + 700);
  *(a4 + 865) = *(a1 + 702);
  *(a4 + 866) = *(a1 + 701);
  *(a4 + 867) = *(a1 + 705);
  *(a4 + 868) = *(a1 + 708);
  *(a4 + 872) = *(a1 + 1172);
  *(a4 + 888) = *(a3 + 56);
  if ([*(a2 + 208) supportsFamily:1003])
  {
    if (*(a1 + 112))
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *(a4 + 892) = v15;
  *(a4 + 896) = [*(a2 + 208) supportsFamily:1005];
  *(a4 + 904) = *(a1 + 1176);
  if (*(a1 + 617))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  *(a4 + 900) = v16;
  *(a4 + 912) = *(a1 + 1180);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a4 + 920, a1 + 1184);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a4 + 768), v17))
  {
    result = *(a1 + 1232);
    *(a4 + 16 * (*(a4 + 768))++ + 784) = result;
    ++*(a4 + 776);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::Projection,2ul>::add(uint64_t *a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = *a1;
    v6 = &a1[30 * *a1];
    *(v6 + 1) = *a2;
    v8 = *(a2 + 32);
    v7 = *(a2 + 48);
    v9 = *(a2 + 16);
    *(v6 + 40) = *(a2 + 64);
    *(v6 + 3) = v8;
    *(v6 + 4) = v7;
    *(v6 + 2) = v9;
    v10 = *(a2 + 80);
    *(v6 + 96) = v10;
    if (v10 == 1)
    {
      v11 = *(a2 + 96);
      v12 = *(a2 + 112);
      v13 = *(a2 + 144);
      *(v6 + 9) = *(a2 + 128);
      *(v6 + 10) = v13;
      *(v6 + 7) = v11;
      *(v6 + 8) = v12;
    }

    v14 = *(a2 + 160);
    *(v6 + 176) = v14;
    if (v14 == 1)
    {
      v15 = *(a2 + 176);
      v16 = *(a2 + 192);
      v17 = *(a2 + 224);
      *(v6 + 14) = *(a2 + 208);
      *(v6 + 15) = v17;
      *(v6 + 12) = v15;
      *(v6 + 13) = v16;
      v5 = *a1;
    }

    *a1 = v5 + 1;
    ++*(a1 + 2);
  }

  return result;
}

__n128 re::CameraMultiView::makeCameraDataInstancedMode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  re::CameraView::makeCameraData(a1, a2, a3, a4);
  re::DynamicInlineArray<re::Projection,2ul>::add((a4 + 128), a1 + 1616);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 48), v6))
  {
    v8 = a4 + 32 * *(a4 + 48);
    v9 = *(a1 + 1600);
    *(v8 + 64) = *(a1 + 1584);
    *(v8 + 80) = v9;
    ++*(a4 + 48);
    ++*(a4 + 56);
  }

  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 624), v7))
  {
    v11 = (a4 + (*(a4 + 624) << 6));
    v12 = *(a1 + 2688);
    v13 = *(a1 + 2656);
    v11[40] = *(a1 + 2640);
    v11[41] = v13;
    v11[42] = *(a1 + 2672);
    v11[43] = v12;
    ++*(a4 + 624);
    ++*(a4 + 632);
  }

  *(a4 + 890) = *(a4 + 128);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a4 + 768), v10))
  {
    result = *(a1 + 2784);
    *(a4 + 16 * (*(a4 + 768))++ + 784) = result;
    ++*(a4 + 776);
  }

  return result;
}

uint64_t re::CameraView::makeViewportPercentData@<X0>(re::CameraView *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_1F5D06920;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a3 + 16), a2);
  if (result)
  {
    *(a3 + 16 * (*(a3 + 16))++ + 32) = *(this + 66);
    ++*(a3 + 24);
  }

  *(a3 + 64) = 1;
  *(a3 + 68) = *(this + 292);
  return result;
}

void re::ViewportPercentData::~ViewportPercentData(re::ViewportPercentData *this)
{
  *(this + 2) = 0;
  ++*(this + 6);
}

{
  *(this + 2) = 0;
  ++*(this + 6);
  JUMPOUT(0x1E6906520);
}

uint64_t re::CameraMultiView::makeViewportPercentDataInstancedMode@<X0>(re::CameraMultiView *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::CameraView::makeViewportPercentData(this, a2, a3);
  result = re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a3 + 16), v5);
  if (result)
  {
    *(a3 + 16 * (*(a3 + 16))++ + 32) = *(this + 163);
    ++*(a3 + 24);
  }

  *(a3 + 64) = 2;
  *(a3 + 65) = *(this + 3105);
  *(a3 + 68) = 0;
  return result;
}

void re::CameraView::addPickupScopeLanes(uint64_t this, re::RenderFrame *a2)
{
  v2 = *(this + 640);
  if (v2)
  {
    v5 = (this + 9);
    v6 = v2 << 6;
    v7 = (*(this + 656) + 48);
    do
    {
      if (*(v7 - 1))
      {
        v8 = *v7;
      }

      else
      {
        v8 = v7 - 7;
      }

      if (*(v7 - 5))
      {
        v9 = *(v7 - 4);
      }

      else
      {
        v9 = v7 - 39;
      }

      v10 = v5;
      if (*(this + 8))
      {
        v10 = *(this + 16);
      }

      re::RenderFrame::pickupScopeLane(a2, v8, v9, v10);
      v7 += 8;
      v6 -= 64;
    }

    while (v6);
  }
}

void re::SceneScope::~SceneScope(re::SceneScope *this)
{
  *this = &unk_1F5D06A20;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5D06A20;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

unint64_t re::CameraView::prepareEmitDefault(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v65[6] = *MEMORY[0x1E69E9840];
  re::CameraView::addPickupScopeLanes(a1, a2);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = (a1 + 9);
  }

  v12 = strlen(a6);
  if (v12)
  {
    MurmurHash3_x64_128(a6, v12, 0, &v41);
    v13 = (*v42 - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(v11);
  if (v14)
  {
    MurmurHash3_x64_128(v11, v14, 0, &v41);
    v15 = ((*v42 - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41) - 0x61C8864680B583E9;
  }

  else
  {
    v15 = 0x9E3779B97F4A7C17;
  }

  v16 = ((v13 >> 2) + (v13 << 6) + v15) ^ v13;
  re::CameraView::makeCameraData(a1, *(a2 + 1), a5, &v41);
  re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a3, v16, &v41);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v65);
  ++v64;
  ++v62;
  ++DWORD2(v49);
  v63 = 0;
  v61 = 0;
  *&v49 = 0;
  *&v44 = 0;
  ++DWORD2(v44);
  if (*v42 && (v42[8] & 1) != 0)
  {
    (*(**v42 + 40))();
  }

  re::CameraView::makeViewportPercentData(a1, v17, &v41);
  re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a3, v16, &v41);
  v18 = *(a2 + 1);
  v41 = &unk_1F5D035F0;
  *v42 = *(a1 + 1152);
  v42[4] = (*v42 != -1) & *(v18 + 364);
  v42[5] = *(a1 + 701);
  re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a3, v16, &v41);
  v41 = &unk_1F5D06960;
  *v42 = *(a1 + 1160);
  v19 = "N2re24RenderCommandEncoderDataE";
  if (("N2re24RenderCommandEncoderDataE" & 0x8000000000000000) != 0)
  {
    v20 = ("N2re24RenderCommandEncoderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  v40 = (v16 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
  v23 = (*(**(a3 + 8) + 32))(*(a3 + 8), 16, 8);
  *v23 = &unk_1F5D06960;
  v23[1] = *v42;
  v39 = v23;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 64, &v40, &v39);
  v41 = &unk_1F5D03570;
  v42[16] = *(a1 + 732);
  *v42 = *(a1 + 716);
  re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(a3, v16, &v41);
  v41 = &unk_1F5D069E0;
  v51 = 0;
  v56 = 0;
  v24 = *(a1 + 768);
  *&v42[8] = *(a1 + 752);
  v43 = v24;
  v25 = *(a1 + 800);
  v44 = *(a1 + 784);
  v45 = v25;
  v26 = *(a1 + 864);
  v48 = *(a1 + 848);
  v49 = v26;
  v50 = *(a1 + 880);
  v27 = *(a1 + 832);
  v46 = *(a1 + 816);
  v47 = v27;
  if (*(a1 + 896) == 1)
  {
    v51 = 1;
    v28 = *(a1 + 928);
    v52 = *(a1 + 912);
    v53 = v28;
    v29 = *(a1 + 960);
    v54 = *(a1 + 944);
    v55 = v29;
  }

  if (*(a1 + 976) == 1)
  {
    v56 = 1;
    v30 = *(a1 + 1008);
    v57 = *(a1 + 992);
    v58 = v30;
    v31 = *(a1 + 1040);
    v59 = *(a1 + 1024);
    v60 = v31;
  }

  re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(a3, v16, &v41);
  v32 = *(a5 + 48);
  v33 = *a5;
  v41 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(v42, v32, v33);
  re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a3, v16, &v41);
  v41 = &unk_1F5D06A20;
  if (*v42 && (v42[8] & 1) != 0)
  {
    (*(**v42 + 40))();
  }

  v41 = &unk_1F5D06A60;
  *v42 = *(a5 + 392);
  re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(a3, v16, &v41);
  v41 = &unk_1F5CEFB58;
  *v42 = *(a1 + 1173);
  re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(a3, v16, &v41);
  v34 = *(a5 + 384);
  if (v34)
  {
    v41 = &unk_1F5D069A0;
    *&v42[8] = vaddq_f32(*(a1 + 672), *v34);
    LOBYTE(v43) = v34[1].i8[0];
    re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(a3, v16, &v41);
  }

  v35 = *(*(a2 + 1) + 367);
  v41 = &unk_1F5D03630;
  v42[0] = v35;
  v36 = v35 == 0;
  v37 = 512;
  if (v36)
  {
    v37 = 0;
  }

  *&v42[8] = v37;
  return re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(a3, v16, &v41);
}

uint64_t re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0, v9, v10, v11, v12, v13);
  }

  v14 = re::introspect<re::CameraData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v6, 0, v16);
    v7 = (v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0];
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v15, &v14);
  v16[0] = (a2 - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v14 = re::Allocator::create<re::CameraData>(*(a1 + 8), a3);
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v16, &v14);
}

uint64_t re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 80, 16);
  *v9 = &unk_1F5D06920;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move((v9 + 16), (a3 + 16));
  *(v9 + 64) = *(a3 + 64);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = 0;
  {
    re::introspect<re::VRRData>(BOOL)::info = re::introspect_VRRData(0, v11, v12, v13, v14, v15);
  }

  v16 = re::introspect<re::VRRData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::VRRData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::VRRData>(BOOL)::info + 6), v6, 0, v18);
    v7 = (v18[1] - 0x61C8864680B583E9 + (v18[0] << 6) + (v18[0] >> 2)) ^ v18[0];
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v17, &v16);
  v18[0] = (a2 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v8 = &unk_1F5D035F0;
  v9 = *(a3 + 12);
  *(v8 + 8) = *(a3 + 8);
  *(v8 + 12) = v9;
  v16 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v18, &v16);
}

uint64_t re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = 0;
  {
    re::introspect<re::StencilInfoData>(BOOL)::info = re::introspect_StencilInfoData(0, v11, v12, v13, v14, v15);
  }

  v16 = re::introspect<re::StencilInfoData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::StencilInfoData>(BOOL)::info + 6), v6, 0, v18);
    v7 = (v18[1] - 0x61C8864680B583E9 + (v18[0] << 6) + (v18[0] >> 2)) ^ v18[0];
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v17, &v16);
  v18[0] = (a2 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 32, 8);
  *v8 = &unk_1F5D03570;
  v9 = *(a3 + 24);
  *(v8 + 8) = *(a3 + 8);
  *(v8 + 24) = v9;
  v16 = v8;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v18, &v16);
}

uint64_t re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re22MeshLodSelectInputDataE";
  if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v26 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 320, 16);
  *v9 = &unk_1F5D069E0;
  v10 = *(a3 + 32);
  v12 = *(a3 + 48);
  v11 = *(a3 + 64);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = v12;
  *(v9 + 64) = v11;
  *(v9 + 80) = *(a3 + 80);
  v14 = *(a3 + 112);
  v13 = *(a3 + 128);
  v15 = *(a3 + 96);
  *(v9 + 144) = *(a3 + 144);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  v16 = *(a3 + 160);
  *(v9 + 160) = v16;
  if (v16 == 1)
  {
    v17 = *(a3 + 176);
    v18 = *(a3 + 192);
    v19 = *(a3 + 224);
    *(v9 + 208) = *(a3 + 208);
    *(v9 + 224) = v19;
    *(v9 + 176) = v17;
    *(v9 + 192) = v18;
  }

  v20 = *(a3 + 240);
  *(v9 + 240) = v20;
  if (v20 == 1)
  {
    v21 = *(a3 + 256);
    v22 = *(a3 + 272);
    v23 = *(a3 + 304);
    *(v9 + 288) = *(a3 + 288);
    *(v9 + 304) = v23;
    *(v9 + 256) = v21;
    *(v9 + 272) = v22;
  }

  v25 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v26, &v25);
}

uint64_t re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re10SceneScopeE";
  if (("N2re10SceneScopeE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re10SceneScopeE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 40, 8);
  *v9 = &unk_1F5D06A20;
  re::DynamicString::DynamicString((v9 + 1), (a3 + 8));
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re14SceneIndexDataE";
  if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5D06A60;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CEFB58;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

uint64_t re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re15TintContextDataE";
  if (("N2re15TintContextDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re15TintContextDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 48, 16);
  *v9 = &unk_1F5D069A0;
  v10 = *(a3 + 32);
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = v10;
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

unint64_t re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = 0;
  {
    re::introspect<re::ThreadGroupMemoryData>(BOOL)::info = re::introspect_ThreadGroupMemoryData(0, v10, v11, v12, v13, v14);
  }

  v15 = re::introspect<re::ThreadGroupMemoryData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6), v6, 0, v17);
    v7 = (v17[1] - 0x61C8864680B583E9 + (v17[0] << 6) + (v17[0] >> 2)) ^ v17[0];
  }

  else
  {
    v7 = 0;
  }

  v16 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v16, &v15);
  v17[0] = (a2 - 0x61C8864680B583E9 + (v16 << 6) + (v16 >> 2)) ^ v16;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 24, 8);
  *v8 = &unk_1F5D03630;
  *(v8 + 8) = *(a3 + 8);
  v15 = v8;
  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew((a1 + 112), v17, &v15);
}

unint64_t re::CameraMultiView::prepareEmitDefaultInstancedMode(uint64_t a1, re::RenderFrame *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v58[6] = *MEMORY[0x1E69E9840];
  re::CameraView::addPickupScopeLanes(a1, a2);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = (a1 + 9);
  }

  v12 = 0x9E3779B97F4A7C17;
  v13 = strlen(a6);
  if (v13)
  {
    MurmurHash3_x64_128(a6, v13, 0, &v34);
    v14 = (*v35 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
  }

  else
  {
    v14 = 0;
  }

  v15 = strlen(v11);
  if (v15)
  {
    MurmurHash3_x64_128(v11, v15, 0, &v34);
    v12 = ((*v35 - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34) - 0x61C8864680B583E9;
  }

  v16 = (v14 >> 2) + (v14 << 6) + v12;
  re::CameraMultiView::makeCameraDataInstancedMode(a1, *(a2 + 1), a5, &v34);
  re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a3, v16 ^ v14, &v34);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v58);
  ++v57;
  ++v55;
  ++DWORD2(v42);
  v56 = 0;
  v54 = 0;
  *&v42 = 0;
  *&v37 = 0;
  ++DWORD2(v37);
  if (*v35 && (v35[8] & 1) != 0)
  {
    (*(**v35 + 40))();
  }

  re::CameraMultiView::makeViewportPercentDataInstancedMode(a1, v17, &v34);
  re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a3, v16 ^ v14, &v34);
  v18 = *(a2 + 1);
  v34 = &unk_1F5D035F0;
  *v35 = *(a1 + 1152);
  v35[4] = (*v35 != -1) & *(v18 + 364);
  v35[5] = *(a1 + 701);
  re::RenderGraphDataStore::add<re::VRRData,re::VRRData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D03570;
  v35[16] = *(a1 + 732);
  *v35 = *(a1 + 716);
  re::RenderGraphDataStore::add<re::StencilInfoData,re::StencilInfoData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D069E0;
  v44 = 0;
  v49 = 0;
  v19 = *(a1 + 768);
  *&v35[8] = *(a1 + 752);
  v36 = v19;
  v20 = *(a1 + 800);
  v37 = *(a1 + 784);
  v38 = v20;
  v21 = *(a1 + 864);
  v41 = *(a1 + 848);
  v42 = v21;
  v43 = *(a1 + 880);
  v22 = *(a1 + 832);
  v39 = *(a1 + 816);
  v40 = v22;
  if (*(a1 + 896) == 1)
  {
    v44 = 1;
    v23 = *(a1 + 928);
    v45 = *(a1 + 912);
    v46 = v23;
    v24 = *(a1 + 960);
    v47 = *(a1 + 944);
    v48 = v24;
  }

  if (*(a1 + 976) == 1)
  {
    v49 = 1;
    v25 = *(a1 + 1008);
    v50 = *(a1 + 992);
    v51 = v25;
    v26 = *(a1 + 1040);
    v52 = *(a1 + 1024);
    v53 = v26;
  }

  re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData>(a3, v16 ^ v14, &v34);
  v27 = *(a5 + 48);
  v28 = *a5;
  v34 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(v35, v27, v28);
  re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5D06A20;
  if (*v35 && (v35[8] & 1) != 0)
  {
    (*(**v35 + 40))(*v35);
  }

  v34 = &unk_1F5D06A60;
  *v35 = *(a5 + 392);
  re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(a3, v16 ^ v14, &v34);
  v34 = &unk_1F5CEFB58;
  *v35 = *(a1 + 1173);
  re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData>(a3, v16 ^ v14, &v34);
  v29 = *(a5 + 384);
  if (v29)
  {
    v34 = &unk_1F5D069A0;
    *&v35[8] = vaddq_f32(*(a1 + 672), *v29);
    LOBYTE(v36) = v29[1].i8[0];
    re::RenderGraphDataStore::add<re::TintContextData,re::TintContextData>(a3, v16 ^ v14, &v34);
  }

  v30 = *(*(a2 + 1) + 367);
  v34 = &unk_1F5D03630;
  v35[0] = v30;
  v31 = v30 == 0;
  v32 = 512;
  if (v31)
  {
    v32 = 0;
  }

  *&v35[8] = v32;
  return re::RenderGraphDataStore::addHashed<re::ThreadGroupMemoryData,re::ThreadGroupMemoryData>(a3, v16 ^ v14, &v34);
}

void re::CameraView::registerFileProviders(char *__s1@<X3>, uint64_t a2@<X0>, re::RenderGraphManager *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
  v10 = *(a2 + 592);
  if (v10)
  {
    v11 = 0;
    for (i = 0; i < v10; ++i)
    {
      v13 = *(a2 + 608) + v11;
      if (*(v13 + 16))
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = (v13 + 17);
      }

      if (!strcmp(__s1, v14))
      {
        re::RenderGraphManager::addProviderInternal(&v27, a3, __s1, *v13, *(v13 + 40), 0);
        v15 = re::DynamicArray<re::ProviderHandle>::add(a5, &v27);
        if (*&v27.var0)
        {
          if (*&v27.var0)
          {
          }
        }

        v10 = *(a2 + 592);
      }

      v11 += 48;
    }
  }

  if ((*(a2 + 616) & 1) == 0)
  {
    v16 = *(a4 + 80);
    if (v16)
    {
      if (*(v16 + 40))
      {
        v17 = 0;
        v26 = *(a4 + 80);
        do
        {
          v18 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v16, v17);
          v19 = *(v18 + 16);
          if (v19)
          {
            v20 = v18;
            v21 = 0;
            for (j = 0; j < v19; ++j)
            {
              v23 = *(v20 + 32) + v21;
              if (*(v23 + 16))
              {
                v24 = *(v23 + 24);
              }

              else
              {
                v24 = (v23 + 17);
              }

              if (!strcmp(__s1, v24))
              {
                re::RenderGraphManager::addProviderInternal(&v27, a3, __s1, *v23, *(v23 + 40), 0);
                v25 = re::DynamicArray<re::ProviderHandle>::add(a5, &v27);
                if (*&v27.var0)
                {
                  if (*&v27.var0)
                  {
                  }
                }

                v19 = *(v20 + 16);
              }

              v21 += 48;
            }
          }

          ++v17;
          v16 = v26;
        }

        while (*(v26 + 40) > v17);
      }
    }
  }
}

re::StringID *re::DynamicArray<re::ProviderHandle>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ProviderHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 24 * v4), a2);
  *(result + 2) = *&a2[1].var0;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::CameraView::unregisterFileProviders(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3 >= 1)
  {
    v5 = *(a2 + 16) & 0x7FFFFFFFLL;
    v6 = v5 + 1;
    v7 = 24 * v5 - 8;
    do
    {
      v8 = *(a2 + 16);
      if (v8 <= v6 - 2)
      {
        v19 = 0;
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
        v25 = v6 - 2;
        v26 = 2048;
        v27 = v8;
        _os_log_send_and_compose_impl(v15, &v19, v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16, v17);
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(a2 + 32) + v7);
      re::StringID::StringID(&v16, v9 - 1);
      v18 = *&v9->var0;
      v10 = re::RenderGraphManager::removeProvider(a1, &v16);
      if (v16)
      {
        if (v16)
        {
        }
      }

      v16 = 0;
      v17 = &str_67;
      --v6;
      v7 -= 24;
    }

    while (v6 > 1);
    v3 = *(a2 + 16);
  }

  *(a2 + 16) = 0;
  if (v3)
  {
    v11 = *(a2 + 32);
    v12 = 24 * v3;
    do
    {
      re::StringID::destroyString(v11);
      v11 = (v11 + 24);
      v12 -= 24;
    }

    while (v12);
  }

  ++*(a2 + 24);
}

re::CameraData *re::CameraData::CameraData(re::CameraData *this, re::Allocator *a2)
{
  *this = &unk_1F5D03750;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v4 = (this + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(this + 51) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 78) = 0;
  *(this + 158) = 0;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 208) = 0;
  *(this + 840) = 0u;
  *(this + 214) = 0;
  *(this + 860) = 0x10101000001;
  *(this + 217) = 1065353216;
  *(this + 436) = 1;
  *(this + 876) = 0;
  *(this + 221) = 1;
  *(this + 890) = 1;
  *(this + 225) = 2;
  *(this + 113) = 0xFFFFFFFFLL;
  *(this + 912) = 0;
  *(this + 118) = re::globalAllocators(v5)[2];
  *(this + 119) = 0;
  *v4 = a2;
  re::DynamicString::setCapacity(v4, 0);
  return this;
}

uint64_t re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

uint64_t re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v11);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v12, v11);
    v8 = *a2;
    *(v7 + 16) = *a3;
    result = v7 + 16;
    *(result - 8) = v8;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 24 * v6;
    *(v10 + 16) = *a3;
    return v10 + 16;
  }

  return result;
}

uint64_t re::Allocator::create<re::CameraData>(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 32))(a1, 960, 16);
  *v3 = &unk_1F5D03750;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 32) = *(a2 + 32);
  v4 = *(a2 + 16);
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a2 + 24);
  *(a2 + 32) = 0;
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  re::DynamicInlineArray<re::RenderCamera,2ul>::move((v3 + 48), (a2 + 48));
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  re::DynamicInlineArray<re::Projection,2ul>::move((v3 + 128), (a2 + 128));
  *(v3 + 624) = 0;
  *(v3 + 632) = 0;
  re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::move((v3 + 624), (a2 + 624));
  *(v3 + 768) = 0;
  *(v3 + 776) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move((v3 + 768), (a2 + 768));
  v8 = *(a2 + 816);
  v9 = *(a2 + 832);
  v10 = *(a2 + 848);
  *(v3 + 858) = *(a2 + 858);
  *(v3 + 832) = v9;
  *(v3 + 848) = v10;
  *(v3 + 816) = v8;
  v11 = *(a2 + 876);
  *(v3 + 876) = v11;
  if (v11 == 1)
  {
    *(v3 + 880) = *(a2 + 880);
  }

  v12 = *(a2 + 884);
  *(v3 + 897) = *(a2 + 897);
  *(v3 + 884) = v12;
  *(v3 + 944) = *(a2 + 944);
  *(v3 + 952) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v3 + 920, a2 + 920);
  return v3;
}

unint64_t *re::DynamicInlineArray<re::RenderCamera,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 32 * v5);
    }

    result = memcpy(&v8[4 * v5], &a2[4 * v5 + 2], 32 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 32 * v4);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

__int128 *re::DynamicInlineArray<re::Projection,2ul>::move(unint64_t *a1, __int128 *a2)
{
  v4 = (a2 + 1);
  v5 = *a2;
  v6 = a1 + 2;
  if (*a2 >= *a1)
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v24, a2 + 1, &v4[30 * *a1], v6);
    if (*a1 != v5)
    {
      v8 = 240 * *a1 + 112;
      v9 = a1 + v8;
      v10 = a2 + v8;
      do
      {
        *(v9 - 6) = *(v10 - 6);
        v11 = *(v10 - 5);
        v12 = *(v10 - 4);
        v13 = *(v10 - 3);
        *(v9 - 16) = *(v10 - 16);
        *(v9 - 4) = v12;
        *(v9 - 3) = v13;
        *(v9 - 5) = v11;
        v14 = *(v10 - 16);
        *(v9 - 16) = v14;
        if (v14 == 1)
        {
          v15 = *v10;
          v16 = *(v10 + 1);
          v17 = *(v10 + 3);
          *(v9 + 2) = *(v10 + 2);
          *(v9 + 3) = v17;
          *v9 = v15;
          *(v9 + 1) = v16;
        }

        v18 = v10 - 96;
        v19 = v10[64];
        v9[64] = v19;
        if (v19 == 1)
        {
          v20 = *(v10 + 5);
          v21 = *(v10 + 6);
          v22 = *(v10 + 8);
          *(v9 + 7) = *(v10 + 7);
          *(v9 + 8) = v22;
          *(v9 + 5) = v20;
          *(v9 + 6) = v21;
        }

        v9 += 240;
        v10 += 240;
      }

      while (v18 + 240 != &v4[30 * v5]);
    }
  }

  else
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v23, a2 + 1, &v4[30 * v5], v6);
  }

  *a1 = v5;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    for (i = a2 + 6; ; i += 15)
    {
      *a4 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      *(a4 + 64) = *(i - 16);
      *(a4 + 32) = v7;
      *(a4 + 48) = v8;
      *(a4 + 16) = v6;
      if (*(a4 + 80))
      {
        if ((*(i - 1) & 1) == 0)
        {
          *(a4 + 80) = 0;
          goto LABEL_9;
        }
      }

      else
      {
        if ((*(i - 1) & 1) == 0)
        {
          goto LABEL_9;
        }

        *(a4 + 80) = 1;
      }

      v9 = *i;
      v10 = i[1];
      v11 = i[3];
      *(a4 + 128) = i[2];
      *(a4 + 144) = v11;
      *(a4 + 96) = v9;
      *(a4 + 112) = v10;
LABEL_9:
      v12 = i - 6;
      if (*(a4 + 160))
      {
        if (i[4])
        {
          goto LABEL_14;
        }

        *(a4 + 160) = 0;
      }

      else if (i[4])
      {
        *(a4 + 160) = 1;
LABEL_14:
        v13 = i[5];
        v14 = i[6];
        v15 = i[8];
        *(a4 + 208) = i[7];
        *(a4 + 224) = v15;
        *(a4 + 176) = v13;
        *(a4 + 192) = v14;
      }

      a4 += 240;
      if (v12 + 15 == a3)
      {
        return a3;
      }
    }
  }

  return result;
}

unint64_t *re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, v5 << 6);
    }

    result = memcpy(&v8[8 * v5], &a2[8 * v5 + 2], v6 << 6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, v4 << 6);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

unint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(a1, a2, a3);
}

unint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(a1, 1);
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
  v17 = (a1[1] + 16 * v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
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
  re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(a1, (a1[1] + 16 * v16));
  return a1[1] + 16 * v16 + 8;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(a1, 1);
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
  v17 = (a1[1] + 16 * v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
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
  re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(a1, (a1[1] + 16 * v16));
  return a1[1] + 16 * v16 + 8;
}

double re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::updateHashes(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  *(a1 + 40) ^= v5;
  result = (*(*v3 + 24))(v3);
  *(a1 + 48) ^= v5 ^ (result + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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

_anonymous_namespace_ *re::DynamicArray<re::ProviderHandle>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BufferArgument>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BufferArgument>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::WrapDeformerModelBuilder *re::WrapDeformerModelBuilder::WrapDeformerModelBuilder(re::WrapDeformerModelBuilder *this, re::Allocator *a2, const re::mtl::Device *a3, uint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  *this = a3;
  *(this + 1) = a6;
  v10 = re::DeformationModelData::create<re::WrapDeformer,re::WrapDeformerModel>(a6, a2);
  re::FixedArray<re::WrapDeformerModel::WrapDeformerTarget>::init<>(v10, a2, a5);
  re::FixedArray<re::StringID>::init<>(v10 + 6, a2, a5);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v10 + 3, a2, a4, &re::WrapDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::WrapDeformer,re::WrapDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 72, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v6[0] = &unk_1F5D06B78;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D06B78;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 480), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 480);
}

uint64_t *re::FixedArray<re::WrapDeformerModel::WrapDeformerTarget>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  v4[2] = result;
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
      *result = 0;
      result[1] = &str_67;
      result[3] = 0;
      result[4] = 0;
      result[2] = 0;
      result += 5;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

float re::WrapDeformerModelBuilder::addWrapTarget(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1 + 8) + 480);
  v7 = v6[4];
  if (v7 <= a2)
  {
LABEL_20:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *v44 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v39 = 468;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v7;
    _os_log_send_and_compose_impl(v25, &v35, v44, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *v44 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v39 = 468;
    v40 = 2048;
    v41 = v4;
    v42 = 2048;
    v43 = v5;
    _os_log_send_and_compose_impl(v28, &v35, v44, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
  }

  v4 = a3;
  *(v6[5] + 2 * a2) = a3;
  v5 = v6[1];
  if (v5 <= a3)
  {
    goto LABEL_24;
  }

  v4 = (v6[2] + 40 * a3);
  v10 = *(a4 + 24);
  v44[0] = [**a1 newBufferWithLength:12 * (v10 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v4 + 2, v44);
  if (v44[0])
  {
  }

  v44[0] = [**a1 newBufferWithLength:12 * (v10 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v4 + 3, v44);
  if (v44[0])
  {
  }

  v44[0] = [**a1 newBufferWithLength:12 * (v10 / 3) options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v4 + 4, v44);
  v11 = v44[0];
  if (v44[0])
  {
  }

  v7 = *a4;
  v44[0] = 0;
  v44[1] = &str_67;
  v12 = re::StringID::operator=(v4, v44);
  if (v44[0])
  {
    if (v44[0])
    {
    }
  }

  memcpy([v4[2] contents], *(a4 + 16), 12 * (v10 / 3));
  v5 = [v4[3] contents];
  v13 = [v4[4] contents];
  if (v10 >= 3)
  {
    v16 = 0;
    v17 = *(a4 + 40);
    v18 = *(a4 + 56);
    v19 = (*(a4 + 48) + 8);
    v20 = (*(a4 + 32) + 8);
    v21 = v5 + 8;
    v22 = (v13 + 8);
    while (v17 != v16)
    {
      *(v21 - 2) = *(v20 - 2);
      *(v21 - 1) = *(v20 - 1);
      *v21 = *v20;
      if (v18 == v16)
      {
        goto LABEL_19;
      }

      *(v22 - 2) = *(v19 - 2);
      *(v22 - 1) = *(v19 - 1);
      v23 = *v19;
      v19 += 4;
      result = v23;
      ++v16;
      *v22 = v23;
      v22 += 3;
      v20 += 4;
      v21 += 3;
      if (v10 / 3 == v16)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v17);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v31);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v32);
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t *re::WrapDeformerModelBuilder::setEnvelopeBufferName(re::WrapDeformerModelBuilder *this, unint64_t a2, unint64_t a3, const re::StringID *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*(this + 1) + 480);
  v6 = v5[4];
  if (v6 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = a3;
  *(v5[5] + 2 * a2) = a3;
  v6 = v5[7];
  if (v6 <= a3)
  {
    goto LABEL_10;
  }

  v8 = (v5[8] + 16 * a3);

  return re::StringID::operator=(v8, a4);
}

uint64_t re::WrapDeformer::init(uint64_t result, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(result + 24) & 1) == 0)
  {
    v2 = result;
    *(result + 24) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        *(result + 32) = *(v3 + 32);
        if (*(v3 + 312) == 1)
        {
          v4 = 0;
          v5 = 0;
          do
          {
            v6 = v4;
            v11 = 0;
            v14 = 0;
            memset(v17, 0, sizeof(v17));
            v18 = 0;
            v22 = 0;
            v23 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            memset(v24, 0, sizeof(v24));
            re::DynamicString::setCapacity(v24, 0);
            v29 = 0u;
            v28 = 0u;
            v27 = 0u;
            v26 = 0u;
            LOBYTE(v26) = v5;
            v25 = 53;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v17, v24);
            ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v9);
            NS::SharedPtr<MTL::Buffer>::operator=((v2 + 8 + 8 * v5), ComputePipelineState);
            if (v24[0] && (v24[1] & 1) != 0)
            {
              (*(*v24[0] + 40))();
            }

            if (v22)
            {

              v22 = 0;
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v17);
            if (v14 == 1 && v15)
            {
              if (BYTE8(v15))
              {
                (*(*v15 + 40))();
              }

              v15 = 0u;
              v16 = 0u;
            }

            if (v11 == 1 && v12)
            {
              if (BYTE8(v12))
              {
                (*(*v12 + 40))();
              }

              v13 = 0u;
              v12 = 0u;
            }

            result = v9;
            if (v9)
            {
              if (v10)
              {
                result = (*(*v9 + 40))();
              }
            }

            v4 = 1;
            v5 = 1;
          }

          while ((v6 & 1) == 0);
          *(v2 + 25) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t re::WrapDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(result + 25);
  *a4 = xmmword_1E30D6450;
  *(a4 + 16) = 2;
  LODWORD(v6) = *a3;
  if (v6 == 255)
  {
    v6 = *(a3 + 2);
    if (v6)
    {
      v7 = (v5 ^ 1 | v4) ^ 1;
      if (*(v6 + 208))
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  *(a4 + 24) = v6;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::WrapDeformer::allocateBuffers(re *a1, unint64_t a2, re::PerFrameAllocatorGPU **a3, int a4, uint64_t *a5)
{
  v94 = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v7 = (*(*a2 + 32))(a2, 24, 8);
  v9 = v7;
  v73 = a5;
  v10 = *(*a5 + 48);
  v7[1] = v10;
  v7[2] = 0;
  *v7 = a2;
  if (v10)
  {
    if (v10 >= 0x492492492492493)
    {
LABEL_57:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v10);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v62, v65);
      __break(1u);
LABEL_58:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v7 = (*(*a2 + 32))(a2, 56 * v10, 8);
    v9[2] = v7;
    if (!v7)
    {
      goto LABEL_58;
    }

    v12 = v7;
    if (v10 != 1)
    {
      bzero(v7, 56 * v10 - 56);
      v12 += 7 * v10 - 7;
    }

    v12[6] = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
  }

  *(&v90 + 1) = re::globalAllocators(v7)[2];
  *&v91 = &v89;
  *&v89 = &unk_1F5D06B10;
  v13 = (*(*a2 + 16))(a2, v9, &v89);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v89);
  v70 = *(*v73 + 48);
  if (v70)
  {
    v14 = 0;
    while (1)
    {
      re::DeformationInstanceIterator::Instance::Instance(&v76, v73, v14);
      v15 = *(*(v78 + 344) + 480);
      v10 = *(v78 + 392);
      v16 = v15[4];
      if (v16 <= v10)
      {
        break;
      }

      v17 = v79;
      a2 = *(v15[5] + 2 * v10);
      v18 = re::DeformationVertexBufferState::inputVertexCount(v79, 1);
      v10 = v77;
      v16 = *(v13 + 8);
      if (v16 <= v77)
      {
        goto LABEL_43;
      }

      v19 = v18;
      v10 = *(v13 + 16) + 56 * v77;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v89, a3, 4uLL, 4uLL);
      v20 = v89;
      v21 = v90;
      v22 = *(&v89 + 1);
      *(v89 + DWORD2(v89)) = v19;
      *v10 = v20;
      *(v10 + 8) = v22;
      *(v10 + 16) = v21;
      v16 = v15[7];
      if (v16 <= a2)
      {
        goto LABEL_47;
      }

      v23 = 12 * v19;
      re::StringID::StringID(&v75, (v15[8] + 16 * a2));
      a2 = re::DeformationInstanceIterator::Instance::meshPart(&v76, *(a1 + 4));
      v24 = a2;
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24 && !v25[8]);
      *&v89 = v75 >> 1;
      v26 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v25 + 5, &v89);
      if (v26 == -1)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v25[6] + 16 * v26 + 8);
      }

      v28 = 4 * v19;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v89, a3, v28, 4uLL);
      v29 = v89;
      v16 = DWORD2(v89);
      v30 = HIDWORD(v89);
      v31 = v90;
      *(v10 + 24) = v89;
      *(v10 + 32) = v16;
      *(v10 + 36) = v30;
      *(v10 + 40) = v31;
      if (v27)
      {
        v32 = re::AttributeTable::buffers(a2);
        v34 = *v27;
        if (v33 <= v34)
        {
          goto LABEL_51;
        }

        v35 = re::BufferView::contents((v32 + 24 * *v27));
        memcpy((v29 + v16), v35, v28);
      }

      else if (v30 >= 4)
      {
        memset_pattern16((v29 + v16), &unk_1E30D6460, v30 & 0xFFFFFFFC);
      }

      v36 = a2;
      do
      {
        v37 = v36;
        v36 = *v36;
      }

      while (v36 && !v37[8]);
      *&v89 = 0x2DB839E585F57D8ALL;
      v38 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v37 + 5, &v89);
      if (v38 != -1)
      {
        v39 = v37[6] + 16 * v38;
        v38 = re::AttributeTable::buffers(a2);
        v41 = *(v39 + 8);
        if (v40 <= v41)
        {
          goto LABEL_52;
        }

        *(v10 + 48) = v38 + 24 * *(v39 + 8);
      }

      if (a4 == 1)
      {
        v42 = v78;
        v43 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*v76 + 8, v77);
        v68 = v68 & 0xFFFFFF0000000000 | 0x1E00000000;
        v69 = v69 & 0xFFFF000000000000 | 0x1010001000CLL;
        v44 = re::DeformationBufferAllocator::alloc(*(v42 + 360), v73[2], 1, v69, v68, *(v43 + 16), v23);
        v45 = *(v42 + 360);
        v10 = *(v43 + 16);
        v16 = *(v45 + 8);
        if (v16 <= v10)
        {
          goto LABEL_53;
        }

        v46 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v45 + 16) + 72 * *(v43 + 16) + 16, v44);
        WORD2(v89) = 257;
        LODWORD(v89) = 65548;
        BYTE12(v89) = 30;
        DWORD2(v89) = 0;
        v38 = re::DeformationVertexBufferState::setOutputBuffer(v17, 1, 1, (v46 + 24), &v89);
      }

      else if (!a4)
      {
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v89, a3, v23, 0x10uLL);
        LOWORD(v82) = 257;
        v81 = 65548;
        LOBYTE(v83) = 30;
        HIDWORD(v82) = 0;
        v38 = re::DeformationVertexBufferState::setOutputBuffer(v17, 1, 0, &v89, &v81);
      }

      if (v75)
      {
        if (v75)
        {
        }
      }

      if (++v14 == v70)
      {
        return v13;
      }
    }

    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v89 = 0u;
    v90 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v10;
    v87 = 2048;
    v88 = v16;
    _os_log_send_and_compose_impl(v50, &v75, &v89, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v89 = 0u;
    v90 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v84 = 468;
    v85 = 2048;
    v86 = v10;
    v87 = 2048;
    v88 = v16;
    _os_log_send_and_compose_impl(v53, &v75, &v89, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v89 = 0u;
    v90 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = a2;
    v87 = 2048;
    v88 = v16;
    _os_log_send_and_compose_impl(v56, &v75, &v89, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v33);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v60, v63);
    __break(1u);
LABEL_52:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v64);
    __break(1u);
LABEL_53:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v89 = 0u;
    v90 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v84 = 476;
    v85 = 2048;
    v86 = v10;
    v87 = 2048;
    v88 = v16;
    _os_log_send_and_compose_impl(v59, &v80, &v89, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  return v13;
}

uint64_t re::WrapDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Wrap");
  v47 = *(*a4 + 48);
  if (v47)
  {
    v9 = 0;
    v44 = a1 + 8;
    v45 = a2;
    v46 = a4;
    do
    {
      v10 = re::DeformationInstanceIterator::Instance::Instance(v48, a4, v9);
      v12 = **(*(v50 + 352) + 120);
      if (v12 == -1)
      {
        v29 = *re::graphicsLogObjects(v10);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Wrap deformer has invalid target index, skipping.", buf, 2u);
        }
      }

      else
      {
        v13 = *(*(v50 + 344) + 480);
        v14 = *(v50 + 392);
        v15 = v13[4];
        if (v15 <= v14)
        {
          v52 = 0;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          memset(buf, 0, sizeof(buf));
          v31 = MEMORY[0x1E69E9C10];
          v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v53 = 136315906;
          *&v53[4] = "operator[]";
          *&v53[12] = 1024;
          if (v32)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          *&v53[14] = 476;
          *&v53[18] = 2048;
          *&v53[20] = v14;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v33, &v52, buf, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v42, v43);
          _os_crash_msg();
          __break(1u);
LABEL_19:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v41);
          __break(1u);
LABEL_20:
          v52 = 0;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          memset(buf, 0, sizeof(buf));
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v53 = 136315906;
          *&v53[4] = "operator[]";
          *&v53[12] = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          *&v53[14] = 476;
          *&v53[18] = 2048;
          *&v53[20] = v14;
          v54 = 2048;
          v55 = v15;
          _os_log_send_and_compose_impl(v36, &v52, buf, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v42, v43);
          _os_crash_msg();
          __break(1u);
LABEL_24:
          v52 = 0;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          memset(buf, 0, sizeof(buf));
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v53 = 136315906;
          *&v53[4] = "operator[]";
          *&v53[12] = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          *&v53[14] = 468;
          *&v53[18] = 2048;
          *&v53[20] = v15;
          v54 = 2048;
          v55 = v4;
          _os_log_send_and_compose_impl(v39, &v52, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v42, v43);
          _os_crash_msg();
          __break(1u);
        }

        v16 = *(v50 + 384) + v12;
        v17 = a4[6];
        if (v17 <= v16)
        {
          goto LABEL_19;
        }

        v14 = *(v13[5] + 2 * v14);
        v15 = v13[1];
        if (v15 <= v14)
        {
          goto LABEL_20;
        }

        v15 = v49;
        v4 = *(a2 + 8);
        if (v4 <= v49)
        {
          goto LABEL_24;
        }

        v18 = v51;
        v19 = a4[5] + 312 * v16;
        v20 = (v13[2] + 40 * v14);
        v4 = *(a2 + 16) + 56 * v49;
        v21 = *(v4 + 48) != 0;
        v22 = [*(v44 + 8 * (*(v4 + 48) != 0)) maxTotalThreadsPerThreadgroup];
        v23 = re::DeformationVertexBufferState::inputVertexCount(v18, 1);
        [*this setComputePipelineState:*(v44 + 8 * v21)];
        [*this setBuffer:v20[2] offset:0 atIndex:0];
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v24 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v24 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), buf) + 16), 1}];
        [*this setBuffer:v20[3] offset:0 atIndex:2];
        [*this setBuffer:v20[4] offset:0 atIndex:3];
        [*this setBuffer:*(v4 + 40) offset:*(v4 + 32) atIndex:4];
        [*this setBuffer:*(v4 + 16) offset:*(v4 + 8) atIndex:5];
        v25 = *(v4 + 48);
        if (v25)
        {
          [*this setBuffer:*v25 offset:*(v25 + 16) atIndex:6];
        }

        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v26 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        [*this setBuffer:v26 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, buf) + 16), 7}];
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v27 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, buf) + 24);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        [*this setBuffer:v27 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, buf) + 16), 8}];
        v28 = *this;
        *buf = (v23 + v22 - 1) / v22;
        *&buf[8] = vdupq_n_s64(1uLL);
        *v53 = v22;
        *&v53[8] = *&buf[8];
        [v28 dispatchThreadgroups:buf threadsPerThreadgroup:v53];
        a2 = v45;
        a4 = v46;
      }

      ++v9;
    }

    while (v47 != v9);
  }

  return [*this popDebugGroup];
}

void re::WrapDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v82 = *(*a3 + 48);
  if (v82)
  {
    v4 = a2;
    v5 = 0;
    v83 = a3;
    do
    {
      re::DeformationInstanceIterator::Instance::Instance(v84, a3, v5);
      v6 = v85;
      v7 = *(v4 + 8);
      if (v7 <= v85)
      {
        goto LABEL_29;
      }

      v8 = *(v4 + 16) + 56 * v85;
      v9 = *(v8 + 48);
      if (v9)
      {
        v9 = re::BufferView::contents(v9);
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*(v86 + 352) + 120);
      if (!v11 || *v11 == -1)
      {
        v55 = *re::graphicsLogObjects(v9);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "Wrap deformer has invalid target index, skipping.", buf, 2u);
        }
      }

      else
      {
        v12 = *(*(v86 + 344) + 480);
        v6 = *(v86 + 392);
        v3 = v12[4];
        if (v3 <= v6)
        {
          goto LABEL_33;
        }

        v6 = *(v12[5] + 2 * v6);
        v3 = v12[1];
        if (v3 <= v6)
        {
          goto LABEL_37;
        }

        v79 = *(v8 + 32);
        v80 = *(v8 + 24);
        v13 = v87;
        v14 = (v12[2] + 40 * v6);
        v6 = [v14[2] length];
        v3 = [v14[2] contents];
        v15 = [v14[3] contents];
        v16 = [v14[4] contents];
        v18 = *(re::BucketArray<re::ActiveDeformation,8ul>::operator[](v83[1], v85) + 384) + *v11;
        v19 = v83[6];
        if (v19 <= v18)
        {
          goto LABEL_41;
        }

        v20 = v83[5] + 312 * v18;
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 1u);
        v21 = *(v20 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 184), buf);
        v76 = *(v21 + 16);
        v77 = *(v21 + 8);
        v78 = *(v21 + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
        v22 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, buf);
        v75 = *(v22 + 8);
        v7 = *(v22 + 16);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, 1u);
        v23 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 23, buf);
        if (v6 >= 0xC)
        {
          v28 = 0;
          v29 = v77 + v76;
          v30 = v78 / 0xC;
          v31 = (*(v13[24] + 32 * v23 + 8) + *(v13[24] + 32 * v23 + 16) + 8);
          while (1)
          {
            v32 = v10 ? *(v10 + v28) : v28;
            v33 = 3 * v32;
            v34 = v3[3 * v32];
            if (v30 <= v34)
            {
              break;
            }

            v35 = v3[v33 + 1];
            if (v30 <= v35)
            {
              goto LABEL_27;
            }

            v36 = v3[v33 + 2];
            if (v30 <= v36)
            {
              goto LABEL_28;
            }

            v37 = v29 + 12 * v34;
            v25.i64[0] = *v37;
            v25.i32[2] = *(v37 + 8);
            v38 = v29 + 12 * v35;
            v26.i64[0] = *v38;
            v26.i32[2] = *(v38 + 8);
            v39 = v29 + 12 * v36;
            v27.i64[0] = *v39;
            v27.i32[2] = *(v39 + 8);
            v40 = vaddq_f32(vaddq_f32(vmulq_n_f32(v25, v15[3 * v32]), vmulq_n_f32(v26, v15[3 * v32 + 1])), vmulq_n_f32(v27, v15[3 * v32 + 2]));
            v41 = vsubq_f32(v26, v25);
            v42 = vsubq_f32(v27, v25);
            v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v41)), v42, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
            v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
            v45 = vmulq_f32(v43, v43);
            *v43.i32 = v45.f32[1] + (v45.f32[2] + v45.f32[0]);
            *v45.f32 = vrsqrte_f32(v43.u32[0]);
            *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32)));
            v46 = vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
            v47 = vmulq_f32(v41, v41);
            *v43.i32 = v47.f32[2] + vaddv_f32(*v47.f32);
            *v47.f32 = vrsqrte_f32(v43.u32[0]);
            *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v47.f32, *v47.f32)));
            v48 = vmulq_n_f32(v41, vmul_f32(*v47.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v47.f32, *v47.f32))).f32[0]);
            v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), vnegq_f32(v46)), v48, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
            v27 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
            v50 = &v16[12 * v32];
            v51 = vaddq_f32(v40, vmulq_n_f32(v48, *v50));
            v26 = vmulq_n_f32(v27, v50[1]);
            v52 = vaddq_f32(v51, v26);
            v25 = vmulq_n_f32(v46, v50[2]);
            v53 = v75 + v7 + 12 * v32;
            v26.i64[0] = *v53;
            v26.i32[2] = *(v53 + 8);
            v54 = vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v25, v52), *(v80 + v79 + 4 * v28)), v26, 1.0 - *(v80 + v79 + 4 * v28));
            *(v31 - 1) = v54.i64[0];
            *v31 = v54.i32[2];
            ++v28;
            v31 += 3;
            if (v6 / 0xC == v28)
            {
              goto LABEL_24;
            }
          }

          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v34, v30);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v69);
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v35, v30);
          v36 = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v70);
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v36, v30);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v71);
          __break(1u);
LABEL_29:
          v88 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          *buf = 0u;
          v56 = MEMORY[0x1E69E9C10];
          v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v89 = 136315906;
          v90 = "operator[]";
          v91 = 1024;
          if (v57)
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          v92 = 468;
          v93 = 2048;
          v94 = v6;
          v95 = 2048;
          v96 = v7;
          _os_log_send_and_compose_impl(v58, &v88, buf, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v89, 38, v73, v74);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v88 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          *buf = 0u;
          v59 = MEMORY[0x1E69E9C10];
          v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v89 = 136315906;
          v90 = "operator[]";
          v91 = 1024;
          if (v60)
          {
            v61 = 3;
          }

          else
          {
            v61 = 2;
          }

          v92 = 476;
          v93 = 2048;
          v94 = v6;
          v95 = 2048;
          v96 = v3;
          _os_log_send_and_compose_impl(v61, &v88, buf, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v89, 38, v73, v74);
          _os_crash_msg();
          __break(1u);
LABEL_37:
          v88 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          *buf = 0u;
          v62 = MEMORY[0x1E69E9C10];
          v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v89 = 136315906;
          v90 = "operator[]";
          v91 = 1024;
          if (v63)
          {
            v64 = 3;
          }

          else
          {
            v64 = 2;
          }

          v92 = 476;
          v93 = 2048;
          v94 = v6;
          v95 = 2048;
          v96 = v3;
          _os_log_send_and_compose_impl(v64, &v88, buf, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v89, 38, v73, v74);
          _os_crash_msg();
          __break(1u);
LABEL_41:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v18, v19);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v72);
          __break(1u);
        }
      }

LABEL_24:
      ++v5;
      a3 = v83;
      v4 = a2;
    }

    while (v5 != v82);
  }
}

re::StringID *re::WrapDeformerModelUtil::envelopeBufferNameForWrapDataIndex@<X0>(re::StringID *__return_ptr a1@<X8>, re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 60);
  if (v3 && *(v3 + 56) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 64) + 16 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

re::StringID *re::WrapDeformerModelUtil::targetMeshInstanceNameForWrapDataIndex@<X0>(re::StringID *__return_ptr a1@<X8>, re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 60);
  if (v3 && *(v3 + 8) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 16) + 40 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

void re::WrapDeformerModelUtil::faceIndicesForWrapDataIndex(uint64_t *__return_ptr a1@<X8>, re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v4 = *(this + 60);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 && *(v4 + 8) > a3)
  {
    v5 = *(v4 + 16) + 40 * a3;
    v14[0] = *(v5 + 16);
    v15 = 0;
    v16 = 0;
    v17 = [*(v5 + 16) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v9, v14);
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&__src);
    }

    else if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    if (v15 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v15])(&v9, v14);
    }
  }
}

void re::WrapDeformerModelUtil::faceCoordinatesForWrapDataIndex(uint64_t *__return_ptr a1@<X8>, re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 60);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 && *(v4 + 8) > a3)
  {
    v5 = *(v4 + 16) + 40 * a3;
    v23[0] = *(v5 + 24);
    v24 = 0;
    v25 = 0;
    v26 = [*(v5 + 24) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v18, v23);
    if (v18 == 1)
    {
      v8 = v19;
      v7 = v20;
      v9 = v20 / 0xC;
      if (v7 >= 0xC)
      {
        v11 = 0;
        v12 = (v8 + 8);
        do
        {
          v13 = a1[1];
          if (v13 <= v11)
          {
            v27 = 0;
            memset(v36, 0, 80);
            v14 = MEMORY[0x1E69E9C10];
            v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v28 = 136315906;
            v29 = "operator[]";
            v30 = 1024;
            if (v15)
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v31 = 468;
            v32 = 2048;
            v33 = v11;
            v34 = 2048;
            v35 = v13;
            _os_log_send_and_compose_impl(v16, &v27, v36, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v17, v18);
            _os_crash_msg();
            __break(1u);
          }

          *&v10 = *(v12 - 1);
          DWORD2(v10) = *v12;
          *(a1[2] + 16 * v11++) = v10;
          v12 += 3;
        }

        while (v9 != v11);
      }
    }

    if (v18 == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v19);
    }

    else if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }

    if (v24 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v24])(&v18, v23);
    }
  }
}

void re::WrapDeformerModelUtil::positionOffsetsForWrapDataIndex(uint64_t *__return_ptr a1@<X8>, re::WrapDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 60);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 && *(v4 + 8) > a3)
  {
    v5 = *(v4 + 16) + 40 * a3;
    v23[0] = *(v5 + 32);
    v24 = 0;
    v25 = 0;
    v26 = [*(v5 + 32) length];
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v18, v23);
    if (v18 == 1)
    {
      v8 = v19;
      v7 = v20;
      v9 = v20 / 0xC;
      if (v7 >= 0xC)
      {
        v11 = 0;
        v12 = (v8 + 8);
        do
        {
          v13 = a1[1];
          if (v13 <= v11)
          {
            v27 = 0;
            memset(v36, 0, 80);
            v14 = MEMORY[0x1E69E9C10];
            v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v28 = 136315906;
            v29 = "operator[]";
            v30 = 1024;
            if (v15)
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v31 = 468;
            v32 = 2048;
            v33 = v11;
            v34 = 2048;
            v35 = v13;
            _os_log_send_and_compose_impl(v16, &v27, v36, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v17, v18);
            _os_crash_msg();
            __break(1u);
          }

          *&v10 = *(v12 - 1);
          DWORD2(v10) = *v12;
          *(a1[2] + 16 * v11++) = v10;
          v12 += 3;
        }

        while (v9 != v11);
      }
    }

    if (v18 == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v19);
    }

    else if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }

    if (v24 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_2[v24])(&v18, v23);
    }
  }
}

uint64_t re::WrapDeformerModelUtil::computeWrapDeformerModelSizeExcludingMetalBuffers(re::WrapDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 60);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[7];
  v4 = 2 * v2[4] + 16 * v3 + 72;
  if (v3)
  {
    v5 = (v2[8] + 8);
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

  v7 = v2[1];
  v8 = v4 + 40 * v7;
  if (v7)
  {
    v9 = (v2[2] + 8);
    do
    {
      if (*(v9 - 1))
      {
        v10 = strlen(*v9) + 1;
      }

      else
      {
        v10 = 0;
      }

      v8 += v10;
      v9 += 5;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void re::WrapDeformer::~WrapDeformer(re::WrapDeformer *this)
{
  v2 = 16;
  do
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
  }

  while (v2);
}

{
  v2 = 16;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (!v2)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06B10;
  return result;
}

void *re::internal::Callable<re::WrapDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D06B10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D06B78;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit(v2 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    if (*v2)
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = v2[2];
        v6 = 40 * v4;
        do
        {
          v7 = *(v5 + 4);
          if (v7)
          {

            *(v5 + 4) = 0;
          }

          v8 = *(v5 + 3);
          if (v8)
          {

            *(v5 + 3) = 0;
          }

          v9 = *(v5 + 2);
          if (v9)
          {

            *(v5 + 2) = 0;
          }

          re::StringID::destroyString(v5);
          v5 = (v5 + 40);
          v6 -= 40;
        }

        while (v6);
        (*(**v2 + 40))(*v2, v2[2]);
        v2[1] = 0;
        v2[2] = 0;
      }

      *v2 = 0;
    }

    v10 = *(*v3 + 40);

    return v10(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_12WrapDeformerENS2_17WrapDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphManager *re::RenderGraphManager::RenderGraphManager(re::RenderGraphManager *this)
{
  *(this + 6) = 0;
  *(this + 2) = 0;
  *this = 0u;
  *(this + 14) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 60) = 257;
  *(this + 122) = 1;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 156) = 0u;
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
  v2 = re::globalAllocators(this)[2];
  *(this + 94) = 0;
  *(this + 380) = 0;
  *(this + 400) = 0;
  *(this + 24) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 0;
  *(this + 83) = 0;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 79) = 0;
  *(this + 168) = 0;
  *(this + 368) = 0;
  *(this + 22) = 0u;
  *(this + 42) = v2;
  *(this + 43) = 0;
  *(this + 484) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 87) = 0;
  *(this + 680) = 0u;
  return this;
}

void re::RenderGraphManager::~RenderGraphManager(re::RenderGraphManager *this)
{
  re::RenderGraphManager::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 632);
  *(this + 61) = 0;
  ++*(this + 124);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 424);
  re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(this + 312);
  re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(this + 29);
  re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 23);
  re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
  re::RenderGraphProcessorContainer::reset(this);

  re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer(this);
}

re *re::RenderGraphManager::deinit(re::RenderGraphManager *this)
{
  v2 = *(this + 81);
  if (v2)
  {
    v3 = *(this + 83);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphProviderBase>("deinit", 128, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 81) = 0;
  ++*(this + 164);
  v6 = *(this + 66);
  if (v6)
  {
    v7 = 0;
    v8 = (*(this + 31) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 66);
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
    v10 = *(this + 31) + 40 * v7;
    re::StringID::StringID(v48, (v10 + 16));
    v49 = *(v10 + 32);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v48[0] >> 31) ^ (v48[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v48[0] >> 31) ^ (v48[0] >> 1))) >> 27));
    v12 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, v48, v11 ^ (v11 >> 31), &v50);
    if (HIDWORD(v51) != 0x7FFFFFFF)
    {
      v12 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(*(this + 19) + 72 * HIDWORD(v51) + 24, &v49);
      if (v12)
      {
        if (*(v12 + 2) > HIDWORD(v49))
        {
          v12 = re::internal::destroyPersistent<re::RenderGraphProviderBase>("deinit", 139, *(*(v12 + 4) + 8 * HIDWORD(v49)));
        }
      }
    }

    if (v48[0])
    {
      if (v48[0])
      {
      }
    }

    v13 = *(this + 66);
    if (v13 <= v7 + 1)
    {
      v13 = v7 + 1;
    }

    while (v13 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 31) + 40 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v7) = v13;
LABEL_24:
    ;
  }

  if (*(this + 41))
  {
    v14 = *(this + 40);
    if (v14)
    {
      memset_pattern16(*(this + 18), &unk_1E304C660, 4 * v14);
    }

    if (*(this + 42))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(this + 19) + v15));
        ++v16;
        v15 += 72;
      }

      while (v16 < *(this + 42));
    }

    *(this + 41) = 0;
    *(this + 42) = 0;
    v17 = *(this + 44) + 1;
    *(this + 43) = 0x7FFFFFFF;
    *(this + 44) = v17;
  }

  if (*(this + 53))
  {
    v18 = *(this + 52);
    if (v18)
    {
      memset_pattern16(*(this + 24), &unk_1E304C660, 4 * v18);
    }

    if (*(this + 54))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(this + 25) + v19));
        ++v20;
        v19 += 48;
      }

      while (v20 < *(this + 54));
    }

    *(this + 53) = 0;
    *(this + 54) = 0;
    v21 = *(this + 56) + 1;
    *(this + 55) = 0x7FFFFFFF;
    *(this + 56) = v21;
  }

  v22 = (this + 424);
  v50 = this + 424;
  v23 = *(this + 55);
  if (v23 >= 0x10)
  {
    v24 = 0;
    v25 = *v22;
    v26 = v23 >> 4;
    while (1)
    {
      v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v51 = v27 ^ 0xFFFFLL;
      if (v27 != 0xFFFFLL)
      {
        break;
      }

      v24 -= 16;
      ++v25;
      if (!--v26)
      {
        goto LABEL_47;
      }
    }

    v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
    v29 = v28 - v24;
    v52 = v28 - v24;
    if (v28 + 1 != v24)
    {
      do
      {
        re::internal::destroyPersistent<re::RenderGraphCompiled>("deinit", 147, *(*(v50 + 1) + 24 * v29 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v50);
        v29 = v52;
      }

      while (v52 != -1);
      v23 = *(this + 55);
    }
  }

LABEL_47:
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 56) = 0;
  *(this + 57) = v23;
  v50 = this + 424;
  if (v23 > 0xF)
  {
    v30 = 0;
    v31 = *v22;
    v32 = v23 >> 4;
    while (1)
    {
      v33 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v31), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v51 = v33 ^ 0xFFFFLL;
      if (v33 != 0xFFFFLL)
      {
        break;
      }

      v30 -= 16;
      ++v31;
      if (!--v32)
      {
        goto LABEL_55;
      }
    }

    v34 = __clz(__rbit64(v33 ^ 0xFFFFLL));
    v52 = v34 - v30;
    if (v34 + 1 != v30)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v50);
      }

      while (v52 != -1);
      v23 = *(this + 55);
    }

LABEL_55:
    if (v23 >= 0x10)
    {
      v35 = 0;
      *&v36 = -1;
      *(&v36 + 1) = -1;
      do
      {
        *(*(this + 53) + 16 * v35++) = v36;
      }

      while (v35 < *(this + 55) >> 4);
    }
  }

  result = *(this + 16);
  if (result)
  {
    result = re::RenderGraphResourceAllocationManager::deinit(result);
    v38 = *(this + 16);
    if (v38)
    {
      v39 = re::globalAllocators(result)[2];
      re::RenderGraphResourceAllocationManager::~RenderGraphResourceAllocationManager(v38);
      result = (*(*v39 + 40))(v39, v38);
    }

    *(this + 16) = 0;
  }

  v40 = *(this + 37);
  if (v40)
  {
    v41 = re::globalAllocators(result)[2];
    re::RenderGraphPersistentResourceManager::~RenderGraphPersistentResourceManager(v40);
    result = (*(*v41 + 40))(v41, v40);
    *(this + 37) = 0;
  }

  v42 = *(this + 35);
  if (v42)
  {
    v43 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v42 + 61));
    re::FixedArray<re::StringID>::deinit(v42 + 41);
    re::AttributeTable::~AttributeTable(v42);
    result = (*(*v43 + 40))(v43, v42);
    *(this + 35) = 0;
  }

  v44 = *(this + 36);
  if (v44)
  {
    v45 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v44 + 61));
    re::FixedArray<re::StringID>::deinit(v44 + 41);
    re::AttributeTable::~AttributeTable(v44);
    result = (*(*v45 + 40))(v45, v44);
    *(this + 36) = 0;
  }

  v46 = *(this + 86);
  if (v46)
  {
    v47 = re::globalAllocators(result)[2];
    (**v46)(v46);
    result = (*(*v47 + 40))(v47, v46);
    *(this + 86) = 0;
  }

  return result;
}

double re::RenderGraphManager::addGraphToCache(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24) != -1)
  {
    v8 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24);
    re::internal::destroyPersistent<re::RenderGraphCompiled>("addGraphToCache", 26, *(*(a1 + 432) + 24 * v8 + 8));
  }

  if ((*(a1 + 380) & 1) == 0)
  {
    v9 = (a1 + 488);
    v10 = (a1 + 504);
    v11 = *(a1 + 488);
    v12 = (a1 + 504);
    if (v11)
    {
      v13 = 8 * v11;
      v12 = (a1 + 504);
      while (*v12 != v24)
      {
        v12 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    if (v12 != &v9[v11 + 2])
    {
      re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt((a1 + 488), (v12 - v10) >> 3);
      v11 = *v9;
    }

LABEL_11:
    if (v11 == 16)
    {
      re::DynamicInlineArray<media::FloatAnimation *,256ul>::removeStableAt((a1 + 488), 0xFuLL);
    }

    v14 = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity((a1 + 488), v7);
    if (v14)
    {
      v15 = *v9;
      v16 = &v10[8 * *v9];
      if (*v9)
      {
        *v16 = *(v16 - 1);
        if (v16 - 8 != v10)
        {
          v14 = memmove((a1 + 512), (a1 + 504), v16 - 8 - v10);
          v15 = *v9;
        }

        v16 = (a1 + 504);
      }

      *v16 = v24;
      *(a1 + 488) = v15 + 1;
      ++*(a1 + 496);
    }

    v17 = *(a1 + 672) + 1;
    *(a1 + 672) = v17;
    v18 = a4 & 0xFFFFFFFFFFFFFFFLL;
    if ((a4 & 0xFFFFFFFFFFFFFFFuLL) - *(a1 + 680) >= 0x80)
    {
      if (v17 >= 0x20)
      {
        v19 = *re::graphicsLogObjects(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 672);
          v21 = v18 - *(a1 + 680);
          *buf = 67109376;
          *&buf[4] = v20;
          *&buf[8] = 2048;
          *&buf[10] = v21;
          _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "WARNING: %u render graphs were cached over %llu frames.A provider might be returning a frequently changing hash.", buf, 0x12u);
        }
      }

      *(a1 + 672) = 0;
      *(a1 + 680) = v18;
    }
  }

  *buf = a3;
  *&buf[8] = a4;
  v22 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v24);
  if (v22 == -1)
  {
    *&result = re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd((a1 + 424), &v24, buf).u64[0];
  }

  else
  {
    result = *buf;
    *(*(a1 + 432) + 24 * v22 + 8) = *buf;
  }

  return result;
}

uint64_t re::RenderGraphManager::getCachedGraph(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = a2;
  v5 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 424), &v8);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a1 + 432) + 24 * v5;
  if ((*(v6 + 16) & 0xFFFFFFFFFFFFFFFuLL) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    return 0;
  }

  else
  {
    return *(v6 + 8);
  }
}

void re::RenderGraphManager::deleteStaleGraphs(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v46 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v43, a3, 16);
  v6 = a1[30].i64[1];
  if (v6)
  {
    v7 = &a1[31].i8[8 * v6 + 8];
    for (i = &a1[31].i64[1]; i != v7; ++i)
    {
      v9 = *i;
      v39[0] = v9;
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v11 = v10 ^ (v10 >> 31);
      if (DWORD2(v44))
      {
        v12 = v11 % DWORD2(v44);
        v13 = *(*(&v43 + 1) + 4 * v12);
        if (v13 != 0x7FFFFFFF)
        {
          while (*(v44 + 24 * v13 + 16) != v9)
          {
            LODWORD(v13) = *(v44 + 24 * v13 + 8) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          continue;
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

LABEL_9:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(&v43, v12, v11, v39, v39);
      ++HIDWORD(v46);
    }
  }

  v14 = a1[28].u64[0];
  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v41 = 0;
  v39[0] = a3;
  re::DynamicArray<float *>::setCapacity(v39, v14);
  ++v41;
  v37[0] = &a1[26].u64[1];
  v15 = a1[27].u64[1];
  if (v15 >= 0x10)
  {
    v16 = 0;
    v17 = a1[26].i64[1];
    v18 = v15 >> 4;
    while (1)
    {
      v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v37[1] = v19 ^ 0xFFFFLL;
      if (v19 != 0xFFFFLL)
      {
        break;
      }

      v16 -= 16;
      ++v17;
      if (!--v18)
      {
        goto LABEL_22;
      }
    }

    v20 = __clz(__rbit64(v19 ^ 0xFFFFLL));
    v21 = v20 - v16;
    v38 = v20 - v16;
    if (v20 + 1 != v16)
    {
      v22 = a2 & 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v23 = (*(v37[0] + 8) + 24 * v21);
        if ((v23[2] & 0xFFFFFFFFFFFFFFFuLL) <= v22 && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v43, (*(v37[0] + 8) + 24 * v21)))
        {
          re::DynamicArray<re::TransitionCondition *>::add(v39, v23);
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v37);
        v21 = v38;
      }

      while (v38 != -1);
    }
  }

LABEL_22:
  if (v40)
  {
    v24 = v42;
    v25 = 8 * v40;
    do
    {
      v37[0] = *v24;
      v26 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&a1[26].i64[1], v37);
      re::internal::destroyPersistent<re::RenderGraphCompiled>("deleteStaleGraphs", 96, *(a1[27].i64[0] + 24 * v26 + 8));
      v27 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&a1[26].i64[1], v37);
      if (v27 != -1)
      {
        v28 = (a1[26].i64[1] + (v27 & 0xFFFFFFFFFFFFFFF0));
        v29.i64[0] = -1;
        v29.i64[1] = -1;
        v30 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v28, v29), xmmword_1E304FAD0)))), 0x3830282018100800);
        v31 = *&v30 ? -1 : 0x80;
        v28->i8[v27 & 0xF] = v31;
        v32 = a1[27].u64[1];
        v33 = *(a1[27].i64[0] + 24 * v27);
        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
        a1[29].i64[0] ^= (v34 >> 31) ^ v34;
        v35.i64[0] = -1;
        v35.i64[1] = *&v30 != 0;
        v36 = vaddq_s64(a1[28], v35);
        a1[28] = v36;
        if (v32 >= 0x11 && v36.i64[0] < v32 >> 2)
        {
          re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(&a1[26].i64[1], 0);
        }
      }

      ++v24;
      v25 -= 8;
    }

    while (v25);
  }

  if (v39[0] && v42)
  {
    (*(*v39[0] + 40))();
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v43);
}

_anonymous_namespace_ *re::RenderGraphManager::init(re::RenderGraphManager *this, id *a2)
{
  if (*(this + 16))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) m_resourceAllocationManager was not null before init was called.", "m_resourceAllocationManager == nullptr", "init", 103);
    _os_crash("assertion failure: (m_resourceAllocationManager == nullptr) m_resourceAllocationManager was not null before init was called.");
    __break(1u);
    goto LABEL_8;
  }

  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 1776, 8);
  v6 = re::RenderGraphResourceAllocationManager::RenderGraphResourceAllocationManager(v5);
  *(this + 16) = v6;
  re::RenderGraphResourceAllocationManager::init(v6, a2);
  if (*(this + 37))
  {
LABEL_8:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) m_renderGraphPersistentResourceManager was not null before init was called.", "m_renderGraphPersistentResourceManager == nullptr", "init", 109);
    _os_crash("assertion failure: (m_renderGraphPersistentResourceManager == nullptr) m_renderGraphPersistentResourceManager was not null before init was called.");
    __break(1u);
    goto LABEL_9;
  }

  v9 = re::globalAllocators(v7);
  v10 = (*(*v9[2] + 32))(v9[2], 120, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 52) = 0x7FFFFFFFLL;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 100) = 0x7FFFFFFFLL;
  *(v10 + 112) = 3;
  *(this + 37) = v10;
  *v10 = 0;
  *(v10 + 8) = a2;
  if (!*re::ObjCObject::operator=(v10, a2 + 26))
  {
LABEL_9:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) m_persistentDataManager could not init", "initSuccess", "init", 113);
    result = _os_crash("assertion failure: (initSuccess) m_persistentDataManager could not init");
    __break(1u);
    return result;
  }

  re::RenderGraphManager::initFullscreenMeshPart(this, a2);
  re::RenderGraphManager::initCubeMeshPart(this, a2);
  *(this + 87) = a2;
  re::mtl::Device::isPhysicalHardware((a2 + 26));

  return re::RenderGraphProcessorManager::addDefaultProcessors(this);
}

uint64_t re::RenderGraphManager::initFullscreenMeshPart(uint64_t this, id *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(this + 280))
  {
    v3 = this;
    v26 = 0;
    v23[1] = 0;
    v24 = 0;
    v23[0] = 0;
    v25 = 0;
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v23, 3uLL);
    v30[0] = xmmword_1E30D66D0;
    v30[1] = unk_1E30D66E0;
    v30[2] = xmmword_1E30D66F0;
    v30[3] = unk_1E30D6700;
    v4 = [a2[26] newBufferWithBytes:v30 length:64 options:0];
    LOWORD(v18[0]) = 287;
    *(&v18[0] + 1) = v4;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v4 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v29, v18 + 8);
    }

    v19 = -1;
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      (*(**&v17[0] + 40))();
    }

    if (v4)
    {
    }

    v29[0] = xmmword_1E30D6710;
    v29[1] = unk_1E30D6720;
    v5 = [a2[26] newBufferWithBytes:v29 length:32 options:0];
    LOWORD(v18[0]) = 285;
    *(&v18[0] + 1) = v5;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v5 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v16, v18 + 8);
    }

    v19 = -1;
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      (*(**&v17[0] + 40))();
    }

    if (v5)
    {
    }

    v28 = 196610;
    v27 = 0x200010000;
    v6 = [a2[26] newBufferWithBytes:&v27 length:12 options:0];
    LOWORD(v18[0]) = 49;
    *(&v18[0] + 1) = v6;
    v19 = 0;
    v20 = 0;
    v21 = [(_anonymous_namespace_ *)v6 length];
    v22 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v23, v17);
    if (v19 != -1)
    {
      (off_1F5D06BE8[v19])(v16, v18 + 8);
    }

    v19 = -1;
    v7 = *&v17[0];
    if (*&v17[0] && (BYTE8(v17[0]) & 1) != 0)
    {
      v7 = (*(**&v17[0] + 40))();
    }

    if (v6)
    {
    }

    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v16[0] = vnegq_f32(v8);
    v16[1] = v8;
    v9 = re::globalAllocators(v7);
    v10 = (*(*v9[2] + 32))(v9[2], 544, 16);
    v14 = 0x9D2E0E4D76250F84;
    v15 = "FullscreenQuad";
    v17[0] = xmmword_1E3047670;
    v17[1] = xmmword_1E3047680;
    v18[0] = xmmword_1E30476A0;
    v18[1] = xmmword_1E30474D0;
    v13 = 0;
    v12 = 0;
    v11 = re::MeshPart::MeshPart(v10, &v14, 0, v26, v24, 6, 4, 1, v16, 0, v17, &v12, -1, 0);
    *(v3 + 280) = v11;
    if (v14)
    {
      if (v14)
      {
      }
    }

    v14 = 0;
    v15 = &str_67;
    return re::DynamicArray<re::NamedVertexBuffer>::deinit(v23);
  }

  return this;
}

uint64_t re::RenderGraphManager::initCubeMeshPart(uint64_t this, id *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(this + 288))
  {
    v3 = this;
    v30 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    v29 = 0;
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v27, 2uLL);
    v33[4] = xmmword_1E30D6770;
    v33[5] = unk_1E30D6780;
    v33[6] = xmmword_1E30D6790;
    v33[7] = unk_1E30D67A0;
    v33[0] = xmmword_1E30D6730;
    v33[1] = unk_1E30D6740;
    v33[2] = xmmword_1E30D6750;
    v33[3] = unk_1E30D6760;
    v4 = [a2[26] newBufferWithBytes:v33 length:128 options:0];
    LOWORD(v22[0]) = 287;
    *(&v22[0] + 1) = v4;
    v23 = 0;
    v24 = 0;
    v25 = [(_anonymous_namespace_ *)v4 length];
    v26 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v27, v21);
    if (v23 != -1)
    {
      (off_1F5D06BE8[v23])(v31, v22 + 8);
    }

    v23 = -1;
    if (*&v21[0] && (BYTE8(v21[0]) & 1) != 0)
    {
      (*(**&v21[0] + 40))();
    }

    if (v4)
    {
    }

    v31[2] = xmmword_1E30D67D0;
    v31[3] = unk_1E30D67E0;
    v32 = 0x4000300070003;
    v31[0] = xmmword_1E30D67B0;
    v31[1] = unk_1E30D67C0;
    v5 = [a2[26] newBufferWithBytes:v31 length:72 options:0];
    LOWORD(v22[0]) = 49;
    *(&v22[0] + 1) = v5;
    v23 = 0;
    v24 = 0;
    v25 = [(_anonymous_namespace_ *)v5 length];
    v26 = 0xFFFFFFFF00000000;
    re::DynamicArray<re::NamedVertexBuffer>::add(v27, v21);
    if (v23 != -1)
    {
      (off_1F5D06BE8[v23])(v20, v22 + 8);
    }

    v23 = -1;
    v6 = *&v21[0];
    if (*&v21[0] && (BYTE8(v21[0]) & 1) != 0)
    {
      v6 = (*(**&v21[0] + 40))();
    }

    if (v5)
    {
    }

    __asm
    {
      FMOV            V0.4S, #-1.0
      FMOV            V1.4S, #1.0
    }

    v20[0] = _Q0;
    v20[1] = _Q1;
    v13 = re::globalAllocators(v6);
    v14 = (*(*v13[2] + 32))(v13[2], 544, 16);
    v18 = 0x38C142D1FC4;
    v19 = "CubeMesh";
    v21[0] = xmmword_1E3047670;
    v21[1] = xmmword_1E3047680;
    v22[0] = xmmword_1E30476A0;
    v22[1] = xmmword_1E30474D0;
    v17 = 0;
    v16 = 0;
    v15 = re::MeshPart::MeshPart(v14, &v18, 0, v30, v28, 36, 8, 1, v20, 0, v21, &v16, -1, 0);
    *(v3 + 288) = v15;
    if (v18)
    {
      if (v18)
      {
      }
    }

    v18 = 0;
    v19 = &str_67;
    return re::DynamicArray<re::NamedVertexBuffer>::deinit(v27);
  }

  return this;
}

re *re::internal::destroyPersistent<re::RenderGraphProviderBase>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(uint64_t a1, int *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 8;
  }
}

uint64_t re::RenderGraphManager::cachePrioritizedProviders(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 28);
  v46 = 0;
  v43[1] = 0;
  v44 = 0;
  v45 = 0;
  v43[0] = a4;
  re::DynamicArray<int>::setCapacity(v43, v8);
  ++v45;
  v9 = *(a3 + 32);
  if (v9)
  {
    v10 = 0;
    v11 = *(a3 + 16);
    while (1)
    {
      v12 = *v11;
      v11 += 14;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 != v9)
  {
    v13 = *(a3 + 16);
    do
    {
      re::DynamicArray<int>::add(v43, (v13 + 56 * v10 + 4));
      if (*(a3 + 32) <= (v10 + 1))
      {
        v14 = v10 + 1;
      }

      else
      {
        v14 = *(a3 + 32);
      }

      v13 = *(a3 + 16);
      while (v14 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(v13 + 56 * v10) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v10) = v14;
LABEL_17:
      ;
    }

    while (v10 != v9);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v16 = v44;
  v41 = v44;
  v42 = 0;
  v40 = v4;
  if (v44)
  {
    if (v44 >> 61)
    {
LABEL_47:
      re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v16);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v36, v37);
      __break(1u);
LABEL_48:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v17 = (*(*v4 + 32))(v4, 8 * v44, 8);
    v42 = v17;
    if (!v17)
    {
      goto LABEL_48;
    }

    v19 = v17;
    v20 = v17;
    if (v16 != 1)
    {
      bzero(v17, 8 * v16 - 8);
      v20 = &v19[v16 - 1];
    }

    *v20 = 0;
    if (v44)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = 0xBF58476D1CE4E5B9 * (*(v46 + v21) ^ (*(v46 + v21) >> 30));
        re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a3, (v46 + v21), (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), &v56);
        if (v16 <= v22)
        {
          break;
        }

        v24 = *(a3 + 16) + 56 * HIDWORD(v56);
        v19[v22++] = *(*(v24 + 40) + 8 * *(v24 + 24) - 8);
        v21 += 4;
        if (v44 <= v22)
        {
          goto LABEL_27;
        }
      }

      v47 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v51 = 468;
      v52 = 2048;
      v53 = v22;
      v54 = 2048;
      v55 = v16;
      _os_log_send_and_compose_impl(v35, &v47, &v56, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v38, v39);
      _os_crash_msg();
      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_27:
  re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v56, a1 + 184, a2);
  v25 = HIDWORD(v56);
  if (HIDWORD(v56) != 0x7FFFFFFF)
  {
    v26 = *(a1 + 200);
    v27 = (v26 + 48 * HIDWORD(v56));
    v28 = *v27 & 0x7FFFFFFF;
    if (v57 == 0x7FFFFFFF)
    {
      *(*(a1 + 192) + 4 * DWORD2(v56)) = v28;
    }

    else
    {
      *(v26 + 48 * v57) = *(v26 + 48 * v57) & 0x80000000 | v28;
    }

    re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v27);
    *(*(a1 + 200) + 48 * v25) = *(*(a1 + 200) + 48 * v25) & 0x80000000 | *(a1 + 220);
    --*(a1 + 212);
    v29 = *(a1 + 224) + 1;
    *(a1 + 220) = v25;
    *(a1 + 224) = v29;
  }

  if (v16)
  {
    v56 = 0uLL;
    *&v57 = 0;
    re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v56, a1 + 184, a2);
    if (HIDWORD(v56) == 0x7FFFFFFF)
    {
      v30 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry((a1 + 184), DWORD2(v56), v56);
      re::StringID::StringID((v30 + 8), a2);
      re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray((v30 + 24), &v40);
      ++*(a1 + 224);
      v4 = v40;
      v31 = v41 == 0;
      if (!v40)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = 0;
      if (!v4)
      {
        goto LABEL_39;
      }
    }

    if (!v31)
    {
      (*(*v4 + 40))(v4, v42);
    }
  }

LABEL_39:
  result = v43[0];
  if (v43[0])
  {
    if (v46)
    {
      return (*(*v43[0] + 40))();
    }
  }

  return result;
}

void re::RenderGraphManager::addProviderInternal(re::StringID *__return_ptr a1@<X8>, re::RenderGraphManager *this@<X0>, const char *a3@<X1>, const re::RenderGraphProviderBase *a4@<X2>, int a5@<W3>, int a6@<W4>)
{
  v7 = a5;
  v44 = a5;
  *&v43.var0 = 0;
  v43.var1 = &str_67;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v43.var0 >> 31) ^ (*&v43.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v43.var0 >> 31) ^ (*&v43.var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, &v43, v12 ^ (v12 >> 31), &v46);
  if (HIDWORD(v47) == 0x7FFFFFFF)
  {
    v13 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(this + 17, v47, v46);
    re::StringID::StringID((v13 + 8), &v43);
    *(v13 + 24) = 0u;
    v14 = v13 + 24;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 36) = 0x7FFFFFFF;
    ++*(this + 44);
    v7 = v44;
  }

  else
  {
    v14 = *(this + 19) + 72 * HIDWORD(v47) + 24;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v15 = 0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(v14, &v44, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v46);
  if (HIDWORD(v47) == 0x7FFFFFFF)
  {
    v16 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(v14, v47, v46);
    v17 = v44;
    *(v16 + 8) = 0;
    v18 = v16 + 8;
    *(v16 + 4) = v17;
    *(v16 + 40) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    ++*(v14 + 40);
  }

  else
  {
    v18 = *(v14 + 16) + 56 * HIDWORD(v47) + 8;
  }

  re::StringID::invalid(a1);
  *(a1 + 2) = 0;
  v19 = re::StringID::operator=(a1, &v43);
  *(a1 + 4) = v44;
  v20 = *(v18 + 16);
  *(a1 + 5) = v20;
  v21 = *(v18 + 8);
  if (v20 >= v21)
  {
    v22 = v20 + 1;
    if (v21 < v20 + 1)
    {
      if (*v18)
      {
        v23 = 2 * v21;
        if (!v21)
        {
          v23 = 8;
        }

        if (v23 <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v19 = re::DynamicArray<float *>::setCapacity(v18, v24);
      }

      else
      {
        v19 = re::DynamicArray<float *>::setCapacity(v18, v22);
        ++*(v18 + 24);
      }
    }

    v20 = *(v18 + 16);
  }

  *(*(v18 + 32) + 8 * v20) = a4;
  *(v18 + 16) = v20 + 1;
  ++*(v18 + 24);
  if (!a6)
  {
    goto LABEL_37;
  }

  re::StringID::StringID(&v46, a1);
  v48 = *(a1 + 2);
  v25 = re::Hash<re::ProviderHandle>::operator()(&v45, &v46);
  v26 = v25;
  if (v46)
  {
    if (v46)
    {
    }
  }

  v27 = *(this + 64);
  if (!v27)
  {
    LODWORD(v28) = 0;
    goto LABEL_31;
  }

  v28 = v26 % v27;
  v29 = *(*(this + 30) + 4 * (v26 % v27));
  if (v29 == 0x7FFFFFFF)
  {
LABEL_31:
    v34 = *(this + 67);
    if (v34 == 0x7FFFFFFF)
    {
      v34 = *(this + 66);
      v35 = v34;
      if (v34 == v27)
      {
        re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(this + 29, (2 * *(this + 65)));
        LODWORD(v28) = v26 % *(this + 64);
        v35 = *(this + 66);
      }

      *(this + 66) = v35 + 1;
      v36 = *(this + 31);
      v37 = *(v36 + 40 * v34 + 8);
    }

    else
    {
      v36 = *(this + 31);
      v37 = *(v36 + 40 * v34 + 8);
      *(this + 67) = v37 & 0x7FFFFFFF;
    }

    *(v36 + 40 * v34 + 8) = v37 | 0x80000000;
    *(*(this + 31) + 40 * v34 + 8) = *(*(this + 31) + 40 * v34 + 8) & 0x80000000 | *(*(this + 30) + 4 * v28);
    *(*(this + 31) + 40 * v34) = v26;
    v38 = *(this + 31) + 40 * v34;
    v19 = re::StringID::StringID((v38 + 16), a1);
    *(v38 + 32) = *(a1 + 2);
    *(*(this + 30) + 4 * v28) = v34;
    ++*(this + 65);
    ++*(this + 68);
    goto LABEL_37;
  }

  v40 = *(this + 64);
  v41 = v26 % v27;
  v42 = v26;
  v30 = *(this + 31);
  v32 = *(a1 + 4);
  v31 = *(a1 + 5);
  while (1)
  {
    v33 = v30 + 40 * v29;
    v19 = re::StringID::operator==((v33 + 16), a1);
    if (v19)
    {
      if (*(v33 + 32) == v32 && *(v33 + 36) == v31)
      {
        break;
      }
    }

    v29 = *(v30 + 40 * v29 + 8) & 0x7FFFFFFF;
    if (v29 == 0x7FFFFFFF)
    {
      LODWORD(v28) = v41;
      v26 = v42;
      LODWORD(v27) = v40;
      goto LABEL_31;
    }
  }

LABEL_37:
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }
}

uint64_t re::RenderGraphManager::addProvider@<X0>(re *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, re::StringID *a6@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 120, 8);
  v14 = re::RenderGraphManager::providerCount(a1, a2);
  re::DynamicString::format(&v17, "%s_%zu", v15, a2, v14);
  v23 = *(a3 + 24);
  v24 = 0;
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(v22, a3);
  v20 = *(a4 + 24);
  v21 = 0;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(v19, a4);
  re::InlineRenderGraphProvider::InlineRenderGraphProvider(v13, &v17, v22, v19);
  re::RenderGraphManager::addProviderInternal(a6, a1, a2, v13, a5, 1);
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v19);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v22);
  result = v17;
  if (v17)
  {
    if (v18)
    {
      return (*(*v17 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphManager::providerCount(re::RenderGraphManager *this, const char *a2)
{
  v9 = 0;
  v10 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, &v9, v4 ^ (v4 >> 31), v11);
  v6 = v12;
  if (v12 == 0x7FFFFFFF)
  {
    if (v9)
    {
      if (v9)
      {
      }
    }

    return 0;
  }

  else
  {
    v8 = *(this + 19);
    if (v9)
    {
      if (v9)
      {
      }
    }

    return *(v8 + 72 * v6 + 52);
  }
}

uint64_t re::RenderGraphManager::removeProvider(uint64_t a1, uint64_t a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 136, a2, v4 ^ (v4 >> 31), &v12);
  if (v13 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 152) + 72 * v13;
  result = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::tryGet(v5 + 24, (a2 + 16));
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *(a2 + 20);
  if (*(result + 16) <= v8)
  {
    return 0;
  }

  v9 = *(*(result + 32) + 8 * v8);
  re::DynamicArray<re::Allocator const*>::removeStableAt(result, v8);
  v10 = re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::contains(a1 + 232, a2);
  if (v10)
  {
    v12 = v9;
    re::DynamicArray<re::TransitionCondition *>::add((a1 + 632), &v12);
    v10 = re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::remove(a1 + 232, a2);
  }

  if (!*(v7 + 16))
  {
    v10 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(v5 + 24, (a2 + 16));
  }

  if (!*(v5 + 52))
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 136, a2, v11 ^ (v11 >> 31), &v12);
    v10 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 136, &v12);
  }

  return 1;
}

BOOL re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::contains(uint64_t a1, uint64_t a2)
{
  re::StringID::StringID(&v13, a2);
  v14 = *(a2 + 16);
  v4 = re::Hash<re::ProviderHandle>::operator()(&v15, &v13);
  v5 = v4;
  if (v13)
  {
    if (v13)
    {
    }
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  while (1)
  {
    v11 = v8 + 40 * v7;
    result = re::StringID::operator==((v11 + 16), a2);
    if (result && *(v11 + 32) == v9 && *(v11 + 36) == v10)
    {
      break;
    }

    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  re::StringID::StringID(&v22, a2);
  v23 = *(a2 + 16);
  v4 = re::Hash<re::ProviderHandle>::operator()(&v24, &v22);
  v5 = v4;
  if (v22)
  {
    if (v22)
    {
    }
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    return 0;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v20 = *(a1 + 8);
  v21 = v7;
  v9 = *(a1 + 16);
  v10 = 0x7FFFFFFFLL;
  v12 = *(a2 + 16);
  v11 = *(a2 + 20);
  while (1)
  {
    v13 = v9 + 40 * v8;
    if (re::StringID::operator==((v13 + 16), a2) && *(v13 + 32) == v12 && *(v13 + 36) == v11)
    {
      break;
    }

    v10 = v8;
    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v15 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
  if (v10 == 0x7FFFFFFF)
  {
    *(v20 + 4 * v21) = v15;
  }

  else
  {
    *(v9 + 40 * v10 + 8) = *(v9 + 40 * v10 + 8) & 0x80000000 | v15;
  }

  v16 = *(a1 + 16);
  v17 = v16 + 40 * v8;
  v18 = *(v17 + 8);
  if (v18 < 0)
  {
    *(v17 + 8) = v18 & 0x7FFFFFFF;
    re::StringID::destroyString((v17 + 16));
    v16 = *(a1 + 16);
  }

  v19 = *(a1 + 40);
  *(v16 + 40 * v8 + 8) = *(v16 + 40 * v8 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v19 + 1;
  return 1;
}

BOOL re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::remove(uint64_t a1, int *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(a1, v5);
}

void re::RenderGraphManager::getProviderPointers(uint64_t *__return_ptr a1@<X8>, re::RenderGraphManager *this@<X0>, const char *a3@<X1>, re::Allocator *a4@<X2>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
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

  v19[0] = 2 * v8;
  v19[1] = a3;
  v12 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, this + 184, v19);
  if (v22 == 0x7FFFFFFF)
  {
    v13 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = a3;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Attempted to emit graph of type %s but no cached providers were found.", buf, 0xCu);
    }

    a1[1] = 0;
    a1[2] = 0;
    *a1 = a4;
  }

  else
  {
    v14 = *(this + 25) + 48 * v22;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    re::FixedArray<unsigned long>::init<>(a1, a4, v16);
    if (a1[1] != v16)
    {
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
      __break(1u);
    }

    if (v16)
    {
      v18 = a1[2];

      memmove(v18, v15, 8 * v16);
    }
  }
}

re *re::RenderGraphManager::deleteRemovedProviders(re *this)
{
  v1 = this;
  v2 = *(this + 81);
  if (v2)
  {
    v3 = *(this + 83);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::RenderGraphProviderBase>("deleteRemovedProviders", 291, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 81) = 0;
  ++*(v1 + 164);
  return this;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep re::RenderGraphManager::checkDisableTimeouts(std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep this)
{
  v1 = this;
  if (*(this + 412) == 1)
  {
    this = std::chrono::steady_clock::now().__d_.__rep_;
    v2 = 0x41CDCD6500000000;
    LOBYTE(v2) = *(v1 + 400);
    if (*(v1 + 392) + (this - *(v1 + 384)) / 1000000000.0 * v2 > *(v1 + 408))
    {
      *(v1 + 412) = 0;
    }
  }

  if (*(v1 + 380) == 1 && *(v1 + 376) > 0.0)
  {
    this = std::chrono::steady_clock::now().__d_.__rep_;
    v3 = 0x41CDCD6500000000;
    LOBYTE(v3) = *(v1 + 368);
    if (*(v1 + 360) + (this - *(v1 + 352)) / 1000000000.0 * v3 > *(v1 + 376))
    {
      *(v1 + 380) = 0;
    }
  }

  return this;
}

uint64_t re::RenderGraphManager::processRenderGraphErrors(re::RenderGraphManager *this, re::RenderFrame *a2, re::RenderFrameWorkload *a3)
{
  result = *(this + 43);
  if (result)
  {
    *(this + 416) = 1;
    v5 = *(a2 + 424);
    v7[0] = *(a2 + 426);
    v7[1] = v5;
    v6 = a3;
    result = (*(*result + 16))(result, &v6, v7);
    *(this + 416) = 0;
  }

  return result;
}

re *re::RenderGraphManager::setDataPipeFactory(re *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 86);
  if (v4)
  {
    v5 = re::globalAllocators(result)[2];
    (**v4)(v4);
    result = (*(*v5 + 40))(v5, v4);
  }

  *(v3 + 86) = a2;
  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(uint64_t a1))(void)
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

double re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
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

uint64_t re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameWorkload *,re::Slice<re::DetailedError>)>::destroyCallable(a1);
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

double re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 72;
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

double re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    return re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v2);
  }

  return v3;
}

double re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 8);
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

double re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 48;
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

_DWORD *re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    return re::FixedArray<CoreIKTransform>::deinit(v2);
  }

  return result;
}

uint64_t re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 0xFuLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
  __break(1u);
  return result;
}

int64x2_t re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
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
  v16 = 3 * (v13 + 16 * v11);
  v17 = a1[1] + 24 * (v13 + 16 * v11);
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
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = *(a1[1] + 8 * v16) ^ (*(a1[1] + 8 * v16) >> 30);
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  a1[5] ^= (v22 >> 31) ^ v22;
  return result;
}

double re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v26, 0, sizeof(v26));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v26, v9, v4);
  v24[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v25 = v15 - v11;
    if (v15 + 1 != v11)
    {
      do
      {
        re::HashBrown<unsigned long long,re::RenderGraphManager::CachedRenderGraph,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 24 * v16), (*(v24[0] + 8) + 24 * v16 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v16 = v25;
      }

      while (v25 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v17 = *(&v26[3] + 1);
  *(&v26[3] + 1) = *(a1 + 56);
  v18 = v26[0];
  v19 = v26[1];
  v26[0] = *a1;
  *&v26[1] = v10;
  v20 = v26[2];
  v21 = *(a1 + 40);
  *(a1 + 48) = *&v26[3];
  *(a1 + 56) = v17;
  *(&v26[2] + 8) = v21;
  v22 = *(a1 + 24);
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(&v26[1] + 8) = v22;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v26);
}

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::findEntry<int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 56 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
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
      if (*(v7 + 56 * v8 + 4) == *a2)
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

BOOL re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 48 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 48 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 48 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 48 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 48 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = a1[2];
          *&v33[16] = v13;
          a1[2] = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 3);
          v14 = *&v33[32];
          *(a1 + 3) = v15;
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
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 6), v21);
                v23 = *(v19 + 8);
                v22[1] = v22[1] & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v22[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v22[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v33[16];
                v24 = (*&v33[16] + v17);
                v22[4] = 0;
                v22[5] = 0;
                v22[3] = 0;
                v25 = v24[4];
                v22[3] = v24[3];
                v22[4] = v25;
                v24[3] = 0;
                v24[4] = 0;
                v26 = v22[5];
                v22[5] = v24[5];
                v24[5] = v26;
                v16 = *&v33[32];
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v33);
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

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v27 = a1[2];
    v28 = *(v27 + 48 * v4);
  }

  else
  {
    v27 = a1[2];
    v28 = *(v27 + 48 * v4);
    *(a1 + 9) = v28 & 0x7FFFFFFF;
  }

  v30 = 48 * v4;
  *(v27 + v30) = v28 | 0x80000000;
  v31 = a1[1];
  *(v27 + v30) = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v27 + 48 * v4;
}

void re::HashTable<re::StringID,re::FixedArray<re::RenderGraphProviderBase const*>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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

uint64_t re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = a1[2];
          *&v33[16] = v13;
          a1[2] = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 3);
          v14 = *&v33[32];
          *(a1 + 3) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 60;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 60) & 0x80000000) != 0)
              {
                v20 = 0xBF58476D1CE4E5B9 * ((*(v19 - 52) >> 31) ^ (*(v19 - 52) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 6), v21);
                v23 = *(v19 - 52);
                *(v22 + 8) = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 8) = *(v19 - 52) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 16) = *(v19 - 44);
                *(v19 - 44) = &str_67;
                *(v19 - 52) = 0;
                v13 = *&v33[16];
                v24 = (*&v33[16] + v18);
                *(v22 + 24) = 0u;
                *(v22 + 56) = 0;
                *(v22 + 40) = 0u;
                *(v22 + 60) = 0x7FFFFFFFLL;
                *(v22 + 24) = *(v24 - 9);
                *(v24 - 9) = 0;
                v25 = *(v22 + 32);
                *(v22 + 32) = *(v24 - 7);
                *(v24 - 7) = v25;
                v26 = *(v22 + 40);
                *(v22 + 40) = *(v24 - 5);
                *(v24 - 5) = v26;
                *(v22 + 48) = *(v24 - 3);
                *(v24 - 3) = 0;
                LODWORD(v26) = *(v22 + 52);
                *(v22 + 52) = *(v24 - 2);
                *(v24 - 2) = v26;
                LODWORD(v26) = *(v22 + 56);
                *(v22 + 56) = *(v24 - 1);
                *(v24 - 1) = v26;
                LODWORD(v26) = *(v22 + 60);
                *(v22 + 60) = *v24;
                *v24 = v26;
                ++*(v22 + 64);
                v16 = *&v33[32];
              }

              ++v17;
              v18 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v33);
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

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v27 = a1[2];
    v28 = *(v27 + 72 * v4);
  }

  else
  {
    v27 = a1[2];
    v28 = *(v27 + 72 * v4);
    *(a1 + 9) = v28 & 0x7FFFFFFF;
  }

  v30 = 72 * v4;
  *(v27 + v30) = v28 | 0x80000000;
  v31 = a1[1];
  *(v27 + v30) = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v27 + 72 * v4;
}

void re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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

uint64_t re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = a1[2];
          *&v29[16] = v13;
          a1[2] = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 3);
          v14 = *&v29[32];
          *(a1 + 3) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 24;
            do
            {
              if ((*(v18 - 24) & 0x80000000) != 0)
              {
                v19 = re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 6), *(v18 + 24));
                *(v19 + 4) = *(v18 - 20);
                *(v19 + 40) = 0;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                *(v19 + 8) = 0;
                v20 = *(v18 - 8);
                *(v19 + 8) = *(v18 - 16);
                *(v19 + 16) = v20;
                *(v18 - 16) = 0;
                *(v18 - 8) = 0;
                v21 = *(v19 + 24);
                *(v19 + 24) = *v18;
                *v18 = v21;
                v22 = *(v19 + 40);
                *(v19 + 40) = *(v18 + 16);
                *(v18 + 16) = v22;
                ++*(v18 + 8);
                ++*(v19 + 32);
              }

              v18 += 56;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v29);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v23 = a1[2];
    v24 = *(v23 + 56 * v5);
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 56 * v5);
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 56 * v5;
  *v26 = v24 | 0x80000000;
  v27 = a1[1];
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 48) = a3;
  ++*(a1 + 7);
  return v23 + 56 * v5;
}

void re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
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

unint64_t re::Hash<re::ProviderHandle>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 73244475 * (*(a2 + 16) ^ HIWORD(*(a2 + 16)));
  v3 = ((*a2 >> 3) + (*a2 >> 1 << 6) - 0x61C8864680B583E9 + ((73244475 * (v2 ^ HIWORD(v2))) ^ ((73244475 * (v2 ^ HIWORD(v2))) >> 16))) ^ (*a2 >> 1);
  v4 = 73244475 * ((73244475 * (*(a2 + 20) ^ HIWORD(*(a2 + 20)))) ^ ((73244475 * (*(a2 + 20) ^ HIWORD(*(a2 + 20)))) >> 16));
  return ((v4 ^ HIWORD(v4)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

void re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v25, 0, 36);
      *&v25[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::init(v25, v4, v2);
      v5 = *a1;
      *a1 = *v25;
      v6 = a1[2];
      v7 = *&v25[8];
      *v25 = v5;
      *&v25[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v25[24];
      *&v25[24] = *(a1 + 3);
      v8 = *&v25[32];
      *(a1 + 3) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 6);
            v17 = v15 % v16;
            v18 = *(a1 + 9);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 8);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 6);
                v19 = *(a1 + 8);
                v13 = a1[1];
              }

              *(a1 + 8) = v19 + 1;
              v20 = a1[2];
              v21 = *(v20 + 40 * v18 + 8);
            }

            else
            {
              v20 = a1[2];
              v21 = *(v20 + 40 * v18 + 8);
              *(a1 + 9) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 40 * v18 + 8) = v21 | 0x80000000;
            *(a1[2] + 40 * v18 + 8) = *(a1[2] + 40 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(a1[2] + 40 * v18) = v15;
            v22 = (a1[2] + 40 * v18);
            v23 = *v14;
            v22[2] = v22[2] & 0xFFFFFFFFFFFFFFFELL | *v14 & 1;
            v22[2] = *v14 & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
            v22[3] = v14[1];
            *v14 = 0;
            v14[1] = &str_67;
            v22[4] = v14[2];
            v13 = a1[1];
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 7) + 1;
            *(a1 + 7) = v12;
          }

          ++v11;
          v14 += 5;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::deinit(v25);
    }
  }

  else
  {
    if (v2)
    {
      v24 = v2;
    }

    else
    {
      v24 = 3;
    }
  }
}

void re::HashSetBase<re::ProviderHandle,re::ProviderHandle,re::internal::ValueAsKey<re::ProviderHandle>,re::Hash<re::ProviderHandle>,re::EqualTo<re::ProviderHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

BOOL re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 56 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 56 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 56 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 72 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 72 * v9) = *(*(a1 + 16) + 72 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

_anonymous_namespace_ *re::PersistentShadowState::visualizeShadowClusters(_anonymous_namespace_ *this, re::DebugRenderer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 18);
    while ((*v6 & 0x80000000) == 0)
    {
      v6 += 96;
      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v7 = (*(v3 + 18) + 384 * v5);
    v14[0] = xmmword_1E3047670;
    re::DebugRenderer::drawBox(a2, v7 + 10, v7[5].f32, v14, 1);
    v14[0] = xmmword_1E3047670;
    v14[1] = xmmword_1E3047680;
    v14[2] = xmmword_1E30476A0;
    v14[3] = xmmword_1E30474D0;
    re::BoundingSphere::BoundingSphere(&v12, v7 + 5, v7 + 10);
    v8 = (&v12 | 0xC);
    v9 = vld1q_dup_f32(v8);
    v13[0] = vsubq_f32(v12, v9);
    v13[1] = vaddq_f32(v12, v9);
    v11 = xmmword_1E30476A0;
    this = re::DebugRenderer::drawBox(a2, v14, v13, &v11, 1);
    v10 = *(v3 + 40);
    if (v10 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    while (v10 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 18) + 384 * v5) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v10;
LABEL_14:
    ;
  }

  return this;
}

void re::PersistentShadowState::visualizeShadowClusterInfo(uint64_t a1, _anonymous_namespace_ *a2, StringID *a3, uint64_t a4)
{
  v162 = *MEMORY[0x1E695E480];
  cf = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterNoStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(cf, @"HH:mm:ss.SSS");
  v164 = *(a1 + 160);
  if (v164)
  {
    v7 = 0;
    v8 = *(a1 + 144);
    while ((*v8 & 0x80000000) == 0)
    {
      v8 += 96;
      if (v164 == ++v7)
      {
        LODWORD(v7) = *(a1 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v164)
  {
    v9 = *(a1 + 144) + 384 * v7;
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v162, cf, *(v9 + 256));
    v11 = *(v9 + 8);
    CStringPtr = CFStringGetCStringPtr(StringWithAbsoluteTime, 0x8000100u);
    re::DynamicString::format(&v176, "%llu - %s", v13, v11, CStringPtr);
    CFRelease(StringWithAbsoluteTime);
    v14 = *(v9 + 16);
    v178 = *(v9 + 8);
    *&v179 = v14;
    v15 = re::Hash<re::ShadowPair>::operator()(&v182, &v178);
    v16 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(a1 + 80, &v178, v15, &v182);
    if (v182.i32[3] == 0x7FFFFFFF)
    {
      v174 = 0u;
      v175 = 0u;
      re::DynamicString::setCapacity(&v174, 0);
    }

    else
    {
      ShadowInfo = re::PersistentShadowState::getShadowInfo(a1, *(a1 + 96) + 72 * v182.u32[3] + 32);
      re::DynamicString::format(&v174, "%.3f x %.3f", v18, ((ShadowInfo[78] - ShadowInfo[76]) / *(a4 + 4)), ((ShadowInfo[79] - ShadowInfo[77]) / *(a4 + 4)));
    }

    v19 = (v9 + 32);
    v182 = xmmword_1E3047670;
    re::DebugRenderer::drawBox(a2, v19 + 8, v19[3].f32, &v182, 1);
    re::DebugRenderer::drawAxis(a2, v19 + 8, 1, 0.5, 0.1);
    re::BoundingSphere::BoundingSphere(&v182, v19 + 3, v19 + 8);
    v20 = (&v182 | 0xC);
    v21 = vld1q_dup_f32(v20);
    v23.columns[2] = vsubq_f32(v182, v21);
    v23.columns[0] = vaddq_f32(v182, v21);
    v23.columns[1] = vsubq_f32(v23.columns[0], v23.columns[2]);
    v23.columns[1].i32[3] = 0;
    v22 = vmaxnmq_f32(v23.columns[1], 0);
    v23.columns[1] = vcgtq_f32(v23.columns[2], v23.columns[0]);
    v23.columns[1].i32[3] = v23.columns[1].i32[2];
    LODWORD(v20) = vmaxvq_u32(v23.columns[1]);
    v23.columns[1].i64[0] = 0x3F0000003F000000;
    v23.columns[1].i64[1] = 0x3F0000003F000000;
    v23.columns[0] = vmulq_f32(vaddq_f32(v23.columns[2], v23.columns[0]), v23.columns[1]);
    v24 = v20 < 0;
    if (v20 >= 0)
    {
      v25 = v23.columns[0].i64[1];
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23.columns[0].i64[0];
    }

    v23.columns[0].i64[0] = v26;
    v23.columns[0].i64[1] = v25;
    v170 = v23.columns[0];
    v172 = v22;
    v23.columns[0].i64[0] = v19[8].i64[0];
    v23.columns[1].i64[0] = v19[9].i64[0];
    v23.columns[2].i64[0] = v19[10].i64[0];
    v23.columns[0].i32[2] = v19[8].i32[2];
    v23.columns[1].i32[2] = v19[9].i32[2];
    v23.columns[2].i32[2] = v19[10].i32[2];
    v186 = __invert_f3(v23);
    v27 = vzip2q_s32(v186.columns[0], v186.columns[2]);
    v28 = vzip1q_s32(vzip1q_s32(v186.columns[0], v186.columns[2]), v186.columns[1]);
    v186.columns[0] = vtrn2q_s32(v186.columns[0], v186.columns[1]);
    v186.columns[0].i32[2] = v186.columns[2].i32[1];
    v186.columns[0] = vaddq_f32(vzip1q_s32(v27, vdupq_laneq_s32(v186.columns[1], 2)), vmlaq_f32(vmulq_f32(v28, 0), 0, v186.columns[0]));
    v186.columns[1] = vmulq_f32(v186.columns[0], v186.columns[0]);
    v186.columns[2].f32[0] = v186.columns[1].f32[2] + vaddv_f32(*v186.columns[1].f32);
    *v186.columns[1].f32 = vrsqrte_f32(v186.columns[2].u32[0]);
    *v186.columns[1].f32 = vmul_f32(*v186.columns[1].f32, vrsqrts_f32(v186.columns[2].u32[0], vmul_f32(*v186.columns[1].f32, *v186.columns[1].f32)));
    v29 = vmulq_n_f32(v186.columns[0], vmul_f32(*v186.columns[1].f32, vrsqrts_f32(v186.columns[2].u32[0], vmul_f32(*v186.columns[1].f32, *v186.columns[1].f32))).f32[0]);
    v30 = vmuls_lane_f32(0.5, *v172.f32, 1);
    v186.columns[0].f32[0] = v30 * 1.1;
    v186.columns[1].i32[0] = 0;
    v186.columns[1].i32[1] = v186.columns[0].i32[0];
    v31 = vaddq_f32(v186.columns[1].u64[0], v170);
    v186.columns[1] = vsubq_f32(vaddq_f32(v31, v29), v31);
    v186.columns[2] = vmulq_f32(v186.columns[1], v186.columns[1]);
    v28.f32[0] = v186.columns[2].f32[2] + vaddv_f32(*v186.columns[2].f32);
    *v186.columns[2].f32 = vrsqrte_f32(v28.u32[0]);
    *v186.columns[2].f32 = vmul_f32(*v186.columns[2].f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v186.columns[2].f32, *v186.columns[2].f32)));
    v32 = vmulq_n_f32(v186.columns[1], vmul_f32(*v186.columns[2].f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v186.columns[2].f32, *v186.columns[2].f32))).f32[0]);
    v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
    v186.columns[2] = vmlaq_f32(vmulq_f32(v33, xmmword_1E30661D0), xmmword_1E30476A0, v32);
    v34 = vextq_s8(vuzp1q_s32(v186.columns[2], v186.columns[2]), v186.columns[2], 0xCuLL);
    v186.columns[2] = vmulq_f32(v186.columns[2], v186.columns[2]);
    *&v35 = v186.columns[2].f32[1] + (v186.columns[2].f32[2] + v186.columns[2].f32[0]);
    *v186.columns[2].f32 = vrsqrte_f32(v35);
    *v186.columns[2].f32 = vmul_f32(*v186.columns[2].f32, vrsqrts_f32(v35, vmul_f32(*v186.columns[2].f32, *v186.columns[2].f32)));
    v36 = vmulq_n_f32(v34, vmul_f32(*v186.columns[2].f32, vrsqrts_f32(v35, vmul_f32(*v186.columns[2].f32, *v186.columns[2].f32))).f32[0]);
    v37 = *&v36.i32[1];
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v32)), v36, v33);
    v39 = *&v32.i32[2] + vaddq_f32(v36, v38).f32[0];
    if (v39 >= 0.0)
    {
      v40 = 1.0;
      v38.f32[0] = sqrtf(v39 + 1.0);
      *v36.i32 = v38.f32[0] + v38.f32[0];
      v44 = vrecpe_f32(COERCE_UNSIGNED_INT(v38.f32[0] + v38.f32[0]));
      v45 = vmul_f32(v44, vrecps_f32(COERCE_UNSIGNED_INT(v38.f32[0] + v38.f32[0]), v44));
      v46 = vmul_f32(v45, vrecps_f32(COERCE_UNSIGNED_INT(v38.f32[0] + v38.f32[0]), v45)).f32[0];
      v38.f32[0] = (v38.f32[1] - *&v32.i32[1]) * v46;
      v41 = (*v32.i32 - *&v36.i32[2]) * v46;
      v42 = (*&v36.i32[1] - v38.f32[2]) * v46;
      v43 = *v36.i32 * 0.25;
    }

    else
    {
      v40 = 1.0;
      if (*v36.i32 < *&v32.i32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v36, v38))).u8[0] & 1) != 0)
      {
        *v36.i32 = 1.0 - *v36.i32;
        v47 = v38.f32[0] < *&v32.i32[2];
        v48 = sqrtf(*&v32.i32[2] + (*v36.i32 - v38.f32[0]));
        *&v49 = v48 + v48;
        v50 = vrecpe_f32(v49);
        v51 = vmul_f32(v50, vrecps_f32(v49, v50));
        v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
        v53 = (*v32.i32 + *&v36.i32[2]) * v52;
        v54 = (*&v32.i32[1] + v38.f32[1]) * v52;
        v55 = *&v49 * 0.25;
        v56 = (*&v36.i32[1] - v38.f32[2]) * v52;
        v38.f32[0] = sqrtf((*v36.i32 - *&v32.i32[2]) + v38.f32[0]);
        v38.f32[0] = v38.f32[0] + v38.f32[0];
        *v36.i8 = vrecpe_f32(v38.u32[0]);
        *v36.i8 = vmul_f32(*v36.i8, vrecps_f32(v38.u32[0], *v36.i8));
        v57 = vmul_f32(*v36.i8, vrecps_f32(v38.u32[0], *v36.i8)).f32[0];
        v58 = (v37 + v38.f32[2]) * v57;
        v59 = v38.f32[0] * 0.25;
        v60 = (*&v32.i32[1] + v38.f32[1]) * v57;
        v61 = (*v32.i32 - *&v36.i32[2]) * v57;
        if (v47)
        {
          v38.f32[0] = v53;
        }

        else
        {
          v38.f32[0] = v58;
        }

        if (v47)
        {
          v41 = v54;
        }

        else
        {
          v41 = v59;
        }

        if (v47)
        {
          v42 = v55;
        }

        else
        {
          v42 = v60;
        }

        if (v47)
        {
          v43 = v56;
        }

        else
        {
          v43 = v61;
        }
      }

      else
      {
        v38.f32[0] = sqrtf(*v36.i32 + ((1.0 - v38.f32[0]) - *&v32.i32[2]));
        v38.f32[0] = v38.f32[0] + v38.f32[0];
        *v36.i8 = vrecpe_f32(v38.u32[0]);
        *v36.i8 = vmul_f32(*v36.i8, vrecps_f32(v38.u32[0], *v36.i8));
        *v36.i32 = vmul_f32(*v36.i8, vrecps_f32(v38.u32[0], *v36.i8)).f32[0];
        v38.f32[0] = v38.f32[0] * 0.25;
        v41 = (v37 + v38.f32[2]) * *v36.i32;
        v42 = (*v32.i32 + *&v36.i32[2]) * *v36.i32;
        v43 = (v38.f32[1] - *&v32.i32[1]) * *v36.i32;
      }
    }

    v62 = vmulq_f32(v172, v172);
    v63 = v62.f32[2] + vaddv_f32(*v62.f32);
    LODWORD(v64) = 0;
    *(&v64 + 1) = v30;
    v65 = vsubq_f32(v170, v64);
    v66 = vsubq_f32(vaddq_f32(v65, v29), v65);
    v67 = vmulq_f32(v66, v66);
    *&v64 = v67.f32[2] + vaddv_f32(*v67.f32);
    *v67.f32 = vrsqrte_f32(v64);
    *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v64, vmul_f32(*v67.f32, *v67.f32)));
    v68 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v64, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
    v69 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
    v70 = vmlaq_f32(vmulq_f32(v69, xmmword_1E30661D0), xmmword_1E30476A0, v68);
    v71 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
    v72 = vmulq_f32(v70, v70);
    *&v73 = v72.f32[1] + (v72.f32[2] + v72.f32[0]);
    *v72.f32 = vrsqrte_f32(v73);
    *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
    v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
    v75 = *&v74.i32[1];
    v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL), vnegq_f32(v68)), v74, v69);
    v77 = *&v68.i32[2] + vaddq_f32(v74, v76).f32[0];
    if (v77 >= 0.0)
    {
      v76.f32[0] = sqrtf(v77 + v40);
      *v74.i32 = v76.f32[0] + v76.f32[0];
      v81 = vrecpe_f32(COERCE_UNSIGNED_INT(v76.f32[0] + v76.f32[0]));
      v82 = vmul_f32(v81, vrecps_f32(COERCE_UNSIGNED_INT(v76.f32[0] + v76.f32[0]), v81));
      v83 = vmul_f32(v82, vrecps_f32(COERCE_UNSIGNED_INT(v76.f32[0] + v76.f32[0]), v82)).f32[0];
      v76.f32[0] = (v76.f32[1] - *&v68.i32[1]) * v83;
      v78 = (*v68.i32 - *&v74.i32[2]) * v83;
      v79 = (*&v74.i32[1] - v76.f32[2]) * v83;
      v80 = *v74.i32 * 0.25;
    }

    else if (*v74.i32 < *&v68.i32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v74, v76))).u8[0] & 1) != 0)
    {
      *v74.i32 = v40 - *v74.i32;
      v84 = v76.f32[0] < *&v68.i32[2];
      v85 = sqrtf(*&v68.i32[2] + (*v74.i32 - v76.f32[0]));
      *&v86 = v85 + v85;
      v87 = vrecpe_f32(v86);
      v88 = vmul_f32(v87, vrecps_f32(v86, v87));
      v89 = vmul_f32(v88, vrecps_f32(v86, v88)).f32[0];
      v90 = (*v68.i32 + *&v74.i32[2]) * v89;
      v91 = (*&v68.i32[1] + v76.f32[1]) * v89;
      v92 = *&v86 * 0.25;
      v93 = (*&v74.i32[1] - v76.f32[2]) * v89;
      v76.f32[0] = sqrtf((*v74.i32 - *&v68.i32[2]) + v76.f32[0]);
      v76.f32[0] = v76.f32[0] + v76.f32[0];
      *v74.i8 = vrecpe_f32(v76.u32[0]);
      *v74.i8 = vmul_f32(*v74.i8, vrecps_f32(v76.u32[0], *v74.i8));
      v94 = vmul_f32(*v74.i8, vrecps_f32(v76.u32[0], *v74.i8)).f32[0];
      v95 = (v75 + v76.f32[2]) * v94;
      v96 = v76.f32[0] * 0.25;
      v97 = (*&v68.i32[1] + v76.f32[1]) * v94;
      v80 = (*v68.i32 - *&v74.i32[2]) * v94;
      if (v84)
      {
        v76.f32[0] = v90;
      }

      else
      {
        v76.f32[0] = v95;
      }

      if (v84)
      {
        v78 = v91;
      }

      else
      {
        v78 = v96;
      }

      if (v84)
      {
        v79 = v92;
      }

      else
      {
        v79 = v97;
      }

      if (v84)
      {
        v80 = v93;
      }
    }

    else
    {
      v76.f32[0] = sqrtf(*v74.i32 + ((v40 - v76.f32[0]) - *&v68.i32[2]));
      v76.f32[0] = v76.f32[0] + v76.f32[0];
      *v74.i8 = vrecpe_f32(v76.u32[0]);
      *v74.i8 = vmul_f32(*v74.i8, vrecps_f32(v76.u32[0], *v74.i8));
      *v74.i32 = vmul_f32(*v74.i8, vrecps_f32(v76.u32[0], *v74.i8)).f32[0];
      v76.f32[0] = v76.f32[0] * 0.25;
      v78 = (v75 + v76.f32[2]) * *v74.i32;
      v79 = (*v68.i32 + *&v74.i32[2]) * *v74.i32;
      v80 = (v76.f32[1] - *&v68.i32[1]) * *v74.i32;
    }

    v98 = 0;
    v99 = v38.f32[0] + v38.f32[0];
    v100 = v41 + v41;
    v101 = v42 + v42;
    v102 = v38.f32[0] * (v38.f32[0] + v38.f32[0]);
    v103 = v41 * (v41 + v41);
    v104 = v42 * (v42 + v42);
    v105 = (v38.f32[0] + v38.f32[0]) * v41;
    v106 = (v38.f32[0] + v38.f32[0]) * v42;
    v107 = v100 * v42;
    v108 = v100 * v43;
    v109 = v101 * v43;
    v110.i32[3] = 0;
    v110.f32[0] = v40 - (v103 + v104);
    v110.f32[1] = v105 + v109;
    v110.f32[2] = v106 - v108;
    v111 = v99 * v43;
    v112.i32[3] = 0;
    v112.f32[0] = v105 - v109;
    v112.f32[1] = v40 - (v102 + v104);
    v112.f32[2] = v107 + v111;
    v113 = v107 - v111;
    v114.i32[3] = 0;
    v114.f32[0] = v106 + v108;
    v114.f32[1] = v113;
    v114.f32[2] = v40 - (v102 + v103);
    v115 = sqrtf(v63);
    v31.f32[3] = v40;
    v116 = v79 + v79;
    v117 = v78 * (v78 + v78);
    v118 = v79 * (v79 + v79);
    v119 = (v76.f32[0] + v76.f32[0]) * v78;
    v120 = (v76.f32[0] + v76.f32[0]) * v79;
    v121 = (v78 + v78) * v79;
    v122 = (v76.f32[0] + v76.f32[0]) * v80;
    v123 = (v78 + v78) * v80;
    v124.i32[3] = 0;
    v125 = v116 * v80;
    v126.i32[3] = 0;
    v126.f32[0] = v119 - (v116 * v80);
    v127.i32[3] = 0;
    v127.f32[0] = v120 + v123;
    v127.f32[1] = v121 - v122;
    v128 = v76.f32[0] * (v76.f32[0] + v76.f32[0]);
    v129 = v177[0];
    v130 = v177[0] >> 1;
    if ((v177[0] & 1) == 0)
    {
      v130 = LOBYTE(v177[0]) >> 1;
    }

    v131 = v130;
    v132 = BYTE8(v174) >> 1;
    LODWORD(v133) = 0;
    *(&v133 + 1) = 0;
    *(&v133 + 1) = v115;
    if (BYTE8(v174))
    {
      v132 = *(&v174 + 1) >> 1;
    }

    *&v134 = 0;
    *(&v134 + 1) = LODWORD(v115);
    v165 = v133;
    v166 = LODWORD(v115);
    v178 = LODWORD(v115);
    v179 = v133;
    v180 = v134;
    v181 = xmmword_1E30474D0;
    do
    {
      *(&v182 + v98) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, COERCE_FLOAT(*(&v178 + v98))), v112, *(&v178 + v98), 1), v114, *(&v178 + v98), 2), v31, *(&v178 + v98), 3);
      v98 += 16;
    }

    while (v98 != 64);
    v135 = 0;
    v126.f32[2] = v121 + v122;
    v136 = v182;
    v137 = v183;
    v138 = v184;
    v139 = v185;
    v178 = xmmword_1E30D6800;
    v179 = xmmword_1E30D6810;
    v167 = v132 / -3.0;
    v180 = xmmword_1E30D6820;
    v181 = xmmword_1E30474D0;
    do
    {
      *(&v182 + v135) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v136, COERCE_FLOAT(*(&v178 + v135))), v137, *(&v178 + v135), 1), v138, *(&v178 + v135), 2), v139, *(&v178 + v135), 3);
      v135 += 16;
    }

    while (v135 != 64);
    v127.f32[2] = v40 - (v128 + v117);
    v168 = v127;
    v126.f32[1] = v40 - (v128 + v118);
    v169 = v126;
    v140 = 0;
    *&v141 = v131 / -3.0;
    DWORD1(v141) = 0;
    DWORD2(v141) = 0;
    *(&v141 + 3) = v40;
    v142 = v182;
    v143 = v183;
    v144 = v184;
    v145 = v185;
    v178 = xmmword_1E3047670;
    v179 = xmmword_1E3047680;
    v180 = xmmword_1E30476A0;
    v181 = v141;
    do
    {
      *(&v182 + v140) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*(&v178 + v140))), v143, *(&v178 + v140), 1), v144, *(&v178 + v140), 2), v145, *(&v178 + v140), 3);
      v140 += 16;
    }

    while (v140 != 64);
    v124.f32[1] = v119 + v125;
    v65.f32[3] = v40;
    v124.f32[2] = v120 - v123;
    v124.f32[0] = v40 - (v117 + v118);
    v171 = v124;
    v173 = v65;
    if (v129)
    {
      v146 = v177[1];
    }

    else
    {
      v146 = v177 + 1;
    }

    v178 = xmmword_1E3060D30;
    re::DebugRenderer::drawText(a2, &v182, v146, a3, &v178, 0);
    v147 = 0;
    v178 = v166;
    v179 = v165;
    v180 = v134;
    v181 = xmmword_1E30474D0;
    do
    {
      *(&v182 + v147) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, COERCE_FLOAT(*(&v178 + v147))), v169, *(&v178 + v147), 1), v168, *(&v178 + v147), 2), v173, *(&v178 + v147), 3);
      v147 += 16;
    }

    while (v147 != 64);
    v148 = 0;
    v149 = v182;
    v150 = v183;
    v151 = v184;
    v152 = v185;
    v178 = xmmword_1E30D6800;
    v179 = xmmword_1E30D6810;
    v180 = xmmword_1E30D6820;
    v181 = xmmword_1E30474D0;
    do
    {
      *(&v182 + v148) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*(&v178 + v148))), v150, *(&v178 + v148), 1), v151, *(&v178 + v148), 2), v152, *(&v178 + v148), 3);
      v148 += 16;
    }

    while (v148 != 64);
    v153 = 0;
    *&v154 = LODWORD(v167);
    DWORD2(v154) = 0;
    HIDWORD(v154) = 1.0;
    v155 = v182;
    v156 = v183;
    v157 = v184;
    v158 = v185;
    v178 = xmmword_1E3047670;
    v179 = xmmword_1E3047680;
    v180 = xmmword_1E30476A0;
    v181 = v154;
    do
    {
      *(&v182 + v153) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v155, COERCE_FLOAT(*(&v178 + v153))), v156, *(&v178 + v153), 1), v157, *(&v178 + v153), 2), v158, *(&v178 + v153), 3);
      v153 += 16;
    }

    while (v153 != 64);
    if (BYTE8(v174))
    {
      v159 = v175;
    }

    else
    {
      v159 = &v174 + 9;
    }

    v178 = xmmword_1E3060D30;
    re::DebugRenderer::drawText(a2, &v182, v159, a3, &v178, 0);
    if (v174 && (BYTE8(v174) & 1) != 0)
    {
      (*(*v174 + 40))();
    }

    if (v176 && (v177[0] & 1) != 0)
    {
      (*(*v176 + 40))();
    }

    v160 = *(a1 + 160);
    if (v160 <= v7 + 1)
    {
      v160 = v7 + 1;
    }

    while (v160 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(a1 + 144) + 384 * v7) & 0x80000000) != 0)
      {
        goto LABEL_84;
      }
    }

    LODWORD(v7) = v160;
LABEL_84:
    ;
  }

  CFRelease(cf);
}

void re::PersistentShadowState::visualizeShadowPlanes(re::PersistentShadowState *this, re::DebugRenderer *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (re::internal::shadows::g_enableShadowFlattening == 1)
  {
    v4 = *(this + 40);
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 18);
      while ((*v6 & 0x80000000) == 0)
      {
        v6 += 96;
        if (v4 == ++v5)
        {
          LODWORD(v5) = *(this + 40);
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
      v7 = *(this + 40);
      do
      {
        v8 = (*(this + 18) + 384 * v5);
        if (v8[17].i8[0] == 1)
        {
          v9 = v8 + 2;
          v10.i64[0] = 0x3F0000003F000000;
          v10.i64[1] = 0x3F0000003F000000;
          v11 = vaddq_f32(v8[19], vmulq_f32(v8[18], v10));
          v14 = xmmword_1E30A32C0;
          v15[0] = v11;
          re::DebugRenderer::drawArrow(a2, v8 + 19, v15, &v14, 1, 0.1);
          v12 = vaddq_f32(v9[11], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v9[8], (v9[3].f32[0] + v9[4].f32[0]) * 0.5), v9[9], v9[3].f32[1]), v9[10], (v9[3].f32[2] + v9[4].f32[2]) * 0.5));
          v15[0] = v9[17];
          v15[1] = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
          v15[2] = xmmword_1E309E550;
          v16 = 1065353216;
          re::DynamicArray<re::RigTransform>::add((a2 + 16), v15);
          v7 = *(this + 40);
        }

        if (v7 <= v5 + 1)
        {
          v13 = v5 + 1;
        }

        else
        {
          v13 = v7;
        }

        while (v13 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(this + 18) + 384 * v5) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v5) = v13;
LABEL_19:
        ;
      }

      while (v5 != v4);
    }
  }
}

_anonymous_namespace_ *re::PersistentShadowState::visualizeShadowMatrices(_anonymous_namespace_ *this, re::DebugRenderer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 12);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 28);
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
    __asm { FMOV            V0.4S, #-1.0 }

    v18 = _Q0;
    __asm { FMOV            V0.4S, #1.0 }

    v17 = _Q0;
    do
    {
      ShadowInfo = re::PersistentShadowState::getShadowInfo(v3, *(v3 + 96) + 72 * v5 + 32);
      v15 = v18;
      v27 = xmmword_1E30A23F0;
      v28 = 0x3F8000003F800000;
      v29 = 1065353216;
      DWORD2(v15) = *(ShadowInfo + 1696);
      v24 = v15;
      v25 = 0x3F8000003F800000;
      v26 = 1065353216;
      v30 = __invert_f4(*(ShadowInfo + 1488));
      v20 = v30.columns[0];
      v21 = v30.columns[1];
      v22 = v30.columns[2];
      v23 = v30.columns[3];
      v19 = v17;
      re::DebugRenderer::drawBox(a2, &v20, &v27, &v19, 1);
      v31 = __invert_f4(*(ShadowInfo + 1488));
      v20 = v31.columns[0];
      v21 = v31.columns[1];
      v22 = v31.columns[2];
      v23 = v31.columns[3];
      re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v32 = __invert_f4(*(ShadowInfo + 1552));
      v20 = v32.columns[0];
      v21 = v32.columns[1];
      v22 = v32.columns[2];
      v23 = v32.columns[3];
      v19 = xmmword_1E3060D60;
      re::DebugRenderer::drawBox(a2, &v20, &v24, &v19, 1);
      v33 = __invert_f4(*(ShadowInfo + 1552));
      v20 = v33.columns[0];
      v21 = v33.columns[1];
      v22 = v33.columns[2];
      v23 = v33.columns[3];
      re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v34 = __invert_f4(*(ShadowInfo + 1616));
      v20 = v34.columns[0];
      v21 = v34.columns[1];
      v22 = v34.columns[2];
      v23 = v34.columns[3];
      this = re::DebugRenderer::drawAxis(a2, &v20, 1, 0.5, 0.1);
      v16 = *(v3 + 112);
      if (v16 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      while (v16 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v3 + 96) + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v5) = v16;
LABEL_15:
      ;
    }

    while (v5 != v4);
  }

  return this;
}

uint64_t re::PersistentShadowState::getShadowInfo(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 24);
  v3 = *(a1 + 56);
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 72) + 1840 * *(a2 + 24);
}

void re::PersistentShadowState::visualizeCullBoundingBoxes(re::PersistentShadowState *this, re::DebugRenderer *a2)
{
  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 12);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    ShadowInfo = re::PersistentShadowState::getShadowInfo(this, *(this + 12) + 72 * v5 + 32);
    if (ShadowInfo[86].i8[0])
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    v11 = vbslq_s8(vdupq_n_s32(v9), xmmword_1E3047680, xmmword_1E3047670);
    re::DebugRenderer::drawBox(a2, ShadowInfo + 89, ShadowInfo[87].f32, v11.i8, 1);
    v10 = *(this + 28);
    if (v10 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    while (v10 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(this + 12) + 72 * v5) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v5) = v10;
LABEL_17:
    ;
  }
}

float32x4_t *re::BoundingSphere::BoundingSphere(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v6 = vcgtq_f32(*a2, v5);
  v6.i32[3] = v6.i32[2];
  v7 = vaddq_f32(*a2, v5);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(v7, v5);
  v9 = v8.i64[1];
  if ((vmaxvq_u32(v6) & 0x80000000) == 0)
  {
    v10 = *v8.f32;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *v11.f32 = v10;
  v11.i64[1] = v9;
  v12 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, v10.f32[0]), a3[1], v10, 1), a3[2], v11, 2));
  *a1 = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
  memset(v20, 0, sizeof(v20));
  re::AABB::extractCorners(a2, v20, 8uLL, 0);
  v13 = 0;
  v14 = 0.0;
  do
  {
    v15 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, COERCE_FLOAT(*&v20[v13])), a3[1], v20[v13].n128_u64[0], 1), a3[2], v20[v13], 2));
    v16 = vsubq_f32(vdivq_f32(v15, vdupq_laneq_s32(v15, 3)), *a1);
    v17 = vmulq_f32(v16, v16);
    v18 = vaddv_f32(*v17.f32);
    if ((v17.f32[2] + v18) >= v14)
    {
      v14 = v17.f32[2] + v18;
    }

    ++v13;
  }

  while (v13 != 8);
  a1->f32[3] = sqrtf(v14);
  return a1;
}

uint64_t re::AABB::extractCorners(uint64_t result, __n128 *a2, unint64_t a3, __n128 a4)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, a4.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v4, v12);
    __break(1u);
    goto LABEL_11;
  }

  a4.n128_u64[0] = *result;
  a4.n128_u32[2] = *(result + 8);
  *a2 = a4;
  if (a3 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v5, v13);
    __break(1u);
    goto LABEL_12;
  }

  a4.n128_u32[0] = *(result + 16);
  a4.n128_u32[1] = *(result + 4);
  a4.n128_u32[2] = *(result + 8);
  a2[1] = a4;
  if (a3 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v14);
    __break(1u);
    goto LABEL_13;
  }

  a4.n128_u64[0] = *(result + 16);
  a4.n128_u32[2] = *(result + 8);
  a2[2] = a4;
  if (a3 == 3)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v7, v15);
    __break(1u);
    goto LABEL_14;
  }

  a4.n128_u32[0] = *result;
  a4.n128_u32[1] = *(result + 20);
  a4.n128_u32[2] = *(result + 8);
  a2[3] = a4;
  if (a3 <= 4)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v16);
    __break(1u);
    goto LABEL_15;
  }

  a4.n128_u64[0] = *result;
  a4.n128_u32[2] = *(result + 24);
  a2[4] = a4;
  if (a3 == 5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v17);
    __break(1u);
    goto LABEL_16;
  }

  a4.n128_u32[0] = *(result + 16);
  a4.n128_u32[1] = *(result + 4);
  a4.n128_u32[2] = *(result + 24);
  a2[5] = a4;
  if (a3 <= 6)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 6, 6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v18);
    __break(1u);
    goto LABEL_17;
  }

  a4.n128_u64[0] = *(result + 16);
  a4.n128_u32[2] = *(result + 24);
  a2[6] = a4;
  if (a3 != 7)
  {
    a4.n128_u32[0] = *result;
    a4.n128_u32[1] = *(result + 20);
    a4.n128_u32[2] = *(result + 24);
    a2[7] = a4;
    return result;
  }

LABEL_17:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 7, 7);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v19);
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 72 * v6;
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11 == *a2 && *(result + 8) == a2[1])
      {
        result = *(result + 16);
        if (result == a2[2])
        {
          break;
        }
      }

      v6 = *(v8 + 72 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

unint64_t re::Hash<re::ShadowPair>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = a2[2] ^ (a2[2] >> 30);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  return ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v7 ^ (v7 >> 31)) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5)) ^ v3;
}

uint64_t re::useDitherFade(re *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "useDitherFade", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::useDitherFade(void)::kUseDitherFade = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[240];
}

uint64_t re::useDepthDither(re *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "useDepthDither", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::useDepthDither(void)::kUseDepthDither = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[104];
}

double re::DrawingManager::DrawingManager(re::DrawingManager *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 84) = 0x7FFFFFFFLL;
  *(this + 25) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 208) = 1;
  *(this + 27) = 0;
  *(this + 28) = &str_67;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  for (i = 328; i != 456; i += 32)
  {
    v2 = (this + i);
    *v2 = xmmword_1E30D6840;
    v2[1] = xmmword_1E30D6840;
  }

  do
  {
    v3 = (this + i);
    *v3 = xmmword_1E30D6840;
    v3[1] = xmmword_1E30D6840;
    i += 32;
  }

  while (i != 584);
  result = 0.0;
  *(this + 38) = 0u;
  *(this + 156) = 1;
  *(this + 632) = 0u;
  *(this + 87) = 0;
  *(this + 44) = 0u;
  *(this + 180) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 772) = 0u;
  *(this + 197) = 1;
  *(this + 109) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 222) = 2;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 236) = 0;
  *(this + 948) = 0x7FFFFFFFLL;
  *(this + 120) = 1;
  *(this + 127) = 0;
  *(this + 256) = 0;
  *(this + 1000) = 0u;
  *(this + 968) = 0u;
  *(this + 262) = 0;
  *(this + 1032) = 0u;
  *(this + 66) = xmmword_1E30A1A10;
  *(this + 67) = xmmword_1E30A1A10;
  *(this + 68) = xmmword_1E30A1A10;
  *(this + 69) = xmmword_1E30A1A10;
  *(this + 177) = 0;
  *(this + 352) = 0;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 1564) = 0u;
  *(this + 97) = 0u;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 198) = 0;
  *(this + 1592) = 0u;
  *(this + 1608) = 0;
  *(this + 436) = 0;
  *(this + 223) = 0;
  *(this + 219) = 0;
  *(this + 110) = 0u;
  *(this + 444) = 0;
  *(this + 202) = 0;
  *(this + 1624) = 0u;
  *(this + 410) = 0;
  *(this + 424) = 0;
  *(this + 105) = 0u;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 430) = 0;
  *(this + 1704) = 0u;
  *(this + 224) = 1114636288;
  *(this + 1800) = 1;
  *(this + 230) = 0;
  *(this + 228) = 0;
  *(this + 458) = 0;
  *(this + 113) = 0u;
  *(this + 462) = 0;
  return result;
}

void re::DrawingManager::~DrawingManager(re::DrawingManager *this)
{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 1808);
  v2 = *(this + 219);
  if (v2)
  {
    v3 = *(this + 223);
    if (v3)
    {
      v4 = *(this + 221);
      if (v4)
      {
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          ++v3;
          v5 -= 8;
        }

        while (v5);
        v2 = *(this + 219);
        v3 = *(this + 223);
      }

      (*(*v2 + 40))(v2, v3);
    }

    *(this + 223) = 0;
    *(this + 220) = 0;
    *(this + 221) = 0;
    *(this + 219) = 0;
    ++*(this + 444);
  }

  *(this + 214) = 0;
  ++*(this + 430);
  v6 = *(this + 209);
  if (v6)
  {
    v7 = *(this + 213);
    if (v7)
    {
      v8 = *(this + 211);
      if (v8)
      {
        v9 = 32 * v8;
        do
        {
          v10 = *v7;
          v7 += 4;

          v9 -= 32;
        }

        while (v9);
        v6 = *(this + 209);
        v7 = *(this + 213);
      }

      (*(*v6 + 40))(v6, v7);
    }

    *(this + 213) = 0;
    *(this + 210) = 0;
    *(this + 211) = 0;
    *(this + 209) = 0;
    ++*(this + 424);
  }

  v11 = *(this + 173);
  if (v11)
  {
    v12 = *(this + 177);
    if (v12)
    {
      v13 = *(this + 175);
      if (v13)
      {
        v14 = 200 * v13;
        v15 = v12 + 40;
        do
        {
          re::SampleBufferObjectPool::~SampleBufferObjectPool((v15 + 40));
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v15);

          v15 += 200;
          v14 -= 200;
        }

        while (v14);
        v11 = *(this + 173);
        v12 = *(this + 177);
      }

      (*(*v11 + 40))(v11, v12);
    }

    *(this + 177) = 0;
    *(this + 174) = 0;
    *(this + 175) = 0;
    *(this + 173) = 0;
    ++*(this + 352);
  }

  for (i = 1376; i != 1120; i -= 8)
  {
  }

  re::DynamicArray<unsigned long>::deinit(this + 1000);
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 114);

  v17 = *(this + 107);
  if (v17)
  {

    *(this + 107) = 0;
  }

  v18 = *(this + 105);
  if (v18)
  {

    *(this + 105) = 0;
  }

  v19 = *(this + 100);
  if (v19)
  {

    *(this + 100) = 0;
  }

  v20 = *(this + 97);
  if (v20)
  {

    *(this + 97) = 0;
  }

  v21 = *(this + 96);
  if (v21)
  {

    *(this + 96) = 0;
  }

  v22 = *(this + 95);
  if (v22)
  {

    *(this + 95) = 0;
  }

  v23 = *(this + 94);
  if (v23)
  {

    *(this + 94) = 0;
  }

  v24 = *(this + 93);
  if (v24)
  {

    *(this + 93) = 0;
  }

  v25 = *(this + 92);
  if (v25)
  {

    *(this + 92) = 0;
  }

  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 696);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 608);

  v26 = *(this + 29);
  if (v26)
  {

    *(this + 29) = 0;
  }

  re::StringID::destroyString((this + 216));
  v27 = *(this + 21);
  if (v27)
  {
    v28 = *(this + 25);
    if (v28)
    {
      v29 = *(this + 23);
      if (v29)
      {
        v30 = 8 * v29;
        do
        {
          if (*v28)
          {

            *v28 = 0;
          }

          ++v28;
          v30 -= 8;
        }

        while (v30);
        v27 = *(this + 21);
        v28 = *(this + 25);
      }

      (*(*v27 + 40))(v27, v28);
    }

    *(this + 25) = 0;
    *(this + 22) = 0;
    *(this + 23) = 0;
    *(this + 21) = 0;
    ++*(this + 48);
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 104);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(this + 6);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this);
}

uint64_t re::DrawingManager::init(re::DrawingManager *this, re::RenderManager *a2, os_unfair_lock_s *a3, re::ColorManager *a4, void **a5, int a6)
{
  v123 = *MEMORY[0x1E69E9840];
  *(this + 32) = a2;
  *(this + 33) = a4;
  v12 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
  v13 = &_MergedGlobals_455;
  if ((atomic_load_explicit(&qword_1EE1B9A78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_102;
  }

  while (1)
  {
    [v12 setDisableCrossQueueHazardTracking_];
    v14 = [v12 setMaxCommandBufferCount_];
    if ((atomic_load_explicit(v13 + 16, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_1EE1B9A80);
      if (v14)
      {
        re::Defaults::BOOLValue(&buf, "enableSynchronousCommandQueue", v104);
        v105 = a2 + 324;
        if (buf)
        {
          v105 = &buf + 1;
        }

        byte_1EE1B9A71 = *v105;
        __cxa_guard_release(&qword_1EE1B9A80);
      }
    }

    v15 = *re::graphicsLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1EE1B9A71)
      {
        v16 = "enabled";
      }

      else
      {
        v16 = "disabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "com.apple.re.enableSynchronousCommandQueue is %s", &buf, 0xCu);
    }

    v17 = [v12 setCommitSynchronously_];
    if (*(a2 + 318) == 1)
    {
      v18 = re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(v17);
      if (v18)
      {
        if (*(a2 + 314))
        {
          v19 = *re::graphicsLogObjects(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            v20 = "disableMetalAsyncCompletionDispatch is not supported with enableRenderThread";
LABEL_15:
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v20, &buf, 2u);
          }
        }

        else
        {
          *(this + 786) = 1;
          [v12 setDisableAsyncCompletionDispatch_];
          v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
          v22 = dispatch_queue_attr_make_with_autorelease_frequency(v21, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v23 = dispatch_queue_create("RE Async Command Buffer Callback Queue", v22);
          v24 = [objc_msgSend(MEMORY[0x1E6974178] alloc)];
          v25 = *(this + 107);
          if (v25 == v24)
          {
          }

          else
          {
            if (v25)
            {
            }

            *(this + 107) = v24;
          }

          dispatch_release(v23);
        }
      }

      else
      {
        v19 = *re::graphicsLogObjects(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          v20 = "DisableAsyncCompletionDispatch is not supported";
          goto LABEL_15;
        }
      }
    }

    v13 = &dword_1EE1B9A74;
    if ((atomic_load_explicit(&qword_1EE1B9A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9A88))
    {
      re::Defaults::intValue(&buf, "backboarddGPUPriorityOverride", v106);
      if (buf)
      {
        v107 = DWORD1(buf);
      }

      else
      {
        v107 = 1;
      }

      dword_1EE1B9A74 = v107;
      __cxa_guard_release(&qword_1EE1B9A88);
    }

    re::mtl::Device::makeCommandQueue(a2 + 26, v12, &buf);
    v26 = (this + 280);
    if ((this + 280) != &buf)
    {
      v27 = buf;
      *&buf = 0;
      v28 = *v26;
      *v26 = v27;
    }

    if ((atomic_load_explicit(&qword_1EE1B9AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AB0))
    {
      v108 = re::ns::String::String(&qword_1EE1B9AA8, "RenderManagerQueue");
      __cxa_guard_release(v108 + 1);
    }

    v29 = qword_1EE1B9AA8;
    [*v26 setLabel:v29];

    v30 = [*v26 setGPUPriority:dword_1EE1B9A74];
    if (!*v26)
    {
      re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Failed to make command queue.", "m_commandQueue.isValid()", "init", 196);
      _os_crash("assertion failure: (m_commandQueue.isValid()) Failed to make command queue.");
      __break(1u);
LABEL_98:
      re::internal::assertLog(4, v37, "assertion failure: '%s' (%s:line %i) Failed to make command queue.", "m_caCommandQueue.isValid()", "init", 206);
      _os_crash("assertion failure: (m_caCommandQueue.isValid()) Failed to make command queue.");
      __break(1u);
LABEL_99:
      re::internal::assertLog(4, v59, "assertion failure: '%s' (%s:line %i) PerFrameAllocatorGPU manager is not null before init.", "m_perFrameAllocatorGPUManager == nullptr", "init", 276);
      _os_crash("assertion failure: (m_perFrameAllocatorGPUManager == nullptr) PerFrameAllocatorGPU manager is not null before init.");
      __break(1u);
      goto LABEL_100;
    }

    if (re::mtl::commandQueueSupportsDisableAsyncCompletionDispatch(v30))
    {
      [v12 setDisableAsyncCompletionDispatch_];
    }

    re::mtl::Device::makeCommandQueue(a2 + 26, v12, &buf);
    v32 = (this + 288);
    if ((this + 288) != &buf)
    {
      v33 = buf;
      *&buf = 0;
      v34 = *v32;
      *v32 = v33;
    }

    if ((atomic_load_explicit(&qword_1EE1B9AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AC0))
    {
      v109 = re::ns::String::String(&qword_1EE1B9AB8, "CA Command Queue");
      __cxa_guard_release(v109 + 1);
    }

    v35 = qword_1EE1B9AB8;
    [*v32 setLabel:v35];

    v36 = [*v32 setGPUPriority:dword_1EE1B9A74];
    if (!*v32)
    {
      goto LABEL_98;
    }

    v38 = re::globalAllocators(v36);
    v13 = *(a2 + 33);
    if (v13)
    {
      if (v13 >> 61 || (8 * v13) >= 0xFFFFFFFFFFFFFFF0)
      {
        goto LABEL_101;
      }

      v40 = (*(*v38[2] + 32))(v38[2], (8 * v13 + 16) | 7, 0);
      v41 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v41 - 2) = v13;
      *(v41 - 1) = v40;
      bzero(v41, 8 * v13);
      v42 = *(a2 + 33);
      *(this + 102) = v41;
      if (v42)
      {
        v43 = 0;
        v44 = 0;
        do
        {
          *&buf = [*(a2 + 26) newFence];
          NS::SharedPtr<MTL::Texture>::operator=((*(this + 102) + v43), &buf);
          if (buf)
          {
          }

          ++v44;
          v43 += 8;
        }

        while (*(a2 + 33) > v44);
      }
    }

    else
    {
      *(this + 102) = 0;
    }

    v13 = &selRef_iosurface;
    *&buf = [*(a2 + 26) newEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 29, &buf);
    v45 = buf;
    if (buf)
    {
    }

    *(this + 248) = 1;
    v46 = *(*(this + 32) + 144);
    v47 = re::globalAllocators(v45);
    v48 = re::PerFrameAllocatorManager::addOwner(v47[6], this);
    *(v46 + 40) = v48;
    *(v46 + 48) = 0;
    v49 = *(*(this + 32) + 144);
    v121.i64[0] = re::globalAllocators(v48)[2];
    v121.i64[1] = &buf;
    *&buf = &unk_1F5D06C08;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v49 + 208, &buf);
    v50 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    v51 = *(*(this + 32) + 144);
    v121.i64[0] = re::globalAllocators(v50)[2];
    v121.i64[1] = &buf;
    *&buf = &unk_1F5D06C60;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v51 + 128, &buf);
    v52 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&buf);
    v53 = *(*(this + 32) + 144);
    v121.i64[0] = re::globalAllocators(v52)[2];
    v121.i64[1] = &buf;
    *&buf = &unk_1F5D06CC8;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v53 + 168, &buf);
    v54 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&buf);
    v55 = *(*(this + 32) + 144);
    v121.i64[0] = re::globalAllocators(v54)[2];
    v121.i64[1] = &buf;
    *&buf = &unk_1F5D06D20;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v55 + 248, &buf);
    v56 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    v57 = *(*(this + 32) + 144);
    v121.i64[0] = re::globalAllocators(v56)[2];
    v121.i64[1] = &buf;
    *&buf = &unk_1F5D06D78;
    *(&buf + 1) = this;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v57 + 288, &buf);
    v58 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&buf);
    if (*(this + 40))
    {
      goto LABEL_99;
    }

    v60 = re::globalAllocators(v58);
    v61 = (*(*v60[2] + 32))(v60[2], 5312, 8);
    *v61 = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    *(v61 + 68) = 0x1FFFFFFFFLL;
    *(v61 + 80) = 0;
    *(v61 + 96) = 0;
    *(v61 + 104) = 0;
    *(v61 + 88) = 0;
    *(v61 + 112) = 0;
    *(v61 + 5304) = 0;
    bzero((v61 + 120), 0x143CuLL);
    *(this + 40) = v61;
    re::PerFrameAllocatorGPUManager::init(v61, *(this + 32));
    if (!*(this + 37))
    {
      break;
    }

LABEL_100:
    re::internal::assertLog(4, v63, "assertion failure: '%s' (%s:line %i) Render Graph manager is not null before init.", "m_renderGraphManager == nullptr", "init", 280);
    _os_crash("assertion failure: (m_renderGraphManager == nullptr) Render Graph manager is not null before init.");
    __break(1u);
LABEL_101:
    re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 8, v13);
    _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v110, v111);
    __break(1u);
LABEL_102:
    if (__cxa_guard_acquire(&qword_1EE1B9A78))
    {
      re::Defaults::BOOLValue(&buf, "disableCrossQueueHazardTracking", v102);
      if (buf)
      {
        v103 = BYTE1(buf);
      }

      else
      {
        v103 = 0;
      }

      *v13 = v103;
      __cxa_guard_release(v13 + 1);
    }
  }

  v64 = re::globalAllocators(v62);
  v65 = (*(*v64[2] + 32))(v64[2], 704, 8);
  v66 = re::RenderGraphManager::RenderGraphManager(v65);
  *(this + 37) = v66;
  re::RenderGraphManager::init(v66, *(this + 32));
  re::Defaults::BOOLValue(&v113, "disableRenderGraphCaching", v67);
  v69 = a2 + 316;
  if (v113)
  {
    v69 = &v114;
  }

  if (*v69 == 1)
  {
    v70 = *(this + 37);
    *(v70 + 380) = 1;
    *(v70 + 376) = 0;
    *(v70 + 352) = 0;
    *(v70 + 360) = 0;
    *(v70 + 368) = 0;
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    *(v70 + 352) = rep;
    *(v70 + 368) = 1;
    *(v70 + 672) = 0;
  }

  v71 = re::globalAllocators(rep);
  v72 = (*(*v71[2] + 32))(v71[2], 912, 16);
  bzero(v72, 0x390uLL);
  *v72 = 1;
  *(v72 + 25) = 0;
  *(v72 + 26) = 0;
  *(v72 + 24) = 0;
  *(v72 + 54) = 0;
  v72[304] = 0;
  *(v72 + 47) = 0;
  *(v72 + 44) = 0;
  *(v72 + 45) = 0;
  *(v72 + 43) = 0;
  *(v72 + 92) = 0;
  *(v72 + 60) = 0;
  *(v72 + 57) = 0;
  *(v72 + 58) = 0;
  *(v72 + 56) = 0;
  *(v72 + 118) = 0;
  *(v72 + 70) = 0;
  *(v72 + 72) = 0;
  *(v72 + 71) = 0;
  *(v72 + 146) = 0;
  v72[809] = 0;
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  *(v72 + 40) = 0u;
  *(v72 + 56) = 0u;
  *(v72 + 72) = 0u;
  *(v72 + 88) = 0u;
  *(v72 + 104) = 0u;
  *(v72 + 120) = 0u;
  *(v72 + 136) = 0u;
  *(v72 + 148) = 0u;
  *(v72 + 21) = 0;
  *(v72 + 22) = 0;
  v72[184] = 0;
  *(v72 + 37) = 0u;
  *(v72 + 38) = 0u;
  *(v72 + 156) = 0;
  *(v72 + 632) = 0u;
  *(v72 + 648) = 0u;
  *(v72 + 664) = 0u;
  *(v72 + 680) = 0u;
  *(v72 + 696) = 0u;
  *(v72 + 712) = 0u;
  *(v72 + 728) = 0u;
  *(v72 + 744) = 0u;
  *(v72 + 753) = 0u;
  *(v72 + 203) = 1065353216;
  *(v72 + 102) = 0x3F8000003F000000;
  *(v72 + 828) = 0x412000003DCCCCCDLL;
  v73 = MEMORY[0x1E69E9B10];
  v74 = *(MEMORY[0x1E69E9B10] + 32);
  *(v72 + 54) = *(MEMORY[0x1E69E9B10] + 16);
  *(v72 + 55) = v74;
  *(v72 + 53) = *v73;
  *(this + 38) = v72;
  v75 = re::ProbeManager::init(v72, *(this + 32));
  *(this + 73) = *(this + 32);
  *(this + 74) = this;
  *(this + 75) = a4;
  *(this + 208) = a3;
  if (a3)
  {
    v75 = re::ProfilerManager::getProcessor<re::FrameProfiler,void>(a3);
    *(this + 206) = v75;
  }

  v76 = *(a2 + 314);
  *(this + 785) = v76;
  *(this + 784) = v76;
  if (v76 == 1)
  {
    v77 = re::globalAllocators(v75);
    v78 = (*(*v77[2] + 32))(v77[2], 440, 8);
    *(v78 + 24) = 0;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    *(v78 + 32) = 0;
    *(v78 + 56) = 0;
    *(v78 + 104) = 0;
    *(v78 + 112) = 0;
    *(v78 + 120) = 0;
    *(v78 + 152) = 0;
    *(v78 + 64) = 0u;
    *(v78 + 80) = 0u;
    *(v78 + 96) = 0;
    *v78 = 0;
    *(v78 + 8) = 0;
    *(v78 + 15) = 0;
    *(v78 + 208) = 850045863;
    *(v78 + 216) = 0u;
    *(v78 + 232) = 0u;
    *(v78 + 248) = 0u;
    *(v78 + 264) = 0;
    *(v78 + 272) = 1018212795;
    *(v78 + 305) = 0u;
    *(v78 + 280) = 0u;
    *(v78 + 296) = 0u;
    *(v78 + 328) = 850045863;
    *(v78 + 352) = 0u;
    *(v78 + 368) = 0u;
    *(v78 + 336) = 0u;
    *(v78 + 384) = 0;
    *(v78 + 392) = 1018212795;
    *(v78 + 432) = 0;
    *(v78 + 400) = 0u;
    *(v78 + 416) = 0u;
    *(this + 39) = v78;
    v75 = re::RenderThread::init(v78, *(this + 32));
  }

  v79 = re::globalAllocators(v75);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(this + 48, v79[2], 3);
  if (*(this + 786) == 1)
  {
    *&buf = [*(*(this + 32) + 208) newSharedEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 100, &buf);
    if (buf)
    {
    }
  }

  else
  {
    v80 = dispatch_semaphore_create(*(a2 + 33));

    v81 = *(this + 99);
    *(this + 99) = v80;
  }

  *&buf = [*(*(this + 32) + 208) newEvent];
  NS::SharedPtr<MTL::Texture>::operator=(this + 105, &buf);
  if (buf)
  {
  }

  if (a6)
  {
    re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 2, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 92, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 96, &buf);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 93, &buf);
    v118 = *(*(*(this + 32) + 24) + 760);
    NS::SharedPtr<MTL::Texture>::operator=(this + 94, &v118);
    if (v118)
    {
    }

    if (buf)
    {
    }

    re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 3, &buf);
    NS::SharedPtr<MTL::Texture>::operator=(this + 95, &buf);
    if (buf)
    {
    }
  }

  else
  {
    v118 = *(*(this + 32) + 208);
    v82 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v82 setTextureType_];
    [v82 setWidth_];
    [v82 setHeight_];
    [v82 setPixelFormat_];
    [v82 setMipmapLevelCount_];
    [v82 setSampleCount_];
    [v82 setUsage_];
    [v82 setStorageMode_];
    re::mtl::Device::makeTexture(&buf, v82, &v118);
    v83 = (this + 736);
    NS::SharedPtr<MTL::Texture>::operator=(this + 92, &buf);
    if (buf)
    {
    }

    [*v83 setLabel_];
    v84 = *v83;
    buf = 0uLL;
    v120 = 0;
    v121 = vdupq_n_s64(0x80uLL);
    v122 = 1;
    [v84 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::brdfMapData bytesPerRow:1024 bytesPerImage:0x20000];
    if (v82)
    {
    }

    v118 = *(*(this + 32) + 208);
    v85 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v85 setTextureType_];
    [v85 setWidth_];
    [v85 setHeight_];
    [v85 setPixelFormat_];
    [v85 setMipmapLevelCount_];
    [v85 setSampleCount_];
    [v85 setUsage_];
    [v85 setStorageMode_];
    re::mtl::Device::makeTexture(&buf, v85, &v118);
    v86 = (this + 768);
    NS::SharedPtr<MTL::Texture>::operator=(this + 96, &buf);
    if (buf)
    {
    }

    [*v86 setLabel_];
    v87 = *v86;
    buf = 0uLL;
    v120 = 0;
    v121 = vdupq_n_s64(0x80uLL);
    v122 = 1;
    [v87 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::clothBrdfMapData bytesPerRow:1024 bytesPerImage:0x20000];
    if (v85)
    {
    }

    v118 = *(*(this + 32) + 208);
    v88 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v88 setTextureType_];
    [v88 setWidth_];
    [v88 setHeight_];
    [v88 setPixelFormat_];
    [v88 setMipmapLevelCount_];
    [v88 setSampleCount_];
    [v88 setUsage_];
    [v88 setStorageMode_];
    re::mtl::Device::makeTexture(&buf, v88, &v118);
    NS::SharedPtr<MTL::Texture>::operator=(this + 93, &buf);
    if (buf)
    {
    }

    [*(this + 93) setLabel_];
    *&buf = [v118 newBufferWithLength:64 options:0];
    v89 = (this + 752);
    NS::SharedPtr<MTL::Texture>::operator=(this + 94, &buf);
    if (buf)
    {
    }

    [*v89 setLabel_];
    v90 = *(this + 93);
    buf = 0uLL;
    v120 = 0;
    v121 = vdupq_n_s64(0x20uLL);
    v122 = 1;
    [v90 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::multiscatterBrdfMapData bytesPerRow:64 bytesPerImage:2048];
    v91 = [*v89 contents];
    *v91 = re::multiscatterBrdfAvgTableData;
    v91[1] = unk_1E30D7437;
    v91[2] = xmmword_1E30D7447;
    v91[3] = unk_1E30D7457;
    if (v88)
    {
    }

    v92 = *(*(this + 32) + 208);
    v117 = 1;
    v118 = v92;
    v115 = 0;
    v116 = 115;
    *&buf = 2;
    TextureCompressionType = re::mtl::getTextureCompressionType(&v118, &v115, &v116, &v117, &buf);
    v94 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    if (([v94 respondsToSelector_] & 1) != 0 || objc_msgSend(v94, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v94 setCompressionType_];
    }

    [v94 setTextureType_];
    [v94 setWidth_];
    [v94 setHeight_];
    [v94 setArrayLength_];
    [v94 setPixelFormat_];
    [v94 setSampleCount_];
    [v94 setMipmapLevelCount_];
    [v94 setUsage_];
    [v94 setStorageMode_];
    re::mtl::Device::makeTexture(&buf, v94, &v118);
    v95 = (this + 760);
    NS::SharedPtr<MTL::Texture>::operator=(this + 95, &buf);
    if (buf)
    {
    }

    [*v95 setLabel_];
    v96 = *v95;
    buf = 0uLL;
    v120 = 0;
    v112 = vdupq_n_s64(0x40uLL);
    v121 = v112;
    v122 = 1;
    [v96 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:&re::gAreaLightTable1 bytesPerRow:512 bytesPerImage:0x8000];
    v97 = *v95;
    buf = 0uLL;
    v120 = 0;
    v121 = v112;
    v122 = 1;
    [v97 replaceRegion:&buf mipmapLevel:0 slice:1 withBytes:&re::gAreaLightTable2 bytesPerRow:512 bytesPerImage:0x8000];
    if (v94)
    {
    }
  }

  re::TextureManager::stockTextureForType(*(*(this + 32) + 56), 3, &buf);
  NS::SharedPtr<MTL::Texture>::operator=(this + 97, &buf);
  if (buf)
  {
  }

  re::DrawingManager::initShaderSources(this);
  re::MeshManager::prewarmVertexFetchFunctions(a5);
  if (*(a2 + 317) == 1)
  {
    v99 = re::globalAllocators(v98)[2];
    *&buf = &unk_1F5D06DD0;
    *(&buf + 1) = this;
    v121.i64[0] = v99;
    v121.i64[1] = &buf;
    LOWORD(v118) = *(this + 120);
    re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(this + 912, &v118, &buf);
    ++*(this + 120);
    re::DrawingManager::activatePerfSampling(this);
    re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(&buf);
  }

  v100 = *(this + 248);
  if (v12)
  {
  }

  return v100;
}