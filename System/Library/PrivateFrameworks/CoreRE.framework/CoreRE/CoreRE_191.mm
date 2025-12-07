uint64_t std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::VertexCacheDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08998;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08A00;
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08A00;
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08A00;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15>,void ()(re::JiggleDeformer *)>::operator()(re *result, re::JiggleDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::JiggleDeformer::~JiggleDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15>,void ()(re::JiggleDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::JiggleDeformer::~JiggleDeformer(re::JiggleDeformer *this)
{
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::deinit(this + 144);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 144);
  re::DataArray<re::ecs2::Component *>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::BucketArray<unsigned long,64ul>::deinit(this + 24);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 24);
}

{
  re::JiggleDeformer::~JiggleDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1, i);
      v5 = *(v4 + 8);
      if (v5)
      {

        *(v4 + 8) = 0;
      }

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

uint64_t re::BucketArray<unsigned long,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1, i);
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

uint64_t std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::JiggleDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::JiggleDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B10;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08B78;
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08B78;
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B78;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::ReadOnlyCPUAccessibleBufferSliceContent::make(uint64_t *__return_ptr a1@<X8>, re::ReadOnlyCPUAccessibleBufferSliceContent *this@<X0>)
{
  v4 = objc_autoreleasePoolPush();
  if ((re::BufferSlice::isValid(this) & 1) == 0)
  {
    v9 = std::system_category();
    v10 = "Buffer slice is invalid";
LABEL_5:
    v11 = v43[0];
    v12 = v43[1];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = v9;
    *(a1 + 3) = v11;
    *(a1 + 5) = v12;
    goto LABEL_28;
  }

  if (*(this + 6) == 1)
  {
    v6 = re::BufferSlice::contents(this);
    v7 = *(this + 9);
    v38[0] = v6;
    v38[1] = v7;
    v39 = 0u;
    memset(v40, 0, 25);
    v41 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v40[24], this);
    v42 = *(this + 4);
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v43, v38);
    *a1 = 1;
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent((a1 + 1), v43);
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v43);
    v8 = v38;
LABEL_27:
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v8);
    goto LABEL_28;
  }

  re::BufferSlice::buffer(this, v5);
  v13 = [*this iosurface];
  if (v13)
  {
    v14 = v13;
    if (IOSurfaceLock(v13, 1u, 0))
    {
LABEL_8:
      v9 = std::system_category();
      v10 = "Could not allocate ReadOnlyCPUAccessibleBufferSliceContent";
      goto LABEL_5;
    }

    BaseAddress = IOSurfaceGetBaseAddress(v14);
    v16 = *(this + 9);
    *&v43[0] = &BaseAddress[*(this + 8)];
    *(&v43[0] + 1) = v16;
    *&v43[1] = 0;
    *(&v43[1] + 1) = v14;
    v45 = 0;
    v44 = 0;
    memset(&v43[2], 0, 32);
    CFRetain(v14);
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v38, v43);
    *a1 = 1;
    v17 = a1 + 1;
LABEL_26:
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v17, v38);
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v38);
    v8 = v43;
    goto LABEL_27;
  }

  if ([*this storageMode] == 3)
  {
    v9 = std::system_category();
    v10 = "Buffer storage is memoryless";
    goto LABEL_5;
  }

  if ([*this storageMode] != 2)
  {
    v29 = [*this contents];
    v30 = *(this + 9);
    v31 = &v29[*(this + 8)];
    v32 = *this;
    *&v43[0] = v31;
    *(&v43[0] + 1) = v30;
    v45 = 0;
    v44 = 0;
    memset(&v43[1] + 8, 0, 40);
    *&v43[1] = v32;
    if (!v32)
    {
LABEL_25:
      re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v38, v43);
      *a1 = 1;
      v17 = a1 + 1;
      goto LABEL_26;
    }

    v28 = v32;
LABEL_23:

    goto LABEL_25;
  }

  if (!*(this + 9))
  {
    v45 = 0;
    v44 = 0;
    memset(v43, 0, 64);
    goto LABEL_25;
  }

  v18 = [*this device];
  if (!v18)
  {
    v9 = std::system_category();
    v10 = "No render device for private buffer.";
    goto LABEL_5;
  }

  v19 = v18;
  v20 = [v18 newCommandQueue];
  if (!v20)
  {
    v9 = std::system_category();
    v10 = "Could not create command queue to blit private storage.";
    goto LABEL_5;
  }

  v21 = v20;
  v22 = [v20 commandBuffer];
  if (!v22 || (v23 = v22, (v24 = [v22 blitCommandEncoder]) == 0) || (v25 = v24, (v26 = objc_msgSend(v19, sel_newBufferWithLength_options_, *(this + 9), 16)) == 0))
  {

    goto LABEL_8;
  }

  v27 = v26;
  [v25 copyFromBuffer:*this sourceOffset:*(this + 8) toBuffer:v26 destinationOffset:0 size:*(this + 9)];
  [v25 synchronizeResource_];
  [v25 endEncoding];
  [v23 commit];
  [v23 waitUntilCompleted];

  if ([v19 hasUnifiedMemory])
  {
    *&v43[0] = [v27 contents];
    *(&v43[0] + 1) = [v27 length];
    v45 = 0;
    v44 = 0;
    memset(&v43[1] + 8, 0, 40);
    *&v43[1] = v27;
    v28 = v27;
    goto LABEL_23;
  }

  v33 = [v27 contents];
  v34 = *(this + 9);
  *&v43[0] = v33;
  *(&v43[0] + 1) = v34;
  re::FixedArray<unsigned char>::FixedArray(&v36, v43);

  v43[1] = 0u;
  v43[2] = v36;
  v35 = v37;
  v37 = 0;
  v36 = 0uLL;
  v43[3] = v35;
  v45 = 0;
  v44 = 0;
  *&v43[0] = v35;
  *(&v43[0] + 1) = *(&v43[2] + 1);
  re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v38, v43);
  *a1 = 1;
  re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent((a1 + 1), v38);
  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v38);
  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v43);
  if (v36 && *(&v36 + 1))
  {
    (*(*v36 + 40))();
  }

LABEL_28:
  objc_autoreleasePoolPop(v4);
}

_anonymous_namespace_ *re::FixedArray<unsigned char>::FixedArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::FixedArray<unsigned char>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::shouldMergeVFXEffectsIntoOneWorld(re *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "enableVFXMergeEffectsIntoOneWorld", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::shouldMergeVFXEffectsIntoOneWorld(void)::kMergeVFXEffectsIntoOneWorld = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3152];
}

uint64_t re::VFXLoadTask::VFXLoadTask(uint64_t a1, void *a2)
{
  v3 = a2;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08BF8;
  *(a1 + 24) = 0;
  v4 = _Block_copy(v3);

  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void re::VFXLoadTask::~VFXLoadTask(id *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::VFXLoadRuntimeTask::~VFXLoadRuntimeTask(id *this)
{
  *this = &unk_1F5D08C28;

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::VFXLoadRuntimeTask::~VFXLoadRuntimeTask(this);

  JUMPOUT(0x1E6906520);
}

re::VFXManager *re::VFXManager::VFXManager(re::VFXManager *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 23) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  v2 = objc_alloc_init(VFXRERenderTargetInfoImpl);
  *(this + 24) = v2;

  v3 = objc_alloc_init(VFXRECachedRenderCommandEncoder);
  *(this + 25) = v3;

  *(this + 52) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0;
  return this;
}

void re::VFXManager::appendLoadRuntimeTask(dispatch_queue_t *this, re::VFXLoadRuntimeTask *a2)
{
  v4 = *(a2 + 6);
  if (*(this + 25) == 1)
  {
    objc_initWeak(&location, a2 + 8);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke;
    aBlock[3] = &__block_descriptor_40_a8_32c47_ZTSN2re10ArcWeakPtrINS_18VFXLoadRuntimeTaskEEE_e5_v8__0l;
    v21 = 0;
    objc_copyWeak(&v21, &location);
    v5 = _Block_copy(aBlock);
    if (re::shouldMergeVFXEffectsIntoOneWorld(v5))
    {
      to = 0;
      objc_copyWeak(&to, &location);
      v18 = this;
      v19 = _Block_copy(v5);
      from = 0;
      objc_copyWeak(&from, &location);
      v12 = v4;
      v13 = this;
      v14 = 0;
      objc_copyWeak(&v14, &to);
      v15 = v18;
      v16 = _Block_copy(v19);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3321888768;
      v25 = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke;
      v26 = &__block_descriptor_80_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1_e5_v8__0l;
      v27 = 0;
      objc_copyWeak(&v27, &from);
      v28 = v12;
      v29 = v13;
      v30[0] = 0;
      objc_copyWeak(v30, &v14);
      v30[1] = v15;
      v31 = _Block_copy(v16);
      v6 = _Block_copy(&v23);

      objc_destroyWeak(v30);
      v30[0] = 0;

      objc_destroyWeak(&v27);
      dispatch_async(this[4], v6);

      objc_destroyWeak(&v14);
      v14 = 0;

      objc_destroyWeak(&from);
      p_to = &to;
    }

    else
    {
      from = 0;
      objc_copyWeak(&from, &location);
      v12 = v4;
      v13 = this;
      v14 = _Block_copy(v5);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3321888768;
      v25 = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__2cvU13block_pointerFvvEEv_block_invoke;
      v26 = &__block_descriptor_64_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__2_e5_v8__0l;
      v27 = 0;
      objc_copyWeak(&v27, &from);
      v28 = v12;
      v29 = v13;
      v30[0] = _Block_copy(v14);
      v10 = _Block_copy(&v23);

      objc_destroyWeak(&v27);
      dispatch_async(this[4], v10);

      p_to = &from;
    }

    objc_destroyWeak(p_to);

    objc_destroyWeak(&v21);
    v21 = 0;
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock(a2 + 10);
    v8 = *(a2 + 24);
    os_unfair_lock_unlock(a2 + 10);
    if ((v8 & 1) == 0)
    {
      v9 = [v4 copy];
      re::ObjCObject::operator=(a2 + 7, v9);

      (*(*(a2 + 4) + 16))();
    }
  }
}

void ___ZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      (*(*&v2[6]._os_unfair_lock_opaque + 16))();
    }
  }
}

void re::VFXManager::appendLoadLegacyRuntimeTask(dispatch_queue_t *this, re::VFXLoadRuntimeTask *a2)
{
  v4 = *(a2 + 6);
  if (*(this + 25) == 1)
  {
    objc_initWeak(&location, a2 + 8);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke;
    aBlock[3] = &__block_descriptor_40_a8_32c47_ZTSN2re10ArcWeakPtrINS_18VFXLoadRuntimeTaskEEE_e5_v8__0l;
    v20 = 0;
    objc_copyWeak(&v20, &location);
    v5 = _Block_copy(aBlock);
    v14 = 0;
    objc_copyWeak(&v14, &location);
    *&v15 = this;
    *(&v15 + 1) = this;
    v16 = v4;
    v17 = this;
    v18 = _Block_copy(v5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = ___ZZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v22[3] = &__block_descriptor_80_a8_32c82_ZTSKZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1_e5_v8__0l;
    v23 = 0;
    objc_copyWeak(&v23, &v14);
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = _Block_copy(v18);
    v6 = _Block_copy(v22);

    objc_destroyWeak(&v23);
    dispatch_async(this[4], v6);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v20);
    v20 = 0;
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock(a2 + 10);
    v7 = *(a2 + 24);
    os_unfair_lock_unlock(a2 + 10);
    if ((v7 & 1) == 0)
    {
      VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v8);
      VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
      v11 = 0;
      if (VFXSceneLoadOptionsClass)
      {
        v12 = VFXRESceneClass;
        if (VFXRESceneClass)
        {
          v13 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v13 setEnableRuntimeScriptCompilation:*(this + 24)];
          v11 = [[v12 alloc] initWithCommandQueue:*this model:v4 options:v13];
        }
      }

      re::ObjCObject::operator=(a2 + 7, v11);

      (*(*(a2 + 4) + 16))();
    }
  }
}

void ___ZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      (*(*&v2[6]._os_unfair_lock_opaque + 16))();
    }
  }
}

void re::VFXManager::makeScheduledLoadRuntimeTask(dispatch_queue_t *a1@<X0>, re *a2@<X1>, void *a3@<X2>, re::VFXLoadRuntimeTask **a4@<X8>)
{
  v7 = a3;
  re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(a2, &v7, a4);
  re::VFXManager::appendLoadRuntimeTask(a1, *a4);
}

void re::VFXManager::makeScheduledLoadLegacyRuntimeTask(dispatch_queue_t *a1@<X0>, re *a2@<X1>, void *a3@<X2>, re::VFXLoadRuntimeTask **a4@<X8>)
{
  v7 = a3;
  re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(a2, &v7, a4);
  re::VFXManager::appendLoadLegacyRuntimeTask(a1, *a4);
}

void re::VFXManager::loadWorld(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  VFXWorldClass = re::getVFXWorldClass(v8);
  if (VFXWorldClass)
  {
    v10 = [(objc_class *)VFXWorldClass worldWithURL:v7 options:v8 error:a3];
    *a4 = v10;
  }

  else
  {
    if ((atomic_exchange(&re::VFXManager::loadWorld(NSURL *,NSDictionary *,NSError * {__autoreleasing}*)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v11 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", v12, 2u);
      }
    }

    *a4 = 0;
  }
}

void re::VFXManager::loadWorld(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = v9 = a1;
  v6 = v5;
  if (v5)
  {
    re::VFXManager::loadWorld(v9, v5, a2, &v10);
    v7 = v10;

    if (*a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }
}

id re::anonymous namespace::vfxWorldInitOptionsForRE(re::_anonymous_namespace_ *this)
{
  v1 = re::getVFXWorldInitOptionForREOptionKey(this);
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v2 setValue:v3 forKey:v1];
  }

  else
  {
    {
      v4 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VFX framework misses VFXWorldInitOptionForREOptionKey", v6, 2u);
      }
    }

    v2 = 0;
  }

  return v2;
}

void re::VFXManager::prepareWorld(re *a1, id *a2)
{
  VFXRendererClass = re::getVFXRendererClass(a1);
  VFXTransactionClass = re::getVFXTransactionClass(VFXRendererClass);
  if (VFXRendererClass && (v6 = VFXTransactionClass) != 0)
  {
    [(objc_class *)VFXTransactionClass flush];
    v7 = *a2;
    v8 = re::getVFXRendererInitOptionForREOptionKey(v7);
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
      [v9 setValue:v10 forKey:v8];

      v11 = [VFXRendererClass rendererWithCommandQueue:*(a1 + 1) options:v9];
      [v11 setRendererKind:6];
      [v11 setWorld:v7];
      [(re *)v7 prepareWithRenderer:v11];
      [(objc_class *)v6 flush];
    }

    else if ((atomic_exchange(byte_1EE1B9B82, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "VFX framework misses VFXRendererInitOptionForREOptionKey", v14, 2u);
      }
    }
  }

  else if ((atomic_exchange(&unk_1EE1B9B81, 1u) & 1) == 0)
  {
    v12 = *re::graphicsLogObjects(VFXTransactionClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
    }
  }
}

void re::VFXManager::loadAndPrepareWorld(re *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = v7 = a2;
  v9 = v8;
  if (v8)
  {
    re::VFXManager::loadWorld(v7, v8, a3, &v38);
    v10 = v38;

    if (*a3)
    {
      *a4 = 0;
    }

    else
    {
      if (re::shouldMergeVFXEffectsIntoOneWorld(v11))
      {
        v12 = v10;
        v37 = v12;
        re::VFXManager::prepareWorld(a1, &v37);
      }

      else
      {
        v13 = [v10 rootNode];
        v14 = [v13 childNodes];
        v15 = [v14 copy];

        VFXNodeClass = re::getVFXNodeClass(v16);
        if (!VFXNodeClass)
        {
          *a4 = 0;

          goto LABEL_17;
        }

        v18 = VFXNodeClass;
        v19 = objc_alloc_init(VFXNodeClass);
        v20 = objc_alloc_init(v18);
        v29 = v13;
        [v13 addChildNode:v19];
        v28 = v19;
        [v19 addChildNode:v20];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = v15;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [v20 addChildNode:*(*(&v33 + 1) + 8 * i)];
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v23);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = ___ZN2re10VFXManager19loadAndPrepareWorldEP5NSURLPU15__autoreleasingP7NSError_block_invoke;
        v31[3] = &unk_1E871FCA8;
        v32 = v28;
        v26 = v28;
        [v20 enumerateChildNodesUsingBlock:v31];
        v27 = v10;
        v30 = v27;
        re::VFXManager::prepareWorld(a1, &v30);
      }

      *a4 = v10;
    }

LABEL_17:

    goto LABEL_18;
  }

  *a4 = 0;
LABEL_18:
}

void ___ZN2re10VFXManager19loadAndPrepareWorldEP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 particleEmitter];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 anchor];

    v3 = v5;
    if (!v4)
    {
      [v5 setAnchor:*(a1 + 32)];
      v3 = v5;
    }
  }
}

void re::VFXManager::createRuntimeWorld(uint64_t *__return_ptr a1@<X8>, re::VFXManager *this@<X0>, uint64_t a3@<X1>)
{
  v23 = a3;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, &v23);
  if (v5)
  {
    *a1 = *v5;
  }

  else
  {
    VFXREWorldSimulationClass = re::getVFXREWorldSimulationClass(0);
    VFXWorldClass = re::getVFXWorldClass(VFXREWorldSimulationClass);
    if (VFXREWorldSimulationClass && (v8 = VFXWorldClass) != 0)
      v9 = {;
      if (v9)
      {
        v10 = [[v8 alloc] initWithOptions:v9];
        v11 = [[VFXREWorldSimulationClass alloc] initWithCommandQueue:*this];
        [v11 setWorld:v10];
        v12 = [v11 world];
        v18 = v12;
        v13 = [v11 pointOfView];
        v19 = v13;
        v14 = v11;
        v20 = v14;
        v21 = 0;
        v22 = 0;
        v15 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 56, &v23, &v18);

        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      *a1 = v16;
    }

    else
    {
      if ((atomic_exchange(&re::VFXManager::createRuntimeWorld(unsigned long long)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v17 = *re::graphicsLogObjects(VFXWorldClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", &v18, 2u);
        }
      }

      *a1 = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  if (HIDWORD(v14) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v14) << 6) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v14, v13);
  *(v7 + 8) = *a2;
  v8 = *a3;
  *a3 = 0;
  *(v7 + 16) = v8;
  result = v7 + 16;
  v10 = a3[1];
  a3[1] = 0;
  *(result + 8) = v10;
  v11 = a3[2];
  a3[2] = 0;
  *(result + 16) = v11;
  v12 = a3[3];
  *(result + 32) = *(a3 + 8);
  *(result + 24) = v12;
  ++*(a1 + 40);
  return result;
}

void re::VFXManager::registerRuntimeWorld(void *a1, uint64_t a2, id *a3)
{
  v18 = a2;
  if (!re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a1 + 7), &v18))
  {
    VFXREWorldSimulationClass = re::getVFXREWorldSimulationClass(0);
    if (VFXREWorldSimulationClass)
    {
      v6 = VFXREWorldSimulationClass;
      v7 = *a3;
      v8 = [[v6 alloc] initWithCommandQueue:*a1];
      [v8 setWorld:v7];

      v9 = [v8 world];
      v13 = v9;
      v10 = [v8 pointOfView];
      v14 = v10;
      v11 = v8;
      v15 = v11;
      v16 = 0;
      v17 = 0;
      re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((a1 + 7), &v18, &v13);
    }

    else if ((atomic_exchange(re::VFXManager::registerRuntimeWorld(unsigned long long,re::ObjCObject)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v12 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", &v13, 2u);
      }
    }
  }
}

uint64_t re::VFXManager::registerEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, a3);
  if (result)
  {
    v6 = result;
    result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, &v7);
    if (result)
    {
      *(result + 24) = 1;
    }

    else
    {
      *(a3 + 24) = 1;
      result = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 104, &v7, a3);
    }

    ++*(v6 + 32);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  v9 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(result + 8) = v9;
  v10 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(result + 16) = v10;
  *(result + 24) = *(a3 + 24);
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::VFXManager::unRegisterEffect(re::VFXManager *this, uint64_t a2)
{
  v5 = a2;
  result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v5);
  if (result)
  {
    *(result + 24) = 0;
    v4 = *result;
    result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, &v4);
    if (result)
    {
      --*(result + 8);
      return re::DynamicArray<re::TransitionCondition *>::add((this + 152), &v5);
    }
  }

  return result;
}

unint64_t re::VFXManager::doRemoveEffects(unint64_t this)
{
  v1 = this;
  v2 = *(this + 168);
  if (v2)
  {
    v3 = *(this + 184);
    v4 = 8 * v2;
    do
    {
      v11 = *v3;
      this = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v1 + 104, &v11);
      if (this)
      {
        v5 = this;
        if ((*(this + 24) & 1) == 0)
        {
          v10 = *this;
          this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 56, &v10);
          if (this)
          {
            if (*(this + 32) < 1)
            {
              re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 56, &v10);
            }

            else
            {
              v6 = *(v5 + 8);
              v7 = v6;
              v8 = *(v5 + 16);
              v9 = v6;
              [v9 removeFromParentNode];
              [v8 removeFromParent];
            }

            this = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 104, &v11);
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 168) = 0;
  ++*(v1 + 176);
  return this;
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

void re::VFXManager::addCamera(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a2;
  v4 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, &v7);
  if (v4)
  {
    v5 = *a3;
    v6 = *(v4 + 16);
    [v6 addSecondaryPointOfView:v5];
  }
}

void re::VFXManager::removeCamera(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a2;
  v4 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, &v7);
  if (v4)
  {
    v5 = *a3;
    v6 = *(v4 + 16);
    [v6 removeSecondaryPointOfView:v5];
  }
}

void re::VFXManager::beginFrame(re::VFXManager *this, unint64_t a2)
{
  v4 = *(this + 22);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 9);
    while (1)
    {
      v7 = *v6;
      v6 += 16;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 22);
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
    v8 = *(this + 22);
    do
    {
      v9 = *(this + 9) + (v5 << 6);
      if (*(v9 + 40) >= a2)
      {
        atomic_store(a2, this + 29);
        *(this + 248) = 1;
        v10 = *(this + 25);
        v11 = v10;
        v12 = *(v9 + 32);
        v13 = v12;
        v14 = v10;
        [v12 beginFrameWithEncoder:v14 frameIndex:a2];

        v8 = *(this + 22);
      }

      if (v8 <= v5 + 1)
      {
        v15 = v5 + 1;
      }

      else
      {
        v15 = v8;
      }

      while (v15 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 9) + (v5 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v5) = v15;
LABEL_19:
      ;
    }

    while (v5 != v4);
  }
}

unsigned int *re::VFXManager::endFrame(unsigned int *this, unint64_t a2)
{
  if (*(this + 248) == 1)
  {
    v3 = this;
    v4 = this[22];
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 9);
      while (1)
      {
        v7 = *v6;
        v6 += 16;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = this[22];
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
      v8 = this[22];
      do
      {
        v9 = *(v3 + 9) + (v5 << 6);
        if (*(v9 + 40) >= a2)
        {
          this = [*(v9 + 32) endFrame];
          v8 = v3[22];
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
          if ((*(*(v3 + 9) + (v5 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v5) = v10;
LABEL_20:
        ;
      }

      while (v5 != v4);
    }

    *(v3 + 248) = 0;
  }

  return this;
}

id *re::VFXManager::init(id *this, id *a2)
{
  v11 = 0x100000001;
  v12 = 0;
  v13 = 0;
  re::dispatch::Queue::make("VFXRuntimeLoadingQueue", &v11, &v14);
  v4 = this + 4;
  if (this + 4 != &v14)
  {
    v5 = v14;
    v14 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  v11 = 0x100000001;
  v12 = 0;
  v13 = 0;
  re::dispatch::Queue::make("VFXDispatchRuntimeMergeQueue", &v11, &v14);
  v7 = this + 5;
  if (this + 5 != &v14)
  {
    v8 = v14;
    v14 = 0;
    v9 = *v7;
    *v7 = v8;
  }

  return re::ObjCObject::operator=(this + 6, a2);
}

void re::VFXManager::setRenderManager(id *location, _BYTE *a2)
{
  location[2] = a2;
  if (a2 && a2[205] == 1)
  {
    *&v15[9] = v2;
    v16 = v3;
    if ((atomic_load_explicit(&qword_1EE1B9B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9B88))
    {
      re::Defaults::BOOLValue(v15, "enableVFXUseRERenderCommandQueue", v13);
      if (LOBYTE(v15[0]))
      {
        v14 = HIBYTE(v15[0]);
      }

      else
      {
        v14 = 1;
      }

      _MergedGlobals_457 = v14;
      __cxa_guard_release(&qword_1EE1B9B88);
    }

    v5 = location[2];
    if (_MergedGlobals_457 == 1)
    {
      v6 = *(v5 + 14);
      if (v6)
      {
        re::ObjCObject::operator=(location, (v6 + 280));
      }
    }

    else
    {
      v7 = [*(v5 + 26) newCommandQueue];

      v8 = *location;
      *location = v7;

      v9 = @"VFX Render";
      [*location setLabel:@"VFX Render"];
    }

    v10 = [*(location[2] + 26) newCommandQueue];

    v11 = location[1];
    location[1] = v10;

    v12 = @"VFX Prepare";
    [location[1] setLabel:@"VFX Prepare"];
  }
}

void *re::allocInfo_VFXManager(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9B90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9B98, "VFXManager");
    __cxa_guard_release(&qword_1EE1B9B90);
  }

  return &unk_1EE1B9B98;
}

void re::initInfo_VFXManager(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x109929CB96DDCALL;
  v8[1] = "VFXManager";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_VFXManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::VFXManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::VFXManager>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 152);
  re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a3 + 104));
  re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a3 + 56));

  v4 = *a3;
}

void re::internal::defaultDestructV2<re::VFXManager>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 152);
  re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a1 + 104));
  re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a1 + 56));

  v2 = *a1;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v5 = [*(a1 + 40) copy];
      re::ObjCObject::operator=(&v3[12], v5);

      v6 = *(a1 + 48);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3321888768;
      aBlock[2] = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__0cvU13block_pointerFvvEEv_block_invoke;
      aBlock[3] = &__block_descriptor_56_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__0_e5_v8__0l;
      v10[0] = 0;
      objc_copyWeak(v10, (a1 + 56));
      v7 = *(a1 + 72);
      v10[1] = *(a1 + 64);
      v11 = _Block_copy(v7);
      v8 = _Block_copy(aBlock);

      objc_destroyWeak(v10);
      dispatch_async(*(v6 + 40), v8);
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 40);
  *(v3 + 56) = 0;
  v3 += 56;
  v5 = *(a2 + 48);
  *(v3 - 16) = v4;
  *(v3 - 8) = v5;
  objc_copyWeak(v3, (a2 + 56));
  v6 = *(a2 + 72);
  *(v3 + 8) = *(a2 + 64);
  result = _Block_copy(v6);
  *(v3 + 16) = result;
  return result;
}

void __destroy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(id *a1)
{
  objc_destroyWeak(a1 + 7);
  a1[7] = 0;

  objc_destroyWeak(a1 + 4);
  a1[4] = 0;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v5 = atomic_load((*(a1 + 40) + 240));
      v6 = atomic_load((*(a1 + 40) + 232));
      if (v5 >= v6)
      {
        usleep(0x64u);
      }

      v7 = *(a1 + 40);
      v8 = (v7 + 240);
      v9 = atomic_load((v7 + 232));
      atomic_store(v9, v8);
      dispatch_async(*(*(a1 + 40) + 48), *(a1 + 48));
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 48);
  *(v3 + 8) = *(a2 + 40);
  result = _Block_copy(v4);
  *(v3 + 16) = result;
  return result;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__2cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      re::ObjCObject::operator=(&v3[12], *(a1 + 40));
      dispatch_async(*(*(a1 + 48) + 48), *(a1 + 56));
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = (a1 + 32);
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 40);
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  v3[1] = v4;
  v3[2] = v6;
  result = _Block_copy(v5);
  v3[3] = result;
  return result;
}

void ___ZZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v6 = *(a1 + 40);
      VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v5);
      VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
      v9 = 0;
      if (VFXSceneLoadOptionsClass)
      {
        v10 = VFXRESceneClass;
        if (VFXRESceneClass)
        {
          v11 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v11 setEnableRuntimeScriptCompilation:*(v6 + 24)];
          v9 = [[v10 alloc] initWithCommandQueue:**(a1 + 48) model:*(a1 + 56) options:v11];
        }
      }

      re::ObjCObject::operator=(&v3[12], v9);

      dispatch_async(*(*(a1 + 64) + 48), *(a1 + 72));
    }
  }
}

void *__copy_helper_block_a8_32c82_ZTSKZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(v3 + 8) = *(a2 + 40);
  v4 = *(a2 + 56);
  v6 = *(a2 + 64);
  v5 = *(a2 + 72);
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  result = _Block_copy(v5);
  *(v3 + 40) = result;
  return result;
}

void re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(re *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  v8 = *a1;
  re::VFXLoadTask::VFXLoadTask(v7, *a2);
  *v7 = &unk_1F5D08C28;
  v9 = v8;
  v7[6] = v9;
  v7[7] = 0;
  *a3 = v7;
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24), v18[3]);
                *(v19 + 8) = *(v18 - 3);
                v20 = *(v18 - 2);
                *(v18 - 2) = 0;
                *(v19 + 16) = v20;
                v21 = *(v18 - 1);
                *(v18 - 1) = 0;
                *(v19 + 24) = v21;
                v22 = *v18;
                *v18 = 0;
                *(v19 + 32) = v22;
                v23 = v18[1];
                *(v19 + 48) = *(v18 + 4);
                *(v19 + 40) = v23;
              }

              v18 += 8;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v30);
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

void re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + (a2 << 6);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    v3 = *(v2 + 16);
  }
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24), v18[3]);
                *(v19 + 8) = *(v18 - 2);
                *(v19 + 16) = *(v18 - 1);
                v20 = *v18;
                *v18 = 0;
                *(v19 + 24) = v20;
                v21 = v18[1];
                v18[1] = 0;
                *(v19 + 32) = v21;
                *(v19 + 40) = *(v18 + 16);
              }

              ++v17;
              v18 += 7;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 28);
  return v22 + 56 * v5;
}

void re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 56 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    v3 = *(v2 + 24);
  }
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v6, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + (v9 << 6)) = *(*(a1 + 16) + (v9 << 6)) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v6, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 56 * v9) = *(*(a1 + 16) + 56 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::DataArray<re::DisplayStatsManager::MetricState>::deinit(uint64_t result)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v4 = result;
  v42 = result;
  if (*(result + 40))
  {
    LODWORD(v43) = 0;
    if (!*(result + 16))
    {
      goto LABEL_65;
    }

    v5 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v42);
      v5 = v42;
    }
  }

  else
  {
    LODWORD(v43) = -1;
    v5 = result;
  }

  v42 = v5;
  if (v5 != v4 || v43 != 0xFFFFFFFFLL)
  {
    v1 = v43;
    v6 = v43 >> 16;
    do
    {
      v7 = v6;
      v2 = *(v5 + 16);
      if (v2 <= v6)
      {
        goto LABEL_57;
      }

      v8 = v4[2];
      if (v8 > v6)
      {
        v9 = *(*(*(v5 + 32) + 16 * v6 + 8) + 4 * v1);
        v10 = (v8 - 1) == v6 ? *(v4 + 12) : *(v4 + 11);
        if (v10 > v1)
        {
          v11 = v9 & 0xFFFFFF;
          v12 = (v4[4] + 16 * v6);
          v13 = *(v12[1] + 4 * v1);
          if (v13 && v13 == v11)
          {
            v15 = *v12;
            if (v15)
            {
              v2 = (v15 + 40 * v1);
              v16 = *v2;
              *v2 = 0;
              if (v16)
              {
                v17 = v2[4];
                *&v53 = v16;
                if (!v17)
                {
                  v40 = std::__throw_bad_function_call[abi:nn200100]();
                  return re::DisplayStatsManager::init(v40);
                }

                (*(*v17 + 48))(v17, &v53);
              }

              v18 = v2[4];
              if (v18 == v2 + 1)
              {
                (*(*v18 + 32))(v18);
              }

              else if (v18)
              {
                (*(*v18 + 40))(v18);
              }

              v3 = v4[2];
              if (v3 <= v6)
              {
                goto LABEL_61;
              }

              *(*(v4[4] + 16 * v6 + 8) + 4 * v1) = 0;
              *v2 = *(v4 + 13);
              *(v4 + 26) = v1;
              *(v4 + 27) = v6;
              --*(v4 + 10);
            }
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v42);
      v5 = v42;
      v1 = v43;
      LOWORD(v6) = WORD1(v43);
    }

    while (v42 != v4 || v43 != 0xFFFFLL || WORD1(v43) != 0xFFFF);
  }

  v19 = v4[2];
  v7 = v19 - 1;
  if (v19 == 1)
  {
    goto LABEL_46;
  }

  v20 = 16 * v19 - 16;
  do
  {
    if (v19 <= v7)
    {
      v42 = 0;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v48 = 789;
      v49 = 2048;
      v50 = v7;
      v51 = 2048;
      v52 = v19;
      _os_log_send_and_compose_impl(v27, &v42, &v53, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41);
      _os_crash_msg();
      __break(1u);
LABEL_53:
      v42 = 0;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "removeAt";
      v47 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v48 = 931;
      v49 = 2048;
      v50 = v7;
      v51 = 2048;
      v52 = v1;
      _os_log_send_and_compose_impl(v30, &v42, &v53, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41);
      _os_crash_msg();
      __break(1u);
LABEL_57:
      v44 = 0;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v48 = 797;
      v49 = 2048;
      v50 = v7;
      v51 = 2048;
      v52 = v2;
      _os_log_send_and_compose_impl(v33, &v44, &v53, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
LABEL_61:
      v44 = 0;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v48 = 789;
      v49 = 2048;
      v50 = v7;
      v51 = 2048;
      v52 = v3;
      _os_log_send_and_compose_impl(v36, &v44, &v53, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v44 = 0;
      v57 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v45 = 136315906;
      v46 = "operator[]";
      v47 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v48 = 797;
      v49 = 2048;
      v50 = 0;
      v51 = 2048;
      v52 = 0;
      _os_log_send_and_compose_impl(v39, &v44, &v53, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41, v42);
      _os_crash_msg();
      __break(1u);
    }

    v21 = (v4[4] + v20);
    (*(**v4 + 40))(*v4, *v21);
    (*(**v4 + 40))(*v4, v21[1]);
    v1 = v4[2];
    if (v1 <= v7)
    {
      goto LABEL_53;
    }

    v19 = v1 - 1;
    if (v1 - 1 > v7)
    {
      *(v4[4] + v20) = *(v4[4] + 16 * v1 - 16);
      v19 = v4[2] - 1;
    }

    v4[2] = v19;
    ++*(v4 + 6);
    v20 -= 16;
    --v7;
  }

  while (v7);
  v4[6] = 0xFFFFFFFF00000000;
  if (!v19)
  {
    v42 = 0;
    v57 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v48 = 789;
    v49 = 2048;
    v50 = 0;
    v51 = 2048;
    v52 = 0;
    _os_log_send_and_compose_impl(v23, &v42, &v53, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v45, 38, v41);
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v4[6] = 0xFFFFFFFF00000000;
  }

  v24 = v4[4];
  (*(**v4 + 40))(*v4, *v24);
  (*(**v4 + 40))(*v4, v24[1]);
  result = re::DynamicArray<unsigned long>::deinit(v4);
  *(v4 + 11) = 0;
  return result;
}

void re::DisplayStatsManager::init(re::DisplayStatsManager *this)
{
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 11) = 4;

  re::DataArray<re::DisplayStatsManager::MetricState>::allocBlock(this);
}

void re::DataArray<re::DisplayStatsManager::MetricState>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 40 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::snapshotMapFields<re::snapshot::DecoderOPACK>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3))
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<2>(a1, v5, v6))
  {
    *(a2 + 4) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<3>(a1, v7, v8))
  {
    *(a2 + 8) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<4>(a1, v9, v10))
  {
    v68 = 0;
    v13 = re::snapshot::DecoderOPACK::beginString(a1, &v68);
    if (v13)
    {
      v14 = v68;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32) - v15;
      if (v16 >= v68)
      {
        v16 = v68;
      }

      *(a1 + 24) = &v15[v16];
      __len = 0;
      v67 = &str_67;
      v17 = re::StringID::operator=((a2 + 16), &__len);
      if (__len)
      {
        if (__len)
        {
        }
      }
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<5>(a1, v11, v12))
  {
    *(a2 + 32) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<6>(a1, v18, v19))
  {
    *(a2 + 36) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  Integer = *(a1 + 40);
  if (Integer <= 6)
  {
    do
    {
      v22 = *(a1 + 24);
      if (v22 >= *(a1 + 32))
      {
        v23 = 0;
      }

      else
      {
        *(a1 + 24) = v22 + 1;
        v23 = *v22;
      }

      result = re::snapshot::DecoderOPACK::skip(a1, v23, v20);
      v25 = *(a1 + 24);
      if (v25 >= *(a1 + 32))
      {
        goto LABEL_113;
      }

      v26 = *v25;
      if (v26 == 3)
      {
        goto LABEL_113;
      }

      if ((v26 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v25 + 1;
        Integer = (v26 - 8);
      }

      *(a1 + 40) = Integer;
    }

    while (Integer < 7);
  }

  v27 = Integer;
  if (Integer == 7)
  {
    *(a2 + 64) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
    v27 = *(a1 + 40);
    if (v27 <= 7)
    {
      do
      {
        v29 = *(a1 + 24);
        if (v29 >= *(a1 + 32))
        {
          v30 = 0;
        }

        else
        {
          *(a1 + 24) = v29 + 1;
          v30 = *v29;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v30, v28);
        v31 = *(a1 + 24);
        if (v31 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v32 = *v31;
        if (v32 == 3)
        {
          goto LABEL_113;
        }

        if ((v32 - 7) > 0x28)
        {
          v27 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v31 + 1;
          v27 = (v32 - 8);
        }

        *(a1 + 40) = v27;
      }

      while (v27 < 8);
    }
  }

  v33 = v27;
  if (v27 != 8)
  {
    goto LABEL_77;
  }

  __len = 0;
  v34 = re::snapshot::DecoderOPACK::beginData(a1, &__len, 1);
  if (v34)
  {
    v35 = __len;
    v36 = __len / 0x50;
    if (__len % 0x50)
    {
      re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
      goto LABEL_66;
    }

    if (*(a2 + 40))
    {
      if (v36 != *(a2 + 48))
      {
        re::snapshot::BufferDecoder::error(a1, "unexpected data size reading FixedArray: expected %zu, got %zu");
        goto LABEL_66;
      }
    }

    else
    {
    }

    re::snapshot::BufferDecoder::readRaw(a1, *(a2 + 56), v35);
  }

  else
  {
    v37 = re::snapshot::DecoderOPACK::beginArray(a1, &__len);
    if (v37)
    {
      v38 = __len;
      if (!*(a2 + 40) && __len != -1)
      {
      }

      if (v38 == *(a2 + 48))
      {
        if (re::snapshot::DecoderOPACK::endArray(a1, &__len))
        {
          LODWORD(v39) = 0;
LABEL_64:
          if (v38 != v39)
          {
            re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
          }
        }

        else
        {
          v40 = 0;
          v39 = 0;
          while (*(a2 + 48) > v39)
          {
            v41 = *(a2 + 56);
            if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
            {
              re::snapshotMapFields<re::snapshot::DecoderOPACK>(a1, v41 + v40, v42);
              re::snapshot::DecoderOPACK::endObject(a1, 0, v43);
            }

            v40 += 80;
            ++v39;
            if (re::snapshot::DecoderOPACK::endArray(a1, &__len))
            {
              goto LABEL_64;
            }
          }

          re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d");
        }
      }

      else
      {
        re::snapshot::BufferDecoder::error(a1, "unexpected FixedArray size: expected %zu, got %zu");
      }
    }
  }

LABEL_66:
  re::snapshot::DecoderOPACK::endField(a1);
  v33 = *(a1 + 40);
  if (v33 <= 8)
  {
    do
    {
      v45 = *(a1 + 24);
      if (v45 >= *(a1 + 32))
      {
        v46 = 0;
      }

      else
      {
        *(a1 + 24) = v45 + 1;
        v46 = *v45;
      }

      result = re::snapshot::DecoderOPACK::skip(a1, v46, v44);
      v47 = *(a1 + 24);
      if (v47 >= *(a1 + 32))
      {
        goto LABEL_113;
      }

      v48 = *v47;
      if (v48 == 3)
      {
        goto LABEL_113;
      }

      if ((v48 - 7) > 0x28)
      {
        v33 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v47 + 1;
        v33 = (v48 - 8);
      }

      *(a1 + 40) = v33;
    }

    while (v33 < 9);
  }

LABEL_77:
  v49 = v33;
  if (v33 == 9)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 68));
    re::snapshot::DecoderOPACK::endField(a1);
    v49 = *(a1 + 40);
    if (v49 <= 9)
    {
      do
      {
        v51 = *(a1 + 24);
        if (v51 >= *(a1 + 32))
        {
          v52 = 0;
        }

        else
        {
          *(a1 + 24) = v51 + 1;
          v52 = *v51;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v52, v50);
        v53 = *(a1 + 24);
        if (v53 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v54 = *v53;
        if (v54 == 3)
        {
          goto LABEL_113;
        }

        if ((v54 - 7) > 0x28)
        {
          v49 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v53 + 1;
          v49 = (v54 - 8);
        }

        *(a1 + 40) = v49;
      }

      while (v49 < 10);
    }
  }

  v55 = v49;
  if (v49 == 10)
  {
    *(a2 + 72) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
    v55 = *(a1 + 40);
    if (v55 <= 10)
    {
      do
      {
        v57 = *(a1 + 24);
        if (v57 >= *(a1 + 32))
        {
          v58 = 0;
        }

        else
        {
          *(a1 + 24) = v57 + 1;
          v58 = *v57;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v58, v56);
        v59 = *(a1 + 24);
        if (v59 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v60 = *v59;
        if (v60 == 3)
        {
          goto LABEL_113;
        }

        if ((v60 - 7) > 0x28)
        {
          v55 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v59 + 1;
          v55 = (v60 - 8);
        }

        *(a1 + 40) = v55;
      }

      while (v55 < 11);
    }
  }

  result = v55;
  if (v55 == 11)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 76));
    re::snapshot::DecoderOPACK::endField(a1);
    result = *(a1 + 40);
    if (result <= 11)
    {
      while (1)
      {
        v62 = *(a1 + 24);
        if (v62 >= *(a1 + 32))
        {
          v63 = 0;
        }

        else
        {
          *(a1 + 24) = v62 + 1;
          v63 = *v62;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v63, v61);
        v64 = *(a1 + 24);
        if (v64 >= *(a1 + 32))
        {
          break;
        }

        v65 = *v64;
        if (v65 == 3)
        {
          break;
        }

        if ((v65 - 7) > 0x28)
        {
          result = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v64 + 1;
          result = (v65 - 8);
        }

        *(a1 + 40) = result;
        if (result >= 12)
        {
          goto LABEL_115;
        }
      }

LABEL_113:
      *(a1 + 40) = 0x7FFFFFFF;
      return result;
    }
  }

LABEL_115:
  if (result == 12)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 77));

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

re::snapshot::BufferEncoder *re::snapshotMapFields<re::snapshot::EncoderOPACK>(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *a2);
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 2);
  }

  else
  {
    v7 = *(a1 + 8);
    *(a1 + 16) = v6 + 1;
    *(v7 + v6) = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 1));
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 3);
  }

  else
  {
    v9 = *(a1 + 8);
    *(a1 + 16) = v8 + 1;
    *(v9 + v8) = 11;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 2));
  v10 = *(a1 + 16);
  if (v10 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 4);
  }

  else
  {
    v11 = *(a1 + 8);
    *(a1 + 16) = v10 + 1;
    *(v11 + v10) = 12;
  }

  v12 = strlen(a2[3]);
  re::snapshot::EncoderOPACK::serializeString(a1, a2[3], v12);
  v13 = *(a1 + 16);
  if (v13 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 5);
  }

  else
  {
    v14 = *(a1 + 8);
    *(a1 + 16) = v13 + 1;
    *(v14 + v13) = 13;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 8));
  v15 = *(a1 + 16);
  if (v15 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 6);
  }

  else
  {
    v16 = *(a1 + 8);
    *(a1 + 16) = v15 + 1;
    *(v16 + v15) = 14;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 18));
  v17 = *(a1 + 16);
  if (v17 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 7);
  }

  else
  {
    v18 = *(a1 + 8);
    *(a1 + 16) = v17 + 1;
    *(v18 + v17) = 15;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 16));
  v19 = *(a1 + 16);
  if (v19 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 8);
  }

  else
  {
    v20 = *(a1 + 8);
    *(a1 + 16) = v19 + 1;
    *(v20 + v19) = 16;
  }

  v21 = a2[6];
  re::snapshot::EncoderOPACK::beginArray(a1, v21);
  v22 = a2[6];
  if (v22)
  {
    v23 = a2[7];
    v24 = 80 * v22;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(a1);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(a1, v23);
      re::snapshot::EncoderOPACK::endObject(a1);
      v23 += 20;
      v24 -= 80;
    }

    while (v24);
  }

  re::snapshot::EncoderOPACK::endArray(a1, v21);
  v25 = *(a1 + 16);
  if (v25 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 9);
  }

  else
  {
    v26 = *(a1 + 8);
    *(a1 + 16) = v25 + 1;
    *(v26 + v25) = 17;
  }

  re::snapshot::EncoderOPACK::operator<<(a1, *(a2 + 68));
  v27 = *(a1 + 16);
  if (v27 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 10);
  }

  else
  {
    v28 = *(a1 + 8);
    *(a1 + 16) = v27 + 1;
    *(v28 + v27) = 18;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 18));
  v29 = *(a1 + 16);
  if (v29 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 11);
  }

  else
  {
    v30 = *(a1 + 8);
    *(a1 + 16) = v29 + 1;
    *(v30 + v29) = 19;
  }

  re::snapshot::EncoderOPACK::operator<<(a1, *(a2 + 76));
  v31 = *(a1 + 16);
  if (v31 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 12);
  }

  else
  {
    v32 = *(a1 + 8);
    *(a1 + 16) = v31 + 1;
    *(v32 + v31) = 20;
  }

  v33 = *(a2 + 77);

  return re::snapshot::EncoderOPACK::operator<<(a1, v33);
}

void re::sg::Material::getCustomUniformsArgument(id *this@<X0>, uint64_t a2@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = [*this customUniformsType];
  v4 = v3;
  if (v3 && ([v3 properties], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v64[0] = 2330;
    v64[1] = "$1";
    v62 = v4;
    v7 = v4;
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 64) = 0;
    *(a2 + 96) = 0;
    *(a2 + 100) = 256;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
    *(a2 + 104) = 0;
    re::StringID::operator=(a2, v64);
    v8 = [v7 properties];
    v9 = [v8 count];

    v68 = 0;
    v69 = 1;
    v70[0] = 0;
    v70[1] = &str_67;
    v71 = 0;
    *&v75[16] = 0;
    *&v75[20] = 256;
    v74 = 0;
    *v75 = 0;
    v73 = 0;
    *&v75[5] = 0;
    v72 = 1;
    if (v9)
    {
      v12 = 0;
      v63 = 0;
      v13 = 0;
      v14 = 77;
      while (1)
      {
        v15 = [v7 properties];
        v16 = [v15 objectAtIndexedSubscript:v12];

        v17 = [v16 name];
        v18 = [v17 UTF8String];
        v66 = 0;
        v67 = &str_67;
        v19 = v74;
        if (v74 <= v12)
        {
          break;
        }

        v20 = re::StringID::operator=((*v75 + v14 - 61), &v66);
        if (v66)
        {
          if (v66)
          {
          }
        }

        v66 = 0;
        v67 = &str_67;

        v76 = 0;
        v21 = [v16 type];
        v22 = [v21 getMTLDataType:&v76];

        if (v22)
        {
          v19 = v74;
          if (v74 <= v12)
          {
            goto LABEL_59;
          }

          v23 = v76;
          *(*v75 + v14 - 41) = v76;
        }

        else
        {
          v23 = v76;
        }

        if (v23 == 58)
        {
          v65 = 0;
          v24 = [v16 type];
          v25 = [v24 getMTLTextureType:&v65];

          if (v25)
          {
            v19 = v74;
            if (v74 <= v12)
            {
              goto LABEL_63;
            }

            *(*v75 + v14 - 13) = v65;
          }

          v63 = 1;
        }

        v19 = v74;
        if (v74 <= v12)
        {
          goto LABEL_39;
        }

        *(*v75 + v14 - 5) = v12;
        v26 = [v16 type];
        v27 = [v26 size];
        v19 = v74;
        if (v74 <= v12)
        {
          goto LABEL_43;
        }

        *(*v75 + v14 - 73) = v27;

        v28 = [v16 type];
        v29 = [v28 alignment];
        v19 = v74;
        if (v74 <= v12)
        {
          goto LABEL_47;
        }

        *(*v75 + v14 - 69) = v29;

        v30 = [v16 type];
        v31 = [v30 offset];
        v19 = v74;
        if (v74 <= v12)
        {
          goto LABEL_51;
        }

        *(*v75 + v14 - 77) = v31;

        v32 = [v16 visible];
        v19 = v74;
        if (v74 <= v12)
        {
          goto LABEL_55;
        }

        v33 = (*v75 + v14);
        *v33 = v32;
        v34 = *(v33 - 69);
        if (v34 > v13)
        {
          v13 = v34;
        }

        ++v12;
        v14 += 80;
        if (v9 == v12)
        {
          goto LABEL_29;
        }
      }

      v76 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v38, &v76, &v85, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v41, &v66, &v85, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v44, &v66, &v85, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v47, &v66, &v85, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v50, &v66, &v85, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v53, &v66, &v85, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v55)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v56, &v66, &v85, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_63:
      v66 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v77 = 136315906;
      v78 = "operator[]";
      v79 = 1024;
      if (v58)
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      v80 = 468;
      v81 = 2048;
      v82 = v12;
      v83 = 2048;
      v84 = v19;
      _os_log_send_and_compose_impl(v59, &v66, &v85, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_67:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 454);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }

    v13 = 0;
    v63 = 0;
LABEL_29:
    v75[20] = v63;
    v69 = v13;
    if (!v74)
    {
      goto LABEL_67;
    }

    HIDWORD(v68) = *(*v75 + 80 * v74 - 76) + *(*v75 + 80 * v74 - 80);
    *(a2 + 32) = v69;
    *(a2 + 24) = v68;
    re::StringID::operator=((a2 + 40), v70);
    *(a2 + 56) = v71;
    *(a2 + 60) = v72;
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 64), &v73);
    *(a2 + 88) = *&v75[8];
    *(a2 + 94) = *&v75[14];
    v35 = re::FixedArray<re::MetalTypeInfo>::deinit(&v73);
    if (v70[0])
    {
      if (v70[0])
      {
      }
    }

    *(a2 + 16) = 1;
    v4 = v62;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 32) = 1;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 100) = 256;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
    *(a2 + 104) = 0;
  }
}

void re::sg::Material::getPublicUniforms(id *this@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v14 = [*this uniforms];
  v3 = [v14 count];
  if ([v14 count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [v14 objectAtIndex:v5];
      v7 = [v6 name];
      v8 = v7;
      v15 = v8;

      v9 = a2[1];
      if (v9 <= v5)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v10 = MEMORY[0x1E69E9C10];
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v11)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v20 = 468;
        v21 = 2048;
        v22 = v5;
        v23 = 2048;
        v24 = v9;
        _os_log_send_and_compose_impl(v12, &v16, v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v13, v14);
        _os_crash_msg();
        __break(1u);
      }

      NS::SharedPtr<MTL::Buffer>::operator=((a2[2] + v4), &v15);
      if (v8)
      {
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < [v14 count]);
  }
}

uint64_t re::sg::Material::hasConnectedLightSpillNodesWithRoughness(void **this)
{
  v1 = *this;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v1 hasConnectedLightSpillNodesWithRoughness];
}

const char *re::sg::Material::materialDefinitionPath(id *this)
{
  v2 = [*this lightingModel];
  v3 = [*this blending];
  v4 = "engine:surfaceShader.rematerialdefinition";
  v5 = "engine:surfaceShaderClearcoatTransparent.rematerialdefinition";
  if (v3 != 1)
  {
    v5 = "engine:surfaceShader.rematerialdefinition";
  }

  if (!v3)
  {
    v5 = "engine:surfaceShaderClearcoat.rematerialdefinition";
  }

  if (v3 == 1)
  {
    v6 = "engine:surfaceShaderUnlitTransparent.rematerialdefinition";
  }

  else
  {
    v6 = "engine:surfaceShader.rematerialdefinition";
  }

  if (!v3)
  {
    v6 = "engine:surfaceShaderUnlit.rematerialdefinition";
  }

  v7 = "engine:surfaceShaderTransparent.rematerialdefinition";
  if (v3 != 1)
  {
    v7 = "engine:surfaceShader.rematerialdefinition";
  }

  if (v2 == 1)
  {
    v4 = v7;
  }

  if (v2 == 2)
  {
    v4 = v6;
  }

  if (v2 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t re::sg::Material::hasGeometryModifierWithModelPositionOffset(id *this)
{
  v1 = *this;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hasGeometryModifierOffset];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t re::sg::CachedCompilationMaterial::CachedCompilationMaterial(uint64_t a1, uint64_t *a2, id *a3, id *a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08D78;
  *(a1 + 24) = *a4;
  *(a1 + 32) = *a3;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &str_67;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = &str_67;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 221) = 0;
  *(a1 + 216) = 0;
  *(a1 + 237) = 1;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  v9 = re::sg::Material::materialDefinitionPath((a1 + 40));
  *(a1 + 272) = 0;
  *(a1 + 280) = &str_67;
  v10 = [*(a1 + 40) hasBackgroundBlur];
  *(a1 + 288) = 1;
  *(a1 + 289) = v10;
  *(a1 + 290) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  v11 = [*a3 config];
  v12 = [v11 functionConstantInputs];

  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [v12 objectAtIndexedSubscript:{v13, *&v19[0]}];
      v15 = [v14 name];
      v16 = [v15 UTF8String];
      v17 = re::DynamicArray<re::DynamicString>::add((a1 + 296), v19);
      if (*&v19[0])
      {
        if (BYTE8(v19[0]))
        {
          (*(**&v19[0] + 40))(v17);
        }

        memset(v19, 0, sizeof(v19));
      }

      ++v13;
    }

    while (v13 < [v12 count]);
  }

  return a1;
}

uint64_t re::sg::CachedCompilationMaterial::CachedCompilationMaterial(uint64_t a1, const __CFData *a2, id *a3, id *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08D78;
  v8 = *a4;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v8;
  *(a1 + 48) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = *a3;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v9 = (a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 144) = &str_67;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = &str_67;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 221) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 237) = 1;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = &str_67;
  *(a1 + 288) = 0;
  *(a1 + 290) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  *&v86[8] = BytePtr;
  *&v86[16] = Length;
  v87 = -1;
  v88 = 0;
  v89 = 0;
  v91 = 0;
  *&v86[24] = BytePtr;
  *&v86[32] = Length + BytePtr;
  *v86 = &unk_1F5D17190;
  v12 = re::snapshot::DecoderOPACK::beginObject(v86, 0);
  if (v12)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(v86, v13, v14))
    {
      v84 = 0;
      *buf = *(a1 + 56);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *&v98[0] = *(a1 + 72);
      *(a1 + 72) = 0;
      *(v98 + 8) = *(a1 + 80);
      *(a1 + 80) = xmmword_1E3058120;
      DWORD2(v98[1]) = 1;
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 56);
      if (re::snapshot::DecoderOPACK::beginDictionary(v86, &v84))
      {
        if (v84 != -1)
        {
          re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity((a1 + 56), v84);
        }

        *&v83.var0 = 0;
        v83.var1 = &str_67;
        if (!re::snapshot::DecoderOPACK::endDictionary(v86, &v84))
        {
          v82 = a1 + 136;
          v17 = 0xBF58476D1CE4E5B9;
          do
          {
            v85 = 0;
            v18 = re::snapshot::DecoderOPACK::beginString(v86, &v85);
            if (v18)
            {
              v19 = v17;
              v20 = v85;
              v21 = *&v86[24];
              v22 = *&v86[32] - *&v86[24];
              if (*&v86[32] - *&v86[24] >= v85)
              {
                v22 = v85;
              }

              *&v86[24] += v22;
              *v92 = 0;
              *&v92[8] = &str_67;
              v24 = *v92;
              v25 = *&v92[8];
              *v92 = 0;
              *&v92[8] = &str_67;
              var0 = v83.var0;
              var1 = v83.var1;
              *&v83.var0 = v24;
              v83.var1 = v25;
              if (var0)
              {
                if (v92[0])
                {
                  if (v92[0])
                  {
                  }
                }
              }

              v17 = v19;
            }

            v29 = 0x94D049BB133111EBLL * ((((*&v83.var0 >> 31) ^ (*&v83.var0 >> 1)) * v17) ^ ((((*&v83.var0 >> 31) ^ (*&v83.var0 >> 1)) * v17) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, &v83, v29 ^ (v29 >> 31), v92);
            if (*&v92[12] == 0x7FFFFFFF)
            {
              *v92 = 0;
              *v92 = re::snapshot::DecoderOPACK::readInteger(v86, 0);
              re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, &v83, v92);
            }

            else
            {
              v30 = *&v98[0] + 32 * *&v92[12];
              *(v30 + 24) = re::snapshot::DecoderOPACK::readInteger(v86, 0);
              re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, &v83, (v30 + 24));
            }

            v31 = re::snapshot::DecoderOPACK::endDictionary(v86, &v84);
          }

          while (!v31);
          v9 = (a1 + 136);
          if (*&v83.var0)
          {
            if (*&v83.var0)
            {
            }
          }
        }
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(buf);
      re::snapshot::DecoderOPACK::endField(v86);
    }

    if (re::snapshot::DecoderOPACK::beginField<2>(v86, v15, v16))
    {
      if (re::snapshot::DecoderOPACK::beginObject(v86, 0))
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v86, v32, v33))
        {
          *v92 = 0;
          v36 = re::snapshot::DecoderOPACK::beginString(v86, v92);
          if (v36)
          {
            v37 = *v92;
            v38 = *&v86[24];
            v39 = *&v86[32] - *&v86[24];
            if (*&v86[32] - *&v86[24] >= *v92)
            {
              v39 = *v92;
            }

            *&v86[24] += v39;
            *buf = 0;
            *&buf[8] = &str_67;
            v40 = re::StringID::operator=(v9, buf);
            if (buf[0])
            {
              if (buf[0])
              {
              }
            }
          }

          re::snapshot::DecoderOPACK::endField(v86);
        }

        if (re::snapshot::DecoderOPACK::beginField<2>(v86, v34, v35))
        {
          *(a1 + 152) = re::snapshot::DecoderOPACK::readInteger(v86, 0);
          re::snapshot::DecoderOPACK::endField(v86);
        }

        if (re::snapshot::DecoderOPACK::beginField<3>(v86, v41, v42))
        {
          if (re::snapshot::DecoderOPACK::beginObject(v86, 0))
          {
            re::snapshotMapFields<re::snapshot::DecoderOPACK>(v86, a1 + 160, v44);
            re::snapshot::DecoderOPACK::endObject(v86, 0, v45);
          }

          re::snapshot::DecoderOPACK::endField(v86);
        }

        re::snapshot::DecoderOPACK::endObject(v86, 0, v43);
      }

      re::snapshot::DecoderOPACK::endField(v86);
    }

    re::snapshot::DecoderOPACK::beginField(v86, 3, 0);
    *v92 = 0;
    v46 = re::snapshot::DecoderOPACK::beginString(v86, v92);
    if (v46)
    {
      v47 = *v92;
      v48 = *&v86[24];
      v49 = *&v86[32] - *&v86[24];
      if (*&v86[32] - *&v86[24] >= *v92)
      {
        v49 = *v92;
      }

      *&v86[24] += v49;
      *buf = 0;
      *&buf[8] = &str_67;
      v50 = re::StringID::operator=((a1 + 272), buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }
    }

    re::snapshot::DecoderOPACK::endField(v86);
    re::snapshot::DecoderOPACK::beginField(v86, 4, 0);
    LOBYTE(v84) = 0;
    re::snapshot::DecoderOPACK::operator>>(v86, &v84);
    v51 = v84;
    if ((*(a1 + 288) & 1) == 0)
    {
      *(a1 + 288) = 1;
    }

    *(a1 + 289) = v51;
    re::snapshot::DecoderOPACK::endField(v86);
    re::snapshot::DecoderOPACK::beginField(v86, 5, 0);
    v85 = 0;
    if (re::snapshot::DecoderOPACK::beginArray(v86, &v85))
    {
      v52 = v85;
      re::DynamicArray<re::DynamicString>::resize((a1 + 296), v85);
      if (v52)
      {
        v53 = 0;
        v54 = 0;
        while (1)
        {
          v55 = *(a1 + 312);
          if (v55 <= v54)
          {
            break;
          }

          v56 = *(a1 + 328);
          *buf = 0;
          if (re::snapshot::DecoderOPACK::beginString(v86, buf))
          {
            v57 = (v56 + v53);
            v58 = *buf;
            re::DynamicString::resize(v57, *buf, 0);
            if (v57[1])
            {
              v59 = v57[2];
            }

            else
            {
              v59 = v57 + 9;
            }

            re::snapshot::BufferDecoder::readRaw(v86, v59, v58);
          }

          ++v54;
          v53 += 32;
          if (v52 == v54)
          {
            goto LABEL_60;
          }
        }

LABEL_101:
        *&v83.var0 = 0;
        v99 = 0u;
        v100 = 0u;
        memset(v98, 0, sizeof(v98));
        *buf = 0u;
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        *&v92[12] = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *&v92[14] = 789;
        v93 = 2048;
        v94 = v54;
        v95 = 2048;
        v96 = v55;
        _os_log_send_and_compose_impl(v80, &v83, buf, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v81, v82);
        _os_crash_msg();
        __break(1u);
      }

LABEL_60:
      re::snapshot::DecoderOPACK::endArray(v86, &v85);
    }

    re::snapshot::DecoderOPACK::endField(v86);
    v12 = re::snapshot::DecoderOPACK::endObject(v86, 0, v60);
  }

  if (v88 == 1)
  {
    v61 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Error decoding shader graph info. ", buf, 2u);
    }

    re::snapshot::BufferDecoder::logInput(v86);
  }

  v62 = *v9;
  if (*v9 >= 0xFFFFFFFFFFFFFFFELL && (v62 & 1) == 0)
  {
    v63 = *(a1 + 144);
    goto LABEL_71;
  }

  if (v62 <= 1)
  {
    v63 = *(a1 + 144);
    if (v63)
    {
LABEL_71:
      if (!*v63)
      {
        v64 = *re::graphicsLogObjects(v12);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(a1 + 208);
          *buf = 134217984;
          *&buf[4] = v65;
          _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "No name on TypedArgument with %zu members", buf, 0xCu);
        }

        re::StringID::destroyString(v9);
        *(a1 + 136) = 0x1A31080F9ALL;
        *(a1 + 144) = "<empty>";
      }
    }
  }

  v66 = v88;
  *(a1 + 336) = v88 ^ 1;
  if ((v66 & 1) == 0)
  {
    v54 = *(a1 + 84);
    v67 = *(a1 + 88);
    if (v67)
    {
      v55 = 0;
      v68 = *(a1 + 72);
      while (1)
      {
        v69 = *v68;
        v68 += 8;
        if (v69 < 0)
        {
          break;
        }

        if (v67 == ++v55)
        {
          v55 = *(a1 + 88);
          break;
        }
      }
    }

    else
    {
      v55 = 0;
    }

    if (v55 != v67)
    {
      v70 = 0;
      while (1)
      {
        v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 72) + 32 * v55 + 16)];
        *&v83.var0 = v71;
        v72 = *(a1 + 256);
        if (v72 <= v70)
        {
          break;
        }

        v54 = v71;
        NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 264) + 8 * v70), &v83);
        if (v54)
        {
        }

        ++v70;
        LODWORD(v73) = *(a1 + 88);
        if (v73 <= v55 + 1)
        {
          v73 = (v55 + 1);
        }

        else
        {
          v73 = v73;
        }

        while (v73 - 1 != v55)
        {
          v55 = (v55 + 1);
          if ((*(*(a1 + 72) + 32 * v55) & 0x80000000) != 0)
          {
            goto LABEL_95;
          }
        }

        v55 = v73;
LABEL_95:
        if (v55 == v67)
        {
          return a1;
        }
      }

      *v92 = 0;
      v99 = 0u;
      v100 = 0u;
      memset(v98, 0, sizeof(v98));
      *buf = 0u;
      v75 = MEMORY[0x1E69E9C10];
      v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      if (v76)
      {
        v77 = 3;
      }

      else
      {
        v77 = 2;
      }

      *&v86[14] = 468;
      *&v86[18] = 2048;
      *&v86[20] = v70;
      *&v86[28] = 2048;
      *&v86[30] = v72;
      _os_log_send_and_compose_impl(v77, v92, buf, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v86, 38, v81, v82);
      _os_crash_msg();
      __break(1u);
      goto LABEL_101;
    }
  }

  return a1;
}

void re::sg::CachedCompilationMaterial::~CachedCompilationMaterial(re::sg::CachedCompilationMaterial *this)
{
  *this = &unk_1F5D08D78;
  v2 = *(this + 5);
  *(this + 5) = 0;

  v3 = *(this + 15);
  *(this + 15) = 0;

  re::DynamicArray<re::DynamicString>::deinit(this + 296);
  re::StringID::destroyString((this + 272));
  re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(this + 31);
  re::FixedArray<re::MetalTypeInfo>::deinit(this + 25);
  re::StringID::destroyString((this + 176));
  re::StringID::destroyString((this + 136));

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::sg::CachedCompilationMaterial::~CachedCompilationMaterial(this);

  JUMPOUT(0x1E6906520);
}

void re::sg::CachedCompilationMaterial::getVariation(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = a1 + 4;
  if (a1[4])
  {
    goto LABEL_2;
  }

  v46 = a1[13];
  if (v46)
  {
    v47 = MEMORY[0x1E69CD9D8];
    v64 = 0;
    v48 = v46;
    v49 = [v47 sourceFromArchiveData:v48 error:&v64];
    v9 = v64;
    re::ObjCObject::operator=(v8, v49);

    if (v9)
    {
      v51 = *re::graphicsLogObjects(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = [v9 debugDescription];
        if (v55)
        {
          v56 = [v9 debugDescription];
        }

        else
        {
          v56 = @"<nil>";
        }

        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "sg::CachedCompilationMaterial::getVariation - error returned from source construction: %@", buf, 0xCu);
        if (v55)
        {
        }
      }

      *a4 = 0;
      goto LABEL_50;
    }

    if (*v8)
    {
LABEL_2:
      v57 = a4;
      v9 = objc_opt_new();
      if (a3)
      {
        v10 = 104 * a3;
        do
        {
          re::DynamicString::substr(buf, a2, 0, 3uLL);
          v11 = buf[8];
          if (buf[8])
          {
            v12 = v67;
          }

          else
          {
            v12 = &buf[9];
          }

          v13 = strcmp(v12, "$1.");
          v14 = v11 & 1;
          if (v13)
          {
            if (*buf)
            {
              v15 = v14 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              (*(**buf + 40))();
            }
          }

          else
          {
            v16 = *(a2 + 32);
            if (*buf)
            {
              v17 = v14 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              (*(**buf + 40))();
            }

            if (v16 == 53)
            {
              v18 = objc_opt_new();
              v19 = *(a2 + 8);
              if (v19)
              {
                v20 = v19 >> 1;
              }

              else
              {
                v20 = v19 >> 1;
              }

              re::DynamicString::substr(buf, a2, 3uLL, v20);
              if (buf[8])
              {
                v21 = v67;
              }

              else
              {
                v21 = &buf[9];
              }

              v22 = [v18 initWithUTF8String:{v21, v57}];
              if (*buf && (buf[8] & 1) != 0)
              {
                (*(**buf + 40))();
              }

              v23 = [MEMORY[0x1E696AD98] numberWithBool:*(a2 + 36) != 0];
              [v9 setValue:v23 forKey:v22];
            }
          }

          a2 += 104;
          v10 -= 104;
        }

        while (v10);
      }

      if ([v9 count])
      {
        v26 = a1[3];
        v25 = a1 + 3;
        v24 = v26;
        if (!v26)
        {
          v27 = objc_opt_new();
          re::ObjCObject::operator=(v25, v27);

          v24 = *v25;
        }

        v28 = [v24 scalarFunctionConstants];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v61;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v61 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v60 + 1) + 8 * i);
              v34 = [v28 valueForKey:v33];
              [v9 setValue:v34 forKey:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v60 objects:v65 count:16];
          }

          while (v30);
        }

        v35 = [*v25 vectorFunctionConstants];
        v36 = [objc_alloc(MEMORY[0x1E69CD9D0]) initWithScalarFunctionConstants:v9 vectorFunctionConstants:v35];
        v37 = *v8;
        v59 = 0;
        v38 = [MEMORY[0x1E69CD9D8] materialFromSource:v37 functionConstantValues:v36 error:&v59];
        v39 = v59;
        v40 = v38;
        *buf = v40;

        if (v40)
        {
          v42 = re::globalAllocators(v41);
          v43 = (*(*v42[2] + 32))(v42[2], 344, 8);
          v44 = re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v43, buf, v8, v25);
          v45 = *buf;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }

        *v58 = v44;
      }

      else
      {
        *v58 = a1;
        if (a1)
        {
          v52 = a1 + 1;
        }
      }

LABEL_50:

      return;
    }

    v53 = *re::graphicsLogObjects(v50);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v54 = "sg::CachedCompilationMaterial::getVariation - can't build variation without a backing MaterialSource";
LABEL_59:
      _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    }
  }

  else
  {
    v53 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v54 = "sg::CachedCompilationMaterial::getVariation - payload is null";
      goto LABEL_59;
    }
  }

  *a4 = 0;
}

void re::sg::CachedCompilationMaterial::ensureFullMaterialIsDeserialized(re::sg::CachedCompilationMaterial *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = (this + 40);
  if (!*(this + 5))
  {
    v2 = *(this + 13);
    if (v2)
    {
      v3 = v2;
      v18 = 0;
      v4 = [MEMORY[0x1E69CD9D8] sourceFromArchiveData:v3 error:&v18];
      v5 = v18;
      v6 = v5;
      if (v5)
      {
        v7 = *re::graphicsLogObjects(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v13 = [(re *)v6 debugDescription];
          if (v13)
          {
            v14 = [(re *)v6 debugDescription];
          }

          else
          {
            v14 = @"<nil>";
          }

          *buf = 138412290;
          v20 = v14;
          _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source from payload. Error: %@", buf, 0xCu);
          if (v13)
          {
          }
        }
      }

      v8 = objc_opt_new();
      v17 = v6;
      v9 = [MEMORY[0x1E69CD9D8] materialFromSource:v4 functionConstantValues:v8 error:&v17];
      v10 = v17;

      re::ObjCObject::operator=(v1, v9);
      if (v10)
      {
        v12 = *re::graphicsLogObjects(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = [(re *)v10 debugDescription];
          if (v15)
          {
            v16 = [(re *)v10 debugDescription];
          }

          else
          {
            v16 = @"<nil>";
          }

          *buf = 138412290;
          v20 = v16;
          _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create shader graph material from source. Error: %@", buf, 0xCu);
          if (v15)
          {
          }
        }
      }
    }
  }
}

void re::sg::compileShaderGraphFailureMetalLibrary(void **a1@<X0>, CGColorSpace *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  Name = CGColorSpaceGetName(a2);
  ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v19);
  if (ColorGamutFromCGColorSpaceName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69CD9C8]) initWithWorkingColorSpace:a2];
    v9 = MEMORY[0x1E69CD9D8];
    v10 = *a1;
    v18 = 0;
    v11 = v10;
    v12 = [v9 metalLibraryFromMaterial:0 forDevice:v11 options:v8 error:&v18];
    v13 = v18;

    v14 = v12;
    *a3 = v14;

    if (!v14)
    {
      v16 = *re::graphicsLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "ShaderGraph service could not compile fallback failure shader graph asset. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Attempted to generate a metal library from a ShaderGraphMaterial with a unsupported color space %@", buf, 0xCu);
    }

    *a3 = 0;
  }
}

void re::sg::CachedCompilationMaterial::compileMetalLibrary(uint64_t a1@<X0>, id *a2@<X1>, CGColorSpace *a3@<X2>, id *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0;
  Name = CGColorSpaceGetName(a3);
  ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v24);
  if (ColorGamutFromCGColorSpaceName)
  {
    os_unfair_lock_lock((a1 + 128));
    if (*(a1 + 120) && v24 == *(a1 + 112))
    {
      *a4 = *(a1 + 120);

      os_unfair_lock_unlock((a1 + 128));
    }

    else
    {
      os_unfair_lock_unlock((a1 + 128));
      re::sg::CachedCompilationMaterial::getMaterial(&v23, a1);
      v11 = *a2;
      v12 = [objc_alloc(MEMORY[0x1E69CD9C8]) initWithWorkingColorSpace:a3];
      v13 = MEMORY[0x1E69CD9D8];
      v14 = v23;
      v25 = 0;
      v15 = v11;
      v16 = [v13 metalLibraryFromMaterial:v14 forDevice:v15 options:v12 error:&v25];
      v17 = v25;

      v18 = v16;
      *a4 = v18;

      if (!v18)
      {
        v20 = *re::graphicsLogObjects(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = [v14 name];
          *buf = 138412546;
          v27 = v22;
          v28 = 2112;
          v29 = v17;
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "ShaderGraph service could not compile shader graph asset (%@). Error: %@", buf, 0x16u);
        }
      }

      os_unfair_lock_lock((a1 + 128));
      *(a1 + 112) = v24;
      re::ObjCObject::operator=((a1 + 120), a4);
      os_unfair_lock_unlock((a1 + 128));
    }
  }

  else
  {
    v10 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = a3;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Attempted to generate a metal library from a ShaderGraphMaterial with a unsupported color space %@", buf, 0xCu);
    }

    *a4 = 0;
  }
}

void re::sg::CachedCompilationMaterial::getMaterial(uint64_t *__return_ptr a1@<X8>, re::sg::CachedCompilationMaterial *this@<X0>)
{
  os_unfair_lock_lock(this + 12);
  re::sg::CachedCompilationMaterial::ensureFullMaterialIsDeserialized(this);
  *a1 = *(this + 5);

  os_unfair_lock_unlock(this + 12);
}

_anonymous_namespace_ *re::sg::CachedCompilationMaterial::getCustomUniformsArgument(re::sg::CachedCompilationMaterial *this)
{
  v3 = (this + 136);
  v2 = *(this + 17);
  if (v2 < 0xFFFFFFFFFFFFFFFELL || (v2 & 1) != 0)
  {
    if (v2 > 1)
    {
      return v3;
    }

    v4 = *(this + 18);
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v4 = *(this + 18);
  }

  if (!*v4)
  {
    re::sg::CachedCompilationMaterial::getMaterial(&v18, this);
    v5 = v18;
    if (v18)
    {
      re::sg::Material::getCustomUniformsArgument(&v18, &v8);
      re::StringID::operator=(v3, &v8);
      *(this + 76) = v9;
      *(this + 20) = v10;
      *(this + 42) = v11;
      re::StringID::operator=((this + 176), v12);
      *(this + 48) = v13;
      *(this + 98) = v14;
      re::FixedArray<re::MetalTypeInfo>::operator=(this + 25, v15);
      *(this + 28) = v16[0];
      *(this + 230) = *(v16 + 6);
      *(this + 240) = v17;
      v6 = re::FixedArray<re::MetalTypeInfo>::deinit(v15);
      if (v12[0])
      {
        if (v12[0])
        {
        }
      }

      v12[0] = 0;
      v12[1] = &str_67;
      if (v8)
      {
        if (v8)
        {
        }
      }
    }
  }

  return v3;
}

void **re::sg::CachedCompilationMaterial::getPublicUniforms@<X0>(re::sg::CachedCompilationMaterial *this@<X0>, void **a2@<X8>)
{
  v3 = (this + 248);
  if (!*(this + 31))
  {
    re::sg::CachedCompilationMaterial::getMaterial(&v7, this);
    v4 = v7;
    if (v7)
    {
      re::sg::Material::getPublicUniforms(&v7, v6);
      re::FixedArray<float>::operator=(v3, v6);
      re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(v6);
    }
  }

  return re::FixedArray<NS::SharedPtr<NS::String>>::FixedArray(a2, v3);
}

double re::sg::CachedCompilationMaterial::createDynamicFunctionConstantEnumerator@<D0>(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  v2 = [this[5] uniforms];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 type] == 1)
        {
          v9 = [v8 name];
          re::DynamicString::operator+(&v12, &v18, [v9 UTF8String]);
          LOWORD(v15[0]) = 53;
          WORD1(v15[0]) = --v5;
          v25 = xmmword_1E3049620;
          re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v15 + 8, &v25, 2uLL);
          *&v17 = 0;
          WORD4(v17) = 0;
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v24, &v12, v15);
          if (*(&v15[0] + 1) && *(&v16 + 1))
          {
            (*(**(&v15[0] + 1) + 40))();
          }

          if (v12)
          {
            if (BYTE8(v12))
            {
              (*(*v12 + 40))();
            }

            v12 = 0u;
            v13 = 0u;
          }

          if (v18 && (v19 & 1) != 0)
          {
            (*(*v18 + 40))();
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = 0;
  *&v13 = 0;
  v12 = 0uLL;
  DWORD2(v13) = 0;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  re::FunctionConstantsEnumerator::createEnumerator(v24, 0, 0, &v12, v15, a1);
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v15);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v12);

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v24);
}

void re::sg::CachedCompilationMaterial::getDynamicFunctionConstants(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [this[5] uniforms];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v43 + 1) + 8 * i) type] == 1)
        {
          ++v7;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  a1[2] = 0;
  a1[1] = v7;
  if (v7)
  {
    if (v7 >= 0x666666666666667)
    {
      goto LABEL_47;
    }

    a1[2] = v10;
    if (!v10)
    {
LABEL_48:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    for (j = v10; --v7; j = (j + 40))
    {
      *(j + 4) = 0;
      *j = 0u;
      *(j + 1) = 0u;
      v10 = re::DynamicString::setCapacity(j, 0);
    }

    *(j + 4) = 0;
    *j = 0u;
    *(j + 1) = 0u;
    re::DynamicString::setCapacity(j, 0);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v40;
    v7 = &v36 + 9;
    v18 = a1[2];
    v35 = a1[1];
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v39 + 1) + 8 * k);
        if ([v20 type] == 1)
        {
          v21 = [v20 name];
          v22 = [v21 UTF8String];
          re::DynamicString::operator+(&v36, v23, v22);
          if (v58 && (BYTE8(v58) & 1) != 0)
          {
            (*(*v58 + 40))(v58, v59);
          }

          if (BYTE8(v36))
          {
            v24 = v37;
          }

          else
          {
            v24 = &v36 + 9;
          }

          v25 = strlen(v24);
          if (v25)
          {
            MurmurHash3_x64_128(v24, v25, 0, &v58);
            v26 = (*(&v58 + 1) + (v58 << 6) + (v58 >> 2) - 0x61C8864680B583E9) ^ v58;
          }

          else
          {
            v26 = 0;
          }

          v38 = v26;
          if (v35 <= v16)
          {
            v47 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            v28 = MEMORY[0x1E69E9C10];
            v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v50 = 136315906;
            v51 = "operator[]";
            v52 = 1024;
            if (v29)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            v53 = 468;
            v54 = 2048;
            v55 = v16;
            v56 = 2048;
            v57 = v35;
            _os_log_send_and_compose_impl(v30, &v47, &v58, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v33, v34);
            _os_crash_msg();
            __break(1u);
LABEL_47:
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v7);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v31, v32);
            __break(1u);
            goto LABEL_48;
          }

          v27 = re::DynamicString::operator=((v18 + 40 * v16), &v36);
          *(v27 + 4) = v38;
          if (v36)
          {
            if (BYTE8(v36))
            {
              (*(*v36 + 40))();
            }

            v36 = 0u;
            v37 = 0u;
          }

          ++v16;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v15);
  }
}

uint64_t re::sg::CachedCompilationMaterial::getMaterialDefinitionPath(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 34) <= 1uLL)
  {
    v2 = *(this + 35);
    if (v2)
    {
      if (!*v2)
      {
        re::sg::CachedCompilationMaterial::getMaterial(&v9, this);
        v3 = v9;
        if (v9)
        {
          v4 = re::sg::Material::materialDefinitionPath(&v9);
          v7 = 0;
          v8 = &str_67;
          v5 = re::StringID::operator=((this + 272), &v7);
          if (v7)
          {
            if (v7)
            {
            }
          }
        }
      }
    }
  }

  return *(this + 35);
}

uint64_t re::sg::CachedCompilationMaterial::getHasBackgroundBlur(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 288))
  {
    goto LABEL_7;
  }

  re::sg::CachedCompilationMaterial::getMaterial(&v6, this);
  v2 = v6;
  if (v6)
  {
    v3 = [v6 hasBackgroundBlur];
    if ((*(this + 288) & 1) == 0)
    {
      *(this + 288) = 1;
    }

    *(this + 289) = v3;
  }

  if (*(this + 288))
  {
LABEL_7:
    v4 = *(this + 289);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t re::sg::CachedCompilationMaterial::getHasTimeVaryingFeatures(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 290))
  {
    goto LABEL_10;
  }

  re::sg::CachedCompilationMaterial::getMaterial(&v6, this);
  v2 = v6;
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 hasTimeVaryingFeatures];
    }

    else
    {
      v3 = 1;
    }

    if ((*(this + 290) & 1) == 0)
    {
      *(this + 290) = 1;
    }

    *(this + 291) = v3;
  }

  if (*(this + 290))
  {
LABEL_10:
    v4 = *(this + 291);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

BOOL re::sg::CachedCompilationMaterial::encode(re::sg::CachedCompilationMaterial *this, __CFData *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  re::sg::CachedCompilationMaterial::getMaterial(&v51, this);
  MutableBytePtr = CFDataGetMutableBytePtr(a2);
  v5 = CFDataGetLength(a2);
  v43 = MutableBytePtr;
  length = 0;
  length_4 = v5;
  v46 = a2;
  v47 = re::sg::CachedCompilationMaterial::encode(__CFData *)const::$_0::__invoke;
  memset(v48, 0, sizeof(v48));
  re::DynamicString::setCapacity(v48, 0);
  v49 = 6;
  v50 = 0;
  v42 = &unk_1F5D16F10;
  re::snapshot::EncoderOPACK::beginObject(&v42);
  v6 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 1);
  }

  else
  {
    ++length;
    v43[v6] = 9;
  }

  v7 = [v51 uniforms];
  re::snapshot::EncoderOPACK::beginDictionary(&v42, [v7 count]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 UTF8String];
        v16 = [v13 name];
        re::snapshot::EncoderOPACK::serializeString(&v42, v15, [v16 length]);

        re::snapshot::EncoderOPACK::writeInteger(&v42, [v13 type]);
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v10);
  }

  re::snapshot::EncoderOPACK::endDictionary(&v42, [v8 count]);
  CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(this);
  v18 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 2);
  }

  else
  {
    ++length;
    v43[v18] = 10;
  }

  re::snapshot::EncoderOPACK::beginObject(&v42);
  v19 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 1);
  }

  else
  {
    ++length;
    v43[v19] = 9;
  }

  v20 = strlen(*(CustomUniformsArgument + 1));
  re::snapshot::EncoderOPACK::serializeString(&v42, *(CustomUniformsArgument + 1), v20);
  v21 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 2);
  }

  else
  {
    ++length;
    v43[v21] = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v42, *(CustomUniformsArgument + 8));
  v22 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 3);
  }

  else
  {
    ++length;
    v43[v22] = 11;
  }

  re::snapshot::EncoderOPACK::beginObject(&v42);
  re::snapshotMapFields<re::snapshot::EncoderOPACK>(&v42, CustomUniformsArgument + 3);
  re::snapshot::EncoderOPACK::endObject(&v42);
  re::snapshot::EncoderOPACK::endObject(&v42);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 3);
  v23 = strlen(*(this + 35));
  re::snapshot::EncoderOPACK::serializeString(&v42, *(this + 35), v23);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 4);
  if (*(this + 288) == 1)
  {
    v24 = *(this + 289);
  }

  else
  {
    v24 = 0;
  }

  re::snapshot::EncoderOPACK::operator<<(&v42, v24 & 1);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 5);
  re::snapshot::EncoderOPACK::beginArray(&v42, *(this + 39));
  v25 = *(this + 39);
  if (v25)
  {
    v26 = 32 * v25;
    v27 = (*(this + 41) + 16);
    do
    {
      v28 = *(v27 - 1);
      if (v28)
      {
        v29 = *v27;
      }

      else
      {
        v29 = v27 - 7;
      }

      v30 = v28 >> 1;
      v31 = v28 >> 1;
      if (*(v27 - 1))
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      re::snapshot::EncoderOPACK::serializeString(&v42, v29, v32);
      v27 += 4;
      v26 -= 32;
    }

    while (v26);
    v33 = *(this + 39);
  }

  else
  {
    v33 = 0;
  }

  re::snapshot::EncoderOPACK::endArray(&v42, v33);
  re::snapshot::EncoderOPACK::endObject(&v42);
  CFDataSetLength(a2, length);
  v34 = *(&v48[0] + 1);

  v42 = &unk_1F5D16DD0;
  if (*&v48[0] && (BYTE8(v48[0]) & 1) != 0)
  {
    (*(**&v48[0] + 40))();
  }

  v35 = v34 >> 1;
  if ((v34 & 1) == 0)
  {
    v35 = v34 >> 1;
  }

  v36 = v35 == 0;

  return v36;
}

void re::sg::MaterialSourceCache::lookup(uint64_t *__return_ptr a1@<X8>, re::sg::MaterialSourceCache *this@<X0>, const void *a3@<X1>, unint64_t a4@<X2>)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    MurmurHash3_x64_128(a3, a4, 0, v9);
    v8 = (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
  }

  else
  {
    v8 = 0;
  }

  re::sg::MaterialSourceCache::lookup(a1, this, a3, v8, a4);
}

void re::sg::MaterialSourceCache::lookup(uint64_t *__return_ptr a1@<X8>, re::sg::MaterialSourceCache *this@<X0>, const void *a3@<X2>, unint64_t a4@<X1>, uint64_t a5@<X3>)
{
  v31 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock((this + 48));
  v10 = a4 ^ (a4 >> 30);
  if (!*this || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27)), v12 = v11 ^ (v11 >> 31), v13 = *(*(this + 1) + 4 * (v12 % *(this + 6))), v13 == 0x7FFFFFFF))
  {
LABEL_6:
    v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a5 freeWhenDone:0];
    v28 = 0;
    v16 = [MEMORY[0x1E69CD9D8] sourceFromArchiveData:v15 error:&v28];
    v17 = v28;
    v18 = v17;
    if (v17)
    {
      v19 = *re::graphicsLogObjects(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(re *)v18 localizedDescription];
        v22 = [v21 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "MaterialSourceCache::lookup: Got error creating new MaterialSource. (error=%s)\n", &buf, 0xCu);
      }
    }

    v23 = v16;
    buf = 0uLL;
    v30 = 0;
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, this, a4, v24 ^ (v24 >> 31));
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v25 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this, DWORD2(buf), buf);
      v26 = 0;
      *(v25 + 8) = a4;
      *(v25 + 16) = v23;
      ++*(this + 10);
      v27 = v23;
    }

    else
    {
      v27 = *(*(this + 2) + 32 * HIDWORD(buf) + 16);
      v26 = v23;
    }

    *a1 = v27;
  }

  else
  {
    v14 = *(this + 2);
    while (*(v14 + 32 * v13 + 8) != a4)
    {
      v13 = *(v14 + 32 * v13) & 0x7FFFFFFF;
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, this, a4, v12);
    *a1 = *(v14 + 32 * HIDWORD(buf) + 16);
  }

  std::recursive_mutex::unlock((this + 48));
}

UInt8 *re::sg::CachedCompilationMaterial::encode(__CFData *)const::$_0::__invoke(const __CFData *a1, uint64_t a2, CFIndex a3)
{
  Length = CFDataGetLength(a1);
  if (2 * Length <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 2 * Length;
  }

  CFDataSetLength(a1, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  CFDataGetLength(a1);
  return MutableBytePtr;
}

uint64_t re::DynamicOverflowArray<char,256ul>::DynamicOverflowArray(uint64_t a1, size_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  re::DynamicOverflowArray<char,256ul>::setCapacity(a1, a2);
  *(a1 + 16) += 2;
  return a1;
}

_anonymous_namespace_ *re::DynamicOverflowArray<char,256ul>::setCapacity(_anonymous_namespace_ *result, size_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<char,256ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = *(result + 3);
  }

  if (v7 != a2)
  {
    v8 = *(result + 1);
    if (v8 <= a2 && (a2 > 0x100 || (v6 & 1) == 0))
    {
      if (a2 < 0x101)
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

void **re::FixedArray<NS::SharedPtr<NS::String>>::FixedArray(void **a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, a2[1]);
    re::FixedArray<NS::SharedPtr<NS::String>>::copy(a1, a2);
  }

  return a1;
}

void **re::FixedArray<NS::SharedPtr<NS::String>>::copy(void **result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 8 * v2;
      do
      {
        v5 = NS::SharedPtr<MTL::Buffer>::operator=(result, v3++);
        result = v5 + 1;
        v4 -= 8;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
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
                v19 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                v20 = *v18;
                *v18 = 0;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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

uint64_t re::TensionDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 32) & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    v3 = *(a2 + 16);
    *(result + 8) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 309) == 1)
      {
        v4 = 0;
        v5 = 1;
        v6 = MEMORY[0x1E6974060];
        do
        {
          v7 = v5;
          v26 = v4;
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          memset(v27, 0, sizeof(v27));
          re::DynamicString::setCapacity(v27, 0);
          v32 = 0u;
          v31 = 0u;
          v30 = 0u;
          v29 = 0u;
          LOBYTE(v29) = v26;
          v28 = 53;
          v9 = [objc_msgSend(v6 alloc];
          [v9 setConstantValue:&v26 type:53 atIndex:0];
          ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v11);
          NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16 + 8 * v4), ComputePipelineState);
          if (v9)
          {
          }

          if (*&v27[0] && (BYTE8(v27[0]) & 1) != 0)
          {
            (*(**&v27[0] + 40))();
          }

          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
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

          result = v11;
          if (v11)
          {
            if (v12)
            {
              result = (*(*v11 + 40))();
            }
          }

          v5 = 0;
          v4 = 1;
        }

        while ((v7 & 1) != 0);
        *(v2 + 33) = 1;
      }
    }
  }

  return result;
}

uint64_t re::TensionDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 32) == 1)
  {
    v4 = *(result + 33);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30DA510;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::TensionDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5)
{
  v7 = a5;
  v104 = *MEMORY[0x1E69E9840];
  v89 = *a5;
  v9 = *(*a5 + 48);
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v10[1] = v9;
  v10[2] = 0;
  *v10 = a2;
  if (v9)
  {
    if (v9 >= 0x492492492492493)
    {
LABEL_63:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v9);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v72, v78);
      __break(1u);
      goto LABEL_64;
    }

    v10 = (*(*a2 + 32))(a2, 56 * v9, 8);
    *(v12 + 16) = v10;
    if (!v10)
    {
LABEL_64:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_65:
      re::internal::assertLog(5, v47, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 152, a4);
      _os_crash("assertion failure: (!Unreachable code) Invalid deformation execution mode: %u.", v73);
      __break(1u);
    }

    v5 = v10;
    if (v9 != 1)
    {
      bzero(v10, 56 * v9 - 56);
      v5 += 56 * v9 - 56;
    }

    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
  }

  v14 = re::globalAllocators(v10)[2];
  *&v99 = &unk_1F5D08E30;
  *(&v100 + 1) = v14;
  *&v101 = &v99;
  v15 = (*(*a2 + 16))(a2, v12, &v99);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v99);
  if (v9)
  {
    v16 = 0;
    v86 = v15;
    v87 = v7;
    v85 = v9;
    while (1)
    {
      v17 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v89 + 8, v16);
      v18 = *(v17 + 8);
      v19 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v18);
      v21 = v7[6];
      if (v21 <= v18)
      {
        break;
      }

      v12 = v19;
      v22 = *(a1 + 1);
      v5 = WORD1(*(*(v19 + 368) + 16));
      v6 = *(v22 + 24);
      if (v6 <= v5)
      {
        goto LABEL_44;
      }

      v23 = *(*(v22 + 40) + 16 * WORD1(*(*(v19 + 368) + 16))) + 864 * *(*(v19 + 368) + 16);
      v5 = *(v19 + 392);
      v6 = *(v23 + 56);
      if (v6 <= v5)
      {
        goto LABEL_48;
      }

      v6 = *(v15 + 8);
      if (v6 <= v16)
      {
        goto LABEL_52;
      }

      v24 = (v7[5] + 312 * v18);
      v25 = *(v23 + 64) + 544 * *(v19 + 392);
      v9 = *(v15 + 16) + 56 * v16;
      v26 = v25;
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26 && !v27[8]);
      *&v99 = 0x66739F42610D3BC2;
      v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v27 + 5, &v99);
      if (v28 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = (v27[6] + 16 * v28 + 8);
      }

      v30 = v25;
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30 && !v31[8]);
      *&v99 = 0x535FC835C0260B06;
      v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v31 + 5, &v99);
      if (v32 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = (v31[6] + 16 * v32 + 8);
      }

      v33 = v25;
      do
      {
        v34 = v33;
        v33 = *v33;
      }

      while (v33 && !v34[8]);
      *&v99 = 0x455BD5FA7760EFECLL;
      v35 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v34 + 5, &v99);
      if (v35 != -1 && v29 && v6)
      {
        v5 = v35;
        v36 = v34[6];
        *(v9 + 24) = *(v25 + 448);
        v37 = re::AttributeTable::buffers(v25);
        v39 = *v29;
        if (v38 <= v39)
        {
          goto LABEL_56;
        }

        *(v9 + 32) = v37 + 24 * *v29;
        v40 = re::AttributeTable::buffers(v25);
        v42 = *v6;
        if (v41 <= v42)
        {
          goto LABEL_57;
        }

        *(v9 + 40) = v40 + 24 * *v6;
        v43 = re::AttributeTable::buffers(v25);
        v45 = *(v36 + 16 * v5 + 8);
        if (v44 <= v45)
        {
          goto LABEL_58;
        }

        *(v9 + 48) = v43 + 24 * *(v36 + 16 * v5 + 8);
        LOBYTE(v99) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
        v46 = *(v24[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v24 + 7, &v99) + 20);
        LOBYTE(v99) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
        v48 = v46 / *(v24[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v24 + 15, &v99) + 4);
        if (a4 == 1)
        {
          v7 = v87;
          v81 = v81 & 0xFFFF000000000000 | 0x1010001000CLL;
          v82 = v82 & 0xFFFFFF0000000000 | 0x1E00000000;
          v49 = re::DeformationBufferAllocator::alloc(*(v12 + 360), v87[2], 1, v81, v82, *(v17 + 16), 4 * v48);
          v50 = *(v12 + 360);
          v12 = *(v17 + 16);
          v5 = *(v50 + 8);
          v15 = v86;
          if (v5 <= v12)
          {
            goto LABEL_59;
          }

          v51 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v50 + 16) + 72 * *(v17 + 16) + 16, v49);
          WORD2(v99) = 257;
          LODWORD(v99) = 65540;
          BYTE12(v99) = 28;
          DWORD2(v99) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v24, 19, 1, (v51 + 24), &v99);
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v99, a3, 4uLL, 4uLL);
          v52 = v99;
          v53 = v100;
          v54 = *(&v99 + 1);
          *(v99 + DWORD2(v99)) = v48;
          *v9 = v52;
          *(v9 + 8) = v54;
          *(v9 + 16) = v53;
        }

        else
        {
          v15 = v86;
          v7 = v87;
          if (a4)
          {
            goto LABEL_65;
          }

          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v99, a3, 4 * v48, 0x10uLL);
          LOWORD(v92) = 257;
          v91 = 65540;
          LOBYTE(v93) = 28;
          HIDWORD(v92) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v24, 19, 0, &v99, &v91);
        }
      }

      else
      {
        v15 = v86;
        v7 = v87;
      }

      v9 = v85;
      if (++v16 == v85)
      {
        return v15;
      }
    }

    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v74);
    __break(1u);
LABEL_44:
    v90 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v91 = 136315906;
    v92 = "operator[]";
    v93 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v94 = 797;
    v95 = 2048;
    v96 = v5;
    v97 = 2048;
    v98 = v6;
    _os_log_send_and_compose_impl(v58, &v90, &v99, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v91, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v90 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v91 = 136315906;
    v92 = "operator[]";
    v93 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v94 = 476;
    v95 = 2048;
    v96 = v5;
    v97 = 2048;
    v98 = v6;
    _os_log_send_and_compose_impl(v61, &v90, &v99, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v91, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v90 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v91 = 136315906;
    v92 = "operator[]";
    v93 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v94 = 468;
    v95 = 2048;
    v96 = v16;
    v97 = 2048;
    v98 = v6;
    _os_log_send_and_compose_impl(v64, &v90, &v99, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v91, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, v38);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v69, v75);
    __break(1u);
LABEL_57:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v42, v41);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v76);
    __break(1u);
LABEL_58:
    re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v45, v44);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v71, v77);
    __break(1u);
LABEL_59:
    v90 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v91 = 136315906;
    v92 = "operator[]";
    v93 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v94 = 476;
    v95 = 2048;
    v96 = v12;
    v97 = 2048;
    v98 = v5;
    _os_log_send_and_compose_impl(v67, &v90, &v99, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v91, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  return v15;
}

uint64_t re::TensionDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Tension Computation");
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v40 = v7;
    v41 = v4;
    v39 = *(v7 + 48);
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v10);
      v13 = *(a2 + 8);
      if (v13 <= v10)
      {
        v44 = 0;
        memset(v48, 0, sizeof(v48));
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v45 = 136315906;
        *&v45[4] = "operator[]";
        *&v45[12] = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        *&v45[14] = 468;
        *&v45[18] = 2048;
        *&v45[20] = v10;
        v46 = 2048;
        v47 = v13;
        _os_log_send_and_compose_impl(v34, &v44, v48, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
LABEL_18:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v36);
        __break(1u);
      }

      v14 = *(a2 + 16);
      v15 = v14 + v9;
      if (*(v14 + v9 + 32) && *(v15 + 40) && *(v14 + v9 + 48))
      {
        v16 = *(v11 + 8);
        v17 = v4[6];
        if (v17 <= v16)
        {
          goto LABEL_18;
        }

        v18 = (v4[5] + 312 * v16);
        LOBYTE(v48[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v19 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v48) + 20);
        LOBYTE(v48[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v20 = v19 / *(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v48) + 4);
        LOBYTE(v48[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v48) + 16) == 36)
        {
          v21 = 24;
        }

        else
        {
          v21 = 16;
        }

        v22 = [*(a1 + v21) maxTotalThreadsPerThreadgroup];
        v23 = *(a1 + v21);
        v43 = (v20 + v22 - 1) / v22;
        v24 = v22;
        [*this setComputePipelineState:v23];
        LOBYTE(v48[0]) = 19;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0x13u);
        v25 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v48) + 24);
        LOBYTE(v48[0]) = 19;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0x13u);
        [*this setBuffer:v25 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v48) + 16), 0}];
        LOBYTE(v48[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        v26 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v48) + 24);
        LOBYTE(v48[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        [*this setBuffer:v26 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v48) + 16), 1}];
        LOBYTE(v48[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v27 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v48) + 24);
        LOBYTE(v48[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v28 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v48) + 16);
        v29 = v27;
        v8 = v39;
        v7 = v40;
        [*this setBuffer:v29 offset:v28 atIndex:2];
        [*this setBuffer:**(v15 + 32) offset:*(*(v15 + 32) + 16) atIndex:3];
        [*this setBuffer:**(v15 + 40) offset:*(*(v15 + 40) + 16) atIndex:4];
        [*this setBuffer:**(v14 + v9 + 48) offset:*(*(v14 + v9 + 48) + 16) atIndex:5];
        [*this setBuffer:*(v14 + v9 + 16) offset:*(v14 + v9 + 8) atIndex:6];
        v4 = v41;
        v30 = *this;
        *&v48[0] = v43;
        *(v48 + 8) = vdupq_n_s64(1uLL);
        *v45 = v24;
        *&v45[8] = *(v48 + 8);
        [v30 dispatchThreadgroups:v48 threadsPerThreadgroup:v45];
      }

      ++v10;
      v9 += 56;
    }

    while (v8 != v10);
  }

  return [*this popDebugGroup];
}

uint64_t re::TensionDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v134 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  v129 = 0;
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = a3;
  v6 = a2;
  v7 = 0;
  v111 = v3;
  v114 = *(v3 + 48);
  do
  {
    v8 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v7);
    v10 = *(v6 + 8);
    if (v10 <= v7)
    {
      goto LABEL_69;
    }

    v11 = (*(v6 + 16) + 56 * v7);
    if (v11[4] && v11[5] && v11[6])
    {
      v12 = *(v8 + 8);
      v13 = v5[6];
      if (v13 <= v12)
      {
        goto LABEL_73;
      }

      v14 = (v5[5] + 312 * v12);
      v115 = (*(v6 + 16) + 56 * v7);
      v15 = v11[3];
      LOBYTE(v145) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v16 = *(v14[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v145) + 20);
      LOBYTE(v145) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v118 = *(v14[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v145) + 4);
      LOBYTE(v145) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v145);
      v18 = v14[16];
      v123 = 0;
      v10 = 20;
      v124 = 0;
      v125 = 0;
      re::VertexUnpacker::setVertexFormat(&v123, (v18 + 20 * v17 + 4));
      v133 = 0;
      ++v134;
      if (v132 < v15 / 3)
      {
        re::DynamicArray<int>::setCapacity(&v131, v15 / 3);
      }

      v117 = v16;
      v19 = v16 / v118;
      v128 = 0;
      ++v129;
      if (v127 < v19)
      {
        re::DynamicArray<int>::setCapacity(&v126, v19);
      }

      LOBYTE(v145) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v20 = v14[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v145);
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      LOBYTE(v145) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
      v116 = v14;
      if (*(v14[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v145) + 16) == 36)
      {
        LOBYTE(v145) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
        v23 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v145);
        if (v15)
        {
          v10 = 0;
          v25 = v14[8] + 32 * v23;
          v26 = *(v25 + 20) >> 2;
          v27 = (*(v25 + 8) + *(v25 + 16) + 4);
          while (v10 < v26)
          {
            v28 = v123(v21 + v22, *(v27 - 1));
            v30 = v10 + 1;
            if (v10 + 1 >= v26)
            {
              goto LABEL_66;
            }

            v31 = v28;
            v32 = v29;
            v33 = v123(v21 + v22, *v27);
            v35 = v10 + 2;
            if (v10 + 2 >= v26)
            {
              goto LABEL_67;
            }

            v36.i64[0] = v31;
            v36.i64[1] = v32;
            v121 = v36;
            v36.i64[0] = v33;
            v36.i64[1] = v34;
            v119 = v36;
            v37.i64[0] = v123(v21 + v22, v27[1]);
            v37.i64[1] = v38;
            v39 = vsubq_f32(v119, v121);
            v40 = vsubq_f32(v37, v121);
            v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(v39)), v40, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
            v42 = vmulq_f32(v41, v41);
            *&v145 = sqrtf(v42.f32[1] + (v42.f32[2] + v42.f32[0])) * 0.5;
            re::DynamicArray<float>::add(&v131, &v145);
            v10 += 3;
            v27 += 3;
            if (v10 >= v15)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        LOBYTE(v145) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
        v43 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v145);
        if (v15)
        {
          v10 = 0;
          v45 = v14[8] + 32 * v43;
          v26 = *(v45 + 20) >> 1;
          v46 = (*(v45 + 8) + *(v45 + 16) + 4);
          while (v10 < v26)
          {
            v47 = v123(v21 + v22, *(v46 - 2));
            v49 = v10 + 1;
            if (v10 + 1 >= v26)
            {
              goto LABEL_65;
            }

            v50 = v47;
            v51 = v48;
            v52 = v123(v21 + v22, *(v46 - 1));
            v54 = v10 + 2;
            if (v10 + 2 >= v26)
            {
              goto LABEL_68;
            }

            v55.i64[0] = v50;
            v55.i64[1] = v51;
            v122 = v55;
            v55.i64[0] = v52;
            v55.i64[1] = v53;
            v120 = v55;
            v56 = *v46;
            v46 += 3;
            v57.i64[0] = v123(v21 + v22, v56);
            v57.i64[1] = v58;
            v59 = vsubq_f32(v120, v122);
            v60 = vsubq_f32(v57, v122);
            v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL), vnegq_f32(v59)), v60, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL));
            v62 = vmulq_f32(v61, v61);
            *&v145 = sqrtf(v62.f32[1] + (v62.f32[2] + v62.f32[0])) * 0.5;
            re::DynamicArray<float>::add(&v131, &v145);
            v10 += 3;
            if (v10 >= v15)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_63;
        }
      }

LABEL_26:
      v63 = re::BufferView::contents(v115[4]);
      v64 = re::BufferView::contents(v115[5]);
      if (v117 >= v118)
      {
        v65 = v64;
        v66 = 0;
        v10 = v64 - 4;
        while (1)
        {
          v67 = v66 ? *(v10 + 4 * v66) : 0;
          v68 = *(v65 + 4 * v66);
          v69 = 0.0;
          if (v68 > v67)
          {
            break;
          }

LABEL_35:
          *&v145 = v69 / (v68 - v67);
          re::DynamicArray<float>::add(&v126, &v145);
          if (++v66 >= v19)
          {
            goto LABEL_36;
          }
        }

        v70 = v133;
        v71 = v68 - v67;
        v72 = (v63 + 4 * v67);
        while (1)
        {
          v73 = *v72++;
          v26 = v73;
          if (v133 <= v73)
          {
            break;
          }

          v69 = v69 + *(v135 + 4 * v26);
          if (!--v71)
          {
            goto LABEL_35;
          }
        }

        v136 = 0;
        v81 = &v137;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        v140 = 789;
        v141 = 2048;
        v142 = v26;
        v143 = 2048;
        v144 = v70;
        _os_log_send_and_compose_impl(v87, &v136, &v145, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v109, v110);
        _os_crash_msg();
        __break(1u);
        goto LABEL_58;
      }

LABEL_36:
      v74 = re::BufferView::contents(v115[6]);
      LOBYTE(v145) = 19;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v116, 0x13u);
      v75 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v116 + 184), &v145);
      v4 = v114;
      v26 = 56;
      if (v117 >= v118)
      {
        v77 = 0;
        v78 = *(v116 + 192) + 32 * v75;
        v79 = *(v78 + 8) + *(v78 + 16);
        v80 = *(v78 + 20) >> 2;
        v81 = v128;
        v82 = v130;
        while (v81 != v77)
        {
          if (v80 == v77)
          {
            goto LABEL_62;
          }

          v83 = (*(v74 + 4 * v77) - *(v82 + 4 * v77)) / *(v74 + 4 * v77);
          if (v83 > 1.0)
          {
            v83 = 1.0;
          }

          if (v83 < -1.0)
          {
            v83 = -1.0;
          }

          *(v79 + 4 * v77++) = v83;
          if (v77 >= v19)
          {
            goto LABEL_45;
          }
        }

LABEL_58:
        v136 = 0;
        v10 = &v137;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        v140 = 789;
        v141 = 2048;
        v142 = v81;
        v143 = 2048;
        v144 = v81;
        _os_log_send_and_compose_impl(v89, &v136, &v145, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v109, v110);
        _os_crash_msg();
        __break(1u);
LABEL_62:
        re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v80, v80);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v93, v101);
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v94, v102);
        __break(1u);
LABEL_64:
        re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v95, v103);
        __break(1u);
LABEL_65:
        re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v96, v104);
        __break(1u);
LABEL_66:
        re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v97, v105);
        __break(1u);
LABEL_67:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v98, v106);
        __break(1u);
LABEL_68:
        re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v54, v26);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v99, v107);
        __break(1u);
LABEL_69:
        v123 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        v140 = 468;
        v141 = 2048;
        v142 = v7;
        v143 = 2048;
        v144 = v10;
        _os_log_send_and_compose_impl(v92, &v123, &v145, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v109, v110);
        _os_crash_msg();
        __break(1u);
LABEL_73:
        re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v100, v108);
        __break(1u);
      }

LABEL_45:
      v6 = a2;
      v5 = a3;
      v3 = v111;
    }

    ++v7;
  }

  while (v7 != v4);
  if (v126 && v130)
  {
    (*(*v126 + 40))();
  }

LABEL_50:
  result = v131;
  if (v131)
  {
    if (v135)
    {
      return (*(*v131 + 40))();
    }
  }

  return result;
}

void re::TensionDeformer::~TensionDeformer(re::TensionDeformer *this)
{
  for (i = 24; i != 8; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 24;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 8)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
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

void *re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D08E30;
  return result;
}

void *re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D08E30;
  return result;
}

uint64_t re::VertexUnpacker::setVertexFormat(uint64_t this, const VertexBufferFormat *a2)
{
  *(this + 8) = *a2;
  v4 = *(a2 + 12);
  v5 = re::VertexUnpacker::unpackHalf3Data;
  if (v4 > 0x19)
  {
    if (v4 == 26)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (v4 == 30)
    {
      v6 = 0;
      v5 = re::VertexUnpacker::unpackFloat3Data;
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 == 8)
    {
      v6 = 2;
      v5 = re::VertexUnpacker::unpackUChar3NormalizedData;
      goto LABEL_10;
    }

    if (v4 == 11)
    {
      v6 = 3;
      v5 = re::VertexUnpacker::unpackChar3NormalizedData;
LABEL_10:
      *this = v5;
      *(this + 12) = v6;
      return this;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported format", "!Unreachable code", "setVertexFormat", 35, v2, v3);
  this = _os_crash("assertion failure: (!Unreachable code) Unsupported format");
  __break(1u);
  return this;
}

double re::VertexUnpacker::unpackHalf3Data(re::VertexUnpacker *this, const void *a2, float16x4_t a3)
{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

int8x8_t re::VertexUnpacker::unpackChar3NormalizedData(re::VertexUnpacker *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

float32x2_t re::VertexUnpacker::unpackUChar3NormalizedData(re::VertexUnpacker *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

double re::LateLatchingManager::processLateLatchAnchorPose(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v17 = a2;
  v4 = *(*(*(a1 + 4376) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL;
  v5 = 4368;
  while (*(a1 + 1440) != v4)
  {
    a1 += 1456;
    v5 -= 1456;
    if (!v5)
    {
      return result;
    }
  }

  v6 = re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(a1, &v17);
  if (v6)
  {
    v8 = v6;
    v20 = __invert_f4(*v6);
    v9 = 0;
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    v18 = v20;
    do
    {
      v19[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v18.columns[v9])), v11, *v18.columns[v9].f32, 1), v12, v18.columns[v9], 2), v13, v18.columns[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v19;
    v14 = v19[1];
    v15 = v19[2];
    v16 = v19[3];
    v8[1].columns[0] = v19[0];
    v8[1].columns[1] = v14;
    v8[1].columns[2] = v15;
    v8[1].columns[3] = v16;
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, void *a2)
{
  if (*(a1 + 1212))
  {
    return re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 1184, a2);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 144 * v3;
  for (result = a1 + 48; *(result - 16) != *a2; result += 144)
  {
    v4 -= 144;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::LateLatchingManager::trackAnchorPose(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3, __int128 *a4)
{
  os_unfair_lock_lock(a1 + 1092);
  v9 = 0;
  v10 = 0;
  v11 = -1;
  v12 = a1;
  while (1)
  {
    v13 = *&v12[360]._os_unfair_lock_opaque;
    if (v13 == a3)
    {
      break;
    }

    if (v13 < v11)
    {
      v10 = v9;
      v11 = *&v12[360]._os_unfair_lock_opaque;
    }

    ++v9;
    v12 += 364;
    if (v9 == 3)
    {
      if (v10 >= 3)
      {
        re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 3);
        result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v27, v28);
        __break(1u);
        return result;
      }

      v12 = &a1[364 * v10];
      *&v12[360]._os_unfair_lock_opaque = a3;
      if (v12[303]._os_unfair_lock_opaque)
      {
        os_unfair_lock_opaque = v12[302]._os_unfair_lock_opaque;
        if (os_unfair_lock_opaque)
        {
          memset_pattern16(*&v12[298]._os_unfair_lock_opaque, &unk_1E304C660, 4 * os_unfair_lock_opaque);
        }

        v15 = v12[304]._os_unfair_lock_opaque;
        if (v15)
        {
          v16 = *&v12[300]._os_unfair_lock_opaque;
          do
          {
            if ((*v16 & 0x80000000) != 0)
            {
              *v16 &= ~0x80000000;
            }

            v16 += 36;
            --v15;
          }

          while (v15);
        }

        v12[305]._os_unfair_lock_opaque = 0x7FFFFFFF;
        *&v12[303]._os_unfair_lock_opaque = 0;
        v17 = 306;
      }

      else
      {
        *&v12[4]._os_unfair_lock_opaque = 0;
        v17 = 6;
      }

      ++v12[v17]._os_unfair_lock_opaque;
      if (v12[355]._os_unfair_lock_opaque)
      {
        v18 = v12[354]._os_unfair_lock_opaque;
        if (v18)
        {
          memset_pattern16(*&v12[350]._os_unfair_lock_opaque, &unk_1E304C660, 4 * v18);
        }

        v19 = v12[356]._os_unfair_lock_opaque;
        if (v19)
        {
          v20 = *&v12[352]._os_unfair_lock_opaque;
          do
          {
            if ((*v20 & 0x80000000) != 0)
            {
              *v20 &= ~0x80000000;
            }

            v20 += 6;
            --v19;
          }

          while (v19);
        }

        v12[357]._os_unfair_lock_opaque = 0x7FFFFFFF;
        *&v12[355]._os_unfair_lock_opaque = 0;
        v21 = 358;
      }

      else
      {
        *&v12[312]._os_unfair_lock_opaque = 0;
        v21 = 314;
      }

      ++v12[v21]._os_unfair_lock_opaque;
      break;
    }
  }

  v30 = a2;
  if (re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(v12, &v30))
  {
    v22 = re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(&v12[308], v30);
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = a4[1];
    v29[0] = *a4;
    v29[1] = v24;
    v25 = a4[3];
    v29[2] = a4[2];
    v29[3] = v25;
    v29[4] = xmmword_1E3047670;
    v29[5] = xmmword_1E3047680;
    v29[6] = xmmword_1E30476A0;
    v29[7] = xmmword_1E30474D0;
    re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(v12, &v30, v29);
    if (v12[303]._os_unfair_lock_opaque)
    {
      v23 = v12[303]._os_unfair_lock_opaque;
    }

    else
    {
      v23 = v12[4]._os_unfair_lock_opaque;
    }

    LOBYTE(v29[0]) = v23;
    re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(&v12[308], &v30, v29);
  }

  os_unfair_lock_unlock(a1 + 1092);
  return v23;
}

void re::LateLatchingManager::getLateLatchPoseCorrections(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  v58 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v56 = (a3 + 672);
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 704) = 0;
  *(a3 + 708) = 0x7FFFFFFFLL;
  os_unfair_lock_lock(this + 1092);
  for (i = 0; i != 1092; i += 364)
  {
    v10 = &v5[i];
    if (*&v5[i + 360]._os_unfair_lock_opaque == a2)
    {
      os_unfair_lock_opaque = v10[303]._os_unfair_lock_opaque;
      v53 = &v10[318];
      v12 = &v5[i];
      if (os_unfair_lock_opaque)
      {
        v13 = v12 + 296;
        v55 = v12[304]._os_unfair_lock_opaque;
        v3 = 0;
        if (v55)
        {
          v14 = *&v12[300]._os_unfair_lock_opaque;
          do
          {
            v15 = *v14;
            v14 += 36;
            if (v15 < 0)
            {
              goto LABEL_15;
            }

            ++v3;
          }

          while (v55 != v3);
          LODWORD(v3) = v55;
        }

        else
        {
          LODWORD(v55) = 0;
        }

LABEL_15:
        v54 = v13;
      }

      else
      {
        v13 = v12 + 8;
        v16 = *&v12[4]._os_unfair_lock_opaque;
        v54 = &v13[36 * v16];
        LODWORD(v55) = v16;
      }

      v17 = &v5[i];
      while (1)
      {
LABEL_17:
        if (os_unfair_lock_opaque)
        {
          if (v55 == v3)
          {
            goto LABEL_4;
          }

          v18 = *&v13[4]._os_unfair_lock_opaque + 144 * v3;
          p_os_unfair_lock_opaque = (v18 + 8);
          v20 = (v18 + 16);
        }

        else
        {
          if (v13 == v54)
          {
            goto LABEL_4;
          }

          v20 = v13 + 4;
          p_os_unfair_lock_opaque = &v13->_os_unfair_lock_opaque;
        }

        v21 = *p_os_unfair_lock_opaque;
        if (v17[355]._os_unfair_lock_opaque)
        {
          v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) >> 27));
          v7 = re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v57, &v17[348], v21, v22 ^ (v22 >> 31));
          if (*&v57[12] == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }

          v23 = (*&v17[352]._os_unfair_lock_opaque + 24 * *&v57[12] + 16);
        }

        else
        {
          v24 = *&v17[312]._os_unfair_lock_opaque;
          if (!v24)
          {
            goto LABEL_50;
          }

          v25 = 16 * v24;
          v23 = v53;
          while (*(v23 - 1) != v21)
          {
            v23 += 16;
            v25 -= 16;
            if (!v25)
            {
              goto LABEL_50;
            }
          }
        }

        if (*(a3 + 700))
        {
LABEL_26:
          re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::add(v56, v23, &v20[16]);
        }

        else
        {
          v26 = *(a3 + 16);
          if (v26)
          {
            v27 = 80 * v26;
            v28 = *v23;
            v29 = 32;
            v30 = 80 * v26;
            do
            {
              if (*(a3 + v29) == v28)
              {
                goto LABEL_50;
              }

              v29 += 80;
              v30 -= 80;
            }

            while (v30);
            if ((v26 & 0xFFFFFFF8) != 0)
            {
              v52 = v5;
              if (*v56)
              {
LABEL_42:
                v33 = (a3 + 32);
                do
                {
                  memset(v57, 0, 24);
                  v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v33) ^ ((0xBF58476D1CE4E5B9 * *v33) >> 27));
                  re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(v56, v33, v34 ^ (v34 >> 31), v57);
                  if (*&v57[12] == 0x7FFFFFFF)
                  {
                    v35 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(v56, *&v57[8], *v57);
                    *(v35 + 4) = *v33;
                    v36 = *(v33 + 1);
                    v37 = *(v33 + 2);
                    v38 = *(v33 + 4);
                    *(v35 + 48) = *(v33 + 3);
                    *(v35 + 64) = v38;
                    *(v35 + 16) = v36;
                    *(v35 + 32) = v37;
                    ++*(a3 + 712);
                  }

                  v33 += 80;
                  v27 -= 80;
                }

                while (v27);
              }

              else
              {
                v31 = *a3;
                if (!*a3)
                {
                }

                re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v56, v31, 16);
                v32 = *(a3 + 16);
                if (v32)
                {
                  v27 = 80 * v32;
                  goto LABEL_42;
                }
              }

              *(a3 + 16) = 0;
              ++*(a3 + 24);
              v5 = v52;
              goto LABEL_26;
            }

            v41 = *&v20[20]._os_unfair_lock_opaque;
            *&v57[15] = *&v20[16]._os_unfair_lock_opaque;
            *&v57[31] = v41;
            v42 = *&v20[28]._os_unfair_lock_opaque;
            *&v57[47] = *&v20[24]._os_unfair_lock_opaque;
            *&v57[63] = v42;
            if (v26 >= 8)
            {
              re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
              _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
              __break(1u);
              return;
            }
          }

          else
          {
            LOBYTE(v28) = *v23;
            v39 = *&v20[20]._os_unfair_lock_opaque;
            *&v57[15] = *&v20[16]._os_unfair_lock_opaque;
            *&v57[31] = v39;
            v40 = *&v20[28]._os_unfair_lock_opaque;
            *&v57[47] = *&v20[24]._os_unfair_lock_opaque;
            *&v57[63] = v40;
          }

          v43 = a3 + 32 + 80 * v26;
          v44 = *&v57[32];
          *(v43 + 49) = *&v57[48];
          *(v43 + 64) = *&v57[63];
          v45 = *v57;
          *(v43 + 17) = *&v57[16];
          *(v43 + 33) = v44;
          *v43 = v28;
          *(v43 + 1) = v45;
          v46 = *(a3 + 16);
          ++*(a3 + 24);
          *(a3 + 16) = v46 + 1;
          if (v46 == -1)
          {
            re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v50, v51);
            __break(1u);
          }
        }

LABEL_50:
        if (os_unfair_lock_opaque)
        {
          v47 = v3 + 1;
          if (v13[8]._os_unfair_lock_opaque <= (v3 + 1))
          {
            LODWORD(v3) = v3 + 1;
          }

          else
          {
            LODWORD(v3) = v13[8];
          }

          while (v3 != v47)
          {
            v48 = v47;
            v49 = *(*&v13[4]._os_unfair_lock_opaque + 144 * v47++);
            if (v49 < 0)
            {
              LODWORD(v3) = v48;
              goto LABEL_17;
            }
          }
        }

        else
        {
          v13 += 36;
        }
      }
    }
  }

LABEL_4:

  os_unfair_lock_unlock(v5 + 1092);
}

uint64_t re::LateLatchingManager::isTrackingAnchorId(os_unfair_lock_s *this, unint64_t a2)
{
  v8 = a2;
  os_unfair_lock_lock(this + 1092);
  v3 = *(*(*&this[1094]._os_unfair_lock_opaque + 144) + 24) & 0xFFFFFFFFFFFFFFFLL;
  v4 = this;
  v5 = 4368;
  while (*&v4[360]._os_unfair_lock_opaque != v3 || !re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(v4, &v8))
  {
    v4 += 364;
    v5 -= 1456;
    if (!v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:
  os_unfair_lock_unlock(this + 1092);
  return v6;
}

BOOL re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 1212))
  {
    v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1 + 1184, a2, (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31), v11);
    return v12 != 0x7FFFFFFF;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = 144 * v4;
      v6 = (a1 + 32);
      v7 = *a2;
      v8 = v5 - 144;
      do
      {
        v9 = *v6;
        v6 += 18;
        result = v9 == v7;
        v10 = v9 == v7 || v8 == 0;
        v8 -= 144;
      }

      while (!v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 188))
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v7, a1 + 160, a2, v3 ^ (v3 >> 31));
    if (v8 != 0x7FFFFFFF)
    {
      return *(a1 + 176) + 24 * v8 + 16;
    }

    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 16 * v5;
  for (result = a1 + 40; *(result - 8) != a2; result += 16)
  {
    v6 -= 16;
    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t result, uint64_t *a2, __int128 *a3)
{
  v5 = result;
  v40 = *MEMORY[0x1E69E9840];
  if (!*(result + 1212))
  {
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 144 * v7;
      v9 = result + 32;
      v10 = *a2;
      v11 = 32;
      v12 = 144 * v7;
      do
      {
        if (*(result + v11) == v10)
        {
          return result;
        }

        v11 += 144;
        v12 -= 144;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF8) != 0)
      {
        v6 = result + 1184;
        if (!*(result + 1184))
        {
          v13 = *result;
          if (!*result)
          {
          }

          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v5 + 1184, v13, 16);
          v14 = *(v5 + 16);
          if (!v14)
          {
            goto LABEL_19;
          }

          v8 = 144 * v14;
        }

        do
        {
          memset(v39, 0, 24);
          v15 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(v5 + 1184, v9, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), v39);
          if (*&v39[12] == 0x7FFFFFFF)
          {
            v16 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v5 + 1184, *&v39[8], *v39);
            *(v16 + 8) = *v9;
            v17 = *(v9 + 80);
            v18 = *(v9 + 96);
            v19 = *(v9 + 128);
            *(v16 + 112) = *(v9 + 112);
            *(v16 + 128) = v19;
            *(v16 + 80) = v17;
            *(v16 + 96) = v18;
            v20 = *(v9 + 16);
            v21 = *(v9 + 32);
            v22 = *(v9 + 64);
            *(v16 + 48) = *(v9 + 48);
            *(v16 + 64) = v22;
            *(v16 + 16) = v20;
            *(v16 + 32) = v21;
            ++*(v5 + 1224);
          }

          v9 += 144;
          v8 -= 144;
        }

        while (v8);
LABEL_19:
        *(v5 + 16) = 0;
        ++*(v5 + 24);
        goto LABEL_3;
      }

      v27 = a3[5];
      *&v39[72] = a3[4];
      *&v39[88] = v27;
      v28 = a3[7];
      *&v39[104] = a3[6];
      *&v39[120] = v28;
      v29 = a3[1];
      *&v39[8] = *a3;
      *&v39[24] = v29;
      v30 = a3[3];
      *&v39[40] = a3[2];
      *&v39[56] = v30;
      if (v7 >= 8)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = a3[5];
      *&v39[72] = a3[4];
      *&v39[88] = v23;
      v24 = a3[7];
      *&v39[104] = a3[6];
      *&v39[120] = v24;
      v25 = a3[1];
      *&v39[8] = *a3;
      *&v39[24] = v25;
      v26 = a3[3];
      *&v39[40] = a3[2];
      v10 = *a2;
      *&v39[56] = v26;
    }

    v31 = result + 144 * v7;
    v32 = *&v39[64];
    *(v31 + 120) = *&v39[80];
    v33 = *&v39[112];
    *(v31 + 136) = *&v39[96];
    *(v31 + 152) = v33;
    v34 = *v39;
    *(v31 + 56) = *&v39[16];
    v35 = *&v39[48];
    *(v31 + 72) = *&v39[32];
    *(v31 + 88) = v35;
    *(v31 + 104) = v32;
    *(v31 + 32) = v10;
    *(v31 + 168) = *&v39[128];
    *(v31 + 40) = v34;
    v36 = *(result + 16);
    ++*(result + 24);
    *(result + 16) = v36 + 1;
    if (v36 == -1)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v37, v38);
      __break(1u);
    }

    return result;
  }

  v6 = result + 1184;
LABEL_3:

  return re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, void *a2, __int128 *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  if (HIDWORD(v16) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 144 * HIDWORD(v16) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v16, v15);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v11;
  *(v7 + 80) = v9;
  *(v7 + 96) = v10;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v14;
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = *(a1 + 16);
          *&v34[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 24);
          v14 = *&v34[32];
          *(a1 + 24) = v15;
          ++*&v34[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                *(v21 + 8) = *v18;
                v22 = *(v18 + 72);
                v23 = *(v18 + 88);
                v24 = *(v18 + 120);
                *(v21 + 112) = *(v18 + 104);
                *(v21 + 128) = v24;
                *(v21 + 80) = v22;
                *(v21 + 96) = v23;
                v25 = *(v18 + 8);
                v26 = *(v18 + 24);
                v27 = *(v18 + 56);
                *(v21 + 48) = *(v18 + 40);
                *(v21 + 64) = v27;
                *(v21 + 16) = v25;
                *(v21 + 32) = v26;
              }

              ++v17;
              v18 += 144;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + 144 * v4);
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + 144 * v4);
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = 144 * v4;
  *(v28 + v31) = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *(v28 + v31) = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v28 + 144 * v4;
}

double re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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

        v4 += 36;
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

uint64_t re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t result, uint64_t *a2, char *a3)
{
  v5 = result;
  if (!*(result + 188))
  {
    v7 = *(result + 16);
    v8 = *a2;
    if (v7)
    {
      v9 = 16 * v7;
      v10 = result + 32;
      v11 = 32;
      v12 = 16 * v7;
      do
      {
        if (*(result + v11) == v8)
        {
          return result;
        }

        v11 += 16;
        v12 -= 16;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF8) != 0)
      {
        if (!*(result + 160))
        {
          v13 = *result;
          if (!*result)
          {
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v5 + 160, v13, 16);
          v14 = *(v5 + 16);
          if (!v14)
          {
            goto LABEL_19;
          }

          v9 = 16 * v14;
        }

        do
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v15 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
          re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v19, v5 + 160, *v10, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31));
          if (HIDWORD(v20) == 0x7FFFFFFF)
          {
            v16 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v5 + 160, v20, v19);
            *(v16 + 8) = *v10;
            *(v16 + 16) = *(v10 + 8);
            ++*(v5 + 200);
          }

          v10 += 16;
          v9 -= 16;
        }

        while (v9);
LABEL_19:
        *(v5 + 16) = 0;
        ++*(v5 + 24);
        v6 = v5 + 160;
        goto LABEL_3;
      }

      if (v7 >= 8)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
        __break(1u);
        return result;
      }
    }

    v17 = *a3;
    v18 = result + 16 * v7;
    *(v18 + 32) = v8;
    *(v18 + 40) = v17;
    *(result + 16) = v7 + 1;
    ++*(result + 24);
    return result;
  }

  v6 = result + 160;
LABEL_3:

  return re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v28, v9, v8);
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
            v17 = 0;
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                *(v21 + 8) = *v18;
                *(v21 + 16) = *(v18 + 8);
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v28);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 24 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 24 * v4;
}

__n128 re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::add(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(a1, a2, v6 ^ (v6 >> 31), &v11);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(a1, v12, v11);
    *(v8 + 4) = *a2;
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 48);
    *(v8 + 48) = *(a3 + 32);
    *(v8 + 64) = v10;
    *(v8 + 16) = result;
    *(v8 + 32) = v9;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = *a2;
  if (*(v7 + 80 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 80 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 80 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v29, v9, v8);
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
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v19 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(a1, (v18 ^ (v18 >> 31)) % *(a1 + 24), v18 ^ (v18 >> 31));
                *(v19 + 4) = *(v13 + 4);
                v20 = *(v13 + 16);
                v21 = *(v13 + 32);
                v22 = *(v13 + 64);
                *(v19 + 48) = *(v13 + 48);
                *(v19 + 64) = v22;
                *(v19 + 16) = v20;
                *(v19 + 32) = v21;
              }

              ++v17;
              v13 += 80;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 80 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 80 * v4;
}

re::MeshDefinition::AttributeArray *re::MeshDefinition::AttributeArray::AttributeArray(re::MeshDefinition::AttributeArray *this, unint64_t a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08E88;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  return this;
}

re::MeshDefinition *re::MeshDefinition::MeshDefinition(re::MeshDefinition *this, const re::MeshDefinition::AttributeArray *a2, int a3, int a4, unint64_t a5)
{
  v70 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08EB8;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 10) = a4;
  v13 = *(a2 + 4);
  *(this + 7) = v13;
  *(this + 8) = 0;
  if (v13)
  {
    if (v13 >= 0x666666666666667)
    {
LABEL_47:
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v13);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v47, v49);
      __break(1u);
LABEL_48:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    *(this + 8) = v14;
    if (!v14)
    {
      goto LABEL_48;
    }

    v15 = v14;
    if (v13 != 1)
    {
      bzero(v14, 40 * v13 - 40);
      v15 += 40 * v13 - 40;
    }

    *(v15 + 4) = 0;
    *v15 = 0u;
    *(v15 + 1) = 0u;
    v16 = *(this + 7);
  }

  else
  {
    v16 = 0;
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v17 = &v65;
  *(this + 11) = 0;
  *(this + 24) = a3;
  *(this + 25) = a5;
  *(this + 112) = 0;
  *(this + 160) = 0;
  *(this + 162) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0;
  *(this + 22) = &str_67;
  v57 = 0;
  v56 = 0;
  if (v16 >= 1)
  {
    v18 = 0;
    v13 = *(a2 + 4);
    while (v13 != v18)
    {
      v19 = *(*(*(a2 + 5) + 8 * v18) + 12);
      ++*(&v56 + v19);
      if ((v16 & 0x7FFFFFFF) == ++v18)
      {
        goto LABEL_12;
      }
    }

    *v58 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    LODWORD(v55[0]) = 136315906;
    *(v55 + 4) = "operator[]";
    WORD6(v55[0]) = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *(v55 + 14) = 476;
    WORD1(v55[1]) = 2048;
    *(&v55[1] + 4) = v13;
    WORD6(v55[1]) = 2048;
    *(&v55[1] + 14) = v13;
    _os_log_send_and_compose_impl(v36, v58, &v65, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v53 = 0;
    v17[3] = 0u;
    v17[4] = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    *v17 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    v59 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v60 = 468;
    v61 = 2048;
    v62 = v13;
    v63 = 2048;
    v64 = v16;
    _os_log_send_and_compose_impl(v39, &v53, &v65, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

LABEL_12:
  v20 = 0;
  v21 = 0;
  memset(v55, 0, sizeof(v55));
  v22 = v55 + 1;
  do
  {
    v23 = *(&v56 + v20);
    v13 = v21;
    if (v23)
    {
      if (v16 <= v21)
      {
        goto LABEL_34;
      }

      *(v22 - 1) = *(this + 8) + 40 * v21;
      *v22 = v23;
      v24 = v23 << 32;
    }

    else
    {
      v24 = 0;
    }

    *(this + v20 + 9) = v24 | v13;
    v21 = v23 + v13;
    ++v20;
    v22 += 2;
  }

  while (v20 != 3);
  v54 = 0;
  v53 = 0;
  if (v16 >= 1)
  {
    v25 = 0;
    a5 = 0;
    v26 = v16 & 0x7FFFFFFF;
    while (1)
    {
      v5 = *(a2 + 4);
      if (v5 <= a5)
      {
        break;
      }

      v27 = *(*(a2 + 5) + 8 * a5);
      v28 = *(v27 + 12);
      v29 = *(&v53 + v28);
      *(&v53 + v28) = v29 + 1;
      v30 = &v55[v28];
      v31 = v30[1];
      if (v31 <= v29)
      {
        goto LABEL_42;
      }

      v13 = *v30 + 40 * v29;
      *(v13 + 8) = v27;
      v5 = *(a2 + 7);
      if (v5 <= a5)
      {
        goto LABEL_43;
      }

      v32 = *(a2 + 8);
      if (*(v32 + v25) == 1)
      {
        LOBYTE(v65) = 1;
        re::StringID::StringID((&v65 + 8), (v32 + v25 + 8));
        v33 = re::Optional<re::StringID>::operator=(v13 + 16, &v65);
        if (v65 == 1 && (BYTE8(v65) & 1) != 0)
        {
          if (BYTE8(v65))
          {
          }
        }
      }

      ++a5;
      v25 += 24;
      if (v26 == a5)
      {
        return this;
      }
    }

LABEL_38:
    v52 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    v59 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v60 = 476;
    v61 = 2048;
    v62 = a5;
    v63 = 2048;
    v64 = v5;
    _os_log_send_and_compose_impl(v42, &v52, &v65, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v31);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v48);
    __break(1u);
LABEL_43:
    v52 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    v59 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v60 = 476;
    v61 = 2048;
    v62 = a5;
    v63 = 2048;
    v64 = v5;
    _os_log_send_and_compose_impl(v45, &v52, &v65, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  return this;
}

void re::MeshDefinition::~MeshDefinition(re::MeshDefinition *this)
{
  *this = &unk_1F5D08EB8;
  re::StringID::destroyString((this + 168));
  if (*(this + 6))
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = (*(this + 8) + 24);
      v4 = 40 * v2;
      do
      {
        if (*(v3 - 8) == 1)
        {
          re::StringID::destroyString(v3);
        }

        v3 = (v3 + 40);
        v4 -= 40;
      }

      while (v4);
      (*(**(this + 6) + 40))(*(this + 6), *(this + 8));
      *(this + 7) = 0;
      *(this + 8) = 0;
    }

    *(this + 6) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MeshDefinition::~MeshDefinition(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshDefinition::setIndexData(uint64_t a1, unsigned int a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v6 = *a3;
    if (*a3)
    {
      v6 = [v6 length];
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 40);
    v9 = 1;
    if (a2)
    {
      v9 = 2;
    }

    v10 = v8 << v9;
    if (v7 >= v8 << v9)
    {
      *(a1 + 24) = a2;
      v13 = (a1 + 32);
      if ((a1 + 32) != a3)
      {
        v14 = *a3;
        *a3 = 0;
        v15 = *v13;
        *v13 = v14;
      }
    }

    else
    {
      v11 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = v10;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Invalid MeshDefinition::setIndexData(), submitted index data buffer is too small.  Expected minimum bufferSize of %zu, but got buffer with size %zu", &v16, 0x16u);
      }

      *(a1 + 24) = 0;
      v12 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

void re::MeshDefinition::setAttribute(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 7);
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 9);
    v10 = 40 * v4;
    while (1)
    {
      v11 = *(v6 + 8);
      if (*(v6 + 16) == 1)
      {
        v12 = *(v6 + 32);
        LOWORD(v13) = *(v11 + 8);
      }

      else
      {
        v12 = *v11;
        v13 = *(v11 + 8);
      }

      a1 = strcmp(v12, v7);
      v14 = !a1 && v8 == v13;
      if (v14 && v9 == BYTE1(v13))
      {
        break;
      }

      v6 += 40;
      v10 -= 40;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    if (v6 != a3)
    {
      v18 = *a3;
      *a3 = 0;
      v19 = *v6;
      *v6 = v18;
    }
  }

  else
  {
LABEL_14:
    v16 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a2;
      v20 = 136315138;
      v21 = v17;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring MeshDefinition::setAttribute(), since the mesh does not contain attribute '%s'", &v20, 0xCu);
    }
  }
}

uint64_t re::MeshDefinition::tryGetAttribute(re::MeshDefinition *this, const char *__s2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 8);
  v5 = 40 * v2;
  while (1)
  {
    v6 = *(v4 + 16) == 1 ? *(v4 + 32) : **(v4 + 8);
    if (!strcmp(v6, __s2))
    {
      break;
    }

    v4 += 40;
    v5 -= 40;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t re::MeshDefinition::attributeElementCount(re::MeshDefinition *this, const VertexAttributeDescriptor *a2)
{
  if (a2 == 1)
  {
    return *(this + 24);
  }

  if (a2 - 2 >= 3)
  {
    return 1;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported vertex step function %d", "false", "attributeElementCount", 313, a2);
  result = _os_crash("assertion failure: (false) Unsupported vertex step function %d", v3);
  __break(1u);
  return result;
}

unsigned int *re::MeshDefinition::computeBoundingBox@<X0>(unsigned int *this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = this;
  if (*(this + 112) == 1)
  {
    v6 = *(this + 9);
    *a2 = *(this + 8);
    a2[1] = v6;
    return this;
  }

  Attribute = re::MeshDefinition::tryGetAttribute(this, "vertexPosition");
  if (!Attribute)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Mesh definition should have either a position attribute or an explicit bounding box", "positionAttribute", "computeBoundingBox", 329);
    _os_crash("assertion failure: (positionAttribute) Mesh definition should have either a position attribute or an explicit bounding box");
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Position attribute data is too small (got %zu bytes, expected %zu bytes)", "expectedSizeInBytes <= actualSizeInBytes", "computeBoundingBox", 343, v2, v14);
    _os_crash("assertion failure: (expectedSizeInBytes <= actualSizeInBytes) Position attribute data is too small (got %zu bytes, expected %zu bytes)", v27, v30);
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Position attribute data is too small (got %zu bytes, expected %zu bytes)", "expectedSizeInBytes <= actualSizeInBytes", "computeBoundingBox", 358, v2, v19);
    _os_crash("assertion failure: (expectedSizeInBytes <= actualSizeInBytes) Position attribute data is too small (got %zu bytes, expected %zu bytes)", v28, v31);
    __break(1u);
    goto LABEL_24;
  }

  v9 = Attribute;
  v10 = *(Attribute + 8);
  if (*(Attribute + 16) == 1)
  {
    v3 = *(v10 + 8);
  }

  else
  {
    v3 = *(v10 + 8);
  }

  v2 = [*Attribute length];
  v11 = re::MeshDefinition::attributeElementCount(v4, (v3 >> 8));
  v13 = v11;
  if (v3 == 26)
  {
    v19 = 8 * v11;
    if (8 * v11 <= v2)
    {
      this = [*v9 bytes];
      if (v13)
      {
        v15.i64[0] = 0x7F0000007FLL;
        v15.i64[1] = 0x7F0000007FLL;
        v16 = vnegq_f32(v15);
        do
        {
          v20.i32[0] = *this;
          v20.i64[0] = vcvtq_f32_f16(*v20.f32).u64[0];
          _H3 = *(this + 2);
          __asm { FCVT            S3, H3 }

          v16.i32[3] = 0;
          v20.i64[1] = _S3;
          v16 = vminnmq_f32(v16, v20);
          v15.i32[3] = 0;
          v15 = vmaxnmq_f32(v15, v20);
          this += 2;
          --v13;
        }

        while (v13);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (v3 == 30)
  {
    v14 = 12 * v11;
    if (12 * v11 <= v2)
    {
      this = [*v9 bytes];
      if (v13)
      {
        v15.i64[0] = 0x7F0000007FLL;
        v15.i64[1] = 0x7F0000007FLL;
        v16 = vnegq_f32(v15);
        v17 = this + 2;
        do
        {
          v18.i64[0] = *(v17 - 1);
          v16.i32[3] = 0;
          v18.i64[1] = *v17;
          v16 = vminnmq_f32(v16, v18);
          v15.i32[3] = 0;
          v15 = vmaxnmq_f32(v15, v18);
          v17 += 3;
          --v13;
        }

        while (v13);
        goto LABEL_20;
      }

LABEL_19:
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16 = vnegq_f32(v15);
LABEL_20:
      *a2 = v16;
      a2[1] = v15;
      return this;
    }

    goto LABEL_22;
  }

LABEL_24:
  re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) Unexpected position vertex format %d", "false", "computeBoundingBox", 371, v3);
  this = _os_crash("assertion failure: (false) Unexpected position vertex format %d", v29);
  __break(1u);
  return this;
}

uint64_t re::MeshDefinition::skinningData(re::MeshDefinition *this, uint64_t a2, uint64_t a3)
{
  v6 = (this + 168);
  if (*(this + 21) <= 1uLL)
  {
    v7 = *(this + 22);
    if (v7)
    {
      if (!*v7)
      {
        return 0;
      }
    }
  }

  result = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationJointInfluences");
  if (result)
  {
    v9 = result;
    v10 = [*result bytes];
    v11 = [*v9 length];
    *(a3 + 8) = v10;
    *(a3 + 16) = v11 >> 3;
    result = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationInfluenceEndIndices");
    if (result)
    {
      v12 = result;
      v13 = [*result bytes];
      v14 = [*v12 length];
      *(a3 + 24) = v13;
      *(a3 + 32) = v14 >> 2;
      Attribute = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationRemappedJointIndices");
      if (Attribute)
      {
        v16 = Attribute;
        v17 = [*Attribute bytes];
        v18 = [*v16 length];
        *(a3 + 40) = v17;
        *(a3 + 48) = v18 >> 2;
      }

      v19 = 0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2, v6, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), v20);
      if (v21 == 0x7FFFFFFF)
      {
        return 0;
      }

      *a3 = *(*(a2 + 16) + 32 * v21 + 24);
      return 1;
    }
  }

  return result;
}

BOOL re::MeshDefinition::blendShapeData(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, __int16 a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = re::MeshDefinition::attributes(a1, 2u);
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = 0;
  v63 = 0;
  v60[1] = 0;
  v61 = 0;
  v59 = a4;
  v14 = a4;
  v60[0] = 0;
  v62 = 0;
  LODWORD(v64) = 0;
  do
  {
    v15 = v11 + 40 * v13;
    v16 = [*v15 length];
    if (v14 != v16 / 0xC)
    {
      goto LABEL_23;
    }

    if (*(v15 + 16) == 1)
    {
      if (!*(v15 + 32))
      {
        goto LABEL_23;
      }

      v17 = *(v15 + 32);
    }

    else
    {
      if (!**(v15 + 8))
      {
        goto LABEL_23;
      }

      v17 = **(v15 + 8);
    }

    __s1[0] = 0;
    __s1[1] = &str_67;
    *v65 = 0;
    *&v65[8] = &str_67;
    v19 = v65[0];
    if ((*v65 ^ __s1[0]) > 1uLL)
    {
      v20 = 0;
      if (v65[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = __s1[1];
      if (__s1[1] == *&v65[8])
      {
        v20 = 1;
        if (v65[0])
        {
LABEL_16:
          if (v65[0])
          {
          }
        }
      }

      else
      {
        v16 = strcmp(__s1[1], *&v65[8]);
        v20 = v16 == 0;
        if (v19)
        {
          goto LABEL_16;
        }
      }
    }

    if (__s1[0])
    {
      if (__s1[0])
      {
      }
    }

    if (!v20)
    {
      v16 = re::DynamicArray<int>::add(v60, &v64);
    }

LABEL_23:
    v13 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  while (v12 > v13);
  v58 = v61 != 0;
  if (v61)
  {
    __s1[0] = 0;
    __s1[1] = &str_67;
    *&v72 = 0;
    v71 = 0uLL;
    BYTE8(v72) = 2;
    HIDWORD(v72) = v59;
    re::StringID::operator=(a2, __s1);
    re::FixedArray<float>::operator=((a2 + 16), &v71);
    *(a2 + 40) = *(&v72 + 1);
    v22 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v71);
    if (__s1[0])
    {
      if (__s1[0])
      {
      }
    }

    *(a2 + 48) = a5;
    if (v61)
    {
      v24 = 0;
      while (1)
      {
        v25 = *(a2 + 24);
        if (v25 <= v24)
        {
          goto LABEL_62;
        }

        v26 = *(v63 + 4 * v24);
        if (v12 <= v26)
        {
          goto LABEL_66;
        }

        v27 = v11 + 40 * v26;
        if (*(v27 + 16) == 1)
        {
          v28 = *(v27 + 32);
        }

        else
        {
          v28 = **(v27 + 8);
        }

        v25 = (*(a2 + 32) + 136 * v24);
        __s1[0] = 0;
        __s1[1] = &str_67;
        v29 = re::StringID::operator=(v25, __s1);
        if (__s1[0])
        {
          if (__s1[0])
          {
          }
        }

        *(v25 + 3) = 0;
        *(v25 + 9) = 0;
        *(v25 + 12) = 0;
        *(v25 + 15) = 0;
        v22 = [*v27 bytes];
        if (v59)
        {
          break;
        }

LABEL_44:
        if (v61 <= ++v24)
        {
          goto LABEL_45;
        }
      }

      v34 = *(v25 + 6);
      v35 = 8;
      v36 = 1;
      v37 = v14;
      while (1)
      {
        v38 = v36 - 1;
        if (v34 <= v36 - 1)
        {
          break;
        }

        v40 = *(v22 + 1);
        v39 = *(v22 + 2);
        v41 = *(v25 + 7);
        *(v41 + v35 - 8) = *v22;
        if (v34 <= v36)
        {
          goto LABEL_54;
        }

        *(v41 + 4 * v36) = v40;
        v38 = v36 + 1;
        if (v34 <= v36 + 1)
        {
          goto LABEL_58;
        }

        *(v41 + v35) = v39;
        v36 += 3;
        v22 = (v22 + 12);
        v35 += 12;
        if (!--v37)
        {
          goto LABEL_44;
        }
      }

      v64 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *__s1 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v65 = 136315906;
      *&v65[4] = "operator[]";
      *&v65[12] = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      *&v65[14] = 468;
      v66 = 2048;
      v67 = v38;
      v68 = 2048;
      v69 = v34;
      _os_log_send_and_compose_impl(v44, &v64, __s1, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v64 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *__s1 = 0u;
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v65 = 136315906;
      *&v65[4] = "operator[]";
      *&v65[12] = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      *&v65[14] = 468;
      v66 = 2048;
      v67 = v36;
      v68 = 2048;
      v69 = v34;
      _os_log_send_and_compose_impl(v47, &v64, __s1, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v64 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *__s1 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v65 = 136315906;
      *&v65[4] = "operator[]";
      *&v65[12] = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      *&v65[14] = 468;
      v66 = 2048;
      v67 = v38;
      v68 = 2048;
      v69 = v34;
      _os_log_send_and_compose_impl(v50, &v64, __s1, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_62:
      v64 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *__s1 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v65 = 136315906;
      *&v65[4] = "operator[]";
      *&v65[12] = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      *&v65[14] = 468;
      v66 = 2048;
      v67 = v24;
      v68 = 2048;
      v69 = v25;
      _os_log_send_and_compose_impl(v53, &v64, __s1, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_66:
      re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v26, v12);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v55);
      __break(1u);
    }
  }

LABEL_45:
  if (v60[0])
  {
    if (v63)
    {
      (*(*v60[0] + 40))();
    }
  }

  return v58;
}