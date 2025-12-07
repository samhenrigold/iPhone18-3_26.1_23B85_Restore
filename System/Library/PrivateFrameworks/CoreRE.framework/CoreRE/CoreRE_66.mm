void re::IntrospectionInfo<re::CollisionShapeData *>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1996D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996D8))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE199730);
    __cxa_guard_release(&qword_1EE1996D8);
  }

  if ((_MergedGlobals_92 & 1) == 0)
  {
    _MergedGlobals_92 = 1;
    v6 = re::introspect_CollisionShapeData(1, a2, a3, a4, a5, a6);
    ArcSharedObject::ArcSharedObject(&qword_1EE199730, 0);
    qword_1EE199740 = 0x800000001;
    dword_1EE199748 = 8;
    word_1EE19974C = 0;
    *&xmmword_1EE199750 = 0;
    *(&xmmword_1EE199750 + 1) = 0xFFFFFFFFLL;
    qword_1EE199730 = &unk_1F5CBD2C0;
    qword_1EE199760 = v6;
    unk_1EE199768 = 0;
    re::IntrospectionRegistry::add(v7, v8);
    re::getPrettyTypeName(&v13, &qword_1EE199730);
    if (BYTE8(v13))
    {
      v9 = v14;
    }

    else
    {
      v9 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if (v15 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v11 = v13;
    }

    else
    {
      v13 = *(v6 + 32);
      v11 = v12;
    }

    xmmword_1EE199750 = v11;
    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

void *re::allocInfo_CollisionShapeAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199690))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1997F0, "CollisionShapeAsset");
    __cxa_guard_release(&qword_1EE199690);
  }

  return &unk_1EE1997F0;
}

void re::initInfo_CollisionShapeAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x601D4512AD02B902;
  v15[1] = "CollisionShapeAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE199688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199688))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::CollisionShapeData *>::get(v7, v8, v9, v10, v11, v12);
    v13 = (*(*v7 + 32))(v7, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "m_data";
    *(v13 + 16) = &qword_1EE199730;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE199680 = v13;
    __cxa_guard_release(&qword_1EE199688);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199680;
  *(this + 9) = re::internal::defaultConstruct<re::CollisionShapeAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CollisionShapeAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::CollisionShapeAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::CollisionShapeAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void *re::internal::defaultConstructV2<re::CollisionShapeAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void re::IntrospectionInfo<re::PhysicsMaterial *>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE1996E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996E0))
  {
    re::IntrospectionPointer::IntrospectionPointer(qword_1EE199770);
    __cxa_guard_release(&qword_1EE1996E0);
  }

  if ((byte_1EE199679 & 1) == 0)
  {
    byte_1EE199679 = 1;
    v2 = re::introspect_PhysicsMaterial(1);
    ArcSharedObject::ArcSharedObject(qword_1EE199770, 0);
    qword_1EE199780 = 0x800000001;
    dword_1EE199788 = 8;
    word_1EE19978C = 0;
    *&xmmword_1EE199790 = 0;
    *(&xmmword_1EE199790 + 1) = 0xFFFFFFFFLL;
    qword_1EE199770[0] = &unk_1F5CBD2C0;
    qword_1EE1997A0 = v2;
    unk_1EE1997A8 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, qword_1EE199770);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v2 + 32);
      v7 = v8;
    }

    xmmword_1EE199790 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

void *re::allocInfo_PhysicsMaterialAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1996A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199880, "PhysicsMaterialAsset");
    __cxa_guard_release(&qword_1EE1996A8);
  }

  return &unk_1EE199880;
}

void re::initInfo_PhysicsMaterialAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v13[0] = 0xD183AEF73ADBE44;
  v13[1] = "PhysicsMaterialAsset";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1996A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996A0))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::PhysicsMaterial *>::get(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "m_data";
    *(v9 + 16) = qword_1EE199770;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE199720 = v9;
    v10 = re::introspectionAllocator();
    v11 = (*(*v10 + 32))(v10, 24, 8);
    *v11 = 5;
    *(v11 + 8) = "m_material";
    *(v11 + 16) = "m_data";
    qword_1EE199728 = v11;
    __cxa_guard_release(&qword_1EE1996A0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE199720;
  *(this + 9) = re::internal::defaultConstruct<re::PhysicsMaterialAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PhysicsMaterialAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::PhysicsMaterialAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::PhysicsMaterialAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v12 = v14;
}

void *re::internal::defaultConstructV2<re::PhysicsMaterialAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void re::IntrospectionInfo<re::IndexedTriangleMeshData *>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1996E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996E8))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1997B0);
    __cxa_guard_release(&qword_1EE1996E8);
  }

  if ((byte_1EE19967A & 1) == 0)
  {
    byte_1EE19967A = 1;
    v6 = re::introspect_IndexedTriangleMeshData(1, a2, a3, a4, a5, a6);
    ArcSharedObject::ArcSharedObject(&qword_1EE1997B0, 0);
    qword_1EE1997C0 = 0x800000001;
    dword_1EE1997C8 = 8;
    word_1EE1997CC = 0;
    *&xmmword_1EE1997D0 = 0;
    *(&xmmword_1EE1997D0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1997B0 = &unk_1F5CBD2C0;
    qword_1EE1997E0 = v6;
    unk_1EE1997E8 = 0;
    re::IntrospectionRegistry::add(v7, v8);
    re::getPrettyTypeName(&v13, &qword_1EE1997B0);
    if (BYTE8(v13))
    {
      v9 = v14;
    }

    else
    {
      v9 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if (v15 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v11 = v13;
    }

    else
    {
      v13 = *(v6 + 32);
      v11 = v12;
    }

    xmmword_1EE1997D0 = v11;
    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

void *re::allocInfo_IndexedTriangleMeshAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1996C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199910, "IndexedTriangleMeshAsset");
    __cxa_guard_release(&qword_1EE1996C8);
  }

  return &unk_1EE199910;
}

void re::initInfo_IndexedTriangleMeshAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xA2432DB9E2F0D614;
  v15[1] = "IndexedTriangleMeshAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1996C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996C0))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::IndexedTriangleMeshData *>::get(v7, v8, v9, v10, v11, v12);
    v13 = (*(*v7 + 32))(v7, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "m_data";
    *(v13 + 16) = &qword_1EE1997B0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1996B8 = v13;
    __cxa_guard_release(&qword_1EE1996C0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1996B8;
  *(this + 9) = re::internal::defaultConstruct<re::IndexedTriangleMeshAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IndexedTriangleMeshAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::IndexedTriangleMeshAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::IndexedTriangleMeshAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void *re::internal::defaultConstructV2<re::IndexedTriangleMeshAsset>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t re::CollisionShapeAssetLoader::introspectionType(re::CollisionShapeAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1996F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1996F8))
  {
    qword_1EE1996F0 = re::internal::getOrCreateInfo("CollisionShapeAsset", re::allocInfo_CollisionShapeAsset, re::initInfo_CollisionShapeAsset, &unk_1EE199698, 0);
    __cxa_guard_release(&qword_1EE1996F8);
  }

  return qword_1EE1996F0;
}

void re::CollisionShapeAssetLoader::findDependencies(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (v4 == 7)
  {
    v5 = v3[3];
    if (v5)
    {
      v6 = 80 * v5;
      v7 = (v3[4] + 48);
      do
      {
        re::DynamicArray<re::AssetHandle>::add(a2, v7);
        v7 = (v7 + 80);
        v6 -= 80;
      }

      while (v6);
    }
  }

  else if (v4 == 12)
  {

    re::DynamicArray<re::AssetHandle>::add(a2, (v3 + 2));
  }
}

_anonymous_namespace_ *re::CollisionShapeAssetLoader::internalFindAssetHandleFields@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (v4 == 7)
  {
    v6 = *(v3 + 24);
    if (v6)
    {
      v7 = 80 * v6;
      v8 = *(v3 + 32) + 48;
      do
      {
        v9 = v8;
        result = re::DynamicArray<re::TransitionCondition *>::add(a2, &v9);
        v8 += 80;
        v7 -= 80;
      }

      while (v7);
    }
  }

  else if (v4 == 12)
  {
    v9 = v3 + 16;
    return re::DynamicArray<re::TransitionCondition *>::add(a2, &v9);
  }

  return result;
}

uint64_t re::CollisionShapeAssetLoader::registerAsset(re::CollisionShapeAssetLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v4 = *a2;
  v5 = *(*a2 + 8);
  if (v5 > 0xC)
  {
    goto LABEL_4;
  }

  if (((1 << v5) & 0x1B7E) != 0)
  {
    this = re::AssetLoader::registerAsset(this, a2, a3);
    v7 = this;
    if (!this)
    {
      goto LABEL_4;
    }

    return v7;
  }

  if (v5 != 7)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected collision shape type.", "!Unreachable code", "registerAsset", 173);
    result = _os_crash("assertion failure: (!Unreachable code) Unexpected collision shape type.");
    __break(1u);
    return result;
  }

  v10 = *(v4 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  v7 = 0;
  v11 = (*(v4 + 32) + 48);
  v12 = 80 * v10;
  do
  {
    v13 = *(v11 + 1);
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = atomic_load((v13 + 896));
    if (v14 == 3)
    {
      v7 = 2;
      goto LABEL_18;
    }

    v15 = *(v11 + 1);
    if (!v15 || (v16 = atomic_load((v15 + 896)), v16 != 2))
    {
LABEL_16:
      re::AssetHandle::loadAsync(v11);
      if (!v7)
      {
        v7 = 1;
      }
    }

LABEL_18:
    v11 = (v11 + 80);
    v12 -= 80;
  }

  while (v12);
  if (!v7)
  {
    if (*(v4 + 24))
    {
      v17 = re::FixedArray<re::GeometricObjectData>::operator[](v4 + 16);
      v18 = *(*(v17 + 56) + 24);
      if (*(a3 + 13))
      {
        v19 = *(a3 + 14);
      }

      else
      {
        v19 = a3 + 105;
      }

      (*(*v18 + 8))(v23, *(*(v17 + 56) + 24), v19);
      v20 = *(v4 + 24);
      if (v20)
      {
        v21 = 80 * v20;
        v22 = *(v4 + 32) + 48;
        do
        {
          (*(*v18 + 296))(v18, v23, v22);
          v22 += 80;
          v21 -= 80;
        }

        while (v21);
      }

      re::AssetHandle::~AssetHandle(v23);
    }

LABEL_4:
    if (*(a2 + 1))
    {
      return 0;
    }

    else
    {
      v8 = re::globalAllocators(this);
      return re::convertFromSerializable(*a2, (a2 + 8), v8[2], v8[2], 0);
    }
  }

  return v7;
}

uint64_t re::FixedArray<re::GeometricObjectData>::operator[](uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    v5 = 0;
    memset(v14, 0, sizeof(v14));
    v2 = MEMORY[0x1E69E9C10];
    v6 = 136315906;
    v7 = "operator[]";
    v8 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v9 = 468;
    v10 = 2048;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    _os_log_send_and_compose_impl(v3, &v5, v14, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v6, 38, v4);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16);
}

uint64_t *re::CollisionShapeAssetLoader::unregisterAsset(re::CollisionShapeAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  result = re::globalAllocators(this);
  v5 = a2[1];
  if (v5)
  {
    v6 = result[2];
    (**v5)(a2[1]);
    result = (*(*v6 + 40))(v6, v5);
    a2[1] = 0;
  }

  return result;
}

uint64_t re::CollisionShapeAssetLoader::unloadAsset(re::CollisionShapeAssetLoader *this, void *a2)
{
  v3 = re::globalAllocators(this);
  v4 = *a2;
  if (*a2)
  {
    v5 = v3[2];
    (**v4)(*a2);
    v3 = (*(*v5 + 40))(v5, v4);
    *a2 = 0;
  }

  v6 = *(*re::globalAllocators(v3)[2] + 40);

  return v6();
}

uint64_t re::PhysicsMaterialAssetLoader::introspectionType(re::PhysicsMaterialAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE199708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199708))
  {
    qword_1EE199700 = re::internal::getOrCreateInfo("PhysicsMaterialAsset", re::allocInfo_PhysicsMaterialAsset, re::initInfo_PhysicsMaterialAsset, &unk_1EE1996B0, 0);
    __cxa_guard_release(&qword_1EE199708);
  }

  return qword_1EE199700;
}

void *re::PhysicsMaterialAssetLoader::allocateSampleAsset(re::PhysicsMaterialAssetLoader *this, re::CollisionFactory *a2)
{
  v2 = re::PhysicsFactory::defaultFactory(this, a2);
  v3 = (*(*v2 + 16))(v2, re::PhysicsFactory::m_defaultAllocator, 0.1, 0.5, 0.5);
  v4 = re::globalAllocators(v3);
  v5 = v4[2];
  v6 = re::globalAllocators(v4);
  v7 = (*(*v6[2] + 32))(v6[2], 16, 8);
  re::PhysicsMaterial::createGenericMaterial(v3, v5);
  *v7 = v8;
  v7[1] = v3;
  return v7;
}

uint64_t re::PhysicsMaterialAssetLoader::unloadAsset(re::PhysicsMaterialAssetLoader *this, void *a2)
{
  v3 = re::globalAllocators(this);
  v4 = v3[2];
  v5 = *a2;
  if (*a2)
  {
    (**v5)(*a2);
    v3 = (*(*v4 + 40))(v4, v5);
    *a2 = 0;
  }

  v6 = a2[1];
  if (v6)
  {
    (**v6)(a2[1]);
    v3 = (*(*v4 + 40))(v4, v6);
    a2[1] = 0;
  }

  v7 = *(*re::globalAllocators(v3)[2] + 40);

  return v7();
}

uint64_t re::PhysicsMaterialAssetLoader::registerAsset(re::PhysicsMaterialAssetLoader *this, float **a2, const re::ExistingAssetInformation *a3)
{
  if (!a2[1])
  {
    v4 = re::globalAllocators(this);
    v5 = v4[2];
    v6 = *a2;
    v8 = re::PhysicsFactory::defaultFactory(v4, v7);
    a2[1] = (*(*v8 + 16))(v8, v5, v6[2], v6[3], v6[4]);
  }

  return 0;
}

uint64_t re::IndexedTriangleMeshAssetLoader::introspectionType(re::IndexedTriangleMeshAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE199718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199718))
  {
    qword_1EE199710 = re::internal::getOrCreateInfo("IndexedTriangleMeshAsset", re::allocInfo_IndexedTriangleMeshAsset, re::initInfo_IndexedTriangleMeshAsset, &unk_1EE1996D0, 0);
    __cxa_guard_release(&qword_1EE199718);
  }

  return qword_1EE199710;
}

uint64_t re::IndexedTriangleMeshAssetLoader::unloadAsset(re::IndexedTriangleMeshAssetLoader *this, uint64_t **a2)
{
  v3 = re::globalAllocators(this);
  v4 = v3[2];
  v5 = *a2;
  if (*a2)
  {
    re::FixedArray<CoreIKTransform>::deinit(v5 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v5 + 3);
    re::FixedArray<CoreIKTransform>::deinit(v5);
    v3 = (*(*v4 + 40))(v4, v5);
    *a2 = 0;
  }

  v6 = a2[1];
  if (v6)
  {
    (**v6)(a2[1]);
    v3 = (*(*v4 + 40))(v4, v6);
    a2[1] = 0;
  }

  v7 = *(*re::globalAllocators(v3)[2] + 40);

  return v7();
}

uint64_t re::IndexedTriangleMeshAssetLoader::createRuntimeData(re *a1, uint64_t *a2)
{
  if (!a2[1])
  {
    v3 = re::globalAllocators(a1);
    a2[1] = re::convertFromSerializable(*a2, v3[2]);
  }

  return 1;
}

uint64_t *re::IndexedTriangleMeshAssetLoader::allocateSampleAsset(re::IndexedTriangleMeshAssetLoader *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = xmmword_1E3062430;
  v10[1] = unk_1E3062440;
  v10[2] = xmmword_1E3062450;
  v10[3] = unk_1E3062460;
  v8 = 0x3000300010000;
  v9 = 131073;
  v7 = 1;
  v1 = re::globalAllocators(this)[2];
  {
    re::initCollision(0);
  }

  v3 = (*(*v2 + 152))(v2, v1, v10, 4, 16, &v8, 6, 1, &v7, 2, 1);
  v5 = re::convertToSerializable(v3, v1, v4);
  result = (*(*v1 + 32))(v1, 16, 8);
  *result = v5;
  result[1] = v3;
  return result;
}

void re::IndexedTriangleMeshAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

void re::IndexedTriangleMeshAssetLoader::internalFindAssetHandleFields(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::Drawable::Drawable(uint64_t a1, id a2, uint64_t *a3, uint64_t a4, void *a5, int a6)
{
  *a1 = a4;
  *(a1 + 8) = a6;
  *(a1 + 16) = a2;
  v9 = *a3;
  *(a1 + 56) = 0;
  v10 = (a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v9;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*a5)
  {
    v11 = (a1 + 64);
    re::IOSurfaceWrapper::SharedEvent::createSharedEvent(&v17);
    if (v10 != &v17)
    {
      v12 = v17;
      v17 = 0;
      v13 = *v10;
      *v10 = v12;
    }

    re::IOSurfaceWrapper::SharedEventListener::createSharedEventListenerWithQueue(a5, &v17);
    if (v11 != &v17)
    {
      v14 = v17;
      v17 = 0;
      v15 = *v11;
      *v11 = v14;
    }
  }

  return a1;
}

void re::Drawable::~Drawable(re::Drawable *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;

  v3 = *(this + 8);
  *(this + 8) = 0;

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }
}

void re::DrawableQueue::present(re::DrawableQueue *this, re::Drawable *a2, uint64_t a3)
{
  v3 = a3;
  re::LocklessRingBuffer::writerReleaseBuffer(*(this + 54), *(a2 + 2), a3);
  if (*(this + 46) == 1)
  {
    if (v3 && (v6 = *(this + 50)) != 0)
    {
      *(v6 + 7) = *(a2 + 2);
      v7 = *(this + 51);

      re::ecs2::NetworkComponent::markDirty(v7, v6);
    }

    else
    {
      atomic_load((*(*(this + 54) + 32) + 16 * *(a2 + 2) + 40));
      if (re::internal::enableSignposts(0, 0))
      {

        kdebug_trace();
      }
    }
  }
}

void re::DrawableQueue::checkAndGenerateMipmapsSynchronous(re::DrawableQueue *this, re::Drawable *a2)
{
  if (*(this + 45) == 1)
  {
    v3 = *(this + 7);
    v2 = (this + 56);
    if (v3)
    {
      re::mtl::CommandQueue::makeCommandBuffer(&v16, v2);
      re::DynamicString::format(buf, "DrawableQueue MipmapGenCommandBuffer-%p", v5, a2);
      if (v13)
      {
        v6 = *&v14[7];
      }

      else
      {
        v6 = v14;
      }

      re::ns::String::String(&v15, v6);
      [v16 setLabel:v15];

      if (*buf && (v13 & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v7 = v16;
      v11 = v7;
      re::DrawableQueue::encodeMipmapsGenerationJob(v7, &v11, a2);

      [v16 commit];
      [v16 waitUntilCompleted];
      re::mtl::CommandBuffer::error(buf, &v16);
      v8 = *buf;

      if (v8)
      {
        v10 = *re::graphicsLogObjects(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to generate mip-maps for the drawable texture!", buf, 2u);
        }
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) CommandQueue is not initialized!", "m_sharedCommandQueue.isValid()", "checkAndGenerateMipmapsSynchronous", 558);
      _os_crash("assertion failure: (m_sharedCommandQueue.isValid()) CommandQueue is not initialized!");
      __break(1u);
    }
  }
}

void re::Drawable::reclaimFromClient(re::Drawable *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 432);
  v2 = *(this + 2);
  v3 = atomic_load((*(v1 + 32) + 16 * v2 + 32));
  if (v3 == 1)
  {
    v4 = (*(v1 + 32) + 16 * v2 + 32);
    v5 = 1;
    atomic_compare_exchange_strong(v4, &v5, 0);
    if (v5 == 1)
    {
      v7 = *re::graphicsLogObjects(this);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(this + 2);
        v9[0] = 67109120;
        v9[1] = v8;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Reclaimed drawable with idx: %d which was in writing state. This is unsafe. Make sure to present the acquired drawable before it goes out of scope", v9, 8u);
      }
    }
  }
}

uint64_t re::DrawableQueue::DrawableQueue(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v8 + 16) = a4;
  *v8 = &unk_1F5CC8608;
  v9 = *a2;
  *(v8 + 40) = *(a2 + 2);
  *(v8 + 24) = v9;
  objc_initWeak((v8 + 48), 0);
  v10 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a3;
  do
  {
    v11 = a1 + v10;
    *(v11 + 72) = 0;
    *(v11 + 80) = -1;
    *(v11 + 88) = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    *(v11 + 120) = 0;
    v10 += 72;
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
  }

  while (v10 != 216);
  *(a1 + 292) = 256;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = -1;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0xFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 425) = 0u;
  v12 = *(a3 + 208);
  v57[0] = v12;
  if (*(a2 + 22) == 1 && ([v12 supportsSharedTextureHandles] & 1) == 0)
  {
LABEL_48:
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "!descriptor.shareable || device.supportsSharedTextureHandles()", "DrawableQueue", 97);
    _os_crash("assertion failure: (!descriptor.shareable || device.supportsSharedTextureHandles()) ");
    __break(1u);
LABEL_49:
    __error();
    v44 = __error();
    re::internal::assertLog(5, v45, "assertion failure: '%s' (%s:line %i) Failed to mmap for DrawableQueue: %{errno}d", "region != ((void *)-1)", "DrawableQueue", 152, *v44);
    _os_crash("assertion failure: (region != ((void *)-1)) Failed to mmap for DrawableQueue: %{errno}d");
    __break(1u);
    goto LABEL_50;
  }

  *(a1 + 293) = re::mtl::Device::isPhysicalHardware(v57);
  v14 = a2[3];
  v15 = a2[2];
  v55 = v15;
  v56 = v14;
  v54 = 0;
  v48 = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v57, &v54, &v55, &v56, &v48);
  v17 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  if (([v17 respondsToSelector_] & 1) != 0 || objc_msgSend(v17, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v17 setCompressionType_];
  }

  [v17 setWidth_];
  [v17 setHeight_];
  [v17 setPixelFormat_];
  if (*(a2 + 20) == 1)
  {
    v18 = 32 - __clz(*a2);
    v19 = 32 - __clz(a2[1]);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v20 = 1;
  }

  [v17 setMipmapLevelCount_];
  [v17 setUsage_];
  [v17 setStorageMode_];
  v21 = a2[4];
  if (v21 == 0xFFFF)
  {
    v21 = 0;
  }

  [v17 setResourceOptions_];
  v22 = 0;
  for (i = 0; i != 3; ++i)
  {
    v52 = 0;
    v53 = 0;
    if (*(a2 + 22) != 1)
    {
      re::mtl::Device::makeTexture(&v48, v17, v57);
      NS::SharedPtr<MTL::Texture>::operator=(&v53, &v48);
      v26 = v48;
      if (!v48)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    re::mtl::Device::makeSharedTexture(&v48, v17, v57);
    NS::SharedPtr<MTL::Texture>::operator=(&v53, &v48);
    if (v48)
    {
    }

    v24 = [v53 newSharedTextureHandle];
    v52 = [v24 ioSurface];
    if (v24)
    {
      v26 = v24;
LABEL_22:
    }

LABEL_23:
    v27 = v53;
    if (!v53)
    {
      re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "texture.isValid()", "DrawableQueue", 142);
      _os_crash("assertion failure: (texture.isValid()) ");
      __break(1u);
      goto LABEL_48;
    }

    re::DynamicString::format(&v48, "DrawableQueueTexture-%p-%d", v25, a1, i);
    if (v49)
    {
      v28 = v50;
    }

    else
    {
      v28 = &v49 + 1;
    }

    [v27 setLabel_];
    if (v48 && (v49 & 1) != 0)
    {
      (*(*v48 + 40))();
    }

    v47 = 0;
    re::Drawable::Drawable(&v48, v53, &v52, a1, &v47, i);
    v29 = a1 + v22;
    *(v29 + 72) = v48;
    *(v29 + 80) = v49;
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + v22 + 88), &v50);
    *(v29 + 96) = v51[0];
    *(v29 + 105) = *(v51 + 9);
    re::ObjCObject::operator=((a1 + v22 + 128), &v51[2]);
    re::ObjCObject::operator=((a1 + v22 + 136), &v51[2] + 1);
    re::Drawable::~Drawable(&v48);

    v30 = v53;
    if (v53)
    {
    }

    v22 += 72;
  }

  v31 = re::globalAllocators(v30);
  v32 = (*(*v31[2] + 32))(v31[2], 40, 8);
  v33 = re::LocklessRingBuffer::LocklessRingBuffer(v32);
  v34 = *(a1 + 432);
  *(a1 + 432) = v33;
  if (v34)
  {
  }

  if (*(a2 + 22))
  {
    v35 = mmap(0, 0x150uLL, 3, 4097, -1, 0);
    if (v35 == -1)
    {
      goto LABEL_49;
    }

    v36 = v35;
    *(a1 + 416) = v35;
    v37 = *(a1 + 432);
LABEL_41:
    re::LocklessRingBuffer::initializeIntoBuffer(v37, v36);
    atomic_store(1u, (*(*(a1 + 432) + 32) + 8));
    *(a1 + 294) = 1;
    if (dyld_program_sdk_at_least())
    {
      *(a1 + 296) = 0;
      if (!v17)
      {
        goto LABEL_46;
      }

LABEL_45:
    }

    else
    {
      *(a1 + 296) = 1;
      v42 = *(a3 + 56);
      v53 = 0;
      v46 = 0;
      re::Drawable::Drawable(&v48, *(v42 + 56), &v53, a1, &v46, 4);
      *(a1 + 304) = v48;
      *(a1 + 312) = v49;
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 320), &v50);
      *(a1 + 328) = v51[0];
      *(a1 + 337) = *(v51 + 9);
      re::ObjCObject::operator=((a1 + 360), &v51[2]);
      re::ObjCObject::operator=((a1 + 368), &v51[2] + 1);
      re::Drawable::~Drawable(&v48);

      if (v17)
      {
        goto LABEL_45;
      }
    }

LABEL_46:

    return a1;
  }

  v38 = re::globalAllocators(v33);
  v39 = (*(*v38[2] + 32))(v38[2], 368, 16);
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 96) = 0u;
  *(v39 + 112) = 0u;
  *(v39 + 128) = 0u;
  *(v39 + 144) = 0u;
  *(v39 + 160) = 0u;
  *(v39 + 176) = 0u;
  *(v39 + 192) = 0u;
  *(v39 + 208) = 0u;
  *(v39 + 224) = 0u;
  *(v39 + 240) = 0u;
  *(v39 + 256) = 0u;
  *(v39 + 272) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0u;
  *(v39 + 352) = 0u;
  ArcSharedObject::ArcSharedObject(v39, 0);
  *v39 = &unk_1F5CC86B8;
  *(v39 + 44) = 0;
  v40 = *(a1 + 424);
  *(a1 + 424) = v39;
  if (!v40 || ((v40 + 8), (v39 = *(a1 + 424)) != 0))
  {
    v37 = *(a1 + 432);
    v36 = (v39 + 32);
    goto LABEL_41;
  }

LABEL_50:
  re::internal::assertLog(4, v41, "assertion failure: '%s' (%s:line %i) Failed to allocate memory for ring buffer", "m_localMem != nullptr", "DrawableQueue", 157);
  result = _os_crash("assertion failure: (m_localMem != nullptr) Failed to allocate memory for ring buffer");
  __break(1u);
  return result;
}

re::DrawableQueue *re::DrawableQueue::DrawableQueue(re::DrawableQueue *this, id *a2, id *a3, re::Allocator *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v8[2] = a4;
  *v8 = &unk_1F5CC8608;
  *(this + 6) = [*a2 width];
  *(this + 7) = [*a2 height];
  *(this + 8) = [*a2 pixelFormat];
  *(this + 36) = 0xFFFF00000000;
  *(this + 11) = 0x10000;
  objc_initWeak(this + 6, 0);
  v9 = 0;
  *(this + 7) = 0;
  *(this + 8) = a3;
  do
  {
    v10 = this + v9;
    *(v10 + 9) = 0;
    *(v10 + 20) = -1;
    *(v10 + 11) = 0;
    *(v10 + 13) = 0;
    *(v10 + 14) = 0;
    v10[120] = 0;
    v9 += 72;
    *(v10 + 16) = 0;
    *(v10 + 17) = 0;
  }

  while (v9 != 216);
  *(this + 73) = 256;
  *(this + 72) = 0;
  *(this + 296) = 0;
  *(this + 38) = 0;
  *(this + 78) = -1;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 352) = 0;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  *(this + 98) = -1;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 425) = 0u;
  *(this + 293) = re::mtl::Device::isPhysicalHardware((a3 + 26));
  if (([a3[26] supportsSharedTextureHandles] & 1) == 0)
  {
LABEL_27:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "device.supportsSharedTextureHandles()", "DrawableQueue", 191);
    _os_crash("assertion failure: (device.supportsSharedTextureHandles()) ");
    __break(1u);
LABEL_28:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "payload.drawableCount() == kQueueLength", "DrawableQueue", 192);
    _os_crash("assertion failure: (payload.drawableCount() == kQueueLength) ");
    __break(1u);
LABEL_29:
    re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) ", "sharedSemaphore != 0", "DrawableQueue", 212);
    _os_crash("assertion failure: (sharedSemaphore != 0) ");
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Failed to map xpc_shmem for DrawableQueue", "m_sharedMem", "DrawableQueue", 215);
    _os_crash("assertion failure: (m_sharedMem) Failed to map xpc_shmem for DrawableQueue");
    __break(1u);
LABEL_31:
    v28 = __cxa_guard_acquire(&qword_1EE1999A8);
    if (v28)
    {
      re::Defaults::BOOLValue(&v36, "allowSharingEyeTransformsViaDrawableQueue", v31);
      if (v36)
      {
        v32 = BYTE1(v36);
      }

      else
      {
        v32 = 0;
      }

      _MergedGlobals_93 = v32;
      __cxa_guard_release(&qword_1EE1999A8);
    }

    goto LABEL_22;
  }

  if (re::DrawableQueuePayload::drawableCount(a2) != 3)
  {
    goto LABEL_28;
  }

  v13 = 0;
  for (i = 0; i != 3; ++i)
  {
    v40[0] = 0;
    v36 = [a3[26] newSharedTextureWithHandle_];
    NS::SharedPtr<MTL::Texture>::operator=(v40, &v36);
    if (v36)
    {
    }

    if (!v40[0])
    {
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "texture.isValid()", "DrawableQueue", 200);
      _os_crash("assertion failure: (texture.isValid()) ");
      __break(1u);
LABEL_24:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "texture->width() == m_descriptor.width", "DrawableQueue", 201);
      _os_crash("assertion failure: (texture->width() == m_descriptor.width) ");
      __break(1u);
LABEL_25:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "texture->height() == m_descriptor.height", "DrawableQueue", 202);
      _os_crash("assertion failure: (texture->height() == m_descriptor.height) ");
      __break(1u);
LABEL_26:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "texture->pixelFormat() == (MTL::PixelFormat)m_descriptor.pixelFormat", "DrawableQueue", 203);
      _os_crash("assertion failure: (texture->pixelFormat() == (MTL::PixelFormat)m_descriptor.pixelFormat) ");
      __break(1u);
      goto LABEL_27;
    }

    if ([v40[0] width] != *(this + 6))
    {
      goto LABEL_24;
    }

    if ([v40[0] height] != *(this + 7))
    {
      goto LABEL_25;
    }

    if ([v40[0] pixelFormat] != *(this + 8))
    {
      goto LABEL_26;
    }

    v34 = 0;
    v35 = 0;
    re::Drawable::Drawable(&v36, v40[0], &v35, this, &v34, i);
    v19 = this + v13;
    *(v19 + 9) = v36;
    *(v19 + 20) = v37;
    NS::SharedPtr<MTL::Buffer>::operator=((this + v13 + 88), &v38);
    *(v19 + 6) = v39[0];
    *(v19 + 105) = *(v39 + 9);
    re::ObjCObject::operator=((this + v13 + 128), &v39[2]);
    re::ObjCObject::operator=((this + v13 + 136), &v39[2] + 1);
    re::Drawable::~Drawable(&v36);

    if (v40[0])
    {
    }

    v13 += 72;
  }

  v20 = [*a2 machSemaphore];
  if (!v20)
  {
    goto LABEL_29;
  }

  v22 = v20;
  v23 = re::DrawableQueuePayload::mapQueueStateShmem(a2);
  *(this + 52) = v23;
  if (!v23)
  {
    goto LABEL_30;
  }

  v25 = re::globalAllocators(v23);
  v26 = (*(*v25[2] + 32))(v25[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v26, 0);
  *v26 = &unk_1F5CC67B0;
  *(v26 + 24) = v22;
  *(v26 + 32) = 0;
  v27 = *(this + 54);
  *(this + 54) = v26;
  if (v27)
  {

    v26 = *(this + 54);
  }

  *(v26 + 32) = *(this + 52);
  *(this + 295) = 1;
  v28 = [*a2 allowPixelFormatConversion];
  *(this + 296) = v28;
  if (v28)
  {
    v29 = a3[7];
    v40[0] = 0;
    v33 = 0;
    re::Drawable::Drawable(&v36, v29[7], v40, this, &v33, 4);
    *(this + 38) = v36;
    *(this + 78) = v37;
    NS::SharedPtr<MTL::Buffer>::operator=(this + 40, &v38);
    *(this + 328) = v39[0];
    *(this + 337) = *(v39 + 9);
    re::ObjCObject::operator=(this + 45, &v39[2]);
    re::ObjCObject::operator=(this + 46, &v39[2] + 1);
    re::Drawable::~Drawable(&v36);
  }

  if ((atomic_load_explicit(&qword_1EE1999A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  *(this + 440) = (*re::AppleBuild::get(v28) == 1) & _MergedGlobals_93;
  return this;
}

int *re::AppleBuild::get(re::AppleBuild *this)
{
  {
    re::AppleBuild::get(void)::build = 0;
    re::AppleBuild::determineBuildType(&re::AppleBuild::get(void)::build);
  }

  return &re::AppleBuild::get(void)::build;
}

void re::DrawableQueue::~DrawableQueue(re::DrawableQueue *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC8608;
  if (*(this + 294) == 1)
  {
    atomic_store(0, (*(*(this + 54) + 32) + 8));
    *(this + 294) = 0;
  }

  v2 = *(this + 54);
  if (v2)
  {

    *(this + 54) = 0;
  }

  v3 = *(this + 53);
  if (v3)
  {

    *(this + 53) = 0;
  }

  v4 = *(this + 52);
  if (v4)
  {
    v5 = munmap(v4, 0x150uLL);
    if (v5)
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v12[0] = 67109120;
        v12[1] = v11;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to munmap shmem for DrawableQueue: %{errno}d", v12, 8u);
      }
    }

    *(this + 52) = 0;
  }

  v7 = *(this + 54);
  if (v7)
  {

    *(this + 54) = 0;
  }

  v8 = *(this + 53);
  if (v8)
  {

    *(this + 53) = 0;
  }

  v9 = *(this + 51);
  if (v9)
  {

    *(this + 51) = 0;
  }

  re::Drawable::~Drawable((this + 304));
  v10 = 216;
  do
  {
    re::Drawable::~Drawable((this + v10));
    v10 -= 72;
  }

  while (v10);

  objc_destroyWeak(this + 6);
  *(this + 6) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DrawableQueue::~DrawableQueue(this);

  JUMPOUT(0x1E6906520);
}

void re::DrawableQueue::setActiveRealityRendererScene(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 376) = a2;
  v4 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    v6 = a2;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "DrawableQueue::setActiveRealityRendererScene %llu for drawableQueue instance %p", &v5, 0x16u);
  }

  if ((*(a1 + 294) & 1) == 0)
  {
    atomic_store(1u, (*(*(a1 + 432) + 32) + 8));
    *(a1 + 294) = 1;
  }
}

BOOL re::DrawableQueue::shouldPerformUpdate(uint64_t a1, uint64_t a2, int a3)
{
  if (((*(a1 + 295) & 1) != 0 || (*(a1 + 46) == 1 ? (v3 = a3 == 0) : (v3 = 0), !v3)) && *(a1 + 294) == 1 && __PAIR64__(*(a1 + 378), *(a1 + 376)) == __PAIR64__(WORD1(a2), a2))
  {
    return ((*(a1 + 380) ^ HIDWORD(a2)) & 0xFFFFFF) == 0;
  }

  else
  {
    return 0;
  }
}

void re::DrawableQueue::afterFrameUpdate(re::DrawableQueue *this)
{
  v2 = *(re::RenderFrameBox::get((*(*(this + 8) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 384) & 0xFFFFFFFFFFFFFFFLL;
  os_unfair_lock_lock(this + 72);
  v3 = 0;
  v4 = this + 120;
  do
  {
    if (*v4 != 1)
    {
      goto LABEL_7;
    }

    if (*(v4 - 1))
    {
      if ((v2 - *(v4 - 2)) < 2)
      {
        goto LABEL_7;
      }

      *(v4 - 1) = 0;
    }

    *v4 = 0;
    re::LocklessRingBuffer::readerReleaseBuffer(*(this + 54), v3);
LABEL_7:
    ++v3;
    v4 += 72;
  }

  while (v3 != 3);
  os_unfair_lock_unlock(this + 72);
  if (*(this + 440))
  {
    WeakRetained = objc_loadWeakRetained(this + 6);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = WeakRetained - 8;
      v8 = atomic_load((*(*(this + 54) + 32) + 12));
      v9 = v8 ^ 1;
      re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix(WeakRetained - 8, 1, &v18);
      v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = (*(*(this + 54) + 32) + (v9 << 7));
      v13[5] = v18;
      v13[6] = v10;
      v13[7] = v11;
      v13[8] = v12;
      re::ecs2::CustomMatrixCameraComponent::localEyePoseMatrix(v7, 2, &v18);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = (*(*(this + 54) + 32) + (v9 << 7));
      v17[9] = v18;
      v17[10] = v14;
      v17[11] = v15;
      v17[12] = v16;
      atomic_store(v9, (*(*(this + 54) + 32) + 12));
    }
  }
}

uint64_t re::DrawableQueue::latestPresentableDrawable(re::DrawableQueue *this, re::RenderFrame *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 295);
  v5 = *(this + 54);
  if (v4 == 1)
  {
    v6 = re::LocklessRingBuffer::readerAcquireBuffer(v5);
  }

  else
  {
    v6 = re::LocklessRingBuffer::readerAcquireAnyWrittenBuffer(v5);
  }

  v7 = v6;
  v8 = *(re::RenderFrameBox::get((*(*(this + 8) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 384) & 0xFFFFFFFFFFFFFFFLL;
  if (v7 > 2)
  {
    if ((*(this + 98) & 0x80000000) == 0)
    {
      os_unfair_lock_lock(this + 72);
      v7 = *(this + 98);
      v10 = this + 72 * v7;
      v11 = *(v10 + 14) + 1;
      *(v10 + 13) = v8;
      *(v10 + 14) = v11;
      os_unfair_lock_unlock(this + 72);
    }
  }

  else
  {
    os_unfair_lock_lock(this + 72);
    v9 = this + 72 * v7;
    v9[120] = 1;
    *(v9 + 13) = v8;
    *(v9 + 14) = 1;
    *(this + 98) = v7;
    os_unfair_lock_unlock(this + 72);
    re::LocklessRingBuffer::readerReleaseAnyWrittenBuffer(*(this + 54));
  }

  if (*(this + 98) == -1)
  {
    if (*(this + 296) == 1 && (*(this + 292) & 1) == 0)
    {
      *(this + 292) = 1;
      return this + 304;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = atomic_load((*(*(this + 54) + 32) + 16 * v7 + 40));
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (v12 == *(this + 48))
    {
      v13 = 0;
    }

    else
    {
      *(this + 48) = v12;
      v13 = 1;
    }

    *(this + 292) = v13;
    v17 = re::globalAllocators(this + 8)[2];
    v15 = (*(*v17 + 32))(v17, 32, 0);
    *v15 = &unk_1F5CC8650;
    *(v15 + 8) = this;
    *(v15 + 16) = v8;
    *(v15 + 24) = v7;
    v18 = v15;
    re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((a2 + 4096), v16);
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v16);
    return this + 72 * *(this + 98) + 72;
  }
}

uint64_t re::DrawableQueue::nextDrawable(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*a2 == 1)
  {
    v5 = *(a2 + 4);
    v6 = 1;
  }

  else
  {
    v5 = 0.0;
    v6 = 0;
  }

  v7 = re::LocklessRingBuffer::writerAcquireBuffer(*(a1 + 432), *&v5, v6);
  v8 = re::internal::enableSignposts(0, 0);
  if (v7 < 3)
  {
    if (v8)
    {
      kdebug_trace();
    }

    return a1 + 72 * v7 + 72;
  }

  else
  {
    if (v8)
    {
      kdebug_trace();
    }

    return 0;
  }
}

void re::DrawableQueue::makeSharedResourcePayload(REDrawableQueuePayload **__return_ptr a1@<X8>, re::DrawableQueue *this@<X0>)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (([*(*(this + 8) + 208) supportsSharedTextureHandles] & 1) == 0)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_renderManager.renderDevice().supportsSharedTextureHandles()", "makeSharedResourcePayload", 532);
    _os_crash("assertion failure: (m_renderManager.renderDevice().supportsSharedTextureHandles()) ");
    __break(1u);
  }

  v5 = 0;
  memset(v10, 0, 24);
  v6 = (this + 88);
  do
  {
    v9 = [*v6 newSharedTextureHandle];
    NS::SharedPtr<MTL::Texture>::operator=(&v10[v5], &v9);
    if (v9)
    {
    }

    ++v5;
    v6 += 9;
  }

  while (v5 != 3);
  re::DrawableQueuePayload::make(*(this + 6), *(this + 7), *(this + 8), v10, 3, *(this + 296), *(*(this + 54) + 24), *(this + 52), a1);
  for (i = 2; i != -1; --i)
  {
    v8 = v10[i];
    if (v8)
    {

      v10[i] = 0;
    }
  }
}

void re::DrawableQueue::encodeMipmapsGenerationJob(uint64_t a1, id *a2, uint64_t a3)
{
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v10, a2);
  re::DynamicString::format(&v6, "DrawableQueue MipmapGenEncoder-%p", v4, a3);
  if (v7)
  {
    v5 = *&v8[7];
  }

  else
  {
    v5 = v8;
  }

  re::ns::String::String(&v9, v5);
  [v10 setLabel:v9];

  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  re::mtl::BlitCommandEncoder::generateMipmaps(&v10, *(a3 + 16));
  objc_msgSend_endEncoding(v10);
}

uint64_t re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture@<X0>(uint64_t *__return_ptr a1@<X8>, re::LocklessRingBuffer **this@<X0>)
{
  result = re::LocklessRingBuffer::getLatestReadableBufferIndex(this[54]);
  if (result <= 3)
  {
    result = this[9 * result + 11];
    a1[1] = result;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

void re::AppleBuild::determineBuildType(re::AppleBuild *this)
{
  memset(&__p, 0, sizeof(__p));
  if (os_variant_has_internal_diagnostics())
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  std::string::append[abi:nn200100]<char const*,0>(&__p, "/AppleInternal", "");
  std::__fs::filesystem::__status(&__p, 0);
  if (v5)
  {
    v3 = v5 == 255;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    ++v2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2 >= 2)
  {
    *this = 1;
  }
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size + v6 - v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = size + v6;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void *std::string::__init_with_size[abi:nn200100]<char const*,char const*>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
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

uint64_t re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock((v2 + 288));
  v3 = *(a1 + 24);
  v4 = v2 + 72 + 72 * v3;
  v5 = *(v4 + 40) - 1;
  *(v4 + 40) = v5;
  if (!v5 && *(v2 + 392) != v3)
  {
    *(v2 + 72 + 72 * v3 + 48) = 0;
    re::LocklessRingBuffer::readerReleaseBuffer(*(v2 + 432), v3);
  }

  os_unfair_lock_unlock((v2 + 288));
  atomic_load((*(*(v2 + 432) + 32) + 16 * *(a1 + 24) + 40));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }
}

uint64_t re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC8650;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawableQueue::latestPresentableDrawable(re::RenderFrame *)::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC8650;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void re::DrawableQueue::LocalRingBuffer::~LocalRingBuffer(re::DrawableQueue::LocalRingBuffer *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SMAssetStateCommand::getIntParameter(re::SMAssetStateCommand *this, const re::StringID *a2, uint64_t *a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 4); !re::StringID::operator==(i, a2) || v7 >= *(this + 7); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 9) + 8 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getFloatParameter(re::SMAssetStateCommand *this, const re::StringID *a2, float *a3)
{
  v3 = *(this + 12);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 14); !re::StringID::operator==(i, a2) || v7 >= *(this + 17); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 19) + 4 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getDoubleParameter(re::SMAssetStateCommand *this, const re::StringID *a2, double *a3)
{
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 24); !re::StringID::operator==(i, a2) || v7 >= *(this + 27); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 29) + 8 * v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getBoolParameter(re::SMAssetStateCommand *this, const re::StringID *a2, BOOL *a3)
{
  v3 = *(this + 32);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  for (i = *(this + 34); !re::StringID::operator==(i, a2) || v7 >= *(this + 37); i += 2)
  {
    if (v3 == ++v7)
    {
      return 0;
    }
  }

  *a3 = *(*(this + 39) + v7);
  return 1;
}

uint64_t re::SMAssetStateCommand::getStringParameter(re::SMAssetStateCommand *this, const re::StringID *a2)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = *(this + 44); !re::StringID::operator==(i, a2); i += 2)
  {
    ++v6;
    v5 -= 16;
    if (v2 == v6)
    {
      return 0;
    }
  }

  if (v6 < *(this + 47))
  {
    return *(this + 49) - v5;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::StateMachineAsset::assetType(re::StateMachineAsset *this)
{
  {
    re::StateMachineAsset::assetType(void)::type = "StateMachine";
    qword_1EE1C6E10 = 0;
    re::AssetType::generateCompiledExtension(&re::StateMachineAsset::assetType(void)::type);
  }

  return &re::StateMachineAsset::assetType(void)::type;
}

re *re::StateMachineAsset::initWithInitData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v6);
  ++*(a1 + 24);
  v7 = re::DynamicArray<re::StateMachineInitializationData>::operator=(a1, a2);
  v8 = *(a3 + 8);
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *(a3 + 16);
    v12 = v11 + 40 * v10;
    do
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = *(v11 + 32);
        v15 = 8 * v13;
        do
        {
          if (!*(a1 + 88))
          {
            v26 = 0;
            memset(v35, 0, sizeof(v35));
            v23 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            v30 = 468;
            v31 = 2048;
            v32 = 0;
            v33 = 2048;
            v34 = 0;
            _os_log_send_and_compose_impl(v24, &v26, v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
          }

          v16 = *v14++;
          v17 = *(a1 + 96);
          v18 = re::globalAllocators(result);
          v19 = (*(*v18[2] + 32))(v18[2], 72, 8);
          *v19 = &unk_1F5CC8878;
          v20 = *(v16 + 8);
          *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
          *(v19 + 8) = *(v16 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
          *(v19 + 16) = *(v16 + 16);
          *(v16 + 8) = 0;
          *(v16 + 16) = &str_67;
          *(v19 + 56) = 0;
          *(v19 + 48) = 0;
          *(v19 + 32) = 0;
          *(v19 + 40) = 0;
          *(v19 + 24) = 0;
          *(v19 + 24) = *(v16 + 24);
          *(v16 + 24) = 0;
          *(v19 + 32) = *(v16 + 32);
          *(v16 + 32) = 0;
          v21 = *(v19 + 40);
          *(v19 + 40) = *(v16 + 40);
          *(v16 + 40) = v21;
          v22 = *(v19 + 56);
          *(v19 + 56) = *(v16 + 56);
          *(v16 + 56) = v22;
          ++*(v16 + 48);
          ++*(v19 + 48);
          *(v19 + 64) = *(v16 + 64);
          *&v35[0] = v19;
          result = re::DynamicArray<re::TransitionCondition *>::add(v17, v35);
          v15 -= 8;
        }

        while (v15);
      }

      v11 += 40;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t re::DynamicArray<re::StateMachineInitializationData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::StateMachineInitializationData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::StateMachineInitializationData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::StateMachineInitializationData>::copy(a1, a2);
    }
  }

  return a1;
}

_anonymous_namespace_ *re::StateMachineAsset::initWithInitData(_anonymous_namespace_ *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2[2];
  re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, v6);
  ++*(a1 + 6);
  re::DynamicArray<re::StateMachineInitializationData>::operator=(a1, a2);
  re::DynamicArray<re::SMAssetStateGraphGroup>::operator=(a1 + 40, a3);

  return re::StateMachineAsset::createRuntimeData(a1);
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateGraphGroup>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateGraphGroup>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateGraphGroup>::copy(a1, a2);
    }
  }

  return a1;
}

_anonymous_namespace_ *re::StateMachineAsset::createRuntimeData(_anonymous_namespace_ *this)
{
  v2 = this;
  v55 = *MEMORY[0x1E69E9840];
  if (!*(this + 2) || !*(this + 11))
  {
    v3 = *(this + 7);
    if (*(v2 + 7))
    {
      v4 = 0;
      do
      {
        v5 = *(v2 + 9) + 40 * v4;
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = *(v5 + 32);
          v38 = *(v2 + 9) + 40 * v4;
          v39 = v7 + 168 * v6;
          do
          {
            v8 = re::globalAllocators(this);
            v9 = (*(*v8[2] + 32))(v8[2], 72, 8);
            *v9 = &unk_1F5CC8878;
            this = re::StringID::StringID((v9 + 8), (v7 + 40));
            *(v9 + 24) = 0;
            *(v9 + 48) = 0;
            *(v9 + 32) = 0;
            *(v9 + 40) = 0;
            *(v9 + 56) = 0;
            *(v9 + 64) = 0;
            if (*(v7 + 56) == 1)
            {
              v10 = re::globalAllocators(this);
              v1 = (*(*v10[2] + 32))(v10[2], 112, 8);
              *v1 = &unk_1F5CC88A8;
              *(v1 + 8) = 0;
              *(v1 + 16) = 0;
              *(v1 + 24) = 0;
              *(v1 + 32) = 0;
              *(v1 + 80) = 0;
              *(v1 + 40) = 0u;
              *(v1 + 56) = 0u;
              *(v1 + 72) = 0;
              re::StringID::StringID((v1 + 88), (v7 + 144));
              *(v1 + 104) = 0;
              v11 = *(v7 + 160);
              if (v11 >= 0.0)
              {
                *(v1 + 104) = v11;
              }

              this = re::StateGraph::addAnyState(v9, v1);
            }

            v12 = *(v7 + 16);
            if (v12)
            {
              v1 = *(v7 + 32);
              v13 = v1 + 104 * v12;
              do
              {
                re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(&v41, v1);
                re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(&v43 + 8, (v1 + 40));
                v14 = re::StringID::StringID(&v46, (v1 + 80));
                v47 = *(v1 + 96);
                v15 = re::globalAllocators(v14);
                v16 = (*(*v15[2] + 32))(v15[2], 112, 8);
                *v16 = &unk_1F5CC88A8;
                *(v16 + 8) = 0;
                *(v16 + 16) = 0;
                *(v16 + 24) = 0;
                *(v16 + 32) = 0;
                *(v16 + 80) = 0;
                *(v16 + 40) = 0u;
                *(v16 + 56) = 0u;
                *(v16 + 72) = 0;
                re::StringID::StringID((v16 + 88), &v46);
                *(v16 + 104) = 0;
                if (v47 >= 0.0)
                {
                  *(v16 + 104) = v47;
                }

                *v48 = v16;
                v17 = re::DynamicArray<re::TransitionCondition *>::add((v9 + 24), v48);
                if (*&v46.var0)
                {
                  if (*&v46.var0)
                  {
                  }
                }

                *&v46.var0 = 0;
                v46.var1 = &str_67;
                re::DynamicArray<re::SMAssetStateCommand>::deinit(&v43 + 1);
                this = re::DynamicArray<re::SMAssetStateTransition>::deinit(&v41);
                v1 += 104;
              }

              while (v1 != v13);
            }

            v18 = *(v2 + 11);
            if (v18 <= v4)
            {
              v40 = 0;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v41 = 0u;
              v28 = MEMORY[0x1E69E9C10];
              v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v48 = 136315906;
              *&v48[4] = "operator[]";
              v49 = 1024;
              if (v29)
              {
                v30 = 3;
              }

              else
              {
                v30 = 2;
              }

              v50 = 468;
              v51 = 2048;
              v52 = v4;
              v53 = 2048;
              v54 = v18;
              _os_log_send_and_compose_impl(v30, &v40, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v37, v38);
              _os_crash_msg();
              __break(1u);
              goto LABEL_42;
            }

            v19 = *(v2 + 12) + 40 * v4;
            v20 = *(v19 + 16);
            if (v20 >= *(v19 + 8))
            {
              this = re::DynamicArray<float *>::growCapacity((*(v2 + 12) + 40 * v4), v20 + 1);
              v20 = *(v19 + 16);
            }

            *(*(v19 + 32) + 8 * v20) = v9;
            *(v19 + 16) = v20 + 1;
            ++*(v19 + 24);
            v7 += 168;
          }

          while (v7 != v39);
          if (*(v38 + 16))
          {
            v1 = 0;
            while (1)
            {
              v18 = *(v2 + 11);
              if (v18 <= v4)
              {
                break;
              }

              v21 = *(v2 + 12) + 40 * v4;
              v18 = *(v21 + 16);
              if (v18 <= v1)
              {
                goto LABEL_46;
              }

              v22 = *(v38 + 32) + 168 * v1;
              v23 = *(*(v21 + 32) + 8 * v1);
              if (*(v22 + 56) == 1)
              {
                this = re::StateMachineAsset::createStateTransitionsFromAssetData(v2, (v22 + 64), v23, v4);
              }

              v24 = *(v22 + 16);
              if (v24)
              {
                v25 = *(v22 + 32);
                v26 = v25 + 104 * v24;
                do
                {
                  re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(&v41, v25);
                  re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(&v43 + 8, (v25 + 40));
                  re::StringID::StringID(&v46, (v25 + 80));
                  v47 = *(v25 + 96);
                  v27 = re::StateMachineAsset::createStateTransitionsFromAssetData(v2, &v41, v23, v4);
                  if (*&v46.var0)
                  {
                    if (*&v46.var0)
                    {
                    }
                  }

                  *&v46.var0 = 0;
                  v46.var1 = &str_67;
                  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v43 + 1);
                  this = re::DynamicArray<re::SMAssetStateTransition>::deinit(&v41);
                  v25 += 104;
                }

                while (v25 != v26);
              }

              if (++v1 >= *(v38 + 16))
              {
                goto LABEL_36;
              }
            }

LABEL_42:
            v40 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v31 = MEMORY[0x1E69E9C10];
            v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v48 = 136315906;
            *&v48[4] = "operator[]";
            v49 = 1024;
            if (v32)
            {
              v33 = 3;
            }

            else
            {
              v33 = 2;
            }

            v50 = 468;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v18;
            _os_log_send_and_compose_impl(v33, &v40, &v41, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v37, v38);
            _os_crash_msg();
            __break(1u);
LABEL_46:
            v40 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v34 = MEMORY[0x1E69E9C10];
            v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v48 = 136315906;
            *&v48[4] = "operator[]";
            v49 = 1024;
            if (v35)
            {
              v36 = 3;
            }

            else
            {
              v36 = 2;
            }

            v50 = 789;
            v51 = 2048;
            v52 = v1;
            v53 = 2048;
            v54 = v18;
            _os_log_send_and_compose_impl(v36, &v40, &v41, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v37, v38);
            _os_crash_msg();
            __break(1u);
          }
        }

LABEL_36:
        ++v4;
      }

      while (v4 < *(v2 + 7));
    }
  }

  return this;
}

uint64_t re::StateMachineAsset::createStateTransitionsFromAssetData(uint64_t result, void *a2, re::StateGraph *a3, unint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  if (v4)
  {
    v8 = result;
    v9 = a2[4];
    v10 = v9 + 96 * v4;
    do
    {
      v11 = *(v8 + 88);
      if (v11 <= a4)
      {
        v19 = 0;
        memset(v28, 0, sizeof(v28));
        v16 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 468;
        v24 = 2048;
        v25 = a4;
        v26 = 2048;
        v27 = v11;
        _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      result = re::StateGraph::createStateTransition(a3, *(v8 + 96) + 40 * a4, (a2 + 10), (v9 + 56), (v9 + 72), (v9 + 40), *(v9 + 92), *(v9 + 88));
      v12 = *(v9 + 16);
      if (v12)
      {
        v13 = *(v9 + 32);
        v14 = 40 * v12;
        do
        {
          v15 = *(v13 + 16);
          if (v15 > 2)
          {
            if (v15 == 3)
            {
              result = re::StateGraph::addBoolTransitionCondition(a3, (a2 + 10), (v9 + 40), v13, *(v13 + 37), *(v13 + 36));
            }

            else if (v15 == 4)
            {
              result = re::StateGraph::addTriggerTransitionCondition(a3, (a2 + 10), (v9 + 40), v13);
            }
          }

          else if (v15 == 1)
          {
            result = re::StateGraph::addIntTransitionCondition(a3, (a2 + 10), (v9 + 40), v13, *(v13 + 37), *(v13 + 24));
          }

          else if (v15 == 2)
          {
            result = re::StateGraph::addFloatTransitionCondition(a3, (a2 + 10), (v9 + 40), v13, *(v13 + 37), *(v13 + 32));
          }

          v13 += 40;
          v14 -= 40;
        }

        while (v14);
      }

      v9 += 96;
    }

    while (v9 != v10);
  }

  return result;
}

_anonymous_namespace_ *re::StateMachineAsset::getAllGraphs@<X0>(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    for (i = 0; i < v3; ++i)
    {
      v9 = *(v4 + 9) + 40 * i;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = *(v4 + 11);
          if (v14 <= i)
          {
            v27 = 0;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v28 = 136315906;
            v29 = "operator[]";
            v30 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v31 = 476;
            v32 = 2048;
            v33 = i;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v27 = 0;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v28 = 136315906;
            v29 = "operator[]";
            v30 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v31 = 797;
            v32 = 2048;
            v33 = v13;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
            _os_crash_msg();
            __break(1u);
          }

          v15 = *(v4 + 12) + 40 * i;
          v14 = *(v15 + 16);
          if (v14 <= v13)
          {
            goto LABEL_26;
          }

          v16 = *(*(v15 + 32) + 8 * v13);
          v17 = *(a2 + 8);
          if (v7 >= v17)
          {
            v18 = v7 + 1;
            if (v17 < v7 + 1)
            {
              if (*a2)
              {
                v19 = 2 * v17;
                if (!v17)
                {
                  v19 = 8;
                }

                if (v19 <= v18)
                {
                  v20 = v7 + 1;
                }

                else
                {
                  v20 = v19;
                }

                this = re::DynamicArray<float *>::setCapacity(a2, v20);
                v5 = *(a2 + 24);
              }

              else
              {
                this = re::DynamicArray<float *>::setCapacity(a2, v18);
                v5 = *(a2 + 24) + 1;
              }
            }

            v7 = *(a2 + 16);
            v6 = *(a2 + 32);
            v10 = *v11;
          }

          *(v6 + 8 * v7++) = v16;
          *(a2 + 16) = v7;
          *(a2 + 24) = ++v5;
          ++v13;
        }

        while (v13 < v10);
        v3 = *(v4 + 7);
      }
    }
  }

  return this;
}

uint64_t re::StateMachineAsset::deinit(re::StateMachineAsset *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = v3 + 40 * v2;
    do
    {
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = *(v3 + 32);
        v7 = 8 * v5;
        do
        {
          v8 = *v6++;
          re::internal::destroyPersistent<re::StateGraph>("deinit", 312, v8);
          v7 -= 8;
        }

        while (v7);
      }

      v3 += 40;
    }

    while (v3 != v4);
  }

  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 10);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this);

  return re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 40);
}

re *re::internal::destroyPersistent<re::StateGraph>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateGraph::deinit(a3);
    re::DynamicArray<unsigned long>::deinit(a3 + 24);
    re::StringID::destroyString((a3 + 8));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::internal::destroyPersistent<re::StateMachineAsset>(re *result, uint64_t a2, re::StateMachineAsset *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateMachineAsset::~StateMachineAsset(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::StateMachineAssetLoader::introspectionType(re::StateMachineAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::StateMachineAsset>(BOOL)::info = re::internal::getOrCreateInfo("StateMachineAsset", re::allocInfo_StateMachineAsset, re::initInfo_StateMachineAsset, &re::internal::introspectionInfoStorage<re::StateMachineAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 326);
}

void *re::allocInfo_StateMachineInitializationData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199E00, "StateMachineInitializationData");
    __cxa_guard_release(&qword_1EE1999B8);
  }

  return &unk_1EE199E00;
}

void re::initInfo_StateMachineInitializationData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x8634B6D7058CB40;
  v20[1] = "StateMachineInitializationData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1999C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999C0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "layerName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199AE8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "stateGraphName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199AF0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "initialStateName";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199AF8 = v18;
    __cxa_guard_release(&qword_1EE1999C0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199AE8;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineInitializationData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineInitializationData>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineInitializationData>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineInitializationData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::StateMachineInitializationData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::StateMachineInitializationData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::StateMachineInitializationData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::StateMachineInitializationData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_SMAssetTransitionCondition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199E90, "SMAssetTransitionCondition");
    __cxa_guard_release(&qword_1EE1999D8);
  }

  return &unk_1EE199E90;
}

void re::initInfo_SMAssetTransitionCondition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xC3FB3DEF23D84D60;
  v32[1] = "SMAssetTransitionCondition";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1999D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_TransitionConditionType(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_type";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1000000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199B40 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_parameterName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199B48 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_intTestValue";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199B50 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_floatTestValue";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE199B58 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "m_BOOLTestValue";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2400000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE199B60 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_StateTransitionConditionOperator(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "m_operator";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2500000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE199B68 = v30;
    __cxa_guard_release(&qword_1EE1999D0);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000028;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE199B40;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetTransitionCondition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetTransitionCondition>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetTransitionCondition>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetTransitionCondition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::SMAssetTransitionCondition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 30) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetTransitionCondition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 30) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetTransitionCondition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199A98, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199A98);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199BA0);
      qword_1EE199BA0 = &unk_1F5CC8900;
      __cxa_guard_release(&qword_1EE199A98);
    }
  }

  if ((_MergedGlobals_94 & 1) == 0)
  {
    v1 = qword_1EE1999E0;
    if (qword_1EE1999E0 || (v1 = re::allocInfo_SMAssetTransitionCondition(a1), qword_1EE1999E0 = v1, re::initInfo_SMAssetTransitionCondition(v1, v2, v3, v4), (_MergedGlobals_94 & 1) == 0))
    {
      _MergedGlobals_94 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199BA0, 0);
      qword_1EE199BB0 = 0x2800000003;
      dword_1EE199BB8 = v5;
      word_1EE199BBC = 0;
      *&xmmword_1EE199BC0 = 0;
      *(&xmmword_1EE199BC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE199BD0 = v1;
      qword_1EE199BD8 = 0;
      qword_1EE199BA0 = &unk_1F5CC8900;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199BA0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199BC0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateTransition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1999F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199F20, "SMAssetStateTransition");
    __cxa_guard_release(&qword_1EE1999F0);
  }

  return &unk_1EE199F20;
}

void re::initInfo_SMAssetStateTransition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0xEE3C36B22D66D260;
  v30[1] = "SMAssetStateTransition";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1999E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1999E8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199B70 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_toGraphName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199B78 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_toStateName";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199B80 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_transitionTime";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x5800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE199B88 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_StateTransitionInterruptionType(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "m_interruptionType";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x5C00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE199B90 = v26;
    v27 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetTransitionCondition>>::get(v27);
    v28 = (*(*v27 + 32))(v27, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_conditions";
    *(v28 + 16) = &qword_1EE199BA0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 6;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE199B98 = v28;
    __cxa_guard_release(&qword_1EE1999E8);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE199B70;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateTransition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateTransition>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateTransition>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateTransition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v29 = v31;
}

void re::internal::defaultConstruct<re::SMAssetStateTransition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 64) = &str_67;
  *(a3 + 72) = 0;
  *(a3 + 80) = &str_67;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateTransition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 72));
  re::StringID::destroyString((a3 + 56));
  re::StringID::destroyString((a3 + 40));

  return re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a3);
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateTransition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 56) = 0;
  *(result + 64) = &str_67;
  *(result + 72) = 0;
  *(result + 80) = &str_67;
  *(result + 88) = 0;
  *(result + 92) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateTransition>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 72));
  re::StringID::destroyString((a1 + 56));
  re::StringID::destroyString((a1 + 40));

  return re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<long long>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE199AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199AA0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199BE0);
    qword_1EE199BE0 = &unk_1F5CC8998;
    __cxa_guard_release(&qword_1EE199AA0);
  }

  if ((byte_1EE1999B1 & 1) == 0)
  {
    v2 = re::introspect_int64_t(1, a2);
    if ((byte_1EE1999B1 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1999B1 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE199BE0, 0);
      qword_1EE199BF0 = 0x2800000003;
      dword_1EE199BF8 = v4;
      word_1EE199BFC = 0;
      *&xmmword_1EE199C00 = 0;
      *(&xmmword_1EE199C00 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C10 = v3;
      qword_1EE199C18 = 0;
      qword_1EE199BE0 = &unk_1F5CC8998;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE199BE0);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE199C00 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateCommand(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199FB0, "SMAssetStateCommand");
    __cxa_guard_release(&qword_1EE199A08);
  }

  return &unk_1EE199FB0;
}

void re::initInfo_SMAssetStateCommand(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x2258AF08EFF7D2A0;
  v55[1] = "SMAssetStateCommand";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE199A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A00))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_entityName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x19800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199DA0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_REStateCommandID(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_commandType";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x19000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199DA8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_intParameterNames";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199DB0 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<long long>>::get(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_intParameters";
    *(v21 + 16) = &qword_1EE199BE0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE199DB8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_floatParameterNames";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE199DC0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "m_floatParameters";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE199DC8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "m_doubleParameterNames";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0xA000000007;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE199DD0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<double>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "m_doubleParameters";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0xC800000008;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE199DD8 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "m_BOOLParameterNames";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0xF000000009;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE199DE0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "m_BOOLParameters";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x1180000000ALL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE199DE8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "m_stringParameterNames";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x1400000000BLL;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE199DF0 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "m_stringParameters";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x1680000000CLL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE199DF8 = v53;
    __cxa_guard_release(&qword_1EE199A00);
  }

  *(this + 2) = 0x1A800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE199DA0;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

double re::internal::defaultConstruct<re::SMAssetStateCommand>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 392) = 0;
  *(a3 + 400) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0;
  *(a3 + 408) = 0;
  *(a3 + 416) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateCommand>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 408));
  re::DynamicArray<re::StringID>::deinit(a3 + 360);
  re::DynamicArray<re::StringID>::deinit(a3 + 320);
  re::DynamicArray<unsigned long>::deinit(a3 + 280);
  re::DynamicArray<re::StringID>::deinit(a3 + 240);
  re::DynamicArray<unsigned long>::deinit(a3 + 200);
  re::DynamicArray<re::StringID>::deinit(a3 + 160);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<re::StringID>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<re::StringID>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetStateCommand>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateCommand>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 408));
  re::DynamicArray<re::StringID>::deinit(a1 + 360);
  re::DynamicArray<re::StringID>::deinit(a1 + 320);
  re::DynamicArray<unsigned long>::deinit(a1 + 280);
  re::DynamicArray<re::StringID>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 200);
  re::DynamicArray<re::StringID>::deinit(a1 + 160);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<re::StringID>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<re::StringID>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateTransition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AA8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AA8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199C20);
      qword_1EE199C20 = &unk_1F5CC8A30;
      __cxa_guard_release(&qword_1EE199AA8);
    }
  }

  if ((byte_1EE1999B2 & 1) == 0)
  {
    v1 = qword_1EE1999F8;
    if (qword_1EE1999F8 || (v1 = re::allocInfo_SMAssetStateTransition(a1), qword_1EE1999F8 = v1, re::initInfo_SMAssetStateTransition(v1, v2, v3, v4), (byte_1EE1999B2 & 1) == 0))
    {
      byte_1EE1999B2 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199C20, 0);
      qword_1EE199C30 = 0x2800000003;
      dword_1EE199C38 = v5;
      word_1EE199C3C = 0;
      *&xmmword_1EE199C40 = 0;
      *(&xmmword_1EE199C40 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C50 = v1;
      qword_1EE199C58 = 0;
      qword_1EE199C20 = &unk_1F5CC8A30;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199C20);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199C40 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateCommand>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AB0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AB0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199C60);
      qword_1EE199C60 = &unk_1F5CC8AC8;
      __cxa_guard_release(&qword_1EE199AB0);
    }
  }

  if ((byte_1EE1999B3 & 1) == 0)
  {
    v1 = qword_1EE199A10;
    if (qword_1EE199A10 || (v1 = re::allocInfo_SMAssetStateCommand(a1), qword_1EE199A10 = v1, re::initInfo_SMAssetStateCommand(v1, v2, v3, v4), (byte_1EE1999B3 & 1) == 0))
    {
      byte_1EE1999B3 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199C60, 0);
      qword_1EE199C70 = 0x2800000003;
      dword_1EE199C78 = v5;
      word_1EE199C7C = 0;
      *&xmmword_1EE199C80 = 0;
      *(&xmmword_1EE199C80 + 1) = 0xFFFFFFFFLL;
      qword_1EE199C90 = v1;
      qword_1EE199C98 = 0;
      qword_1EE199C60 = &unk_1F5CC8AC8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199C60);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199C80 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetState(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A040, "SMAssetState");
    __cxa_guard_release(&qword_1EE199A20);
  }

  return &unk_1EE19A040;
}

void re::initInfo_SMAssetState(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x3C56069A78F8FAF6;
  v20[1] = "SMAssetState";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE199A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A18))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x5000000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199B00 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_totalExitTime";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x6000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199B08 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateTransition>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "m_transitions";
    *(v16 + 16) = &qword_1EE199C20;
    *(v16 + 24) = 0;
    *(v16 + 32) = 3;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE199B10 = v16;
    v17 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateCommand>>::get(v17);
    v18 = (*(*v17 + 32))(v17, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_commands";
    *(v18 + 16) = &qword_1EE199C60;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199B18 = v18;
    __cxa_guard_release(&qword_1EE199A18);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE199B00;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetState>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetState>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

double re::internal::defaultConstruct<re::SMAssetState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = &str_67;
  *(a3 + 96) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 80));
  re::DynamicArray<re::SMAssetStateCommand>::deinit((a3 + 40));

  return re::DynamicArray<re::SMAssetStateTransition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetState>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = &str_67;
  *(a1 + 96) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetState>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 80));
  re::DynamicArray<re::SMAssetStateCommand>::deinit((a1 + 40));

  return re::DynamicArray<re::SMAssetStateTransition>::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetState>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AB8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199CA0);
      qword_1EE199CA0 = &unk_1F5CC8B60;
      __cxa_guard_release(&qword_1EE199AB8);
    }
  }

  if ((byte_1EE1999B4 & 1) == 0)
  {
    v1 = qword_1EE199A28;
    if (qword_1EE199A28 || (v1 = re::allocInfo_SMAssetState(a1), qword_1EE199A28 = v1, re::initInfo_SMAssetState(v1, v2, v3, v4), (byte_1EE1999B4 & 1) == 0))
    {
      byte_1EE1999B4 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199CA0, 0);
      qword_1EE199CB0 = 0x2800000003;
      dword_1EE199CB8 = v5;
      word_1EE199CBC = 0;
      *&xmmword_1EE199CC0 = 0;
      *(&xmmword_1EE199CC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE199CD0 = v1;
      qword_1EE199CD8 = 0;
      qword_1EE199CA0 = &unk_1F5CC8B60;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199CA0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199CC0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::allocInfo_SMAssetStateGraph(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A0D0, "SMAssetStateGraph");
    __cxa_guard_release(&qword_1EE199A38);
  }

  return &unk_1EE19A0D0;
}

void re::initInfo_SMAssetStateGraph(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0x4E16780EA9971126;
  v25[1] = "SMAssetStateGraph";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE199A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A30))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE199B20 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_hasAnyState";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199B28 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE199A28;
    if (!qword_1EE199A28)
    {
      v17 = re::allocInfo_SMAssetState(v15);
      qword_1EE199A28 = v17;
      re::initInfo_SMAssetState(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_anyState";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4000000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE199B30 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetState>>::get(v22);
    v23 = (*(*v22 + 32))(v22, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "m_states";
    *(v23 + 16) = &qword_1EE199CA0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 4;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE199B38 = v23;
    __cxa_guard_release(&qword_1EE199A30);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE199B20;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraph>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraph>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraph>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraph>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v24 = v26;
}

double re::internal::defaultConstruct<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = &str_67;
  *(a3 + 160) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2, void *a3)
{
  re::StringID::destroyString((a3 + 18));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a3 + 13);
  re::DynamicArray<re::SMAssetStateTransition>::deinit((a3 + 8));
  re::StringID::destroyString((a3 + 5));

  return re::DynamicArray<re::SMAssetState>::deinit(a3);
}

double re::internal::defaultConstructV2<re::SMAssetStateGraph>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &str_67;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = &str_67;
  *(a1 + 160) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SMAssetStateGraph>(void *a1)
{
  re::StringID::destroyString((a1 + 18));
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a1 + 13);
  re::DynamicArray<re::SMAssetStateTransition>::deinit((a1 + 8));
  re::StringID::destroyString((a1 + 5));

  return re::DynamicArray<re::SMAssetState>::deinit(a1);
}

void *re::allocInfo_SMAssetStateGraphGroup(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A160, "SMAssetStateGraphGroup");
    __cxa_guard_release(&qword_1EE199A48);
  }

  return &unk_1EE19A160;
}

void re::initInfo_SMAssetStateGraphGroup(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0xEE39C57C083FC358;
  v10[1] = "SMAssetStateGraphGroup";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE199A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A58))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraph>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "stateGraphs";
    *(v8 + 16) = &qword_1EE199CE0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE199A50 = v8;
    __cxa_guard_release(&qword_1EE199A58);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199A50;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraphGroup>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraphGroup>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraphGroup>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraphGroup>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraph>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199CE0);
      qword_1EE199CE0 = &unk_1F5CC8BF8;
      __cxa_guard_release(&qword_1EE199AC0);
    }
  }

  if ((byte_1EE1999B5 & 1) == 0)
  {
    v1 = qword_1EE199A40;
    if (qword_1EE199A40 || (v1 = re::allocInfo_SMAssetStateGraph(a1), qword_1EE199A40 = v1, re::initInfo_SMAssetStateGraph(v1, v2, v3, v4), (byte_1EE1999B5 & 1) == 0))
    {
      byte_1EE1999B5 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199CE0, 0);
      qword_1EE199CF0 = 0x2800000003;
      dword_1EE199CF8 = v5;
      word_1EE199CFC = 0;
      *&xmmword_1EE199D00 = 0;
      *(&xmmword_1EE199D00 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D10 = v1;
      qword_1EE199D18 = 0;
      qword_1EE199CE0 = &unk_1F5CC8BF8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199CE0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199D00 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::SMAssetStateGraphGroup>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateGraphGroup>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_SMAssetStateGraphGroupCollection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A1F0, "SMAssetStateGraphGroupCollection");
    __cxa_guard_release(&qword_1EE199A68);
  }

  return &unk_1EE19A1F0;
}

void re::initInfo_SMAssetStateGraphGroupCollection(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0x9807B33386548AD4;
  v10[1] = "SMAssetStateGraphGroupCollection";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE199A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A78))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraphGroup>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "stateGraphGroups";
    *(v8 + 16) = &qword_1EE199D20;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE199A70 = v8;
    __cxa_guard_release(&qword_1EE199A78);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199A70;
  *(this + 9) = re::internal::defaultConstruct<re::SMAssetStateGraphGroupCollection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SMAssetStateGraphGroupCollection>;
  *(this + 13) = re::internal::defaultConstructV2<re::SMAssetStateGraphGroupCollection>;
  *(this + 14) = re::internal::defaultDestructV2<re::SMAssetStateGraphGroupCollection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void re::IntrospectionInfo<re::DynamicArray<re::SMAssetStateGraphGroup>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199D20);
      qword_1EE199D20 = &unk_1F5CC8C90;
      __cxa_guard_release(&qword_1EE199AC8);
    }
  }

  if ((byte_1EE1999B6 & 1) == 0)
  {
    v1 = qword_1EE199A60;
    if (qword_1EE199A60 || (v1 = re::allocInfo_SMAssetStateGraphGroup(a1), qword_1EE199A60 = v1, re::initInfo_SMAssetStateGraphGroup(v1, v2, v3, v4), (byte_1EE1999B6 & 1) == 0))
    {
      byte_1EE1999B6 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199D20, 0);
      qword_1EE199D30 = 0x2800000003;
      dword_1EE199D38 = v5;
      word_1EE199D3C = 0;
      *&xmmword_1EE199D40 = 0;
      *(&xmmword_1EE199D40 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D50 = v1;
      qword_1EE199D58 = 0;
      qword_1EE199D20 = &unk_1F5CC8C90;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199D20);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199D40 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::SMAssetStateGraphGroupCollection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SMAssetStateGraphGroupCollection>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_StateMachineAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A280, "StateMachineAsset");
    __cxa_guard_release(&qword_1EE199A88);
  }

  return &unk_1EE19A280;
}

void re::initInfo_StateMachineAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v17[0] = 0x1BF3F5A4A26CA3F4;
  v17[1] = "StateMachineAsset";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE199A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199A90))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::StateMachineInitializationData>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "stateMachineInitializationData";
    *(v8 + 16) = &qword_1EE199D60;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE199AD8 = v8;
    v9 = re::introspectionAllocator();
    v10 = v9;
    v11 = qword_1EE199A80;
    if (!qword_1EE199A80)
    {
      v11 = re::allocInfo_SMAssetStateGraphGroupCollection(v9);
      qword_1EE199A80 = v11;
      re::initInfo_SMAssetStateGraphGroupCollection(v11, v12, v13, v14);
    }

    v15 = (*(*v10 + 32))(v10, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "assetStateGraphs";
    *(v15 + 16) = v11;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x2800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE199AE0 = v15;
    __cxa_guard_release(&qword_1EE199A90);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE199AD8;
  *(this + 9) = re::internal::defaultConstruct<re::StateMachineAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateMachineAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateMachineAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateMachineAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v16 = v18;
}

void re::IntrospectionInfo<re::DynamicArray<re::StateMachineInitializationData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199AD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199AD0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199D60);
      qword_1EE199D60 = &unk_1F5CC8D28;
      __cxa_guard_release(&qword_1EE199AD0);
    }
  }

  if ((byte_1EE1999B7 & 1) == 0)
  {
    v1 = qword_1EE1999C8;
    if (qword_1EE1999C8 || (v1 = re::allocInfo_StateMachineInitializationData(a1), qword_1EE1999C8 = v1, re::initInfo_StateMachineInitializationData(v1, v2, v3, v4), (byte_1EE1999B7 & 1) == 0))
    {
      byte_1EE1999B7 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199D60, 0);
      qword_1EE199D70 = 0x2800000003;
      dword_1EE199D78 = v5;
      word_1EE199D7C = 0;
      *&xmmword_1EE199D80 = 0;
      *(&xmmword_1EE199D80 + 1) = 0xFFFFFFFFLL;
      qword_1EE199D90 = v1;
      qword_1EE199D98 = 0;
      qword_1EE199D60 = &unk_1F5CC8D28;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199D60);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199D80 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::StateMachineAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::StateMachineAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void re::StateGraph::~StateGraph(re::StateGraph *this)
{
  re::StateGraph::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::StringID::destroyString((this + 8));
}

{
  re::StateGraph::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::StringID::destroyString((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::StateMachineState::~StateMachineState(re::StateMachineState *this)
{
  re::StateMachineState::~StateMachineState(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC88A8;
  v2 = this + 8;
  re::StateMachineState::deinit(this);
  re::StringID::destroyString((this + 88));
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(v2);
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(&v17, *(a2 + 32), *(a2 + 32) + 96 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 96 * v9;
      v13 = 96 * v4;
      do
      {
        v14 = v11 + v12;
        re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(v11 + v12, (v10 + v12));
        re::StringID::StringID((v11 + v12 + 40), (v10 + v12 + 40));
        re::StringID::StringID((v11 + v12 + 56), (v10 + v12 + 56));
        result = re::StringID::StringID((v11 + v12 + 72), (v10 + v12 + 72));
        v15 = *(v10 + v12 + 88);
        *(v14 + 92) = *(v10 + v12 + 92);
        *(v14 + 88) = v15;
        v13 -= 96;
        v10 += 96;
        v11 += 96;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(&v16, *(a2 + 32), *(a2 + 32) + 96 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 96 * v4;
      v8 = 96 * v6 - 96 * v4;
      do
      {
        re::StringID::destroyString((v7 + 72));
        re::StringID::destroyString((v7 + 56));
        re::StringID::destroyString((v7 + 40));
        result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v7);
        v7 += 96;
        v8 -= 96;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::SMAssetStateTransition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
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
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v17 = (v8 + v10 + 40);
          LOBYTE(v16) = *v17;
          v13[5] = v7[v10 / 8 + 5] & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
          v13[5] = *v17 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[6] = *(v8 + v10 + 48);
          *(v12 + 48) = &str_67;
          *v17 = 0;
          v18 = (v8 + v10 + 56);
          LOBYTE(v16) = *v18;
          v13[7] = v7[v10 / 8 + 7] & 0xFFFFFFFFFFFFFFFELL | *v18 & 1;
          v13[7] = *v18 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = &str_67;
          *v18 = 0;
          v19 = (v8 + v10 + 72);
          LOBYTE(v16) = *v19;
          v13[9] = v7[v10 / 8 + 9] & 0xFFFFFFFFFFFFFFFELL | *v19 & 1;
          v13[9] = *v19 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v13[10] = *(v8 + v10 + 80);
          *(v12 + 80) = &str_67;
          *v19 = 0;
          LODWORD(v16) = *(v8 + v10 + 88);
          *(v13 + 92) = *(v8 + v10 + 92);
          *(v13 + 22) = v16;
          re::StringID::destroyString(v19);
          re::StringID::destroyString(v18);
          re::StringID::destroyString(v17);
          re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 40);
          v5 -= 40;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateTransition *,re::SMAssetStateTransition *,re::SMAssetStateTransition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    re::DynamicArray<re::SMAssetTransitionCondition>::operator=(a4 + v7, (a2 + v7));
    re::StringID::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    re::StringID::operator=((a4 + v7 + 56), (a2 + v7 + 56));
    re::StringID::operator=((a4 + v7 + 72), (a2 + v7 + 72));
    v10 = *(a2 + v7 + 88);
    *(v8 + 92) = *(a2 + v7 + 92);
    *(v8 + 88) = v10;
    v7 += 96;
  }

  while (v9 + 96 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetTransitionCondition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 40 * v14;
      do
      {
        v17 = re::StringID::operator=(v15, v13);
        v18 = *(v13 + 16);
        *(v17 + 30) = *(v13 + 30);
        *(v17 + 1) = v18;
        v13 += 40;
        v15 = v17 + 5;
        v16 -= 40;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v19 = 5 * v14;
      v20 = v13 + 8 * v19;
      v21 = &v15[v19];
      v22 = 40 * v4 - 8 * v19;
      do
      {
        v23 = re::StringID::StringID(v21, v20);
        v24 = *(v20 + 16);
        *(v23 + 30) = *(v20 + 30);
        *(v23 + 1) = v24;
        v20 += 40;
        v21 = (v23 + 40);
        v22 -= 40;
      }

      while (v22);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v10 = *(v7 + 16);
        *(v9 + 30) = *(v7 + 30);
        *(v9 + 1) = v10;
        v7 += 40;
        v6 = v9 + 5;
        v8 -= 40;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v11 = &v6[5 * v4];
      v12 = 40 * v5 - 40 * v4;
      do
      {
        re::StringID::destroyString(v11);
        v11 = (v11 + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 40);
      v4 -= 40;
    }

    while (v4);
  }

  ++*(result + 24);
}

void *re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(v5, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 1);
          *(v11 + 30) = *(v8 + 30);
          *(v11 + 1) = v13;
          re::StringID::destroyString(v8);
          v8 += 5;
          v11 += 5;
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

uint64_t re::DynamicArray<re::SMAssetTransitionCondition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetTransitionCondition>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(&v12, *(a2 + 32), *(a2 + 32) + 424 * a1[2], a1[4]);
    v6 = a1[2];
    if (v6 != v4)
    {
      v7 = *(a2 + 32);
      v8 = a1[4];
      v9 = 424 * v6;
      v10 = 424 * v4;
      do
      {
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9, (v7 + v9));
        re::DynamicArray<char const*>::DynamicArray(v8 + v9 + 40, (v7 + v9 + 40));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 80, (v7 + v9 + 80));
        re::DynamicArray<float>::DynamicArray(v8 + v9 + 120, (v7 + v9 + 120));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 160, (v7 + v9 + 160));
        re::DynamicArray<char const*>::DynamicArray(v8 + v9 + 200, (v7 + v9 + 200));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 240, (v7 + v9 + 240));
        re::DynamicArray<BOOL>::DynamicArray(v8 + v9 + 280, (v7 + v9 + 280));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 320, (v7 + v9 + 320));
        re::DynamicArray<re::StringID>::DynamicArray(v8 + v9 + 360, (v7 + v9 + 360));
        *(v8 + v9 + 400) = *(v7 + v9 + 400);
        result = re::StringID::StringID((v8 + v9 + 408), (v7 + v9 + 408));
        v10 -= 424;
        v7 += 424;
        v8 += 424;
      }

      while (v9 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(&v11, *(a2 + 32), *(a2 + 32) + 424 * v4, a1[4]);
    result = re::ObjectHelper::destroy<re::SMAssetStateCommand>(a1[4] + 424 * v4, a1[4] + 424 * a1[2]);
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::SMAssetStateCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1A8uLL))
        {
          v2 = 424 * a2;
          result = (*(*result + 32))(result, 424 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 424, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
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
        v10 = 0;
        v11 = 424 * v9;
        do
        {
          re::SMAssetStateCommand::SMAssetStateCommand(&v7[v10 / 8], v8 + v10);
          re::StringID::destroyString((v8 + v10 + 408));
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 360);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 320);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 280);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 240);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 200);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 160);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 120);
          re::DynamicArray<re::StringID>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<re::StringID>::deinit(v8 + v10);
          v10 += 424;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::SMAssetStateCommand::SMAssetStateCommand(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 192) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 184) = 0;
  v14 = *(a2 + 168);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v15 = *(result + 176);
  *(result + 176) = *(a2 + 176);
  *(a2 + 176) = v15;
  v16 = *(result + 192);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = v16;
  ++*(a2 + 184);
  ++*(result + 184);
  *(result + 232) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 200) = 0;
  *(result + 224) = 0;
  v17 = *(a2 + 208);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = v17;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(result + 216);
  *(result + 216) = *(a2 + 216);
  *(a2 + 216) = v18;
  v19 = *(result + 232);
  *(result + 232) = *(a2 + 232);
  *(a2 + 232) = v19;
  ++*(a2 + 224);
  ++*(result + 224);
  *(result + 272) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  v20 = *(a2 + 248);
  *(result + 240) = *(a2 + 240);
  *(result + 248) = v20;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v21 = *(result + 256);
  *(result + 256) = *(a2 + 256);
  *(a2 + 256) = v21;
  v22 = *(result + 272);
  *(result + 272) = *(a2 + 272);
  *(a2 + 272) = v22;
  ++*(a2 + 264);
  ++*(result + 264);
  *(result + 312) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = 0;
  *(result + 304) = 0;
  v23 = *(a2 + 288);
  *(result + 280) = *(a2 + 280);
  *(result + 288) = v23;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v24 = *(result + 296);
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = v24;
  v25 = *(result + 312);
  *(result + 312) = *(a2 + 312);
  *(a2 + 312) = v25;
  ++*(a2 + 304);
  ++*(result + 304);
  *(result + 352) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 320) = 0;
  *(result + 344) = 0;
  v26 = *(a2 + 328);
  *(result + 320) = *(a2 + 320);
  *(result + 328) = v26;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  v27 = *(result + 336);
  *(result + 336) = *(a2 + 336);
  *(a2 + 336) = v27;
  v28 = *(result + 352);
  *(result + 352) = *(a2 + 352);
  *(a2 + 352) = v28;
  ++*(a2 + 344);
  ++*(result + 344);
  *(result + 392) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 360) = 0;
  *(result + 384) = 0;
  v29 = *(a2 + 368);
  *(result + 360) = *(a2 + 360);
  *(result + 368) = v29;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v30 = *(result + 376);
  *(result + 376) = *(a2 + 376);
  *(a2 + 376) = v30;
  v31 = *(result + 392);
  *(result + 392) = *(a2 + 392);
  *(a2 + 392) = v31;
  ++*(a2 + 384);
  ++*(result + 384);
  *(result + 400) = *(a2 + 400);
  v32 = *(a2 + 408);
  *(result + 408) = *(result + 408) & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  *(result + 408) = *(a2 + 408) & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  *(result + 416) = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = &str_67;
  return result;
}

uint64_t re::ObjectHelper::destroy<re::SMAssetStateCommand>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      re::StringID::destroyString((v3 + 408));
      re::DynamicArray<re::StringID>::deinit(v3 + 360);
      re::DynamicArray<re::StringID>::deinit(v3 + 320);
      re::DynamicArray<unsigned long>::deinit(v3 + 280);
      re::DynamicArray<re::StringID>::deinit(v3 + 240);
      re::DynamicArray<unsigned long>::deinit(v3 + 200);
      re::DynamicArray<re::StringID>::deinit(v3 + 160);
      re::DynamicArray<unsigned long>::deinit(v3 + 120);
      re::DynamicArray<re::StringID>::deinit(v3 + 80);
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<re::StringID>::deinit(v3);
      v3 += 424;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateCommand *,re::SMAssetStateCommand *,re::SMAssetStateCommand *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::StringID>::operator=(a4, v5);
    re::DynamicArray<unsigned long long>::operator=(a4 + 40, (v5 + 40));
    re::DynamicArray<re::StringID>::operator=(a4 + 80, (v5 + 80));
    re::DynamicArray<float>::operator=(a4 + 120, (v5 + 120));
    re::DynamicArray<re::StringID>::operator=(a4 + 160, (v5 + 160));
    re::DynamicArray<unsigned long long>::operator=(a4 + 200, (v5 + 200));
    re::DynamicArray<re::StringID>::operator=(a4 + 240, (v5 + 240));
    re::DynamicArray<BOOL>::operator=(a4 + 280, (v5 + 280));
    re::DynamicArray<re::StringID>::operator=(a4 + 320, (v5 + 320));
    re::DynamicArray<re::StringID>::operator=(a4 + 360, (v5 + 360));
    *(a4 + 400) = *(v5 + 400);
    re::StringID::operator=((a4 + 408), (v5 + 408));
    a4 += 424;
    v5 += 424;
  }

  while (v5 != v6);
  return v6;
}

void *re::DynamicArray<re::SMAssetStateCommand>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    result = result[4];
    if (result)
    {
      re::ObjectHelper::destroy<re::SMAssetStateCommand>(result, &result[53 * v1[2]]);
      result = (*(**v1 + 40))(*v1, v1[4]);
    }

    v1[4] = 0;
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
    ++*(v1 + 6);
  }

  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::StringID::destroyString((v3 + 72));
          re::StringID::destroyString((v3 + 56));
          re::StringID::destroyString((v3 + 40));
          re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          re::DynamicArray<re::SMAssetStateGraph>::deinit(v3);
          v3 += 40;
          v5 -= 40;
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

uint64_t re::DynamicArray<re::SMAssetStateGraph>::deinit(uint64_t a1)
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
        v5 = 168 * v4;
        do
        {
          re::StringID::destroyString((v3 + 18));
          re::DynamicArray<re::SMAssetStateCommand>::deinit(v3 + 13);
          re::DynamicArray<re::SMAssetStateTransition>::deinit((v3 + 8));
          re::StringID::destroyString((v3 + 5));
          re::DynamicArray<re::SMAssetState>::deinit(v3);
          v3 += 21;
          v5 -= 168;
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

uint64_t re::DynamicArray<re::SMAssetState>::deinit(uint64_t a1)
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
        v5 = 104 * v4;
        do
        {
          re::StringID::destroyString((v3 + 80));
          re::DynamicArray<re::SMAssetStateCommand>::deinit((v3 + 40));
          re::DynamicArray<re::SMAssetStateTransition>::deinit(v3);
          v3 += 104;
          v5 -= 104;
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

void re::DynamicArray<re::StateMachineInitializationData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(*(a2 + 32), (*(a2 + 32) + 48 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 48 * v8;
      v12 = 48 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::StringID::StringID((v10 + v11 + 16), (v9 + v11 + 16));
        re::StringID::StringID((v10 + v11 + 32), (v9 + v11 + 32));
        v9 += 48;
        v12 -= 48;
        v10 += 48;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(*(a2 + 32), (*(a2 + 32) + 48 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 48 * v4;
      v7 = 48 * v5 - 48 * v4;
      do
      {
        re::StringID::destroyString((v6 + 32));
        re::StringID::destroyString((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 48;
        v7 -= 48;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::StateMachineInitializationData>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString((v3 + 32));
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::StateMachineInitializationData *,re::StateMachineInitializationData *,re::StateMachineInitializationData *>(unint64_t *result, uint64_t *a2, unint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::StringID::operator=(a3, v5);
      re::StringID::operator=(a3 + 2, v5 + 2);
      result = re::StringID::operator=(a3 + 4, v5 + 4);
      v5 += 6;
      a3 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::FixedArray<re::DynamicArray<re::StateGraph *>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
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
      *(result + 32) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 0;
      *(result + 24) = 0;
      result += 40;
      --v6;
    }

    while (v6);
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    result = a1[4];
    if (v13)
    {
      v14 = 40 * v13;
      do
      {
        v15 = re::DynamicArray<re::SMAssetStateGraph>::operator=(result, v12);
        v12 += 5;
        result = v15 + 40;
        v14 -= 40;
      }

      while (v14);
      result = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = 5 * v13;
      v17 = &v12[v16];
      result += 8 * v16;
      v18 = 40 * v4 - 8 * v16;
      do
      {
        v19 = re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(result, v17);
        v17 += 5;
        result = v19 + 40;
        v18 -= 40;
      }

      while (v18);
    }
  }

  else
  {
    result = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        v9 = re::DynamicArray<re::SMAssetStateGraph>::operator=(result, v7);
        v7 += 5;
        result = v9 + 40;
        v8 -= 40;
      }

      while (v8);
      result = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = result + 40 * v4;
      v11 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::SMAssetStateGraph>::deinit(v10);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraphGroup>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::SMAssetStateGraph>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::SMAssetStateGraph>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

uint64_t re::DynamicArray<re::SMAssetStateGraph>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateGraph>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(&v17, *(a2 + 32), *(a2 + 32) + 168 * a1[2], a1[4]);
    v10 = a1[2];
    if (v10 != v4)
    {
      v11 = *(a2 + 32);
      v12 = a1[4];
      v13 = 168 * v10;
      v14 = 168 * v4;
      do
      {
        v15 = v12 + v13;
        re::DynamicArray<re::SMAssetState>::DynamicArray(v12 + v13, (v11 + v13));
        re::StringID::StringID((v12 + v13 + 40), (v11 + v13 + 40));
        *(v15 + 56) = *(v11 + v13 + 56);
        re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v12 + v13 + 64, (v11 + v13 + 64));
        re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v12 + v13 + 104, (v11 + v13 + 104));
        result = re::StringID::StringID((v12 + v13 + 144), (v11 + v13 + 144));
        *(v15 + 160) = *(v11 + v13 + 160);
        v14 -= 168;
        v11 += 168;
        v12 += 168;
      }

      while (v13 != v14);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(&v16, *(a2 + 32), *(a2 + 32) + 168 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4];
      v8 = 168 * v4;
      v9 = 168 * v6;
      do
      {
        re::StringID::destroyString((v7 + v8 + 144));
        re::DynamicArray<re::SMAssetStateCommand>::deinit((v7 + v8 + 104));
        re::DynamicArray<re::SMAssetStateTransition>::deinit(v7 + v8 + 64);
        re::StringID::destroyString((v7 + v8 + 40));
        result = re::DynamicArray<re::SMAssetState>::deinit(v7 + v8);
        v9 -= 168;
        v7 += 168;
      }

      while (v8 != v9);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 168 * v2;
    do
    {
      re::StringID::destroyString((v3 + 18));
      re::DynamicArray<re::SMAssetStateCommand>::deinit(v3 + 13);
      re::DynamicArray<re::SMAssetStateTransition>::deinit((v3 + 8));
      re::StringID::destroyString((v3 + 5));
      result = re::DynamicArray<re::SMAssetState>::deinit(v3);
      v3 += 21;
      v4 -= 168;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraph>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
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
        v10 = 168 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::SMAssetStateGraph>(v8, v11);
          v8 += 168;
          v11 += 168;
          v10 -= 168;
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

uint64_t re::ObjectHelper::move<re::SMAssetStateGraph>(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);
  ++*(a1 + 24);
  ++*(a2 + 24);
  v6 = (a1 + 40);
  LOBYTE(v3) = *(a1 + 40);
  *(a1 + 32) = v5;
  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 40) = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = &str_67;
  *(a1 + 40) = 0;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 96) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  v7 = a1 + 64;
  v8 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = 0;
  *(a2 + 72) = v8;
  *(a1 + 72) = 0;
  v9 = *(a2 + 80);
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 80) = v9;
  v10 = *(a2 + 96);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = v10;
  ++*(a1 + 88);
  ++*(a2 + 88);
  *(a2 + 136) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  v11 = (a1 + 104);
  v12 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 104) = 0;
  *(a2 + 112) = v12;
  *(a1 + 112) = 0;
  v13 = *(a2 + 120);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = v13;
  v14 = *(a2 + 136);
  *(a2 + 136) = *(a1 + 136);
  *(a1 + 136) = v14;
  ++*(a1 + 128);
  ++*(a2 + 128);
  v16 = *(a1 + 144);
  v15 = (a1 + 144);
  *(a2 + 144) = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(a2 + 144) = *v15 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(a2 + 152) = *(a1 + 152);
  *(a1 + 152) = &str_67;
  *v15 = 0;
  *(a2 + 160) = *(a1 + 160);
  re::StringID::destroyString(v15);
  re::DynamicArray<re::SMAssetStateCommand>::deinit(v11);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(v7);
  re::StringID::destroyString(v6);

  return re::DynamicArray<re::SMAssetState>::deinit(a1);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetStateGraph *,re::SMAssetStateGraph *,re::SMAssetStateGraph *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::SMAssetState>::operator=(a4, v5);
    re::StringID::operator=((a4 + 40), (v5 + 40));
    *(a4 + 56) = *(v5 + 56);
    re::DynamicArray<re::SMAssetStateTransition>::operator=(a4 + 64, (v5 + 64));
    re::DynamicArray<re::SMAssetStateCommand>::operator=(a4 + 104, (v5 + 104));
    re::StringID::operator=((a4 + 144), (v5 + 144));
    *(a4 + 160) = *(v5 + 160);
    a4 += 168;
    v5 += 168;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetState>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetState>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetState>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetState>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetState>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetState>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(&v15, *(a2 + 32), *(a2 + 32) + 104 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 104 * v9;
      v13 = 104 * v4;
      do
      {
        re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(v11 + v12, (v10 + v12));
        re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v11 + v12 + 40, (v10 + v12 + 40));
        result = re::StringID::StringID((v11 + v12 + 80), (v10 + v12 + 80));
        *(v11 + v12 + 96) = *(v10 + v12 + 96);
        v13 -= 104;
        v10 += 104;
        v11 += 104;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(&v14, *(a2 + 32), *(a2 + 32) + 104 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 104 * v4;
      v8 = -104 * v4 + 104 * v6;
      do
      {
        re::StringID::destroyString((v7 + 80));
        re::DynamicArray<re::SMAssetStateCommand>::deinit((v7 + 40));
        result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v7);
        v7 += 104;
        v8 -= 104;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::SMAssetState>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 104 * v2;
    do
    {
      re::StringID::destroyString((v3 + 80));
      re::DynamicArray<re::SMAssetStateCommand>::deinit((v3 + 40));
      result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v3);
      v3 += 104;
      v4 -= 104;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::SMAssetState>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SMAssetState>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v10 = v8 + 104 * v9;
        v11 = v7 + 6;
        do
        {
          *(v11 - 2) = 0;
          *(v11 - 5) = 0;
          *(v11 - 4) = 0;
          *(v11 - 6) = 0;
          *(v11 - 6) = 0;
          v12 = *(v8 + 8);
          *(v11 - 6) = *v8;
          *(v11 - 5) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 4);
          *(v11 - 4) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 6);
          v11[3] = 0;
          *v11 = 0;
          v11[1] = 0;
          *(v11 - 1) = 0;
          *(v11 + 4) = 0;
          v15 = *(v8 + 48);
          *(v11 - 1) = *(v8 + 40);
          *(v8 + 40) = 0;
          *v11 = v15;
          *(v8 + 48) = 0;
          v16 = v11[1];
          v11[1] = *(v8 + 56);
          *(v8 + 56) = v16;
          v17 = v11[3];
          v11[3] = *(v8 + 72);
          *(v8 + 72) = v17;
          ++*(v8 + 64);
          ++*(v11 + 4);
          LOBYTE(v17) = *(v8 + 80);
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 80) & 1;
          v11[4] = *(v8 + 80) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[5] = *(v8 + 88);
          *(v8 + 88) = &str_67;
          *(v8 + 80) = 0;
          *(v11 + 12) = *(v8 + 96);
          re::StringID::destroyString((v8 + 80));
          re::DynamicArray<re::SMAssetStateCommand>::deinit((v8 + 40));
          re::DynamicArray<re::SMAssetStateTransition>::deinit(v8);
          v11 += 13;
          v8 += 104;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::SMAssetState *,re::SMAssetState *,re::SMAssetState *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::SMAssetStateTransition>::operator=(a4, v5);
    re::DynamicArray<re::SMAssetStateCommand>::operator=(a4 + 40, (v5 + 40));
    re::StringID::operator=((a4 + 80), (v5 + 80));
    *(a4 + 96) = *(v5 + 96);
    a4 += 104;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SMAssetStateTransition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateTransition>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateCommand>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::SMAssetStateCommand>(*(a1 + 32), *(a1 + 32) + 424 * v6);
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SMAssetStateCommand>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateTransition>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 96 * v2;
    do
    {
      re::StringID::destroyString((v3 + 72));
      re::StringID::destroyString((v3 + 56));
      re::StringID::destroyString((v3 + 40));
      result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v3);
      v3 += 96;
      v4 -= 96;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::SMAssetState>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetState>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::SMAssetStateGraph>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SMAssetStateGraph>::copy(a1, a2);
  }

  return a1;
}

void re::StateMachineAsset::~StateMachineAsset(re::StateMachineAsset *this)
{
  re::StateMachineAsset::deinit(this);
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 10);
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(this + 40);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this);
}

void *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SMAssetTransitionCondition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 40 * v8);
  *v9 = 0;
  v9[1] = &str_67;
  v9[2] = 0;
  v9[3] = 0;
  *(v9 + 30) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::SMAssetTransitionCondition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 40 * a3;
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

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::SMAssetTransitionCondition>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((result[4] + v8));
      ++v9;
      v8 += 40;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 8) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 30) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::SMAssetTransitionCondition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::SMAssetTransitionCondition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<long long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<long long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<long long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<long long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<float *>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4);
  *(v9 + 8 * v8) = 0;
  v10 = v8 + 1;
  *(this + 2) = v10;
  ++*(this + 6);
  v11 = (v9 + 8 * v10 - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<long long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 8 * a3;
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

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateTransition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateTransition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateTransition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateTransition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v20 = 0;
  v8 = 0uLL;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateTransition>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 96 * v9;
  *v10 = v8;
  v14 = v8;
  *(v10 + 16) = 0;
  v15 = 0;
  *(v10 + 32) = 0;
  *(&v16 + 1) = 0;
  LODWORD(v16) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = 0;
  *(v10 + 48) = &str_67;
  *(v10 + 56) = 0;
  *(v10 + 64) = &str_67;
  *(v10 + 72) = 0;
  *(v10 + 80) = &str_67;
  v11 = v20;
  *(v10 + 92) = BYTE4(v20);
  *(v10 + 88) = v11;
  ++*(this + 2);
  ++*(this + 6);
  *&v19 = 0;
  *(&v19 + 1) = &str_67;
  *&v18 = 0;
  *(&v18 + 1) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(&v14);
  v12 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

unint64_t re::IntrospectionDynamicArray<re::SMAssetStateTransition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 96 * a3;
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

  return *(a2 + 32) + 96 * a3;
}

void *re::DynamicArray<re::SMAssetStateTransition>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 72));
      re::StringID::destroyString((v10 + 56));
      re::StringID::destroyString((v10 + 40));
      result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 48) = &str_67;
        *(v7 + 64) = &str_67;
        *(v7 + 80) = &str_67;
        *(v7 + 92) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SMAssetStateTransition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateTransition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetStateTransition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateTransition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetStateTransition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  v45 = &str_67;
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateCommand>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = re::SMAssetStateCommand::SMAssetStateCommand(*(this + 4) + 424 * v8, v27);
  ++*(this + 2);
  ++*(this + 6);
  if (BYTE8(v44))
  {
    if (BYTE8(v44))
    {
    }
  }

  *(&v44 + 1) = 0;
  v45 = &str_67;
  re::DynamicArray<re::StringID>::deinit(&v43[2] + 8);
  re::DynamicArray<re::StringID>::deinit(v43);
  if (*(&v40 + 1))
  {
    if (*(&v42 + 1))
    {
      (*(**(&v40 + 1) + 40))(*(&v40 + 1), *(&v42 + 1), v13, v14, v15);
    }

    *(&v42 + 1) = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    LODWORD(v42) = v42 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v39);
  if (*(&v36 + 1))
  {
    if (*(&v38 + 1))
    {
      (*(**(&v36 + 1) + 40))(*(&v36 + 1), *(&v38 + 1), v16, v17, v18);
    }

    *(&v38 + 1) = 0;
    v37 = 0uLL;
    *(&v36 + 1) = 0;
    LODWORD(v38) = v38 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v35);
  if (*(&v32 + 1))
  {
    if (*(&v34 + 1))
    {
      (*(**(&v32 + 1) + 40))(*(&v32 + 1), *(&v34 + 1), v19, v20, v21);
    }

    *(&v34 + 1) = 0;
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    LODWORD(v34) = v34 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v31);
  if (*(&v28 + 1))
  {
    if (*(&v30 + 1))
    {
      (*(**(&v28 + 1) + 40))(*(&v28 + 1), *(&v30 + 1), v22, v23, v24);
    }

    *(&v30 + 1) = 0;
    v29 = 0uLL;
    *(&v28 + 1) = 0;
    LODWORD(v30) = v30 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v27);
  v25 = (*(this + 4) + 424 * *(this + 2) - 424);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v25);
  return v25;
}

unint64_t re::IntrospectionDynamicArray<re::SMAssetStateCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 424 * a3;
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

  return *(a2 + 32) + 424 * a3;
}

void *re::DynamicArray<re::SMAssetStateCommand>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 424 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 408));
      re::DynamicArray<re::StringID>::deinit(v10 + 360);
      re::DynamicArray<re::StringID>::deinit(v10 + 320);
      re::DynamicArray<unsigned long>::deinit(v10 + 280);
      re::DynamicArray<re::StringID>::deinit(v10 + 240);
      re::DynamicArray<unsigned long>::deinit(v10 + 200);
      re::DynamicArray<re::StringID>::deinit(v10 + 160);
      re::DynamicArray<unsigned long>::deinit(v10 + 120);
      re::DynamicArray<re::StringID>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<re::StringID>::deinit(v10);
      ++v9;
      v8 += 424;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 424 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 384) = 0uLL;
        *(v7 + 400) = 0uLL;
        *(v7 + 352) = 0uLL;
        *(v7 + 368) = 0uLL;
        *(v7 + 320) = 0uLL;
        *(v7 + 336) = 0uLL;
        *(v7 + 288) = 0uLL;
        *(v7 + 304) = 0uLL;
        *(v7 + 256) = 0uLL;
        *(v7 + 272) = 0uLL;
        *(v7 + 224) = 0uLL;
        *(v7 + 240) = 0uLL;
        *(v7 + 192) = 0uLL;
        *(v7 + 208) = 0uLL;
        *(v7 + 160) = 0uLL;
        *(v7 + 176) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        v6 += 424;
        *(v7 + 416) = &str_67;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SMAssetStateCommand>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    re::ObjectHelper::destroy<re::SMAssetStateCommand>(*(a1 + 32), *(a1 + 32) + 424 * v8);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v9 = re::DynamicArray<re::SMAssetStateCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = 424 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a3, 0);
        re::TypeInfo::construct(v13, v11, a3, 0);
        v11 += 424;
        v12 -= 424;
      }

      while (v12);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 424 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 424 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetState>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetState>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetState>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetState>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetState>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetState>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetState>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 104 * v9;
  *v10 = v8;
  v13 = v8;
  *(v10 + 16) = 0;
  v14 = 0;
  *(v10 + 32) = 0;
  *(&v15 + 1) = 0;
  LODWORD(v15) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = v8;
  v16 = v8;
  *(v10 + 56) = 0;
  *&v17 = 0;
  *(v10 + 72) = 0;
  DWORD2(v17) = 1;
  *(v10 + 64) = 1;
  *&v18 = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = &str_67;
  *(v10 + 96) = 0;
  ++*(this + 2);
  ++*(this + 6);
  *(&v18 + 1) = 0;
  *&v19 = &str_67;
  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(&v13);
  v11 = (*(this + 4) + 104 * *(this + 2) - 104);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::SMAssetState>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 104 * a3;
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

  return *(a2 + 32) + 104 * a3;
}

void *re::DynamicArray<re::SMAssetState>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 80));
      re::DynamicArray<re::SMAssetStateCommand>::deinit((v10 + 40));
      result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v10);
      ++v9;
      v8 += 104;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetState>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 88) = &str_67;
        *(v7 + 96) = 0;
        v6 += 104;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SMAssetState>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetState>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetState>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetState>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetState>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetState>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetState>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 104 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 104;
        v11 -= 104;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 104 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 104 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraph>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraph>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateGraph>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateGraph>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = 0uLL;
  v23 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraph>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 168 * v9;
  *v10 = v8;
  v14 = v8;
  *(v10 + 16) = 0;
  v15 = 0;
  *(v10 + 32) = 0;
  *(&v16 + 1) = 0;
  LODWORD(v16) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = 0;
  *(v10 + 48) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  *(v10 + 56) = 0;
  *(v10 + 64) = v8;
  *(v18 + 8) = v8;
  *(v10 + 80) = 0;
  *(&v18[1] + 1) = 0;
  *(v10 + 96) = 0;
  *(&v19 + 1) = 0;
  LODWORD(v19) = 1;
  *(v10 + 88) = 1;
  *(v10 + 104) = v8;
  v20 = v8;
  *(v10 + 120) = 0;
  *&v21 = 0;
  *(v10 + 136) = 0;
  *&v22 = 0;
  DWORD2(v21) = 1;
  *(v10 + 128) = 1;
  *(v10 + 144) = 0;
  *(v10 + 152) = &str_67;
  *(v10 + 160) = 0;
  ++*(this + 2);
  ++*(this + 6);
  *(&v22 + 1) = 0;
  *&v23 = &str_67;
  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v20);
  v11 = re::DynamicArray<re::SMAssetStateTransition>::deinit(v18 + 8);
  if (v17)
  {
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  re::DynamicArray<re::SMAssetState>::deinit(&v14);
  v12 = (*(this + 4) + 168 * *(this + 2) - 168);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

unint64_t re::IntrospectionDynamicArray<re::SMAssetStateGraph>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 168 * a3;
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

  return *(a2 + 32) + 168 * a3;
}

void *re::DynamicArray<re::SMAssetStateGraph>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 168 * a2;
    v9 = a2;
    do
    {
      v10 = (v3[4] + v8);
      re::StringID::destroyString((v10 + 18));
      re::DynamicArray<re::SMAssetStateCommand>::deinit(v10 + 13);
      re::DynamicArray<re::SMAssetStateTransition>::deinit((v10 + 8));
      re::StringID::destroyString((v10 + 5));
      result = re::DynamicArray<re::SMAssetState>::deinit(v10);
      ++v9;
      v8 += 168;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 168 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 48) = &str_67;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 128) = 0;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        v6 += 168;
        *(v7 + 152) = &str_67;
        *(v7 + 160) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SMAssetStateGraph>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateGraph>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetStateGraph>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateGraph>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetStateGraph>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 168 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 168;
        v11 -= 168;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 168 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 168 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}