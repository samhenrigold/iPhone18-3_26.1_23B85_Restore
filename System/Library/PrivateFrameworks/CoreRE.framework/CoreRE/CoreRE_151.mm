re *re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(re::ecs2::ComponentTypeRegistry *a1)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(a1);
  re::ecs2::ComponentTypeRegistry::remove(v1, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  result = re::internal::destroyPersistent<re::ecs2::ComponentType<re::ecs2::AnchorComponent>>("deinitComponentType", 55, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
  return result;
}

re *re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::deinitComponentType(re::ecs2::ComponentTypeRegistry *a1)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(a1);
  re::ecs2::ComponentTypeRegistry::remove(v1, re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  result = re::internal::destroyPersistent<re::ecs2::ComponentType<re::ecs2::AnchorComponent>>("deinitComponentType", 55, re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
  return result;
}

re *re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(re::ecs2::ComponentTypeRegistry *a1)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(a1);
  re::ecs2::ComponentTypeRegistry::remove(v1, re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  result = re::internal::destroyPersistent<re::ecs2::ComponentType<re::ecs2::AnchorComponent>>("deinitComponentType", 55, re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
  return result;
}

re *re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(re::ecs2::ComponentTypeRegistry *a1)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(a1);
  re::ecs2::ComponentTypeRegistry::remove(v1, re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  result = re::internal::destroyPersistent<re::ecs2::ComponentType<re::ecs2::AnchorComponent>>("deinitComponentType", 55, re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchorComponent>::ComponentType(uint64_t a1, uint64_t a2, re::IntrospectionBase **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, a2, a5, a6);
  *v9 = &unk_1F5D014D8;
  *(v9 + 64) = 0;
  v10 = (v9 + 64);
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
  *(v9 + 72) = 0xFFFFFFFFLL;
  *(a1 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v9 + 24), 0xD0);
  {
    re::introspect<re::ecs2::AnchorComponent>(BOOL)::info = re::ecs2::introspect_AnchorComponent(a3, v25, v26, v27, v28, v29);
  }

  v11 = re::introspect<re::ecs2::AnchorComponent>(BOOL)::info;
  if (a3)
  {
    v12 = v11[6];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = v12[1];
        if (v14)
        {
          v15 = (v12 + 2);
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v31 = 2 * v13;
    v32 = v12;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v30);
    v17 = v11[6];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = (v17 + 2);
          do
          {
            v18 = 31 * v18 + v19;
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v31 = 2 * v18;
    v32 = v17;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v30);
  }

  return a1;
}

double re::ecs2::ComponentType<re::ecs2::AnchorComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::AnchorComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::AnchorComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::AnchorComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 208, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01968;
  *(v3 + 44) = 0;
  *(v3 + 33) = 0;
  *(v3 + 25) = 0;
  *(v3 + 41) = 0;
  *&result = 1065353216;
  *(v3 + 48) = xmmword_1E3047670;
  *(v3 + 64) = xmmword_1E3047680;
  *(v3 + 80) = xmmword_1E30476A0;
  *(v3 + 96) = xmmword_1E30474D0;
  *(v3 + 112) = xmmword_1E3047670;
  *(v3 + 128) = xmmword_1E3047680;
  *(v3 + 144) = xmmword_1E30476A0;
  *(v3 + 160) = xmmword_1E30474D0;
  *(v3 + 184) = 0;
  *(v3 + 176) = 0;
  *(v3 + 200) = 1;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::AnchorComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5D01548;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchorComponent>::doGetComponentIntrospectionInfo()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::AnchorComponent>(BOOL)::info = re::ecs2::introspect_AnchorComponent(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[151];
}

__n128 re::ecs2::ComponentType<re::ecs2::AnchorComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchorComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5D014D8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::AnchorComponent::~AnchorComponent(re::ecs2::AnchorComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::AnchorComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::AnchorComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5D01548;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::ComponentType(uint64_t a1, uint64_t a2, re::IntrospectionBase **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, a2, a5, a6);
  *v9 = &unk_1F5D015B8;
  *(v9 + 64) = 0;
  v10 = (v9 + 64);
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
  *(v9 + 72) = 0xFFFFFFFFLL;
  *(a1 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v9 + 24), 0x280);
  {
    re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info = re::ecs2::introspect_AnchoringComponent(a3, v25, v26, v27, v28, v29);
  }

  v11 = re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info;
  if (a3)
  {
    v12 = v11[6];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = v12[1];
        if (v14)
        {
          v15 = (v12 + 2);
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v31 = 2 * v13;
    v32 = v12;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v30);
    v17 = v11[6];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = (v17 + 2);
          do
          {
            v18 = 31 * v18 + v19;
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v31 = 2 * v18;
    v32 = v17;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v30);
  }

  return a1;
}

double re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::doMakeComponent@<X0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 640, 0);
  bzero(v2, 0x280uLL);
  ArcSharedObject::ArcSharedObject(v2, 0);
  v2[2] = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D010D0;
  *(v2 + 8) = 1;
  *(v2 + 3) = xmmword_1E3047670;
  *(v2 + 4) = xmmword_1E3047680;
  *(v2 + 5) = xmmword_1E30476A0;
  *(v2 + 6) = xmmword_1E30474D0;
  v2[14] = 0;
  v2[15] = 0;
  *(v2 + 128) = -1;
  *(v2 + 17) = xmmword_1E3062D70;
  *(v2 + 152) = -1;
  *(v2 + 156) = 0u;
  *(v2 + 172) = 0u;
  *(v2 + 47) = 0;
  v4 = re::DynamicString::setCapacity(v2 + 20, 0);
  *(v2 + 13) = 0u;
  *(v2 + 12) = 0u;
  v5 = re::DynamicString::setCapacity(v2 + 24, 0);
  *(v2 + 14) = 0u;
  *(v2 + 15) = xmmword_1E3047670;
  *(v2 + 16) = xmmword_1E3047680;
  *(v2 + 17) = xmmword_1E30476A0;
  *(v2 + 18) = xmmword_1E30474D0;
  v2[38] = 0x1000000FFLL;
  *(v2 + 78) = 1;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  result = re::DynamicString::setCapacity(v2 + 40, 0);
  *(v2 + 88) = 1;
  *(v2 + 368) = 0;
  *(v2 + 448) = 1;
  *(v2 + 113) = 1065353216;
  *(v2 + 464) = 0;
  *(v2 + 544) = 0;
  *(v2 + 624) = 0;
  *a1 = v2;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5D01628;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::doGetComponentIntrospectionInfo()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info = re::ecs2::introspect_AnchoringComponent(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[127];
}

__n128 re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5D015B8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::AnchoringComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::AnchoringComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5D01628;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneComponent>::ComponentType(uint64_t a1, uint64_t a2, re::IntrospectionBase **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, a2, a5, a6);
  *v9 = &unk_1F5D01698;
  *(v9 + 64) = 0;
  v10 = (v9 + 64);
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
  *(v9 + 72) = 0xFFFFFFFFLL;
  *(a1 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v9 + 24), 0x20);
  {
    re::introspect<re::ecs2::SceneComponent>(BOOL)::info = re::ecs2::introspect_SceneComponent(a3, v25, v26, v27, v28, v29);
  }

  v11 = re::introspect<re::ecs2::SceneComponent>(BOOL)::info;
  if (a3)
  {
    v12 = v11[6];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = v12[1];
        if (v14)
        {
          v15 = (v12 + 2);
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v31 = 2 * v13;
    v32 = v12;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v30);
    v17 = v11[6];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = (v17 + 2);
          do
          {
            v18 = 31 * v18 + v19;
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v31 = 2 * v18;
    v32 = v17;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v30);
  }

  return a1;
}

double re::ecs2::ComponentType<re::ecs2::SceneComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SceneComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SceneComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::SceneComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01708;
  *(v3 + 25) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SceneComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5D01790;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneComponent>::doGetComponentIntrospectionInfo()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::SceneComponent>(BOOL)::info = re::ecs2::introspect_SceneComponent(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[153];
}

__n128 re::ecs2::ComponentType<re::ecs2::SceneComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5D01698;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponent::~SceneComponent(re::ecs2::SceneComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::SceneComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SceneComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5D01790;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

uint64_t re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::ComponentType(uint64_t a1, uint64_t a2, re::IntrospectionBase **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, a2, a5, a6);
  *v9 = &unk_1F5D01800;
  *(v9 + 64) = 0;
  v10 = (v9 + 64);
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
  *(v9 + 72) = 0xFFFFFFFFLL;
  *(a1 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v9 + 24), 0x20);
  {
    re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info = re::ecs2::introspect_CoordinateSpaceDefinitionComponent(a3, v25, v26, v27, v28, v29);
  }

  v11 = re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info;
  if (a3)
  {
    v12 = v11[6];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = v12[1];
        if (v14)
        {
          v15 = (v12 + 2);
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v31 = 2 * v13;
    v32 = v12;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v30);
    v17 = v11[6];
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = (v17 + 2);
          do
          {
            v18 = 31 * v18 + v19;
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v31 = 2 * v18;
    v32 = v17;
    *v10 = v33;
    if (v31)
    {
      if (v31)
      {
      }
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v30);
  }

  return a1;
}

double re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01870;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5D018F8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::doGetComponentIntrospectionInfo()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info = re::ecs2::introspect_CoordinateSpaceDefinitionComponent(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[59];
}

__n128 re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5D01800;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::CoordinateSpaceDefinitionComponent::~CoordinateSpaceDefinitionComponent(re::ecs2::CoordinateSpaceDefinitionComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::CoordinateSpaceDefinitionComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::CoordinateSpaceDefinitionComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5D018F8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

re *re::internal::destroyPersistent<re::ecs2::ComponentType<re::ecs2::AnchorComponent>>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (*(*a3 + 16))(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::Collection<re::SharedPtr<re::ecs2::Scene>>::~Collection(void *a1)
{
  *a1 = &unk_1F5D01A70;
  v2 = a1 + 1;
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((a1 + 1));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  return a1;
}

void re::ecs2::SceneCollection::~SceneCollection(re::ecs2::SceneCollection *this)
{
  re::Collection<re::SharedPtr<re::ecs2::Scene>>::~Collection(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Entity *re::ecs2::SceneCollection::willClear(re::ecs2::Entity *this)
{
  if (*(this + 3))
  {
    v1 = this;
    v2 = 0;
    do
    {
      this = re::ecs2::Scene::setECSService(*(*(v1 + 5) + 8 * v2++), 0);
    }

    while (v2 < *(v1 + 3));
  }

  return this;
}

re::ecs2::Entity *re::ecs2::SceneCollection::willSet(void *a1, unint64_t a2, re::ecs2::Scene **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  if (v4 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::ecs2::Scene::setECSService(*(a1[5] + 8 * a2), 0);
  v7 = *a3;
  v8 = a1[6];

  return re::ecs2::Scene::setECSService(v7, v8);
}

void re::Collection<re::SharedPtr<re::ecs2::Scene>>::~Collection(void *a1)
{
  re::Collection<re::SharedPtr<re::ecs2::Scene>>::~Collection(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ComponentTypeBase::ComponentTypeBase(uint64_t a1, uint64_t a2, char a3, int a4)
{
  *a1 = &unk_1F5CD2AE8;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v7 = *a2;
  v8 = *(a2 + 8);
  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a4;
  *(a1 + 44) = a3;
  return a1;
}

re::Allocator *re::ecs2::ComponentTypeBase::makeAllocator(const char **this, const re::StringID *a2)
{
  v3 = re::Allocator::useMallocAllocator(this);
  if (v3)
  {
    goto LABEL_8;
  }

  if ((atomic_load_explicit(&_MergedGlobals_413, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&_MergedGlobals_413);
    if (v3)
    {
      re::ecs2::ComponentTypeBase::makeAllocator(re::StringID const&,unsigned long)::$_0::operator()(v3, v12);
      __cxa_guard_release(&_MergedGlobals_413);
    }
  }

  if (!dword_1EE1B6750 || (v4 = 0xBF58476D1CE4E5B9 * ((*this >> 31) ^ (*this >> 1)), v5 = *(qword_1EE1B6740 + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % dword_1EE1B6750)), v5 == 0x7FFFFFFF))
  {
LABEL_8:
    v7 = re::globalAllocators(v3);
    v8 = (*(*v7[2] + 32))(v7[2], 24, 8);
    result = re::Allocator::Allocator(v8, this[1], 1);
    *result = &unk_1F5CCF7F8;
  }

  else
  {
    v6 = qword_1EE1B6748;
    while (1)
    {
      v3 = re::StringID::operator==((v6 + 24 * v5 + 8), this);
      if (v3)
      {
        break;
      }

      v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_8;
      }
    }

    v10 = re::globalAllocators(v3);
    v11 = (*(*v10[2] + 32))(v10[2], 72, 8);
    return re::PageDebugAllocator::PageDebugAllocator(v11, this[1], 1, 0x400uLL);
  }

  return result;
}

void re::ecs2::ComponentTypeBase::makeAllocator(re::StringID const&,unsigned long)::$_0::operator()(uint64_t a1, const char *a2)
{
  dword_1EE1B6758 = 0;
  unk_1EE1B6738 = 0u;
  *&qword_1EE1B6748 = 0u;
  *algn_1EE1B675C = 0x7FFFFFFFLL;
  re::Defaults::stringValue(&v30, "DebugComponentPools", a2);
  if (v30 != 1)
  {
    return;
  }

  if (v32[0])
  {
    v2 = v32[1];
  }

  else
  {
    v2 = v32 + 1;
  }

  if (v32[0])
  {
    v3 = v32[0] >> 1;
  }

  else
  {
    v3 = LOBYTE(v32[0]) >> 1;
  }

  v28 = v2;
  v29 = v3;
  do
  {
    v4 = memchr(v2, 44, v3);
    v5 = v4 != 0;
    v6 = v4 != &v2[v3];
    v7 = v4 - v2;
    v8 = v5 && v6;
    if (v5 && v6)
    {
      v9 = v4 - v2;
    }

    else
    {
      v9 = v3;
    }

    v10 = re::Slice<char>::range(&v28, 0, v9);
    v12 = v11;
    v26 = 0;
    __s2 = &str_67;
    v13 = v26;
    v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) >> 27));
    v15 = v14 ^ (v14 >> 31);
    if (!dword_1EE1B6750)
    {
      LODWORD(v16) = 0;
LABEL_21:
      v23 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(&unk_1EE1B6738, v16, v15, &v26, &v26);
      ++dword_1EE1B6760;
      if ((v26 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_22:
      if (v26)
      {
      }

      goto LABEL_25;
    }

    v16 = v15 % dword_1EE1B6750;
    v17 = *(qword_1EE1B6740 + 4 * v16);
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    v18 = qword_1EE1B6748;
    v19 = __s2;
    while (1)
    {
      v20 = v18 + 24 * v17;
      v22 = *(v20 + 8);
      v21 = v20 + 8;
      if ((v22 ^ v13) <= 1)
      {
        v23 = *(v21 + 8);
        if (v23 == v19)
        {
          break;
        }

        v23 = strcmp(v23, v19);
        if (!v23)
        {
          break;
        }
      }

      v17 = *(v18 + 24 * v17) & 0x7FFFFFFF;
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    if (v13)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (v8)
    {
      v24 = v7 + 1;
    }

    else
    {
      v24 = v3;
    }

    v2 = re::Slice<char>::range(&v28, v24, v29);
    v3 = v25;
    v28 = v2;
    v29 = v25;
  }

  while (v25);
  if (v30 & 1) != 0 && v31 && (v32[0])
  {
    (*(*v31 + 40))();
  }
}

void *re::ecs2::Component::markDirty(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *(v2 + 32);
    }

    while (v2);
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = (*(*this + 40))(this);
      v6 = *(v4 + 288);
      v8[0] = v1[2];
      v8[1] = v5;
      v7 = re::EventBus::getTypeId<REComponentDidChangeEvent>();
      this = re::EventBus::publish(v6, v8[0], v7, v8, 0x10uLL, v5);
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t re::ecs2::Component::enqueueMarkDirty(uint64_t this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *(v2 + 32);
      }

      while (v2);
      v4 = *(v3 + 24);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          this = (*(*this + 240))(this, v1);
          *(v1 + 24) = 1;
        }
      }
    }
  }

  return this;
}

void *re::ecs2::Component::willSet(void *this)
{
  v1 = this[2];
  if (v1)
  {
    this = (*(*this + 40))(this);
    if (*(v1 + 376))
    {
      v2 = this;
      this = (v1 + 16);
      if (*(v1 + 16))
      {

        return realitykit_willSet(this, v1 + 376, v2);
      }
    }
  }

  return this;
}

void *re::ecs2::Component::didSet(void *this)
{
  v1 = this[2];
  if (v1)
  {
    this = (*(*this + 40))(this);
    if (*(v1 + 376))
    {
      v2 = this;
      this = (v1 + 16);
      if (*(v1 + 16))
      {

        return realitykit_didSet(this, v1 + 376, v2);
      }
    }
  }

  return this;
}

void *re::ecs2::Component::wasModified(void *this)
{
  v1 = this[2];
  if (v1)
  {
    v2 = this;
    v3 = (*(*this + 40))(this);
    if (*(v1 + 376) && *(v1 + 16))
    {
      realitykit_willSet(v1 + 16, v1 + 376, v3);
    }

    v4 = v2[2];
    this = (*(*v2 + 40))(v2);
    if (*(v4 + 376))
    {
      v5 = this;
      this = (v4 + 16);
      if (*(v4 + 16))
      {

        return realitykit_didSet(this, v4 + 376, v5);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::Component::adjustedIntroReleaseInfo@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*a1 + 40))(a1);
  *a2 = 0;
  return result;
}

void *re::ecs2::allocInfo_Component(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_414, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_414))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6780, "Component");
    __cxa_guard_release(&_MergedGlobals_414);
  }

  return &unk_1EE1B6780;
}

void re::ecs2::initInfo_Component(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0x6DAE480279BALL;
  v10[1] = "Component";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B6778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6778))
  {
    v7 = re::introspectionAllocator();
    v8 = (*(*v7 + 32))(v7, 16, 8);
    *v8 = 2;
    *(v8 + 8) = 0;
    qword_1EE1B6770 = v8;
    __cxa_guard_release(&qword_1EE1B6778);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B6770;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs29ComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs29ComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_SceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_415, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_415))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6830, "SceneComponent");
    __cxa_guard_release(&_MergedGlobals_415);
  }

  return &unk_1EE1B6830;
}

void re::ecs2::initInfo_SceneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x79292DCDFFD39BE2;
  v20[1] = "SceneComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B6818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6818))
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
    qword_1EE1B6820 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "requiresAnchoring";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B6828 = v18;
    __cxa_guard_release(&qword_1EE1B6818);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B6820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs214SceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::SceneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01708;
  *(v3 + 25) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D01708;
  *(v1 + 25) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs214SceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::Scene *re::ecs2::Scene::Scene(re::ecs2::Scene *this, const StringID *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5D01AE0;
  v4 = re::StringID::StringID((this + 32), a2);
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = this;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 35) = 0;
  *(this + 68) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  re::make::shared::object<re::EventBus>(v4, this + 36);
  *(this + 37) = 0;
  *(this + 304) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  v6 = re::ecs2::EntityFactory::instance(v5);
  re::ecs2::EntityFactory::make(&v15, v6, 4uLL);
  v7 = *(this + 13);
  v8 = v15;
  *(this + 13) = v15;
  if (v7)
  {

    v8 = *(this + 13);
  }

  *(v8 + 3) = this;
  *(v8 + 76) |= 0x80u;
  re::ecs2::Entity::updateSwiftObjectOwnership(v8);
  re::ecs2::EntityComponentCollection::add((*(this + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    re::ecs2::EntityComponentCollection::add((*(this + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v10 = *(this + 13);
  v11 = re::DynamicString::format(&v15, "%s_%llu", v9, a2->var1, *(v10 + 312));
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  v18 = 0;
  v19 = &str_67;
  v13 = re::StringID::operator=((v10 + 288), &v18);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  *(*(this + 13) + 304) |= 0x400u;
  return this;
}

re::ecs2::Scene *re::ecs2::Scene::Scene(re::ecs2::Scene *this, re::ecs2::Entity *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5D01AE0;
  v4 = *(a2 + 37);
  re::DynamicString::rfind(v20, &v21, 95);
  if (LOBYTE(v20[0]) == 1)
  {
    v6 = re::DynamicString::substr(&v17, &v21, 0, v20[1]);
    if (v18)
    {
      v7 = *&v19[7];
    }

    else
    {
      v7 = v19;
    }

    *(this + 4) = 0;
    *(this + 5) = &str_67;
    if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }
  }

  else
  {
    *(this + 4) = 0;
    *(this + 5) = &str_67;
  }

  if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  v8 = a2 + 8;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = this;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 35) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  re::make::shared::object<re::EventBus>(v8, this + 36);
  *(this + 37) = 0;
  *(this + 304) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  v9 = *(this + 13);
  *(v9 + 3) = this;
  re::ecs2::Entity::updateSwiftObjectOwnership(v9);
  v10 = *(this + 13);
  if (*(v10 + 72))
  {
    v11 = 0;
    do
    {
      v12 = re::ecs2::EntityComponentCollection::operator[](v10 + 48, v11);
      v13 = *v12;
      v14 = (*(**v12 + 40))(*v12);
      v15 = re::ecs2::SceneComponentTable::get((this + 200), v14);
      re::ecs2::SceneComponentCollectionBase::add(v15, v13);
      ++v11;
      v10 = *(this + 13);
    }

    while (v11 < *(v10 + 72));
  }

  return this;
}

void re::ecs2::Scene::~Scene(re::ecs2::Scene *this)
{
  v2 = *(this + 13);
  (*(*(v2 + 320) + 16))();
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v2 + 328);
  v3 = *(this + 13);
  *(v3 + 3) = 0;
  re::ecs2::Entity::updateSwiftObjectOwnership(v3);
  re::ecs2::Entity::updateIsActive_Subtree(*(this + 13));
  re::ecs2::SceneComponentTable::clear(this + 200);
  *(this + 10) = 0;
  ++*(this + 22);
  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::DynamicArray<unsigned long>::deinit(this + 112);
  v5 = *(this + 13);
  if (v5)
  {

    *(this + 13) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 64);
  re::StringID::destroyString((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::Scene::~Scene(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Entity *re::ecs2::Scene::setECSService(re::ecs2::Scene *a1, re::ecs2::Entity *a2)
{
  v98[5] = *MEMORY[0x1E69E9840];
  result = *(a1 + 7);
  if (result != a2)
  {
    if (result)
    {
      v5 = (*(*result + 32))(result);
      v6 = re::ServiceLocator::serviceOrNull<re::EventBus>(v5);
      if (v6)
      {
        v7 = v6;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 41), *(a1 + 42));
        *(a1 + 41) = 0;
        *(a1 + 42) = 0;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 43), *(a1 + 44));
        *(a1 + 43) = 0;
        *(a1 + 44) = 0;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 45), *(a1 + 46));
        *(a1 + 45) = 0;
        *(a1 + 46) = 0;
        v88 = a1;
        v8 = re::EventBus::getTypeId<RESceneWillRemoveEvent>();
        re::EventBus::publish(v7, a1, v8, &v88, 8uLL, 0);
      }

      v9 = *(a1 + 13);
      v10 = *(v9 + 344);
      if (v10)
      {
        v11 = *(v9 + 360);
        v12 = 8 * v10;
        do
        {
          if (*(*v11 + 304))
          {
            re::ecs2::Entity::sendDeactivateEvents(*v11, a1);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }

      v92 = 0;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v13 = *(a1 + 33);
      if (v13)
      {
        v14 = *(a1 + 35);
        v15 = &v14[v13];
        do
        {
          v16 = *v14;
          v90 = 0;
          ++v91;
          v17 = v16[48];
          if (v17)
          {
            v18 = v16[50];
            v19 = 8 * v17;
            do
            {
              v94 = *v18;
              if (*(*(v94 + 2) + 304))
              {
                re::DynamicArray<re::TransitionCondition *>::add(&v88, &v94);
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }

          (*(*v16 + 40))(v16, &v88);
          ++v14;
        }

        while (v14 != v15);
        v20 = *(a1 + 33);
        if (v20)
        {
          v21 = *(a1 + 35);
          v22 = 8 * v20;
          do
          {
            v23 = *v21++;
            (*(*v23 + 48))(v23, v23 + 368);
            v22 -= 8;
          }

          while (v22);
        }
      }

      v24 = (*(**(a1 + 7) + 304))(*(a1 + 7), *(a1 + 47));
      v25 = *(v24 + 144);
      if (v25)
      {
        v26 = *(v24 + 160);
        v27 = 8 * v25;
        do
        {
          v28 = *v26++;
          (*(*v28 + 56))(v28, a1);
          v27 -= 8;
        }

        while (v27);
      }

      v29 = (*(**(a1 + 7) + 32))(*(a1 + 7));
      v30 = *(a1 + 13);
      {
        v75 = v30;
        v30 = v75;
        if (v76)
        {
          re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0, v77, v78, v79, v80, v81);
          v30 = v75;
        }
      }

      if ((*(*v29 + 16))(v29, re::introspect<re::EventBus>(BOOL)::info, v30 + 288))
      {
        v31 = (*(**(a1 + 7) + 32))(*(a1 + 7));
        v32 = re::ServiceLocator::service<re::ServiceRegistry>(v31);
        re::StringID::StringID(&v87, (*(a1 + 13) + 288));
        {
          re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0, v82, v83, v84, v85, v86);
        }

        v33 = re::introspect<re::EventBus>(BOOL)::info;
        re::StringID::StringID(&v93, &v87);
        v94 = v33;
        v34 = re::StringID::StringID(&v95, &v93);
        if (*&v93.var0)
        {
          if (*&v93.var0)
          {
          }
        }

        *&v93.var0 = 0;
        v93.var1 = &str_67;
        v35 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v32 + 16, &v94);
        if (v95)
        {
          if (v95)
          {
          }
        }

        if (*&v87.var0)
        {
          if (*&v87.var0)
          {
          }
        }

        *&v87.var0 = 0;
        v87.var1 = &str_67;
      }

      result = v88;
      if (v88 && v92)
      {
        result = (*(*v88 + 40))(v88, v92);
      }
    }

    *(a1 + 7) = a2;
    v36 = *(a1 + 13);
    v37 = *(v36 + 344);
    if (v37)
    {
      v38 = *(v36 + 360);
      v39 = 8 * v37;
      do
      {
        v40 = *v38++;
        result = re::ecs2::Entity::updateIsActive_Subtree(v40);
        v39 -= 8;
      }

      while (v39);
    }

    if (a2)
    {
      v41 = (*(*a2 + 32))(a2);
      v42 = re::ServiceLocator::serviceOrNull<re::ServiceRegistry>(v41);
      if (v42)
      {
        re::ServiceRegistry::add<re::EventBus>(v42, *(a1 + 36), (*(a1 + 13) + 288));
        v43 = *(a1 + 36);
        v45 = re::globalAllocators(v44)[2];
        v98[0] = &unk_1F5CEC148;
        v98[3] = v45;
        v98[4] = v98;
        *(a1 + 41) = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v43, v98, 0, 0);
        *(a1 + 42) = v46;
        v47 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v98);
        v48 = *(a1 + 36);
        v49 = re::globalAllocators(v47)[2];
        v97[0] = &unk_1F5CF4680;
        v97[3] = v49;
        v97[4] = v97;
        *(a1 + 43) = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v48, v97, 0, 0);
        *(a1 + 44) = v50;
        v51 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v97);
        v52 = *(a1 + 36);
        v53 = re::globalAllocators(v51)[2];
        v96[0] = &unk_1F5CFED20;
        v96[3] = v53;
        v96[4] = v96;
        *(a1 + 45) = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v52, v96, 0, 0);
        *(a1 + 46) = v54;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v96);
      }

      v55 = (*(**(a1 + 7) + 304))(*(a1 + 7), *(a1 + 47));
      v56 = *(v55 + 144);
      if (v56)
      {
        v57 = *(v55 + 160);
        v58 = 8 * v56;
        do
        {
          v59 = *v57++;
          (*(*v59 + 48))(v59, a1);
          v58 -= 8;
        }

        while (v58);
      }

      v92 = 0;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v60 = *(a1 + 33);
      if (v60)
      {
        v61 = *(a1 + 35);
        v62 = &v61[v60];
        do
        {
          v63 = *v61;
          (*(**v61 + 24))(*v61, *v61 + 368);
          v90 = 0;
          ++v91;
          v64 = v63[48];
          if (v64)
          {
            v65 = v63[50];
            v66 = 8 * v64;
            do
            {
              v94 = *v65;
              if (*(*(v94 + 2) + 304))
              {
                re::DynamicArray<re::TransitionCondition *>::add(&v88, &v94);
              }

              ++v65;
              v66 -= 8;
            }

            while (v66);
          }

          (*(*v63 + 32))(v63, &v88);
          ++v61;
        }

        while (v61 != v62);
      }

      v67 = *(a1 + 13);
      v68 = *(v67 + 344);
      if (v68)
      {
        v69 = *(v67 + 360);
        v70 = 8 * v68;
        do
        {
          if (*(*v69 + 304))
          {
            re::ecs2::Entity::sendActivateEvents(*v69, a1);
          }

          ++v69;
          v70 -= 8;
        }

        while (v70);
      }

      if (!(*(**(a1 + 7) + 184))(*(a1 + 7)) && re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
      {
        re::ecs2::EntityComponentCollection::remove((*(a1 + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      v71 = (*(**(a1 + 7) + 32))(*(a1 + 7));
      v72 = re::ServiceLocator::serviceOrNull<re::EventBus>(v71);
      if (v72)
      {
        v73 = v72;
        v94 = a1;
        Type = re::EventBus::getTypeId<RESceneDidAddEvent>();
        re::EventBus::publish(v73, a1, Type, &v94, 8uLL, 0);
      }

      result = v88;
      if (v88)
      {
        if (v92)
        {
          return (*(*v88 + 40))(v88, v92);
        }
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Scene::addToAllEntitiesRecursively(uint64_t result, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = result;
    v4 = 0;
    v5 = 0xBF58476D1CE4E5B9;
    do
    {
      v6 = *(*(a2 + 32) + 8 * v4);
      v45 = v6;
      if (!*(v3 + 152) || (v7 = *(v6 + 312), v8 = 0x94D049BB133111EBLL * (((v7 ^ (v7 >> 30)) * v5) ^ (((v7 ^ (v7 >> 30)) * v5) >> 27)), v9 = v8 ^ (v8 >> 31), v10 = *(*(v3 + 160) + 4 * (v9 % *(v3 + 176))), v10 == 0x7FFFFFFF))
      {
LABEL_8:
        v12 = *(v3 + 128);
        re::DynamicArray<re::TransitionCondition *>::add((v3 + 112), &v45);
        v13 = v45;
        v44 = *(v45 + 312);
        memset(buf, 0, sizeof(buf));
        v14 = 0x94D049BB133111EBLL * (((v44 ^ (v44 >> 30)) * v5) ^ (((v44 ^ (v44 >> 30)) * v5) >> 27));
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v3 + 152, &v44, v14 ^ (v14 >> 31), buf);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v16 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 152, *&buf[8], *buf);
          v16[1] = v44;
          v16[2] = v12;
          v16[3] = v13;
          ++*(v3 + 192);
        }

        goto LABEL_10;
      }

      v11 = *(v3 + 168);
      while (*(v11 + 40 * v10 + 8) != v7)
      {
        v10 = *(v11 + 40 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_8;
        }
      }

      v28 = v5;
      v44 = v7;
      v29 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v3 + 152, &v44, v9, buf);
      v30 = v45;
      v31 = *(v3 + 168) + 40 * *&buf[12];
      v33 = *(v31 + 24);
      v32 = v31 + 24;
      log = *re::ecsCoreLogObjects(v29);
      v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v30 == v33)
      {
        v5 = v28;
        if (v34)
        {
          v41 = *(v45 + 296);
          v42 = *(v45 + 312);
          *buf = 136315394;
          *&buf[4] = v41;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          v38 = log;
          v39 = "Trying to add an entity to a scene twice: '%s' id=%llu";
          v40 = 22;
          goto LABEL_32;
        }
      }

      else
      {
        v5 = v28;
        if (v34)
        {
          v35 = *(v45 + 296);
          v36 = *(*v32 + 296);
          v37 = *(v45 + 312);
          *buf = 136315650;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          v47 = v37;
          v38 = log;
          v39 = "Trying to add second entity to a scene with same id: '%s' '%s' id=%llu";
          v40 = 32;
LABEL_32:
          _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
        }
      }

LABEL_10:
      if (*(v3 + 128) != *(v3 + 180))
      {
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "m_allEntitiesById.size() == m_allEntities.size()", "addToAllEntitiesRecursively", 402);
        _os_crash("assertion failure: (m_allEntitiesById.size() == m_allEntities.size()) ");
        __break(1u);
      }

      v17 = v45;
      *(v45 + 386) = 1;
      if (*(v17 + 72))
      {
        v18 = 0;
        do
        {
          v19 = re::ecs2::EntityComponentCollection::operator[](v17 + 48, v18);
          v20 = *v19;
          v21 = (*(**v19 + 40))(*v19);
          v22 = re::ecs2::SceneComponentTable::get((v3 + 200), v21);
          re::ecs2::SceneComponentCollectionBase::add(v22, v20);
          ++v18;
          v17 = v45;
          v23 = *(v45 + 72);
        }

        while (v18 < v23);
        *(v45 + 386) = 0;
        if (v23)
        {
          v24 = (*(v17 + 304) & 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = 0;
          do
          {
            v44 = *re::ecs2::EntityComponentCollection::operator[](v17 + 48, v25);
            v26 = (*(*v44 + 40))(v44);
            v27 = re::ecs2::SceneComponentTable::get((v3 + 200), v26);
            re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(buf, &v44);
            (*(*v27 + 32))(v27, buf);
            if (*buf)
            {
              if (v48)
              {
                (*(**buf + 40))();
              }
            }

            ++v25;
            v17 = v45;
          }

          while (v25 < *(v45 + 72));
        }
      }

      else
      {
        *(v17 + 386) = 0;
      }

      result = re::ecs2::Scene::addToAllEntitiesRecursively(v3, v17 + 328);
      ++v4;
    }

    while (v4 < *(a2 + 16));
  }

  return result;
}

double re::ecs2::Scene::sendAddAndActivateEvents(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 288);
  ++*(v3 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = &v5[v4];
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 304);
      v9 = *(a1 + 288);
      v29 = *v5;
      Type = re::EventBus::getTypeId<RESceneEntityDidAddEvent>();
      v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v9 + 3, &Type);
      if (v10 != -1)
      {
        v11 = *(*(v9 + 4) + 48 * v10 + 8);
        if (v11)
        {
          re::EventBus::EventInfo::addToBatch(v11, v9, v7, &v29, 8uLL, 0);
        }
      }

      if (v8)
      {
        v12 = *(a1 + 288);
        Type = v7;
        re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v12, v7, &Type, 0);
      }

      v13 = v7[9];
      if (v13)
      {
        v14 = v7[11];
        v15 = 8 * v13;
        do
        {
          v16 = (*(**v14 + 40))();
          v17 = *(a1 + 288);
          Type = v7;
          v28 = v16;
          v29 = re::EventBus::getTypeId<REComponentDidAddEvent>();
          v18 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v17 + 3, &v29);
          if (v18 != -1)
          {
            v19 = *(*(v17 + 4) + 48 * v18 + 8);
            if (v19)
            {
              re::EventBus::EventInfo::addToBatch(v19, v17, v7, &Type, 0x10uLL, v16);
            }
          }

          v14 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      if (v8)
      {
        v20 = v7[9];
        if (v20)
        {
          v21 = v7[11];
          v22 = 8 * v20;
          do
          {
            v23 = *v21++;
            v24 = (*(*v23 + 40))(v23);
            v25 = *(a1 + 288);
            Type = v7;
            v28 = v24;
            re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v25, v7, &Type, v24);
            v22 -= 8;
          }

          while (v22);
        }
      }

      if (v7[43])
      {
        re::ecs2::Scene::sendAddAndActivateEvents(a1, (v7 + 41));
      }

      ++v5;
    }

    while (v5 != v6);
    v3 = *(a1 + 288);
  }

  return re::EventBus::endBatch(v3, a2);
}

void re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<RESceneEntityDidActivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 8uLL, a4);
  }
}

void re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<REComponentDidActivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 0x10uLL, a4);
  }
}

uint64_t re::ecs2::Scene::removeFromAllEntities(uint64_t result, uint64_t a2)
{
  if ((*(result + 304) & 1) == 0)
  {
    v4 = result;
    re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(result, a2, 1);
    re::ecs2::Scene::sendDeactivateAndRemoveEvents(v4, a2);
    re::ecs2::Scene::removeFromAllEntitiesRecursively(v4, a2);

    return re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(v4, a2, 0);
  }

  return result;
}

uint64_t re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(a2 + 32);
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      result = re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(v5, v8 + 328, a3);
      *(v8 + 387) = a3;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

double re::ecs2::Scene::sendDeactivateAndRemoveEvents(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 288);
  ++*(v3 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = v5 + 8 * v4;
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 304);
      if (*(*v5 + 344))
      {
        re::ecs2::Scene::sendDeactivateAndRemoveEvents(a1, (v7 + 41));
      }

      if (v8)
      {
        v9 = v7[9];
        if (v9)
        {
          v10 = v7[11];
          v11 = 8 * v9;
          do
          {
            v12 = *v10++;
            v13 = (*(*v12 + 40))(v12);
            v14 = *(a1 + 288);
            v26 = v7;
            v27 = v13;
            re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v14, v7, &v26, v13);
            v11 -= 8;
          }

          while (v11);
        }
      }

      v15 = v7[9];
      if (v15)
      {
        v16 = v7[11];
        v17 = 8 * v15;
        do
        {
          v18 = *v16++;
          v19 = (*(*v18 + 40))(v18);
          v20 = *(a1 + 288);
          v26 = v7;
          v27 = v19;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillRemoveEvent,void>(v20, v7, &v26, v19);
          v17 -= 8;
        }

        while (v17);
      }

      v21 = *(a1 + 288);
      if (v8)
      {
        v26 = v7;
        re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v21, v7, &v26, 0);
        v21 = *(a1 + 288);
      }

      v25 = v7;
      v26 = re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>();
      v22 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v21 + 3, &v26);
      if (v22 != -1)
      {
        v23 = *(*(v21 + 4) + 48 * v22 + 8);
        if (v23)
        {
          re::EventBus::EventInfo::addToBatch(v23, v21, v7, &v25, 8uLL, 0);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    v3 = *(a1 + 288);
  }

  return re::EventBus::endBatch(v3, a2);
}

uint64_t re::ecs2::Scene::removeFromAllEntitiesRecursively(uint64_t result, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  v53 = a2;
  while (1)
  {
    v4 = *(*(a2 + 32) + 8 * v3);
    v5 = re::ecs2::Scene::removeFromAllEntitiesRecursively(v2, v4 + 328);
    v6 = *(v4 + 72);
    v57 = 0;
    v54[1] = 0;
    v55 = 0;
    v54[0] = 0;
    v56 = 0;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v54, v6);
    ++v56;
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = re::ecs2::EntityComponentCollection::operator[](v4 + 48, i);
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v54, v8);
      }
    }

    v9 = v57;
    v10 = v55;
    if (*(v4 + 304))
    {
      if (!v55)
      {
        *(v4 + 386) = 1;
        goto LABEL_19;
      }

      v11 = 8 * v55;
      do
      {
        *v59 = *v9;
        v12 = (*(**v59 + 40))(*v59);
        v6 = re::ecs2::SceneComponentTable::get((v2 + 200), v12);
        re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(&v66, v59);
        (*(*v6 + 40))(v6, &v66);
        if (v66 && v68)
        {
          (*(*v66 + 40))();
        }

        ++v9;
        v11 -= 8;
      }

      while (v11);
      v9 = v57;
      v10 = v55;
    }

    *(v4 + 386) = 1;
    if (v10)
    {
      v13 = 8 * v10;
      do
      {
        v14 = *v9++;
        v6 = v14;
        v15 = (*(*v14 + 40))(v14);
        v16 = re::ecs2::SceneComponentTable::get((v2 + 200), v15);
        re::ecs2::SceneComponentCollectionBase::remove(v16, v14);
        v13 -= 8;
      }

      while (v13);
    }

LABEL_19:
    *(v4 + 386) = 0;
    re::ecs2::EntityComponentCollection::remove((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v66 = *(v4 + 312);
    v17 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v66);
    if (v17)
    {
      v6 = *v17;
      *v59 = *(v4 + 312);
      v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v59 ^ (*v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v59 ^ (*v59 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v2 + 152, v59, v18 ^ (v18 >> 31), &v66);
      v19 = HIDWORD(v66);
      if (HIDWORD(v66) != 0x7FFFFFFF)
      {
        v20 = *(v2 + 168);
        v21 = *(v20 + 40 * HIDWORD(v66)) & 0x7FFFFFFF;
        if (v67 == 0x7FFFFFFF)
        {
          *(*(v2 + 160) + 4 * DWORD2(v66)) = v21;
          v19 = HIDWORD(v66);
        }

        else
        {
          *(v20 + 40 * v67) = *(v20 + 40 * v67) & 0x80000000 | v21;
        }

        *(v20 + 40 * v19) = *(v2 + 188);
        --*(v2 + 180);
        v22 = *(v2 + 192) + 1;
        *(v2 + 188) = v19;
        *(v2 + 192) = v22;
      }

      re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v2 + 112, v6);
      if (v6 < *(v2 + 128))
      {
        *&v66 = *(*(*(v2 + 144) + 8 * v6) + 312);
        v23 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v66);
        if (!v23)
        {
          goto LABEL_39;
        }

        *v23 = v6;
      }
    }

    v25 = *(v4 + 344);
    if (v25)
    {
      break;
    }

LABEL_36:
    result = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v54);
    ++v3;
    a2 = v53;
    if (v3 >= *(v53 + 16))
    {
      return result;
    }
  }

  v26 = *(v4 + 360);
  v27 = &v26[v25];
  while (1)
  {
    if (*(v2 + 152))
    {
      v28 = *(*v26 + 312);
      v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
      v30 = *(*(v2 + 160) + 4 * ((v29 ^ (v29 >> 31)) % *(v2 + 176)));
      if (v30 != 0x7FFFFFFF)
      {
        break;
      }
    }

LABEL_35:
    if (++v26 == v27)
    {
      goto LABEL_36;
    }
  }

  v31 = *(v2 + 168);
  while (*(v31 + 40 * v30 + 8) != v28)
  {
    v30 = *(v31 + 40 * v30) & 0x7FFFFFFF;
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_35;
    }
  }

  __CALLER_IS_PARENTING_AN_ENTITY_TO_AN_ENTITY_BEING_REMOVED__(v4, *v26);
LABEL_39:
  v32 = *(v2 + 128);
  if (v32 != *(v2 + 180))
  {
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) m_allEntities and m_allEntitiesById somehow got out of sync", "m_allEntities.size() == m_allEntitiesById.size()", "removeFromAllEntitiesRecursively", 600);
    _os_crash("assertion failure: (m_allEntities.size() == m_allEntitiesById.size()) m_allEntities and m_allEntitiesById somehow got out of sync");
    __break(1u);
LABEL_62:
    v58 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    v60 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v61 = 789;
    v62 = 2048;
    v63 = v6;
    v64 = 2048;
    v65 = v32;
    _os_log_send_and_compose_impl(v44, &v58, &v66, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v51, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v33 = *(v2 + 184);
  if (v33)
  {
    v34 = 0;
    v35 = *(v2 + 168);
    while (1)
    {
      v36 = *v35;
      v35 += 10;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v2 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v34 == v33)
  {
LABEL_60:
    re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
    v41 = re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
    re::internal::assertLog(5, v42, "assertion failure: '%s' (%s:line %i) Could not find entityId %llu in m_allEntitiesById", "pair", "removeFromAllEntitiesRecursively", 609, *(*v41 + 312));
    _os_crash("assertion failure: (pair) Could not find entityId %llu in m_allEntitiesById", v48);
    __break(1u);
  }

  if (v32 <= v6)
  {
    goto LABEL_62;
  }

  v37 = *(v2 + 168);
  while (*(v37 + 40 * v34 + 24) != *(*(v2 + 144) + 8 * v6))
  {
    if (v33 <= v34 + 1)
    {
      v38 = v34 + 1;
    }

    else
    {
      v38 = *(v2 + 184);
    }

    while (v38 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if ((*(v37 + 40 * v34) & 0x80000000) != 0)
      {
        goto LABEL_57;
      }
    }

    LODWORD(v34) = v38;
LABEL_57:
    if (v34 == v33)
    {
      goto LABEL_60;
    }
  }

  v39 = v37 + 40 * v34;
  v40 = *(v39 + 8);
  v32 = (v39 + 8);
  if (v40 == *(*re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6) + 312))
  {
    goto LABEL_60;
  }

LABEL_66:
  re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
  v45 = *v32;
  v46 = re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
  re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Entity was found in m_allEntitiesById but had EntityID %llu (not the expected %llu). This indicates a corruption of the EntityId", "entityId == m_allEntities[index]->id()", "removeFromAllEntitiesRecursively", 605, v45, *(*v46 + 312));
  result = _os_crash("assertion failure: (entityId == m_allEntities[index]->id()) Entity was found in m_allEntitiesById but had EntityID %llu (not the expected %llu). This indicates a corruption of the EntityId", v49, v50);
  __break(1u);
  return result;
}

void re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<RESceneEntityWillDeactivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 8uLL, a4);
  }
}

unint64_t re::DynamicArray<re::ecs2::Entity *>::operator[](uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 8 * a2;
}

uint64_t __CALLER_IS_PARENTING_AN_ENTITY_TO_AN_ENTITY_BEING_REMOVED__(uint64_t a1, uint64_t a2)
{
  v4 = *re::ecsCoreLogObjects(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v6 = *(a1 + 387);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a1;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v6;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "Parent (%p): isBeingRemovedFromScene=%d", buf, 0x12u);
  }

  v7 = *re::ecsCoreLogObjects(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a2 + 387);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "Child (%p): isBeingRemovedFromScene=%d", buf, 0x12u);
  }

  v23 = 0;
  memset(buf, 0, sizeof(buf));
  v9 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = *(a2 + 296);
  v12 = *(a1 + 296);
  v14 = 136315906;
  v15 = v11;
  v16 = 2048;
  v17 = a2;
  v18 = 2080;
  v19 = v12;
  v20 = 2048;
  v21 = a1;
  _os_log_send_and_compose_impl(v10, &v23, buf, 80, &dword_1E1C61000, v9, 16, "Attempting to parent entity '%s' (%p) to '%s' (%p), but the new parent is currently being removed. Modifying the parent/children of an entity in an event handler while that entity is already being reparented is not supported.", &v14, 42);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void re::ecs2::Scene::setRequiresAnchoring(re::ecs2::Scene *this, uint64_t a2)
{
  v4 = *(this + 48);
  if (v4 != a2)
  {
    v37 = v2;
    v38 = v3;
    v5 = a2;
    if (a2)
    {
      v7 = *(this + 36);
      ++*(v7 + 12);
      v8 = *(this + 13);
      v9 = *(v8 + 344);
      if (v9)
      {
        v10 = *(v8 + 360);
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(v12, this, 0);
          v11 -= 8;
        }

        while (v11);
        v7 = *(this + 36);
      }

      re::EventBus::endBatch(v7, a2);
      LOBYTE(v4) = *(this + 48);
    }

    *(this + 49) = v4;
    *(this + 48) = v5;
    v13 = *(this + 13);
    v14 = *(v13 + 344);
    if (v14)
    {
      v15 = *(v13 + 360);
      v16 = 8 * v14;
      do
      {
        v17 = *v15++;
        re::ecs2::Entity::updateSceneDependentFlagsRecursively(v17);
        v16 -= 8;
      }

      while (v16);
    }

    if ((v5 & 1) == 0)
    {
      v18 = *(this + 36);
      ++*(v18 + 12);
      v19 = *(this + 13);
      v20 = *(v19 + 344);
      if (v20)
      {
        v21 = *(v19 + 360);
        v22 = 8 * v20;
        do
        {
          v23 = *v21++;
          re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(v23, this, 0);
          v22 -= 8;
        }

        while (v22);
        v18 = *(this + 36);
      }

      re::EventBus::endBatch(v18, a2);
    }

    v36 = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    v35 = 0;
    v24 = *(this + 33);
    if (v24)
    {
      v25 = *(this + 35);
      v26 = &v25[v24];
      do
      {
        v27 = *v25;
        v28 = (*v25)[48];
        if (v28)
        {
          v29 = v27[50];
          v30 = 8 * v28;
          do
          {
            v32 = *v29;
            if ((*(*(v32 + 16) + 304) & 0x86) == 2)
            {
              re::DynamicArray<re::TransitionCondition *>::add(v33, &v32);
            }

            ++v29;
            v30 -= 8;
          }

          while (v30);
          if (v34)
          {
            v31 = *v27;
            if (*(this + 48) == 1)
            {
              (*(v31 + 40))(v27, v33);
            }

            else
            {
              (*(v31 + 32))(v27, v33);
            }

            v34 = 0;
            ++v35;
          }
        }

        ++v25;
      }

      while (v25 != v26);
      if (v33[0])
      {
        if (v36)
        {
          (*(*v33[0] + 40))();
        }
      }
    }
  }
}

uint64_t re::ecs2::Scene::sendAddAndActivateComponentEvents(re::ecs2::Scene *this, re::ecs2::Entity *a2, const re::ecs2::ComponentTypeBase *a3)
{
  v6 = *(this + 36);
  v11 = a2;
  v12 = a3;
  Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
  result = re::EventBus::publish(v6, a2, Type, &v11, 0x10uLL, a3);
  if (*(a2 + 304))
  {
    v9 = *(this + 36);
    v11 = a2;
    v12 = a3;
    v10 = re::EventBus::getTypeId<REComponentDidActivateEvent>();
    return re::EventBus::publish(v9, a2, v10, &v11, 0x10uLL, a3);
  }

  return result;
}

uint64_t re::ecs2::Scene::setHiddenFromSwiftAPI(uint64_t this, uint64_t a2)
{
  if ((*(this + 50) & 1) == 0)
  {
    if (*(this + 56))
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Must hide a scene before adding it to an ECS service.", "m_ecsService == nullptr", "setHiddenFromSwiftAPI", 720, v2, v3);
      this = _os_crash("assertion failure: (m_ecsService == nullptr) Must hide a scene before adding it to an ECS service.");
      __break(1u);
    }

    else
    {
      *(this + 50) = 1;
    }
  }

  return this;
}

void re::ecs2::Scene::deprecatedAddSystem(void *a1, __n128 *a2)
{
  v14 = *a2;
  re::DynamicArray<re::TypeID>::indexOf((a1 + 8), &v14, v15);
  if ((v15[0] & 1) == 0)
  {
    v4 = re::DynamicArray<re::TypeID>::add((a1 + 8), a2);
  }

  v5 = a1[7];
  if (v5)
  {
    v6 = (*(*v5 + 280))(a1[7], v4);
    v7 = a1[47];
    v9 = v6 == v7;
    v8 = (v7 ^ v6) & 0xFFFFFF00000000;
    v9 = v9 && v8 == 0;
    if (v9)
    {
      v15[0] = a1;
      v12 = a1 + 1;
      (*(*v5 + 120))(v5, v15);
      v13 = (*(*v5 + 256))(v5);
      (*(*v5 + 112))(v5, v15, v13);
      if (v15[0])
      {
      }
    }

    v10 = (*(*v5 + 40))(v5);
    v11 = re::ecs2::SystemRegistry::registerSystem(v10, a2);
    (*(*v5 + 48))(v5, v11, 0xFFFFFFFFLL, a1[47]);
  }
}

void *re::ecs2::allocInfo_Scene(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_416, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_416))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B68C8, "Scene");
    __cxa_guard_release(&_MergedGlobals_416);
  }

  return &unk_1EE1B68C8;
}

void re::ecs2::initInfo_Scene(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 159404248;
  v8[1] = "Scene";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x18000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::Scene>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::Scene>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_Scene(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void anonymous namespace::enqueueECSLogicalUpdate(re::Scheduler *this, re::ecs2::Entity *a2)
{
  if (this && (*(this + 304) & 1) != 0)
  {
    do
    {
      v2 = this;
      this = *(this + 4);
    }

    while (this);
    v3 = *(v2 + 3);
    if (v3)
    {
      v4 = *(v3 + 56);
      v5 = *(v3 + 376);
      if (v4 && (v5 & 0xFFFFFF00000000) != 0)
      {
        v7 = (*(*v4 + 304))(v4, v5);
        v8 = *(v7 + 144);
        if (v8)
        {
          v9 = *(v7 + 160);
          v10 = 8 * v8;
          while (1)
          {
            v11 = *v9;
            if (!*(*v9 + 48))
            {
              break;
            }

            ++v9;
            v10 -= 8;
            if (!v10)
            {
              return;
            }
          }

          re::ecs2::System::queueToRun(v11, v5, 0.0);
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::TypeID>::indexOf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = std::__find[abi:nn200100]<re::TypeID const*,re::TypeID const*,re::TypeID,std::__identity>(*(a1 + 32), *(a1 + 32) + 16 * *(a1 + 16), a2);
  v6 = *(a1 + 32);
  if (result == v6 + 16 * *(a1 + 16))
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = (result - v6) >> 4;
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t std::__find[abi:nn200100]<re::TypeID const*,re::TypeID const*,re::TypeID,std::__identity>(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result != a2; result += 16)
  {
    if (*result == *a3 && *(result + 8) == *(a3 + 8) && *(result + 10) == HIWORD(*(a3 + 8)) && ((*(result + 12) ^ *(a3 + 12)) & 0xFFFFFF) == 0)
    {
      break;
    }
  }

  return result;
}

uint64_t re::EventBus::getEventInfo<RESceneEntityDidActivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RESceneEntityDidActivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getEventInfo<REComponentDidActivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REComponentDidActivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getEventInfo<RESceneEntityWillDeactivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RESceneEntityWillDeactivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

void *re::ecs2::allocInfo_CoordinateSpaceDefinitionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_417, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_417))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6970, "CoordinateSpaceDefinitionComponent");
    __cxa_guard_release(&_MergedGlobals_417);
  }

  return &unk_1EE1B6970;
}

void re::ecs2::initInfo_CoordinateSpaceDefinitionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x31B0986B663F7F78;
  v16[1] = "CoordinateSpaceDefinitionComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B6968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6968))
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
    qword_1EE1B6960 = v14;
    __cxa_guard_release(&qword_1EE1B6968);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B6960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234CoordinateSpaceDefinitionComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::CoordinateSpaceDefinitionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01870;
}

void re::internal::defaultConstructV2<re::ecs2::CoordinateSpaceDefinitionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D01870;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs234CoordinateSpaceDefinitionComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::SceneComponentTable::get(re::ecs2::SceneComponentTable *this, const re::ecs2::ComponentTypeBase *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (*(this + 3) <= v4)
  {
    re::DynamicArray<double>::resize(this + 8, v4 + 1);
  }

  else
  {
    result = *(*(this + 5) + 8 * v4);
    if (result)
    {
      return result;
    }
  }

  v6 = (*(*a2 + 40))(a2);
  v10 = v6;
  (*(*v6 + 56))(v6, *this);
  v7 = *(this + 3);
  if (v7 <= v4)
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
    v17 = v4;
    v18 = 2048;
    v19 = v7;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 5) + 8 * v4) = v6;
  re::DynamicArray<re::TransitionCondition *>::add((this + 48), &v10);
  return v10;
}

uint64_t re::ecs2::SceneComponentTable::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 64);
  if (v2)
  {
    v3 = *(this + 80);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      v6 = (*(*v5 + 56))(v5, 0);
      v7 = re::globalAllocators(v6)[2];
      (**v5)(v5);
      this = (*(*v7 + 40))(v7, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 24) = 0;
  ++*(v1 + 32);
  *(v1 + 64) = 0;
  ++*(v1 + 72);
  return this;
}

void *re::allocInfo_EventBus(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_418))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6A08, "EventBus");
    __cxa_guard_release(&_MergedGlobals_418);
  }

  return &unk_1EE1B6A08;
}

void re::initInfo_EventBus(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3A628DB734CLL;
  v8[1] = "EventBus";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_EventBus(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::EventBus>;
  *(this + 10) = re::internal::defaultDestruct<re::EventBus>;
  *(this + 11) = re::internal::defaultRetain<re::EventBus>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::EventBus>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::EventBus>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventBus>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::ecs2::Entity *re::ecs2::Entity::Entity(re::ecs2::Entity *this, uint64_t a2, unint64_t a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v6 = &unk_1F5D01B28;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  re::ecs2::EntityComponentCollection::EntityComponentCollection((v6 + 6), this, a3);
  *(this + 36) = 0;
  *(this + 37) = &str_67;
  *(this + 76) = 8202;
  *(this + 45) = 0;
  *(this + 46) = this;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 39) = a2;
  *(this + 40) = &unk_1F5D01158;
  *(this + 47) = 0;
  *(this + 96) = 0;
  *(this + 49) = -1;
  return this;
}

void re::ecs2::Entity::~Entity(re::ecs2::Entity *this)
{
  v3 = *(this + 2);
  v2 = this + 16;
  *(v2 + 72) |= 0x800u;
  if (v3)
  {
    realitykit_deinitObservation(v2);
  }

  (*(*(this + 40) + 16))(this + 320);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(this + 328);
  re::ecs2::EntityComponentCollection::clear(this + 6, v4);
  *(this + 76) = 0;
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(this + 40);
  re::StringID::destroyString((this + 288));
  re::ecs2::PackedTypeIDs::~PackedTypeIDs((this + 96));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 56);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::Entity::~Entity(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::Entity::setSwiftObject(re::ecs2::Entity *this, CFTypeRef cf)
{
  v2 = *(this + 47);
  *(this + 47) = cf;
  if (v2 != cf)
  {
    if (cf && v2)
    {
      v4 = *re::ecsCoreLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Cannot assign Swift object to entity. Another Swift object is already set. New Swift object is ignored.", v7, 2u);
      }
    }

    else if ((*(this + 305) & 2) != 0)
    {
      if (v2)
      {
        CFRelease(v2);
      }

      if (cf)
      {

        CFRetain(cf);
      }
    }

    else
    {
      v5 = this + 8;
      if (cf)
      {

        v6 = v5;
      }

      else
      {
      }
    }
  }
}

void re::ecs2::Entity::updateSwiftObjectOwnership(re::ecs2::Entity *this)
{
  v2 = *(this + 76);
  if ((v2 & 0x80) != 0 && *(this + 3) || (v3 = *(this + 4)) != 0)
  {
    v4 = v2 | 0x200;
    LODWORD(v3) = 1;
  }

  else
  {
    v4 = v2 & 0xFFFFFDFF;
  }

  *(this + 76) = v4;
  v5 = *(this + 47);
  if (v5)
  {
    if ((v2 & 0x200) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (((v3 ^ 1 | ((v2 & 0x200) >> 9)) & 1) == 0)
      {
        CFRetain(v5);
      }
    }

    else
    {
      v7 = this + 8;
      v8 = *(this + 47);

      CFRelease(v8);
    }
  }
}

void re::ecs2::Entity::setParentInternal(re::ecs2::Entity *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v6 = *(this + 4);
  if (v6 != a2)
  {
    v12 = this;
    v7 = this + 8;
    if (!a2)
    {
      v10 = dyld_program_sdk_at_least();
      v11 = *(this + 4);
      if (v10)
      {
        re::ecs2::EntityChildCollection::remove((v11 + 320), &v12);
      }

      else
      {
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::removeStable(v11 + 320, &v12);
      }

      goto LABEL_13;
    }

LABEL_3:
    v8 = (a2 + 320);
    if (*(a2 + 43) <= a3)
    {
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v8, &v12);
    }

    else
    {
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(v8, a3, &v12);
    }

LABEL_13:
    if (v12)
    {
    }

    return;
  }

  if (a2 && *(v6 + 43) > a3 && *re::ecs2::EntityComponentCollection::operator[](v6 + 320, a3) != this)
  {
    v12 = this;
    v9 = this + 8;
    goto LABEL_3;
  }
}

uint64_t re::Collection<re::SharedPtr<re::ecs2::Entity>>::removeStable(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(a1 + 40); *i != *a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 40);
  }

  if (i == (v3 + 8 * v4))
  {
    return 0;
  }

  v7 = (i - v3) >> 3;
  v8 = *(a1 + 32);
  v9 = *a2;
  v17 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  (*(*a1 + 32))(a1, v7, &v17);
  if (v8 == *(a1 + 32))
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = *(a1 + 40);
    while (*v14 != v17)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (v14 != (v11 + 8 * v12))
  {
    v7 = (v14 - v11) >> 3;
LABEL_20:
    re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(a1 + 8, v7);
    (*(*a1 + 56))(a1, v7, &v17);
    v15 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
LABEL_22:
  if (v17)
  {
  }

  return v15;
}

void re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v22 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  v7 = (*(*a1 + 24))(a1, a2, &v22);
  v8 = *(a1 + 24);
  if (v8 >= a2)
  {
    v10 = v8 + 1;
    if (v8 + 1 <= a2)
    {
      v23 = 0;
      memset(buf, 0, sizeof(buf));
      v19 = MEMORY[0x1E69E9C10];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24 = 136315906;
      v25 = "insert";
      v26 = 1024;
      if (v20)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v27 = 855;
      v28 = 2048;
      v29 = a2;
      v30 = 2048;
      v31 = v10;
      _os_log_send_and_compose_impl(v21, &v23, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    if (v8 >= *(a1 + 16))
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((a1 + 8), v8 + 1);
      v8 = *(a1 + 24);
    }

    v11 = *(a1 + 40);
    v12 = (v11 + 8 * v8);
    if (v8 <= a2)
    {
      v17 = v22;
      *v12 = v22;
      if (v17)
      {
        v18 = (v17 + 8);
      }
    }

    else
    {
      *v12 = *(v12 - 1);
      *(v12 - 1) = 0;
      if (v12 - 1 != (v11 + 8 * a2))
      {
        v13 = *(v12 - 1);
        v14 = v12 - 2;
        v15 = 8 * a2 - 8 * v8 + 8;
        do
        {
          v16 = *v14;
          *v14 = v13;
          v14[1] = v16;
          --v14;
          v15 += 8;
        }

        while (v15);
        v11 = *(a1 + 40);
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v11 + 8 * a2), v22);
    }

    ++*(a1 + 24);
    ++*(a1 + 32);
    (*(*a1 + 48))(a1, a2, &v22);
  }

  else
  {
    v9 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "void re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(size_t, const T &) [T = re::SharedPtr<re::ecs2::Entity>]";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a2;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willInsert(), not inserting", buf, 0x16u);
    }
  }

  if (v22)
  {
  }
}

void re::ecs2::Entity::removeFromSceneOrParent(re::ecs2::Entity *this)
{
  if ((*(this + 304) & 0x80) != 0)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        v5 = *(this + 3);
        v4 = (v2 + 8);
        (*(*v3 + 120))(v3, &v5);
        if (v5)
        {
        }
      }
    }
  }

  if (*(this + 4))
  {
    re::ecs2::Entity::setParentInternal(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  }
}

_anonymous_namespace_ *re::ecs2::Entity::findInHierarchyByName(_anonymous_namespace_ *a1, StringID *a2)
{
  v3 = a1;
  if (!re::StringID::operator==(a1 + 36, a2))
  {
    v4 = *(v3 + 43);
    if (v4)
    {
      v5 = *(v3 + 45);
      v6 = 8 * v4;
      while (1)
      {
        v7 = *v5;
        re::StringID::StringID(&v10, a2);
        v8 = re::ecs2::Entity::findInHierarchyByName(v7, &v10);
        v3 = v8;
        if (*&v10.var0)
        {
          if (*&v10.var0)
          {
          }
        }

        *&v10.var0 = 0;
        v10.var1 = &str_67;
        if (v3)
        {
          break;
        }

        ++v5;
        v6 -= 8;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void re::ecs2::Entity::setSelfEnabled(re::ecs2::Entity *this, int a2)
{
  v4 = *(this + 76);
  if (*(this + 47))
  {
    v5 = this + 16;
    if (*(this + 2))
    {
      realitykit_willSetWithString(v5, this + 376, "Entity.isEnabled");
    }
  }

  re::ecs2::Entity::setSelfEnabledForFlag(this, a2, 8);
  if (*(this + 47) && *(this + 2))
  {
    realitykit_didSetWithString(this + 16, this + 376, "Entity.isEnabled");
  }

  if ((v4 & 1) != (*(this + 76) & 1) && re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    re::packCharArrayToUInt64ForAriadne(*(this + 37), 0);

    kdebug_trace();
  }
}

double re::ecs2::Entity::setSelfEnabledForFlag(re::ecs2::Entity *this, int a2, int a3)
{
  v3 = *(this + 76);
  if (((a3 & ~v3) == 0) != a2)
  {
    v7 = *(this + 76);
    v8 = this;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(v9 + 3);
    if ((v3 & 1) != 0 && (a2 & 1) == 0)
    {
      re::ecs2::Entity::sendDeactivateEvents(this, *(v9 + 3));
      v7 = *(this + 76);
    }

    v11 = v3 & 1;
    v12 = v7 & ~a3;
    v13 = v7 | a3;
    if (!a2)
    {
      v13 = v12;
    }

    *(this + 76) = v13;
    re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    v15 = *(this + 76);
    if (v11 != (v15 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v10);
      if (v15)
      {

        return re::ecs2::Entity::sendActivateEvents(this, v10);
      }
    }
  }

  return result;
}

double re::ecs2::Entity::sendDeactivateEvents(re::ecs2::Entity *this, re::ecs2::Scene *a2)
{
  if (a2 && (*(this + 304) & 1) != 0 && (*(this + 387) & 1) == 0)
  {
    v4 = *(a2 + 36);
    ++*(v4 + 12);
    v5 = *(this + 43);
    if (v5)
    {
      v6 = *(this + 45);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        re::ecs2::Entity::sendDeactivateEvents(v8, a2);
        v7 -= 8;
      }

      while (v7);
      v4 = *(a2 + 36);
    }

    v17[0] = this;
    re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v4, this, v17, 0);
    v10 = *(this + 9);
    if (v10)
    {
      v11 = *(this + 11);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        v14 = (*(*v13 + 40))(v13);
        v15 = *(a2 + 36);
        v17[0] = this;
        v17[1] = v14;
        re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v15, this, v17, v14);
        v12 -= 8;
      }

      while (v12);
    }

    return re::EventBus::endBatch(*(a2 + 36), v9);
  }

  return result;
}

uint64_t re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(uint64_t this)
{
  v1 = *(this + 304);
  if ((~v1 & 0x2008) == 0 && ((v2 = *(this + 32)) == 0 || (v3 = *(v2 + 304), (v3 & 0x80) != 0) || (v3 & 2) != 0))
  {
    v4 = v1 | 2;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFD;
  }

  *(this + 304) = v4;
  if (((v1 >> 1) & 1) != (v4 & 2) >> 1)
  {
    v5 = *(this + 344);
    if (v5)
    {
      v6 = *(this + 360);
      v7 = 8 * v5;
      v8 = (v4 >> 1) & 1;
      do
      {
        this = *v6;
        if ((~*(*v6 + 304) & 0x2008) == 0)
        {
          this = re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this, v8);
        }

        v6 += 8;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsActive_Self(uint64_t this)
{
  v1 = *(this + 304);
  if ((v1 & 0x42) != 2 || (v1 & 0x14) == 16)
  {
    goto LABEL_10;
  }

  v3 = *(this + 32);
  if (!v3 || (*(v3 + 304) & 0x81) != 1)
  {
    v4 = *(this + 24);
    if (v4)
    {
      if (!*(v4 + 56))
      {
        v5 = v1 & 0xFFFFFFBE;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_10:
    v5 = v1 & 0xFFFFFFFE;
    goto LABEL_11;
  }

LABEL_9:
  v5 = v1 | 1;
LABEL_11:
  *(this + 304) = v5;
  return this;
}

uint64_t re::ecs2::Entity::onActivationChanged(re *a1, uint64_t a2)
{
  v3 = a1;
  v35[11] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v26 = 0;
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  v23[0] = v4;
  re::DynamicArray<float *>::setCapacity(v23, 0x10uLL);
  ++v25;
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v19[0] = v4;
  re::DynamicArray<float *>::setCapacity(v19, 1uLL);
  ++v21;
  v5 = *(v3 + 76);
  do
  {
    if (a2)
    {
      v6 = *(v3 + 9);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          if (v6 <= i)
          {
            v27 = 0;
            memset(v35, 0, 80);
            v15 = MEMORY[0x1E69E9C10];
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v28 = 136315906;
            *&v28[4] = "operator[]";
            v29 = 1024;
            if (v16)
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v30 = 797;
            v31 = 2048;
            v32 = i;
            v33 = 2048;
            v34 = v6;
            _os_log_send_and_compose_impl(v17, &v27, v35, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v28, 38, v18, v19[0]);
            _os_crash_msg();
            __break(1u);
          }

          *v28 = *(*(v3 + 11) + 8 * i);
          v8 = (*(**v28 + 40))(*v28);
          v9 = re::ecs2::SceneComponentTable::get((a2 + 200), v8);
          v35[0] = *v28;
          if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v9 + 51, v35) != -1)
          {
            v20 = 0;
            ++v21;
            re::DynamicArray<re::TransitionCondition *>::add(v19, v28);
            v10 = *v9;
            if (v5)
            {
              (*(v10 + 32))(v9, v19);
            }

            else
            {
              (*(v10 + 40))(v9, v19);
            }
          }

          v6 = *(v3 + 9);
        }
      }
    }

    if (*(v3 + 43) >= 1)
    {
      v11 = (*(v3 + 43) & 0x7FFFFFFFLL) + 1;
      do
      {
        v12 = re::ecs2::EntityComponentCollection::operator[](v3 + 320, v11 - 2);
        v13 = *v12;
        if ((~*(*v12 + 304) & 0x2008) == 0 && ((*(*v12 + 304) & 0x120) != 0x100 || (*(a2 + 48) & 1) == 0))
        {
          re::ecs2::Entity::updateIsActive_Self(*v12);
          v35[0] = v13;
          re::DynamicArray<re::TransitionCondition *>::add(v23, v35);
        }

        --v11;
      }

      while (v11 > 1);
    }

    if (!v24)
    {
      break;
    }

    v3 = *(v26 + 8 * v24-- - 8);
    ++v25;
  }

  while (v3);
  if (v19[0] && v22)
  {
    (*(*v19[0] + 40))();
  }

  result = v23[0];
  if (v23[0])
  {
    if (v26)
    {
      return (*(*v23[0] + 40))();
    }
  }

  return result;
}

double re::ecs2::Entity::sendActivateEvents(re::ecs2::Entity *this, re::ecs2::Scene *a2)
{
  if (a2 && (*(this + 304) & 1) != 0)
  {
    v4 = *(a2 + 36);
    ++*(v4 + 12);
    v5 = *(this + 9);
    if (v5)
    {
      v6 = *(this + 11);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        v9 = (*(*v8 + 40))(v8);
        v10 = *(a2 + 36);
        v17[0] = this;
        v17[1] = v9;
        re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v10, this, v17, v9);
        v7 -= 8;
      }

      while (v7);
      v4 = *(a2 + 36);
    }

    v17[0] = this;
    re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v4, this, v17, 0);
    v12 = *(this + 43);
    if (v12)
    {
      v13 = *(this + 45);
      v14 = 8 * v12;
      do
      {
        v15 = *v13++;
        re::ecs2::Entity::sendActivateEvents(v15, a2);
        v14 -= 8;
      }

      while (v14);
    }

    return re::EventBus::endBatch(*(a2 + 36), v11);
  }

  return result;
}

uint64_t re::ecs2::Entity::setSelfAnchored_Before(re::ecs2::Entity *this, char a2)
{
  if (a2)
  {
    return 0;
  }

  v2 = *(this + 76);
  if ((~v2 & 0x31) != 0)
  {
    return 0;
  }

  if (*(this + 387))
  {
    return 1;
  }

  if ((v2 & 0x100) == 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      if ((*(v4 + 304) & 0x84) == 4)
      {
        return 0;
      }
    }
  }

  v5 = this;
  do
  {
    v6 = v5;
    v5 = *(v5 + 4);
  }

  while (v5);
  re::ecs2::Entity::sendDeactivateEvents(this, *(v6 + 3));
  return 1;
}

double re::ecs2::Entity::setSelfAnchored_After(re::ecs2::Entity *this, int a2, const re::ecs2::ComponentTypeBase *a3)
{
  v3 = *(this + 76);
  if (a2 != (v3 & 0x20) >> 5)
  {
    v5 = a2;
    v7 = this;
    do
    {
      v8 = v7;
      v7 = *(v7 + 4);
    }

    while (v7);
    v9 = *(v8 + 3);
    if (a2)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *(this + 76) = v3 & 0xFFFFFFDF | v10;
    re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    v12 = *(this + 76);
    if (v9)
    {
      if (a3)
      {
        v13 = *(v9 + 36);
        v19 = this;
        v20 = a3;
        Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
        re::EventBus::publish(v13, this, Type, &v19, 0x10uLL, a3);
        if (v3 & 1) != 0 && (v12)
        {
          v15 = *(v9 + 36);
          v19 = this;
          v20 = a3;
          v16 = re::EventBus::getTypeId<REComponentDidActivateEvent>();
          re::EventBus::publish(v15, this, v16, &v19, 0x10uLL, a3);
        }
      }

      v17 = *(v9 + 36);
      v19 = this;
      LOBYTE(v20) = v5;
      v18 = re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>();
      re::EventBus::publish(v17, this, v18, &v19, 0x10uLL, 0);
    }

    if ((v3 & 1) != (v12 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v9);
      if (v12)
      {
        return re::ecs2::Entity::sendActivateEvents(this, v9);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(uint64_t this)
{
  v1 = *(this + 304);
  if ((v1 & 0x20) == 0)
  {
    if ((v1 & 0x100) != 0 || (v2 = *(this + 32)) == 0 || (v3 = *(v2 + 304), (v3 & 0x80) != 0))
    {
      v4 = -37;
      goto LABEL_9;
    }

    if ((v3 & 4) == 0)
    {
      v4 = -293;
LABEL_9:
      v5 = v1 & v4;
      goto LABEL_10;
    }
  }

  v5 = v1 | 4;
LABEL_10:
  *(this + 304) = v5;
  if (((v1 >> 2) & 1) != (v5 & 4) >> 2)
  {
    v6 = *(this + 344);
    if (v6)
    {
      v7 = *(this + 360);
      v8 = 8 * v6;
      v9 = (v5 >> 2) & 1;
      do
      {
        this = *v7;
        if ((*(*v7 + 304) & 0x120) == 0)
        {
          this = re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this, v9);
        }

        v7 += 8;
        v8 -= 8;
      }

      while (v8);
    }
  }

  return this;
}

double re::ecs2::Entity::setSelfRequiresAnchoring(re::ecs2::Entity *this, int a2)
{
  if (a2 && (*(this + 76) & 0x131) == 0x11)
  {
    v4 = this;
    do
    {
      v5 = v4;
      v4 = *(v4 + 4);
    }

    while (v4);
    re::ecs2::Entity::sendDeactivateEvents(this, *(v5 + 3));
  }

  return re::ecs2::Entity::setSelfRequiresAnchoring_After(this, a2, 0);
}

double re::ecs2::Entity::setSelfRequiresAnchoring_After(re::ecs2::Entity *this, int a2, const re::ecs2::ComponentTypeBase *a3)
{
  v3 = *(this + 76);
  if (a2 != (v3 & 0x100) >> 8)
  {
    v6 = this;
    do
    {
      v7 = v6;
      v6 = *(v6 + 4);
    }

    while (v6);
    v8 = *(v7 + 3);
    if (a2)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    *(this + 76) = v3 & 0xFFFFFEFF | v9;
    re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    if (a3 && v8)
    {
      v11 = *(v8 + 36);
      v14[0] = this;
      v14[1] = a3;
      Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
      re::EventBus::publish(v11, this, Type, v14, 0x10uLL, a3);
    }

    v13 = *(this + 76);
    if ((v3 & 1) != (v13 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v8);
      if (v13)
      {
        return re::ecs2::Entity::sendActivateEvents(this, v8);
      }
    }
  }

  return result;
}

double re::ecs2::Entity::setGhosted(re::ecs2::Entity *this, int a2)
{
  v2 = *(this + 76);
  if ((v2 & 0x80) == 0 && ((((*(this + 76) & 0x40) == 0) ^ a2) & 1) == 0)
  {
    v5 = *(this + 76);
    v6 = this;
    do
    {
      v7 = v6;
      v6 = *(v6 + 4);
    }

    while (v6);
    v8 = *(v7 + 3);
    if ((v2 & 1) != 0 && a2)
    {
      re::ecs2::Entity::sendDeactivateEvents(this, *(v7 + 3));
      v5 = *(this + 76);
    }

    v9 = v2 & 1;
    v10 = v5 & 0xFFFFFFBF;
    if (a2)
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *(this + 76) = v10 | v11;
    re::ecs2::Entity::updateIsActive_Self(this);
    v13 = *(this + 76);
    if (v9 != (v13 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v8);
      if (v13)
      {

        return re::ecs2::Entity::sendActivateEvents(this, v8);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(uint64_t this, _BOOL4 a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(this + 304) = *(this + 304) & 0xFFFFFFEF | v2;
  v3 = *(this + 344);
  if (v3)
  {
    v5 = *(this + 360);
    v6 = 8 * v3;
    do
    {
      v7 = *v5++;
      this = re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(v7, a2);
      v6 -= 8;
    }

    while (v6);
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(uint64_t this, int a2)
{
  v2 = *(this + 304);
  v3 = (~v2 & 0x2008) == 0;
  v4 = v3 & a2;
  v5 = v2 & 0xFFFFFFFD;
  if ((v3 & a2) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(this + 304) = v6 | v5;
  v7 = *(this + 344);
  if (v7)
  {
    v8 = *(this + 360);
    v9 = 8 * v7;
    do
    {
      this = *v8;
      if ((~*(*v8 + 304) & 0x2008) == 0)
      {
        this = re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this, v4 & 1);
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(uint64_t this, int a2)
{
  v2 = *(this + 304);
  if ((v2 & 0x20) != 0 || (v3 = 0, v4 = v2 & 0xFFFFFFDB, (v2 & 0x100) == 0) && a2)
  {
    v4 = v2 | 4;
    v3 = 1;
  }

  *(this + 304) = v4;
  v5 = *(this + 344);
  if (v5)
  {
    v6 = *(this + 360);
    v7 = 8 * v5;
    do
    {
      this = *v6;
      if ((*(*v6 + 304) & 0x20) == 0)
      {
        this = re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this, v3);
      }

      v6 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  return this;
}

re::ecs2::Entity *re::ecs2::Entity::updateIsActive_Subtree(re::ecs2::Entity *this)
{
  v2 = *(this + 76) & 1;
  result = re::ecs2::Entity::updateIsActive_Self(this);
  if (v2 != (*(this + 304) & 1))
  {
    v4 = *(this + 43);
    if (v4)
    {
      v5 = *(this + 45);
      v6 = 8 * v4;
      do
      {
        result = *v5;
        if ((~*(*v5 + 304) & 0x2008) == 0)
        {
          result = re::ecs2::Entity::updateIsActive_Subtree(result);
        }

        v5 += 8;
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t re::ecs2::Entity::updateSceneDependentFlagsRecursively(re::ecs2::Entity ***this)
{
  result = re::ecs2::Entity::updateState<(re::ecs2::Entity::StateFlags)17>(this);
  v3 = this[43];
  if (v3)
  {
    v4 = this[45];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = re::ecs2::Entity::updateSceneDependentFlagsRecursively(v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

re::ecs2::Entity *re::ecs2::Entity::updateState<(re::ecs2::Entity::StateFlags)17>(re::ecs2::Entity *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 4);
  }

  while (v2);
  v4 = *(v3 + 3);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 48);
  }

  re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(this, v4 & 1);

  return re::ecs2::Entity::updateIsActive_Subtree(this);
}

void re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(uint64_t this, re::ecs2::Scene *a2, _BOOL4 a3)
{
  v3 = *(this + 304);
  if (v3)
  {
    if ((v3 & 4) == 0)
    {
      a3 = 1;
    }

    if (a3)
    {
      v7 = *(this + 72);
      if (v7)
      {
        v8 = *(this + 88);
        v9 = 8 * v7;
        do
        {
          v10 = *v8++;
          v11 = (*(*v10 + 40))(v10);
          v12 = *(a2 + 36);
          v18[0] = this;
          v18[1] = v11;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v12, this, v18, v11);
          v9 -= 8;
        }

        while (v9);
      }

      v13 = *(a2 + 36);
      v18[0] = this;
      re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v13, this, v18, 0);
    }

    v14 = *(this + 344);
    if (v14)
    {
      v15 = *(this + 360);
      v16 = 8 * v14;
      do
      {
        v17 = *v15++;
        re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(v17, a2, a3);
        v16 -= 8;
      }

      while (v16);
    }
  }
}

void re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(uint64_t this, re::EventBus **a2, BOOL a3)
{
  v3 = *(this + 304);
  if (v3)
  {
    if ((v3 & 4) == 0)
    {
      a3 = 1;
    }

    v7 = *(this + 344);
    if (v7)
    {
      v8 = *(this + 360);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(v10, a2, a3);
        v9 -= 8;
      }

      while (v9);
    }

    if (a3)
    {
      v11 = a2[36];
      v18[0] = this;
      re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v11, this, v18, 0);
      v12 = *(this + 72);
      if (v12)
      {
        v13 = *(this + 88);
        v14 = 8 * v12;
        do
        {
          v15 = *v13++;
          v16 = (*(*v15 + 40))(v15);
          v17 = a2[36];
          v18[0] = this;
          v18[1] = v16;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v17, this, v18, v16);
          v14 -= 8;
        }

        while (v14);
      }
    }
  }
}

double re::ecs2::Entity::updateAfterComponentDeserialized(re::ecs2::Entity *this, const re::ecs2::Component *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  do
  {
    {
      v33 = v5;
      v6 = &unk_1EE187000;
      v16 = v10;
      v5 = v33;
      if (v16)
      {
        re::introspect<re::ecs2::AnchorComponent>(BOOL)::info = re::ecs2::introspect_AnchorComponent(0, v11, v12, v13, v14, v15);
        v6 = &unk_1EE187000;
        v5 = v33;
      }
    }

    if (v5 == v6[151])
    {
      if (*(a2 + 176) == 1 && *(a2 + 177) != 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(a2 + 178) ^ 1;
      }

      re::ecs2::Entity::setSelfAnchored_Before(this, v31 & 1);

      return re::ecs2::Entity::setSelfAnchored_After(this, v31 & 1, 0);
    }

    v7 = *(v5 + 56);
    if (!v7)
    {
      break;
    }

    v8 = *(v5 + 64);
    while (1)
    {
      v9 = *v8;
      if (**v8 == 1 && v9[10] == 3)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    v5 = *(v9 + 2);
  }

  while (v5);
LABEL_14:
  v17 = (*(*a2 + 40))(a2);
  v18 = (*(*v17 + 48))(v17);
  v20 = &unk_1EE187000;
  while (1)
  {
    {
      v34 = v18;
      v20 = &unk_1EE187000;
      v30 = v24;
      v18 = v34;
      if (v30)
      {
        re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info = re::ecs2::introspect_AnchoringComponent(0, v25, v26, v27, v28, v29);
        v20 = &unk_1EE187000;
        v18 = v34;
      }
    }

    if (v18 == v20[127])
    {
      break;
    }

    v21 = *(v18 + 56);
    if (v21)
    {
      for (i = *(v18 + 64); ; ++i)
      {
        v23 = *i;
        if (**i == 1 && v23[10] == 3)
        {
          break;
        }

        if (!--v21)
        {
          return result;
        }
      }

      v18 = *(v23 + 2);
      if (v18)
      {
        continue;
      }
    }

    return result;
  }

  v32 = *(a2 + 448);

  return re::ecs2::Entity::setSelfRequiresAnchoring(this, v32);
}

uint64_t *re::ecs2::Entity::debugDescription@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::ecs2::Entity *this@<X0>)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  re::DynamicString::setCapacity(&v19, 0x20uLL);
  if (*(this + 4))
  {
    __src[0] = 34;
    re::DynamicString::append(&v19, __src, 1uLL);
    v4 = strlen(*(*(this + 4) + 296));
    re::DynamicString::append(&v19, *(*(this + 4) + 296), v4);
    __src[0] = 34;
    v5 = re::DynamicString::append(&v19, __src, 1uLL);
  }

  else
  {
    *__src = "<null>";
    v16 = 6;
    v5 = re::DynamicString::operator=(&v19, __src);
  }

  v6 = *(this + 76);
  v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFEFFFBFFFFFFFDLL) & 0xFF01FF01FF01FF01;
  v23 = vuzp1_s8(v7, v7).u32[0];
  v24 = (v6 & 0x10) != 0;
  v25 = (v6 & 0x40) != 0;
  v26 = v6 & 1;
  v27 = (v6 & 0x80) != 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(__src, 0x40uLL);
  re::DynamicString::append(__src, "{ ", 2uLL);
  v8 = 0;
  v9 = 1;
  do
  {
    if (*(&v23 + v8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        re::DynamicString::append(__src, " | ", 3uLL);
      }

      v10 = strlen(off_1E871E648[v8]);
      re::DynamicString::append(__src, off_1E871E648[v8], v10);
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 9);
  re::DynamicString::append(__src, " }", 2uLL);
  if (v20)
  {
    v12 = v21;
  }

  else
  {
    v12 = &v20 + 1;
  }

  if (v16)
  {
    v13 = v17;
  }

  else
  {
    v13 = &v16 + 1;
  }

  re::DynamicString::format(a1, "<Entity { name = %s, id = %llu, parent = %s, child count = %zu, state = %s }>", v11, *(this + 37), *(this + 39), v12, *(this + 43), v13);
  if (*__src && (v16 & 1) != 0)
  {
    (*(**__src + 40))();
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

uint64_t *re::ecs2::Entity::debugDescriptionRecursive@<X0>(re::ecs2::Entity *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = *(this + 43) << 6;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  re::DynamicString::setCapacity(a2, v4 + 64);
  re::ecs2::Entity::debugDescription(&v15, this);
  v5 = v16 & 1;
  if (v16)
  {
    v6 = v17;
  }

  else
  {
    v6 = &v16 + 1;
  }

  if (v16)
  {
    v7 = v16 >> 1;
  }

  else
  {
    v7 = v16 >> 1;
  }

  re::DynamicString::append(a2, v6, v7);
  v8 = v15;
  if (v15 && v5)
  {
    v8 = (*(*v15 + 40))();
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v15, 0x20uLL);
  re::DynamicString::append(&v15, "    ", 4uLL);
  v9 = *(this + 43);
  if (v9)
  {
    v10 = *(this + 45);
    v11 = 8 * v9;
    do
    {
      v12 = *v10;
      re::DynamicString::append(a2, "\n", 1uLL);
      re::DynamicString::DynamicString(v14, &v15);
      if (*&v14[0])
      {
        if (BYTE8(v14[0]))
        {
          (*(**&v14[0] + 40))();
        }

        memset(v14, 0, sizeof(v14));
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void *anonymous namespace::debugDescriptionRecursiveHelper(re::ecs2::Entity ***a1, re::DynamicString *a2, char *a3)
{
  v6 = *(a3 + 1);
  if (v6)
  {
    v7 = *(a3 + 2);
  }

  else
  {
    v7 = a3 + 9;
  }

  v8 = v6 >> 1;
  v9 = v6 >> 1;
  if (*(a3 + 1))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  re::DynamicString::append(a2, v7, v10);
  re::ecs2::Entity::debugDescription(&v20, a1);
  v11 = v21[0] & 1;
  if (v21[0])
  {
    v12 = v21[1];
  }

  else
  {
    v12 = v21 + 1;
  }

  if (v21[0])
  {
    v13 = v21[0] >> 1;
  }

  else
  {
    v13 = LOBYTE(v21[0]) >> 1;
  }

  re::DynamicString::append(a2, v12, v13);
  if (v20 && v11)
  {
    (*(*v20 + 40))();
  }

  result = re::DynamicString::append(a3, "    ", 4uLL);
  v15 = a1[43];
  if (v15)
  {
    v16 = a1[45];
    v17 = 8 * v15;
    do
    {
      v18 = *v16;
      re::DynamicString::append(a2, "\n", 1uLL);
      re::DynamicString::DynamicString(v19, a3);
      result = *&v19[0];
      if (*&v19[0])
      {
        if (BYTE8(v19[0]))
        {
          result = (*(**&v19[0] + 40))();
        }

        memset(v19, 0, sizeof(v19));
      }

      ++v16;
      v17 -= 8;
    }

    while (v17);
  }

  return result;
}

uint64_t re::ecs2::Entity::isStateValid(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 304);
  if ((v2 & 0x80) == 0)
  {
    v5 = (~v2 & 0x2008) == 0;
    v6 = *(a1 + 144);
    if (v6 && (v6[176] != 1 || v6[177] == 1))
    {
      v7 = v6[178] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v9)
    {
      v10 = *(v9 + 448);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 304);
    v12 = (v11 >> 6) & 1;
    v13 = *(a1 + 32);
    if (!v13 || (v14 = *(v13 + 304), (v14 & 0x80) != 0))
    {
      v21 = 0;
      v16 = v7;
      v17 = a1;
    }

    else
    {
      v27 = v10;
      v28 = *(a1 + 304);
      v15 = 1;
      v16 = v7;
      do
      {
        v17 = v13;
        if ((v10 & 1) == 0)
        {
          v18 = *(v13 + 144);
          if (v18)
          {
            if (v18[176] == 1 && v18[177] != 1)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              LODWORD(v18) = v18[178] ^ 1;
            }
          }

          v16 |= v18;
        }

        v19 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v19)
        {
          v20 = *(v19 + 448);
        }

        else
        {
          v20 = 0;
        }

        v15 &= v14;
        v5 = v5 & ((~v14 & 0x2008) == 0);
        v12 |= (v14 & 0x40) >> 6;
        v13 = v17[4];
        if (!v13)
        {
          break;
        }

        LOBYTE(v10) = v10 | v20;
        v14 = *(v13 + 304);
      }

      while ((v14 & 0x80) == 0);
      v21 = v15 ^ 1;
      v10 = v27;
      LOBYTE(v11) = v28;
    }

    v22 = v17[3];
    if (v22)
    {
      v23 = 0;
      v24 = *(v22 + 56) == 0;
      LODWORD(v22) = *(v22 + 48);
      if (((v24 | v21 | v12) & 1) == 0 && ((v5 ^ 1) & 1) == 0)
      {
        v23 = v22 ^ 1 | v16;
      }

      if ((a2 & 2) == 0)
      {
LABEL_33:
        v25 = 0;
        if ((a2 & 0x20) == 0)
        {
LABEL_38:
          if ((a2 & 4) != 0)
          {
            v25 |= v16 ^ ((*(a1 + 304) & 4) >> 2);
            if ((a2 & 0x100) == 0)
            {
LABEL_40:
              if ((a2 & 0x10) == 0)
              {
                goto LABEL_41;
              }

              goto LABEL_48;
            }
          }

          else if ((a2 & 0x100) == 0)
          {
            goto LABEL_40;
          }

          v25 |= v10 ^ *(a1 + 305);
          if ((a2 & 0x10) == 0)
          {
LABEL_41:
            if ((a2 & 0x40) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_49;
          }

LABEL_48:
          v25 |= v22 ^ ((*(a1 + 304) & 0x10) >> 4);
          if ((a2 & 0x40) == 0)
          {
LABEL_42:
            if ((a2 & 1) == 0)
            {
LABEL_44:
              v8 = v25 ^ 1;
              return v8 & 1;
            }

LABEL_43:
            LOBYTE(v25) = v25 | v23 ^ *(a1 + 304);
            goto LABEL_44;
          }

LABEL_49:
          v25 |= ((v11 ^ *(a1 + 304)) & 0x40) >> 6;
          if ((a2 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_37:
        v25 |= v7 ^ ((*(a1 + 304) & 0x20) >> 5);
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 0;
      if ((a2 & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    v25 = v5 ^ ((*(a1 + 304) & 2) >> 1);
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v8 = 1;
  return v8 & 1;
}

void *re::ecs2::allocInfo_Entity(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_419, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_419))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6AA0, "Entity");
    __cxa_guard_release(&_MergedGlobals_419);
  }

  return &unk_1EE1B6AA0;
}

void re::ecs2::initInfo_Entity(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 4161118214;
  v8[1] = "Entity";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x19000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_Entity(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>(void)const::s_id = re::EventBus::typeStringToId(("32RESceneAnchoredStateChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[8];
}

void re::ecs2::PackedTypeIDs::~PackedTypeIDs(re::ecs2::PackedTypeIDs *this)
{
  v1 = *(this + 1);
  if (v1 != (this + 16) && v1 != 0)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v1);
  }
}

re *re::ecs2::PackedTypeIDs::ensureCapacity(re *this, unint64_t a2)
{
  if (*(this + 2) < a2)
  {
    v2 = this;
    v3 = *(this + 1);
    v4 = re::globalAllocators(this);
    this = (*(*v4[2] + 32))(v4[2], 32 * v3, 16);
    v5 = this;
    if (v3)
    {
      v6 = 0;
      v7 = 16 * v3;
      do
      {
        *(this + v6) = *(*(v2 + 1) + v6);
        v6 += 16;
      }

      while (v7 != v6);
      this = memset(this + 16 * v3, 255, v7);
    }

    v8 = *(v2 + 1);
    if (v8 != (v2 + 16) && v8 != 0)
    {
      v10 = re::globalAllocators(this);
      this = (*(*v10[2] + 40))(v10[2], v8);
    }

    *(v2 + 1) = v5;
    *(v2 + 2) = 16 * v3;
  }

  return this;
}

uint64_t re::ecs2::AnchorComponent::makeSyncInfo(re::ecs2::AnchorComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadDeltaCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadDeltaCb();
  return v1;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RESyncBitReaderReadData();
  ReadOptional<unsigned long long>(v14, a2);
  if (*(a3 + 184))
  {
    if ((v14[0] & 1) == 0)
    {
      *(a3 + 184) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v14[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a3 + 184) = 1;
  }

  *(a3 + 192) = v15;
LABEL_7:
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  if (*(a3 + 200) == 1)
  {
    re::ecs2::AnchorComponent::setIsExternalAnchor(a3, 1);
  }

  v13.i64[0] = 0x3F8000003F800000;
  v13.i64[1] = 1065353216;
  RESyncBitReaderReadData();
  v5 = 0.0 * (0.0 + 0.0);
  v6 = (0.0 + 0.0) * 0.0;
  v7 = (0.0 + 0.0) * 1.0;
  v8.i32[3] = 0;
  v9.i32[3] = 0;
  v9.f32[0] = 1.0 - (v5 + v5);
  v9.f32[1] = v6 + v7;
  v9.f32[2] = v6 - v7;
  v10.i32[3] = 0;
  v10.f32[0] = v6 - v7;
  v10.f32[1] = v9.f32[0];
  v10.f32[2] = v6 + v7;
  v8.f32[0] = v6 + v7;
  v8.f32[1] = v6 - v7;
  v8.f32[2] = v9.f32[0];
  v11 = 0uLL;
  HIDWORD(v11) = 1.0;
  *(a3 + 48) = vmulq_n_f32(v9, 1.0);
  *(a3 + 64) = vmulq_n_f32(v10, 1.0);
  *(a3 + 80) = vmulq_laneq_f32(v8, v13, 2);
  *(a3 + 96) = v11;
  return 1;
}

uint64_t ReadOptional<unsigned long long>(_BYTE *a1, uint64_t a2)
{
  result = RESyncBitReaderReadBool();
  *a1 = 0;
  return result;
}

double re::ecs2::AnchorComponent::setIsExternalAnchor(uint64_t this, int a2)
{
  if (*(this + 178) != a2)
  {
    v3 = a2;
    v5 = *(this + 16);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, a2 ^ 1);
    }

    *(this + 178) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69049A0](a2, a3 + 25, 16);
  v7[0] = *(a3 + 184);
  if (v7[0] == 1)
  {
    v8 = *(a3 + 192);
  }

  re::ecs2::WriteOptional<double>(a2, v7);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  v9 = 0u;
  re::decomposeScaleRotationTranslation<float>(a3 + 48, &v11, &v10, &v9);
  v6[0] = v11;
  v6[1] = v10;
  v6[2] = v9;
  MEMORY[0x1E69049A0](a2, v6, 48);
  return 1;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a3, 0);
  if (RESyncObjectReadContextIsLocalSession())
  {
    v6 = RESyncBitReaderDataPtr();
    v7 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a3, v6, v7);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::read(a2, a3);
  }
}

uint64_t re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  RESyncBitReaderReadData();
  ReadOptional<unsigned long long>(v11, a1);
  v6 = v11[0];
  v7 = v12;
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  MEMORY[0x1E69049A0](a2, v15, 16);
  v9[0] = v6;
  if (v6 == 1)
  {
    v10 = v7;
  }

  re::ecs2::WriteOptional<double>(a2, v9);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  result = RESyncBitWriterWriteBool();
  if (a3)
  {
    RESyncBitReaderReadData();
    ReadOptional<unsigned long long>(v11, a3);
    RESyncBitReaderReadBool();
    RESyncBitReaderReadBool();
    return RESyncBitReaderReadBool();
  }

  return result;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a4, a3);
  if (RESyncObjectReadContextIsLocalSession())
  {
    v8 = RESyncBitReaderDataPtr();
    v9 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a4, v8, v9);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::readDelta(a2, a3, a4);
  }
}

BOOL ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a3, 0);
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::write(a2, a3);
}

BOOL ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a4, a3);
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::writeDelta(a2, a3, a4);
}

float32x4_t *re::ecs2::AnchorComponent::setWorldTransform(float32x4_t *result, float32x4_t *a2)
{
  if (vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*a2, *a2), vceqq_f32(a2[1], a2[1])), vuzp1q_s16(vceqq_f32(a2[2], a2[2]), vceqq_f32(a2[3], a2[3]))))))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) AnchorComponent cannot have NaN worldTransform", "!transform.containsNaN()", "setWorldTransform", 203, v2, v3);
    result = _os_crash("assertion failure: (!transform.containsNaN()) AnchorComponent cannot have NaN worldTransform");
    __break(1u);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[3];
    result[5] = a2[2];
    result[6] = v6;
    result[3] = v4;
    result[4] = v5;
    if (fabsf(result[6].f32[3] + -1.0) < 0.00001)
    {
      result[6].i32[3] = 1065353216;
    }
  }

  return result;
}

double re::ecs2::AnchorComponent::setRequiresLocalAnchoring(uint64_t this, int a2)
{
  if (*(this + 176) != a2)
  {
    v3 = a2;
    v5 = *(this + 16);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, *(this + 177) & 1 | ((a2 & 1) == 0));
    }

    *(this + 176) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

double re::ecs2::AnchorComponent::onAnchorStateChanged_After(re::ecs2::AnchorComponent *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (*(this + 176) == 1 && *(this + 177) != 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 178) ^ 1;
    }

    return re::ecs2::Entity::setSelfAnchored_After(v2, v3 & 1, 0);
  }

  return result;
}

double re::ecs2::AnchorComponent::setAnchoredLocally(re::ecs2::AnchorComponent *this, int a2)
{
  if (*(this + 177) != a2)
  {
    v3 = a2;
    v5 = *(this + 2);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, a2 & 1 | ((*(this + 176) & 1) == 0));
    }

    *(this + 177) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

void *re::ecs2::allocInfo_AnchorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6B38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6B78, "AnchorComponent");
    __cxa_guard_release(&qword_1EE1B6B38);
  }

  return &unk_1EE1B6B78;
}

void re::ecs2::initInfo_AnchorComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v37[0] = 0x61C8416D6D70DB50;
  v37[1] = "AnchorComponent";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&_MergedGlobals_420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_420))
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
    qword_1EE1B6B40 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<unsigned char [16]>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "anchorIdentifier";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B6B48 = v18;
    v19 = re::introspectionAllocator();
    v20 = re::introspect_Matrix4x4F(1);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "worldTransform";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x3000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B6B50 = v21;
    v22 = re::introspectionAllocator();
    v23 = (*(*v22 + 32))(v22, 24, 8);
    *v23 = 5;
    *(v23 + 8) = "m_transformInCoordinateSpace";
    *(v23 + 16) = "worldTransform";
    qword_1EE1B6B58 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_BOOL(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "requiresLocalAnchoring";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0xB000000003;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1B6B60 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_BOOL(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "enableShadows";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x2900000004;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1B6B68 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "lateLatchId";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xB800000005;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B6B70 = v35;
    __cxa_guard_release(&_MergedGlobals_420);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B6B40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215AnchorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v36 = v38;
}

double re::make::shared::unsafelyInplace<re::ecs2::AnchorComponent>(ArcSharedObject *a1)
{
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D01968;
  *(v1 + 44) = 0;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 41) = 0;
  *&result = 1065353216;
  *(v1 + 48) = xmmword_1E3047670;
  *(v1 + 64) = xmmword_1E3047680;
  *(v1 + 80) = xmmword_1E30476A0;
  *(v1 + 96) = xmmword_1E30474D0;
  *(v1 + 112) = xmmword_1E3047670;
  *(v1 + 128) = xmmword_1E3047680;
  *(v1 + 144) = xmmword_1E30476A0;
  *(v1 + 160) = xmmword_1E30474D0;
  *(v1 + 184) = 0;
  *(v1 + 176) = 0;
  *(v1 + 200) = 1;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs215AnchorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::ecs2::ECSHelper::deepCopyEntity@<D0>(re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Entity *a2@<X1>, BOOL (*a3)(void *, void *)@<X4>, uint64_t a4@<X2>, uint64_t (*a5)(uint64_t, uint64_t)@<X3>, re::ecs2::Entity **a6@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 0x7FFFFFFFLL;
  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8);
}

void anonymous namespace::deepCopyEntity(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, re::ecs2::Entity **a7@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = *(a1 + 72);
    v15 = re::ecs2::EntityFactory::instance(a1);
    re::ecs2::EntityFactory::make(a7, v15, v14);
    v16 = *a7;
    v43 = 0uLL;
    *&v44 = 0;
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v43, a4, a1, v17 ^ (v17 >> 31));
    if (HIDWORD(v43) == 0x7FFFFFFF)
    {
      v18 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a4, DWORD2(v43), v43);
      *(v18 + 8) = a1;
      *(v18 + 16) = v16;
      ++*(a4 + 40);
    }

    re::StringID::operator=(v16 + 36, (a1 + 288));
    re::ecs2::Entity::setSelfEnabled(v16, (*(a1 + 304) >> 3) & 1);
    v19.n128_f64[0] = re::ecs2::Entity::setSelfEnabledForFlag(v16, (*(a1 + 304) >> 13) & 1, 0x2000);
    v20 = *(a1 + 72);
    if (v20)
    {
      for (i = 0; i < v20; ++i)
      {
        if (v20 <= i)
        {
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v38 = 797;
          v39 = 2048;
          v40 = i;
          v41 = 2048;
          v42 = v20;
          _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
        }

        v22 = *(*(a1 + 88) + 8 * i);
        v23 = (*(*v22 + 40))(v22, v19);
        v25 = v23;
        if ((!a3 || ((*(*v23 + 8))(v23) & 1) == 0) && (!a5 || (a5(v25, a6) & 1) == 0) && (*(v25 + 40) & 1) == 0)
        {
          re::ecs2::ECSHelper::deepCopyComponent(&v43, v22, v24);
          v33 = v43;
          if (v43)
          {
            v26 = (v43 + 8);
          }

          v19.n128_f64[0] = re::ecs2::EntityComponentCollection::add((v16 + 6), &v33, 1);
          if (v33)
          {

            v33 = 0;
          }

          if (v43)
          {
          }
        }

        v20 = *(a1 + 72);
      }
    }

    if (a2)
    {
      v27 = *(a1 + 344);
      if (v16[42] < v27)
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v16 + 41, v27);
        v27 = *(a1 + 344);
      }

      if (v27)
      {
        v28 = *(a1 + 360);
        v29 = 8 * v27;
        do
        {
          re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v16 + 40, &v43);
          if (v43)
          {
          }

          ++v28;
          v29 -= 8;
        }

        while (v29);
      }
    }
  }

  else
  {
    *a7 = 0;
  }
}

uint64_t anonymous namespace::fixUpEntityHandle(void *a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v15[0] = &unk_1F5D01BB0;
  v15[1] = a2;
  v15[3] = v15;
  v4 = a1[9];
  if (v4)
  {
    v5 = a1[11];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      v8 = (*(*v7 + 5))(v7);
      v9 = (*(*v8 + 48))(v8);
      re::IntrospectionWalker::walk(v9, v7, v15);
      v6 -= 8;
    }

    while (v6);
  }

  v10 = a1[43];
  if (v10)
  {
    v11 = a1[45];
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      v12 -= 8;
    }

    while (v12);
  }

  return std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v15);
}

void re::ecs2::ECSHelper::deepCopyComponent(re::DynamicString ****__return_ptr a1@<X8>, re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Component *a3@<X1>)
{
  if (this)
  {
    v5 = *((*(*this + 40))(this, a3) + 8);
    if (v5)
    {
      v6 = v5(this);
      v7 = v6;
      *a1 = v6;
      if (v6)
      {
        v8 = (v6 + 8);
      }
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v9 = (*(*this + 40))(this);
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(*this + 40))(this);
      v12 = (*(*v11 + 32))(v11);
      v13 = re::globalAllocators(v12);
      v14 = *a1;
      v17[0] = v13[2];
      v17[1] = 0;
      v17[2] = v15;
    }
  }

  else
  {
    *a1 = 0;
  }
}

BOOL re::ecs2::ECSHelper::isDescendant(re::ecs2::ECSHelper *this, const re::ecs2::Entity *a2, const re::ecs2::Entity *a3)
{
  result = 0;
  if (this && a2)
  {
    if (*(a2 + 43))
    {
      while (1)
      {
        this = *(this + 4);
        if (!this)
        {
          break;
        }

        result = (*(this + 76) & 0x80) == 0;
        if ((*(this + 76) & 0x80) != 0 || this == a2)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *re::ecs2::ECSHelper::logIdentifier@<X0>(re::ecs2::ECSHelper **this@<X0>, const re::ecs2::Component *a2@<X1>, const re::ecs2::Entity *a3@<X2>, re::DynamicString *a4@<X8>)
{
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  re::DynamicString::setCapacity(a4, 0);
  v8 = this[2];
  if (v8)
  {
    re::ecs2::ECSHelper::logIdentifier(&v14, v8, a3);
    re::DynamicString::operator=(a4, &v14);
    if (v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v9 = ":";
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v14 = a3;
    v15 = 0;
    re::DynamicString::setCapacity(&v14, 0x40uLL);
    re::DynamicString::operator=(a4, &v14);
    if (v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v9 = "<No entity>:";
  }

  v10 = strlen(v9);
  re::DynamicString::append(a4, v9, v10);
  v11 = *((*(*this + 5))(this) + 32);
  v12 = strlen(v11);
  result = re::DynamicString::append(a4, v11, v12);
  if (a2)
  {
    return re::DynamicString::appendf(a4, ".%s", a2);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::ECSHelper::logIdentifier@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Entity *a3@<X1>)
{
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = a3;
  *(a1 + 1) = 0;
  re::DynamicString::setCapacity(a1, 0x100uLL);
  v6 = this;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  if (*(v7 + 3))
  {
    v8 = this;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(v9 + 3);
    v11 = this;
    if (*(v10 + 32) < 2uLL && (v12 = *(v10 + 40), v11 = this, v12) && (v11 = this, !*v12))
    {
      v31 = this;
      do
      {
        v31 = *(v31 + 4);
      }

      while (v31);
      re::DynamicString::appendf(a1, "<Unnamed scene (%p)>:/");
    }

    else
    {
      do
      {
        v11 = *(v11 + 4);
      }

      while (v11);
      re::DynamicString::appendf(a1, "%s:/");
    }
  }

  else
  {
    re::DynamicString::append(a1, "<No scene>:/", 0xCuLL);
  }

  v34 = 1;
  v35 = 0;
  v36 = 0;
  v32 = a3;
  v33 = 0;
  result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v32, 0);
  v14 = v34 + 2;
  v34 += 2;
  do
  {
    if (!v32)
    {
      result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v32, v33 + 1);
      v14 = v34 + 2;
      v34 += 2;
      goto LABEL_28;
    }

    if (v14)
    {
      if (v33 - 8 >= 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_28;
      }

      v15 = v33 + 1;
      v17 = 16;
      goto LABEL_24;
    }

    v15 = v33 + 1;
    if (v33 >= v35 && v35 < v15)
    {
      v17 = 2 * v35;
LABEL_24:
      if (v17 <= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v32, v18);
      v14 = v34;
    }

LABEL_28:
    v19 = (v14 & 1) == 0;
    v20 = v36;
    v21 = v33;
    if (!v19)
    {
      v20 = &v35;
    }

    v20[v33] = this;
    v22 = v21 + 1;
    v33 = v22;
    v23 = v34;
    v14 = v34 + 2;
    v34 += 2;
    this = *(this + 4);
  }

  while (this && (*(this + 304) & 0x80) == 0);
  v19 = (v23 & 1) == 0;
  v24 = v36;
  if (!v19)
  {
    v24 = &v35;
  }

  v25 = &v24[v22];
  if (v14)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v26 = v36;
    if (v25 == v36)
    {
      break;
    }

    while (1)
    {
      if (v25 != &v26[v33])
      {
        re::DynamicString::append(a1, "/", 1uLL);
      }

      v28 = *--v25;
      v27 = v28;
      v29 = *(v28 + 296);
      if (*(v28 + 288) > 1uLL || *v29)
      {
        v30 = strlen(v29);
        result = re::DynamicString::append(a1, v29, v30);
      }

      else
      {
        result = re::DynamicString::appendf(a1, "<Unnamed entity (%p)>", v27);
      }

      if ((v34 & 1) == 0)
      {
        break;
      }

LABEL_37:
      v26 = &v35;
      if (v25 == &v35)
      {
        return result;
      }
    }
  }

  result = v32;
  if (v32)
  {
    return (*(*v32 + 40))(v32);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D01BB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t a1, uint64_t a2, id **a3)
{
  if (*(a2 + 16) == 11 && *(a2 + 88) == re::internal::entityHandleDeepCopy)
  {
    v15 = v3;
    v16 = v4;
    v5 = *a3;
    if (**a3)
    {
      v6 = *(a1 + 8);
      WeakRetained = objc_loadWeakRetained(*a3);
      v8 = WeakRetained;
      if (WeakRetained)
      {
        v9 = WeakRetained - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v13, v6, v9, v10 ^ (v10 >> 31));
      v11 = 0;
      if (v14 != 0x7FFFFFFF)
      {
        v11 = (*(v6 + 16) + 32 * v14 + 16);
      }

      if (v8)
      {
      }

      if (v11)
      {
        v12 = *v11;
        if (*v11)
        {
          re::ecs2::EntityHandle::reset(v5);
          objc_storeWeak(v5, (v12 + 8));
          v5[1] = *(v12 + 312);
        }
      }
    }
  }
}

uint64_t std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(void *a1)
{
  *a1 = &unk_1F5D01CB0;
  v2 = a1 + 1;
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((a1 + 1));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  return a1;
}

void re::ecs2::SystemCollection::~SystemCollection(re::ecs2::SystemCollection *this)
{
  re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SystemCollection::willClear(uint64_t this)
{
  if (***(this + 48))
  {
    v1 = this;
    v2 = *(this + 24);
    if (v2)
    {
      v3 = *(this + 40);
      v4 = &v3[v2];
      do
      {
        v5 = *v3;
        v6 = *(v1 + 48);
        v7 = *(v6 + 200);
        if (v7)
        {
          v8 = *(v6 + 216);
          v9 = 8 * v7;
          do
          {
            v10 = *v8++;
            (*(*v5 + 56))(v5, v10);
            v9 -= 8;
          }

          while (v9);
        }

        this = (*(*v5 + 96))(v5, v1);
        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

uint64_t re::ecs2::SystemCollection::willInsert(uint64_t result, uint64_t a2, void *a3)
{
  if (***(result + 48))
  {
    v4 = result;
    result = (*(**a3 + 88))(*a3, result);
    v5 = *(v4 + 48);
    v6 = *(v5 + 200);
    if (v6)
    {
      v7 = *(v5 + 216);
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        result = (*(**a3 + 48))(*a3, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t re::ecs2::SystemCollection::willRemoveAt(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 48);
  if (**v3)
  {
    v5 = *(v3 + 200);
    if (v5)
    {
      v6 = *(v3 + 216);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        (*(**a3 + 56))(*a3, v8);
        v7 -= 8;
      }

      while (v7);
    }

    v9 = *(**a3 + 96);

    return v9();
  }

  return result;
}

void *re::ecs2::SystemCollection::willSet(void *result, unint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = result[3];
  if (v4 <= a2)
  {
    v22 = 0;
    memset(v31, 0, sizeof(v31));
    v19 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 797;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v6 = result;
  v7 = result[6];
  v8 = *(result[5] + 8 * a2);
  if (**v7)
  {
    v9 = *(v7 + 200);
    if (v9)
    {
      v10 = *(v7 + 216);
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        (*(*v8 + 56))(v8, v12);
        v11 -= 8;
      }

      while (v11);
    }

    (*(*v8 + 96))(v8, v6);
    v8[5] = 0;
    v13 = *a3;
    v13[5] = **v6[6];
    result = (*(*v13 + 88))(v13, v6);
    v14 = v6[6];
    v15 = *(v14 + 200);
    if (v15)
    {
      v16 = *(v14 + 216);
      v17 = 8 * v15;
      do
      {
        v18 = *v16++;
        result = (*(**a3 + 48))(*a3, v18);
        v17 -= 8;
      }

      while (v17);
    }
  }

  else
  {
    v8[5] = 0;
    *(*a3 + 40) = 0;
  }

  return result;
}

void re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(void *a1)
{
  re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::CustomSystemRegistry::init(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if ((this->_os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this->_os_unfair_lock_opaque) = 1;
    v4 = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(&this[14]._os_unfair_lock_opaque, 0);
    ++this[20]._os_unfair_lock_opaque;
    re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(&this[24]._os_unfair_lock_opaque, 0);
    ++this[30]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this + 1);
}

re::ecs2::CustomSystemRegistry *re::ecs2::CustomSystemRegistry::CustomSystemRegistry(re::ecs2::CustomSystemRegistry *this)
{
  *this = 0;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0;
  *(this + 44) = 0x7FFFFFFFLL;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 68) = 515;
  *(this + 35) = 1023969417;
  *(this + 144) = 0;
  re::ecs2::CustomSystemRegistry::init(this);
  return this;
}

void re::ecs2::CustomSystemRegistry::~CustomSystemRegistry(re::ecs2::CustomSystemRegistry *this)
{
  re::ecs2::CustomSystemRegistry::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(this + 1);
}

void re::ecs2::CustomSystemRegistry::deinit(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if (LOBYTE(this->_os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this->_os_unfair_lock_opaque) = 0;
    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(&this[2]);
    re::DynamicArray<unsigned long>::deinit(&this[14]);
    re::DynamicArray<unsigned long>::deinit(&this[24]);
  }

  os_unfair_lock_unlock(this + 1);
}

void re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

double re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(a1, v3++);
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

uint64_t re::ecs2::CustomSystemRegistry::setDefaultTaskOptions(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 24);
    while (1)
    {
      v7 = *v6;
      v6 += 28;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 40);
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
    v8 = (*(v3 + 24) + 112 * v5);
    v9 = v8[5];
    if (v9)
    {
      v10 = 16 * v9;
      v11 = (v8[7] + 8);
      do
      {
        result = *v11;
        if (*v11)
        {
          result = re::ecs2::System::setDefaultTaskOptions(result, a2);
        }

        v11 += 2;
        v10 -= 16;
      }

      while (v10);
    }

    v12 = v8[10];
    if (v12)
    {
      v13 = v8[12];
      v14 = 16 * v12;
      v15 = (v13 + 8);
      do
      {
        result = *v15;
        if (*v15)
        {
          result = re::ecs2::System::setDefaultTaskOptions(result, a2);
        }

        v15 += 2;
        v14 -= 16;
      }

      while (v14);
    }

    v16 = *(v3 + 40);
    if (v16 <= v5 + 1)
    {
      v16 = v5 + 1;
    }

    while (v16 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 24) + 112 * v5) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v5) = v16;
LABEL_24:
    ;
  }

  v17 = *a2;
  *(v3 + 144) = *(a2 + 8);
  *(v3 + 136) = v17;
  return result;
}

void *re::ecs2::CustomSystemRegistry::instance(re::ecs2::CustomSystemRegistry *this)
{
  {
    re::ecs2::CustomSystemRegistry::CustomSystemRegistry(&re::ecs2::CustomSystemRegistry::instance(void)::s_instance);
  }

  return &re::ecs2::CustomSystemRegistry::instance(void)::s_instance;
}

void re::ecs2::CustomSystemRegistry::add(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  os_unfair_lock_lock((a1 + 4));
  Systems = re::ecs2::CustomSystemRegistry::createSystems(a1, a2);
  re::ecs2::System::setDefaultTaskOptions(*a3, (a1 + 136));
  v7 = *a3;
  v9 = -1;
  v10 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add((Systems + 48), &v9);
  if (v10)
  {
  }

  os_unfair_lock_unlock((a1 + 4));
}

re *re::ecs2::CustomSystemRegistry::createSystems(uint64_t a1, unint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *&v26 = a2;
  v4 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(a1 + 8, &v26);
  v5 = v4;
  if (!v4)
  {
    v25 = a2;
    v29 = 0;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v26 = 0u;
    memset(v30, 0, 24);
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1 + 8, &v25, v6 ^ (v6 >> 31), v30);
    if (*&v30[12] == 0x7FFFFFFF)
    {
      v7 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(a1 + 8, *&v30[8], *v30);
      v8 = v25;
      *(v7 + 16) = 0u;
      v5 = (v7 + 16);
      *(v7 + 8) = v8;
      *(&v26 + 1) = 0;
      *(v7 + 32) = 0u;
      v27 = 0u;
      *(v7 + 56) = 0;
      LODWORD(v28[0]) = 1;
      *(v7 + 48) = 1;
      *(v28 + 8) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0;
      *(&v28[1] + 8) = 0u;
      *(v7 + 96) = 0;
      v29 = 0;
      DWORD2(v28[2]) = 1;
      *(v7 + 88) = 1;
      ++*(a1 + 48);
    }

    else
    {
      v5 = (*(a1 + 24) + 112 * *&v30[12] + 16);
    }

    re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(&v28[1]);
    v4 = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(&v26 + 8);
  }

  v9 = *(a1 + 72);
  v10 = *v5;
  if (*v5 < v9)
  {
    v11 = 48 * v10;
    do
    {
      v12 = *(a1 + 72);
      if (v12 <= v10)
      {
        v25 = 0;
        v27 = 0u;
        memset(v28, 0, sizeof(v28));
        v26 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *&v30[14] = 789;
        *&v30[18] = 2048;
        *&v30[20] = v10;
        v31 = 2048;
        v32 = v12;
        _os_log_send_and_compose_impl(v23, &v25, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v24);
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(a1 + 88);
      v14 = v13 + v11;
      re::make::shared::object<re::ecs2::CustomSystem>(v4, v30);
      v15 = *v30;
      *(*v30 + 24) = vrev64_s32(*(v13 + v11));
      *(v15 + 240) = *(v13 + v11 + 32);
      v16 = _Block_copy(*(v13 + v11 + 8));
      v17 = *v30;
      *(*v30 + 224) = v16;
      if (*(v13 + v11 + 8))
      {
        v18 = _Block_copy(*(v14 + 16));
        v17 = *v30;
        *(*v30 + 232) = v18;
      }

      else
      {
        *(v17 + 248) = *(v14 + 24);
      }

      *(v17 + 32) = a1;
      re::ecs2::System::setDefaultTaskOptions(v17, (a1 + 136));
      if (*(v13 + v11 + 40) == 1)
      {
        *&v26 = v10;
        *(&v26 + 1) = *v30;
        *v30 = 0;
        v19 = (v5 + 8);
      }

      else
      {
        *&v26 = v10;
        *(&v26 + 1) = *v30;
        *v30 = 0;
        v19 = (v5 + 48);
      }

      v4 = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add(v19, &v26);
      if (*(&v26 + 1))
      {
      }

      if (*v30)
      {
      }

      ++v10;
      v11 += 48;
    }

    while (v9 != v10);
  }

  *v5 = v9;
  return v5;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 16 * v4);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  a2[1] = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::ecs2::CustomSystemRegistry::add(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1);
  re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(&a1[24], a2);

  os_unfair_lock_unlock(a1 + 1);
}

__n128 re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::CustomSystemRegistry::remove(os_unfair_lock_s *a1, uint64_t a2, uint64_t *a3)
{
  os_unfair_lock_lock(a1 + 1);
  v16 = a2;
  v6 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(&a1[2], &v16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6[3];
  if (v7)
  {
    v8 = v6[5];
    v9 = *a3;
    v10 = 16 * v7;
    do
    {
      v11 = *(v8 + 8);
      if (v11 == v9)
      {
        goto LABEL_11;
      }

      v8 += 16;
      v10 -= 16;
    }

    while (v10);
  }

  v12 = v6[8];
  if (!v12)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_14;
  }

  v8 = v6[10];
  v9 = *a3;
  v13 = 16 * v12;
  while (1)
  {
    v11 = *(v8 + 8);
    if (v11 == v9)
    {
      break;
    }

    v8 += 16;
    v13 -= 16;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (v9)
  {

    *(v8 + 8) = 0;
  }

  v14 = 1;
LABEL_14:
  os_unfair_lock_unlock(a1 + 1);
  return v14;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 112 * v6 + 16;
  }
}

void re::ecs2::CustomSystemRegistry::releaseSystems(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1);
  v4 = a2;
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::remove(&a1[2], &v4);
  os_unfair_lock_unlock(a1 + 1);
}

BOOL re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::removeInternal(a1, v5);
}

BOOL re::ecs2::CustomSystemRegistry::hasPendingSystemChanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 4));
  v14 = a2;
  v6 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(a1 + 8, &v14);
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v9 = v6;
    v12 = v7 && (!v6 || *v6 != v7) || ((v14 = a1, (v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a3 + 24, &v14)) == 0) ? (v11 = 0) : (v11 = *v10), v11 != *(v9 + 6)) || HIDWORD(v11) != *(v9 + 16);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v12;
}

void re::ecs2::CustomSystemRegistry::configureSystemChanges(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 4));
  if (!*(a1 + 72))
  {
    if (!*(a1 + 8))
    {
      goto LABEL_49;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v12 = *(*(a1 + 16) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 32)));
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    v13 = *(a1 + 24);
    while (*(v13 + 112 * v12 + 8) != a2)
    {
      v12 = *(v13 + 112 * v12) & 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        goto LABEL_49;
      }
    }
  }

  Systems = re::ecs2::CustomSystemRegistry::createSystems(a1, a2);
  *&v57 = a1;
  v9 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a3 + 24, &v57);
  if (v9)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  v14 = *(Systems + 3);
  if (v10 == v14 && HIDWORD(v10) == *(Systems + 8))
  {
    re::ecs2::CustomSystemRegistry::sortSystems(a1, a4);
  }

  else
  {
    v47 = *(Systems + 8);
    v48 = a4;
    if (v14 != v10)
    {
      v16 = v10;
      v17 = v10;
      v18 = 16 * v10 - 8;
      while (v17 >= 1)
      {
        if (v14 <= --v17)
        {
          goto LABEL_58;
        }

        v19 = *(*(Systems + 5) + v18);
        v18 -= 16;
        if (v19)
        {
          v20 = (v19 + 8);
          v21 = *(v48 + 32);
          v22 = *(v48 + 16);
          if (v22)
          {
            v23 = 8 * v22;
            v24 = *(v48 + 32);
            while (*v24 != v19)
            {
              ++v24;
              v23 -= 8;
              if (!v23)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
            v24 = *(v48 + 32);
          }

          if (v24 != (v21 + 8 * v22))
          {
            v25 = (v24 - v21) >> 3;

            v17 = (v25 + 1);
            goto LABEL_31;
          }

LABEL_29:

          break;
        }
      }

      v17 = 0;
LABEL_31:
      v26 = *(Systems + 3);
      if (v10 < v26)
      {
        v27 = (16 * v10) | 8;
        do
        {
          v28 = *(Systems + 3);
          if (v28 <= v16)
          {
            goto LABEL_54;
          }

          v29 = *(*(Systems + 5) + v27);
          if (v29)
          {
            *&v57 = *(*(Systems + 5) + v27);
            v30 = (v29 + 8);
            re::ecs2::SceneGroup::addSystemNow(a3, &v57, v17);
            if (v57)
            {
            }

            v17 = (v17 + 1);
          }

          ++v16;
          v27 += 16;
        }

        while (v26 != v16);
      }
    }

    v16 = *(Systems + 8);
    v17 = v10 >> 32;
    if (v10 >> 32 < v16)
    {
      v31 = (16 * v17) | 8;
      while (1)
      {
        v28 = *(Systems + 8);
        if (v28 <= v17)
        {
          break;
        }

        v32 = *(*(Systems + 10) + v31);
        if (v32)
        {
          *&v57 = *(*(Systems + 10) + v31);
          v33 = (v32 + 8);
          re::ecs2::SceneGroup::addSystemNow(a3, &v57, 0xFFFFFFFF);
          if (v57)
          {
          }
        }

        ++v17;
        v31 += 16;
        if (v16 == v17)
        {
          goto LABEL_46;
        }
      }

      v49 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v38 = MEMORY[0x1E69E9C10];
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      v51 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v52 = 789;
      v53 = 2048;
      v54 = v17;
      v55 = 2048;
      v56 = v28;
      _os_log_send_and_compose_impl(v39, &v49, &v57, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v49 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      v51 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v52 = 789;
      v53 = 2048;
      v54 = v16;
      v55 = 2048;
      v56 = v28;
      _os_log_send_and_compose_impl(v42, &v49, &v57, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v49 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      v51 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v52 = 789;
      v53 = 2048;
      v54 = v17;
      v55 = 2048;
      v56 = v14;
      _os_log_send_and_compose_impl(v45, &v49, &v57, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
    }

LABEL_46:
    re::ecs2::CustomSystemRegistry::sortSystems(a1, v48);
    *v50 = a1;
    v57 = 0uLL;
    *&v58 = 0;
    v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a3 + 24, v50, v34 ^ (v34 >> 31), &v57);
    v35 = HIDWORD(v57);
    v36 = v14 | (v47 << 32);
    if (HIDWORD(v57) == 0x7FFFFFFF)
    {
      v37 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(a3 + 24, DWORD2(v57), v57);
      *(v37 + 8) = *v50;
      *(v37 + 16) = v36;
      ++*(a3 + 64);
    }

    else
    {
      ++*(a3 + 64);
      *(*(a3 + 40) + 32 * v35 + 16) = v36;
    }
  }

LABEL_49:
  os_unfair_lock_unlock((a1 + 4));
}

void re::ecs2::CustomSystemRegistry::sortSystems(_anonymous_namespace_ *a1, uint64_t a2)
{
  v130 = *MEMORY[0x1E69E9840];
  v114 = a1;
  if (!*(a1 + 14))
  {
    return;
  }

  v5 = *(a2 + 16);
  memset(v115, 0, sizeof(v115));
  v116 = 0;
  v117 = 0x7FFFFFFFLL;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v10 = 0x7FFFFFFFLL;
    while (1)
    {
      *v122 = 0;
      *&v122[8] = 0xFFFFFFFFLL;
      *&v122[16] = -1;
      if (v7 <= v8)
      {
        break;
      }

      v11 = *(*(a2 + 32) + 8 * v8);
      if (*(v11 + 48) == 2)
      {
        *&v122[16] = *(v11 + 28);
      }

      else
      {
        *v122 = *((*(*v11 + 32))(v11) + 32);
        v7 = *(a2 + 16);
      }

      if (v7 <= v8)
      {
        goto LABEL_156;
      }

      v2 = *(*(a2 + 32) + 8 * v8);
      memset(buf, 0, sizeof(buf));
      *&v126 = 0;
      v12 = re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(v122);
      v6 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(buf, v115, v122, v12);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v6 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(v115, *&buf[8], *buf);
        *(v6 + 8) = *v122;
        *(v6 + 24) = *&v122[16];
        *(v6 + 32) = v2;
        ++HIDWORD(v117);
      }

      v7 = *(a2 + 16);
      if (v7 <= v8)
      {
        goto LABEL_160;
      }

      *(*(*(a2 + 32) + 8 * v8) + 24) = v8;
      if (++v8 >= v7)
      {
        goto LABEL_13;
      }
    }

LABEL_152:
    v118 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    *buf = 0u;
    v98 = MEMORY[0x1E69E9C10];
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *&v119[12] = 1024;
    if (v99)
    {
      v100 = 3;
    }

    else
    {
      v100 = 2;
    }

    *&v119[14] = 789;
    *&v119[18] = 2048;
    *&v119[20] = v8;
    v120 = 2048;
    *v121 = v7;
    _os_log_send_and_compose_impl(v100, &v118, buf, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v113, v114);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v118 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    *buf = 0u;
    v101 = MEMORY[0x1E69E9C10];
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *&v119[12] = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *&v119[14] = 789;
    *&v119[18] = 2048;
    *&v119[20] = v8;
    v120 = 2048;
    *v121 = v7;
    _os_log_send_and_compose_impl(v103, &v118, buf, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v113, v114);
    _os_crash_msg();
    __break(1u);
LABEL_160:
    v118 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    *buf = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v119 = 136315906;
    *&v119[4] = "operator[]";
    *&v119[12] = 1024;
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    *&v119[14] = 789;
    *&v119[18] = 2048;
    *&v119[20] = v8;
    v120 = 2048;
    *v121 = v7;
    _os_log_send_and_compose_impl(v106, &v118, buf, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v113, v114);
    _os_crash_msg();
    __break(1u);
LABEL_164:
    v118 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    *buf = 0u;
    v107 = MEMORY[0x1E69E9C10];
    v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    *&v122[12] = 1024;
    if (v108)
    {
      v109 = 3;
    }

    else
    {
      v109 = 2;
    }

    *&v122[14] = 789;
    *&v122[18] = 2048;
    *&v122[20] = v10;
    v123 = 2048;
    v124 = v9;
    _os_log_send_and_compose_impl(v109, &v118, buf, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
    _os_crash_msg();
    __break(1u);
    goto LABEL_168;
  }

LABEL_13:
  v13 = *(v114 + 14);
  *&v121[2] = 0;
  memset(&v119[8], 0, 20);
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v119, v13);
  ++*&v119[24];
  v14 = *(v114 + 14);
  if (v14)
  {
    v8 = 0;
    v7 = *(v114 + 16);
    v15 = &v7[6 * v14];
    do
    {
      v16 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(v115, v7);
      if (v16)
      {
        v17 = v16;
        v18 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(v115, v7 + 3);
        if (v18)
        {
          v19 = v18;
          v20 = *v17;
          v21 = *v18;
          if (*v17 != *v18 && (*(v20 + 32) == v114 || *(v21 + 32) == v114))
          {
            if (*&v119[16] >= *&v119[8])
            {
              v22 = *&v119[16] + 1;
              if (*&v119[8] < (*&v119[16] + 1))
              {
                if (*v119)
                {
                  v23 = 8;
                  if (*&v119[8])
                  {
                    v23 = 2 * *&v119[8];
                  }

                  if (v23 <= v22)
                  {
                    v24 = *&v119[16] + 1;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v119, v24);
                }

                else
                {
                  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v119, v22);
                  ++*&v119[24];
                }
              }
            }

            v10 = *&v121[2];
            v25 = *&v119[16];
            v26 = *&v121[2] + 24 * *&v119[16];
            *v26 = v20;
            *(v26 + 8) = v21;
            *(v26 + 16) = 0;
            v3 = v25 + 1;
            *&v119[16] = v25 + 1;
            v9 = ++*&v119[24];
            if (hasCycle)
            {
              v28 = *re::ecsCoreLogObjects(hasCycle);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
              }

              if (v3 >= 1)
              {
                v29 = (v3 & 0x7FFFFFFF) + 1;
                v30 = v10 - 24 + 24 * (v3 & 0x7FFFFFFF);
                do
                {
                  v2 = v29 - 2;
                  if (v3 <= v29 - 2)
                  {
                    goto LABEL_148;
                  }

                  if (*(v30 + 17) == 1)
                  {
                    v31 = v3 - 1;
                    if (v3 - 1 > v2)
                    {
                      v32 = v10 - 24 + 24 * v3;
                      v33 = *v32;
                      *(v30 + 16) = *(v32 + 16);
                      *v30 = v33;
                      v31 = v3 - 1;
                    }

                    v9 = (v9 + 1);
                    v3 = v31;
                  }

                  --v29;
                  v30 -= 24;
                }

                while (v29 > 1);
                *&v119[16] = v3;
                *&v119[24] = v9;
              }
            }

            else
            {
              v8 = v8 | (*(*v19 + 49) == 0);
            }
          }
        }
      }

      v7 += 6;
    }

    while (v7 != v15);
    if (v8)
    {
      v34 = *&v119[16];
      if (*&v119[16])
      {
        v35 = *&v121[2];
        v36 = (*&v119[16] + 15) & 0xFFFFFFFFFFFFFFF0;
        v37 = vdupq_n_s64(*&v119[16] - 1);
        v38 = xmmword_1E30903C0;
        v39 = xmmword_1E30903D0;
        v40 = xmmword_1E30903E0;
        v41 = xmmword_1E30903F0;
        v42 = xmmword_1E305F210;
        v43 = xmmword_1E3049660;
        v44 = xmmword_1E3049640;
        v45 = xmmword_1E3049620;
        v46 = (*&v121[2] + 208);
        v47 = vdupq_n_s64(0x10uLL);
        do
        {
          v48 = vmovn_s64(vcgeq_u64(v37, v45));
          if (vuzp1_s8(vuzp1_s16(v48, *v37.i8), *v37.i8).u8[0])
          {
            *(v46 - 192) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v48, *&v37), *&v37).i8[1])
          {
            *(v46 - 168) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v44))), *&v37).i8[2])
          {
            *(v46 - 144) = 0;
            *(v46 - 120) = 0;
          }

          v49 = vmovn_s64(vcgeq_u64(v37, v43));
          if (vuzp1_s8(*&v37, vuzp1_s16(v49, *&v37)).i32[1])
          {
            *(v46 - 96) = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v49, *&v37)).i8[5])
          {
            *(v46 - 72) = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v42)))).i8[6])
          {
            *(v46 - 48) = 0;
            *(v46 - 24) = 0;
          }

          v50 = vmovn_s64(vcgeq_u64(v37, v41));
          if (vuzp1_s8(vuzp1_s16(v50, *v37.i8), *v37.i8).u8[0])
          {
            *v46 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v50, *&v37), *&v37).i8[1])
          {
            v46[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v40))), *&v37).i8[2])
          {
            v46[48] = 0;
            v46[72] = 0;
          }

          v51 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s8(*&v37, vuzp1_s16(v51, *&v37)).i32[1])
          {
            v46[96] = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v51, *&v37)).i8[5])
          {
            v46[120] = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38)))).i8[6])
          {
            v46[144] = 0;
            v46[168] = 0;
          }

          v43 = vaddq_s64(v43, v47);
          v44 = vaddq_s64(v44, v47);
          v45 = vaddq_s64(v45, v47);
          v42 = vaddq_s64(v42, v47);
          v41 = vaddq_s64(v41, v47);
          v40 = vaddq_s64(v40, v47);
          v39 = vaddq_s64(v39, v47);
          v46 += 384;
          v38 = vaddq_s64(v38, v47);
          v36 -= 16;
        }

        while (v36);
        v52 = (v35 + 16);
        do
        {
          if (!*(*(v52 - 1) + 49) && (*v52 & 1) == 0)
          {
          }

          v52 += 24;
          --v34;
        }

        while (v34);
      }
    }
  }

  v9 = *&v119[16];
  if (!*&v119[16])
  {
    goto LABEL_123;
  }

  v53 = *(a2 + 16);
  if (!v53)
  {
    goto LABEL_123;
  }

  v54 = 0;
  v7 = 0;
  v55 = *&v121[2];
  v56 = *&v121[2] + 8;
  v8 = 24;
  v10 = *&v119[16];
  do
  {
    v3 = *(a2 + 16);
    if (v3 <= v7)
    {
      v57 = v7;
    }

    else
    {
      v57 = *(a2 + 16);
    }

    v2 = -1;
    v58 = 0x7FFFFFFFLL;
    v59 = v7;
    v60 = 0x7FFFFFFFLL;
    while (1)
    {
      if (v59 == v57)
      {
        goto LABEL_136;
      }

      v61 = *(*(a2 + 32) + 8 * v59);
      v62 = *(v61 + 24);
      if (v62 > v60)
      {
        goto LABEL_86;
      }

      v63 = v62;
      if (*(v61 + 48) != 2)
      {
        if (v58 > v62)
        {
          v67 = v9;
          v68 = v10;
          v69 = v56;
          while (1)
          {
            if (!v67)
            {
              goto LABEL_132;
            }

            if (*v69 == v61)
            {
              break;
            }

            v69 += 3;
            --v67;
            if (!--v68)
            {
              goto LABEL_99;
            }
          }

          v62 = v60;
          v58 = v63;
          goto LABEL_102;
        }

LABEL_86:
        v62 = v60;
        goto LABEL_102;
      }

      if (*(v61 + 32) == v114)
      {
        v64 = v9;
        v65 = v10;
        v66 = v56;
        while (v64)
        {
          if (*v66 == v61)
          {
            goto LABEL_86;
          }

          v66 += 3;
          --v64;
          if (!--v65)
          {
            goto LABEL_99;
          }
        }

        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v80 = MEMORY[0x1E69E9C10];
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v81)
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v9;
        v123 = 2048;
        v124 = v9;
        _os_log_send_and_compose_impl(v82, &v118, buf, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
LABEL_132:
        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v9;
        v123 = 2048;
        v124 = v9;
        _os_log_send_and_compose_impl(v85, &v118, buf, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
LABEL_136:
        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v86 = MEMORY[0x1E69E9C10];
        v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v87)
        {
          v88 = 3;
        }

        else
        {
          v88 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v57;
        v123 = 2048;
        v124 = v3;
        _os_log_send_and_compose_impl(v88, &v118, buf, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
LABEL_140:
        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v89 = MEMORY[0x1E69E9C10];
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v57;
        v123 = 2048;
        v124 = v9;
        _os_log_send_and_compose_impl(v91, &v118, buf, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
LABEL_144:
        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v2;
        v123 = 2048;
        v124 = v3;
        _os_log_send_and_compose_impl(v94, &v118, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
LABEL_148:
        v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        *buf = 0u;
        v95 = MEMORY[0x1E69E9C10];
        v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v122 = 136315906;
        *&v122[4] = "operator[]";
        *&v122[12] = 1024;
        if (v96)
        {
          v97 = 3;
        }

        else
        {
          v97 = 2;
        }

        *&v122[14] = 789;
        *&v122[18] = 2048;
        *&v122[20] = v2;
        v123 = 2048;
        v124 = v3;
        _os_log_send_and_compose_impl(v97, &v118, buf, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
        goto LABEL_152;
      }

LABEL_99:
      v2 = v59;
      if (v54 == v62)
      {
        break;
      }

LABEL_102:
      ++v59;
      v60 = v62;
      if (v59 == v53)
      {
        goto LABEL_103;
      }
    }

    v2 = v59;
LABEL_103:
    LODWORD(v57) = v10;
    if (v10 - 1 >= 0)
    {
      do
      {
        v57 = (v57 - 1);
        if (v9 <= v57)
        {
          goto LABEL_140;
        }

        v3 = *(a2 + 16);
        if (v3 <= v2)
        {
          goto LABEL_144;
        }

        v70 = (v55 + 24 * v57);
        v71 = *(*(a2 + 32) + 8 * v2);
        if ((*v70 == v71 || *(v70 + 1) == v71) && --v10 > v57)
        {
          if (v9 <= v10)
          {
            goto LABEL_164;
          }

          v72 = (v55 + 24 * v10);
          v73 = *v70;
          v74 = *(v70 + 2);
          v75 = *(v72 + 8);
          *v70 = *v72;
          *(v70 + 8) = v75;
          *(v72 + 8) = v74;
          *v72 = v73;
        }
      }

      while (v57 > 0);
    }

    if (v54 == v62)
    {
      ++v54;
    }

    if (v2 != v7)
    {
      v3 = *(a2 + 16);
      if (v3 > v2)
      {
        v76 = v56;
        v77 = v54;
        v78 = *(*(a2 + 32) + 8 * v2);
        *buf = v78;
        if (v78)
        {
          v79 = (v78 + 8);
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(a2, v2);
        re::DynamicArray<re::SharedPtr<re::ecs2::System>>::insert(a2, v7, buf);
        if (*buf)
        {
        }

        v54 = v77;
        v56 = v76;
        goto LABEL_121;
      }

LABEL_168:
      v118 = 0;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      *buf = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v122 = 136315906;
      *&v122[4] = "operator[]";
      *&v122[12] = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      *&v122[14] = 789;
      *&v122[18] = 2048;
      *&v122[20] = v2;
      v123 = 2048;
      v124 = v3;
      _os_log_send_and_compose_impl(v112, &v118, buf, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
    }

LABEL_121:
    v7 = (v7 + 1);
  }

  while (v7 < v53 && v10);
LABEL_123:
  if (*v119)
  {
    if (*&v121[2])
    {
      (*(**v119 + 40))();
    }
  }

  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v115);
}

uint64_t anonymous namespace::setSystemGroup(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 48) == 2 && *(result + 32) == a3)
  {
    *(result + 49) = 0;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a2 + 32) + v7;
      if (*(v9 + 8) == v5)
      {
        *(v9 + 16) = 1;
        v6 = *(a2 + 16);
      }

      v7 += 24;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        v6 = v3 + 8;
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v6 += 16;
          v5 -= 16;
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

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(a2);
  re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v7 + 32;
  }
}

uint64_t anonymous namespace::hasCycle(uint64_t a1, uint64_t a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (!a3)
  {
    if (v5)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = vdupq_n_s64(v5 - 1);
  v8 = xmmword_1E30903C0;
  v9 = xmmword_1E30903D0;
  v10 = xmmword_1E30903E0;
  v11 = xmmword_1E30903F0;
  v12 = xmmword_1E305F210;
  v13 = xmmword_1E3049660;
  v14 = xmmword_1E3049640;
  v15 = xmmword_1E3049620;
  v16 = (*(a2 + 32) + 208);
  v17 = vdupq_n_s64(0x10uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v7, v15));
    if (vuzp1_s8(vuzp1_s16(v18, *v7.i8), *v7.i8).u8[0])
    {
      *(v16 - 192) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v18, *&v7), *&v7).i8[1])
    {
      *(v16 - 168) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v14))), *&v7).i8[2])
    {
      *(v16 - 144) = 0;
      *(v16 - 120) = 0;
    }

    v19 = vmovn_s64(vcgeq_u64(v7, v13));
    if (vuzp1_s8(*&v7, vuzp1_s16(v19, *&v7)).i32[1])
    {
      *(v16 - 96) = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v19, *&v7)).i8[5])
    {
      *(v16 - 72) = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v12)))).i8[6])
    {
      *(v16 - 48) = 0;
      *(v16 - 24) = 0;
    }

    v20 = vmovn_s64(vcgeq_u64(v7, v11));
    if (vuzp1_s8(vuzp1_s16(v20, *v7.i8), *v7.i8).u8[0])
    {
      *v16 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v20, *&v7), *&v7).i8[1])
    {
      v16[24] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v10))), *&v7).i8[2])
    {
      v16[48] = 0;
      v16[72] = 0;
    }

    v21 = vmovn_s64(vcgeq_u64(v7, v9));
    if (vuzp1_s8(*&v7, vuzp1_s16(v21, *&v7)).i32[1])
    {
      v16[96] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v21, *&v7)).i8[5])
    {
      v16[120] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8)))).i8[6])
    {
      v16[144] = 0;
      v16[168] = 0;
    }

    v13 = vaddq_s64(v13, v17);
    v14 = vaddq_s64(v14, v17);
    v15 = vaddq_s64(v15, v17);
    v12 = vaddq_s64(v12, v17);
    v11 = vaddq_s64(v11, v17);
    v10 = vaddq_s64(v10, v17);
    v9 = vaddq_s64(v9, v17);
    v16 += 384;
    v8 = vaddq_s64(v8, v17);
    v6 -= 16;
  }

  while (v6);
LABEL_31:
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = *(a2 + 32);
    v25 = v24 + v22;
    if (*(v24 + v22 + 8) == a1)
    {
      if (*(v25 + 16) == 1)
      {
        v28 = v24 + v22;
        goto LABEL_40;
      }

      *(v25 + 16) = 1;
      v5 = *(a2 + 16);
      if (hasCycle)
      {
        break;
      }
    }

    ++v23;
    v22 += 24;
    if (v23 >= v5)
    {
      return 0;
    }
  }

  if (v5 <= v23)
  {
    v33 = 0;
    memset(v42, 0, sizeof(v42));
    v29 = MEMORY[0x1E69E9C10];
    v30 = v5;
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v23;
    v40 = 2048;
    v41 = v30;
    _os_log_send_and_compose_impl(v31, &v33, v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
  }

  v28 = *(a2 + 32) + v22;
LABEL_40:
  result = 1;
  *(v28 + 17) = 1;
  return result;
}

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v9 = *a3;
    v10 = *(a3 + 3);
    v11 = *(a3 + 2);
    v12 = HIWORD(*(a3 + 2));
    v13 = *(a3 + 4);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v6;
      v15 = v8 + 48 * v6;
      v17 = *(v15 + 8);
      v16 = v15 + 8;
      if (v17 == v9 && *(v16 + 8) == v11 && *(v16 + 10) == v12)
      {
        v19 = *(v16 + 12);
        v18 = *(v16 + 16);
        if (((v19 ^ v10) & 0xFFFFFF) == 0 && v18 == v13)
        {
          break;
        }
      }

      v6 = *(v8 + 48 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_14;
      }
    }

    v5 = v14;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_14:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(uint64_t a1)
{
  v2 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v5, a1);
  v3 = 0xBF58476D1CE4E5B9 * (*(a1 + 16) ^ (*(a1 + 16) >> 30));
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31))) ^ v2;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(v5, a2);
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
        v10 = 48 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = v8[2];
          v11[1] = v8[1];
          v11[2] = v13;
          *v11 = v12;
          v11 += 3;
          v8 += 3;
          v10 -= 48;
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

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v3 = (*(result + 16) + 112 * a2);
  if ((*v3 & 0x80000000) != 0)
  {
    *v3 &= ~0x80000000;
    v4 = (v3 + 6);
    re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit((v3 + 16));

    return re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(v4);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = v12[1];
          *v11 = *v12;
          v11[1] = v13;
          v11 += 2;
          v12[1] = 0;
          v12 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 112 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 112 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 112 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 112 * v8) & 0x7FFFFFFF;
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

BOOL re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 112 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 112 * v5) = *(v6 + 112 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 112 * v9) = *(*(a1 + 16) + 112 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          *&v33[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v13 = *&v33[32];
          *(a1 + 24) = v14;
          ++*&v33[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 56;
            do
            {
              if ((*(*&v33[16] + v17 - 56) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(a1, *(*&v33[16] + v17 + 48) % *(a1 + 24), *(*&v33[16] + v17 + 48));
                v19 = *&v33[16] + v17;
                v20 = *(*&v33[16] + v17 - 40);
                *(v18 + 8) = *(*&v33[16] + v17 - 48);
                *(v18 + 16) = v20;
                *(v18 + 56) = 0;
                *(v18 + 48) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                v21 = *(v19 - 24);
                *(v18 + 24) = *(v19 - 32);
                *(v18 + 32) = v21;
                *(v19 - 32) = 0;
                *(v19 - 24) = 0;
                v22 = *(v18 + 40);
                *(v18 + 40) = *(v19 - 16);
                *(v19 - 16) = v22;
                v23 = *(v18 + 56);
                *(v18 + 56) = *v19;
                *v19 = v23;
                ++*(v19 - 8);
                ++*(v18 + 48);
                *(v18 + 96) = 0;
                *(v18 + 72) = 0;
                *(v18 + 80) = 0;
                *(v18 + 64) = 0;
                *(v18 + 88) = 0;
                v24 = *(v19 + 16);
                *(v18 + 64) = *(v19 + 8);
                *(v18 + 72) = v24;
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                v25 = *(v18 + 80);
                *(v18 + 80) = *(v19 + 24);
                *(v19 + 24) = v25;
                v26 = *(v18 + 96);
                *(v18 + 96) = *(v19 + 40);
                *(v19 + 40) = v26;
                ++*(v19 + 32);
                ++*(v18 + 88);
                v15 = *&v33[32];
              }

              ++v16;
              v17 += 112;
            }

            while (v16 < v15);
          }

          re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(v33);
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

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 112 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 112 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 112 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 104) = a3;
  ++*(a1 + 28);
  return v27 + 112 * v5;
}

double re::make::shared::object<re::ecs2::CustomSystem>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 368, 8);
  v5 = re::ecs2::System::System(v4, 2, 1);
  *v5 = &unk_1F5D01448;
  result = 0.0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 308) = 0x7FFFFFFFLL;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0;
  *(v5 + 356) = 0x7FFFFFFFLL;
  *a2 = v5;
  return result;
}

void re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::init(v26, v9, v8);
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
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                v19 = *(v17 - 3);
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 8) = v19;
                *(v18 + 32) = *v17;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v26);
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
    v21 = *(v20 + 48 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 48 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 40) = a3;
  ++*(a1 + 28);
  return v20 + 48 * v5;
}

uint64_t re::ecs2::SystemSchedulingDisabler::disableSchedulingIfNoComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::ecs2::System::taskOptions(a1, a2);
  v9 = *(v8 + 8);
  v20 = *v8;
  v21 = v9;
  if (v20 == 1)
  {
    return 1;
  }

  v11 = (*(**(a1 + 40) + 304))(*(a1 + 40), a2);
  v12 = *(v11 + 200);
  if (v12)
  {
    v13 = *(v11 + 216);
    v14 = v13 + 8 * v12;
    while (!a4)
    {
LABEL_11:
      v13 += 8;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }

    v15 = 8 * a4;
    v16 = a3;
    while (1)
    {
      v17 = *(*v16 + 16);
      if (*(*v13 + 224) > v17)
      {
        v18 = *(*(*v13 + 240) + 8 * v17);
        if (v18)
        {
          if (*(v18 + 384))
          {
            return 0;
          }
        }
      }

      v16 += 8;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 1;
    LOBYTE(v20) = 1;
    re::ecs2::System::setTaskOptions(a1, a2, &v20);
  }

  return v10;
}