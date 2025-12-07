void sub_18612F358(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, uint64_t *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a6);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(va1);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::ReplaceNode@<X0>(uint64_t a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  v6 = a2[1];
  v7 = a1 + *(*a1 - 872);
  v16 = *a2;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*v7 + 656))(v7, &v16))
  {
    (*(**a2 + 88))(&v12);
    (*(**a2 + 72))(&v10);
    (*(*a1 + 736))(&v14, a1, &v12, &v10);
    v8 = v14 != 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  if (!v8)
  {
    v16 = 0;
    v17 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  *a3 = 0;
  a3[1] = 0;
  (*(**a2 + 88))(&v16);
  (*(**a2 + 72))(&v14);
  (*(*a1 + 744))(a1, &v16, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  return (*(*a1 + 656))(a1, a2);
}

void sub_18612F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::StructureNodeImpl::Iterator(AdobeXMPCore_Int::StructureNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v4 = *(this + 1);
  v5 = this + 16;
  v6 = v4;
  if (v4 != (this + 16))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_18612FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::TNodeIteratorImpl(void *result, void *a2, void *a3)
{
  result[4] = &unk_1EF4EC750;
  *result = &unk_1EF4EC478;
  result[3] = off_1EF4EC518;
  *(result + unk_1EF4EC3E8) = &unk_1EF4EC578;
  result[5] = 0;
  result[6] = 0;
  *result = &unk_1EF4EC200;
  result[3] = &unk_1EF4EC2A0;
  result[4] = &unk_1EF4EC308;
  result[1] = *a2;
  result[2] = *a3;
  return result;
}

uint64_t AdobeXMPCore_Int::StructureNodeImpl::ChildCount(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::StructureNodeImpl::HasContent(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::StructureNodeImpl::ValidateNameOrNameSpaceChangeForAChild(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v23 = 0uLL;
  ((*a1)[92])(&v23);
  v10 = v23;
  if (!v23)
  {
    ((*a1)[93])(&v19, a1, a2, a3);
    v11 = v19;
    v19 = 0uLL;
    v12 = *(&v23 + 1);
    v23 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v19 + 1));
      }
    }

    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v22, a1 + *(*a1 - 112) + 8, 1);
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v22);
    v13 = a4[1];
    *&v19 = *a4;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a5[1];
    v20 = *a5;
    v21 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = &v19;
    v15 = std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName&&>,std::tuple<>>(a1 + 1, &v19, &std::piecewise_construct, &v24);
    v16 = v23;
    if (*(&v23 + 1))
    {
      atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(v15 + 72);
    *(v15 + 64) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v19 + 1));
    }
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
  }

  return v10 == 0;
}

void sub_18612FF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a9);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::ClearContents(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v9, 0, sizeof(v9));
  v2 = this + 8;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, this + *(*this - 896) + 8, 1);
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(*(**(v3 + 8) + 280))(*(v3 + 8));
      (*(v5 + 504))();
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(v2, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_186130108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::CloneContents(AdobeXMPCore_Int::StructureNodeImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memset(v13, 0, sizeof(v13));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v13, this + *(*this - 896) + 8, 0);
  if (!a2 || *(this + 3) || !a3 && a4)
  {
    v10 = *this;
    v11 = *(this + *(*this - 880) + 16);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      v10 = *this;
    }

    v12 = *(this + *(v10 - 880) + 32);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::IStructureNode_I::CreateStructureNode();
  }

  *a5 = 0;
  a5[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v13);
}

void sub_186130414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::StructureNodeImpl::resetChangesForChildren(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != v3)
  {
    do
    {
      (*(**(v2 + 8) + 216))(*(v2 + 8));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 48), off_1EF4E6310);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 176), off_1EF4E6378);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 152), off_1EF4E6360);
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(void *a1)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(AdobeXMPCore_Int::StructureNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 864)) = a2[1];
  *(this + *(*this - 792)) = a2[2];
  *(this + *(*this - 688)) = a2[3];
  *(this + *(*this - 544)) = a2[4];
  *(this + *(*this - 56)) = a2[5];
  *(this + *(*this - 64)) = a2[6];
  *(this + *(*this - 72)) = a2[7];
  *(this + *(*this - 800)) = a2[8];
  *(this + *(*this - 808)) = a2[9];
  *(this + *(*this - 816)) = a2[10];
  *(this + *(*this - 824)) = a2[11];
  *(this + *(*this - 872)) = a2[12];
  *(this + *(*this - 880)) = a2[13];
  *(this + *(*this - 888)) = a2[14];
  *(this + *(*this - 896)) = a2[15];
  std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(this + 8, *(this + 2));
}

void std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(a1, a2 + 4);

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = a2[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = a2[1];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }
}

uint64_t std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::find<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, (v3 + 32), a2);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *>>>::destroy[abi:fe200100]<std::pair<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const,std::shared_ptr<AdobeXMPCore::INode_v1>>,void,0>(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

void *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const&>,std::tuple<>>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, a3, (v4 + 4));
        if (!a1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      a1 = AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName::operator()(a1, v7 + 4, a3);
      if (!a1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::~TNodeIteratorImpl(uint64_t a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::GetNodeType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != *(a1 + 16))
  {
    v2 = *(v1 + 64);
    (**&v2[*(*v2 - 56)])(&v2[*(*v2 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v4, v2, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  return 0;
}

void sub_1861314D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::GetNode@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (v3 != result[2])
  {
    v4 = *(v3 + 64);
    (**&v4[*(*v4 - 56)])(&v4[*(*v4 - 56)]);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::Next@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = v4[1];
  if (v5)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    do
    {
      v6 = v4[2];
      v7 = *v6 == v4;
      v4 = v6;
    }

    while (!v7);
  }

  result[1] = v6;
  if (v6 != result[2])
  {
    (**(result + *(*result - 176)))(result + *(*result - 176));
    std::shared_ptr<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(&v8, v2, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void virtual thunk toAdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>::~TNodeIteratorImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4EC3C0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EC3C0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EC3C0);

  JUMPOUT(0x186602850);
}

void sub_186131834(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__map_iterator<std::__tree_iterator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__tree_node<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,void *> *,long>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186131A20(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::StructureNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::StructureNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__emplace_unique_key_args<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::piecewise_construct_t const&,std::tuple<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName&&>,std::tuple<>>(uint64_t **a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *std::__tree<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,std::__map_value_compare<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>,AdobeXMPCore_Int::StructureNodeImpl::CompareQualifiedName,true>,std::allocator<std::__value_type<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName,std::shared_ptr<AdobeXMPCore::INode_v1>>>>::__find_equal<AdobeXMPCore_Int::StructureNodeImpl::QualifiedName>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

BOOL TIFF_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1414088262)
  {
    TIFF_CheckFormat();
  }

  (*(*a3 + 16))(a3, 0, 0);
  v4 = (*(*a3 + 24))(a3);
  v5 = (*(*a3 + 16))(a3, 0, 1);
  result = 0;
  if (v4 - v5 >= 26)
  {
    v8 = 0;
    (**a3)(a3, &v8, 4, 0);
    return v8 == 2771273 || v8 == 704662861;
  }

  return result;
}

void TIFF_MetaHandler::TIFF_MetaHandler(TIFF_MetaHandler *this, XMPFiles *a2)
{
  XMPFileHandler::XMPFileHandler(this);
  *v4 = &unk_1EF4EC990;
  TIFF_FileWriter::TIFF_FileWriter((v4 + 12));
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 1) = a2;
  *(this + 4) = 8831;
  *(this + 20) = 0;
}

void TIFF_MetaHandler::~TIFF_MetaHandler(TIFF_MetaHandler *this)
{
  *this = &unk_1EF4EC990;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  TIFF_FileWriter::~TIFF_FileWriter((this + 96));

  XMPFileHandler::~XMPFileHandler(this);
}

{
  TIFF_MetaHandler::~TIFF_MetaHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t TIFF_MetaHandler::CacheFileData(TIFF_MetaHandler *this)
{
  if (*(this + 21) == 1)
  {
    TIFF_MetaHandler::CacheFileData();
  }

  v2 = *(this + 1);
  v3 = v2[29];
  v4 = v2[34];
  if (v4 && v4(v2[35]))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 12;
    v8 = "TIFF_MetaHandler::CacheFileData - User abort";
    goto LABEL_14;
  }

  TIFF_FileWriter::ParseFileStream(this + 96, v3);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (TIFF_FileWriter::GetTag((this + 96), 0, 0xC612u, &v12))
  {
    v5 = *v13;
    if (TIFF_FileWriter::GetTag((this + 96), 0, 0xC613u, &v12))
    {
      v5 = *v13;
    }

    if (v5 >= 2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v8 = "DNG version beyond 1.x";
LABEL_14:
      exception[1] = v8;
      *(exception + 16) = 0;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = TIFF_FileWriter::GetTag((this + 96), 0, 0x2BCu, &v9);
  if (result)
  {
    *(this + 4) = TIFF_FileWriter::GetValueOffset((this + 96), 0, 0x2BCu);
    *(this + 5) = v11;
    *(this + 24) = 257;
    result = MEMORY[0x186602530](this + 56, v10);
    *(this + 21) = 1;
  }

  return result;
}

void TIFF_MetaHandler::ProcessXMP(TIFF_MetaHandler *this)
{
  *(this + 22) = 1;
  if ((*(*(this + 1) + 240) & 2) == 0)
  {
    operator new();
  }

  operator new();
}

void sub_18613251C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861324A8);
}

void TIFF_MetaHandler::UpdateFile(TIFF_MetaHandler *this, int a2, __n128 a3)
{
  if (a2)
  {
    TIFF_MetaHandler::UpdateFile();
  }

  v4 = *(*(this + 1) + 232);
  v5 = *(this + 10);
  if (*(this + 4) == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 4);
  }

  if (v5 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  ExportPhotoData(1414088262, this + 80, this + 96, *(this + 52), *(this + 51), a3);
  if (v6 != 0 && v7 != 0)
  {
    v8 = 576;
  }

  else
  {
    v8 = 64;
  }

  v9 = this + 56;
  TXMPMeta<std::string>::SerializeToBuffer(this + 80, this + 56, v8, v7);
  if (v6 != 0 && v7 != 0)
  {
    v10 = *(this + 79);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = *(this + 8);
    }

    v11 = v10 <= v7;
  }

  else
  {
    v11 = 0;
  }

  IsLegacyChanged = TIFF_FileWriter::IsLegacyChanged((this + 96));
  v14 = *(this + 1);
  v15 = *(v14 + 288);
  if (!IsLegacyChanged && v11)
  {
    LODWORD(v16) = *(this + 79);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = *(this + 8);
      v17 = *(this + 10);
      if (v18 >= v17)
      {
        v20 = *(v14 + 232);
LABEL_37:
        v26 = *(this + 8);
        v25 = 1;
LABEL_38:
        if (v26 != v7)
        {
          TIFF_MetaHandler::UpdateFile();
        }

        if (v15)
        {
          if (*(v15 + 32) != 1)
          {
            if (v25)
            {
              v16 = *(this + 8);
            }

            else
            {
              v16 = v16;
            }

            XMP_ProgressTracker::BeginWork(v15, v16);
            v27 = 1;
            goto LABEL_50;
          }

          if (v25)
          {
            v16 = *(this + 8);
          }

          else
          {
            v16 = v16;
          }

          v13.n128_f32[0] = XMP_ProgressTracker::AddTotalWork(v15, v16);
        }

        v27 = 0;
LABEL_50:
        (*(*v20 + 16))(v20, v6, 0, v13);
        v28 = *(this + 79);
        if (v28 < 0)
        {
          v9 = *(this + 7);
          v28 = *(this + 8);
        }

        (*(*v20 + 8))(v20, v9, v28);
        if ((v27 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        XMP_ProgressTracker::WorkComplete(v15, v22, v23, v24);
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *(this + 10);
      if (v17 <= v16)
      {
        v20 = *(v14 + 232);
        goto LABEL_35;
      }

      v18 = *(this + 79);
    }

    std::string::append((this + 56), v17 - v18, 32);
    LODWORD(v16) = *(this + 79);
    v20 = *(*(this + 1) + 232);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    v25 = 0;
    v26 = v16;
    goto LABEL_38;
  }

  if (v15 && (*(v15 + 32) & 1) == 0)
  {
    XMP_ProgressTracker::BeginWork(*(v14 + 288), 0.0);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(this + 79);
  if ((v21 & 0x80000000) != 0)
  {
    v21 = *(this + 16);
    v9 = *(this + 7);
  }

  TIFF_FileWriter::SetTag((this + 96), 0, 0x2BCu, 7, v21, v9);
  TIFF_FileWriter::UpdateFileStream(this + 96, v4, v15);
  if (v19)
  {
    goto LABEL_32;
  }

LABEL_33:
  *(this + 23) = 0;
}

void TIFF_MetaHandler::WriteTempFile(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = v4[29];
  v6 = v4[34];
  v7 = v4[35];
  v8 = (*(*v5 + 24))(v5);
  if (v8 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    exception[1] = "TIFF fles can't exceed 4GB";
    *(exception + 16) = 0;
  }

  v9 = v8;
  v10 = a1[1];
  v11 = *(v10 + 288);
  if (v11)
  {
    XMP_ProgressTracker::BeginWork(*(v10 + 288), v8);
  }

  (*(*v5 + 16))(v5, 0, 0);
  (*(*a2 + 32))(a2, 0);
  XIO::Copy(v5, a2, v9, v6, v7, v12, v13);
  v14 = *a1;
  *(a1[1] + 232) = a2;
  (*(v14 + 72))(a1, 0);
  *(a1[1] + 232) = v5;
  if (v11)
  {

    XMP_ProgressTracker::WorkComplete(v11, v15, v16, v17);
  }
}

void sub_186132994(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(v2 + 8) + 232) = v1;
  __cxa_rethrow();
}

void IPTC_Reader::SetDataSet_UTF8(IPTC_Reader *this, unsigned __int8 a2, const void *a3)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::DeleteDataSet(IPTC_Reader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::UpdateMemoryDataSets(IPTC_Reader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for IPTC_Reader";
  *(exception + 16) = 0;
}

void IPTC_Reader::~IPTC_Reader(void **this)
{
  IPTC_Manager::~IPTC_Manager(this);

  JUMPOUT(0x186602850);
}

void IPTC_Manager::~IPTC_Manager(void **this)
{
  *this = &unk_1EF4ECA88;
  if (*(this + 45) == 1)
  {
    free(this[4]);
  }

  std::__tree<unsigned long long>::destroy((this + 1), this[2]);
}

void TIFF_MetaHandler::UpdateFile()
{
  __assert_rtn("UpdateFile", "TIFF_Handler.cpp", 362, "this->xmpPacket.size() == (size_t)oldPacketLength");
}

{
  __assert_rtn("UpdateFile", "TIFF_Handler.cpp", 294, "! doSafeUpdate");
}

void AdobeXMPCore_Int::PathImpl::RegisterNameSpacePrefixMap(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 40);
  *a3 = *(a1 + 32);
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  (*(**a2 + 112))(&v7);
  v5 = v7;
  v7 = 0uLL;
  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v7 + 1));
    }
  }
}

void sub_186132C80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::PathImpl::Serialize(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_186133864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  v42 = *(v40 - 120);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v42);
  }

  v43 = *(v40 - 96);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v43);
  }

  v44 = *(v39 + 8);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void **AdobeXMPCore_Int::PathImpl::AppendPathSegment(uint64_t a1, __int128 *a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v2 = (a1 + 8);

  return std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::push_back[abi:fe200100](v2, a2);
}

void sub_186133C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::PathImpl::RemovePathSegment(AdobeXMPCore_Int::PathImpl *this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v12[2] = a2;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (a2 - 1 >= ((v4 - v5) >> 4))
  {
    v12[0] = 0;
    v12[1] = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v6 = *(v5 + 16 * (a2 - 1));
  *a3 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v7 = 16 * a2 - 16;
  if (v4 == (v7 + v5))
  {
    __break(1u);
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(v12, (v5 + 16 * a2), v4, v5 + v7);
    v9 = v8;
    for (i = *(this + 2); i != v9; i -= 16)
    {
      v11 = *(i - 8);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      }
    }

    *(this + 2) = v9;
  }
}

void sub_186133F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::PathImpl::GetPathSegment@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = *(this + 8);
  if (a2 - 1 >= ((*(this + 16) - v3) >> 4))
  {
    v5 = 0;
    v6 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v4 = *(v3 + 16 * (a2 - 1));
  *a3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1861341EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::PathImpl::Clone(AdobeXMPCore_Int::PathImpl *this, uint64_t a2)
{
  v5 = a2;
  if (a2 - 1 < ((*(this + 2) - *(this + 1)) >> 4))
  {
    operator new();
  }

  v4 = 0uLL;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18613467C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AdobeXMPCore::IPath_v1::MakeShared@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, AdobeXMPCore::IPath_v1 *a3@<X1>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a3);

    std::shared_ptr<AdobeXMPCore::IPath_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::IPath_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a1, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a1 = 0;
  a1[1] = 0;
  return this;
}

void AdobeXMPCore::IPath_v1::ParsePath()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186134A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4ECDA8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::PathImpl::~PathImpl((this + *(*this - 24)));
}

void virtual thunk toAdobeXMPCore_Int::PathImpl::~PathImpl(void *a1)
{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4ECDA8);
}

{
  AdobeXMPCore_Int::PathImpl::~PathImpl((a1 + *(*a1 - 48)));
}

void AdobeXMPCore_Int::PathImpl::~PathImpl(AdobeXMPCore_Int::PathImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 232)) = a2[1];
  *(this + *(*this - 200)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 208)) = a2[5];
  *(this + *(*this - 240)) = a2[6];
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = (this + 8);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v5);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_186134F38(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 240) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 240) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186135124(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPath_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPath_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(AdobeXMPCore_Int::ConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(AdobeXMPCore_Int::ConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ConfigurationManagerImpl::~ConfigurationManagerImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 24), off_1EF4ED6C8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 24), off_1EF4ED6C8);

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ThreadSafeImpl::ShareMutex(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void AdobeXMPCore_Int::ThreadSafeImpl::UnShareMutex(AdobeXMPCore_Int::ThreadSafeImpl *this)
{
  if (*(this + 1))
  {
    AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex();
  }

  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }
}

void AdobeXMPCore_Int::ThreadSafeImpl::DisableThreadSafety(AdobeXMPCore_Int::ThreadSafeImpl *this)
{
  if (*(this + 1))
  {
    v2 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v2);
    }
  }
}

void AdobeXMPCore_Int::PathSegmentImpl::PathSegmentImpl(void *a1, AdobeXMPCore_Int::IUTF8String_I *this, char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a1[10] = &unk_1EF4EE3D8;
  *a1 = &unk_1EF4EE0E8;
  a1[9] = off_1EF4EE1A8;
  *(a1 + unk_1EF4EE040) = &unk_1EF4EE208;
  a1[11] = 0;
  a1[12] = 0;
  *a1 = &unk_1EF4EDE30;
  a1[9] = &unk_1EF4EDEF0;
  a1[10] = &unk_1EF4EDF58;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_186135750(_Unwind_Exception *a1)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v1, off_1EF4EE010);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetNameSpace@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetName@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::PathSegmentImpl::GetValue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 48);
  *a2 = *(this + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore::IPathSegment_v1::CreatePropertyPathSegment(AdobeXMPCore::IPathSegment_v1 *this, char *a2, char *a3, const char *a4)
{
  v5 = a4;
  v7 = a2;
  v11 = a4;
  v12 = a2;
  if (this && a2 == -1)
  {
    v7 = strlen(this);
    v12 = v7;
  }

  if (a3 && v5 == -1)
  {
    v5 = strlen(a3);
    v11 = v5;
  }

  if (this && a3 && v7)
  {
    if (v5)
    {
      operator new();
    }
  }

  v9 = 0;
  v10 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateArrayIndexPathSegment(AdobeXMPCore::IPathSegment_v1 *this, char *a2)
{
  v4 = a2;
  v8 = a2;
  if (this && a2 == -1)
  {
    v4 = strlen(this);
    v8 = v4;
  }

  if (this)
  {
    if (v4)
    {
      operator new();
    }
  }

  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateQualifierPathSegment(AdobeXMPCore::IPathSegment_v1 *this, char *a2, char *a3, const char *a4)
{
  v5 = a4;
  v7 = a2;
  v11 = a4;
  v12 = a2;
  if (this && a2 == -1)
  {
    v7 = strlen(this);
    v12 = v7;
  }

  if (a3 && v5 == -1)
  {
    v5 = strlen(a3);
    v11 = v5;
  }

  if (this && a3 && v7)
  {
    if (v5)
    {
      operator new();
    }
  }

  v9 = 0;
  v10 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore::IPathSegment_v1::CreateQualifierSelectorPathSegment(AdobeXMPCore::IPathSegment_v1 *this, char *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v7 = a6;
  v9 = a4;
  v11 = a2;
  v16 = a4;
  v17 = a2;
  v15 = a6;
  if (this && a2 == -1)
  {
    v11 = strlen(this);
    v17 = v11;
  }

  if (a3 && v9 == -1)
  {
    v9 = strlen(a3);
    v16 = v9;
  }

  if (a5 && v7 == -1)
  {
    v7 = strlen(a5);
    v15 = v7;
  }

  if (this && a3 && a5 && v11 && v9)
  {
    if (v7)
    {
      operator new();
    }
  }

  v13 = 0;
  v14 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void *AdobeXMPCore::IPathSegment_v1::MakeShared@<X0>(void *this@<X0>, AdobeXMPCore::IPathSegment_v1 *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
    v4 = this;
    (**(this + *(*this - 56)))(this + *(*this - 56), a2);

    std::shared_ptr<AdobeXMPCore::IPathSegment_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::IPathSegment_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 80), off_1EF4EE010);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 80), off_1EF4EE010);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this)
{
  v2 = (v1 + 80);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4EE010);
}

{
  AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl((this + *(*this - 24)));
}

void virtual thunk toAdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(void *a1)
{
  v2 = (v1 + 80);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4EE010);
}

{
  AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl((a1 + *(*a1 - 48)));
}

void AdobeXMPCore_Int::PathSegmentImpl::~PathSegmentImpl(AdobeXMPCore_Int::PathSegmentImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 200)) = a2[1];
  *(this + *(*this - 160)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 168)) = a2[5];
  *(this + *(*this - 208)) = a2[6];
  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_186137678(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::PathSegmentImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::PathSegmentImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_186137864(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore::IPathSegment_v1 *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore::IPathSegment_v1>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

AdobeXMPCore_Int::CoreConfigurationManagerImpl *AdobeXMPCore_Int::CoreConfigurationManagerImpl::CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  *(this + 2) = &unk_1EF4EF098;
  *(this + 1) = off_1EF4EF208;
  *(this + 4) = &unk_1EF4EF268;
  *this = &unk_1EF4EEB30;
  *(this + unk_1EF4EEAF0) = off_1EF4EEBD8;
  *(this + *(*this - 160)) = &unk_1EF4EEC90;
  *(this + *(*this - 168)) = &unk_1EF4EED40;
  *(this + 4) = off_1EF4EF658;
  *(this + 5) = 0;
  *this = off_1EF4EF6B8;
  *(this + 6) = 0;
  AdobeXMPCore_Int::ConfigurationManagerImpl::ConfigurationManagerImpl(this + 16, &off_1EF4EEA28);
  *this = &unk_1EF4EE6D8;
  *(this + 1) = &unk_1EF4EE780;
  *(this + 2) = &unk_1EF4EE848;
  *(this + 4) = &unk_1EF4EE900;
  return this;
}

uint64_t AdobeXMPCore_Int::ConfigurationManagerImpl::ConfigurationManagerImpl(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 160)) = a2[1];
  *(this + *(*this - 128)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 136)) = a2[5];
  *(this + *(*this - 168)) = a2[6];
  *(this + 8) = 1;
  return this;
}

uint64_t std::shared_ptr<AdobeXMPCore::ICoreConfigurationManager_v1>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void AdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(AdobeXMPCore_Int::CoreConfigurationManagerImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 24) + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::CoreConfigurationManagerImpl::~CoreConfigurationManagerImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EEA60);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4EEA60);

  JUMPOUT(0x186602850);
}

void *std::shared_ptr<AdobeXMPCore::ICoreConfigurationManager_v1>::operator=[abi:fe200100]<AdobeXMPCore_Int::CoreConfigurationManagerImpl,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 152));
  }

  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void sub_186138138(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 208) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::CoreConfigurationManagerImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::CoreConfigurationManagerImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::ClientDOMSerializerWrapperImpl(void *a1, uint64_t a2)
{
  v3 = (a1 + 2);
  *a1 = off_1EF4F0C68;
  a1[5] = &off_1EF4F0DB0;
  a1[2] = &off_1EF4F05C8;
  a1[12] = &unk_1EF4F09A8;
  *(a1 + unk_1EF4F04E0 + 16) = off_1EF4F0708;
  *(a1 + *(a1[2] - 296) + 16) = &off_1EF4F0850;
  *(a1 + *(a1[2] - 304) + 16) = &unk_1EF4F09A8;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl((a1 + 5), off_1EF4EFEA0);
  a1[13] = 0;
  a1[14] = 0;
  a1[12] = off_1EF4F14F8;
  AdobeXMPCore_Int::DOMSerializerImpl::DOMSerializerImpl(v3, off_1EF4EFDD8);
}

void sub_186138774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl(v18, off_1EF4EFDD8);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v16, off_1EF4EFEB8);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v17, off_1EF4EFEA0);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 304)) = a2[1];
  *(this + *(*this - 216)) = a2[2];
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  return this;
}

void AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl(AdobeXMPCore_Int::DOMSerializerImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 344)) = a2[1];
  *(this + *(*this - 288)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 296)) = a2[6];
  *(this + *(*this - 304)) = a2[7];
  *(this + *(*this - 352)) = a2[8];
  *(this + *(*this - 360)) = a2[9];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 48)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  *(this + *(*this - 72)) = a2[4];
  *(this + *(*this - 80)) = a2[5];
  *(this + *(*this - 88)) = a2[6];
  *(this + *(*this - 96)) = a2[7];
  *(this + *(*this - 104)) = a2[8];
  *(this + *(*this - 112)) = a2[9];
  *(this + *(*this - 120)) = a2[10];
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 32))(v4);
    *(this + 1) = 0;
  }
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this)
{
  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl((v2 + 16), off_1EF4EFDD8);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 96), off_1EF4EFEB8);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 40), off_1EF4EFEA0);
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(void *a1)
{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl(AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl *this)
{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::~ClientDOMSerializerWrapperImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::Serialize(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_1861395D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ClientDOMSerializerWrapperImpl::ValidateValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, &v8, &v7);
  if (v8)
  {
    AdobeXMPCommon::IError_v1::MakeShared(&v9, v8);
    v6 = v9;
    (*(*(v8 + *(*v8 - 56)) + 8))(v8 + *(*v8 - 56));
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = v6;
  }

  if (v7)
  {
    v9 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_186139894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void IPTC_Manager::ParseMemoryDataSets(IPTC_Manager *this, char *a2, int a3, char a4)
{
  LODWORD(v5) = a3;
  v8 = *(this + 1);
  v41 = (this + 8);
  v9 = (this + 16);
  if (v8 != (this + 16))
  {
    do
    {
      IPTC_Manager::DisposeLooseValue(this, (v8 + 5));
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v25 = *v11 == v8;
          v8 = v11;
        }

        while (!v25);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  std::__tree<unsigned long long>::destroy(v41, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v9;
  if (*(this + 45) == 1)
  {
    free(*(this + 4));
  }

  *(this + 4) = 0;
  v12 = (this + 32);
  *(this + 38) = 0;
  if (v5)
  {
    if (a2 && *a2 == 28)
    {
      if (v5 > 0xA00000)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 210;
        v40 = "Outrageous length for memory-based IPTC";
      }

      else
      {
        *(this + 10) = v5;
        if ((a4 & 1) == 0)
        {
          *v12 = a2;
          v5 = v5;
          goto LABEL_18;
        }

        v5 = v5;
        v13 = malloc_type_malloc(v5, 0x100004077774924uLL);
        *v12 = v13;
        if (v13)
        {
          memcpy(v13, a2, v5);
          *(this + 45) = 1;
          a2 = *(this + 4);
LABEL_18:
          v14 = &a2[v5];
          v15 = (v14 - 5);
          *(this + 46) = 0;
          while (1)
          {
            if (a2 > v15 || *a2 != 28)
            {
              return;
            }

            v16 = a2[1];
            v17 = a2[2];
            v18 = bswap32(*(a2 + 3));
            v19 = HIWORD(v18);
            v20 = a2 + 5;
            if ((v18 & 0x80000000) != 0)
            {
              v21 = HIWORD(v18) & 0x7FFF;
              if ((v21 - 5) < 0xFFFFFFFC || v20 > &v14[-v21])
              {
                return;
              }

              v19 = 0;
              v23 = v21;
              do
              {
                v24 = *v20++;
                v19 = v24 | (v19 << 8);
                --v23;
              }

              while (v23);
              v20 = &a2[v21 + 5];
            }

            if (v20 > &v14[-v19])
            {
              return;
            }

            if (v16 == 1 && v17 == 90 && v19 == 3)
            {
              v25 = *v20 == 9499 && v20[2] == 71;
              if (v25)
              {
                *(this + 46) = 1;
              }

              v26 = 1090;
            }

            else
            {
              v26 = v17 + 1000 * v16;
              if (!v19)
              {
                v27 = 0;
                goto LABEL_42;
              }
            }

            v27 = v20;
LABEL_42:
            v28 = *v9;
            if (!*v9)
            {
              goto LABEL_50;
            }

            v29 = v9;
            v30 = *v9;
            do
            {
              v31 = *(v30 + 32);
              v32 = v31 >= v26;
              v33 = v31 < v26;
              if (v32)
              {
                v29 = v30;
              }

              v30 = *(v30 + 8 * v33);
            }

            while (v30);
            if (v29 == v9 || *(v29 + 16) > v26)
            {
LABEL_50:
              v29 = v9;
            }

            v34 = kKnownDataSets;
            do
            {
              v35 = *v34;
              v34 += 32;
              v36 = v35 == v17;
            }

            while (v35 < v17);
            if (!v36 || (*(v34 - 31) != 2 ? (v37 = v17 == 12) : (v37 = 1), v37 || v17 == 80 || v29 == v9))
            {
              v42 = v26;
              v43 = v16;
              v44 = v17;
              v45 = 0;
              v46 = v19;
              v38 = v9;
              v47 = v27;
              if (v28)
              {
                v38 = v9;
                do
                {
                  if (v26 < *(v28 + 32))
                  {
                    v38 = v28;
                  }

                  v28 = *(v28 + 8 * (v26 >= *(v28 + 32)));
                }

                while (v28);
              }

              std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__emplace_hint_multi<std::pair<unsigned short const,IPTC_Manager::DataSetInfo> &>(v41, v38, &v42);
            }

            IPTC_Manager::DisposeLooseValue(this, (v29 + 5));
            *(v29 + 40) = v16;
            *(v29 + 41) = v17;
            *(v29 + 21) = 0;
            *(v29 + 11) = v19;
            v29[6] = v27;
            a2 = &v20[v19];
            v15 = (v14 - 5);
          }
        }

        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 15;
        v40 = "Out of memory";
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 210;
      v40 = "Not valid IPTC, no leading 0x1C";
    }

    exception[1] = v40;
    *(exception + 16) = 0;
  }
}

void IPTC_Manager::DisposeLooseValue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(a1 + 32);
      if (v4 < v5 || v4 >= v5 + *(a1 + 40))
      {
        free(v4);
        *(a2 + 8) = 0;
      }
    }
  }
}

__n128 IPTC_Manager::GetDataSet(uint64_t a1, int a2, __n128 *a3, unint64_t a4)
{
  v4 = a2 + 2000;
  v19 = a2 + 2000;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = a1 + 8;
    v10 = v5;
    do
    {
      v11 = *(v6 + 32);
      v12 = v11 >= v4;
      v13 = v11 < v4;
      if (v12)
      {
        v10 = v6;
      }

      v6 = *(v6 + 8 * v13);
    }

    while (v6);
    if (v10 != v5 && *(v10 + 40) == 2 && *(v10 + 41) == a2 && std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(v9, &v19) > a4 && a3)
    {
      if (a4)
      {
        v15 = 0;
        do
        {
          v16 = v10[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v10[2];
              v18 = *v17 == v10;
              v10 = v17;
            }

            while (!v18);
          }

          ++v15;
          v10 = v17;
        }

        while (v15 != a4);
      }

      else
      {
        v17 = v10;
      }

      result = *(v17 + 5);
      *a3 = result;
    }
  }

  return result;
}

void IPTC_Manager::GetDataSet_UTF8(uint64_t a1, int a2, std::string *this, unint64_t a4)
{
  if (this)
  {
    std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = 0uLL;
  IPTC_Manager::GetDataSet(a1, a2, &v12, a4);
  if (v8)
  {
    v9 = v12.n128_u32[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || v12.n128_u64[1] == 0;
  if (this && (v11 & 1) == 0)
  {
    if (*(a1 + 46) == 1)
    {
LABEL_15:
      MEMORY[0x186602530](this);
      return;
    }

    if (ignoreLocalText)
    {
      if (ReconcileUtils::IsASCII(v12.n128_u64[1], v12.n128_u32[1]))
      {
        goto LABEL_15;
      }
    }

    else
    {
      ReconcileUtils::LocalToUTF8(v12.n128_u64[1], v12.n128_u32[1], this);
    }
  }
}

void IPTC_Writer::~IPTC_Writer(IPTC_Writer *this)
{
  *this = &unk_1EF4F1590;
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      IPTC_Manager::DisposeLooseValue(this, (v2 + 40));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  IPTC_Manager::~IPTC_Manager(this);
}

{
  IPTC_Writer::~IPTC_Writer(this);

  JUMPOUT(0x186602850);
}

void IPTC_Writer::SetDataSet_UTF8(uint64_t **this, unsigned int a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  if (!a4)
  {
    return;
  }

  v6 = a4;
  v10 = &off_1E6F41F48;
  do
  {
    v11 = *(v10 + 32);
    v10 += 4;
    v12 = v11 == a2;
  }

  while (v11 < a2);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v35 = "Can only set known IPTC DataSets";
    goto LABEL_71;
  }

  if ((*(this + 46) & 1) == 0)
  {
    IPTC_Writer::ConvertToUTF8(this);
  }

  v14 = v10[1];
  if (v14 < v6)
  {
    if (*(this + 46) == 1 && v14 && (a3[v14] & 0xC0) == 0x80)
    {
      while (a3[v14] <= 0xBFu)
      {
        LODWORD(v14) = v14 - 1;
        if (!v14)
        {
          v6 = 0;
          goto LABEL_19;
        }
      }
    }

    v6 = v14;
  }

LABEL_19:
  v15 = a2 + 2000;
  v42 = a2 + 2000;
  v17 = (this + 2);
  v16 = this[2];
  if (!v16)
  {
    goto LABEL_27;
  }

  v18 = (this + 2);
  do
  {
    v19 = *(v16 + 16);
    v20 = v19 >= v15;
    v21 = v19 < v15;
    if (v20)
    {
      v18 = v16;
    }

    v16 = v16[v21];
  }

  while (v16);
  if (v18 == v17 || v15 < *(v18 + 16))
  {
LABEL_27:
    v18 = (this + 2);
  }

  v22 = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>((this + 1), &v42);
  if (*(v13 + 1) == 2 || a2 == 12 || a2 == 80)
  {
    if (a5 >= 0)
    {
      v23 = a5;
    }

    else
    {
      v23 = v22;
    }

    if (v23 > v22)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v35 = "Invalid index for IPTC DataSet";
LABEL_71:
      exception[1] = v35;
      *(exception + 16) = 0;
    }

    if (v23 == v22)
    {
      v24 = 0;
      v18 = (this + 2);
      goto LABEL_60;
    }

    v25 = *v17;
    v26 = (this + 2);
    if (*v17)
    {
      v26 = (this + 2);
      do
      {
        v27 = *(v25 + 16);
        v20 = v27 >= v42;
        v28 = v27 < v42;
        if (v20)
        {
          v26 = v25;
        }

        v25 = *&v25[8 * v28];
      }

      while (v25);
    }

    if (v23 < 1)
    {
      v18 = v26;
    }

    else
    {
      do
      {
        v29 = *(v26 + 1);
        if (v29)
        {
          do
          {
            v18 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v18 = *(v26 + 2);
            v12 = *v18 == v26;
            v26 = v18;
          }

          while (!v12);
        }

        v26 = v18;
      }

      while (v23-- > 1);
    }
  }

  else if (a5 >= 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v35 = "Non-repeatable IPTC DataSet";
    goto LABEL_71;
  }

  if (v18 == v17)
  {
    v24 = 0;
  }

  else
  {
    if (*(v18 + 11) == v6 && !memcmp(v18[6], a3, v6))
    {
      return;
    }

    v24 = 1;
  }

LABEL_60:
  v31 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v35 = "Out of memory";
    goto LABEL_71;
  }

  v32 = v31;
  memcpy(v31, a3, v6);
  if (!v24)
  {
    v36 = v42;
    v37 = 2;
    v38 = a2;
    v39 = 0;
    v40 = v6;
    v41 = v32;
    for (i = *v17; i; i = *(i + 8 * (v42 >= *(i + 32))))
    {
      if (v42 < *(i + 32))
      {
        v17 = i;
      }
    }

    std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__emplace_hint_multi<std::pair<unsigned short const,IPTC_Manager::DataSetInfo> &>(this + 1, v17, &v36);
  }

  IPTC_Manager::DisposeLooseValue(this, (v18 + 5));
  *(v18 + 40) = 2;
  *(v18 + 41) = a2;
  *(v18 + 21) = 0;
  *(v18 + 11) = v6;
  v18[6] = v32;
  *(this + 44) = 1;
}

void IPTC_Writer::ConvertToUTF8(IPTC_Writer *this)
{
  if (*(this + 46) == 1)
  {
    IPTC_Writer::ConvertToUTF8();
  }

  memset(&__p, 0, sizeof(__p));
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 == this + 16)
  {
    *(this + 46) = 1;
  }

  else
  {
    do
    {
      v4 = *(v2 + 11);
      if (v4)
      {
        ReconcileUtils::LocalToUTF8(*(v2 + 6), v4, &__p);
        IPTC_Manager::DisposeLooseValue(this, (v2 + 40));
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = __p.__r_.__value_.__r.__words[1];
        }

        *(v2 + 11) = v5;
        v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
        *(v2 + 6) = v6;
        if (!v6)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 15;
          exception[1] = "Out of memory";
          *(exception + 16) = 0;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memcpy(v6, p_p, *(v2 + 11));
      }

      v8 = *(v2 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v2 + 2);
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(this + 46) = 1;
    if (v11 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_18613A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPTC_Writer::DeleteDataSet(uint64_t *this, int a2, uint64_t a3)
{
  v3 = a2 + 2000;
  v23 = a2 + 2000;
  v5 = this + 2;
  v4 = this[2];
  if (v4)
  {
    v6 = a3;
    v7 = this;
    v8 = (this + 1);
    v9 = this + 2;
    v10 = this[2];
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= v3;
      v13 = v11 < v3;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    do
    {
      if (v3 < *(v4 + 32))
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (v3 >= *(v4 + 32)));
    }

    while (v4);
    if (v9 != v5)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        this = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(v8, &v23);
        if (this <= v6)
        {
          return this;
        }

        if (v6)
        {
          do
          {
            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v6-- > 1);
        }

        else
        {
          v15 = v9;
        }

        v18 = v15[1];
        if (v18)
        {
          do
          {
            v5 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v5 = v15;
          do
          {
            v19 = v5;
            v5 = v5[2];
          }

          while (*v5 != v19);
        }

        v9 = v15;
      }

      if (v9 != v5)
      {
        v20 = v9;
        do
        {
          IPTC_Manager::DisposeLooseValue(v7, (v20 + 5));
          v21 = v20[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v20[2];
              v16 = *v22 == v20;
              v20 = v22;
            }

            while (!v16);
          }

          v20 = v22;
        }

        while (v22 != v5);
      }

      this = std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::erase(v8, v9, v5);
      *(v7 + 44) = 1;
    }
  }

  return this;
}

void IPTC_Writer::UpdateMemoryDataSets(IPTC_Writer *this)
{
  if (*(this + 44) == 1)
  {
    v2 = this + 16;
    if (*(this + 46))
    {
      v3 = 15;
    }

    else
    {
      v3 = 7;
    }

    v4 = *(this + 1);
    if (v4 != v2)
    {
      do
      {
        v5 = *(v4 + 16);
        if (v5 != 1090 && v5 != 2000)
        {
          v6 = *(v4 + 11);
          v7 = v3 + v6;
          v8 = v7 + 5;
          v3 = v7 + 9;
          if (!(v6 >> 15))
          {
            v3 = v8;
          }
        }

        v9 = *(v4 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v4 + 2);
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
      }

      while (v10 != v2);
    }

    v12 = v3;
    v13 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 15;
      exception[1] = "Out of memory";
      *(exception + 16) = 0;
    }

    v14 = v13;
    v15 = *(this + 1);
    if (v15 == v2)
    {
      v22 = *(this + 1);
      v16 = v13;
    }

    else
    {
      v16 = v13;
      while (!v15[40])
      {
        *v16 = 28;
        v16[1] = v15[40];
        v16[2] = v15[41];
        v17 = *(v15 + 11);
        if (v17 >> 15)
        {
          *(v16 + 5) = bswap32(v17);
          LOWORD(v18) = 1152;
          v19 = 9;
        }

        else
        {
          v18 = bswap32(v17) >> 16;
          v19 = 5;
        }

        v20 = &v16[v19];
        *(v16 + 3) = v18;
        memcpy(&v16[v19], *(v15 + 6), v17);
        v21 = *(v15 + 1);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = *(v15 + 2);
            v11 = *v22 == v15;
            v15 = v22;
          }

          while (!v11);
        }

        v16 = &v20[v17];
        v15 = v22;
        if (v22 == v2)
        {
          goto LABEL_32;
        }
      }

      v22 = v15;
    }

LABEL_32:
    if (*(this + 46) == 1)
    {
      *v16 = 0x47251B03005A011CLL;
      v16 += 8;
    }

    if (v22 != v2)
    {
      while (1)
      {
        v23 = v22[40];
        if (v23 > 1)
        {
          break;
        }

        if (v23 != 1)
        {
          IPTC_Writer::UpdateMemoryDataSets();
        }

        if (v22[41] != 90)
        {
          *v16 = 28;
          v16[1] = v22[40];
          v16[2] = v22[41];
          v24 = *(v22 + 11);
          if (v24 >> 15)
          {
            *(v16 + 5) = bswap32(v24);
            LOWORD(v25) = 1152;
            v26 = 9;
          }

          else
          {
            v25 = bswap32(v24) >> 16;
            v26 = 5;
          }

          v27 = &v16[v26];
          *(v16 + 3) = v25;
          memcpy(&v16[v26], *(v22 + 6), v24);
          v16 = &v27[v24];
        }

        v28 = *(v22 + 1);
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = *(v22 + 2);
            v11 = *v29 == v22;
            v22 = v29;
          }

          while (!v11);
        }

        v22 = v29;
        if (v29 == v2)
        {
          goto LABEL_51;
        }
      }
    }

    v29 = v22;
LABEL_51:
    if (*(this + 46) == 1)
    {
      v30 = 67109376;
    }

    else
    {
      v30 = 33554944;
    }

    *(v16 + 3) = v30;
    *v16 = 540;
    v31 = v16 + 7;
    if (v29 != v2)
    {
      do
      {
        if (v29[40] <= 1u)
        {
          IPTC_Writer::UpdateMemoryDataSets();
        }

        if (*(v29 + 16) != 2000)
        {
          *v31 = 28;
          v31[1] = v29[40];
          v31[2] = v29[41];
          v32 = *(v29 + 11);
          if (v32 >> 15)
          {
            *(v31 + 5) = bswap32(v32);
            LOWORD(v33) = 1152;
            v34 = 9;
          }

          else
          {
            v33 = bswap32(v32) >> 16;
            v34 = 5;
          }

          v35 = &v31[v34];
          *(v31 + 3) = v33;
          memcpy(&v31[v34], *(v29 + 6), v32);
          v31 = &v35[v32];
        }

        v36 = *(v29 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v29 + 2);
            v11 = *v37 == v29;
            v29 = v37;
          }

          while (!v11);
        }

        v29 = v37;
      }

      while (v37 != v2);
    }

    if (v31 != &v14[v12])
    {
      IPTC_Writer::UpdateMemoryDataSets();
    }

    IPTC_Manager::ParseMemoryDataSets(this, v14, v12, 0);
    if (*(this + 10) != v12)
    {
      IPTC_Writer::UpdateMemoryDataSets();
    }

    *(this + 45) = v12 != 0;
  }
}

void *std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__find_leaf(void *a1, void *a2, void *a3, unsigned __int16 *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v5 = *a4;
    if (*(a2 + 16) < v5)
    {
      while (1)
      {
        v6 = *v4;
        a2 = v4;
        if (!*v4)
        {
          break;
        }

        while (1)
        {
          v4 = v6;
          if (*(v6 + 32) >= v5)
          {
            break;
          }

          v6 = *(v6 + 8);
          if (!v6)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_20:
      *a3 = v4;
      return a2;
    }
  }

  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v9 = v10[2];
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (v11);
    }

    v12 = *a4;
    if (v12 < *(v9 + 16))
    {
      while (1)
      {
        v13 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v13;
          if (v12 < *(v13 + 32))
          {
            break;
          }

          v13 = *(v13 + 8);
          if (!v13)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

uint64_t std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::__count_multi<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  while (1)
  {
    v6 = *(v3 + 16);
    if (v5 >= v6)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (v6 < v5)
  {
    ++v3;
    goto LABEL_7;
  }

  v9 = *v3;
  v10 = v3;
  if (*v3)
  {
    v10 = v3;
    do
    {
      v11 = *(v9 + 16);
      v12 = v11 >= v5;
      v13 = v11 < v5;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v5 >= *(i + 32))))
  {
    if (v5 < *(i + 32))
    {
      v2 = i;
    }
  }

  if (v10 == v2)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v15 = v10[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v10[2];
        v17 = *v16 == v10;
        v10 = v16;
      }

      while (!v17);
    }

    ++v7;
    v10 = v16;
  }

  while (v16 != v2);
  return v7;
}

uint64_t *std::__tree<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,IPTC_Manager::DataSetInfo>>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void IPTC_Writer::UpdateMemoryDataSets()
{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 638, "currDS.recNum == 1");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 659, "currDS.recNum > 1");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 664, "dsPtr == (newContent + newLength)");
}

{
  __assert_rtn("UpdateMemoryDataSets", "IPTC_Support.cpp", 669, "this->iptcLength == newLength");
}

BOOL IsInternalProperty(const void **a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *(a1 + 23);
  v5 = a1[1];
  if (v4 < 0 && v5 == 32)
  {
    if (**a1 == 0x702F2F3A70747468 && *(*a1 + 1) == 0x2F67726F2E6C7275 && *(*a1 + 2) == 0x656D656C652F6364 && *(*a1 + 3) == 0x2F312E312F73746ELL)
    {
      if (*(a2 + 23) < 0)
      {
        if (a2[1] == 9 && **a2 == 0x616D726F663A6364 && *(*a2 + 8) == 116)
        {
          return 1;
        }

        if (a2[1] != 11)
        {
          return 0;
        }

        v2 = *a2;
      }

      else
      {
        v9 = *(a2 + 23);
        if (v9 == 9)
        {
          return *a2 == 0x616D726F663A6364 && *(a2 + 8) == 116;
        }

        if (v9 != 11)
        {
          return 0;
        }
      }

      return *v2 == 0x75676E616C3A6364 && *(v2 + 3) == 0x65676175676E616CLL;
    }

    goto LABEL_82;
  }

  if (v4 < 0 && v5 == 28)
  {
    v10 = *a1;
    if (**a1 != 0x6E2F2F3A70747468 || *(*a1 + 1) != 0x2E65626F64612E73 || *(*a1 + 2) != 0x2F7061782F6D6F63 || *(*a1 + 6) != 791686705)
    {
      v14 = *v10;
      v15 = v10[1];
      v16 = v10[2];
      v17 = *(v10 + 6);
      if (v14 != 0x6E2F2F3A70747468 || v15 != 0x2E65626F64612E73 || v16 != 0x2F6664702F6D6F63 || v17 != 791883313)
      {
        goto LABEL_82;
      }

      v21 = *(a2 + 23);
      if (v21 < 0)
      {
        if (a2[1] == 11 && **a2 == 0x657361423A666470 && *(*a2 + 3) == 0x4C5255657361423ALL)
        {
          return 1;
        }

        if (a2[1] == 11 && **a2 == 0x616572433A666470 && *(*a2 + 3) == 0x726F74616572433ALL)
        {
          return 1;
        }

        if (a2[1] == 11)
        {
          v24 = *a2;
          goto LABEL_174;
        }
      }

      else if (v21 == 11)
      {
        if (*a2 == 0x657361423A666470 && *(a2 + 3) == 0x4C5255657361423ALL)
        {
          return 1;
        }

        v23 = *a2 == 0x616572433A666470 && *(a2 + 3) == 0x726F74616572433ALL;
        v24 = a2;
        if (v23)
        {
          return 1;
        }

LABEL_174:
        v62 = *v24;
        v63 = *(v24 + 3);
        if (v62 == 0x44646F4D3A666470 && v63 == 0x65746144646F4D3ALL)
        {
          return 1;
        }
      }

      if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "pdf:PDFVersion"))
      {
        return 1;
      }

      v37 = "pdf:Producer";
      goto LABEL_85;
    }

    if (*(a2 + 23) < 0)
    {
      if (a2[1] == 11 && **a2 == 0x657361423A706D78 && *(*a2 + 3) == 0x4C5255657361423ALL)
      {
        return 1;
      }

      if (a2[1] == 15 && **a2 == 0x616572433A706D78 && *(*a2 + 7) == 0x6C6F6F54726F7461)
      {
        return 1;
      }

      if (a2[1] == 10 && **a2 == 0x6D726F463A706D78 && *(*a2 + 8) == 29793)
      {
        return 1;
      }

      if (a2[1] != 10)
      {
        goto LABEL_219;
      }

      v57 = *a2;
    }

    else
    {
      v42 = *(a2 + 23);
      if (v42 != 10)
      {
        if (v42 == 11)
        {
          v43 = *(a2 + 3);
          v44 = *a2 == 0x657361423A706D78;
          v45 = 0x4C5255657361423ALL;
LABEL_205:
          if (v44 && v43 == v45)
          {
            return 1;
          }

          goto LABEL_219;
        }

        if (v42 == 15)
        {
          v43 = *(a2 + 7);
          v44 = *a2 == 0x616572433A706D78;
          v45 = 0x6C6F6F54726F7461;
          goto LABEL_205;
        }

LABEL_219:
        if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "xmp:MetadataDate"))
        {
          return 1;
        }

        v37 = "xmp:ModifyDate";
LABEL_85:
        result = std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v37);
        if (!result)
        {
          return result;
        }

        return 1;
      }

      v71 = *a2 == 0x6D726F463A706D78 && *(a2 + 4) == 29793;
      v57 = a2;
      if (v71)
      {
        return 1;
      }
    }

    v72 = *v57;
    v73 = *(v57 + 4);
    if (v72 == 0x61636F4C3A706D78 && v73 == 25964)
    {
      return 1;
    }

    goto LABEL_219;
  }

  if ((v4 & 0x80000000) == 0 || v5 != 29)
  {
    if (v4 < 0 && v5 == 33 && !memcmp(*a1, "http://ns.adobe.com/exif/1.0/aux/", 0x21uLL))
    {
      return 1;
    }

    goto LABEL_82;
  }

  v25 = *a1;
  if (**a1 == 0x6E2F2F3A70747468 && *(*a1 + 1) == 0x2E65626F64612E73 && *(*a1 + 2) == 0x666669742F6D6F63 && *(*a1 + 21) == 0x2F302E312F666669)
  {
    if (*(a2 + 23) < 0)
    {
      if (a2[1] == 21)
      {
        v65 = **a2 == 0x616D493A66666974 && *(*a2 + 8) == 0x6972637365446567;
        if (v65 && *(*a2 + 13) == 0x6E6F697470697263)
        {
          return 0;
        }
      }

      if (a2[1] != 11)
      {
LABEL_194:
        v48 = "tiff:Copyright";
        return !std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v48);
      }

      v50 = *a2;
    }

    else
    {
      v49 = *(a2 + 23);
      v50 = a2;
      if (v49 != 11)
      {
        if (v49 == 21)
        {
          v51 = *a2 == 0x616D493A66666974 && a2[1] == 0x6972637365446567;
          if (v51 && *(a2 + 13) == 0x6E6F697470697263)
          {
            return 0;
          }
        }

        goto LABEL_194;
      }
    }

    v67 = *v50;
    v68 = *(v50 + 3);
    if (v67 == 0x7472413A66666974 && v68 == 0x7473697472413A66)
    {
      return 0;
    }

    goto LABEL_194;
  }

  v29 = *v25;
  v30 = v25[1];
  v31 = v25[2];
  v32 = *(v25 + 21);
  if (v29 == 0x6E2F2F3A70747468 && v30 == 0x2E65626F64612E73 && v31 == 0x666978652F6D6F63 && v32 == 0x2F302E312F666978)
  {
    v36 = *(a2 + 23);
    if (v36 < 0)
    {
      if (a2[1] != 16)
      {
        return 1;
      }

      v2 = *a2;
    }

    else if (v36 != 16)
    {
      return 1;
    }

    v75 = 0x657869663A557365;
    v76 = bswap64(*v2);
    if (v76 == 0x657869663A557365 && (v75 = 0x72436F6D6D656E74, v76 = bswap64(v2[1]), v76 == 0x72436F6D6D656E74))
    {
      v77 = 0;
    }

    else if (v76 < v75)
    {
      v77 = -1;
    }

    else
    {
      v77 = 1;
    }

    return v77 != 0;
  }

LABEL_82:
  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/photoshop/1.0/"))
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "photoshop:ICCProfile"))
    {
      return 1;
    }

    v37 = "photoshop:TextLayers";
    goto LABEL_85;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/camera-raw-settings/1.0/"))
  {
    return 1;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"))
  {
    v39 = kLastExternalxmpDM;
    if (!kLastExternalxmpDM)
    {
      v39 = &PADDING[56];
      do
      {
        v40 = v39[1];
        ++v39;
      }

      while (v40);
      kLastExternalxmpDM = v39;
    }

    if (*(v2 + 23) >= 0)
    {
      v41 = v2;
    }

    else
    {
      v41 = *v2;
    }

    v78 = v41;
    return !std::binary_search[abi:fe200100]<char const**,char const*,int (*)(char const*,char const*)>(kExternalxmpDM, v39, &v78, CharStarLess);
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xmp/1.0/Script/"))
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:action") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:character") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:dialog") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "xmpScript:sceneSetting"))
    {
      return 0;
    }

    v48 = "xmpScript:sceneTimeOfDay";
    return !std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v48);
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/bwf/bext/1.0/"))
  {
    v58 = "bext:version";
    v59 = v2;
  }

  else
  {
    if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/StockPhoto/1.0/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/mm/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/t/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/t/pg/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/g/") || std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "http://ns.adobe.com/xap/1.0/g/img/"))
    {
      return 1;
    }

    v58 = "http://ns.adobe.com/xap/1.0/sType/Font#";
    v59 = a1;
  }

  return std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v59, v58);
}

BOOL std::binary_search[abi:fe200100]<char const**,char const*,int (*)(char const*,char const*)>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a1;
  if (a2 != a1)
  {
    v8 = a2 - a1;
    do
    {
      v9 = &v7[v8 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = a4(v11, *a3);
      if (v12)
      {
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }

      if (v12)
      {
        v7 = v10;
      }
    }

    while (v8);
  }

  return v7 != a2 && a4(*a3, *v7) == 0;
}

void XMPUtils::CatenateArrayItems_v2(const void *a1, char *a2, _BYTE *a3, char *a4, const char *a5, uint64_t a6, std::string *a7)
{
  if (!sUseNewCoreAPIs)
  {
    return;
  }

  v8 = a6;
  if (!v13)
  {
    __cxa_bad_cast();
  }

  if (!a2 || !a3)
  {
    XMPUtils::CatenateArrayItems_v2();
  }

  if (!a4 || !a5 || !a7)
  {
    XMPUtils::CatenateArrayItems_v2();
  }

  v14 = v13;
  v39 = v8;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v15 = strlen(a4);
  if (!v15)
  {
    goto LABEL_76;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = "Separator can have only one semicolon";
  do
  {
    while (1)
    {
      ClassifyCharacter(a4, v18, &v54, &v55, &v53);
      v18 += v55;
      if (v54 == 1)
      {
        break;
      }

      if (v54 != 3)
      {
        v19 = "Separator can have only spaces and one semicolon";
        goto LABEL_75;
      }

      if (v17)
      {
        goto LABEL_75;
      }

      v17 = 1;
      if (v18 >= v16)
      {
        goto LABEL_18;
      }
    }
  }

  while (v18 < v16);
  if ((v17 & 1) == 0)
  {
LABEL_76:
    v19 = "Separator must have one semicolon";
    goto LABEL_75;
  }

LABEL_18:
  v20 = strlen(a5);
  ClassifyCharacter(a5, 0, &v54, &v55, &v52);
  if (v54 != 4)
  {
    goto LABEL_77;
  }

  v21 = v55;
  if (v55 == v20)
  {
    v22 = v52;
    v51 = v52;
    v23 = v52;
    goto LABEL_24;
  }

  ClassifyCharacter(a5, v55, &v54, &v55, &v51);
  if (v54 != 4)
  {
LABEL_77:
    v19 = "Invalid quoting character";
    goto LABEL_75;
  }

  if (v55 + v21 != v20)
  {
    v19 = "Quoting string too long";
LABEL_75:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = v19;
    *(exception + 16) = 0;
  }

  v23 = v51;
  v22 = v52;
LABEL_24:
  if (v23 != GetClosingQuote(v22))
  {
    v19 = "Mismatched quote pair";
    goto LABEL_75;
  }

  std::string::erase(a7, 0, 0xFFFFFFFFFFFFFFFFLL);
  memset(v45, 0, sizeof(v45));
  ExpandXPath(a2, a3, v45);
  XMPUtils::FindCnstNode((v14 + 400), v45, &v49, &v48, 0);
  if (v49)
  {
    if ((v48 & 0xA00) != 0x200)
    {
      v37 = __cxa_allocate_exception(0x18uLL);
      *v37 = 4;
      v37[1] = "Named property must be non-alternate array";
      *(v37 + 16) = 0;
    }

    __p[0] = v49;
    __p[1] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NodeChildCount = XMPUtils::GetNodeChildCount(__p);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
    }

    if (NodeChildCount)
    {
      v44 = 0uLL;
      __p[0] = v49;
      __p[1] = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      XMPUtils::GetNodeChildIterator(__p, &v44);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
      }

      if ((XMPUtils::GetIXMPOptions(&v46) & 0x1F00) != 0)
      {
        v38 = __cxa_allocate_exception(0x18uLL);
        *v38 = 4;
        v38[1] = "Array items must be simple";
        *(v38 + 16) = 0;
      }

      (*(*v44 + 48))(__p);
      v25 = __p[1];
      (*(*__p[0] + 232))(__p);
      v26 = __p[1];
      (*(*__p[0] + 504))(&v56);
      v27 = (*(*v56 + 192))(v56);
      MEMORY[0x186602520](a7, v27);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v57);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v26);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v25);
      }

      ApplyQuotes(a7, v22, v23, (v39 >> 28) & 1);
      (*(*v44 + 56))(__p);
      v28 = *(&v44 + 1);
      v44 = *__p;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v28);
        i = v44;
        if (v44)
        {
          goto LABEL_47;
        }
      }

      else
      {
        for (i = __p[0]; __p[0]; i = __p[0])
        {
          while (1)
          {
LABEL_47:
            __p[0] = 0;
            __p[1] = 0;
            v43 = 0;
            (*(*i + 48))(&v56);
            v30 = v57;
            (*(*v56 + 232))(&v56);
            v31 = v57;
            (*(*v56 + 504))(&v40);
            v32 = (*(*v40 + 192))(v40);
            std::string::basic_string[abi:fe200100]<0>(__p, v32);
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v41);
            }

            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v31);
            }

            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v30);
            }

            ApplyQuotes(__p, v22, v23, (v39 >> 28) & 1);
            std::string::append(a7, a4);
            if (v43 >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = __p[0];
            }

            if (v43 >= 0)
            {
              v34 = HIBYTE(v43);
            }

            else
            {
              v34 = __p[1];
            }

            std::string::append(a7, v33, v34);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(__p[0]);
            }

            (*(*v44 + 56))(__p);
            v35 = *(&v44 + 1);
            v44 = *__p;
            if (!v35)
            {
              break;
            }

            std::__shared_weak_count::__release_shared[abi:fe200100](v35);
            i = v44;
            if (!v44)
            {
              goto LABEL_65;
            }
          }
        }
      }

LABEL_65:
      if (*(&v44 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v44 + 1));
      }
    }
  }

  __p[0] = v45;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__p);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v47);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v50);
  }
}

void sub_18613BEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, std::__shared_weak_count *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  a20 = &a22;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a20);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a26);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a29);
  }

  _Unwind_Resume(a1);
}

const char *ClassifyCharacter(const char *__s, uint64_t a2, int *a3, void *a4, uint64_t *a5)
{
  *a3 = 0;
  v8 = __s[a2];
  if ((__s[a2] & 0x80000000) == 0)
  {
    *a4 = 1;
    *a5 = v8;
    if (v8 >= 0x23)
    {
      if (v8 != 44)
      {
        if (v8 != 59)
        {
          return __s;
        }

        goto LABEL_5;
      }

LABEL_47:
      v9 = 2;
      goto LABEL_54;
    }

    v18 = v8 - 32;
    if (v18 < 3u)
    {
      v9 = dword_1862294B4[v18];
      goto LABEL_54;
    }

LABEL_53:
    v9 = 5;
    goto LABEL_54;
  }

  v11 = __s;
  *a4 = 0;
  *a5 = v8;
  do
  {
    ++*a4;
    v12 = *a5;
    v13 = 2 * *a5;
    *a5 = v13;
  }

  while ((v12 & 0x40) != 0);
  v14 = *a4 + a2;
  __s = strlen(__s);
  if (v14 > __s)
  {
    ClassifyCharacter();
  }

  *a5 = v13 & 0x7E;
  v15 = (v13 & 0x7E) >> *a4;
  *a5 = v15;
  v16 = a2 + 1;
  if (a2 + 1 >= (*a4 + a2))
  {
    v17 = v15;
  }

  else
  {
    do
    {
      v17 = v11[v16] & 0x3F | (v15 << 6);
      *a5 = v17;
      ++v16;
      v15 = v17;
    }

    while (v16 < *a4 + a2);
  }

  v19 = v17 >> 8;
  if ((v17 >> 8) <= 31)
  {
    if (v19 > 4)
    {
      if (v19 == 5)
      {
        if (v17 != 1373)
        {
          return __s;
        }

        goto LABEL_47;
      }

      if (v19 != 6)
      {
        return __s;
      }

      if (v17 == 1548)
      {
        goto LABEL_47;
      }

      if (v17 != 1563)
      {
        return __s;
      }

      goto LABEL_5;
    }

    if (v19)
    {
      if (v19 != 3 || v17 != 894)
      {
        return __s;
      }

LABEL_5:
      v9 = 3;
LABEL_54:
      *a3 = v9;
      return __s;
    }

    if ((v17 | 0x10) != 0xBB)
    {
      return __s;
    }

LABEL_41:
    v9 = 4;
    goto LABEL_54;
  }

  if (v19 <= 253)
  {
    if (v19 == 32)
    {
      if (v17 - 0x2000 >= 0xC)
      {
        v9 = 4;
        if (v17 == 8213 || (v17 & 0xFFFFFFFFFFFFFFF8) == 0x2018)
        {
          goto LABEL_54;
        }

        if (v17 - 8232 < 2)
        {
          goto LABEL_53;
        }

        if (v17 - 8249 > 1)
        {
          return __s;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v19 != 48)
      {
        return __s;
      }

      if (v17 != 12288)
      {
        if (v17 == 12289)
        {
          goto LABEL_47;
        }

        if (v17 >> 3 == 1537)
        {
          goto LABEL_41;
        }

        if (v17 != 12351)
        {
          if (v17 - 12317 >= 3)
          {
            return __s;
          }

          goto LABEL_41;
        }
      }
    }

    v9 = 1;
    goto LABEL_54;
  }

  if (v19 == 254)
  {
    if (v17 - 65104 < 2)
    {
      goto LABEL_47;
    }

    v20 = 65108;
  }

  else
  {
    if (v19 != 255)
    {
      return __s;
    }

    v9 = 2;
    if (v17 == 65292 || v17 == 65380)
    {
      goto LABEL_54;
    }

    v20 = 65307;
  }

  if (v17 == v20)
  {
    goto LABEL_5;
  }

  return __s;
}

uint64_t GetClosingQuote(uint64_t result)
{
  if (result <= 8221)
  {
    if (result <= 8212)
    {
      switch(result)
      {
        case 34:
          return result;
        case 171:
          return 187;
        case 187:
          return 171;
      }
    }

    else if (result > 8217)
    {
      if (result == 8218)
      {
        return 8219;
      }

      if (result == 8220)
      {
        return 8221;
      }
    }

    else
    {
      if (result == 8213)
      {
        return result;
      }

      if (result == 8216)
      {
        return 8217;
      }
    }
  }

  else if (result > 12297)
  {
    if (result > 12301)
    {
      if (result == 12302)
      {
        return 12303;
      }

      if (result == 12317)
      {
        return 12319;
      }
    }

    else
    {
      if (result == 12298)
      {
        return 12299;
      }

      if (result == 12300)
      {
        return 12301;
      }
    }
  }

  else if (result > 8249)
  {
    if (result == 8250)
    {
      return 8249;
    }

    if (result == 12296)
    {
      return 12297;
    }
  }

  else
  {
    if (result == 8222)
    {
      return 8223;
    }

    if (result == 8249)
    {
      return 8250;
    }
  }

  return 0;
}

void ApplyQuotes(char *a1, unint64_t a2, unint64_t a3, int a4)
{
  v7 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __n = 0;
  v24 = 0;
  v23 = 0;
  ClassifyCharacter(a1, 0, &v24, &__n, &v23);
  v8 = 0;
  if (v24 != 4)
  {
    v15 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v7[23];
      if ((v9 & 0x8000000000000000) != 0)
      {
        if (v8 >= *(v7 + 1))
        {
          goto LABEL_5;
        }

        v16 = *v7;
      }

      else
      {
        v16 = v7;
        if (v8 >= v9)
        {
          goto LABEL_6;
        }
      }

      ClassifyCharacter(v16, v8, &v24, &__n, &v23);
      switch(v24)
      {
        case 1:
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        case 2:
          if (!a4)
          {
            goto LABEL_4;
          }

          break;
        case 3:
        case 5:
          goto LABEL_4;
      }

      v8 += __n;
      v15 = v24 == 1;
    }
  }

LABEL_4:
  v9 = v7[23];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v9 = *(v7 + 1);
  }

LABEL_6:
  if (v8 >= v9)
  {
    return;
  }

  v10 = 0;
  memset(&__str, 0, sizeof(__str));
  do
  {
    v11 = v7;
    if (v7[23] < 0)
    {
      v11 = *v7;
    }

    ClassifyCharacter(v11, v10, &v24, &__n, &v23);
    if (v24 == 4)
    {
      break;
    }

    ++v10;
  }

  while (v10 <= v8);
  CodePointToUTF8(a2, &__str);
  std::string::append(&__str, v7, 0, v10);
  while (1)
  {
    v12 = v7[23];
    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    v13 = v7;
    if (v10 >= v12)
    {
      goto LABEL_40;
    }

LABEL_18:
    ClassifyCharacter(v13, v10, &v24, &__n, &v23);
    v14 = __n;
    std::string::append(&__str, v7, v10, __n);
    if (v24 == 4 && (v23 == a2 || v23 == a3 || a2 == 12317 && (v23 & 0xFFFFFFFFFFFFFFFELL) == 0x301E))
    {
      std::string::append(&__str, v7, v10, v14);
    }

    v10 += v14;
  }

  if (v10 < *(v7 + 1))
  {
    v13 = *v7;
    goto LABEL_18;
  }

LABEL_40:
  __p = 0;
  v20 = 0;
  v21 = 0;
  CodePointToUTF8(a3, &__p);
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v21 >= 0)
  {
    v18 = HIBYTE(v21);
  }

  else
  {
    v18 = v20;
  }

  std::string::append(&__str, p_p, v18);
  std::string::operator=(v7, &__str);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_18613C688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::CatenateArrayItems(const void *a1, char *a2, _BYTE *a3, char *__s, const char *a5, uint64_t a6, std::string *a7)
{
  v8 = a6;
  if (!sUseNewCoreAPIs)
  {
    if (!a2 || !a3)
    {
      XMPUtils::CatenateArrayItems();
    }

    if (!__s || !a5 || !a7)
    {
      XMPUtils::CatenateArrayItems();
    }

    v45 = 0;
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v14 = strlen(__s);
    if (!v14)
    {
      goto LABEL_53;
    }

    v15 = v14;
    v16 = 0;
    v17 = 0;
    do
    {
      while (1)
      {
        ClassifyCharacter(__s, v16, &v44, &v45, &v43);
        v16 += v45;
        if (v44 == 1)
        {
          break;
        }

        if (v44 != 3)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Separator can have only spaces and one semicolon";
          goto LABEL_51;
        }

        if (v17)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Separator can have only one semicolon";
          goto LABEL_51;
        }

        v17 = 1;
        if (v16 >= v15)
        {
          goto LABEL_20;
        }
      }
    }

    while (v16 < v15);
    if ((v17 & 1) == 0)
    {
LABEL_53:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v36 = "Separator must have one semicolon";
      goto LABEL_51;
    }

LABEL_20:
    v18 = strlen(a5);
    ClassifyCharacter(a5, 0, &v44, &v45, &v42);
    if (v44 == 4)
    {
      v19 = v45;
      if (v45 == v18)
      {
        v20 = v42;
        v21 = v42;
        goto LABEL_26;
      }

      ClassifyCharacter(a5, v45, &v44, &v45, &v41);
      if (v44 == 4)
      {
        if (v45 + v19 != v18)
        {
LABEL_60:
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Quoting string too long";
LABEL_51:
          exception[1] = v36;
          *(exception + 16) = 0;
        }

        v21 = v41;
        v20 = v42;
LABEL_26:
        if (v21 != GetClosingQuote(v20))
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v36 = "Mismatched quote pair";
          goto LABEL_51;
        }

        std::string::erase(a7, 0, 0xFFFFFFFFFFFFFFFFLL);
        memset(v40, 0, sizeof(v40));
        ExpandXPath(a2, a3, v40);
        Node = FindNode(a1 + 224, v40, 0, 0, 0);
        v23 = Node;
        if (!Node)
        {
          goto LABEL_47;
        }

        if ((*(Node + 8) & 0xA00) == 0x200)
        {
          v24 = *(Node + 72);
          if (v24 == *(Node + 80))
          {
            goto LABEL_47;
          }

          v25 = *v24;
          v26 = "Array items must be simple";
          if ((*(v25 + 9) & 0x1F) == 0)
          {
            std::string::operator=(a7, (v25 + 40));
            v27 = (v8 >> 28) & 1;
            ApplyQuotes(a7, v20, v21, v27);
            v28 = *(v23 + 80) - *(v23 + 72);
            if (v28 != 8)
            {
              v29 = v28 >> 3;
              v30 = 1;
              while (1)
              {
                v31 = *(v23 + 72);
                if (v30 >= (*(v23 + 80) - v31) >> 3)
                {
                  break;
                }

                v32 = *(v31 + 8 * v30);
                if ((*(v32 + 9) & 0x1F) != 0)
                {
                  v37 = __cxa_allocate_exception(0x18uLL);
                  *v37 = 4;
                  v37[1] = "Array items must be simple";
                  *(v37 + 16) = 0;
                }

                memset(&__p, 0, sizeof(__p));
                if (*(v32 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, *(v32 + 40), *(v32 + 48));
                }

                else
                {
                  __p = *(v32 + 40);
                }

                ApplyQuotes(&__p, v20, v21, v27);
                std::string::append(a7, __s);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(a7, p_p, size);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v29 == ++v30)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
              goto LABEL_60;
            }

LABEL_47:
            __p.__r_.__value_.__r.__words[0] = v40;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
            return;
          }
        }

        else
        {
          v26 = "Named property must be non-alternate array";
        }

        v38 = __cxa_allocate_exception(0x18uLL);
        *v38 = 4;
        v38[1] = v26;
        *(v38 + 16) = 0;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v36 = "Invalid quoting character";
    goto LABEL_51;
  }

  XMPUtils::CatenateArrayItems_v2(a1, a2, a3, __s, a5, a6, a7);
}

void sub_18613CB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  __p = &a16;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPUtils::SeparateArrayItems_v2(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v72 = a4;
  v9 = 0;
  if (this && sUseNewCoreAPIs)
  {
  }

  if (!a2 || !a3 || !a5)
  {
    XMPUtils::SeparateArrayItems_v2();
  }

  memset(&v96, 0, sizeof(v96));
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v10 = VerifySetOptions(v72 & 0xEFFFFFFF, 0);
  if ((v10 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Options can only provide array form";
    *(exception + 16) = 0;
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  ExpandXPath(a2, a3, &v87);
  v86 = 0uLL;
  XMPUtils::FindCnstNode((v9 + 400), &v87, &v86, &v90, 0);
  __s = a5;
  if (!v11)
  {
    memset(&__str, 0, 32);
    v15 = v88;
    if (v87 != v88)
    {
      if (*(v88 - 9) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v88 - 4), *(v88 - 3));
      }

      else
      {
        v16 = *(v88 - 2);
        __str.__end_ = *(v88 - 2);
        *&__str.__first_ = v16;
      }

      LODWORD(__str.__end_cap_.__value_) = *(v15 - 2);
      memset(&v85, 0, sizeof(v85));
      if (SHIBYTE(__str.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&v85, __str.__first_, __str.__begin_);
      }

      else
      {
        *&v85.__r_.__value_.__l.__data_ = *&__str.__first_;
        v85.__r_.__value_.__r.__words[2] = __str.__end_;
      }

      v74[0] = 0;
      v74[1] = 0;
      LODWORD(v73) = 0;
      XMPUtils::FindNode((v9 + 400), &v87, 1, v10, v74, &v73, 1u);
      if (v17)
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        __p = 0;
        v80 = 0;
        v81 = 0;
        v78 = 0uLL;
        AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v78);
        v90 = v10;
        XMPUtils::GetNameSpaceAndNameFromStepValue(&__str, &v78, &v82, &__p);
        if ((v90 & 0x800) == 0)
        {
          if ((v90 & 0x400) == 0)
          {
            if ((v90 & 0x200) != 0)
            {
              AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode();
            }

            v70 = __cxa_allocate_exception(0x18uLL);
            *v70 = 102;
            v70[1] = "Failure creating array node";
            *(v70 + 16) = 0;
          }

          AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
        }

        AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode();
      }

      v69 = __cxa_allocate_exception(0x18uLL);
      *v69 = 102;
      v69[1] = "Failure creating array node";
      *(v69 + 16) = 0;
    }

    goto LABEL_168;
  }

  v12 = "Named property must be non-alternate array";
  if ((v90 & 0x1E00) == 0 || (v90 & 0x800) != 0)
  {
LABEL_14:
    v14 = __cxa_allocate_exception(0x18uLL);
    *v14 = 102;
    v14[1] = v12;
    *(v14 + 16) = 0;
  }

  v13 = __s;
  if (v10 && v10 != (v90 & 0x1E00))
  {
    v12 = "Mismatch of specified and existing array form";
    goto LABEL_14;
  }

  *&__str.__first_ = v86;
  if (*(&v86 + 1))
  {
    atomic_fetch_add_explicit((*(&v86 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  NodeChildCount = XMPUtils::GetNodeChildCount(&__str);
  if (__str.__begin_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__str.__begin_);
  }

  memset(&v85, 0, sizeof(v85));
  v82 = 0;
  v83 = 0;
  v84 = 0;
  __p = 0;
  v80 = 0;
  v81 = 0;
  LOBYTE(__str.__first_) = 0;
  std::vector<BOOL>::vector(&__p, NodeChildCount, &__str);
  v78 = 0uLL;
  *&__str.__first_ = v86;
  if (*(&v86 + 1))
  {
    atomic_fetch_add_explicit((*(&v86 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&__str, &v78);
  if (__str.__begin_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__str.__begin_);
  }

  first = v78;
  if (v78)
  {
    while (1)
    {
      (*(first->__r_.__value_.__r.__words[0] + 48))(&__str);
      begin = __str.__begin_;
      (*(__str.__first_->__r_.__value_.__l.__data_ + 29))(&__str);
      v21 = __str.__begin_;
      (*(__str.__first_->__r_.__value_.__l.__data_ + 63))(&v76);
      v22 = (*(*v76 + 192))(v76);
      std::string::basic_string[abi:fe200100]<0>(v74, v22);
      size = v85.__r_.__value_.__l.__size_;
      if (v85.__r_.__value_.__l.__size_ >= v85.__r_.__value_.__r.__words[2])
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 3);
        v26 = v25 + 1;
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        if (0x5555555555555556 * ((v85.__r_.__value_.__r.__words[2] - v85.__r_.__value_.__r.__words[0]) >> 3) > v26)
        {
          v26 = 0x5555555555555556 * ((v85.__r_.__value_.__r.__words[2] - v85.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v85.__r_.__value_.__r.__words[2] - v85.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v26;
        }

        __str.__end_cap_.__value_ = &v85;
        if (v27)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(&v85, v27);
        }

        v28 = 8 * ((v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 3);
        v29 = *v74;
        *(v28 + 16) = v75;
        *v28 = v29;
        v74[1] = 0;
        v75 = 0;
        v74[0] = 0;
        v30 = (24 * v25 - (v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]));
        memcpy(v30, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]);
        v31 = v85.__r_.__value_.__r.__words[0];
        v32 = v85.__r_.__value_.__r.__words[2];
        v85.__r_.__value_.__r.__words[0] = v30;
        *&v85.__r_.__value_.__r.__words[1] = 24 * v25 + 24;
        __str.__end_ = v31;
        __str.__end_cap_.__value_ = v32;
        __str.__first_ = v31;
        __str.__begin_ = v31;
        std::__split_buffer<std::string>::~__split_buffer(&__str);
        v85.__r_.__value_.__l.__size_ = 24 * v25 + 24;
        v13 = __s;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0]);
        }
      }

      else
      {
        v24 = *v74;
        *(v85.__r_.__value_.__l.__size_ + 16) = v75;
        *size = v24;
        v74[1] = 0;
        v75 = 0;
        v74[0] = 0;
        v85.__r_.__value_.__l.__size_ = size + 24;
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

      if (begin)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](begin);
      }

      (*(*v78 + 48))(&__str);
      v33 = __str.__begin_;
      v34 = (*(__str.__first_->__r_.__value_.__l.__data_ + 23))(__str.__first_);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v33);
      }

      if (v34)
      {
        break;
      }

      *&__str.__first_ = 0uLL;
      std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](&v82, &__str);
      v36 = __str.__begin_;
      if (__str.__begin_)
      {
        goto LABEL_64;
      }

LABEL_65:
      (*(*v78 + 56))(&__str);
      v37 = *(&v78 + 1);
      v78 = *&__str.__first_;
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v37);
        first = v78;
        if (!v78)
        {
          goto LABEL_69;
        }
      }

      else
      {
        first = __str.__first_;
        if (!__str.__first_)
        {
          goto LABEL_69;
        }
      }
    }

    (*(*v78 + 48))(&__str);
    v35 = __str.__begin_;
    (*(__str.__first_->__r_.__value_.__l.__data_ + 33))(v74);
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](&v82, v74);
    if (v74[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v74[1]);
    }

    if (!v35)
    {
      goto LABEL_65;
    }

    v36 = v35;
LABEL_64:
    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
    goto LABEL_65;
  }

LABEL_69:
  (*(*v86 + 224))(v86, 1, 0);
  v74[0] = 0;
  v74[1] = 0;
  (*(*v86 + 248))(v74);
  v38 = strlen(v13);
  if (!v38)
  {
LABEL_152:
    if (v74[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v74[1]);
    }

    if (*(&v78 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v78 + 1));
    }

    if (__p)
    {
      operator delete(__p);
    }

    __str.__first_ = &v82;
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&__str);
    __str.__first_ = &v85;
    std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&__str);
    if (*(&v86 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v86 + 1));
    }

    __str.__first_ = &v87;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    return;
  }

  v39 = v38;
  v40 = 0;
  while (1)
  {
    ClassifyCharacter(v13, v40, &v93, &v94, &v91);
    if ((v93 & 0xFFFFFFFB) == 0)
    {
      break;
    }

    v40 += v94;
    if (v40 >= v39)
    {
      goto LABEL_152;
    }
  }

  if (v93 != 4)
  {
    v62 = v40;
    if (v40 < v39)
    {
      v62 = v40;
      do
      {
        ClassifyCharacter(v13, v62, &v93, &v94, &v91);
        v64 = (v72 & 0x10000000) == 0 || v93 != 2;
        if ((v93 & 0xFFFFFFFB) != 0 && v64)
        {
          if (v93 != 1)
          {
            break;
          }

          v65 = v94 + v62;
          if (v94 + v62 >= v39)
          {
            break;
          }

          ClassifyCharacter(v13, v94 + v62, &v93 + 1, &v95, &v92);
          v66 = (v72 & 0x10000000) != 0 && HIDWORD(v93) == 2;
          v67 = !v66;
          if ((v93 & 0xFFFFFFFB00000000) != 0 && v67)
          {
            break;
          }
        }

        else
        {
          v65 = v94 + v62;
        }

        v62 = v65;
      }

      while (v65 < v39);
    }

    std::string::basic_string[abi:fe200100]<0>(&__str, v13);
    std::string::assign(&v96, &__str, v40, v62 - v40);
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    if (NodeChildCount)
    {
      goto LABEL_98;
    }

    goto LABEL_142;
  }

  v41 = v91;
  ClosingQuote = GetClosingQuote(v91);
  v43 = v94;
  std::string::erase(&v96, 0, 0xFFFFFFFFFFFFFFFFLL);
  v44 = v43 + v40;
  if (v43 + v40 >= v39)
  {
    if (NodeChildCount)
    {
      goto LABEL_98;
    }

    goto LABEL_142;
  }

  while (1)
  {
    ClassifyCharacter(__s, v44, &v93, &v94, &v91);
    if (v93 != 4 || ((v45 = v91, v91 != v41) ? (v46 = v91 == ClosingQuote) : (v46 = 1), !v46 && (v41 != 12317 || (v91 & 0xFFFFFFFFFFFFFFFELL) != 0x301E)))
    {
      std::string::basic_string[abi:fe200100]<0>(&__str, __s);
      v47 = v94;
      std::string::append(&v96, &__str, v44, v94);
      goto LABEL_94;
    }

    v47 = v94;
    if (v94 + v44 >= v39)
    {
      HIDWORD(v93) = 3;
      v95 = 0;
      v48 = 59;
      v92 = 59;
    }

    else
    {
      ClassifyCharacter(__s, v94 + v44, &v93 + 1, &v95, &v92);
      v48 = v92;
    }

    if (v45 != v48)
    {
      break;
    }

    std::string::basic_string[abi:fe200100]<0>(&__str, __s);
    std::string::append(&v96, &__str, v44, v47);
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    v44 += v95;
LABEL_96:
    v44 += v47;
    if (v44 >= v39)
    {
      goto LABEL_97;
    }
  }

  if (v45 != ClosingQuote && (v41 != 12317 || (v45 & 0xFFFFFFFFFFFFFFFELL) != 0x301E))
  {
    std::string::basic_string[abi:fe200100]<0>(&__str, __s);
    std::string::append(&v96, &__str, v44, v47);
LABEL_94:
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    goto LABEL_96;
  }

LABEL_97:
  if (!NodeChildCount)
  {
LABEL_142:
    v61 = 1;
LABEL_143:
    if (v61 == NodeChildCount + 1)
    {
      (*(*v86 + 88))(&v76);
      (*(*v76 + 192))(v76);
      (*(*v86 + 88))(&v73);
      (*(*v73 + 208))(v73);
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }

    (*(*v86 + 88))(&v76);
    (*(*v76 + 192))(v76);
    (*(*v86 + 88))(&v73);
    (*(*v73 + 208))(v73);
    if (0xAAAAAAAAAAAAAAABLL * ((v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 3) > v61 - 1)
    {
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }

    goto LABEL_168;
  }

LABEL_98:
  v49 = 0;
  v51 = __p;
  v50 = v80;
  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v96.__r_.__value_.__l.__size_;
  }

  v53 = v85.__r_.__value_.__r.__words[0];
  v54 = 0xAAAAAAAAAAAAAAABLL * ((v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 3);
  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v96;
  }

  else
  {
    v55 = v96.__r_.__value_.__r.__words[0];
  }

  while (v50 != v49)
  {
    if (((*&v51[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v49) & 1) == 0)
    {
      if (v54 <= v49)
      {
        break;
      }

      v56 = *(v53 + 23);
      v57 = v56;
      if ((v56 & 0x80u) != 0)
      {
        v56 = *(v53 + 8);
      }

      if (v52 == v56)
      {
        v58 = v57 >= 0 ? v53 : *v53;
        if (!memcmp(v55, v58, v52))
        {
          v61 = v49 + 1;
          goto LABEL_143;
        }
      }
    }

    v59 = v49 + 1;
    v60 = v49 + 2;
    v53 += 24;
    ++v49;
    if (v60 > NodeChildCount)
    {
      v61 = v59 + 1;
      goto LABEL_143;
    }
  }

LABEL_168:
  __break(1u);
}

void sub_18613DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a44);
  }

  a36 = &a45;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a36);
  if (*(v45 - 145) < 0)
  {
    operator delete(*(v45 - 168));
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void XMPUtils::SeparateArrayItems(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4, char *a5, const char *a6)
{
  v7 = a4;
  if (sUseNewCoreAPIs)
  {

    XMPUtils::SeparateArrayItems_v2(this, a2, a3, a4, a5, a6);
    return;
  }

  if (!a2 || !a3 || !a5)
  {
    XMPUtils::SeparateArrayItems();
  }

  memset(&v68, 0, sizeof(v68));
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v11 = VerifySetOptions(a4 & 0xEFFFFFFF, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Options can only provide array form";
    *(exception + 16) = 0;
  }

  memset(v61, 0, sizeof(v61));
  ExpandXPath(a2, a3, v61);
  Node = FindNode(this + 224, v61, 0, 0, 0);
  if (Node)
  {
    v13 = *(Node + 8);
    v14 = "Named property must be non-alternate array";
    if ((v13 & 0x1E00) == 0 || (v13 & 0x800) != 0)
    {
LABEL_15:
      v15 = __cxa_allocate_exception(0x18uLL);
      *v15 = 102;
      v15[1] = v14;
      *(v15 + 16) = 0;
    }

    if (v11 && v11 != (*(Node + 8) & 0x1E00))
    {
      v14 = "Mismatch of specified and existing array form";
      goto LABEL_15;
    }
  }

  else
  {
    Node = FindNode(this + 224, v61, 1, v11 | 0x200u, 0);
    if (!Node)
    {
      v52 = __cxa_allocate_exception(0x18uLL);
      *v52 = 102;
      v52[1] = "Failed to create named array";
      *(v52 + 16) = 0;
    }
  }

  v16 = *(Node + 72);
  __p = 0;
  v59 = 0;
  v60 = 0;
  v53 = Node + 72;
  v17 = Node;
  std::vector<XMP_Node *>::__init_with_size[abi:fe200100]<XMP_Node **,XMP_Node **>(&__p, v16, *(Node + 80), (*(Node + 80) - v16) >> 3);
  v54 = __p;
  v55 = v59;
  v56 = (v59 - __p) >> 3;
  *(v17 + 80) = *(v17 + 72);
  v18 = strlen(a5);
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    if (v56 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v56;
    }

    while (1)
    {
      while (1)
      {
        ClassifyCharacter(a5, v20, &v64, &v66, &v62);
        if ((v64 & 0xFFFFFFFB) == 0)
        {
          break;
        }

        v20 += v66;
        if (v20 >= v19)
        {
          goto LABEL_98;
        }
      }

      if (v64 == 4)
      {
        v22 = v62;
        ClosingQuote = GetClosingQuote(v62);
        v24 = v66;
        std::string::erase(&v68, 0, 0xFFFFFFFFFFFFFFFFLL);
        v25 = v24 + v20;
        if (v25 < v19)
        {
          while (1)
          {
            ClassifyCharacter(a5, v25, &v64, &v66, &v62);
            if (v64 != 4)
            {
              break;
            }

            v26 = v62;
            v27 = v62 == v22 || v62 == ClosingQuote;
            if (!v27 && (v22 != 12317 || (v62 & 0xFFFFFFFFFFFFFFFELL) != 0x301E))
            {
              break;
            }

            v28 = v66;
            v29 = v66 + v25;
            if (v66 + v25 >= v19)
            {
              v65 = 3;
              v67 = 0;
              v30 = 59;
              v63 = 59;
            }

            else
            {
              ClassifyCharacter(a5, v66 + v25, &v65, &v67, &v63);
              v30 = v63;
            }

            if (v26 != v30)
            {
              if (v26 == ClosingQuote || v22 == 12317 && (v26 & 0xFFFFFFFFFFFFFFFELL) == 0x301E)
              {
                goto LABEL_75;
              }

              std::string::basic_string[abi:fe200100]<0>(&__str, a5);
              std::string::append(&v68, &__str, v25, v28);
              goto LABEL_45;
            }

            std::string::basic_string[abi:fe200100]<0>(&__str, a5);
            std::string::append(&v68, &__str, v25, v28);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v25 += v67;
LABEL_47:
            v25 += v28;
            v29 = v25;
            if (v25 >= v19)
            {
              goto LABEL_75;
            }
          }

          std::string::basic_string[abi:fe200100]<0>(&__str, a5);
          v28 = v66;
          std::string::append(&v68, &__str, v25, v66);
LABEL_45:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_47;
        }

        v29 = v25;
      }

      else
      {
        v29 = v20;
        if (v20 < v19)
        {
          v29 = v20;
          do
          {
            ClassifyCharacter(a5, v29, &v64, &v66, &v62);
            v32 = (v7 & 0x10000000) == 0 || v64 != 2;
            if ((v64 & 0xFFFFFFFB) != 0 && v32)
            {
              if (v64 != 1)
              {
                break;
              }

              v33 = v66 + v29;
              if (v66 + v29 >= v19)
              {
                break;
              }

              ClassifyCharacter(a5, v66 + v29, &v65, &v67, &v63);
              v34 = (v7 & 0x10000000) != 0 && v65 == 2;
              v35 = !v34;
              if ((v65 & 0xFFFFFFFB) != 0 && v35)
              {
                break;
              }
            }

            else
            {
              v33 = v66 + v29;
            }

            v29 = v33;
          }

          while (v33 < v19);
        }

        std::string::basic_string[abi:fe200100]<0>(&__str, a5);
        std::string::assign(&v68, &__str, v20, v29 - v20);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

LABEL_75:
      if (v55 != v54)
      {
        break;
      }

      v36 = 0;
LABEL_94:
      __str.__r_.__value_.__r.__words[0] = 0;
      if (v36 == v56)
      {
        operator new();
      }

      if (v36 >= (v59 - __p) >> 3)
      {
        goto LABEL_114;
      }

      __str.__r_.__value_.__r.__words[0] = *(__p + v36);
      *(__p + v36) = 0;
      std::vector<IIO_Writer *>::push_back[abi:fe200100](v53, &__str);
      v20 = v29;
      if (v29 >= v19)
      {
        goto LABEL_98;
      }
    }

    v36 = 0;
    v37 = __p;
    v38 = (v59 - __p) >> 3;
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v68.__r_.__value_.__l.__size_;
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v68;
    }

    else
    {
      v40 = v68.__r_.__value_.__r.__words[0];
    }

    while (v38 != v36)
    {
      v41 = v37[v36];
      if (v41)
      {
        v42 = *(v41 + 63);
        v43 = v42;
        if ((v42 & 0x80u) != 0)
        {
          v42 = *(v41 + 48);
        }

        if (size == v42)
        {
          v46 = *(v41 + 40);
          v44 = v41 + 40;
          v45 = v46;
          v47 = (v43 >= 0 ? v44 : v45);
          if (!memcmp(v40, v47, size))
          {
            goto LABEL_94;
          }
        }
      }

      if (v21 == ++v36)
      {
        v36 = v21;
        goto LABEL_94;
      }
    }

LABEL_114:
    __break(1u);
    return;
  }

LABEL_98:
  if (v55 != v54)
  {
    v48 = 0;
    if (v56 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v56;
    }

    while (v48 < (v59 - __p) >> 3)
    {
      v50 = *(__p + v48);
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      if (v49 == ++v48)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_114;
  }

LABEL_106:
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  __p = v61;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }
}

void sub_18613E960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(a1);
}

void XMPUtils::ApplyTemplate(XMPUtils *this, XMPMeta *a2, const XMPMeta *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (!sUseNewCoreAPIs)
  {
    v6 = a3 & 6;
    if ((a3 & 0x10) != 0 && (v7 = *(this + 38) - *(this + 37)) != 0)
    {
      v8 = v7 >> 3;
      while (1)
      {
        --v8;
        v9 = *(v5 + 37);
        if (v8 >= (*(v5 + 38) - v9) >> 3)
        {
          break;
        }

        v10 = *(v9 + 8 * v8);
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *(v10 + 16);
        }

        SchemaNode = FindSchemaNode(v4 + 224, v11, 0, 0, 0, 0);
        if (SchemaNode)
        {
          v13 = *(v10 + 80) - *(v10 + 72);
          if (v13)
          {
            v14 = SchemaNode;
            v15 = v13 >> 3;
            while (1)
            {
              --v15;
              v16 = *(v10 + 72);
              if (v15 >= (*(v10 + 80) - v16) >> 3)
              {
                goto LABEL_74;
              }

              v17 = *(v16 + 8 * v15);
              if ((v3 & 1) == 0 && IsInternalProperty((v10 + 16), (v17 + 16)))
              {
                goto LABEL_20;
              }

              v18 = (v17 + 16);
              if (*(v17 + 39) < 0)
              {
                v18 = *v18;
              }

              if (FindChildNode(v14, v18, 0, 0))
              {
LABEL_20:
                if (!v15)
                {
                  break;
                }
              }

              else
              {
                (*(*v17 + 8))(v17);
                v19 = *(v10 + 72);
                v20 = *(v10 + 80);
                if (v20 == v19 + 8 * v15)
                {
                  goto LABEL_74;
                }

                v21 = v19 + 8 * v15;
                v22 = v20 - (v21 + 8);
                if (v20 != v21 + 8)
                {
                  memmove((v19 + 8 * v15), (v21 + 8), v20 - (v21 + 8));
                }

                *(v10 + 80) = v21 + v22;
                if (!v15)
                {
                  break;
                }
              }
            }
          }
        }

        else if (v3)
        {
          XMP_Node::RemoveChildren(v10);
        }

        else
        {
          v23 = *(v10 + 80) - *(v10 + 72);
          if (v23)
          {
            v24 = v23 >> 3;
            do
            {
              --v24;
              v25 = *(v10 + 72);
              if (v24 >= (*(v10 + 80) - v25) >> 3)
              {
                goto LABEL_74;
              }

              v26 = *(v25 + 8 * v24);
              if (!IsInternalProperty((v10 + 16), v26 + 2))
              {
                if (v26)
                {
                  (*(*v26 + 8))(v26);
                }

                v27 = *(v10 + 72);
                v28 = *(v10 + 80);
                if (v28 == v27 + 8 * v24)
                {
                  goto LABEL_74;
                }

                v29 = v27 + 8 * v24;
                v30 = v28 - (v29 + 8);
                if (v28 != v29 + 8)
                {
                  memmove((v27 + 8 * v24), (v29 + 8), v28 - (v29 + 8));
                }

                *(v10 + 80) = v29 + v30;
              }
            }

            while (v24);
          }
        }

        v5 = this;
        if (*(v10 + 72) == *(v10 + 80))
        {
          (*(*v10 + 8))(v10);
          v31 = *(this + 37);
          v32 = *(this + 38);
          if (v32 == v31 + 8 * v8)
          {
            break;
          }

          v33 = v31 + 8 * v8;
          v34 = v32 - (v33 + 8);
          if (v32 != v33 + 8)
          {
            memmove((v31 + 8 * v8), (v33 + 8), v32 - (v33 + 8));
          }

          *(this + 38) = v33 + v34;
          if (!v8)
          {
            goto LABEL_48;
          }
        }

        else if (!v8)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_48:
      if (!((v6 != 0) | ((v3 & 8) >> 3)))
      {
        return;
      }

      v35 = *(v4 + 38) - *(v4 + 37);
      if (!v35)
      {
        return;
      }

      v36 = 0;
      v37 = v35 >> 3;
      if (v37 <= 1)
      {
        v37 = 1;
      }

      v50 = v37;
      v51 = v4;
      while (1)
      {
        v38 = *(v4 + 37);
        if (v36 >= (*(v4 + 38) - v38) >> 3)
        {
          break;
        }

        v39 = *(v38 + 8 * v36);
        __dst = 0;
        v40 = (v39 + 16);
        if (*(v39 + 39) < 0)
        {
          v40 = *(v39 + 16);
        }

        v53 = FindSchemaNode(v5 + 224, v40, 0, &__dst, 0, 0);
        if (!v53)
        {
          operator new();
        }

        v41 = *(v39 + 80) - *(v39 + 72);
        if (v41)
        {
          v42 = 0;
          v43 = v41 >> 3;
          if (v43 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          do
          {
            v45 = *(v39 + 72);
            if (v42 >= (*(v39 + 80) - v45) >> 3)
            {
              goto LABEL_74;
            }

            v46 = *(v45 + 8 * v42);
            if ((v3 & 1) != 0 || !IsInternalProperty((v39 + 16), v46 + 2))
            {
              AppendSubtree(v46, v53, (v3 & 8) != 0, v6 != 0, ((v3 & 0x10) == 0) & (v3 >> 2));
            }
          }

          while (v44 != ++v42);
        }

        v5 = this;
        v4 = v51;
        if (*(v53 + 9) == *(v53 + 10))
        {
          (*(*v53 + 8))(v53);
          v47 = __dst;
          v48 = *(this + 38);
          if (v48 == __dst)
          {
            break;
          }

          v49 = v48 - (__dst + 8);
          if (v48 != __dst + 8)
          {
            memmove(__dst, __dst + 8, v48 - (__dst + 8));
          }

          *(this + 38) = &v47[v49];
        }

        if (++v36 == v50)
        {
          return;
        }
      }
    }

LABEL_74:
    __break(1u);
    return;
  }

  XMPUtils::ApplyTemplate_v2(this, a2, a3);
}

void AppendSubtree(const XMP_Node *a1, XMP_Node *a2, BOOL a3, _BOOL4 a4, _BOOL4 a5)
{
  __dst = 0;
  v10 = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    v10 = *v10;
  }

  ChildNode = FindChildNode(a2, v10, 0, &__dst);
  v12 = ChildNode;
  v13 = *(a1 + 2);
  v14 = v13 & 0x1F00;
  if ((v13 & 0x1F00) != 0)
  {
    if (*(a1 + 9) != *(a1 + 10))
    {
      goto LABEL_5;
    }

LABEL_16:
    if (a5 && ChildNode)
    {
LABEL_18:
      (*(*v12 + 8))(v12);
      v16 = __dst;
      v17 = *(a2 + 10);
      if (v17 == __dst)
      {
        goto LABEL_95;
      }

      v18 = v17 - (__dst + 8);
      if (v17 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v17 - (__dst + 8));
      }

      *(a2 + 10) = &v16[v18];
    }

    return;
  }

  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 63))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!ChildNode)
  {
    CloneSubtree(a1, a2, 1);
  }

  v15 = (v13 & 0x1F00) != 0 && a3;
  if (!v15 && a4)
  {
    std::string::operator=((ChildNode + 40), (a1 + 40));
    *(v12 + 2) = *(a1 + 2);
    XMP_Node::RemoveChildren(v12);
    XMP_Node::RemoveQualifiers(v12);
    CloneOffspring(a1, v12, 1);
    if ((*(v12 + 9) & 0x1F) != 0 && *(v12 + 9) == *(v12 + 10))
    {
      DeleteSubtree(__dst);
    }

    return;
  }

  if ((v13 & 0x1F00) == 0 || v14 != (*(ChildNode + 2) & 0x1F00))
  {
    return;
  }

  if (v14 == 256)
  {
    v19 = *(a1 + 10) - *(a1 + 9);
    if (v19)
    {
      v20 = 0;
      v21 = v19 >> 3;
      while (1)
      {
        v22 = *(a1 + 9);
        if (v20 >= (*(a1 + 10) - v22) >> 3)
        {
          goto LABEL_95;
        }

        AppendSubtree(*(v22 + 8 * v20), v12, a3, a4, a5);
        if (a5 && *(v12 + 9) == *(v12 + 10))
        {
          goto LABEL_18;
        }

        if (v21 == ++v20)
        {
          return;
        }
      }
    }

    return;
  }

  if ((v13 & 0x1000) != 0)
  {
    if (!a3)
    {
      AppendSubtree();
    }

    v32 = *(a1 + 10) - *(a1 + 9);
    if (!v32)
    {
      return;
    }

    v33 = 0;
    v34 = v32 >> 3;
    while (1)
    {
      v35 = *(a1 + 9);
      if (v33 >= (*(a1 + 10) - v35) >> 3)
      {
        goto LABEL_95;
      }

      v36 = *(v35 + 8 * v33);
      v37 = *(v36 + 96);
      if (v37 != *(v36 + 104))
      {
        v38 = *v37;
        v39 = (v38 + 16);
        v40 = *(v38 + 39);
        if (v40 < 0)
        {
          if (*(v38 + 24) != 8)
          {
            goto LABEL_60;
          }

          v39 = *v39;
        }

        else if (v40 != 8)
        {
          goto LABEL_60;
        }

        if (*v39 == 0x676E616C3A6C6D78)
        {
          v41 = LookupLangItem(v12, (v38 + 40));
          v42 = *(v36 + 63);
          if (v42 < 0)
          {
            v42 = *(v36 + 48);
          }

          if (v42)
          {
            if (v41 == -1)
            {
              v53 = *(v36 + 96);
              if (*(v36 + 104) != v53)
              {
                v54 = *v53;
                v55 = *v53 + 40;
                v56 = *(v54 + 63);
                if (v56 < 0)
                {
                  if (*(v54 + 48) != 9)
                  {
                    goto LABEL_92;
                  }

                  v55 = *v55;
                }

                else if (v56 != 9)
                {
                  goto LABEL_92;
                }

                v57 = *v55;
                v58 = *(v55 + 8);
                v59 = v57 == 0x6C75616665642D78 && v58 == 116;
                if (v59 && *(v12 + 9) != *(v12 + 10))
                {
                  operator new();
                }

LABEL_92:
                CloneSubtree(v36, v12, 1);
              }

LABEL_95:
              __break(1u);
              AppendSubtree();
            }

            if (a4)
            {
              v43 = *(v12 + 9);
              if (v41 >= ((*(v12 + 10) - v43) >> 3))
              {
                goto LABEL_95;
              }

              std::string::operator=((*(v43 + 8 * v41) + 40), (v36 + 40));
            }
          }

          else if (a5 && v41 != -1)
          {
            v44 = v41;
            v45 = *(v12 + 9);
            v46 = *(v12 + 10);
            if (v41 >= ((v46 - v45) >> 3))
            {
              goto LABEL_95;
            }

            v47 = *(v45 + 8 * v41);
            if (v47)
            {
              (*(*v47 + 8))(v47);
              v45 = *(v12 + 9);
              v46 = *(v12 + 10);
            }

            if (v46 == v45 + 8 * v44)
            {
              goto LABEL_95;
            }

            v48 = v45 + 8 * v44;
            v49 = v46 - (v48 + 8);
            if (v46 != v48 + 8)
            {
              memmove(v48, (v48 + 8), v46 - (v48 + 8));
              v45 = *(v12 + 9);
            }

            *(v12 + 10) = v48 + v49;
            if (v45 == v48 + v49)
            {
              (*(*v12 + 8))(v12);
              v50 = __dst;
              v51 = *(a2 + 10);
              if (v51 == __dst)
              {
                goto LABEL_95;
              }

              v52 = v51 - (__dst + 8);
              if (v51 != __dst + 8)
              {
                memmove(__dst, __dst + 8, v51 - (__dst + 8));
              }

              *(a2 + 10) = &v50[v52];
            }
          }
        }
      }

LABEL_60:
      if (v34 == ++v33)
      {
        return;
      }
    }
  }

  if ((v13 & 0x200) != 0)
  {
    v23 = *(a1 + 10) - *(a1 + 9);
    if (v23)
    {
      v24 = 0;
      v25 = v23 >> 3;
      while (1)
      {
        v26 = *(a1 + 9);
        if (v24 >= (*(a1 + 10) - v26) >> 3)
        {
          goto LABEL_95;
        }

        v27 = *(v26 + 8 * v24);
        v28 = *(v12 + 10) - *(v12 + 9);
        if (!v28)
        {
LABEL_46:
          CloneSubtree(v27, v12, 1);
        }

        v29 = 0;
        v30 = v28 >> 3;
        while (1)
        {
          v31 = *(v12 + 9);
          if (v29 >= (*(v12 + 10) - v31) >> 3)
          {
            goto LABEL_95;
          }

          if (ItemValuesMatch(v27, *(v31 + 8 * v29)))
          {
            break;
          }

          if (v30 == ++v29)
          {
            goto LABEL_46;
          }
        }

        if (++v24 == v25)
        {
          return;
        }
      }
    }
  }
}

void XMPUtils::RemoveProperties(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4)
{
  v4 = a4;
  if (sUseNewCoreAPIs)
  {

    XMPUtils::RemoveProperties_v2(this, a2, a3, a4);
    return;
  }

  if (!a2 || !a3)
  {
LABEL_49:
    XMPUtils::RemoveProperties();
  }

  if (*a3)
  {
    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Property name requires schema namespace";
      *(exception + 16) = 0;
    }

    *&__n[4] = 0;
    v34 = 0;
    v35 = 0;
    ExpandXPath(a2, a3, &__n[4]);
    __dst = 0;
    Node = FindNode(this + 224, &__n[4], 0, 0, &__dst);
    if (!Node)
    {
      goto LABEL_18;
    }

    if ((v4 & 1) == 0)
    {
      if (v34 == *&__n[4] || (v34 - *&__n[4]) <= 0x20)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (IsInternalProperty(*&__n[4], (*&__n[4] + 32)))
      {
LABEL_18:
        __dst = &__n[4];
        std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__dst);
        return;
      }
    }

    v8 = Node[8];
    (*(*Node + 8))(Node);
    v9 = __dst;
    v10 = v8[10];
    if (v10 != __dst)
    {
      v11 = v10 - (__dst + 8);
      if (v10 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v10 - (__dst + 8));
      }

      v8[10] = &v9[v11];
      DeleteEmptySchema(v8);
      goto LABEL_18;
    }

    goto LABEL_48;
  }

  if (*a2)
  {
    *&__n[4] = 0;
    if (FindSchemaNode(this + 224, a2, 0, &__n[4], 0, 0))
    {
      RemoveSchemaChildren(*&__n[4], v4 & 1);
    }

    if ((v4 & 0x800) != 0)
    {
      __dst = 0;
      *__n = 0;
      XMPMeta::GetNamespacePrefix(a2, &__dst, __n, v12);
      v13 = sRegisteredAliasMap + 8;
      v14 = *sRegisteredAliasMap;
      if (*sRegisteredAliasMap != sRegisteredAliasMap + 8)
      {
        do
        {
          v15 = (v14 + 4);
          if (*(v14 + 55) < 0)
          {
            v15 = *v15;
          }

          if (!strncmp(v15, __dst, *__n))
          {
            v32 = 0;
            v16 = FindNode(this + 224, v14 + 7, 0, 0, &v32);
            if (v16)
            {
              v17 = v16;
              v18 = v16;
              do
              {
                v19 = v18;
                v18 = *(v18 + 64);
              }

              while ((*(v18 + 8) & 0x80000000) == 0);
              if ((v4 & 1) != 0 || !IsInternalProperty((v18 + 16), (v19 + 16)))
              {
                v20 = v17[8];
                (*(*v17 + 8))(v17);
                v21 = v32;
                v22 = v20[10];
                if (v22 == v32)
                {
                  goto LABEL_48;
                }

                v23 = v22 - (v32 + 8);
                if (v22 != v32 + 8)
                {
                  memmove(v32, v32 + 8, v22 - (v32 + 8));
                }

                v20[10] = &v21[v23];
                DeleteEmptySchema(v20);
              }
            }
          }

          v24 = v14[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14[2];
              v26 = *v25 == v14;
              v14 = v25;
            }

            while (!v26);
          }

          v14 = v25;
        }

        while (v25 != v13);
      }
    }
  }

  else
  {
    v27 = *(this + 38);
    v28 = v27 - *(this + 37);
    if (v28)
    {
      v29 = v28 >> 3;
      v30 = (v27 - 8);
      do
      {
        --v29;
        RemoveSchemaChildren(v30, v4 & 1);
        v30 -= 8;
      }

      while (v29);
    }
  }
}

void sub_18613F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t RemoveSchemaChildren(char *__dst, char a2)
{
  v2 = *__dst;
  if ((*(*__dst + 8) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(v2 + 80);
  v5 = v4 - *(v2 + 72);
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v5 >> 3;
  v8 = v4 - 8;
  v9 = -v4;
  do
  {
    if ((a2 & 1) != 0 || (result = IsInternalProperty((v2 + 16), (*v8 + 16)), (result & 1) == 0))
    {
      result = *v8;
      if (*v8)
      {
        result = (*(*result + 8))(result);
      }

      v11 = *(v2 + 80);
      if (v11 == v8)
      {
        goto LABEL_20;
      }

      v12 = v9 + v11;
      if (v8 + 8 != v11)
      {
        result = memmove(v8, (v8 + 8), v9 + v11);
      }

      *(v2 + 80) = v8 + v12;
    }

    v8 -= 8;
    v9 += 8;
    --v7;
  }

  while (v7);
  if (*(v2 + 72) == *(v2 + 80))
  {
LABEL_14:
    v13 = *(v2 + 64);
    v14 = *(v13 + 80);
    if (v14 != __dst)
    {
      v15 = v14 - (__dst + 8);
      if (v14 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v14 - (__dst + 8));
      }

      *(v13 + 80) = &__dst[v15];
      v16 = *(*v2 + 8);

      return v16(v2);
    }

LABEL_20:
    __break(1u);
LABEL_21:
    RemoveSchemaChildren();
  }

  return result;
}

void XMPUtils::DuplicateSubtree(XMPUtils *this, const XMPMeta *a2, XMPMeta *__s1, char *a4, char *a5, char *a6, const char *a7)
{
  v8 = a6;
  v9 = a5;
  if (!sUseNewCoreAPIs)
  {
    memset(v55, 0, sizeof(v55));
    memset(v54, 0, sizeof(v54));
    if (__s1 && *__s1)
    {
      if (a4 && *a4)
      {
        v14 = "(dest != 0) && (destNS != 0) && (destRoot != 0)";
        v15 = 1800;
        if (a2 && a5 && a6)
        {
          if (!*a5)
          {
            v9 = __s1;
          }

          if (!*a6)
          {
            v8 = a4;
          }

          v16 = strcmp(__s1, "*");
          v17 = strcmp(v9, "*");
          if (v16)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          v19 = v18;
          if (this == a2 && v19)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v46 = "Can't duplicate tree onto itself";
            goto LABEL_90;
          }

          if (!(v17 | v16))
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v46 = "Use Clone for full tree to full tree";
            goto LABEL_90;
          }

          if (!v16)
          {
            ExpandXPath(v9, v8, v54);
            Node = FindNode(a2 + 224, v54, 0, 0, 0);
            if (!Node || (*(Node + 9) & 1) == 0)
            {
              exception = __cxa_allocate_exception(0x18uLL);
              *exception = 102;
              v46 = "Destination must be an existing struct";
              goto LABEL_90;
            }

            if (*(Node + 72) != *(Node + 80))
            {
              if ((a7 & 0x20000000) == 0)
              {
                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Destination must be an empty struct";
                goto LABEL_90;
              }

              XMP_Node::RemoveChildren(Node);
            }

            v25 = *(this + 38) - *(this + 37);
            if (v25)
            {
              v26 = 0;
              v27 = v25 >> 3;
              if (v27 <= 1)
              {
                v27 = 1;
              }

              v49 = v27;
              do
              {
                v28 = *(this + 37);
                if (v26 >= (*(this + 38) - v28) >> 3)
                {
                  goto LABEL_93;
                }

                v29 = *(v28 + 8 * v26);
                if (*(v29 + 80) != *(v29 + 72))
                {
                  if ((*(v29 + 80) - *(v29 + 72)) >> 3)
                  {
                    operator new();
                  }

                  goto LABEL_93;
                }
              }

              while (++v26 != v49);
            }

LABEL_74:
            v53[0] = v54;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v53);
            v54[0] = v55;
            std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v54);
            return;
          }

          if (v17)
          {
            ExpandXPath(__s1, a4, v55);
            ExpandXPath(v9, v8, v54);
            v20 = FindNode(this + 224, v55, 0, 0, 0);
            if (v20)
            {
              if (FindNode(a2 + 224, v54, 0, 0, 0))
              {
                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Destination subtree must not exist";
              }

              else
              {
                v21 = FindNode(a2 + 224, v54, 1, 0, 0);
                v22 = v21;
                if (v21)
                {
                  if (this == a2)
                  {
                    v23 = v21;
                    do
                    {
                      if (v23 == v20)
                      {
                        v42 = __cxa_allocate_exception(0x18uLL);
                        *v42 = 102;
                        v42[1] = "Destination subtree is within the source subtree";
                        *(v42 + 16) = 0;
                      }

                      v23 = *(v23 + 64);
                    }

                    while (v23);
                  }

                  std::string::operator=((v21 + 40), (v20 + 40));
                  *(v22 + 2) = *(v20 + 8);
                  CloneOffspring(v20, v22, 0);
                  goto LABEL_74;
                }

                exception = __cxa_allocate_exception(0x18uLL);
                *exception = 102;
                v46 = "Can't create destination root node";
              }
            }

            else
            {
              exception = __cxa_allocate_exception(0x18uLL);
              *exception = 102;
              v46 = "Can't find source subtree";
            }

LABEL_90:
            exception[1] = v46;
            *(exception + 16) = 0;
          }

          memset(v53, 0, sizeof(v53));
          ExpandXPath(__s1, a4, v53);
          v30 = FindNode(this + 224, v53, 0, 0, 0);
          v31 = v30;
          if (v30 && (*(v30 + 9) & 1) != 0)
          {
            if (*(a2 + 37) == *(a2 + 38))
            {
LABEL_56:
              __p[0] = 0;
              __p[1] = 0;
              v52 = 0;
              memset(__s, 0, sizeof(__s));
              v32 = *(v31 + 80) - *(v31 + 72);
              if (v32)
              {
                v33 = 0;
                v34 = v32 >> 3;
                if (v34 <= 1)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = v34;
                }

                while (1)
                {
                  v36 = *(v31 + 72);
                  if (v33 >= (*(v31 + 80) - v36) >> 3)
                  {
                    break;
                  }

                  v37 = *(v36 + 8 * v33);
                  v38 = std::string::find((v37 + 16), 58, 0);
                  if (v38 != -1)
                  {
                    v39 = v37 + 16;
                    if (*(v37 + 39) < 0)
                    {
                      v39 = *(v37 + 16);
                    }

                    MEMORY[0x186602530](__p, v39, v38);
                    if (v52 >= 0)
                    {
                      v41 = __p;
                    }

                    else
                    {
                      v41 = __p[0];
                    }

                    if (XMPMeta::GetNamespaceURI(v41, &__s[4], __s, v40))
                    {
                      if (FindSchemaNode(a2 + 224, *&__s[4], 1, 0, 0, 0))
                      {
                        operator new();
                      }

                      v43 = __cxa_allocate_exception(0x18uLL);
                      *v43 = 101;
                      v43[1] = "Failed to find destination schema";
                      *(v43 + 16) = 0;
                    }

                    v44 = __cxa_allocate_exception(0x18uLL);
                    *v44 = 101;
                    v44[1] = "Source field namespace is not global";
                    *(v44 + 16) = 0;
                  }

                  if (v35 == ++v33)
                  {
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    goto LABEL_73;
                  }
                }

LABEL_93:
                __break(1u);
                return;
              }

LABEL_73:
              __p[0] = v53;
              std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__p);
              goto LABEL_74;
            }

            if ((a7 & 0x20000000) != 0)
            {
              XMP_Node::RemoveChildren(a2 + 28);
              goto LABEL_56;
            }

            v47 = "Destination tree must be empty";
          }

          else
          {
            v47 = "Source must be an existing struct";
          }

          v48 = __cxa_allocate_exception(0x18uLL);
          *v48 = 102;
          v48[1] = v47;
          *(v48 + 16) = 0;
        }
      }

      else
      {
        v14 = "(sourceRoot != 0) && (*sourceRoot != 0)";
        v15 = 1799;
      }
    }

    else
    {
      v14 = "(sourceNS != 0) && (*sourceNS != 0)";
      v15 = 1798;
    }

    __assert_rtn("DuplicateSubtree", "XMPUtils-FileInfo.cpp", v15, v14);
  }

  {
    __cxa_bad_cast();
  }

  XMPUtils::DuplicateSubtree_v2(this, a2, __s1, a4, v9, v8, a7);
}

void sub_1861400D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char ***__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char **a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  __p = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  a19 = &a22;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  a22 = &a25;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t CodePointToUTF8(unint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (a1 >= 0x80)
  {
    v4 = 0;
    do
    {
      v5 = a1;
      *(v10 + v4 + 7) = a1 & 0x3F | 0x80;
      a1 >>= 6;
      --v4;
    }

    while (v5 > 0x3F);
    if ((v4 + 1) <= 0xFFFFFFFFFFFFFFFALL)
    {
      CodePointToUTF8();
    }

    if ((v5 & 0x3F) != 0)
    {
      v6 = 0;
      do
      {
        ++v6;
        v7 = v5 > 1;
        v5 >>= 1;
      }

      while (v7);
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= v4 + 7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 9;
    }

    v3 = v4 - v8 + 16;
    if (v3 >= 7)
    {
      CodePointToUTF8();
    }

    v2 = v8 - v4 - 8;
    *(&v10[2] + v4 - v8) |= 255 << (v4 - v8 + 16);
  }

  else
  {
    HIBYTE(v10[0]) = a1;
    v2 = 1;
    v3 = 7;
  }

  return MEMORY[0x186602530](a2, v10 + v3, v2);
}

uint64_t ItemValuesMatch(const XMP_Node *a1, const XMP_Node *a2)
{
  v4 = *(a1 + 2);
  if ((v4 & 0x1F00) == 0x100)
  {
    v28 = *(a1 + 9);
    v27 = *(a1 + 10);
    if (v27 - v28 != *(a2 + 10) - *(a2 + 9))
    {
      return 0;
    }

    if (v27 != v28)
    {
      v29 = 0;
      v30 = (v27 - v28) >> 3;
      while (1)
      {
        v31 = *(a1 + 9);
        if (v29 >= (*(a1 + 10) - v31) >> 3)
        {
          break;
        }

        v32 = *(v31 + 8 * v29);
        v33 = v32 + 16;
        if (v32[39] < 0)
        {
          v33 = *v33;
        }

        result = FindChildNode(a2, v33, 0, 0);
        if (!result)
        {
          return result;
        }

        if ((ItemValuesMatch(v32, result) & 1) == 0)
        {
          return 0;
        }

        if (v30 == ++v29)
        {
          return 1;
        }
      }

      goto LABEL_58;
    }

    return 1;
  }

  if ((v4 & 0x1F00) != 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    v35 = *(a1 + 10) - *(a1 + 9);
    if (v35)
    {
      v36 = 0;
      v37 = v35 >> 3;
      while (1)
      {
        v38 = *(a1 + 9);
        if (v36 >= (*(a1 + 10) - v38) >> 3)
        {
          goto LABEL_58;
        }

        v39 = *(a2 + 10) - *(a2 + 9);
        if (!v39)
        {
          return 0;
        }

        v40 = 0;
        v41 = *(v38 + 8 * v36);
        v42 = v39 >> 3;
        while (1)
        {
          v43 = *(a2 + 9);
          if (v40 >= (*(a2 + 10) - v43) >> 3)
          {
            goto LABEL_58;
          }

          if (ItemValuesMatch(v41, *(v43 + 8 * v40)))
          {
            break;
          }

          if (v42 == ++v40)
          {
            return 0;
          }
        }

        if (++v36 == v37)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v5 = *(a1 + 63);
  if (v5 >= 0)
  {
    v6 = *(a1 + 63);
  }

  else
  {
    v6 = *(a1 + 6);
  }

  v7 = *(a2 + 63);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 6);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? (a1 + 40) : *(a1 + 5);
  v10 = v8 >= 0 ? (a2 + 40) : *(a2 + 5);
  if (memcmp(v9, v10, v6) || (v4 & 0x40) != (*(a2 + 2) & 0x40))
  {
    return 0;
  }

  if ((v4 & 0x40) == 0)
  {
    return 1;
  }

  v11 = *(a1 + 12);
  if (*(a1 + 13) == v11 || (v12 = *(a2 + 12), *(a2 + 13) == v12))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    ItemValuesMatch();
  }

  v13 = *v11;
  v14 = *v12;
  v15 = *(v13 + 63);
  if (v15 >= 0)
  {
    v16 = *(v13 + 63);
  }

  else
  {
    v16 = *(v13 + 48);
  }

  v17 = *(v14 + 63);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v14 + 48);
  }

  if (v16 == v17)
  {
    v21 = *(v13 + 40);
    v19 = v13 + 40;
    v20 = v21;
    v22 = (v15 >= 0 ? v19 : v20);
    v25 = *(v14 + 40);
    v23 = v14 + 40;
    v24 = v25;
    v26 = (v18 >= 0 ? v23 : v24);
    if (!memcmp(v22, v26, v16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *std::vector<XMP_Node *>::__init_with_size[abi:fe200100]<XMP_Node **,XMP_Node **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<XMP_Node *>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_18614055C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<XMP_Node *>::__vallocate[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:fe200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void *std::__fill_n_BOOL[abi:fe200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:fe200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void XMPUtils::CatenateArrayItems_v2()
{
  __assert_rtn("CatenateArrayItems_v2", "XMPUtils-FileInfo.cpp", 901, "(separator != 0) && (quotes != 0) && (catedStr != 0)");
}

{
  __assert_rtn("CatenateArrayItems_v2", "XMPUtils-FileInfo.cpp", 900, "(schemaNS != 0) && (arrayName != 0)");
}

void XMPUtils::CatenateArrayItems()
{
  __assert_rtn("CatenateArrayItems", "XMPUtils-FileInfo.cpp", 1019, "(separator != 0) && (quotes != 0) && (catedStr != 0)");
}

{
  __assert_rtn("CatenateArrayItems", "XMPUtils-FileInfo.cpp", 1018, "(schemaNS != 0) && (arrayName != 0)");
}

void AppendSubtree()
{
  __assert_rtn("AppendSubtree", "XMPUtils-FileInfo.cpp", 800, "mergeCompound");
}

{
  __assert_rtn("AppendSubtree", "XMPUtils-FileInfo.cpp", 741, "(destNode == 0) || (! destNode->value.empty()) || (! destNode->children.empty())");
}

void CodePointToUTF8()
{
  __assert_rtn("CodePointToUTF8", "XMPUtils-FileInfo.cpp", 360, "(0 <= i) && (i <= 6)");
}

{
  __assert_rtn("CodePointToUTF8", "XMPUtils-FileInfo.cpp", 350, "(2 <= byteCount) && (byteCount <= 6)");
}

uint64_t PhotoDataUtils::GetNativeInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v7 = *(a4 + 8);
    v8 = *(a4 + 16);
    if (v7)
    {
      if (v8)
      {
        v9 = 0;
        while (a3 == 36867 || a3 == 306)
        {
          v10 = v7[v9];
          if (v10 != 58)
          {
            goto LABEL_10;
          }

LABEL_11:
          if (v8 == ++v9)
          {
            return 0;
          }
        }

        v10 = v7[v9];
LABEL_10:
        if ((v10 | 0x20) != 0x20)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      LODWORD(v9) = 0;
LABEL_16:
      if (v9 != v8)
      {
        v11 = TrimTrailingSpaces(v7, v8);
        *(a4 + 16) = v11;
        return v11 != 0;
      }
    }

    else if (v8)
    {
      PhotoDataUtils::GetNativeInfo();
    }

    return 0;
  }

  return result;
}

unint64_t PhotoDataUtils::GetNativeInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  IPTC_Manager::GetDataSet(a1, a2, a5, 0);
  v8 = v7;
  v9 = ignoreLocalText != 1 || v7 == 0;
  if (!v9 && (*(a1 + 46) & 1) == 0)
  {
    v10 = 0;
    v13 = 0uLL;
    while (1)
    {
      IPTC_Manager::GetDataSet(a1, a2, &v13, v10);
      v11 = !v13.n128_u32[1] || v13.n128_u64[1] == 0;
      if (v11 || (ReconcileUtils::IsASCII(v13.n128_u64[1], v13.n128_u32[1]) & 1) != 0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v10 = v8;
        break;
      }
    }

    if (v10 == v8)
    {
      return 0;
    }
  }

  return v8;
}

BOOL PhotoDataUtils::IsValueDifferent(uint64_t a1, const void **a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if (!ReconcileUtils::IsUTF8(*(a1 + 8), v4))
  {
    if ((ignoreLocalText & 1) == 0)
    {
      ReconcileUtils::LocalToUTF8(*(a1 + 8), *(a1 + 16), a3);
      goto LABEL_7;
    }

    return 0;
  }

  MEMORY[0x186602530](a3, *(a1 + 8), *(a1 + 16));
LABEL_7:
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if (v10 < 0)
  {
    v10 = a2[1];
  }

  if (v9 != v10)
  {
    return 1;
  }

  if (v8 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  return memcmp(v12, v13, v9) != 0;
}

unint64_t PhotoDataUtils::IsValueDifferent(PhotoDataUtils *this, const IPTC_Manager *a2, const IPTC_Manager *a3)
{
  v3 = a3;
  v19 = 0uLL;
  IPTC_Manager::GetDataSet(this, a3, &v19, 0);
  v7 = v6;
  if (v6)
  {
    v18 = 0uLL;
    IPTC_Manager::GetDataSet(a2, v3, &v18, 0);
    if (v7 == v8)
    {
      v9 = 0;
      memset(&v17, 0, sizeof(v17));
      memset(&__p, 0, sizeof(__p));
      while (1)
      {
        if (!ignoreLocalText || (*(this + 46) & 1) != 0 || (IPTC_Manager::GetDataSet(this, v3, &v19, v9), v19.n128_u32[1]) && v19.n128_u64[1] && (ReconcileUtils::IsASCII(v19.n128_u64[1], v19.n128_u32[1]) & 1) != 0)
        {
          IPTC_Manager::GetDataSet_UTF8(this, v3, &__p, v9);
          IPTC_Manager::GetDataSet_UTF8(a2, v3, &v17, v9);
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v11)
          {
            size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v17.__r_.__value_.__l.__size_;
            }

            if (v11 != size)
            {
              break;
            }

            v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v14 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
            if (memcmp(v13, v14, v11))
            {
              break;
            }
          }
        }

        if (v7 == ++v9)
        {
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v9 = v7;
          break;
        }
      }

      v7 = v9 != v7;
      if (v10 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 1;
    }
  }

  return v7;
}

void sub_186140EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::Import2WayExif (uint64_t a1, uint64_t a2)
{
  v149 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 73);
  v136 = 0;
  __src = 0;
  __len = 0;
  v135 = 0;
  ImportTIFF_StandardMappings(0, a1, a2);
  ImportTIFF_StandardMappings(2u, a1, a2);
  ImportTIFF_StandardMappings(3u, a1, a2);
  v5 = (*(*a1 + 24))(a1, 2, 42032, &v136);
  if (WORD1(v136) == 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1 && HIDWORD(v136) != 0)
  {
    ImportSingleTIFF(&v136, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "OwnerName");
  }

  v8 = (*(*a1 + 24))(a1, 2, 42033, &v136);
  if (WORD1(v136) == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1 && HIDWORD(v136) != 0)
  {
    ImportSingleTIFF(&v136, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "SerialNumber");
  }

  v11 = (*(*a1 + 24))(a1, 2, 42036, &v136);
  if (WORD1(v136) == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1 && HIDWORD(v136))
  {
    ImportSingleTIFF(&v136, v4, a2, "http://ns.adobe.com/exif/1.0/aux/", "Lens");
  }

  if (TXMPMeta<std::string>::GetProperty(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", 0, &v135) && (v135 & 0x200) != 0)
  {
    memset(__dst, 0, 24);
    *__str = 0;
    v147 = 0;
    v148 = 0;
    v13 = TXMPMeta<std::string>::CountArrayItems(a2, "http://cipa.jp/exif/1.0/", "LensSpecification");
    if (v13)
    {
      TXMPMeta<std::string>::GetArrayItem(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", 1, __dst, 0);
      if (v13 >= 2)
      {
        v14 = v13 - 1;
        v15 = 2;
        do
        {
          std::string::push_back(__dst, 32);
          TXMPMeta<std::string>::GetArrayItem(a2, "http://cipa.jp/exif/1.0/", "LensSpecification", v15, __str, 0);
          if (v148 >= 0)
          {
            v16 = __str;
          }

          else
          {
            v16 = *__str;
          }

          if (v148 >= 0)
          {
            v17 = HIBYTE(v148);
          }

          else
          {
            v17 = v147;
          }

          std::string::append(__dst, v16, v17);
          v15 = (v15 + 1);
          --v14;
        }

        while (v14);
      }
    }

    if (__dst[23] >= 0)
    {
      v18 = __dst;
    }

    else
    {
      v18 = *__dst;
    }

    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/aux/", "LensInfo", v18, 0x20000000);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(*__str);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v19 = (*(*a1 + 24))(a1, 3, 6, &v136);
  if (WORD1(v136) == 5)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1 && HIDWORD(v136) == 1)
  {
    v21 = (*(a1 + 16))(__src);
    v22 = (*(a1 + 16))(__src + 4);
    if (v22 >= 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = -v21;
    }

    if (v22 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = -v22;
    }

    if (v23 < 0)
    {
      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSAltitudeRef", "1", 0);
      v25 = -v23;
      goto LABEL_57;
    }

    if (v22 < 0)
    {
      v25 = -v21;
LABEL_57:
      memset(__dst, 0, 32);
      snprintf(__dst, 0x20uLL, "%lu/%lu", v25, v24);
      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSAltitude", __dst, 0);
    }
  }

  v26 = (*(*a1 + 24))(a1, 2, 36867, &v136);
  DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal");
  if (v26)
  {
    if (WORD1(v136) == 2 && !DoesPropertyExist)
    {
      ImportTIFF_Date(a1, &v136, a2, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal");
    }
  }

  v29 = (*(*a1 + 24))(a1, 0, 306, &v136);
  v30 = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/", "ModifyDate");
  if (v29)
  {
    if (WORD1(v136) == 2 && !v30)
    {
      ImportTIFF_Date(a1, &v136, a2, "http://ns.adobe.com/xap/1.0/", "ModifyDate");
    }
  }

  memset(__dst, 0, 24);
  *__str = 0;
  v32 = (*(*a1 + 24))(a1, 2, 36864, __dst);
  if (*&__dst[2] == 7)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  if (v33 == 1 && *&__dst[4] == 4)
  {
    v34 = strncmp(*&__dst[8], "0230", 4uLL) >> 31;
  }

  v35 = (*(*a1 + 56))(a1, 2, 34855, __str);
  v36 = v35;
  if (*__str < 0xFFFFu)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    if (v35 && (*__str < 0xFFFFu || !TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings")))
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
      TXMPMeta<std::string>::SetProperty_Int(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", *__str, 0);
    }

    goto LABEL_106;
  }

  v139 = 0;
  *v140 = 0;
  if ((*(*a1 + 56))(a1, 2, 34864, v140))
  {
    TXMPMeta<std::string>::SetProperty_Int(a2, "http://cipa.jp/exif/1.0/", "SensitivityType", *v140, 0);
    v38 = 0;
    v39 = 1;
    if (*v140 <= 7u)
    {
      if (((1 << v140[0]) & 0xE8) != 0)
      {
        v39 = 0;
        v38 = 34867;
      }

      else if (((1 << v140[0]) & 0x12) != 0)
      {
        v39 = 0;
        v38 = 34865;
      }

      else if (*v140 == 2)
      {
        v39 = 0;
        v38 = 34866;
      }
    }
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if ((*(*a1 + 56))(a1, 2, 34865, &v139))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "StandardOutputSensitivity", v139, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34866, &v139))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "RecommendedExposureIndex", v139, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34867, &v139))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeed", v139, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34868, &v139))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudeyyy", v139, 0);
  }

  if ((*(*a1 + 56))(a1, 2, 34869, &v139))
  {
    TXMPMeta<std::string>::SetProperty_Int64(a2, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudezzz", v139, 0);
  }

  if (v37)
  {
    TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
    TXMPMeta<std::string>::SetProperty_Int(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", *__str, 0);
    v40 = "PhotographicSensitivity";
    v41 = "http://cipa.jp/exif/1.0/";
    v42 = *__str;
LABEL_101:
    TXMPMeta<std::string>::SetProperty_Int(a2, v41, v40, v42, 0);
    goto LABEL_106;
  }

  if (v36)
  {
    if (*__str != 0xFFFF)
    {
      __assert_rtn("ImportTIFF_PhotographicSensitivity", "ReconcileTIFF.cpp", 2002, "valueTag34855 == 65535");
    }

    TXMPMeta<std::string>::SetProperty_Int(a2, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", 0xFFFFLL, 0);
  }

  if ((v39 & 1) == 0)
  {
    v91 = (*(*a1 + 24))(a1, 2, v38, __dst);
    v92 = *&__dst[2] == 4 ? v91 : 0;
    if (v92 == 1 && *&__dst[4] == 1)
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1024, "", 0);
      v42 = (*(a1 + 16))(*&__dst[8]);
      v40 = "ISOSpeedRatings[1]";
      v41 = "http://ns.adobe.com/exif/1.0/";
      goto LABEL_101;
    }
  }

LABEL_106:
  v43 = (*(*a1 + 24))(a1, 0, 315, &v136);
  if (((v43 | TXMPMeta<std::string>::DoesPropertyExist(a2, "http://purl.org/dc/elements/1.1/", "creator")) & 1) == 0 && (*(*a1 + 24))(a1, 2, 42032, &v136))
  {
    memset(__dst, 0, 24);
    v44 = __len;
    if (__len >= 0x17)
    {
      operator new();
    }

    __dst[23] = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst[v44] = 0;
    if (__dst[23] >= 0)
    {
      v45 = __dst;
    }

    else
    {
      v45 = *__dst;
    }

    TXMPMeta<std::string>::AppendArrayItem(a2, "http://purl.org/dc/elements/1.1/", "creator", 1024, v45, 0);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v46 = (*(*a1 + 24))(a1, 2, 36864, &v136);
  if (WORD1(v136) == 7)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v47 == 1 && HIDWORD(v136) == 4)
  {
    __dst[4] = 0;
    *__dst = 0;
    *__dst = *__src;
    __dst[4] = 0;
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "ExifVersion", __dst, 0);
  }

  v48 = (*(*a1 + 24))(a1, 2, 40960, &v136);
  if (WORD1(v136) == 7)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1 && HIDWORD(v136) == 4)
  {
    __dst[4] = 0;
    *__dst = 0;
    *__dst = *__src;
    __dst[4] = 0;
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "FlashpixVersion", __dst, 0);
  }

  v50 = (*(*a1 + 24))(a1, 2, 37121, &v136);
  if (WORD1(v136) == 7)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v51 == 1 && HIDWORD(v136) == 4)
  {
    ImportArrayTIFF_Byte(&v136, a2, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration");
  }

  if ((*(*a1 + 24))(a1, 2, 37510, &v136))
  {
    ImportTIFF_EncodedString(a1, &v136, a2, "UserComment", 1);
  }

  if ((*(*a1 + 24))(a1, 2, 34856, &v136))
  {
    ImportConversionTable(&v136, v4, a2, "OECF");
  }

  v52 = (*(*a1 + 24))(a1, 2, 37385, &v136);
  if (WORD1(v136) == 3)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  if (v53 == 1 && HIDWORD(v136) == 1)
  {
    v54 = bswap32(*__src) >> 16;
    if (v4)
    {
      v55 = *__src;
    }

    else
    {
      v55 = v54;
    }

    if (v55)
    {
      v56 = "True";
    }

    else
    {
      v56 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Fired", v56, 0);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Return", ImportTIFF_Flash(TIFF_Manager::TagInfo const&,BOOL,TXMPMeta<std::string> *,char const*,char const*)::sTwoBits[(v55 >> 1) & 3], 0);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Mode", ImportTIFF_Flash(TIFF_Manager::TagInfo const&,BOOL,TXMPMeta<std::string> *,char const*,char const*)::sTwoBits[(v55 >> 3) & 3], 0);
    if ((v55 & 0x20) != 0)
    {
      v57 = "True";
    }

    else
    {
      v57 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "Function", v57, 0);
    if ((v55 & 0x40) != 0)
    {
      v58 = "True";
    }

    else
    {
      v58 = "False";
    }

    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "Flash", "http://ns.adobe.com/exif/1.0/", "RedEyeMode", v58, 0);
  }

  if ((*(*a1 + 24))(a1, 2, 41484, &v136))
  {
    ImportConversionTable(&v136, v4, a2, "SpatialFrequencyResponse");
  }

  v59 = (*(*a1 + 24))(a1, 2, 41728, &v136);
  if (WORD1(v136) == 7)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60 == 1 && HIDWORD(v136) == 1)
  {
    ImportSingleTIFF_Byte(&v136, a2, "http://ns.adobe.com/exif/1.0/", "FileSource");
  }

  v61 = (*(*a1 + 24))(a1, 2, 41729, &v136);
  if (WORD1(v136) == 7)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v62 == 1 && HIDWORD(v136) == 1)
  {
    ImportSingleTIFF_Byte(&v136, a2, "http://ns.adobe.com/exif/1.0/", "SceneType");
  }

  if ((*(*a1 + 24))(a1, 2, 41730, &v136))
  {
    v63 = __src;
    v64 = __len;
    v65 = *(__src + 1);
    v66 = bswap32(*__src) >> 16;
    if (v4)
    {
      v67 = *__src;
    }

    else
    {
      v67 = v66;
    }

    *__str = 0;
    v147 = 0;
    LODWORD(v148) = 0;
    memset(__dst, 0, 24);
    snprintf(__str, 0x14uLL, "%d", v67);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Columns", __str, 0);
    v68 = __rev16(v65);
    if (v4)
    {
      v69 = v65;
    }

    else
    {
      v69 = v68;
    }

    snprintf(__str, 0x14uLL, "%d", v69);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Rows", __str, 0);
    v70 = v64 - 4;
    v71 = v69 * v67;
    if (v70 == v71)
    {
      TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", "CFAPattern", "http://ns.adobe.com/exif/1.0/", "Values", __dst);
      if (v71)
      {
        v72 = (v63 + 4);
        do
        {
          snprintf(__str, 0x14uLL, "%hu", *v72);
          if (__dst[23] >= 0)
          {
            v73 = __dst;
          }

          else
          {
            v73 = *__dst;
          }

          TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", v73, 1024, __str, 0);
          ++v72;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "CFAPattern");
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  if ((*(*a1 + 24))(a1, 2, 41995, &v136))
  {
    v74 = __src;
    v75 = __len;
    v76 = *__src;
    v77 = *(__src + 1);
    v78 = *(a1 + 73);
    v79 = bswap32(v76) >> 16;
    if (!*(a1 + 73))
    {
      LOWORD(v76) = v79;
    }

    *v140 = 0;
    v141 = 0;
    v142 = 0;
    snprintf(v140, 0x14uLL, "%d", v76);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Columns", v140, 0);
    v80 = __rev16(v77);
    if (v78)
    {
      v80 = v77;
    }

    snprintf(v140, 0x14uLL, "%d", v80);
    TXMPMeta<std::string>::SetStructField(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Rows", v140, 0);
    memset(__dst, 0, 24);
    TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription", "http://ns.adobe.com/exif/1.0/", "Settings", __dst);
    v84 = &v74[v75];
    v85 = (v74 + 4);
    *__str = 0;
    v147 = 0;
    v148 = 0;
    while (v85 < v84)
    {
      v86 = 0;
      v87 = v85;
      do
      {
        v88 = *v87++;
        ++v86;
      }

      while (v88);
      if (v87 > v84)
      {
        TXMPMeta<std::string>::DeleteProperty(a2, "http://ns.adobe.com/exif/1.0/", "DeviceSettingDescription");
        break;
      }

      FromUTF16(v85, v86, __str, *(a1 + 72), v81, v82, v83);
      if (__dst[23] >= 0)
      {
        v89 = __dst;
      }

      else
      {
        v89 = *__dst;
      }

      if (v148 >= 0)
      {
        v90 = __str;
      }

      else
      {
        v90 = *__str;
      }

      TXMPMeta<std::string>::AppendArrayItem(a2, "http://ns.adobe.com/exif/1.0/", v89, 1024, v90, 0);
      v85 = v87;
    }

    if (SHIBYTE(v148) < 0)
    {
      operator delete(*__str);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  v93 = (*(*a1 + 24))(a1, 3, 0, &v136);
  if (WORD1(v136) == 1)
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  if (v94 == 1 && HIDWORD(v136) == 4)
  {
    memset(__dst, 0, 20);
    snprintf(__dst, 0x14uLL, "%u.%u.%u.%u", *__src, *(__src + 1), *(__src + 2), *(__src + 3));
    TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/exif/1.0/", "GPSVersionID", __dst, 0);
  }

  if ((*(*a1 + 24))(a1, 3, 2, &v136))
  {
    ImportTIFF_GPSCoordinate(a1, &v136, a2, "GPSLatitude");
  }

  if ((*(*a1 + 24))(a1, 3, 4, &v136))
  {
    ImportTIFF_GPSCoordinate(a1, &v136, a2, "GPSLongitude");
  }

  v96 = (*(*a1 + 24))(a1, 3, 7, &v136);
  if (WORD1(v136) == 5)
  {
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  if (v97 == 1 && HIDWORD(v136) == 3)
  {
    v99 = *(a1 + 73);
    *__str = 0;
    v147 = 0;
    v148 = 0;
    if (((*(*a1 + 24))(a1, 3, 29, __str) & 1) != 0 || ((*(*a1 + 24))(a1, 2, 36867, __str) & 1) != 0 || (*(*a1 + 24))(a1, 2, 36868, __str))
    {
      v100 = v147[4];
      if (v100 == 58 || v100 == 45)
      {
        v101 = v147[7];
        if ((v101 == 58 || v101 == 45) && (v147[10] | 0x20) == 0x20)
        {
          v102 = 0;
          v103 = 0;
          v104 = *__src;
          v105 = *(__src + 1);
          v106 = *(__src + 2);
          v107 = *(__src + 3);
          v108 = *(__src + 4);
          v109 = bswap32(*__src);
          v110 = bswap32(v105);
          v111 = bswap32(v106);
          v112 = bswap32(v107);
          if ((v99 & 1) == 0)
          {
            v104 = v109;
          }

          v113 = bswap32(v108);
          if ((v99 & 1) == 0)
          {
            v105 = v110;
          }

          v114 = bswap32(*(__src + 5));
          if (v99)
          {
            v115 = *(__src + 5);
          }

          else
          {
            v106 = v111;
            v107 = v112;
            v108 = v113;
            v115 = v114;
          }

          v116 = v104 / v105;
          v117 = v116;
          v118 = v106 / v107;
          v119 = v108 / v115 + (v118 - v118) * 60.0 + (v116 - v116) * 3600.0;
          v120 = v119;
          v121 = (v119 - v119) * 1000000000.0 + 0.5;
          *&__dst[24] = 0x10000;
          do
          {
            v122 = v102;
            if (v103 == 4)
            {
              break;
            }

            v123 = v147[v103];
            v124 = v123 - 58;
            v102 = v123 + 10 * v122 - 48;
            ++v103;
          }

          while (v124 > 0xFFFFFFF5);
          v125 = 0;
          v126 = 0;
          *__dst = v122;
          do
          {
            v127 = v126;
            if (v125 == 2)
            {
              break;
            }

            v128 = v147[v125 + 5];
            v129 = v128 - 58;
            v126 = v128 + 10 * v127 - 48;
            ++v125;
          }

          while (v129 > 0xFFFFFFF5);
          v130 = 0;
          v131 = 0;
          *&__dst[4] = v127;
          do
          {
            v132 = v131;
            if (v130 == 2)
            {
              break;
            }

            v133 = v147[v130 + 8];
            v134 = v133 - 58;
            v131 = v133 + 10 * v132 - 48;
            ++v130;
          }

          while (v134 > 0xFFFFFFF5);
          *&__dst[8] = v132;
          *&__dst[12] = v117;
          *&__dst[16] = v118;
          *&__dst[20] = v120;
          v145 = v121;
          *&__dst[27] = 0;
          v144 = 0;
          TXMPMeta<std::string>::SetProperty_Date(a2, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", __dst, 0);
        }
      }
    }
  }

  if ((*(*a1 + 24))(a1, 3, 20, &v136))
  {
    ImportTIFF_GPSCoordinate(a1, &v136, a2, "GPSDestLatitude");
  }

  if ((*(*a1 + 24))(a1, 3, 22, &v136))
  {
    ImportTIFF_GPSCoordinate(a1, &v136, a2, "GPSDestLongitude");
  }

  if ((*(*a1 + 24))(a1, 3, 27, &v136))
  {
    ImportTIFF_EncodedString(a1, &v136, a2, "GPSProcessingMethod", 0);
  }

  if ((*(*a1 + 24))(a1, 3, 28, &v136))
  {
    ImportTIFF_EncodedString(a1, &v136, a2, "GPSAreaInformation", 0);
  }
}

void sub_1861429D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 89) < 0)
    {
      operator delete(*(v2 - 112));
    }

    if (v5 < 0)
    {
      operator delete(v4);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18614241CLL);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_StandardMappings(unsigned int a1, unsigned __int8 *a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v70 = a2[73];
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if (a1)
  {
    if (a1 == 3)
    {
      v4 = &sGPSInfoIFDMappings;
    }

    else
    {
      if (a1 != 2)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Invalid IFD for standard mappings";
        *(exception + 16) = 0;
      }

      v4 = &sExifIFDMappings;
    }
  }

  else
  {
    v4 = &sPrimaryIFDMappings;
  }

  v5 = *v4;
  if (v5 != 0xFFFF)
  {
    v6 = 0;
    do
    {
      v7 = &v4[16 * v6];
      v8 = *(v7 + 1);
      v9 = v8 == 1 || v7[1] == 2;
      v10 = *(v7 + 3);
      if (!*v10)
      {
        goto LABEL_136;
      }

      if (((*(*a2 + 24))(a2, a1, v5, &v73) & 1) == 0)
      {
        goto LABEL_136;
      }

      if (a2[74] == 1)
      {
        v11 = v75;
        v12 = (*(*a2 + 64))(a2);
        v13 = v74;
        if ((*(*a2 + 72))(a2) - v13 + v12 < v11)
        {
          goto LABEL_136;
        }
      }

      if (WORD1(v73) == 7)
      {
        v66 = 1265;
        v67 = "ImportTIFF_StandardMappings";
        v68 = "tagInfo.type != kTIFF_UndefinedType";
        goto LABEL_135;
      }

      if (WORD1(v73) - 14 < 0xFFFFFFF3)
      {
        v66 = 1197;
        v67 = "ImportTIFF_CheckStandardMapping";
        v68 = "(kTIFF_ByteType <= tagInfo.type) && (tagInfo.type <= kTIFF_LastType)";
        goto LABEL_135;
      }

      v14 = v7[1];
      if (v14 >= 0xE)
      {
        v66 = 1198;
        v67 = "ImportTIFF_CheckStandardMapping";
        v68 = "mapInfo.type <= kTIFF_LastType";
LABEL_135:
        __assert_rtn(v67, "ReconcileTIFF.cpp", v66, v68);
      }

      if (WORD1(v73) != v14)
      {
        v15 = kTIFF_IsIntegerType;
        if (kTIFF_IsIntegerType[v7[1]] == 1 || (v15 = kTIFF_IsRationalType, kTIFF_IsRationalType[v7[1]] == 1))
        {
          if ((v15[WORD1(v73)] & 1) == 0)
          {
            goto LABEL_136;
          }
        }

        else if (kTIFF_IsFloatType[v7[1]] != 1 || kTIFF_IsFloatType[WORD1(v73)] != 1)
        {
          goto LABEL_136;
        }
      }

      if (v8 != 1 || HIDWORD(v73) == 1)
      {
        v16 = *(v7 + 2);
        if (v9)
        {
          ImportSingleTIFF(&v73, v70, a3, v16, v10);
        }

        else if (WORD1(v73) <= 5u)
        {
          if (WORD1(v73) <= 2u)
          {
            if (WORD1(v73) == 1)
            {
              ImportArrayTIFF_Byte(&v73, a3, v16, v10);
            }

            else if (WORD1(v73) == 2)
            {
              v32 = TrimTrailingSpaces(v74, v75);
              LODWORD(v75) = v32;
              if (v32)
              {
                v33 = v74;
                v34 = v32;
                v35 = *(v74 + v32 - 1);
                IsUTF8 = ReconcileUtils::IsUTF8(v74, v32);
                if (v35)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = IsUTF8;
                }

                memset(__str, 0, sizeof(__str));
                *&v77 = 0;
                if (v37)
                {
                  v38 = &v33[v34];
                  goto LABEL_129;
                }

                if (IsUTF8)
                {
                  MEMORY[0x186602530](__str, v33, v75);
LABEL_123:
                  v65 = BYTE7(v77);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v33 = __str;
                  }

                  else
                  {
                    v33 = *__str;
                  }

                  if (SBYTE7(v77) < 0)
                  {
                    v65 = *&__str[8];
                  }

                  v38 = &v33[v65];
LABEL_129:
                  TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
                  while (v33 < v38)
                  {
                    TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v33, 0);
                    v33 += strlen(v33) + 1;
                  }
                }

                else if ((ignoreLocalText & 1) == 0)
                {
                  ReconcileUtils::LocalToUTF8(v33, v75, __str);
                  goto LABEL_123;
                }

                if (SBYTE7(v77) < 0)
                {
                  operator delete(*__str);
                }
              }
            }
          }

          else if (WORD1(v73) == 3)
          {
            v52 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v53 = 0;
              do
              {
                v54 = *(v52 + v53);
                v55 = bswap32(v54) >> 16;
                if (!v70)
                {
                  LOWORD(v54) = v55;
                }

                memset(__str, 0, sizeof(__str));
                LODWORD(v77) = 0;
                snprintf(__str, 0x14uLL, "%hu", v54);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v53;
              }

              while (v53 < HIDWORD(v73));
            }
          }

          else if (WORD1(v73) == 4)
          {
            v39 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v40 = 0;
              do
              {
                LODWORD(v41) = *(v39 + v40);
                v42 = bswap32(v41);
                if (v70)
                {
                  v41 = v41;
                }

                else
                {
                  v41 = v42;
                }

                memset(__str, 0, sizeof(__str));
                LODWORD(v77) = 0;
                snprintf(__str, 0x14uLL, "%lu", v41);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v40;
              }

              while (v40 < HIDWORD(v73));
            }
          }

          else
          {
            v21 = v74;
            TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
            if (HIDWORD(v73))
            {
              v22 = 0;
              do
              {
                LODWORD(v23) = *v21;
                LODWORD(v24) = v21[1];
                v25 = bswap32(*v21);
                v26 = bswap32(v24);
                if (v70)
                {
                  v23 = v23;
                }

                else
                {
                  v23 = v25;
                }

                if (v70)
                {
                  v24 = v24;
                }

                else
                {
                  v24 = v26;
                }

                v78 = 0;
                *__str = 0u;
                v77 = 0u;
                snprintf(__str, 0x28uLL, "%lu/%lu", v23, v24);
                TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                ++v22;
                v21 += 2;
              }

              while (v22 < HIDWORD(v73));
            }
          }
        }

        else if (WORD1(v73) > 9u)
        {
          switch(WORD1(v73))
          {
            case 0xAu:
              v59 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v60 = 0;
                do
                {
                  v61 = *v59;
                  v62 = v59[1];
                  v63 = bswap32(*v59);
                  v64 = bswap32(v62);
                  if (!v70)
                  {
                    v61 = v63;
                    v62 = v64;
                  }

                  v78 = 0;
                  *__str = 0u;
                  v77 = 0u;
                  snprintf(__str, 0x28uLL, "%ld/%ld", v61, v62);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v60;
                  v59 += 2;
                }

                while (v60 < HIDWORD(v73));
              }

              break;
            case 0xBu:
              v47 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v48 = 0;
                do
                {
                  v49 = *(v47 + v48);
                  v50 = COERCE_FLOAT(bswap32(LODWORD(v49)));
                  if (!v70)
                  {
                    v49 = v50;
                  }

                  memset(__str, 0, sizeof(__str));
                  *&v77 = 0;
                  TXMPUtils<std::string>::ConvertFromFloat("", __str, v49);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v51 = __str;
                  }

                  else
                  {
                    v51 = *__str;
                  }

                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v51, 0);
                  if (SBYTE7(v77) < 0)
                  {
                    operator delete(*__str);
                  }

                  ++v48;
                }

                while (v48 < HIDWORD(v73));
              }

              break;
            case 0xCu:
              v27 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v28 = 0;
                do
                {
                  v29 = *(v27 + v28);
                  v30 = COERCE_DOUBLE(bswap64(*&v29));
                  if (!v70)
                  {
                    v29 = v30;
                  }

                  memset(__str, 0, sizeof(__str));
                  *&v77 = 0;
                  TXMPUtils<std::string>::ConvertFromFloat("", __str, v29);
                  if ((SBYTE7(v77) & 0x80u) == 0)
                  {
                    v31 = __str;
                  }

                  else
                  {
                    v31 = *__str;
                  }

                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, v31, 0);
                  if (SBYTE7(v77) < 0)
                  {
                    operator delete(*__str);
                  }

                  ++v28;
                }

                while (v28 < HIDWORD(v73));
              }

              break;
          }
        }

        else
        {
          switch(WORD1(v73))
          {
            case 6u:
              v56 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v57 = 0;
                do
                {
                  v58 = *(v56 + v57);
                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%hd", v58);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v57;
                }

                while (v57 < HIDWORD(v73));
              }

              break;
            case 8u:
              v43 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v44 = 0;
                do
                {
                  v45 = *(v43 + v44);
                  v46 = bswap32(v45) >> 16;
                  if (!v70)
                  {
                    LOWORD(v45) = v46;
                  }

                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%hd", v45);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v44;
                }

                while (v44 < HIDWORD(v73));
              }

              break;
            case 9u:
              v17 = v74;
              TXMPMeta<std::string>::DeleteProperty(a3, v16, v10);
              if (HIDWORD(v73))
              {
                v18 = 0;
                do
                {
                  v19 = *(v17 + v18);
                  v20 = bswap32(v19);
                  if (!v70)
                  {
                    v19 = v20;
                  }

                  memset(__str, 0, sizeof(__str));
                  LODWORD(v77) = 0;
                  snprintf(__str, 0x14uLL, "%ld", v19);
                  TXMPMeta<std::string>::AppendArrayItem(a3, v16, v10, 1024, __str, 0);
                  ++v18;
                }

                while (v18 < HIDWORD(v73));
              }

              break;
          }
        }
      }

LABEL_136:
      ++v6;
      v5 = v4[16 * v6];
    }

    while (v5 != 0xFFFF);
  }
}