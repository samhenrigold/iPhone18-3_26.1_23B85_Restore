id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Scene>,re::ecs2::Scene*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB4C0;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

double re::makeBindNode@<D0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v13 = this;
  if (this)
  {
    v12 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    v5 = v9;
    v6 = v10;
    *v4 = &unk_1F5CFADA8;
    *(v4 + 8) = v5;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = v6;
    v7 = *(&v10 + 1);
    *(v4 + 16) = *(&v9 + 1);
    *(v4 + 32) = v7;
    *(&v9 + 1) = 0;
    v10 = 0uLL;
    *(v4 + 48) = v12;
    v12 = 0;
    ++v11;
    *(v4 + 40) = 1;
    a1[2] = v4;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v9 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v9 + 8);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

{
  v10 = this;
  if (this)
  {
    v9 = 0;
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v4 = (*(*v10 + 40))(v10);
    *a1 = 0u;
    *(a1 + 1) = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v7 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v7 + 8);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Entity>,re::ecs2::Entity*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB598;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

uint64_t re::BindNode::create<anonymous namespace::EntityBindNodeImpl,re::BindPoint>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 8) = a1;
  v5 = (*(*a1 + 32))(a1, 56, 8);
  *v5 = &unk_1F5CFADA8;
  result = re::BindPoint::BindPoint((v5 + 1), a2);
  *(a3 + 16) = v5;
  return result;
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Component>,re::ecs2::Component*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB670;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

double re::makeEntityBindNodeForComponent@<D0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = this;
  if (this)
  {
    v13 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    memset(v15, 0, sizeof(v15));
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v10 + 8), v15);
    re::BindPoint::BindPointData::deinit(v15);
    *(v13 + 32 * *(&v11 + 1) - 32) = &unk_1F5CFB748;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    v6 = v10;
    v7 = v11;
    *v5 = &unk_1F5CFADA8;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = v7;
    v8 = *(&v11 + 1);
    *(v5 + 16) = *(&v10 + 1);
    *(v5 + 32) = v8;
    *(&v10 + 1) = 0;
    v11 = 0uLL;
    *(v5 + 48) = v13;
    v13 = 0;
    ++v12;
    *(v5 + 40) = 1;
    a1[2] = v5;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Component>,re::ecs2::Component const*&>(void *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v8);
  re::BindPoint::BindPointData::deinit(v8);
  v5 = a1[5] + 32 * a1[3];
  if (*a3)
  {
    v6 = (*a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(v8, v6);
  *(v5 - 24) = 0;
  v7 = (v5 - 24);
  *(v7 - 1) = &unk_1F5CFB670;
  objc_moveWeak(v7, v8);
  objc_destroyWeak(v8);
}

void anonymous namespace::SceneBindNodeImpl::~SceneBindNodeImpl(_anonymous_namespace_::SceneBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::SceneBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA9F0;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::SceneBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::SceneBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = strncmp(*a2, "scene", v5);
  if (v7 || aScene_1[v5])
  {
    result = strncmp(v6, "service", v5);
    if (result || aService[v5])
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      {
        {
          re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0, v17, v18, v19, v20, v21);
        }
      }

      v27 = 0;
      v22 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      re::BindPoint::addToBindPointStack(&v22, (a1 + 8));
      memset(v28, 0, sizeof(v28));
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v23, v28);
      re::BindPoint::BindPointData::deinit(v28);
      *(v27 + 32 * v25 - 32) = &unk_1F5CFAA88;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v14 = v22;
      v15 = v24;
      *v13 = &unk_1F5CFAC38;
      *(v13 + 8) = v14;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = v15;
      v16 = v25;
      *(v13 + 16) = v23;
      *(v13 + 32) = v16;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(v13 + 48) = v27;
      v27 = 0;
      ++v26;
      *(v13 + 40) = 1;
      *(a3 + 16) = v13;
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v23);
      return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v23);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v10 = *(a1 + 8);
    *v9 = &unk_1F5CFA9F0;
    v9[1] = v10;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v9 + 2), (a1 + 16));
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t *anonymous namespace::SceneBindNodeImpl::relativeNodeForKey@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  re::DynamicString::setCapacity(&v27, 0);
  if (v24[0])
  {
    v18 = a1[1];
    v6 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v19, a1 + 2);
    v7 = v25;
    v8 = v26;
    v16 = 0;
    v17 = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(&v18, &v16);
    if (v16)
    {
      if (v16)
      {
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    v12 = v18;
    v13 = v20;
    *v11 = &unk_1F5CFADA8;
    *(v11 + 8) = v12;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 24) = v13;
    v14 = v21;
    *(v11 + 16) = v19;
    *(v11 + 32) = v14;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(v11 + 48) = v23;
    v23 = 0;
    ++v22;
    *(v11 + 40) = 1;
    *(a3 + 16) = v11;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  result = v27;
  if (v27)
  {
    if (v28)
    {
      return (*(*v27 + 40))(v27, v29);
    }
  }

  return result;
}

BOOL anonymous namespace::SceneBindNodeImpl::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  v12 = 0uLL;
  result = re::internal::parseNextBindingKey(a2, &v12, a3);
  if (result)
  {
    v8 = *(&v12 + 1);
    if (*(&v12 + 1) == 8)
    {
      v9 = v12;
      if (*v12 == 0x7365697469746E65)
      {
        v11 = 0uLL;
        result = re::internal::parseNextBindingKey(a2, &v11, a3);
        if (result)
        {
          v10 = v11;
          *a4 = v12;
          if ((*(a4 + 16) & 1) == 0)
          {
            *(a4 + 16) = 1;
          }

          *(a4 + 24) = v10;
        }

        return result;
      }
    }

    else
    {
      v9 = v12;
    }

    *a4 = v9;
    *(a4 + 8) = v8;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t *anonymous namespace::SceneBindNodeImpl::bindPointForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  re::DynamicString::setCapacity(&v26, 0);
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v15)
    {
      re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0, v16, v17, v18, v19, v20);
      v8 = &unk_1EE187000;
    }
  }

  {
    *(a4 + 40) = 0;
    *a4 = a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    re::BindPoint::addToBindPointStack(a4, (a1 + 8));
    v10 = v24;
    v11 = v25;
    v21 = 0;
    v22 = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(a4, &v21);
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  result = v26;
  if (v26)
  {
    if (v27)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    (*(*v6 + 72))(v6, v4, v7, v8);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 88))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    v5 = *(a2 + 56);
  }

  else
  {
    v5 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v4 + 96))(v4, v5, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 112))(v7, v5, v8, v9, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 128))(v5, v4, v6, v7);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 144))(v5, v4, v6, v7);
    }
  }
}

double anonymous namespace::EntityAndComponentBindingKeyHelper::entityNameFromBindingKey(uint64_t a1, __int128 *a2, re::DynamicString *a3)
{
  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 1) != 8 || **a2 != 0x7365697469746E65)
    {
      *a1 = 0;
      return result;
    }

    a2 = (a2 + 24);
  }

  v10 = *a2;
  if (re::internal::doesBindingKeyNeedUnescaping(&v10))
  {
    re::internal::unescapeBindingKey(&v10, a3);
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    if ((v6 & 1) == 0)
    {
      v7 = a3 + 9;
    }

    v8 = v6 >> 1;
    v9 = v6 >> 1;
    if (*(a3 + 1))
    {
      v9 = v8;
    }

    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *a1 = 1;
  }

  else
  {
    *a1 = 1;
    result = *&v10;
    *(a1 + 8) = v10;
  }

  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(void *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
  re::BindPoint::BindPointData::deinit(v6);
  v4 = a1[5] + 32 * a1[3];
  *(v4 - 32) = &unk_1F5CFAB60;
  v5 = *a2;
  *(v4 - 24) = *(v4 - 24) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v4 - 24) = *a2 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(v4 - 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFAB60;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4)
  {
    v10 = re::internal::SceneEntityRelationship::resolveRelationship(v4, *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (v10)
    {
      v11 = v10;
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
      v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v12 + 48))(v12, v11, v13, v14) - 0x61C8864680B583E9;
    }
  }

  return v7;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v9 + 72))(v9, v8, v10, v11);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SceneEntityRelationship::resolveRelationship((a1 + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::SceneEntityRelationship::resolveRelationship((result + 8), *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::SceneEntityRelationship::resolveRelationship(re::internal::SceneEntityRelationship *this, void *a2, uint64_t *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  v5 = 8 * a2;
  v6 = 8 * a2;
  v7 = a3;
  while (1)
  {
    v8 = *v7;
    if (re::StringID::operator==((*v7 + 288), this))
    {
      break;
    }

    ++v7;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
LABEL_7:
    while (1)
    {
      if ((*(*v3 + 305) & 4) != 0)
      {
        v9 = re::internal::SceneEntityRelationship::resolveRelationship_internal(this, *v3);
        if (v9)
        {
          break;
        }
      }

      ++v3;
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }

    return v9;
  }

  return v8;
}

uint64_t re::internal::SceneEntityRelationship::resolveRelationship_internal(void *a1, uint64_t a2)
{
  v2 = *(a2 + 344);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 360);
  v5 = 8 * v2;
  while (1)
  {
    v6 = *v4;
    if ((*(*v4 + 305) & 4) != 0)
    {
      if (re::StringID::operator==((v6 + 288), a1))
      {
        return v6;
      }

      v7 = re::internal::SceneEntityRelationship::resolveRelationship_internal(a1, v6);
      if (v7)
      {
        break;
      }
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return v7;
}

void anonymous namespace::ECSServiceBindNodeImpl::~ECSServiceBindNodeImpl(_anonymous_namespace_::ECSServiceBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::ECSServiceBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFAC38;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::ECSServiceBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::ECSServiceBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  result = strncmp(*a2, "service", v5);
  if (result || aService[v5])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v8 = *(a1 + 8);
    *v7 = &unk_1F5CFAC38;
    v7[1] = v8;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v7 + 2), (a1 + 16));
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t anonymous namespace::ECSServiceBindNodeImpl::relativeNodeForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 8);
  v18 = *(a1 + 8);
  v6 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v19, (a1 + 16));
  v16 = 0;
  v17 = &str_67;
  memset(v24, 0, sizeof(v24));
  re::DynamicArray<re::BindPoint::BindPointData>::add(&v19, v24);
  re::BindPoint::BindPointData::deinit(v24);
  v8 = v23 + 32 * v21;
  *(v8 - 32) = &unk_1F5CFACD0;
  v9 = v16;
  *(v8 - 24) = *(v8 - 24) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  *(v8 - 24) = v16 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 - 16) = v17;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v12 = v18;
  v13 = v20;
  *v11 = &unk_1F5CFA9F0;
  *(v11 + 8) = v12;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 24) = v13;
  v14 = v21;
  *(v11 + 16) = v19;
  *(v11 + 32) = v14;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  *(v11 + 48) = v23;
  v23 = 0;
  ++v22;
  *(v11 + 40) = 1;
  *(a3 + 16) = v11;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
}

double anonymous namespace::ECSServiceBindNodeImpl::bindPointForKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

double anonymous namespace::ECSServiceBindNodeImpl::bindPointWithOverrideForKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFACD0;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::hash(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4)
  {
    v10 = re::internal::ServiceSceneRelationship::resolveRelationship(v4, a2);
    if (v10)
    {
      v11 = v10;
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
      v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v12 + 48))(v12, v11, v13, v14) - 0x61C8864680B583E9;
    }
  }

  return v7;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::isAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::makeAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 72))(v8, v7, v9, v10);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::targetIdentifier(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::baseValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::supportsOverrideValue(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::isOverridden(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::setIsOverridden(uint64_t result, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::overrideValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::markAsWritten(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::boundOwner(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::ServiceSceneRelationship::resolveRelationship((a1 + 8), a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ServiceSceneRelationship>::willSet(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::ServiceSceneRelationship::resolveRelationship((result + 8), a2);
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ServiceSceneRelationship::resolveRelationship(re::internal::ServiceSceneRelationship *this, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = (*(*a2 + 288))(a2) + 120;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v32, v3, 0);
  v4 = *&v32[0];
  v21 = *&v32[0];
  v22 = DWORD2(v32[0]);
  v5 = WORD4(v32[0]);
  v6 = HIWORD(DWORD2(v32[0]));
  if (v3 == *&v32[0] && WORD4(v32[0]) == 0xFFFF && v6 == 0xFFFF)
  {
    return 0;
  }

  while (1)
  {
    v9 = v6;
    v10 = *(v4 + 16);
    if (v10 <= v6)
    {
      v23 = 0;
      memset(v32, 0, sizeof(v32));
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v27 = 797;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      _os_log_send_and_compose_impl(v19, &v23, v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(*(v4 + 32) + 16 * v6) + 240 * v5;
    v12 = *(v11 + 200);
    if (v12)
    {
      v13 = *(v11 + 216);
      v14 = 8 * v12;
      while (1)
      {
        v15 = *v13;
        if (re::StringID::operator==((*v13 + 32), this))
        {
          break;
        }

        ++v13;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      if (v15)
      {
        return v15;
      }
    }

LABEL_15:
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v21);
    v4 = v21;
    v5 = v22;
    v6 = HIWORD(v22);
    if (v21 == v3 && v22 == 0xFFFF && HIWORD(v22) == 0xFFFF)
    {
      return 0;
    }
  }
}

void anonymous namespace::EntityBindNodeImpl::~EntityBindNodeImpl(_anonymous_namespace_::EntityBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::EntityBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFADA8;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::EntityBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::EntityBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = strncmp(*a2, "entity", v5);
  if (v7 || aEntity[v5])
  {
    if (!strncmp(v6, "scene", v5) && !aScene_1[v5])
    {
      {
        re::introspect<re::ecs2::Scene>(BOOL)::info = re::ecs2::introspect_Scene(0, v17, v18, v19, v20, v21);
      }

      v32 = 0;
      v27 = re::introspect<re::ecs2::Scene>(BOOL)::info;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      re::BindPoint::addToBindPointStack(&v27, (a1 + 8));
      v33 = 0u;
      v34 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v28, &v33);
      re::BindPoint::BindPointData::deinit(&v33);
      *(v32 + 32 * v30 - 32) = &unk_1F5CFAE40;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v13 = &unk_1F5CFA9F0;
    }

    else
    {
      result = strncmp(v6, "service", v5);
      if (result || aService[v5])
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }

      {
        {
          re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0, v22, v23, v24, v25, v26);
        }
      }

      v32 = 0;
      v27 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      re::BindPoint::addToBindPointStack(&v27, (a1 + 8));
      v33 = 0u;
      v34 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v28, &v33);
      re::BindPoint::BindPointData::deinit(&v33);
      *(v32 + 32 * v30 - 32) = &unk_1F5CFAE40;
      v33 = 0u;
      v34 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v28, &v33);
      re::BindPoint::BindPointData::deinit(&v33);
      *(v32 + 32 * v30 - 32) = &unk_1F5CFAA88;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v13 = &unk_1F5CFAC38;
    }

    *v12 = v13;
    *(v12 + 8) = v27;
    *(v12 + 40) = 0;
    *(v12 + 16) = v28;
    *(v12 + 24) = 0;
    *(v12 + 24) = v29;
    *(v12 + 32) = 0;
    *(v12 + 32) = v30;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(v12 + 48) = v32;
    v32 = 0;
    ++v31;
    *(v12 + 40) = 1;
    *(a3 + 16) = v12;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28);
    return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v9 = &unk_1F5CFADA8;
    v9[1] = *(a1 + 8);
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v9 + 2), (a1 + 16));
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t anonymous namespace::EntityBindNodeImpl::relativeNodeForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = *(a1 + 8);
  v5 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v39, (a1 + 16));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  re::DynamicString::setCapacity(&v34, 0);
  if (*(a2 + 16) == 1 && *(a2 + 8) == 8 && **a2 == 0x65766974616C6572 && *(a2 + 32) == 6)
  {
    v8 = *(a2 + 24);
    v9 = *v8;
    v10 = *(v8 + 2);
    if (v9 == 1701994864 && v10 == 29806)
    {
      v44 = 0u;
      v45 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v39, &v44);
      re::BindPoint::BindPointData::deinit(&v44);
      *(v43 + 32 * v41 - 32) = &unk_1F5CFAF18;
      goto LABEL_29;
    }
  }

  if (v28[0] != 1)
  {
    goto LABEL_21;
  }

  v13 = re::ecs2::ComponentTypeRegistry::instance(v12);
  v14 = v29;
  v15 = v30;
  *&v44 = 0;
  *(&v44 + 1) = &str_67;
  v12 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v13, &v44);
  v16 = v12;
  if (v44)
  {
    if (v44)
    {
    }
  }

  if (v16)
  {
    v44 = 0u;
    v45 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add(&v39, &v44);
    re::BindPoint::BindPointData::deinit(&v44);
    v17 = v43 + 32 * v41;
    *(v17 - 32) = &unk_1F5CFAFF0;
    *(v17 - 24) = v16;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
LABEL_21:
    if (v31[0] != 1)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_29;
    }

    v21 = v32;
    v22 = v33;
    *&v44 = 0;
    *(&v44 + 1) = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(&v38, &v44);
    if (v44)
    {
      if (v44)
      {
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v20 = &unk_1F5CFADA8;
    *(v20 + 8) = v38;
    *(v20 + 40) = 0;
    *(v20 + 16) = v39;
    *(v20 + 24) = 0;
    *(v20 + 24) = v40;
    *(v20 + 32) = 0;
    *(v20 + 32) = v41;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    *(v20 + 48) = v43;
    v43 = 0;
    ++v42;
    *(v20 + 40) = 1;
  }

  *(a3 + 16) = v20;
LABEL_29:
  if (v34 && (v35 & 1) != 0)
  {
    (*(*v34 + 40))();
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v39);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v39);
}

BOOL anonymous namespace::EntityBindNodeImpl::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  __n[0] = 0;
  __n[1] = 0;
  result = re::internal::parseNextBindingKey(a2, __n, a3);
  if (result)
  {
    v8 = __n[1];
    if (__n[1] == 8)
    {
      v9 = __n[0];
      if (*__n[0] == 0x7365697469746E65)
      {
        goto LABEL_10;
      }

      v10 = "relative";
    }

    else
    {
      if (__n[1] != 10)
      {
        v9 = __n[0];
LABEL_15:
        *a4 = v9;
        *(a4 + 8) = v8;
        if (*(a4 + 16) == 1)
        {
          *(a4 + 16) = 0;
        }

        return 1;
      }

      v9 = __n[0];
      v10 = "components";
    }

    if (!memcmp(v9, v10, __n[1]))
    {
LABEL_10:
      v12 = 0uLL;
      result = re::internal::parseNextBindingKey(a2, &v12, a3);
      if (result)
      {
        v11 = v12;
        *a4 = *__n;
        if ((*(a4 + 16) & 1) == 0)
        {
          *(a4 + 16) = 1;
        }

        *(a4 + 24) = v11;
      }

      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t anonymous namespace::EntityBindNodeImpl::bindPointForKey@<X0>(uint64_t a1@<X0>, const re::IntrospectionBase *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v40 = a2;
  v41 = 0uLL;
  v42 = 0;
  re::BindPoint::addToBindPointStack(&v40, (a1 + 8));
  if (!a2)
  {
    goto LABEL_6;
  }

  v8 = re::ecs2::ComponentTypeRegistry::instance(v7);
  v9 = re::ecs2::ComponentTypeRegistry::componentTypeWithIntrospectionInfo(v8, a2);
  if (v9)
  {
    v10 = v9;
LABEL_11:
    v44 = 0u;
    v45 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v40 + 8), &v44);
    re::BindPoint::BindPointData::deinit(&v44);
    v14 = *(&v41 + 1);
    v15 = v43 + 32 * *(&v41 + 1);
    *(v15 - 32) = &unk_1F5CFAFF0;
    *(v15 - 24) = v10;
    *a4 = v40;
    *(a4 + 16) = v41;
    *(a4 + 24) = v14;
    *(&v40 + 1) = 0;
    v41 = 0uLL;
    *(a4 + 40) = v43;
    v43 = 0;
    ++v42;
    *(a4 + 32) = 1;
    goto LABEL_15;
  }

  {
    if (v9)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v30, v31, v32, v33, v34);
    }
  }

  if (re::introspect<re::ecs2::Component>(BOOL)::info == a2)
  {
LABEL_6:
    if (v37[0] == 1)
    {
      v11 = re::ecs2::ComponentTypeRegistry::instance(v9);
      v12 = v38;
      v13 = v39;
      *&v44 = 0;
      *(&v44 + 1) = &str_67;
      v9 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v11, &v44);
      v10 = v9;
      if (v44)
      {
        if (v44)
        {
        }
      }

      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  {
    if (v9)
    {
      re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0, v25, v26, v27, v28, v29);
    }
  }

  if (re::introspect<re::ecs2::Entity>(BOOL)::info != a2)
  {
LABEL_14:
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    goto LABEL_15;
  }

  *(&v44 + 1) = 0;
  v45 = 0uLL;
  re::DynamicString::setCapacity(&v44, 0);
  if (v37[0] != 1)
  {
    if (v44 && (BYTE8(v44) & 1) != 0)
    {
      (*(*v44 + 40))(v18);
    }

    goto LABEL_14;
  }

  v19 = v38;
  v20 = v39;
  v35 = 0;
  v36 = &str_67;
  re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(&v40, &v35);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v23 = v41;
  *a4 = v40;
  *(a4 + 16) = v23;
  *(&v40 + 1) = 0;
  v41 = 0uLL;
  v24 = v44;
  *(a4 + 40) = v43;
  v43 = 0;
  ++v42;
  *(a4 + 32) = 1;
  if (v24 && (BYTE8(v44) & 1) != 0)
  {
    (*(*v24 + 40))(v24, v45);
  }

LABEL_15:
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v40 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v40 + 8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 48))(v6, v5, v7, v8) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    (*(*v7 + 72))(v7, v5, v8, v9);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5 && a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (v5 && a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    do
    {
      v5 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 104))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    do
    {
      v6 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    do
    {
      v4 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntitySceneRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    do
    {
      v4 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }
}

uint64_t anonymous namespace::EntityAndComponentBindingKeyHelper::componentNameFromBindingKey(uint64_t result, __int128 *a2)
{
  if (a2[1])
  {
    if (*(a2 + 1) != 10 || (**a2 == 0x6E656E6F706D6F63 ? (v2 = *(*a2 + 8) == 29556) : (v2 = 0), !v2))
    {
      *result = 0;
      return result;
    }

    *result = 1;
    v3 = *(a2 + 24);
  }

  else
  {
    *result = 1;
    v3 = *a2;
  }

  *(result + 8) = v3;
  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>,re::internal::EntityChildRelationship>(void *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
  re::BindPoint::BindPointData::deinit(v6);
  v4 = a1[5] + 32 * a1[3];
  *(v4 - 32) = &unk_1F5CFB310;
  v5 = *a2;
  *(v4 - 24) = *(v4 - 24) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v4 - 24) = *a2 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(v4 - 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 32);
    }

    if (v5)
    {
      v6 = a4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 72))(v7, v5, v8, v9);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else if (a4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v5 + 80))(v5, v4, v6, v7);
    }
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else if (a4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v5 + 88))(v5, v4, v6, v7);
    }
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2 && (v5 = *(a2 + 32)) != 0)
  {
    if ((*(v5 + 304) & 0x80) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a2 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v6, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      if ((*(v5 + 304) & 0x80) == 0)
      {
        v7 = *a3;
        v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
        (*(*v7 + 112))(v7, v5, v8, v9, a5);
      }
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if ((*(v4 + 304) & 0x80) == 0)
      {
        v5 = *a3;
        v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
        (*(*v5 + 128))(v5, v4, v6, v7);
      }
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (!v4 || (*(v4 + 304) & 0x80) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityParentRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if ((*(v4 + 304) & 0x80) == 0)
      {
        v5 = *a3;
        v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
        (*(*v5 + 144))(v5, v4, v6, v7);
      }
    }
  }
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFAFF0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFAFF0;
  a2[1] = v2;
  return result;
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a1 + 8);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (a4)
  {
    v9 = re::ecs2::EntityComponentCollection::get((a2 + 48), v4);
    if (v9)
    {
      v10 = v9;
      v11 = *a3;
      v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      v6 ^= (v6 << 6) + (v6 >> 2) + (*(*v11 + 48))(v11, v10, v12, v13) - 0x61C8864680B583E9;
    }
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    if (a4)
    {
      v7 = result;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 64))(v8, v7, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v9 + 72))(v9, v8, v10, v11);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 80))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (v6 && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, v6, v8, v9);
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2)
  {
    v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  }

  else
  {
    v6 = 0;
  }

  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v5 + 96))(v5, v6, v8, v9);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v8 = result;
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v9 + 112))(v9, v8, v10, v11, a5);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 128))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(a1 + 8));
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 136))(v8, v7, v9, v10);
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityComponentRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), *(result + 8));
    if (result)
    {
      v6 = result;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v7 + 144))(v7, v6, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::ComponentMemberNodeImpl(uint64_t a1, void *a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CFB0C8;
  *(a1 + 88) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  v6 = *(a3 + 32);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v8 = re::DynamicString::setCapacity((a1 + 128), 0);
  *(a1 + 8) = a2[3] - 1;
  (**a3)(v11, a3, a2, v9);
  if ((a1 + 16) != v11)
  {
    re::BindNode::move((a1 + 16), v11);
  }

  re::BindNode::deinit(v11);
  return a1;
}

double re::BindPoint::addToBindPointStack<re::internal::ComponentMemberBindPointImpl>(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v8);
  v4 = re::BindPoint::BindPointData::deinit(v8);
  v5 = a1[5] + 32 * a1[3];
  *(v5 - 32) = 0;
  *(v5 - 24) = a2;
  v6 = (*(*a2 + 32))(a2, 96, 8, v4);
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *v6 = &unk_1F5CFB160;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = &str_67;
  *(v6 + 32) = 0;
  *(v6 + 40) = &str_67;
  result = 0.0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v5 - 16) = v6;
  return result;
}

void anonymous namespace::ComponentMemberNodeImpl::~ComponentMemberNodeImpl(_anonymous_namespace_::ComponentMemberNodeImpl *this)
{
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::BindNode::deinit((this + 16));
}

{

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::copyInto(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CFB0C8;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0u;
  *(a2 + 16) = 0u;
  re::BindNode::copy((a2 + 16), (a1 + 2));
  *(a2 + 48) = a1[6];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 56, a1 + 7);
  re::DynamicString::DynamicString((a2 + 96), (a1 + 12));

  return re::DynamicString::DynamicString((a2 + 128), (a1 + 16));
}

double re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::moveInto(void *a1, uint64_t a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CFB0C8;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0u;
  *(a2 + 16) = 0u;
  re::BindNode::move((a2 + 16), (a1 + 2));
  re::BindPoint::BindPoint(a2 + 48, a1 + 6);
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 120) = a1[15];
  v6 = a1[13];
  *(a2 + 96) = a1[12];
  a1[12] = 0;
  v7 = a1[14];
  a1[15] = 0;
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  a1[13] = v9;
  a1[14] = v8;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 152) = a1[19];
  v10 = a1[17];
  *(a2 + 128) = a1[16];
  a1[16] = 0;
  v11 = a1[18];
  a1[19] = 0;
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
  a1[17] = v13;
  a1[18] = v12;
  return result;
}

BOOL re::internal::BindNodeImpl<anonymous namespace::ComponentMemberNodeImpl>::equals(void *a1, uint64_t *a2)
{
  {
    return 0;
  }

  return re::DynamicString::operator==((a1 + 16), (a2 + 16));
}

double anonymous namespace::ComponentMemberNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double anonymous namespace::ComponentMemberNodeImpl::relativeNodeForKey@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v9 = 0u;
    v10 = 0u;
    re::BindNode::copy(&v9, (a1 + 16));
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = **(a1 + 32);
    }

    v7 = (*(v6 + 56))(&v9);
    if (!(v9 | v10))
    {
      *a3 = 0u;
      a3[1] = 0u;
      return re::BindNode::deinit(&v9);
    }
  }

  return re::BindNode::deinit(&v9);
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::readBindingKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v1 = **(a1 + 32);
  }

  return (*(v1 + 64))();
}

void anonymous namespace::ComponentMemberNodeImpl::bindPointForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1[17];
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  if (v7)
  {
    if (v6)
    {
      v8 = a1[18];
    }

    else
    {
      v8 = a1 + 137;
    }

    *&v15 = v8;
    *(&v15 + 1) = v7;
    v9 = v16;
    v10.n128_f64[0] = re::BindNode::relativeNode((a1 + 2), &v15, v16);
    v11 = v16[0];
    if (!v16[0])
    {
      v9 = v17;
      v11 = *v17;
    }

    (*(v11 + 72))(v9, a2, a3, v10);
    re::BindNode::deinit(v16);
  }

  else
  {
    v12 = a1 + 2;
    v13 = a1[2];
    if (!v13)
    {
      v12 = a1[4];
      v13 = *v12;
    }

    v14 = *(v13 + 72);

    v14(v12);
  }
}

uint64_t anonymous namespace::ComponentMemberNodeImpl::bindPointWithOverrideForKey@<X0>(uint64_t a1@<X0>, re::KeyValueStore *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v8 = re::DynamicString::DynamicString(&v41, (a1 + 128));
    if (v42)
    {
      v9 = v42 >> 1;
    }

    else
    {
      v9 = v42 >> 1;
    }

    if (v9)
    {
      v8 = re::DynamicString::append(&v41, ".", 1uLL);
    }

    v38 = 0uLL;
    v10 = *(a3 + 8);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    *(&v37 + 1) = 0;
    re::DynamicString::setCapacity(&v37, v11);
    re::DynamicString::operator=(&v37, a3);
    if (BYTE8(v37))
    {
      v12 = v38;
    }

    else
    {
      v12 = &v37 + 9;
    }

    if (BYTE8(v37))
    {
      v13 = *(&v37 + 1) >> 1;
    }

    else
    {
      v13 = BYTE8(v37) >> 1;
    }

    re::DynamicString::append(&v41, v12, v13);
    v14 = v37;
    if (v37 && (BYTE8(v37) & 1) != 0)
    {
      v14 = (*(*v37 + 40))();
    }

    v40 = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v44 = 0u;
    v45 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v37 + 8), &v44);
    re::BindPoint::BindPointData::deinit(&v44);
    v15 = v40 + 32 * *(&v38 + 1);
    *(v15 - 32) = &unk_1F5CFB238;
    *(v15 - 24) = 0;
    re::makeRelativeBindNode(*(a1 + 48), &v37, v48);
    v16 = v43;
    if ((v42 & 1) == 0)
    {
      v16 = (&v42 + 1);
    }

    v17 = v42 >> 1;
    if (v42)
    {
      v17 = v42 >> 1;
    }

    *&v36 = v16;
    *(&v36 + 1) = v17;
    re::BindNode::bindPoint(&v44, v48, a2, &v36);
    if (*(&v45 + 1))
    {
      *(a4 + 40) = 0;
      *a4 = a2;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      re::BindPoint::addToBindPointStack(a4, (a1 + 48));
      v18 = re::BindPoint::stackItemImpl(a4, *(a1 + 8));
      v19 = *(a1 + 48);
      v20 = *(a1 + 104);
      v21 = *(a1 + 112);
      if ((v20 & 1) == 0)
      {
        v21 = a1 + 105;
      }

      v22 = v20 >> 1;
      v23 = v20 >> 1;
      if (*(a1 + 104))
      {
        v23 = v22;
      }

      *&v36 = v21;
      *(&v36 + 1) = v23;
      re::internal::ComponentMemberBindPointImpl::init(v18, v19, &v36, &v44);
    }

    else
    {
      *(a4 + 40) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44 + 8);
    re::BindNode::deinit(v48);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v37 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v37 + 8);
    result = v41;
    if (v41)
    {
      if (v42)
      {
        return (*(*v41 + 40))();
      }
    }
  }

  else
  {
    v24 = *(a1 + 16);
    if (!v24)
    {
      v24 = **(a1 + 32);
    }

    (*(v24 + 72))(&v37);
    if (*(&v38 + 1))
    {
      if ((re::BindPoint::supportsOverrideValue(&v37) & 1) == 0 && re::KeyValueStore::isSupportedValueType(a2, v25))
      {
        v26 = re::BindPoint::stackItemImpl(&v37, *(a1 + 8));
        re::DynamicString::DynamicString(&v41, (a1 + 96));
        v27 = re::DynamicString::append(&v41, ".", 1uLL);
        v45 = 0uLL;
        v28 = *(a3 + 8);
        if (v28)
        {
          v29 = v28 + 1;
        }

        else
        {
          v29 = 0;
        }

        *(&v44 + 1) = 0;
        re::DynamicString::setCapacity(&v44, v29);
        re::DynamicString::operator=(&v44, a3);
        if (BYTE8(v44))
        {
          v30 = v45;
        }

        else
        {
          v30 = &v44 + 9;
        }

        if (BYTE8(v44))
        {
          v31 = *(&v44 + 1) >> 1;
        }

        else
        {
          v31 = BYTE8(v44) >> 1;
        }

        re::DynamicString::append(&v41, v30, v31);
        if (v44 && (BYTE8(v44) & 1) != 0)
        {
          (*(*v44 + 40))();
        }

        v32 = v43;
        if ((v42 & 1) == 0)
        {
          v32 = (&v42 + 1);
        }

        v33 = (v42 >> 1);
        if (v42)
        {
          v33 = (v42 >> 1);
        }

        v48[0] = v32;
        v48[1] = v33;
        v47 = 0;
        v44 = 0u;
        v45 = 0u;
        v46 = 0;
        re::internal::ComponentMemberBindPointImpl::init(v26, a2, v48, &v44);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44 + 8);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44 + 8);
        if (v41 && (v42 & 1) != 0)
        {
          (*(*v41 + 40))();
        }
      }

      v34 = v38;
      *a4 = v37;
      *(a4 + 16) = v34;
      *(&v37 + 1) = 0;
      v38 = 0uLL;
      *(a4 + 40) = v40;
      v40 = 0;
      ++v39;
      *(a4 + 32) = 1;
    }

    else
    {
      *(a4 + 40) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v37 + 8);
    return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v37 + 8);
  }

  return result;
}

void re::internal::ComponentMemberBindPointImpl::~ComponentMemberBindPointImpl(re::internal::ComponentMemberBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 56);
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::copyInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CFB160;
  a2[1] = v4;
  re::StringID::StringID((a2 + 2), (a1 + 16));
  re::StringID::StringID((a2 + 4), (a1 + 32));
  a2[6] = *(a1 + 48);

  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 7), (a1 + 56));
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::moveInto(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5CFB160;
  a2[1] = v2;
  v3 = a1[2];
  a2[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[2] = a1[2] & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[3] = a1[3];
  a1[2] = 0;
  a1[3] = &str_67;
  v4 = a1[4];
  a2[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[4] = a1[4] & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[5] = a1[5];
  a1[4] = 0;
  a1[5] = &str_67;
  return re::BindPoint::BindPoint((a2 + 6), a1 + 6);
}

BOOL re::internal::BindPointImpl<re::internal::ComponentMemberBindPointImpl>::equals(void *a1, void *a2)
{
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 6), (a2 + 6));
}

unint64_t re::internal::ComponentMemberBindPointImpl::hash(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = 0x9E3779B97F4A7C17;
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    v5 = (*(*v6 + 48))(v6, a2, v7, v8) - 0x61C8864680B583E9;
  }

  return ((a2 >> 2) + (a2 << 6) + v5) ^ a2;
}

uint64_t re::internal::ComponentMemberBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 56))(v5, a2, v6, v7);
}

uint64_t re::internal::ComponentMemberBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, a2, v6, v7);
}

uint64_t re::internal::ComponentMemberBindPointImpl::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = result;
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    result = (*(*v6 + 72))(v6, a2, v7, v8);
  }

  v9 = *(v5 + 8);
  if (v9)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(v10 + 184);
      if (!v11)
      {
        v11 = re::ecs2::EntityComponentCollection::add((v10 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v9 = *(v5 + 8);
      }

      if (!re::KeyValueStore::getValue((v11 + 32), v9, (v5 + 16)))
      {
        re::KeyValueStore::addOrReplaceValue((v11 + 32), *(v5 + 8), (v5 + 16), 0);
      }

      v13 = *(v5 + 32);
      v12 = (v5 + 32);
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ (v13 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ (v13 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 88, v12, v14 ^ (v14 >> 31), v16);
      if (v17 == 0x7FFFFFFF)
      {
        v16[0] = 0;
        return re::KeyValueStore::addOrReplaceValue<BOOL>((v11 + 32), v12, v16);
      }
    }
  }

  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, a2, v6, v7);
  }

  return a2;
}

uint64_t re::internal::ComponentMemberBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v20 = a3;
  v21 = a4;
  if (!a4)
  {
    return v4;
  }

  if (!*(a1 + 8))
  {
    v14 = *a3;
    v15 = re::Slice<re::internal::BindPointImplBase const*>::range(&v20, 1uLL, a4);
    return (*(*v14 + 88))(v14, v4, v15, v16);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v22);
      if (v23 != 0x7FFFFFFF && *(*(v7 + 104) + 32 * v23 + 24) == 1)
      {
        Value = re::KeyValueStore::getValue((v7 + 32), *(a1 + 8), (a1 + 16));
        if (Value)
        {
          v4 = Value;
LABEL_11:
          if (*(a1 + 72))
          {
            re::BindPoint::stackItemImpl((a1 + 48), 0)[1] = v4;
            return re::BindPoint::baseValueUntyped((a1 + 48));
          }

          return v4;
        }
      }
    }
  }

  if (v21)
  {
    v10 = *v20;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(&v20, 1uLL, v21);
    v4 = (*(*v10 + 88))(v10, v4, v11, v12);
    if (!v4)
    {
      return v4;
    }

    goto LABEL_11;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
  __break(1u);
  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (*(a1 + 8))
  {
    return 1;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v6 + 96))(v6, a2, v7, v8);
}

uint64_t re::internal::ComponentMemberBindPointImpl::isOverridden(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 184);
      if (v3 && (v4 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1)), re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), v6), v7 != 0x7FFFFFFF))
      {
        LOBYTE(v2) = *(*(v3 + 104) + 32 * v7 + 24);
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2 & 1;
}

void re::internal::ComponentMemberBindPointImpl::setIsOverridden(re *a1, uint64_t a2, uint64_t *a3, unint64_t a4, unsigned __int8 a5)
{
  v20 = a3;
  v21 = a4;
  v19 = a5;
  if (!*(a1 + 1) || (v6 = *(a2 + 16)) == 0)
  {
LABEL_15:
    v16 = *re::ecsComponentsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to set override status for bind point component member.", buf, 2u);
    }

    return;
  }

  v7 = a1;
  v8 = *(v6 + 184);
  if (!v8)
  {
    v8 = re::ecs2::EntityComponentCollection::add((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v9 = 0xBF58476D1CE4E5B9 * ((*(v7 + 4) >> 31) ^ (*(v7 + 4) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v8 + 88, v7 + 4, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), buf);
  if (v23 == 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(v8 + 104) + 32 * v23 + 24);
  }

  if (re::KeyValueStore::getValue((v8 + 32), *(v7 + 1), (v7 + 16)))
  {
    v11 = v10 == v19;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    re::KeyValueStore::addOrReplaceValue<BOOL>((v8 + 32), v7 + 2, &v19);
    if (!v21)
    {
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
      __break(1u);
      return;
    }

    v13 = *v20;
    v14 = re::Slice<re::internal::BindPointImplBase const*>::range(&v20, 1uLL, v21);
    a1 = (*(*v13 + 88))(v13, a2, v14, v15);
    if (a1)
    {
      re::KeyValueStore::addAndSwapValue((v8 + 32), *(v7 + 1), (v7 + 16), a1);
      return;
    }

    goto LABEL_15;
  }
}

uint64_t re::internal::ComponentMemberBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v22 = a3;
  v23 = a4;
  if (!*(a1 + 8))
  {
    if (a4)
    {
      v14 = *a3;
      v15 = re::Slice<re::internal::BindPointImplBase const*>::range(&v22, 1uLL, a4);
      return (*(*v14 + 120))(v14, a2, v15, v16);
    }

    return 0;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v5 + 184);
  if (!v7)
  {
    v7 = re::ecs2::EntityComponentCollection::add((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v8 = 0xBF58476D1CE4E5B9 * ((*(a1 + 32) >> 31) ^ (*(a1 + 32) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 88, (a1 + 32), (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v24);
  if (v25 == 0x7FFFFFFF || *(*(v7 + 104) + 32 * v25 + 24) != 1)
  {
    Value = re::KeyValueStore::getValue((v7 + 32), *(a1 + 8), (a1 + 16));
    if (Value)
    {
LABEL_15:
      if (*(a1 + 72))
      {
        re::BindPoint::stackItemImpl((a1 + 48), 0)[1] = Value;
        return re::BindPoint::baseValueUntyped((a1 + 48));
      }

      return Value;
    }

    re::KeyValueStore::addOrReplaceValue((v7 + 32), *(a1 + 8), (a1 + 16), 0);
LABEL_14:
    Value = v13;
    if (!v13)
    {
      return Value;
    }

    goto LABEL_15;
  }

  if (v23)
  {
    v10 = *v22;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(&v22, 1uLL, v23);
    v13 = (*(*v10 + 88))(v10, a2, v11, v12);
    goto LABEL_14;
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
  __break(1u);
  return result;
}

re::ecs2::Component *re::internal::ComponentMemberBindPointImpl::markAsWritten(uint64_t a1, re::ecs2::Component *a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  re::ecs2::Component::markDirty(a2);
  result = re::ecs2::Component::didSet(a2);
  v8 = *(a2 + 2);
  if (v8)
  {
    if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v9 = *(v8 + 216);
      if (v9)
      {
        re::ecs2::NetworkComponent::markDirty(v9, a2);
      }
    }

    result = *(v8 + 184);
    if (result)
    {
      result = re::ecs2::Component::markDirty(result);
    }
  }

  if (a4)
  {
    v10 = *a3;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v10 + 128))(v10, a2, v11, v12);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::boundOwner(uint64_t a1, BOOL a2)
{
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, a2, v5, v6, v7, v8);
      v2 = &unk_1EE187000;
    }
  }

  return v2[54];
}

void *re::BindPoint::stackItemImpl(re::BindPoint *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
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

  result = (*(this + 5) + 32 * a2);
  if (!*result)
  {
    return result[2];
  }

  return result;
}

uint64_t re::BindNode::create<anonymous namespace::ComponentMemberNodeImpl,anonymous namespace::ComponentMemberNodeImpl const&,re::BindNode,re::StringSlice const&>(uint64_t a1, uint64_t a2, uint64_t *a3, re::BindNode *a4, uint64_t a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = a2;
  v9 = (*(*a2 + 32))(a2, 160, 8);
  *v9 = &unk_1F5CFB0C8;
  *(v9 + 8) = a3[1];
  *(v9 + 16) = 0u;
  v10 = (v9 + 16);
  *(v9 + 32) = 0u;
  re::BindNode::move((v9 + 16), a4);
  *(v9 + 48) = a3[6];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v9 + 56, a3 + 7);
  re::DynamicString::DynamicString((v9 + 96), (a3 + 12));
  v11 = re::DynamicString::DynamicString((v9 + 128), (a3 + 16));
  if (*(v9 + 72))
  {
    v12 = *(v9 + 136);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    if (v13)
    {
      v11 = re::DynamicString::append((v9 + 128), ".", 1uLL);
    }

    v32 = 0;
    v33 = 0;
    v14 = *(a5 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    v31 = 0;
    re::DynamicString::setCapacity(&v30, v15);
    re::DynamicString::operator=(&v30, a5);
    if (v31)
    {
      v16 = v32;
    }

    else
    {
      v16 = &v31 + 1;
    }

    if (v31)
    {
      v17 = v31 >> 1;
    }

    else
    {
      v17 = v31 >> 1;
    }

    re::DynamicString::append((v9 + 128), v16, v17);
    result = v30;
    if (v30 && (v31 & 1) != 0)
    {
      result = (*(*v30 + 40))();
    }
  }

  else
  {
    LOBYTE(v28) = 0;
    v26 = 0;
    v27 = 0;
    v19 = *v10;
    if (!*v10)
    {
      v10 = *(v9 + 32);
      v19 = *v10;
    }

    (*(v19 + 72))(&v30, v10, 0, &v26);
    if ((re::BindPoint::supportsOverrideValue(&v30) & 1) == 0)
    {
      if (re::KeyValueStore::isSupportedValueType(v30, v20))
      {
        *(v9 + 48) = v30;
        re::DynamicArray<re::RigDataValue>::operator=(v9 + 56, &v31);
      }

      v21 = re::DynamicString::append((v9 + 96), ".", 1uLL);
      v28 = 0;
      v29 = 0;
      v22 = *(a5 + 8);
      if (v22)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      v27 = 0;
      re::DynamicString::setCapacity(&v26, v23);
      re::DynamicString::operator=(&v26, a5);
      if (v27)
      {
        v24 = v28;
      }

      else
      {
        v24 = &v27 + 1;
      }

      if (v27)
      {
        v25 = v27 >> 1;
      }

      else
      {
        v25 = v27 >> 1;
      }

      re::DynamicString::append((v9 + 96), v24, v25);
      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31);
    result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t re::internal::ComponentMemberBindPointImpl::init(void *a1, uint64_t a2, void *a3, void *a4)
{
  a1[1] = a2;
  a1[6] = *a4;
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), a4 + 1);
  re::DynamicString::format(&v13, "animated::%.*s", v6, a3[1], *a3);
  if (v14[0])
  {
    v7 = v14[1];
  }

  else
  {
    v7 = v14 + 1;
  }

  if (v14[0])
  {
    v8 = v14[0] >> 1;
  }

  else
  {
    v8 = LOBYTE(v14[0]) >> 1;
  }

  for (; v8; --v8)
  {
    *v7 = __tolower(*v7);
    ++v7;
  }

  re::StringID::StringID(&v12, &v13);
  v9 = re::StringID::operator=((a1 + 2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  re::DynamicString::insert(&v13, 0, "status:", 7uLL);
  re::StringID::StringID(&v12, &v13);
  v10 = re::StringID::operator=((a1 + 4), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  result = v13;
  if (v13)
  {
    if (v14[0])
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBaseBindPointImpl>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFB238;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::ComponentMemberBaseBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFB238;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 48))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 56))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 64))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 72))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 80))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 88))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 96))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 104))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v6 = *a3;
    v7 = *(a1 + 8);
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v6 + 112))(v6, v7, v8, v9, a5);
  }

  else
  {
    re::internal::assertLog(6, a2, a3, 0, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v13[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v12);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 120))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 128))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 136))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::ComponentMemberBaseBindPointImpl::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v4 + 144))(v4, v5, v6, v7);
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v11[0], 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  return result;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFB310;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v4 = (a1 + 8);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a1 + 8) >> 31) ^ (*(a1 + 8) >> 1));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  if (a4)
  {
    v7 = *(a2 + 344);
    if (v7)
    {
      v10 = *(a2 + 360);
      v11 = 8 * v7;
      while (1)
      {
        v12 = *v10;
        if (re::StringID::operator==((*v10 + 288), v4))
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return v6;
        }
      }

      if (v12)
      {
        v13 = *a3;
        v14 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
        v6 ^= (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (*(*v13 + 48))(v13, v12, v14, v15);
      }
    }
  }

  return v6;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 64))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (v4)
  {
    v7 = result;
    v8 = *(a2 + 360);
    v9 = 8 * v4;
    while (1)
    {
      v10 = *v8;
      result = re::StringID::operator==((*v8 + 288), (v7 + 8));
      if (result)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        return result;
      }
    }

    if (v10)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v12 + 72))(v12, v10, v13, v14);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 && a4)
  {
    v12 = *a3;
    v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    return (*(*v12 + 80))(v12, v10, v13, v14);
  }

  return v10;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 && a4)
  {
    v12 = *a3;
    v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    return (*(*v12 + 88))(v12, v10, v13, v14);
  }

  return v10;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  if (a2 && (v6 = *(a2 + 344)) != 0)
  {
    v8 = *(a2 + 360);
    v9 = 8 * v6;
    while (1)
    {
      v10 = *v8;
      if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
  return (*(*v5 + 96))(v5, v10, v11, v12);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 104))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v16[0] = a3;
  v16[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 344);
    if (v5)
    {
      v9 = result;
      v10 = *(a2 + 360);
      v11 = 8 * v5;
      while (1)
      {
        v12 = *v10;
        result = re::StringID::operator==((*v10 + 288), (v9 + 8));
        if (result)
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return result;
        }
      }

      if (v12)
      {
        v13 = *a3;
        v14 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
        return (*(*v13 + 112))(v13, v12, v14, v15, a5);
      }
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 120))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 344);
    if (v4)
    {
      v7 = result;
      v8 = *(a2 + 360);
      v9 = 8 * v4;
      while (1)
      {
        v10 = *v8;
        result = re::StringID::operator==((*v8 + 288), (v7 + 8));
        if (result)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return result;
        }
      }

      if (v10)
      {
        v11 = *a3;
        v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
        return (*(*v11 + 128))(v11, v10, v12, v13);
      }
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 344);
  if (!v4)
  {
    return 0;
  }

  v8 = *(a2 + 360);
  v9 = 8 * v4;
  while (1)
  {
    v10 = *v8;
    if (re::StringID::operator==((*v8 + 288), (a1 + 8)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *a3;
  v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v11 + 136))(v11, v10, v12, v13);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::EntityChildRelationship>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 344);
    if (v4)
    {
      v7 = result;
      v8 = *(a2 + 360);
      v9 = 8 * v4;
      while (1)
      {
        v10 = *v8;
        result = re::StringID::operator==((*v8 + 288), (v7 + 8));
        if (result)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return result;
        }
      }

      if (v10)
      {
        v11 = *a3;
        v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
        return (*(*v11 + 144))(v11, v10, v12, v13);
      }
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::ECSService>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::ECSService>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB3E8;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::ECSService>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB3E8;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

unint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::ECSService>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Scene>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Scene>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB4C0;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Scene>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB4C0;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

unint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Scene>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Entity>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Entity>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB598;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Entity>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB598;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

unint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Entity>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void re::internal::WeakBindPointImpl<re::ecs2::Component>::~WeakBindPointImpl(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));
  *(a1 + 8) = 0;

  JUMPOUT(0x1E6906520);
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Component>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB670;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
}

void re::internal::BindPointImpl<re::internal::WeakBindPointImpl<re::ecs2::Component>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFB670;
  *(a2 + 8) = 0;
  objc_moveWeak((a2 + 8), (a1 + 8));
}

unint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = 0x9E3779B97F4A7C17;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    v6 = (*(*v7 + 48))(v7, v5, v8, v9) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v6) ^ v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 64))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::makeAlive(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4 - 8;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v7 + 72))(v7, v6, v8, v9);
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 80))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v6 + 88))(v6, v5, v7, v8);
  }

  return v5;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4 - 8;
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 104))(v7, v6, v8, v9);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v5 = *(result + 8);
    if (v5)
    {
      v7 = v5 - 8;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 112))(v8, v7, v9, v10, a5);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 120))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 128))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 8;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v6 + 136))(v6, v5, v7, v8);
}

uint64_t re::internal::WeakBindPointImpl<re::ecs2::Component>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = v4 - 8;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
      return (*(*v6 + 144))(v6, v5, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    (*(*v6 + 72))(v6, v4, v7, v8);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 16);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 88))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v4 + 96))(v4, v5, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 112))(v7, v5, v8, v9, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 128))(v5, v4, v6, v7);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::ComponentEntityRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 144))(v5, v4, v6, v7);
    }
  }
}

_anonymous_namespace_ *re::ecs2::AudioUpdateSystem::willAddSystemToECSService(re::ecs2::AudioUpdateSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  *(this + 28) = result;
  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t re::ecs2::AudioUpdateSystem::update(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void *re::ecs2::allocInfo_AudioUpdateSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_367, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_367))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1958, "AudioUpdateSystem");
    __cxa_guard_release(&_MergedGlobals_367);
  }

  return &unk_1EE1B1958;
}

void re::ecs2::initInfo_AudioUpdateSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x776AC1371AA0765CLL;
  v8[1] = "AudioUpdateSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioUpdateSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioUpdateSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioUpdateSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioUpdateSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioUpdateSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::AudioUpdateSystem::~AudioUpdateSystem(re::ecs2::AudioUpdateSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::AudioUpdateSystem *re::ecs2::AudioUpdateSystem::AudioUpdateSystem(re::ecs2::AudioUpdateSystem *this)
{
  v2 = re::ecs2::System::System(this, 0);
  *v2 = &unk_1F5CFB820;
  v2[28] = 0;
  LOWORD(v4) = 257;
  HIDWORD(v4) = 1023969417;
  v5 = 0;
  re::ecs2::System::setDefaultTaskOptions(v2, &v4);
  return this;
}

uint64_t *re::ecsComponentsLogObjects(re *this)
{
  {
    re::ecsComponentsLogObjects(void)::logObjects = os_log_create("com.apple.re", "ECS.Components");
  }

  return &re::ecsComponentsLogObjects(void)::logObjects;
}

void *re::ecs2::allocInfo_MeshShadowSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_368))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B19F0, "MeshShadowSystem");
    __cxa_guard_release(&_MergedGlobals_368);
  }

  return &unk_1EE1B19F0;
}

void re::ecs2::initInfo_MeshShadowSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD0609FA8A90D6438;
  v8[1] = "MeshShadowSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x96000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshShadowSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshShadowSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshShadowSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshShadowSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshShadowSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshShadowSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshShadowSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

re::ecs2::MeshShadowSystemStateImpl *re::ecs2::MeshShadowSystemStateImpl::MeshShadowSystemStateImpl(re::ecs2::MeshShadowSystemStateImpl *this, re::ecs2::MeshShadowSystem *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CFB8B0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = a2;
  v24 = re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 2uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 48, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v20[0] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v20[1] = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v20[2] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v20[3] = re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v21 = re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v22 = re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v23 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(&v24, v20, 7uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 88, &v24);
  if (v24 && v28)
  {
    (*(*v24 + 40))();
  }

  v24 = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v26 = re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 3uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 128, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v24 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v26 = re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v27 = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v20, &v24, 4uLL);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 168, v20);
  if (v20[0] && v21)
  {
    (*(*v20[0] + 40))();
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = 8 * v4;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v5++);
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    v8 = *(this + 15);
    v9 = 8 * v7;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v8++);
      v9 -= 8;
    }

    while (v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    v11 = *(this + 20);
    v12 = 8 * v10;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add(v3, v11++);
      v12 -= 8;
    }

    while (v12);
  }

  v13 = *(this + 23);
  if (v13)
  {
    v14 = *(this + 25);
    v15 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
    v16 = 8 * v13;
    do
    {
      if (*v14 != v15)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v3, v14);
        v15 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
      }

      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  v17 = re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v18 = *(this + 3);
  if (v18 >= *(this + 2))
  {
    re::DynamicArray<float *>::growCapacity(v3, v18 + 1);
    v18 = *(this + 3);
  }

  *(*(this + 5) + 8 * v18) = v17;
  *(this + 3) = v18 + 1;
  ++*(this + 8);
  return this;
}

void re::ecs2::MeshShadowSystemStateImpl::willDeactivateComponent(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&v21, v6);
  if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType == a3)
  {
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(*(a1 + 208) + 1496, &v21);
    if (!a2[24])
    {
      goto LABEL_31;
    }

    (*(**(*(a1 + 208) + 248) + 56))(v28);
    isEntityAMeshReceiver = re::internal::shadows::isEntityAMeshReceiver(a2, v28, v18);
    re::AssetHandle::~AssetHandle(v28);
    if (!isEntityAMeshReceiver)
    {
      goto LABEL_31;
    }

LABEL_30:
    re::ecs2::MeshShadowSystem::processReceiverRemoval(*(a1 + 208), a2);
    goto LABEL_31;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a3)
  {
    re::ecs2::MeshShadowSystem::processCasterRemoval(*(a1 + 208), a2);
    goto LABEL_31;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a3)
  {
    v20 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v20 || *(v20 + 112) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a3)
  {
    re::StackScratchAllocator::StackScratchAllocator(v28);
    v22[0] = 0;
    v22[1] = 0;
    v23 = 1;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v27 = 0;
    re::BucketArray<re::ecs2::Entity *,32ul>::init(v22, v28, 1uLL);
    *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v22) = a2;
    for (i = v26; v26; i = v26)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
      ++v27;
      v9 = v8[43];
      if (v9)
      {
        v10 = v8[45];
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v22) = v12;
          v11 -= 8;
        }

        while (v11);
      }

      v29 = v8;
      v13 = *(a1 + 208);
      if (*(v13 + 1112))
      {
        v14 = v8[39];
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        v16 = *(*(v13 + 1120) + 4 * ((v15 ^ (v15 >> 31)) % *(v13 + 1136)));
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(v13 + 1128);
          while (*(v17 + 40 * v16 + 8) != v14)
          {
            v16 = *(v17 + 40 * v16) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_19;
            }
          }

          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v13 + 1208, &v29);
        }
      }

LABEL_19:
      ;
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
    if (v22[0] && (v23 & 1) == 0)
    {
      (*(*v22[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v28);
  }

LABEL_31:
  objc_destroyWeak(&v21);
}

void re::ecs2::MeshShadowSystem::processReceiverRemoval(re::ecs2::MeshShadowSystem *this, re::ecs2::Entity *a2)
{
  v19 = a2;
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 4);
  }

  while (v3);
  v5 = *(a2 + 39);
  v6 = v5 ^ (v5 >> 30);
  if (*(this + 139))
  {
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
    v8 = v7 ^ (v7 >> 31);
    v9 = *(*(this + 140) + 4 * (v8 % *(this + 284)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(*(*(v4 + 3) + 104) + 288) >> 1;
      v11 = *(this + 141);
      while (*(v11 + 40 * v9 + 8) != v5)
      {
        v9 = *(v11 + 40 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_13;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(location, this + 1112, v5, v8);
      *location = *(v11 + 40 * HIDWORD(location[1]) + 16);
      re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1112, v5);
      re::internal::shadows::removeParamsFromMaterialParameterBlock(v5, *(*(this + 29) + 24), 0);
      v12 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(this + 1016, location);
      if (v12)
      {
        --*v12;
      }

      v18 = v10;
      v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1064, &v18);
      if (v13)
      {
        --*v13;
      }
    }
  }

LABEL_13:
  if (*(this + 145))
  {
    v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
    v15 = *(*(this + 146) + 4 * ((v14 ^ (v14 >> 31)) % *(this + 296)));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(this + 147);
      while (*(v16 + (v15 << 6) + 8) != v5)
      {
        v15 = *(v16 + (v15 << 6)) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          goto LABEL_20;
        }
      }

      re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1160, v5);
    }
  }

LABEL_20:
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 1208, &v19);
  if (v19)
  {
    v17 = v19 + 8;
  }

  else
  {
    v17 = 0;
  }

  objc_initWeak(location, v17);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1256, location);
  objc_destroyWeak(location);
}

void re::ecs2::MeshShadowSystem::processCasterRemoval(re::ecs2::MeshShadowSystem *this, re::ecs2::Entity *a2)
{
  v20 = a2;
  if (a2)
  {
    v4 = a2 + 8;
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1544, &location);
  objc_destroyWeak(&location);
  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1496, &location);
  objc_destroyWeak(&location);
  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 1448, &location);
  objc_destroyWeak(&location);
  if (*(this + 121))
  {
    v5 = *(a2 + 39);
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
    v7 = v6 ^ (v6 >> 31);
    v8 = *(this + 122);
    v9 = *(v8 + 4 * (v7 % *(this + 248)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(this + 123);
      while (*(v10 + 40 * v9 + 8) != v5)
      {
        v9 = *(v10 + 40 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v11 = a2;
      do
      {
        v12 = v11;
        v11 = *(v11 + 4);
      }

      while (v11);
      v13 = *(*(*(v12 + 3) + 104) + 288);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&location, this + 968, *(a2 + 39), v7);
      v19 = *(v10 + 40 * HIDWORD(v22) + 16);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&location, this + 968, v5, v7);
      v14 = HIDWORD(v22);
      if (HIDWORD(v22) != 0x7FFFFFFF)
      {
        v15 = (v10 + 40 * HIDWORD(v22));
        v16 = *v15 & 0x7FFFFFFF;
        if (v23 == 0x7FFFFFFF)
        {
          *(v8 + 4 * v22) = v16;
        }

        else
        {
          *(v10 + 40 * v23) = *(v10 + 40 * v23) & 0x80000000 | v16;
        }

        *v15 = *(this + 251);
        *(this + 251) = v14;
        --*(this + 249);
        ++*(this + 252);
      }

      if (*re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) == a2)
      {
        *re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) = 0;
      }

      v17 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19);
      re::DynamicArray<unsigned long long>::remove(v17 + 8, &v20);
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1304, &v19);
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1352, &v19);
      if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 24))
      {
        if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 56))
        {
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(this + 1400, &v19);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 1304, &v19);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 1352, &v19);
        }

        location = *(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](this + 872, &v19) + 56);
        v22 = v13 >> 1;
        v18 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(this + 1016, &location);
        if (v18)
        {
          --*v18;
        }

        re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(this + 872, &v19);
      }
    }
  }
}

void re::ecs2::MeshShadowSystemStateImpl::willDeactivateEntity(re::ecs2::MeshShadowSystem **this, re::ecs2::Entity *a2)
{
  re::ecs2::MeshShadowSystem::processCasterRemoval(this[26], a2);
  re::ecs2::MeshShadowSystem::processReceiverRemoval(this[26], a2);
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity *,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v5 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      v6 = v5[43];
      if (v6)
      {
        v7 = v5[45];
        v8 = 8 * v6;
        do
        {
          v9 = *v7++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v15) = v9;
          v8 -= 8;
        }

        while (v8);
      }

      v22 = v5;
      v10 = this[26];
      if (*(v10 + 139))
      {
        v11 = v5[39];
        v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
        v13 = *(*(v10 + 140) + 4 * ((v12 ^ (v12 >> 31)) % *(v10 + 284)));
        if (v13 != 0x7FFFFFFF)
        {
          v14 = *(v10 + 141);
          while (*(v14 + 40 * v13 + 8) != v11)
          {
            v13 = *(v14 + 40 * v13) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_13;
            }
          }

          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v10 + 1208, &v22);
        }
      }

LABEL_13:
      ;
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::MeshShadowSystemStateImpl::didDependentComponentChange(void *a1, uint64_t a2, unint64_t a3, char *a4)
{
  v63 = a3;
  if (*(a3 + 304))
  {
    if (!a4)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) didDependentComponentChange() gets NULL componentType", "componentType", "didDependentComponentChange", 541);
      _os_crash("assertion failure: (componentType) didDependentComponentChange() gets NULL componentType");
      __break(1u);
      return;
    }

    v6 = *(a3 + 98);
    if (*(a3 + 98))
    {
      v8 = (a4 + 16);
      v9 = *(a3 + 104);
      v10 = vld1q_dup_s16(v8);
      for (i = 1; ; i -= 8)
      {
        v12 = vandq_s8(vceqq_s16(v10, *v9), xmmword_1E306AC00);
        v12.i16[0] = vmaxvq_u16(v12);
        if (v12.i32[0])
        {
          break;
        }

        ++v9;
        if (!--v6)
        {
          return;
        }
      }

      if (v12.u16[0] - i < *(a3 + 96))
      {
        v13 = a1[8];
        if (v13)
        {
          v14 = 8 * v13;
          v15 = a1[10];
          while (*v15 != a4)
          {
            ++v15;
            v14 -= 8;
            if (!v14)
            {
              v16 = 0;
              goto LABEL_16;
            }
          }
        }

        else
        {
          v15 = a1[10];
        }

        v16 = v15 != (a1[10] + 8 * v13);
LABEL_16:
        v17 = a1[13];
        if (v17)
        {
          v18 = 8 * v17;
          v19 = a1[15];
          while (*v19 != a4)
          {
            ++v19;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v19 = a1[15];
        }

        if (v19 != (a1[15] + 8 * v17))
        {
          v16 |= 2u;
        }

LABEL_24:
        v20 = a1[18];
        if (v20)
        {
          v21 = 8 * v20;
          v22 = a1[20];
          while (*v22 != a4)
          {
            ++v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v22 = a1[20];
        }

        if (v22 != (a1[20] + 8 * v20))
        {
          v16 |= 4u;
        }

LABEL_32:
        v23 = a1[23];
        if (v23)
        {
          v24 = 8 * v23;
          v25 = a1[25];
          while (*v25 != a4)
          {
            ++v25;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v25 = a1[25];
        }

        if (v25 != (a1[25] + 8 * v23))
        {
          v16 |= 8u;
        }

LABEL_40:
        v26 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
        {
          v27 = v16 | 0x10;
        }

        else
        {
          v27 = v16;
        }

        if (v27)
        {
          v28 = a1[26];
          objc_initWeak(location, (a3 + 8));
          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v28 + 1448, location);
          objc_destroyWeak(location);
          if ((v27 & 2) == 0)
          {
LABEL_45:
            if ((v27 & 4) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }
        }

        else if ((v27 & 2) == 0)
        {
          goto LABEL_45;
        }

        v29 = a1[26];
        objc_initWeak(location, (a3 + 8));
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v29 + 1496, location);
        objc_destroyWeak(location);
        if ((v27 & 4) == 0)
        {
LABEL_46:
          if ((v27 & 8) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_51;
        }

LABEL_50:
        v30 = a1[26];
        objc_initWeak(location, (a3 + 8));
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v30 + 1544, location);
        objc_destroyWeak(location);
        if ((v27 & 8) == 0)
        {
          goto LABEL_75;
        }

LABEL_51:
        if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
        {
          re::StackScratchAllocator::StackScratchAllocator(location);
          v64[0] = 0;
          v64[1] = 0;
          v65 = 1;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          v69 = 0;
          re::BucketArray<re::ecs2::Entity *,32ul>::init(v64, location, 1uLL);
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v64) = a3;
          for (j = v68; v68; j = v68)
          {
            v33 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v64, j - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v64, --v68);
            ++v69;
            v34 = v33[43];
            if (v34)
            {
              v35 = v33[45];
              v36 = 8 * v34;
              do
              {
                v37 = *v35++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v64) = v37;
                v36 -= 8;
              }

              while (v36);
            }

            v71 = v33;
            v38 = a1[26];
            if (*(v38 + 1112))
            {
              v39 = v33[39];
              v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27));
              v41 = *(*(v38 + 1120) + 4 * ((v40 ^ (v40 >> 31)) % *(v38 + 1136)));
              if (v41 != 0x7FFFFFFF)
              {
                v42 = *(v38 + 1128);
                while (*(v42 + 40 * v41 + 8) != v39)
                {
                  v41 = *(v42 + 40 * v41) & 0x7FFFFFFF;
                  if (v41 == 0x7FFFFFFF)
                  {
                    goto LABEL_67;
                  }
                }

                re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v38 + 1208, &v71);
              }
            }

LABEL_67:
            ;
          }

          re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v64);
          if (v64[0] && (v65 & 1) == 0)
          {
            (*(*v64[0] + 40))();
          }

          re::StackScratchAllocator::~StackScratchAllocator(location);
          v26 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          goto LABEL_75;
        }

        if (re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
        {
          if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType != a4)
          {
            if (re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
            {
              v31 = a1[26];
              objc_initWeak(location, (a3 + 8));
              re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v31 + 1256, location);
              objc_destroyWeak(location);
            }

LABEL_75:
            if (v27 >= 0x10)
            {
              v45 = re::ecs2::EntityComponentCollection::get((v63 + 48), v26[16]);
              if (v45)
              {
                v46 = v45;
                v47 = v63;
                do
                {
                  v48 = v47;
                  v47 = *(v47 + 32);
                }

                while (v47);
                v49 = *(v48 + 24);
                if (v49)
                {
                  v50 = (*(**(v49 + 56) + 32))(*(v49 + 56));
                  v51 = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v50);
                  if (v51)
                  {
                    v52 = (*(*v51 + 48))(v51, v46);
                    if (v52)
                    {
                      v53 = v52;
                      v54 = *(v52 + 32);
                      if (v54)
                      {
                        v55 = 0;
                        v56 = (*(v52 + 16) + 8);
                        while (1)
                        {
                          v57 = *v56;
                          v56 += 6;
                          if (v57 < 0)
                          {
                            break;
                          }

                          if (v54 == ++v55)
                          {
                            LODWORD(v55) = *(v52 + 32);
                            break;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v55) = 0;
                      }

                      while (v55 != v54)
                      {
                        v58 = *(*(v53 + 16) + 24 * v55 + 16);
                        v59 = re::ecs2::EntityComponentCollection::get((v58 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                        if (v59 && *(v59 + 40))
                        {
                          v60 = a1[26];
                          if (v58)
                          {
                            v61 = (v58 + 8);
                          }

                          else
                          {
                            v61 = 0;
                          }

                          objc_initWeak(location, v61);
                          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v60 + 1448, location);
                          objc_destroyWeak(location);
                        }

                        v62 = *(v53 + 32);
                        if (v62 <= v55 + 1)
                        {
                          v62 = v55 + 1;
                        }

                        while (v62 - 1 != v55)
                        {
                          LODWORD(v55) = v55 + 1;
                          if ((*(*(v53 + 16) + 24 * v55 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_101;
                          }
                        }

                        LODWORD(v55) = v62;
LABEL_101:
                        ;
                      }
                    }
                  }
                }
              }
            }

            return;
          }

          if (!*(a3 + 192))
          {
            return;
          }

          (*(**(a1[26] + 248) + 56))(location);
          isEntityAMeshReceiver = re::internal::shadows::isEntityAMeshReceiver(a3, location, v43);
          re::AssetHandle::~AssetHandle(location);
          if (!isEntityAMeshReceiver)
          {
            goto LABEL_75;
          }
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1[26] + 1208, &v63);
        goto LABEL_75;
      }
    }
  }
}

unint64_t re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 8) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_15:
    result = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::addAsMove(a1, v6, result, a2);
    ++*(a1 + 40);
    return result;
  }

  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = v8 + 32 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != *a2 || v11 != v9)
  {
    while (1)
    {
      v7 = *(v8 + 32 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v8 + 32 * v7;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == *a2 && v15 == v9)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v6, a1, *a2, a2[1], v4);
  return *(a1 + 16) + 104 * v7 + 24;
}

unint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 8) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_15:
    result = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, v6, result, a2, a2);
    ++*(a1 + 40);
    return result;
  }

  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = v8 + 32 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != *a2 || v11 != v9)
  {
    while (1)
    {
      v7 = *(v8 + 32 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v8 + 32 * v7;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == *a2 && v15 == v9)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

unint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = result % v5;
    v7 = *(a1 + 8);
    v8 = *(v7 + 4 * (result % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 16);
      v10 = a2[1];
      v11 = v9 + 32 * v8;
      if (*(v11 + 16) == *a2 && *(v11 + 24) == v10)
      {
        *(v7 + 4 * v6) = *(v11 + 8) & 0x7FFFFFFF;
LABEL_15:
        v16 = *(a1 + 16);
        v17 = v16 + 32 * v8;
        v20 = *(v17 + 8);
        v19 = (v17 + 8);
        v18 = v20;
        if (v20 < 0)
        {
          *v19 = v18 & 0x7FFFFFFF;
          v16 = *(a1 + 16);
          v18 = *(v16 + 32 * v8 + 8);
        }

        v21 = *(a1 + 40);
        *(v16 + 32 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
        --*(a1 + 28);
        *(a1 + 36) = v8;
        *(a1 + 40) = v21 + 1;
      }

      else
      {
        while (1)
        {
          v13 = v8;
          v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
          if (v8 == 0x7FFFFFFF)
          {
            break;
          }

          v14 = v9 + 32 * v8;
          if (*(v14 + 16) == *a2 && *(v14 + 24) == v10)
          {
            *(v9 + 32 * v13 + 8) = *(v9 + 32 * v13 + 8) & 0x80000000 | *(v14 + 8) & 0x7FFFFFFF;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(v6, a1, *a2, a2[1], v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v7 + 24;
  }
}

int *re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v11, a2);
  result = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v11, a1, *a2, a2[1], v4);
  v6 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 16);
    result = (v7 + 104 * v13);
    v8 = *result & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v7 + 104 * v14) = *(v7 + 104 * v14) & 0x80000000 | v8;
    }

    v9 = *result;
    if (*result < 0)
    {
      *result = v9 & 0x7FFFFFFF;
      result = re::DynamicArray<unsigned long>::deinit((result + 8));
      v7 = *(a1 + 16);
      v9 = *(v7 + 104 * v6);
    }

    *(v7 + 104 * v6) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = v6;
    *(a1 + 40) = v10;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 40 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 40 * v13) = *(v6 + 40 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + (v12 << 6));
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + (v13 << 6)) = *(v6 + (v13 << 6)) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

void *re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 312);
  (*(*a1 + 8))(&v31);
  do
  {
    v6 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  if (v31.n128_u8[0])
  {
    v7 = v31.n128_u64[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(*(v6 + 24) + 104) + 288);
  v9 = v8 >> 1;
  v10 = v5 ^ (v5 >> 30);
  if (*(a2 + 1112))
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
    v12 = v11 ^ (v11 >> 31);
    v13 = *(*(a2 + 1120) + 4 * (v12 % *(a2 + 1136)));
    if (v13 != 0x7FFFFFFF)
    {
      v14 = *(a2 + 1128);
      while (*(v14 + 40 * v13 + 8) != v5)
      {
        v13 = *(v14 + 40 * v13) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          goto LABEL_16;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v31, a2 + 1112, v5, v12);
      v31 = *(v14 + 40 * v31.n128_u32[3] + 16);
      v15 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a2 + 1016, &v31);
      if (v15)
      {
        v16 = v15;
        re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1640, &v31);
        --*v16;
      }

      v17 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1064, &v31.n128_u64[1]);
      if (v17)
      {
        --*v17;
      }
    }
  }

LABEL_16:
  v31.n128_u64[0] = v7;
  v31.n128_u64[1] = v8 >> 1;
  v18 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a2 + 1016, &v31);
  if (v18)
  {
    v19 = v18;
    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1640, &v31);
    ++*v19;
  }

  else
  {
    v31 = 0uLL;
    v32 = 0;
    v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) >> 27));
    re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v31, a2 + 1016, v7, v8 >> 1, (((v20 ^ (v20 >> 31)) << 6) + ((v20 ^ (v20 >> 31)) >> 2) - 0x61C8864680B583E9 + (v21 ^ (v21 >> 31))) ^ v20 ^ (v20 >> 31));
    if (v31.n128_u32[3] == 0x7FFFFFFF)
    {
      v22 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(a2 + 1016, v31.n128_u32[2], v31.n128_u64[0]);
      v22[1] = v7;
      v22[2] = v9;
      v22[3] = 1;
      ++*(a2 + 1056);
    }

    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(a2 + 1592, &v31);
    v31.n128_u64[0] = v7;
    v31.n128_u64[1] = v8 >> 1;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(a2 + 1688, &v31);
  }

  v31.n128_u64[0] = v8 >> 1;
  v23 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1064, &v31);
  if (v23)
  {
    ++*v23;
  }

  else
  {
    v30 = v8 >> 1;
    v31 = 0uLL;
    v32 = 0;
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v8 >> 31))) >> 27));
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a2 + 1064, &v30, v24 ^ (v24 >> 31), &v31);
    if (v31.n128_u32[3] == 0x7FFFFFFF)
    {
      v25 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2 + 1064, v31.n128_u32[2], v31.n128_u64[0]);
      *(v25 + 8) = v30;
      *(v25 + 16) = 1;
      ++*(a2 + 1104);
    }
  }

  v31 = 0uLL;
  v32 = 0;
  v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v31, a2 + 1112, v5, v26 ^ (v26 >> 31));
  v28 = v31.n128_u32[3];
  if (v31.n128_u32[3] == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a2 + 1112, v31.n128_u32[2], v31.n128_u64[0]);
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    ++*(a2 + 1152);
  }

  else
  {
    ++*(a2 + 1152);
    v29 = *(a2 + 1128) + 40 * v28;
    *(v29 + 16) = v7;
    *(v29 + 24) = v9;
  }

  return result;
}

uint64_t re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_3::operator()(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 ^ (a2 >> 30);
  if (*(result + 1112))
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(*(result + 1120) + 4 * (v6 % *(result + 1136)));
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(result + 1128);
      while (*(v8 + 40 * v7 + 8) != a2)
      {
        v7 = *(v8 + 40 * v7) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13, result + 1112, a2, v6);
      v13[0] = *(v8 + 40 * HIDWORD(v13[0]) + 16);
      re::HashTable<unsigned long long,re::SceneWorldRootId,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 1112, a2);
      v9 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, v13);
      if (v9)
      {
        --*v9;
      }

      result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v3 + 1064, v13 + 1);
      if (result)
      {
        --*result;
      }
    }
  }

LABEL_11:
  if (*(v3 + 1160))
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
    v11 = *(*(v3 + 1168) + 4 * ((v10 ^ (v10 >> 31)) % *(v3 + 1184)));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(v3 + 1176);
      while (*(v12 + (v11 << 6) + 8) != a2)
      {
        v11 = *(v12 + (v11 << 6)) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      return re::HashTable<unsigned long long,re::MeshShadowPlaneData::ShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 1160, a2);
    }
  }

  return result;
}

BOOL re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = v8 + 32 * v6;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 == *a2 && v11 == v9)
  {
    return 1;
  }

  do
  {
    v6 = *(v8 + 32 * v6 + 8) & 0x7FFFFFFF;
    result = v6 != 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      break;
    }

    v14 = v8 + 32 * v6;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
  }

  while (v16 != *a2 || v15 != v9);
  return result;
}

__n128 re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(uint64_t a1, __n128 *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v24, a2);
  v6 = v4;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v4 % v7;
    v9 = *(*(a1 + 8) + 4 * (v4 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      v11 = a2->n128_u64[1];
      v12 = v10 + 32 * v9;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 == a2->n128_u64[0] && v13 == v11)
      {
        return result;
      }

      while (1)
      {
        v9 = *(v10 + 32 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        v16 = v10 + 32 * v9;
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 == a2->n128_u64[0] && v17 == v11)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v20 = *(a1 + 36);
  if (v20 == 0x7FFFFFFF)
  {
    v20 = *(a1 + 32);
    v21 = v20;
    if (v20 == v7)
    {
      re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v21 = *(a1 + 32);
    }

    *(a1 + 32) = v21 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v20 + 8);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v20 + 8);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  *(v22 + 32 * v20 + 8) = v23 | 0x80000000;
  *(*(a1 + 16) + 32 * v20 + 8) = *(*(a1 + 16) + 32 * v20 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v8);
  *(*(a1 + 16) + 32 * v20) = v6;
  result = *a2;
  *(*(a1 + 16) + 32 * v20 + 16) = *a2;
  *(*(a1 + 8) + 4 * v8) = v20;
  ++*(a1 + 28);
  ++*(a1 + 40);
  return result;
}

void re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
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
    v10 = *(a1 + 16);
    do
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(a3, (v10 + 32 * v7 + 16));
      v11 = *(a1 + 32);
      v10 = *(a1 + 16);
      if (v11 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v7)
      {
        v7 = (v7 + 1);
        if ((*(v10 + 32 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v7) = v12;
LABEL_17:
      ;
    }

    while (v7 != v11);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = (*(a2 + 16) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 8;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 != v13)
  {
    v17 = *(a2 + 16);
    do
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(a3, (v17 + 32 * v14 + 16));
      v18 = *(a2 + 32);
      v17 = *(a2 + 16);
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = *(a2 + 32);
      }

      while (v19 - 1 != v14)
      {
        v14 = (v14 + 1);
        if ((*(v17 + 32 * v14 + 8) & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      LODWORD(v14) = v19;
LABEL_34:
      ;
    }

    while (v14 != v18);
  }
}

uint64_t re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  if (!*a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v6 % *(a1 + 24);
  v8 = *(*(a1 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v7, v6);
    v12 = *a2;
    *(v11 + 16) = 0u;
    v10 = v11 + 16;
    *(v11 + 8) = v12;
    *(v11 + 352) = 0u;
    *(v11 + 368) = 0u;
    *(v11 + 320) = 0u;
    *(v11 + 336) = 0u;
    *(v11 + 288) = 0u;
    *(v11 + 304) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 272) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 240) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 172) = 0x7FFFFFFF;
    *(v11 + 184) = 0u;
    *(v11 + 200) = 0u;
    *(v11 + 216) = 0x7FFFFFFF00000000;
    *(v11 + 232) = 0u;
    *(v11 + 248) = 0u;
    v13 = (v11 + 280);
    *(v11 + 264) = 0x7FFFFFFF00000000;
    *v13 = 0u;
    v13[1] = 0u;
    *(v10 + 296) = 0x7FFFFFFF00000000;
    *(v10 + 304) = 0;
    *(v10 + 344) = 0x7FFFFFFF00000000;
    *(v10 + 312) = 0u;
    *(v10 + 328) = 0u;
    *(v10 + 352) = 0;
    *(v10 + 360) = 0;
    ++*(a1 + 40);
    return v10;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 392 * v8 + 8) != v4)
  {
    while (1)
    {
      LODWORD(v8) = *(v9 + 392 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v9 + 392 * v8 + 8) == v4)
      {
        return v9 + 392 * v8 + 16;
      }
    }

    goto LABEL_8;
  }

  return v9 + 392 * v8 + 16;
}

void re::ecs2::MeshShadowSystem::willAddSystemToECSService(re::ecs2::MeshShadowSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = *(this + 30);
  if (v2 && *(this + 29))
  {
    v3 = *(this + 31);
    if (v3)
    {
      v4 = (*(**(this + 5) + 32))(*(this + 5));
      (*(*v3 + 120))(v3, v4);
      v2 = *(this + 30);
    }

    (*(*v2 + 8))(&v8);
    v5 = *(this + 344);
    *(this + 344) = v8;
    v8 = v5;
    v6 = *(this + 45);
    *(this + 45) = v9;
    v9 = v6;
    re::AssetHandle::~AssetHandle(&v8);
    re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(this, v7);
  }
}

void re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(re::ecs2::MeshShadowSystem *this, const re::RenderManager *a2)
{
  v3 = *(this + 44);
  if (!v3 || (v4 = atomic_load((v3 + 896)), v4 != 2))
  {
    if (re::ProjectiveMeshShadowBuilder::requiresDebugFont(*(this + 29), a2))
    {

      re::AssetHandle::loadAsync((this + 344));
    }
  }
}

double re::ecs2::MeshShadowSystem::willRemoveSystemFromECSService(re::ecs2::MeshShadowSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void *re::ecs2::MeshShadowSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v895 = *MEMORY[0x1E69E9840];
  v824 = a2;
  v825 = a3;
  v4 = result[28];
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v823);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v822, 3146, v3, 0, 0, 0);
    v812 = (*(**(v3 + 256) + 24))(*(v3 + 256));
    v5 = atomic_load((*(*(v3 + 232) + 192) + 608));
    if (v5 >= *(v3 + 2336))
    {
      *(v3 + 2336) = v5 + 1;
      if (*(v3 + 2048) == 1)
      {
        *(v3 + 2048) = 0;
      }

      if (*(v3 + 2112) == 1)
      {
        re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v3 + 2064));
        *(v3 + 2112) = 0;
      }

      *(v3 + 2344) = 0;
    }

    re::StackScratchAllocator::StackScratchAllocator(buf);
    v839[1].i32[0] = 1;
    v839[2].i64[0] = 0;
    v839[1].i64[1] = 0;
    v839[0].i64[1] = 0;
    v839[0].i64[0] = buf;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v839, 0);
    v839[1].i32[0] += 2;
    v6 = *(v3 + 792);
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v839[2].i64[1] = *(v3 + 792);
    *to = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v839, v7, to);
    v8 = *(v825 + 200);
    if (v8)
    {
      v9 = *(v825 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        *to = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 640), to);
        re::DynamicBitset<unsigned long long,64ul>::setBit(v839, *(*(v3 + 648) + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v839, v3 + 752);
    *&to[16] = 1;
    *&to[32] = 0;
    *&to[24] = 0;
    *&to[8] = 0;
    *to = buf;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(to, 0);
    *&to[16] += 2;
    v13 = *(v3 + 792);
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    *&to[40] = *(v3 + 792);
    *&v891[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(to, v14, v891);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v3 + 752, v839);
    v15 = v839[2].i64[0];
    if (v839[1].i8[0])
    {
      v15 = &v839[1].i64[1];
    }

    v16 = v839[0].i64[1];
    if ((v839[0].i64[1] & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (v19)
        {
          break;
        }

        v17 -= 64;
        if (!--v16)
        {
          goto LABEL_38;
        }
      }

      v20 = __clz(__rbit64(v18));
      if (v20 + 1 != v17)
      {
        FirstBitSet = v20 - v17;
        do
        {
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 584, FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, &v824, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, &v824, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, &v824, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else if (!v26)
          {
LABEL_36:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(to, FirstBitSet);
            goto LABEL_37;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(to, FirstBitSet);
LABEL_37:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v839, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_38:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v3 + 752, to);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 584);
    if (*to && (to[16] & 1) == 0)
    {
      (*(**to + 40))();
    }

    if (v839[0].i64[0] && (v839[1].i8[0] & 1) == 0)
    {
      (*(*v839[0].i64[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(buf);
    (*(**(v3 + 248) + 16))(buf);
    v31 = v880;
    *(v3 + 2272) = v881;
    v32 = v883;
    *(v3 + 2288) = v882;
    *(v3 + 2304) = v32;
    *(v3 + 2320) = v884;
    v33 = v876;
    *(v3 + 2208) = v877;
    v34 = v879;
    *(v3 + 2224) = v878;
    *(v3 + 2240) = v34;
    *(v3 + 2256) = v31;
    v35 = *buf;
    *(v3 + 2144) = *&buf[16];
    v36 = v875;
    *(v3 + 2160) = *&buf[32];
    *(v3 + 2176) = v36;
    *(v3 + 2192) = v33;
    *(v3 + 2128) = v35;
    memset(to, 0, 36);
    *&to[36] = 0x7FFFFFFFLL;
    v808 = *(v3 + 1576);
    if (v808)
    {
      v37 = 0;
      v38 = (*(v3 + 1560) + 8);
      while (1)
      {
        v39 = *v38;
        v38 += 6;
        if (v39 < 0)
        {
          break;
        }

        if (v808 == ++v37)
        {
          LODWORD(v37) = *(v3 + 1576);
          break;
        }
      }
    }

    else
    {
      LODWORD(v37) = 0;
    }

    if (v37 != v808)
    {
      do
      {
        WeakRetained = objc_loadWeakRetained((*(v3 + 1560) + 24 * v37 + 16));
        if (WeakRetained)
        {
          v41 = WeakRetained;
          v42 = WeakRetained - 8;
          re::StackScratchAllocator::StackScratchAllocator(buf);
          v839[0] = 0uLL;
          v839[1].i32[0] = 1;
          memset(&v839[1].u32[2], 0, 24);
          v840.i32[0] = 0;
          re::BucketArray<re::ecs2::Entity *,32ul>::init(v839, buf, 1uLL);
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v839) = v42;
LABEL_53:
          while (v839[2].i64[1])
          {
            v43 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v839, v839[2].i64[1] - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v839, --v839[2].i64[1]);
            ++v840.i32[0];
            v44 = *(v43 + 344);
            if (v44)
            {
              v45 = *(v43 + 360);
              v46 = 8 * v44;
              do
              {
                v47 = *v45++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v839) = v47;
                v46 -= 8;
              }

              while (v46);
            }

            *&v891[0] = v43;
            v48 = *(v43 + 98);
            if (*(v43 + 98))
            {
              v49 = (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
              v50 = *(v43 + 104);
              v51 = vld1q_dup_s16(v49);
              v52 = 1;
              while (1)
              {
                v53 = vandq_s8(vceqq_s16(v51, *v50), xmmword_1E306AC00);
                v53.i16[0] = vmaxvq_u16(v53);
                if (v53.i32[0])
                {
                  break;
                }

                v52 -= 8;
                ++v50;
                if (!--v48)
                {
                  goto LABEL_53;
                }
              }

              if (v53.u16[0] - v52 < *(v43 + 96))
              {
                *location = (*(**(v3 + 272) + 16))(*(v3 + 272));
                if (*re::ecs2::RenderOptions::forEntity(location, v43) == 1)
                {
                  objc_initWeak(location, (v43 + 8));
                  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v3 + 1448, location);
                  objc_destroyWeak(location);
                }

                else
                {
                  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(to, v891);
                }
              }
            }
          }

          re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v839);
          if (v839[0].i64[0] && (v839[1].i8[0] & 1) == 0)
          {
            (*(*v839[0].i64[0] + 40))();
          }

          re::StackScratchAllocator::~StackScratchAllocator(buf);
        }

        else
        {
          v55 = *re::shadowLogObjects(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "processRerenderUpdate";
            *&buf[12] = 1024;
            *&buf[14] = 625;
            _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
          }
        }

        v54 = *(v3 + 1576);
        if (v54 <= v37 + 1)
        {
          v54 = v37 + 1;
        }

        while (v54 - 1 != v37)
        {
          LODWORD(v37) = v37 + 1;
          if ((*(*(v3 + 1560) + 24 * v37 + 8) & 0x80000000) != 0)
          {
            goto LABEL_76;
          }
        }

        LODWORD(v37) = v54;
LABEL_76:
        ;
      }

      while (v37 != v808);
      v56 = *&to[32];
      if (*&to[32])
      {
        v57 = 0;
        v58 = *&to[16];
        v59 = 8;
        while ((*(*&to[16] + v59) & 0x80000000) == 0)
        {
          ++v57;
          v59 += 24;
          if (*&to[32] == v57)
          {
            LODWORD(v57) = *&to[32];
            break;
          }
        }

        if (*&to[32] != v57)
        {
          do
          {
            re::ecs2::MeshShadowSystem::processCasterRemoval(v3, *(v58 + 24 * v57 + 16));
            v58 = *&to[16];
            if (*&to[32] <= (v57 + 1))
            {
              v60 = v57 + 1;
            }

            else
            {
              v60 = *&to[32];
            }

            while (v60 - 1 != v57)
            {
              LODWORD(v57) = v57 + 1;
              if ((*(*&to[16] + 24 * v57 + 8) & 0x80000000) != 0)
              {
                goto LABEL_93;
              }
            }

            LODWORD(v57) = v60;
LABEL_93:
            ;
          }

          while (v57 != v56);
        }
      }
    }

    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1544);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(to);
    if (*(v3 + 1476))
    {
      memset(buf, 0, 36);
      *&buf[36] = 0x7FFFFFFFLL;
      v61 = *(v3 + 1480);
      if (v61)
      {
        v62 = 0;
        v63 = (*(v3 + 1464) + 8);
        while (1)
        {
          v64 = *v63;
          v63 += 6;
          if (v64 < 0)
          {
            break;
          }

          if (v61 == ++v62)
          {
            LODWORD(v62) = *(v3 + 1480);
            break;
          }
        }
      }

      else
      {
        LODWORD(v62) = 0;
      }

      if (v62 != v61)
      {
        do
        {
          v65 = objc_loadWeakRetained((*(v3 + 1464) + 24 * v62 + 16));
          if (v65)
          {
            v66 = v65;
            v67 = (v65 - 1);
            (*(*v812 + 8))(v839);
            _ZF = v839[0].u8[0] != 1 || v839[0].i64[1] == 0;
            if (!_ZF)
            {
              v839[0].i64[0] = v67;
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(buf, v839);
            }

            v69 = v66[29];
            if (v69 && !*(v69 + 64))
            {
              v839[0].i64[0] = v67;
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(buf, v839);
            }
          }

          else
          {
            v71 = *re::shadowLogObjects(0);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v839[0].i32[0] = 136315394;
              *(v839[0].i64 + 4) = "processClusterInfoUpdate";
              v839[0].i16[6] = 1024;
              *(&v839[0].i32[3] + 2) = 731;
              _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", v839, 0x12u);
            }
          }

          v70 = *(v3 + 1480);
          if (v70 <= v62 + 1)
          {
            v70 = v62 + 1;
          }

          while (v70 - 1 != v62)
          {
            LODWORD(v62) = v62 + 1;
            if ((*(*(v3 + 1464) + 24 * v62 + 8) & 0x80000000) != 0)
            {
              goto LABEL_118;
            }
          }

          LODWORD(v62) = v70;
LABEL_118:
          ;
        }

        while (v62 != v61);
        v72 = *&buf[32];
        if (*&buf[32])
        {
          v73 = 0;
          v74 = *&buf[16];
          v75 = 8;
          while ((*(*&buf[16] + v75) & 0x80000000) == 0)
          {
            ++v73;
            v75 += 24;
            if (*&buf[32] == v73)
            {
              LODWORD(v73) = *&buf[32];
              break;
            }
          }

          if (*&buf[32] != v73)
          {
            do
            {
              re::ecs2::MeshShadowSystem::processCasterRemoval(v3, *(v74 + 24 * v73 + 16));
              v74 = *&buf[16];
              if (*&buf[32] <= (v73 + 1))
              {
                v76 = v73 + 1;
              }

              else
              {
                v76 = *&buf[32];
              }

              while (v76 - 1 != v73)
              {
                LODWORD(v73) = v73 + 1;
                if ((*(*&buf[16] + 24 * v73 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_135;
                }
              }

              LODWORD(v73) = v76;
LABEL_135:
              ;
            }

            while (v73 != v72);
          }
        }
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    }

    v77 = *(v3 + 1480);
    if (v77)
    {
      v78 = 0;
      v79 = (*(v3 + 1464) + 8);
      while (1)
      {
        v80 = *v79;
        v79 += 6;
        if (v80 < 0)
        {
          break;
        }

        if (v77 == ++v78)
        {
          LODWORD(v78) = *(v3 + 1480);
          break;
        }
      }
    }

    else
    {
      LODWORD(v78) = 0;
    }

    if (v78 == v77)
    {
LABEL_144:
      v81 = *(v3 + 1336);
      if (v81)
      {
        v82 = 0;
        v83 = (*(v3 + 1320) + 8);
        while (1)
        {
          v84 = *v83;
          v83 += 8;
          if (v84 < 0)
          {
            break;
          }

          if (v81 == ++v82)
          {
            LODWORD(v82) = *(v3 + 1336);
            break;
          }
        }
      }

      else
      {
        LODWORD(v82) = 0;
      }

      if (v82 != v81)
      {
        v127 = &unk_1EE187000;
        while (1)
        {
          v839[0] = *(*(v3 + 1320) + 32 * v82 + 16);
          v128 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v839);
          v129 = v128;
          v130 = *(v128 + 24);
          if (v130)
          {
            v131 = *(v128 + 40);
            v132 = v131 + 8 * v130;
            do
            {
              v133 = *(*v131 + 192);
              if (v133)
              {
                v134 = *(v133 + 72);
                if (v134)
                {
                  v135 = *(v133 + 88);
                  for (i = 24 * v134; i; i -= 24)
                  {
                    v137 = *(v135 + 1);
                    if (v137)
                    {
                      v138 = atomic_load((v137 + 896));
                      if (v138 == 2)
                      {
                        v139 = *(v135 + 1);
                        if (v139)
                        {
                          v140 = *(v139 + 280);
                          v128 = re::MaterialAsset::assetType(v128);
                          if (v140 == v128)
                          {
                            v128 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v135);
                            if ((*(v128 + 1842) & 0xFE) == 6)
                            {
                              LOBYTE(v130) = 1;
                              goto LABEL_233;
                            }
                          }
                        }

                        else
                        {
                          v128 = re::MaterialAsset::assetType(v128);
                        }
                      }
                    }

                    v135 = (v135 + 24);
                  }
                }
              }

              v131 += 8;
            }

            while (v131 != v132);
            LOBYTE(v130) = 0;
LABEL_233:
            v127 = &unk_1EE187000;
          }

          *(v129 + 64) = v130;
          memset(buf, 0, 36);
          *&buf[36] = 0x7FFFFFFFLL;
          v141 = *(v129 + 24);
          if (v141)
          {
            v142 = *(v129 + 40);
            v143 = &v142[v141];
            do
            {
              v144 = *v142;
              if (*v142)
              {
                do
                {
                  v145 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v144 ^ (v144 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v144 ^ (v144 >> 30))) >> 27));
                  v146 = v145 ^ (v145 >> 31);
                  if (*buf)
                  {
                    v147 = v146 % *&buf[24];
                    v148 = *(*&buf[8] + 4 * v147);
                    if (v148 != 0x7FFFFFFF)
                    {
                      while (*(*&buf[16] + 32 * v148 + 8) != v144)
                      {
                        v148 = *(*&buf[16] + 32 * v148) & 0x7FFFFFFF;
                        if (v148 == 0x7FFFFFFF)
                        {
                          goto LABEL_243;
                        }
                      }

                      v152 = *&buf[16] + 32 * v148;
                      v153 = *(v152 + 16);
                      v150 = (v152 + 16);
                      v151 = v153 + 1;
                      goto LABEL_245;
                    }
                  }

                  else
                  {
                    LODWORD(v147) = 0;
                  }

LABEL_243:
                  v149 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(buf, v147, v146);
                  *(v149 + 16) = 0;
                  v150 = (v149 + 16);
                  *(v150 - 1) = v144;
                  ++*&buf[40];
                  v141 = *(v129 + 24);
                  v151 = 1;
LABEL_245:
                  *v150 = v151;
                  if (v141 == v151)
                  {
                    goto LABEL_250;
                  }

                  v144 = *(v144 + 32);
                }

                while (v144 && (*(v144 + 304) & 0x80) == 0);
              }

              ++v142;
            }

            while (v142 != v143);
            v144 = 0;
LABEL_250:
            v127 = &unk_1EE187000;
          }

          else
          {
            v144 = 0;
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
          v154 = *v129;
          if (!*v129)
          {
            goto LABEL_258;
          }

          if (v144 != v154)
          {
            break;
          }

LABEL_259:
          v155 = *(v3 + 1336);
          if (v155 <= v82 + 1)
          {
            v155 = v82 + 1;
          }

          while (v155 - 1 != v82)
          {
            v82 = (v82 + 1);
            if ((*(*(v3 + 1320) + 32 * v82 + 8) & 0x80000000) != 0)
            {
              goto LABEL_265;
            }
          }

          LODWORD(v82) = v155;
LABEL_265:
          if (v82 == v81)
          {
            goto LABEL_266;
          }
        }

        if (re::ecs2::EntityComponentCollection::get((v154 + 48), v127[451]))
        {
          re::ecs2::EntityComponentCollection::remove((v154 + 48), v127[451]);
        }

        if (!re::ecs2::EntityComponentCollection::get((v144 + 48), v127[451]))
        {
          re::ecs2::EntityComponentCollection::add((v144 + 48), v127[451]);
        }

LABEL_258:
        *v129 = v144;
        goto LABEL_259;
      }

LABEL_266:
      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1448);
      v156 = *(v3 + 1528);
      if (v156)
      {
        v157 = 0;
        v158 = (*(v3 + 1512) + 8);
        while (1)
        {
          v159 = *v158;
          v158 += 6;
          if (v159 < 0)
          {
            break;
          }

          if (v156 == ++v157)
          {
            LODWORD(v157) = *(v3 + 1528);
            break;
          }
        }
      }

      else
      {
        LODWORD(v157) = 0;
      }

      if (v157 != v156)
      {
        v817 = *(v3 + 1528);
        do
        {
          v164 = objc_loadWeakRetained((*(v3 + 1512) + 24 * v157 + 16));
          v165 = v164 - 8;
          if (v164)
          {
            v166 = v164 - 8;
          }

          else
          {
            v166 = 0;
          }

          if (v164)
          {
            v167 = v164;
            do
            {
              v168 = v165;
              v165 = *(v165 + 4);
            }

            while (v165);
            v169 = *(v168 + 3);
            if (v169)
            {
              v170 = *(*(v169 + 104) + 288) >> 1;
              if (!*(v3 + 968))
              {
                goto LABEL_295;
              }

              v171 = *(v164 + 38);
              v172 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v171 ^ (v171 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v171 ^ (v171 >> 30))) >> 27));
              v173 = *(*(v3 + 976) + 4 * ((v172 ^ (v172 >> 31)) % *(v3 + 992)));
              if (v173 == 0x7FFFFFFF)
              {
                goto LABEL_295;
              }

              v174 = *(v3 + 984);
              while (*(v174 + 40 * v173 + 8) != v171)
              {
                v173 = *(v174 + 40 * v173) & 0x7FFFFFFF;
                if (v173 == 0x7FFFFFFF)
                {
                  goto LABEL_295;
                }
              }

              v175 = *(v166 + 30);
              if (v175)
              {
                *buf = *(v175 + 64);
                *&buf[8] = v170;
                re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
              }

              else
              {
LABEL_295:
                memset(buf, 0, 36);
                *&buf[36] = 0x7FFFFFFFLL;
                v176 = *(v3 + 904);
                if (v176)
                {
                  v177 = 0;
                  v178 = *(v3 + 888);
                  while (1)
                  {
                    v179 = *v178;
                    v178 += 26;
                    if (v179 < 0)
                    {
                      break;
                    }

                    if (v176 == ++v177)
                    {
                      LODWORD(v177) = *(v3 + 904);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v177) = 0;
                }

                if (v177 != v176)
                {
                  v180 = *(v3 + 888);
                  v181 = *(v3 + 904);
                  do
                  {
                    v182 = v180 + 104 * v177;
                    v183 = *(v182 + 48);
                    if (v183)
                    {
                      v184 = v182 + 24;
                      v185 = *(v182 + 64);
                      v186 = &v185[v183];
                      do
                      {
                        v187 = *v185;
                        while (1)
                        {
                          v187 = *(v187 + 32);
                          if (!v187 || (*(v187 + 304) & 0x80) != 0)
                          {
                            break;
                          }

                          if (v166 == v187)
                          {
                            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(buf, (v184 + 48));
                            v181 = *(v3 + 904);
                            v180 = *(v3 + 888);
                            goto LABEL_311;
                          }
                        }

                        ++v185;
                      }

                      while (v185 != v186);
                    }

LABEL_311:
                    if (v181 <= v177 + 1)
                    {
                      v188 = v177 + 1;
                    }

                    else
                    {
                      v188 = v181;
                    }

                    while (v188 - 1 != v177)
                    {
                      LODWORD(v177) = v177 + 1;
                      if ((*(v180 + 104 * v177) & 0x80000000) != 0)
                      {
                        goto LABEL_318;
                      }
                    }

                    LODWORD(v177) = v188;
LABEL_318:
                    ;
                  }

                  while (v177 != v176);
                  v189 = *&buf[32];
                  if (*&buf[32])
                  {
                    v190 = 0;
                    v191 = *&buf[16];
                    v192 = 8;
                    while ((*(*&buf[16] + v192) & 0x80000000) == 0)
                    {
                      ++v190;
                      v192 += 24;
                      if (*&buf[32] == v190)
                      {
                        LODWORD(v190) = *&buf[32];
                        break;
                      }
                    }

                    if (*&buf[32] != v190)
                    {
                      do
                      {
                        v839[0].i64[0] = *(v191 + 24 * v190 + 16);
                        v839[0].i64[1] = v170;
                        re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v839);
                        v191 = *&buf[16];
                        if (*&buf[32] <= (v190 + 1))
                        {
                          v193 = v190 + 1;
                        }

                        else
                        {
                          v193 = *&buf[32];
                        }

                        while (v193 - 1 != v190)
                        {
                          LODWORD(v190) = v190 + 1;
                          if ((*(*&buf[16] + 24 * v190 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_332;
                          }
                        }

                        LODWORD(v190) = v193;
LABEL_332:
                        ;
                      }

                      while (v190 != v189);
                    }
                  }
                }

                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
                LODWORD(v156) = v817;
              }
            }
          }

          else
          {
            v195 = *re::shadowLogObjects(0);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "processClusterAABBUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 861;
              _os_log_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
            }
          }

          v194 = *(v3 + 1528);
          if (v194 <= v157 + 1)
          {
            v194 = v157 + 1;
          }

          while (v194 - 1 != v157)
          {
            LODWORD(v157) = v157 + 1;
            if ((*(*(v3 + 1512) + 24 * v157 + 8) & 0x80000000) != 0)
            {
              goto LABEL_341;
            }
          }

          LODWORD(v157) = v194;
LABEL_341:
          ;
        }

        while (v157 != v156);
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1496);
      if (*(v3 + 1236))
      {
        re::StackScratchAllocator::StackScratchAllocator(buf);
        v839[2].i64[0] = 0;
        memset(&v839[0].u32[2], 0, 20);
        v839[0].i64[0] = buf;
        re::DynamicArray<float *>::setCapacity(v839, 0);
        ++v839[1].i32[2];
        v160 = *(v3 + 1240);
        if (v160)
        {
          v161 = 0;
          v162 = (*(v3 + 1224) + 8);
          while (1)
          {
            v163 = *v162;
            v162 += 6;
            if (v163 < 0)
            {
              break;
            }

            if (v160 == ++v161)
            {
              LODWORD(v161) = *(v3 + 1240);
              break;
            }
          }
        }

        else
        {
          LODWORD(v161) = 0;
        }

        while (v161 != v160)
        {
          *&v891[0] = *(*(v3 + 1224) + 24 * v161 + 16);
          v196 = re::ecs2::EntityComponentCollection::get((*&v891[0] + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v196)
          {
            v197 = *(v196 + 42);
            v198 = *(v196 + 41);
            (*(*v812 + 8))(to, v812, *&v891[0]);
            v199 = to[0] ? *&to[8] : 0;
            v200 = (*(*v812 + 24))(v812, v199);
            if (v198 != 1 || (v197 & 1) == 0)
            {
              v202 = v198 != 1 || (v197 & 2) == 0;
              if (v202 || v200 != 2)
              {
                re::DynamicArray<re::TransitionCondition *>::add(v839, v891);
              }
            }
          }

          v204 = *(v3 + 1240);
          if (v204 <= v161 + 1)
          {
            v204 = v161 + 1;
          }

          while (v204 - 1 != v161)
          {
            LODWORD(v161) = v161 + 1;
            if ((*(*(v3 + 1224) + 24 * v161 + 8) & 0x80000000) != 0)
            {
              goto LABEL_370;
            }
          }

          LODWORD(v161) = v204;
LABEL_370:
          ;
        }

        if (v839[1].i64[0])
        {
          v205 = v839[2].i64[0];
          v206 = 8 * v839[1].i64[0];
          do
          {
            v207 = *v205++;
            re::ecs2::MeshShadowSystem::processReceiverRemoval(v3, v207);
            v206 -= 8;
          }

          while (v206);
        }

        if (v839[0].i64[0] && v839[2].i64[0])
        {
          (*(*v839[0].i64[0] + 40))();
        }

        re::StackScratchAllocator::~StackScratchAllocator(buf);
      }

      v208 = *(v3 + 1240);
      if (v208)
      {
        v209 = 0;
        v210 = (*(v3 + 1224) + 8);
        while (1)
        {
          v211 = *v210;
          v210 += 6;
          if (v211 < 0)
          {
            break;
          }

          if (v208 == ++v209)
          {
            LODWORD(v209) = *(v3 + 1240);
            break;
          }
        }
      }

      else
      {
        LODWORD(v209) = 0;
      }

      while (v209 != v208)
      {
        v212 = *(*(v3 + 1224) + 24 * v209 + 16);
        if ((re::internal::shadows::g_enablePatchShadows & 1) == 0)
        {
          re::internal::shadows::setParamsOnMaterialParameterBlock(*(v212 + 312), v3 + 2176, *(*(v3 + 232) + 24));
        }

        re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(v812, v3, v212);
        v213 = *(v3 + 1240);
        if (v213 <= v209 + 1)
        {
          v213 = v209 + 1;
        }

        while (v213 - 1 != v209)
        {
          LODWORD(v209) = v209 + 1;
          if ((*(*(v3 + 1224) + 24 * v209 + 8) & 0x80000000) != 0)
          {
            goto LABEL_393;
          }
        }

        LODWORD(v209) = v213;
LABEL_393:
        ;
      }

      v214 = *(v3 + 1288);
      if (v214)
      {
        v215 = 0;
        v216 = (*(v3 + 1272) + 8);
        while (1)
        {
          v217 = *v216;
          v216 += 6;
          if (v217 < 0)
          {
            break;
          }

          if (v214 == ++v215)
          {
            v215 = *(v3 + 1288);
            break;
          }
        }
      }

      else
      {
        v215 = 0;
      }

      if (v215 == v214)
      {
LABEL_401:
        re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v3 + 1256);
        v218 = *(v3 + 1048);
        if (v218)
        {
          v219 = 0;
          v220 = *(v3 + 1032);
          while (1)
          {
            v221 = *v220;
            v220 += 10;
            if (v221 < 0)
            {
              break;
            }

            if (v218 == ++v219)
            {
              LODWORD(v219) = *(v3 + 1048);
              break;
            }
          }
        }

        else
        {
          LODWORD(v219) = 0;
        }

        while (v219 != v218)
        {
          v240 = *(v3 + 1032) + 40 * v219;
          if (!*(v240 + 24))
          {
            if (re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1640, (v240 + 8)))
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1640, (v240 + 8));
            }

            if (re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1592, (v240 + 8)))
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1592, (v240 + 8));
            }

            else
            {
              re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1688, (v240 + 8));
            }
          }

          v241 = *(v3 + 1048);
          if (v241 <= v219 + 1)
          {
            v241 = v219 + 1;
          }

          while (v241 - 1 != v219)
          {
            LODWORD(v219) = v219 + 1;
            if ((*(*(v3 + 1032) + 40 * v219) & 0x80000000) != 0)
            {
              goto LABEL_443;
            }
          }

          LODWORD(v219) = v241;
LABEL_443:
          ;
        }

        v242 = *(v3 + 1720);
        if (v242)
        {
          v243 = 0;
          v244 = (*(v3 + 1704) + 8);
          while (1)
          {
            v245 = *v244;
            v244 += 8;
            if (v245 < 0)
            {
              break;
            }

            if (v242 == ++v243)
            {
              LODWORD(v243) = *(v3 + 1720);
              break;
            }
          }
        }

        else
        {
          LODWORD(v243) = 0;
        }

        while (v243 != v242)
        {
          v246 = *(v3 + 1704) + 32 * v243;
          v247 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, (v246 + 16));
          re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v3 + 1016, *(v246 + 16), *(v246 + 24), v247);
          v248 = *&buf[12];
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v249 = *(v3 + 1032);
            v250 = (v249 + 40 * *&buf[12]);
            v251 = *v250 & 0x7FFFFFFF;
            if (*&buf[16] == 0x7FFFFFFF)
            {
              *(*(v3 + 1024) + 4 * *&buf[8]) = v251;
            }

            else
            {
              *(v249 + 40 * *&buf[16]) = *(v249 + 40 * *&buf[16]) & 0x80000000 | v251;
            }

            *v250 = *(v3 + 1052);
            *(v3 + 1052) = v248;
            --*(v3 + 1044);
            ++*(v3 + 1056);
          }

          v252 = *(v3 + 1720);
          if (v252 <= v243 + 1)
          {
            v252 = v243 + 1;
          }

          while (v252 - 1 != v243)
          {
            v243 = (v243 + 1);
            if ((*(*(v3 + 1704) + 32 * v243 + 8) & 0x80000000) != 0)
            {
              goto LABEL_463;
            }
          }

          LODWORD(v243) = v252;
LABEL_463:
          ;
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v3 + 1208);
        if ((*(v3 + 2048) & 1) == 0)
        {
          *(v3 + 1840) = 1065353216;
          *(v3 + 1844) = xmmword_1E3072DE0;
          *(v3 + 1860) = 3;
          *(v3 + 1864) = xmmword_1E3072DF0;
          *(v3 + 1880) = 0;
          *(v3 + 1882) = 1;
          *(v3 + 1888) = xmmword_1E3072E00;
          *(v3 + 1904) = 1061158912;
          *(v3 + 1908) = 1;
          *(v3 + 1912) = xmmword_1E3072E10;
          *(v3 + 1928) = xmmword_1E3072E20;
          *(v3 + 1944) = 0x3DCCCCCD41F00000;
          *(v3 + 1952) = 1097877340;
          *(v3 + 1956) = 1;
          *(v3 + 1968) = xmmword_1E30476B0;
          *(v3 + 1984) = 1;
          *(v3 + 2000) = 0x3F8000003F2D42C4;
          *(v3 + 2008) = 0x193F800000;
          *(v3 + 2016) = xmmword_1E3072E30;
          *(v3 + 2032) = 1056964608;
          *(v3 + 2040) = 0x40000000;
          *(v3 + 2044) = 256;
          *(v3 + 2048) = 1;
        }

        if ((*(v3 + 2112) & 1) == 0)
        {
          *(v3 + 2064) = 0u;
          *buf = 0u;
          *(v3 + 2080) = 0;
          *&buf[40] = 0;
          *&buf[16] = 0;
          *(v3 + 2088) = xmmword_1E3058120;
          *&buf[24] = xmmword_1E3058120;
          *(v3 + 2104) = 1;
          *(v3 + 2112) = 1;
          re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(buf);
        }

        LOBYTE(v891[0]) = 0;
        if (*(v3 + 1332) || *(v3 + 1380))
        {
          v254 = *(v3 + 1332);
          v255 = *(v3 + 1380);
          memset(v839, 0, 36);
          *(v839[2].i64 + 4) = 0x7FFFFFFFLL;
          buf[0] = 1;
          v875.i32[0] = 0;
          v256 = v839[0];
          *&buf[8] = v839[0].i64[0];
          *&buf[16] = *(v839 + 8);
          memset(v839, 0, 24);
          v257 = v839[1].i32[2];
          v258 = v839[1].i32[3];
          *&buf[32] = *(&v839[1] + 8);
          v259 = v839[2].i32[0];
          v260 = v839[2].i32[1];
          *(&v839[1] + 8) = xmmword_1E3058120;
          if (v891[0])
          {
            if (!*(&v891[0] + 1) || *(&v891[0] + 1) == v256.i64[0])
            {
              *&buf[8] = *(&v891[0] + 1);
              v261 = v891[1];
              v262 = v892;
              *(v891 + 8) = v256;
              *(&v891[1] + 1) = v839[1].i64[0];
              *&v892 = __PAIR64__(v258, v257);
              *(&v892 + 1) = __PAIR64__(v260, v259);
              *&buf[16] = v261;
              *&buf[32] = v262;
            }

            else if (v256.i64[0])
            {
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(v891 + 8, &buf[8]);
              LODWORD(v893) = v893 + 1;
            }

            else
            {
              re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v891 + 8);
            }
          }

          else
          {
            LOBYTE(v891[0]) = 1;
            LODWORD(v893) = 0;
            *(v891 + 8) = v256;
            memset(&buf[8], 0, 24);
            *(&v891[1] + 1) = v839[1].i64[0];
            *&v892 = __PAIR64__(v258, v257);
            *(&v892 + 1) = __PAIR64__(v260, v259);
            *&buf[32] = xmmword_1E3058120;
          }

          if (buf[0] == 1)
          {
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(&buf[8]);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v839);
          re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(v3 + 1304, v3 + 1352, v891 + 8);
        }

        v782 = *(v3 + 288);
        Current = CFAbsoluteTimeGetCurrent();
        v264 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v786 = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v264);
        v265 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v266 = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v265);
        v267 = (*(**(v3 + 40) + 32))(*(v3 + 40));
        v787 = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v267);
        v268 = *(v3 + 2096);
        if (v268)
        {
          v269 = 0;
          v270 = *(v3 + 2080);
          while ((*v270 & 0x80000000) == 0)
          {
            v270 += 98;
            if (v268 == ++v269)
            {
              LODWORD(v269) = *(v3 + 2096);
              break;
            }
          }
        }

        else
        {
          LODWORD(v269) = 0;
        }

        v779 = re::internal::shadows::g_enableWallShadowsBreakthrough;
        if (v269 != v268)
        {
          v271 = *(v3 + 2080);
          v215 = 0x7FFFFFFFLL;
          v272 = *(v3 + 2096);
          do
          {
            v273 = v271 + 392 * v269;
            if (*(v273 + 356))
            {
              v274 = v273 + 328;
              v275 = *(v273 + 352);
              if (v275)
              {
                memset_pattern16(*(v273 + 336), &unk_1E304C660, 4 * v275);
              }

              v276 = *(v274 + 32);
              if (v276)
              {
                v277 = *(v274 + 16);
                do
                {
                  if ((*v277 & 0x80000000) != 0)
                  {
                    *v277 &= ~0x80000000;
                  }

                  v277 += 10;
                  --v276;
                }

                while (v276);
              }

              *(v274 + 28) = 0;
              *(v274 + 32) = 0;
              v278 = *(v274 + 40) + 1;
              *(v274 + 36) = 0x7FFFFFFF;
              *(v274 + 40) = v278;
              v272 = *(v3 + 2096);
            }

            if (v272 <= v269 + 1)
            {
              v279 = v269 + 1;
            }

            else
            {
              v279 = v272;
            }

            while (v279 - 1 != v269)
            {
              LODWORD(v269) = v269 + 1;
              if ((*(v271 + 392 * v269) & 0x80000000) != 0)
              {
                goto LABEL_505;
              }
            }

            LODWORD(v269) = v279;
LABEL_505:
            ;
          }

          while (v269 != v268);
        }

        v795 = *(v3 + 904);
        if (v795)
        {
          v280 = 0;
          v281 = *(v3 + 888);
          while (1)
          {
            v282 = *v281;
            v281 += 26;
            if (v282 < 0)
            {
              break;
            }

            if (v795 == ++v280)
            {
              LODWORD(v280) = *(v3 + 904);
              break;
            }
          }
        }

        else
        {
          LODWORD(v280) = 0;
        }

        v283 = v787;
        v781 = (v3 + 2128);
        if (v280 != v795)
        {
          v284.i64[0] = 0x7F0000007FLL;
          v284.i64[1] = 0x7F0000007FLL;
          v785 = vnegq_f32(v284);
          __asm { FMOV            V13.2S, #1.0 }

          v810 = v266;
          do
          {
            v289 = *(v3 + 888) + 104 * v280;
            v292 = *(v289 + 24);
            v291 = (v289 + 24);
            v290 = v292;
            if (v292)
            {
              re::TransformService::worldMatrixForRendering(to, v782, v290, 1);
            }

            else
            {
              *to = xmmword_1E3047670;
              *&to[16] = xmmword_1E3047680;
              *&to[32] = xmmword_1E30476A0;
              v864 = xmmword_1E30474D0;
            }

            if (v786)
            {
              LODWORD(v293) = (*(*v786 + 24))(v786, *v291);
              if (!v266)
              {
                goto LABEL_531;
              }
            }

            else
            {
              v293 = 1.0;
              if (!v266)
              {
                goto LABEL_531;
              }
            }

            v294 = (*(*v266 + 40))(v266, *v291);
            if (!v294)
            {
              goto LABEL_525;
            }

            v295 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v295)
            {
              v296 = *(v295 + 40);
              if (v296)
              {
                v293 = v293 * *(v294 + 28);
                LODWORD(v294) = (v296 >> *(v294 + 32)) & (*(v294 + 32) == 1);
LABEL_525:
                if (!v283)
                {
                  goto LABEL_532;
                }

                goto LABEL_526;
              }
            }

LABEL_531:
            LOBYTE(v294) = 0;
            if (!v283)
            {
LABEL_532:
              v297 = 0;
              v298 = 0.0;
              v299 = 0.0;
              goto LABEL_533;
            }

LABEL_526:
            (*(*v283 + 40))(buf, v283, *v291);
            v297 = buf[0];
            v298 = 0.0;
            v299 = 0.0;
            v300 = v293;
            if (buf[0] != 1)
            {
              goto LABEL_534;
            }

            re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&buf[4]);
            v299 = v301;
            v298 = *&buf[28];
            if (!*&buf[24])
            {
              if ((v294 & (buf[33] == 2)) != 0)
              {
                v300 = 0.0;
              }

              else
              {
                v300 = v293;
              }

              goto LABEL_534;
            }

LABEL_533:
            v300 = v293;
LABEL_534:
            v302 = *(v3 + 2192);
            v303 = powf(v293, v302);
            v304 = powf(v300, v302);
            v305 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v305 && (*(v305 + 44) & 1) != 0 || re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
            {
              if (*(v3 + 2244) == 1)
              {
                v306 = vmulq_f32(*&to[16], vnegq_f32(*(v3 + 2256)));
                v304 = v304 * (1.0 / ((expf(-(*(v3 + 2240) * (v306.f32[2] + vaddv_f32(*v306.f32)))) * 30.03) + 1.0));
              }

              v790 = 1;
            }

            else
            {
              v790 = 0;
            }

            v307 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v291 - 1);
            memset(buf, 0, 24);
            v308 = 0xBF58476D1CE4E5B9 * (*(v291 - 2) ^ (*(v291 - 2) >> 30));
            v819 = v291 - 2;
            re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v307 + 312, v291 - 2, (0x94D049BB133111EBLL * (v308 ^ (v308 >> 27))) ^ ((0x94D049BB133111EBLL * (v308 ^ (v308 >> 27))) >> 31), buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              if (v297)
              {
                v309 = v298;
              }

              else
              {
                v309 = 0.05;
              }

              if (!v297)
              {
                v299 = 0.0;
              }

              v310 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v307 + 312, *&buf[8], *buf);
              *(v310 + 8) = *v819;
              *(v310 + 16) = v304;
              *(v310 + 20) = v299;
              *(v310 + 24) = v309;
              ++*(v307 + 352);
            }

            v311 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v311)
            {
              v312 = *(v311 + 45);
            }

            else
            {
              v312 = 0;
            }

            v313 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, v819);
            re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(buf, v3 + 920, *(v291 - 2), *(v291 - 1), v313);
            v314 = *&buf[12];
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v797 = 0;
              v315 = 1;
            }

            else
            {
              v797 = *(v3 + 936) + 48 * *&buf[12] + 24;
              v315 = *v797 + *(v3 + 2348) < Current;
            }

            if (LOBYTE(v891[0]) == 1)
            {
              v316 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(buf, v819);
              if (v892)
              {
                v317 = *(*&v891[1] + 4 * (v316 % v892));
                if (v317 != 0x7FFFFFFF)
                {
                  while (1)
                  {
                    v318 = *(&v891[1] + 1) + 32 * v317;
                    v320 = *(v318 + 16);
                    v319 = *(v318 + 24);
                    if (v320 == *v819 && v319 == *(v291 - 1))
                    {
                      break;
                    }

                    v317 = *(*(&v891[1] + 1) + 32 * v317 + 8) & 0x7FFFFFFF;
                    if (v317 == 0x7FFFFFFF)
                    {
                      goto LABEL_562;
                    }
                  }

LABEL_563:
                  v322 = 1;
                  goto LABEL_565;
                }
              }
            }

LABEL_562:
            if (*(v3 + 2168))
            {
              goto LABEL_563;
            }

            v322 = *(v291 + 64);
LABEL_565:
            v805 = v322;
            *&buf[32] = 0;
            memset(buf, 0, 28);
            v875 = v785;
            v323.i64[0] = 0x7F0000007FLL;
            v323.i64[1] = 0x7F0000007FLL;
            v876 = v323;
            v877 = v785;
            v878 = v323;
            v879 = 0u;
            v880 = 0u;
            v881 = 0u;
            v882 = 0u;
            *&v885 = _D13;
            v324 = *(v3 + 2256);
            v883 = 0u;
            v884 = v324;
            v325 = 0.0;
            DWORD2(v885) = 0;
            if (v314 != 0x7FFFFFFF)
            {
              v325 = *v797;
            }

            v813 = v291;
            if (((v315 | v322) & 1) == 0)
            {
              LOBYTE(v792) = 0;
              v788 = 0;
              v337 = 0;
              v802 = 0;
              goto LABEL_662;
            }

            if (v266 && (v326 = (*(*v266 + 40))(v266, *v291)) != 0 && (v327 = v326, (v328 = re::ecs2::EntityComponentCollection::get((*v291 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0) && (v329 = *(v328 + 40)) != 0 && (v330 = *(v327 + 32), ((v329 >> v330) & 1) != 0))
            {
              v331 = *(v327 + 16 * v330 + 48);
              v332 = vmulq_f32(v331, v331);
              v333 = v332.f32[2] + vaddv_f32(*v332.f32);
              if (fabsf(v333) >= 1.0e-10)
              {
                v334 = v333;
                v335 = vrsqrte_f32(LODWORD(v333));
                v336 = vmul_f32(v335, vrsqrts_f32(LODWORD(v334), vmul_f32(v335, v335)));
                v884 = vmulq_n_f32(v331, vmul_f32(v336, vrsqrts_f32(LODWORD(v334), vmul_f32(v336, v336))).f32[0]);
                LODWORD(v330) = *(v327 + 32);
              }

              v792 = v330 == 1;
              v788 = v792 & v779;
            }

            else
            {
              v792 = 0;
              v788 = 0;
            }

            v799 = v312;
            v338 = *(v3 + 1192);
            if (v338)
            {
              v339 = 0;
              v340 = *(v3 + 1176);
              while (1)
              {
                v341 = *v340;
                v340 += 16;
                if (v341 < 0)
                {
                  break;
                }

                if (v338 == ++v339)
                {
                  LODWORD(v339) = *(v3 + 1192);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v339) = 0;
            }

            v783 = v314;
            v342 = v215;
            if (v339 == v338)
            {
              v343 = 0;
              v344 = 0;
            }

            else
            {
              v344 = 0;
              v343 = 0;
              v345 = *(v3 + 1176);
              do
              {
                v346 = v345 + (v339 << 6);
                v347 = *(v346 + 8);
                v348 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v347 ^ (v347 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v347 ^ (v347 >> 30))) >> 27));
                re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v839, v3 + 1112, v347, v348 ^ (v348 >> 31));
                if (v839[0].i32[3] != 0x7FFFFFFF)
                {
                  v349 = *(v3 + 1128) + 40 * v839[0].u32[3];
                  v351 = *(v349 + 16);
                  v350 = v349 + 16;
                  if (v351 == v813[7] && *(v350 + 8) == v819[1])
                  {
                    if (v343)
                    {
                      v352 = *(v346 + 16);
                      v353 = *(v346 + 32);
                      v828 = v352;
                      v829 = v353;
                      if ((v344 & 1) == 0)
                      {
                        v344 = 1;
                      }

                      v826 = v352;
                      v827 = v353;
                      if (v342)
                      {
                        v342 = v342;
                      }

                      else
                      {
                        v342 = 1;
                      }
                    }

                    else
                    {
                      v354 = *(v346 + 32);
                      v828 = *(v346 + 16);
                      v829 = v354;
                      v826 = v828;
                      v827 = v354;
                      v344 = 1;
                      v342 = 1;
                      v343 = 1;
                    }

                    v884 = vnegq_f32(*(v346 + 16));
                  }
                }

                if (v338 <= v339 + 1)
                {
                  v355 = v339 + 1;
                }

                else
                {
                  v355 = v338;
                }

                while (v355 - 1 != v339)
                {
                  LODWORD(v339) = v339 + 1;
                  if ((*(v345 + (v339 << 6)) & 0x80000000) != 0)
                  {
                    goto LABEL_606;
                  }
                }

                LODWORD(v339) = v355;
LABEL_606:
                ;
              }

              while (v339 != v338);
              if (v343)
              {
                goto LABEL_628;
              }
            }

            v356 = v884.i64[1];
            v357 = v884.i64[0];
            v358 = (*(**(v3 + 248) + 104))(*(v3 + 248));
            v359 = v813;
            v360 = re::ecs2::EntityComponentCollection::getOrAdd((*v813 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v358)
            {
              v361 = *v813;
              do
              {
                v362 = v361;
                v361 = *(v361 + 32);
              }

              while (v361);
              (*(v358 + 16))(v358, *(v362 + 24), v360, v357, v356, v792);
              v359 = v813;
            }

            v363 = re::ecs2::EntityComponentCollection::get((*v359 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (!v363 || ((v805 | *(v363 + 24)) & 1) == 0)
            {
              v366 = 0;
              v365 = 0;
              goto LABEL_626;
            }

            if (*(v363 + 25) == 1)
            {
              v364 = *(v363 + 32);
              v831 = *(v363 + 48);
              *(v839 + 15) = v364;
              *(&v839[1] + 15) = v831;
              v365 = 1;
            }

            else
            {
              v365 = 0;
            }

            if (*(v363 + 64) == 1)
            {
              v367 = *(v363 + 80);
              v831 = *(v363 + 96);
              *&location[15] = v367;
              *&location[31] = v831;
              v780 = 1;
              if (!v365)
              {
                goto LABEL_623;
              }

LABEL_622:
              *&v836[7] = *(v839 + 15);
              v837 = *(&v839[1] + 15);
              goto LABEL_623;
            }

            v780 = 0;
            if (v365)
            {
              goto LABEL_622;
            }

LABEL_623:
            if (v780)
            {
              *&v833[7] = *&location[15];
              v834 = *&location[31];
            }

            v366 = 1;
LABEL_626:
            if (v366 == v343)
            {
              if ((v343 & 1) == 0)
              {
                v802 = 0;
                v283 = v787;
                v215 = v342;
                v291 = v813;
                v312 = v799;
                v314 = v783;
                goto LABEL_658;
              }

LABEL_628:
              LOBYTE(v365) = v344;
              v283 = v787;
              v215 = v342;
              v291 = v813;
              if (v215)
              {
                goto LABEL_637;
              }

              goto LABEL_635;
            }

            if (v365)
            {
              v828 = *&v836[7];
              v829 = v837;
            }

            v283 = v787;
            v291 = v813;
            if (v780)
            {
              v826 = *&v833[7];
              v827 = v834;
            }

            v215 = v780;
            if (v780)
            {
              goto LABEL_637;
            }

LABEL_635:
            if (v365)
            {
              v826 = v828;
              v827 = v829;
              v215 = 1;
LABEL_637:
              v802 = 1;
              goto LABEL_639;
            }

            v802 = 0;
LABEL_639:
            v368 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v819 + 1);
            memset(v839, 0, 24);
            v369 = 0xBF58476D1CE4E5B9 * (*v819 ^ (*v819 >> 30));
            re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v839, v368 + 168, *v819, (0x94D049BB133111EBLL * (v369 ^ (v369 >> 27))) ^ ((0x94D049BB133111EBLL * (v369 ^ (v369 >> 27))) >> 31));
            v370 = v839[0].u32[3];
            if (v839[0].i32[3] == 0x7FFFFFFF)
            {
              v371 = re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v368 + 168, v839[0].u32[2], v839[0].u64[0]);
              *(v371 + 8) = *v819;
              *(v371 + 16) = v365;
              if (v365)
              {
                v372 = v829;
                *(v371 + 32) = v828;
                *(v371 + 48) = v372;
              }

              *(v371 + 64) = v215;
              v314 = v783;
              if (v215)
              {
                v373 = v827;
                *(v371 + 80) = v826;
                *(v371 + 96) = v373;
              }

              ++*(v368 + 208);
              v312 = v799;
              goto LABEL_658;
            }

            ++*(v368 + 208);
            v374 = *(v368 + 184) + (v370 << 7);
            v376 = *(v374 + 16);
            v375 = v374 + 16;
            if (v376)
            {
              v314 = v783;
              if ((v365 & 1) == 0)
              {
                *v375 = 0;
                goto LABEL_651;
              }
            }

            else
            {
              v314 = v783;
              if ((v365 & 1) == 0)
              {
                goto LABEL_651;
              }

              *v375 = 1;
            }

            v377 = v829;
            *(v375 + 16) = v828;
            *(v375 + 32) = v377;
LABEL_651:
            if (*(v375 + 48))
            {
              v312 = v799;
              if (v215)
              {
                goto LABEL_656;
              }

              *(v375 + 48) = 0;
            }

            else
            {
              v312 = v799;
              if (v215)
              {
                *(v375 + 48) = 1;
LABEL_656:
                v378 = v827;
                *(v375 + 64) = v826;
                *(v375 + 80) = v378;
              }
            }

LABEL_658:
            v337 = v314 == 0x7FFFFFFF || *(v797 + 9) != v802;
            v325 = Current;
LABEL_662:
            v379 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v3 + 1064, v819 + 1);
            if (v379)
            {
              v800 = *v379 != 0;
            }

            else
            {
              v800 = 0;
            }

            if (v314 == 0x7FFFFFFF)
            {
              v380 = 0;
              v381 = v800;
            }

            else
            {
              v381 = v800;
              v380 = *(v797 + 8) != v800;
            }

            if ((v337 | v805 | v380))
            {
              if (*(v3 + 328))
              {
                v806 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v3 + 320));
              }

              else
              {
                v806 = 0;
              }

              v382 = 1.0 / v303;
              if (v303 < 0.0001)
              {
                v382 = 1.0;
              }

              *&v885 = __PAIR64__(LODWORD(v304), LODWORD(v382));
              BYTE8(v885) = v312 & 1;
              BYTE11(v885) = (v790 | v312) & 1;
              BYTE9(v885) = v788;
              BYTE10(v885) = v792;
              *&v886 = v325;
              v880 = *to;
              v881 = *&to[16];
              v882 = *&to[32];
              v883 = v864;
              v839[2].i64[0] = 0;
              memset(v839, 0, 28);
              v383 = v291[3];
              v784 = v215;
              if (v383 && (re::DynamicArray<re::RigNodeConstraint>::setCapacity(v839, v383), (v384 = v291[3]) != 0))
              {
                v385 = 0;
                v386 = v291[5];
                v387 = 8 * v384;
                do
                {
                  v388 = *v386;
                  v389 = *(*v386 + 240);
                  if (v389)
                  {
                    if (v266)
                    {
                      v390 = (*(*v266 + 40))(v266, *v386);
                      if (v390)
                      {
                        LODWORD(v266) = *(v390 + 32);
                      }

                      else
                      {
                        LOBYTE(v266) = 0;
                      }
                    }

                    v391 = *(v388 + 312);
                    v392 = re::ecs2::EntityComponentCollection::get((v388 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    v393 = re::ecs2::EntityComponentCollection::get((v388 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    if (v392)
                    {
                      if (*(v392 + 27) == 1)
                      {
                        v394 = *(v392 + 40);
                        _ZF = v394 == 0;
                        v395 = v394 & (1 << v266);
                        v397 = _ZF || v395 != 0;
                      }

                      else
                      {
                        v397 = 0;
                      }

                      v266 = v810;
                      v385 = v397 | v385 & 1;
                      v398 = *(v392 + 36) == 1;
                    }

                    else
                    {
                      v398 = 0;
                      if (v393)
                      {
                        v385 = (v393[25] | v385 & 1) != 0;
                      }

                      v266 = v810;
                    }

                    v399 = *(v389 + 76) == 1 && *(v389 + 64) != 0;
                    v400 = v839[1].i64[0];
                    if (v839[1].i64[0] >= v839[0].i64[1])
                    {
                      v401 = v839[1].i64[0] + 1;
                      if (v839[0].i64[1] < (v839[1].i64[0] + 1))
                      {
                        if (v839[0].i64[0])
                        {
                          v402 = 2 * v839[0].i64[1];
                          if (!v839[0].i64[1])
                          {
                            v402 = 8;
                          }

                          if (v402 <= v401)
                          {
                            v403 = v839[1].i64[0] + 1;
                          }

                          else
                          {
                            v403 = v402;
                          }

                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v839, v403);
                        }

                        else
                        {
                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v839, v401);
                          ++v839[1].i32[2];
                        }
                      }

                      v400 = v839[1].i64[0];
                    }

                    v404 = v839[2].i64[0] + 16 * v400;
                    *v404 = v391;
                    *(v404 + 8) = v398;
                    *(v404 + 9) = v399;
                    v839[1].i64[0] = v400 + 1;
                    ++v839[1].i32[2];
                  }

                  ++v386;
                  v387 -= 8;
                }

                while (v387);
              }

              else
              {
                v385 = 0;
              }

              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(buf, v839);
              if (v839[0].i64[0] && v839[2].i64[0])
              {
                (*(*v839[0].i64[0] + 40))();
              }

              *location = xmmword_1E30476B0;
              re::internal::shadows::generateAABBsForCluster(v813, location, &v880, v806, v839);
              v877 = v839[2];
              v878 = v840;
              v879 = v841;
              v875 = v839[0];
              v876 = v839[1];
              v381 = v800;
              if (re::internal::shadows::g_enableShadowFlattening == 1)
              {
                v405 = re::ecs2::EntityComponentCollection::getOrAdd((*v813 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                re::AABB::transform(&v875, &v880, v839);
                v406 = v839[1];
                *(v405 + 32) = v839[0];
                *(v405 + 48) = v406;
              }

              v407 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v819 + 1);
              v408 = v407;
              if (((v802 | v800) & v385) != 0)
              {
                memset(v839, 0, 24);
                v409 = 0xBF58476D1CE4E5B9 * (*v819 ^ (*v819 >> 30));
                re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v839, v407 + 120, *v819, (0x94D049BB133111EBLL * (v409 ^ (v409 >> 27))) ^ ((0x94D049BB133111EBLL * (v409 ^ (v409 >> 27))) >> 31));
                v410 = v839[0].u32[3];
                v283 = v787;
                v215 = v784;
                if (v839[0].i32[3] == 0x7FFFFFFF)
                {
                  v411 = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v408 + 120, v839[0].u32[2], v839[0].u64[0]);
                  *(v411 + 8) = *v819;
                  re::DynamicArray<re::MeshShadowCasterInfo>::DynamicArray(v411 + 16, buf);
                  *(v411 + 192) = v883;
                  *(v411 + 208) = v884;
                  *(v411 + 224) = v885;
                  *(v411 + 240) = v886;
                  *(v411 + 128) = v879;
                  *(v411 + 144) = v880;
                  *(v411 + 160) = v881;
                  *(v411 + 176) = v882;
                  *(v411 + 64) = v875;
                  *(v411 + 80) = v876;
                  *(v411 + 96) = v877;
                  *(v411 + 112) = v878;
                  ++*(v408 + 160);
                }

                else
                {
                  ++*(v408 + 160);
                  v412 = *(v408 + 136) + 272 * v410 + 16;
                  if (v412 != buf)
                  {
                    if (*v412)
                    {
                      if (*buf)
                      {
                        re::DynamicArray<re::RigNodeChannel>::copy(v412, buf);
                      }

                      else
                      {
                        *(v412 + 16) = 0;
                      }

                      ++*(v412 + 24);
                    }

                    else if (*buf)
                    {
                      v413 = *&buf[16];
                      *v412 = *buf;
                      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v412, v413);
                      ++*(v412 + 24);
                      re::DynamicArray<re::RigNodeChannel>::copy(v412, buf);
                    }
                  }

                  v414 = v875;
                  v415 = v876;
                  v416 = v878;
                  *(v412 + 80) = v877;
                  *(v412 + 96) = v416;
                  *(v412 + 48) = v414;
                  *(v412 + 64) = v415;
                  v417 = v879;
                  v418 = v880;
                  v419 = v882;
                  *(v412 + 144) = v881;
                  *(v412 + 160) = v419;
                  *(v412 + 112) = v417;
                  *(v412 + 128) = v418;
                  v420 = v883;
                  v421 = v884;
                  v422 = v885;
                  *(v412 + 224) = v886;
                  *(v412 + 192) = v421;
                  *(v412 + 208) = v422;
                  *(v412 + 176) = v420;
                }
              }

              else
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v407 + 216, v819);
                v283 = v787;
                v215 = v784;
              }
            }

            memset(v839, 0, 24);
            v423 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(location, v819);
            re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v839, v3 + 920, *v819, v819[1], v423);
            if (v839[0].i32[3] == 0x7FFFFFFF)
            {
              v424 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::allocEntry(v3 + 920, v839[0].u32[2], v839[0].u64[0]);
              *(v424 + 8) = *v819;
              *(v424 + 24) = v325;
              *(v424 + 32) = v381;
              *(v424 + 33) = v802;
              v425 = *(v3 + 960);
            }

            else
            {
              v425 = *(v3 + 960);
              v426 = *(v3 + 936) + 48 * v839[0].u32[3];
              *(v426 + 24) = v325;
              *(v426 + 32) = v381;
              *(v426 + 33) = v802;
            }

            *(v3 + 960) = v425 + 1;
            if (*buf && *&buf[32])
            {
              (*(**buf + 40))();
            }

            v427 = *(v3 + 904);
            if (v427 <= v280 + 1)
            {
              v427 = v280 + 1;
            }

            while (v427 - 1 != v280)
            {
              LODWORD(v280) = v280 + 1;
              if ((*(*(v3 + 888) + 104 * v280) & 0x80000000) != 0)
              {
                goto LABEL_743;
              }
            }

            LODWORD(v280) = v427;
LABEL_743:
            ;
          }

          while (v280 != v795);
        }

        v428 = *(v3 + 1624);
        if (v428)
        {
          v429 = 0;
          v430 = (*(v3 + 1608) + 8);
          while (1)
          {
            v431 = *v430;
            v430 += 8;
            if (v431 < 0)
            {
              break;
            }

            if (v428 == ++v429)
            {
              LODWORD(v429) = *(v3 + 1624);
              break;
            }
          }
        }

        else
        {
          LODWORD(v429) = 0;
        }

LABEL_757:
        while (v429 != v428)
        {
          v432 = *(v3 + 1608) + 32 * v429;
          v433 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v432 + 24));
          re::DynamicArray<re::TransitionCondition *>::add(v433, (v432 + 16));
          re::DynamicArray<unsigned long long>::remove(v433 + 40, (v432 + 16));
          re::DynamicArray<unsigned long long>::remove(v433 + 80, (v432 + 16));
          v434 = *(v3 + 1624);
          if (v434 <= v429 + 1)
          {
            v434 = v429 + 1;
          }

          while (v434 - 1 != v429)
          {
            v429 = (v429 + 1);
            if ((*(*(v3 + 1608) + 32 * v429 + 8) & 0x80000000) != 0)
            {
              goto LABEL_757;
            }
          }

          LODWORD(v429) = v434;
        }

        v435 = (*(**(v3 + 248) + 40))(*(v3 + 248));
        if (*(v3 + 1428) | *(v435 + 21))
        {
          v436 = v435;
          v437 = *(v3 + 1428);
          v438 = *(v436 + 21);
          memset(buf, 0, 36);
          *&buf[36] = 0x7FFFFFFFLL;
          re::HashSet<re::SceneShadowClusterID,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::unionSet(v3 + 1400, v436 + 56, buf);
          re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v436 + 56);
          v439 = *&buf[32];
          if (*&buf[32])
          {
            v440 = 0;
            v441 = (*&buf[16] + 8);
            while (1)
            {
              v442 = *v441;
              v441 += 8;
              if (v442 < 0)
              {
                break;
              }

              if (*&buf[32] == ++v440)
              {
                LODWORD(v440) = *&buf[32];
                break;
              }
            }
          }

          else
          {
            LODWORD(v440) = 0;
          }

          if (v440 != *&buf[32])
          {
            v443 = *&buf[16];
            do
            {
              v444 = (v443 + 32 * v440 + 16);
              if (LOBYTE(v891[0]) != 1 || !re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v891 + 8, v444))
              {
                v445 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v839, v444);
                re::HashTable<re::SceneShadowClusterID,re::ecs2::MeshShadowSystem::LastUpdateData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v839, v3 + 920, *v444, v444[1], v445);
                v446 = v839[0].i32[3];
                if (v839[0].i32[3] != 0x7FFFFFFF)
                {
                  v447 = *(v3 + 936);
                  v448 = (v447 + 48 * v839[0].u32[3]);
                  v449 = *v448 & 0x7FFFFFFF;
                  if (v839[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v3 + 928) + 4 * v839[0].u32[2]) = v449;
                  }

                  else
                  {
                    *(v447 + 48 * v839[1].u32[0]) = *(v447 + 48 * v839[1].u32[0]) & 0x80000000 | v449;
                  }

                  *v448 = *(v3 + 956);
                  *(v3 + 956) = v446;
                  --*(v3 + 948);
                  ++*(v3 + 960);
                }

                v450 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, v444 + 1);
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v450 + 216, v444);
                v451 = 0xBF58476D1CE4E5B9 * (*v444 ^ (*v444 >> 30));
                re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v839, v450 + 120, *v444, (0x94D049BB133111EBLL * (v451 ^ (v451 >> 27))) ^ ((0x94D049BB133111EBLL * (v451 ^ (v451 >> 27))) >> 31));
                v452 = v839[0].u32[3];
                if (v839[0].i32[3] != 0x7FFFFFFF)
                {
                  v453 = *(v450 + 136);
                  v454 = (v453 + 272 * v839[0].u32[3]);
                  v455 = *v454 & 0x7FFFFFFF;
                  if (v839[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v450 + 128) + 4 * v839[0].u32[2]) = v455;
                  }

                  else
                  {
                    *(v453 + 272 * v839[1].u32[0]) = *(v453 + 272 * v839[1].u32[0]) & 0x80000000 | v455;
                  }

                  v456 = *v454;
                  if (*v454 < 0)
                  {
                    *v454 = v456 & 0x7FFFFFFF;
                    re::DynamicArray<unsigned long>::deinit((v454 + 4));
                    v453 = *(v450 + 136);
                    v456 = *(v453 + 272 * v452);
                  }

                  *(v453 + 272 * v452) = *(v450 + 156) | v456 & 0x80000000;
                  --*(v450 + 148);
                  v457 = *(v450 + 160) + 1;
                  *(v450 + 156) = v452;
                  *(v450 + 160) = v457;
                }

                v458 = 0xBF58476D1CE4E5B9 * (*v444 ^ (*v444 >> 30));
                re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v839, v450 + 168, *v444, (0x94D049BB133111EBLL * (v458 ^ (v458 >> 27))) ^ ((0x94D049BB133111EBLL * (v458 ^ (v458 >> 27))) >> 31));
                v459 = v839[0].i32[3];
                if (v839[0].i32[3] != 0x7FFFFFFF)
                {
                  v460 = *(v450 + 184);
                  v461 = (v460 + (v839[0].u32[3] << 7));
                  v462 = *v461 & 0x7FFFFFFF;
                  if (v839[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v450 + 176) + 4 * v839[0].u32[2]) = v462;
                  }

                  else
                  {
                    *(v460 + (v839[1].u32[0] << 7)) = *(v460 + (v839[1].u32[0] << 7)) & 0x80000000 | v462;
                  }

                  *v461 = *(v450 + 204);
                  --*(v450 + 196);
                  v463 = *(v450 + 208) + 1;
                  *(v450 + 204) = v459;
                  *(v450 + 208) = v463;
                }

                v464 = 0xBF58476D1CE4E5B9 * (*v444 ^ (*v444 >> 30));
                re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v450 + 312, v444, (0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) ^ ((0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) >> 31), v839);
                v465 = v839[0].u32[3];
                if (v839[0].i32[3] != 0x7FFFFFFF)
                {
                  v466 = *(v450 + 328);
                  v467 = *(v466 + 40 * v839[0].u32[3]) & 0x7FFFFFFF;
                  if (v839[1].i32[0] == 0x7FFFFFFF)
                  {
                    *(*(v450 + 320) + 4 * v839[0].u32[2]) = v467;
                    v465 = v839[0].u32[3];
                  }

                  else
                  {
                    *(v466 + 40 * v839[1].u32[0]) = *(v466 + 40 * v839[1].u32[0]) & 0x80000000 | v467;
                  }

                  *(v466 + 40 * v465) = *(v450 + 348);
                  *(v450 + 348) = v465;
                  --*(v450 + 340);
                  ++*(v450 + 352);
                }
              }

              v443 = *&buf[16];
              if (*&buf[32] <= (v440 + 1))
              {
                v468 = v440 + 1;
              }

              else
              {
                v468 = *&buf[32];
              }

              while (v468 - 1 != v440)
              {
                v440 = (v440 + 1);
                if ((*(*&buf[16] + 32 * v440 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_799;
                }
              }

              LODWORD(v440) = v468;
LABEL_799:
              ;
            }

            while (v440 != v439);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(buf);
        }

        v469 = *(v3 + 1720);
        if (v469)
        {
          v470 = 0;
          v471 = (*(v3 + 1704) + 8);
          while (1)
          {
            v472 = *v471;
            v471 += 8;
            if (v472 < 0)
            {
              break;
            }

            if (v469 == ++v470)
            {
              LODWORD(v470) = *(v3 + 1720);
              break;
            }
          }
        }

        else
        {
          LODWORD(v470) = 0;
        }

LABEL_814:
        while (v470 != v469)
        {
          v473 = *(v3 + 1704) + 32 * v470;
          v474 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v473 + 24));
          re::DynamicArray<re::TransitionCondition *>::add((v474 + 80), (v473 + 16));
          re::DynamicArray<unsigned long long>::remove(v474 + 40, (v473 + 16));
          re::DynamicArray<unsigned long long>::remove(v474, (v473 + 16));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v474 + 264, (v473 + 16));
          v475 = *(v3 + 1720);
          if (v475 <= v470 + 1)
          {
            v475 = v470 + 1;
          }

          while (v475 - 1 != v470)
          {
            v470 = (v470 + 1);
            if ((*(*(v3 + 1704) + 32 * v470 + 8) & 0x80000000) != 0)
            {
              goto LABEL_814;
            }
          }

          LODWORD(v470) = v475;
        }

        v476 = *(v3 + 1672);
        if (v476)
        {
          v477 = 0;
          v478 = (*(v3 + 1656) + 8);
          while (1)
          {
            v479 = *v478;
            v478 += 8;
            if (v479 < 0)
            {
              break;
            }

            if (v476 == ++v477)
            {
              LODWORD(v477) = *(v3 + 1672);
              break;
            }
          }
        }

        else
        {
          LODWORD(v477) = 0;
        }

LABEL_843:
        while (v477 != v476)
        {
          v480 = *(v3 + 1656) + 32 * v477;
          v481 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v480 + 24));
          v482 = v481[2];
          if (v482)
          {
            v483 = 8 * v482;
            v484 = v481[4];
            while (*v484 != *(v480 + 16))
            {
              ++v484;
              v483 -= 8;
              if (!v483)
              {
                goto LABEL_829;
              }
            }
          }

          else
          {
            v484 = v481[4];
          }

          if (v484 == (v481[4] + 8 * v482))
          {
LABEL_829:
            v485 = v481[12];
            if (v485)
            {
              v486 = 8 * v485;
              v487 = v481[14];
              while (*v487 != *(v480 + 16))
              {
                ++v487;
                v486 -= 8;
                if (!v486)
                {
                  goto LABEL_836;
                }
              }
            }

            else
            {
              v487 = v481[14];
            }

            if (v487 == (v481[14] + 8 * v485))
            {
LABEL_836:
              re::DynamicArray<re::TransitionCondition *>::add((v481 + 5), (v480 + 16));
            }
          }

          v488 = *(v3 + 1672);
          if (v488 <= v477 + 1)
          {
            v488 = v477 + 1;
          }

          while (v488 - 1 != v477)
          {
            v477 = (v477 + 1);
            if ((*(*(v3 + 1656) + 32 * v477 + 8) & 0x80000000) != 0)
            {
              goto LABEL_843;
            }
          }

          LODWORD(v477) = v488;
        }

        v489 = *(v3 + 2096);
        if (v489)
        {
          v490 = 0;
          v491 = *(v3 + 2080);
          while ((*v491 & 0x80000000) == 0)
          {
            v491 += 98;
            if (v489 == ++v490)
            {
              LODWORD(v490) = *(v3 + 2096);
              break;
            }
          }
        }

        else
        {
          LODWORD(v490) = 0;
        }

        if (v490 != v489)
        {
          v492 = *(v3 + 2096);
          do
          {
            v493 = *(v3 + 2080) + 392 * v490;
            if (*(v493 + 308))
            {
              v494 = v493 + 280;
              v495 = *(v493 + 304);
              if (v495)
              {
                memset_pattern16(*(v493 + 288), &unk_1E304C660, 4 * v495);
              }

              v496 = *(v494 + 32);
              if (v496)
              {
                v497 = 0;
                for (j = 0; j < v496; ++j)
                {
                  v499 = *(v494 + 16);
                  v500 = *(v499 + v497);
                  if (v500 < 0)
                  {
                    *(v499 + v497) = v500 & 0x7FFFFFFF;
                    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v499 + v497 + 16));
                    v496 = *(v494 + 32);
                  }

                  v497 += 72;
                }
              }

              *(v494 + 28) = 0;
              *(v494 + 32) = 0;
              v501 = *(v494 + 40) + 1;
              *(v494 + 36) = 0x7FFFFFFF;
              *(v494 + 40) = v501;
              v492 = *(v3 + 2096);
            }

            if (v492 <= v490 + 1)
            {
              v502 = v490 + 1;
            }

            else
            {
              v502 = v492;
            }

            while (v502 - 1 != v490)
            {
              LODWORD(v490) = v490 + 1;
              if ((*(*(v3 + 2080) + 392 * v490) & 0x80000000) != 0)
              {
                goto LABEL_868;
              }
            }

            LODWORD(v490) = v502;
LABEL_868:
            ;
          }

          while (v490 != v489);
        }

        v503 = *(v3 + 1144);
        if (v503)
        {
          v504 = 0;
          v505 = *(v3 + 1128);
          while (1)
          {
            v506 = *v505;
            v505 += 10;
            if (v506 < 0)
            {
              break;
            }

            if (v503 == ++v504)
            {
              LODWORD(v504) = *(v3 + 1144);
              break;
            }
          }
        }

        else
        {
          LODWORD(v504) = 0;
        }

        while (v504 != v503)
        {
          v507 = *(v3 + 1128);
          v508 = v507 + 40 * v504;
          v510 = *(v508 + 8);
          v509 = (v508 + 8);
          v511 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v510 ^ (v510 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v510 ^ (v510 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v3 + 1160, v510, v511 ^ (v511 >> 31));
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v512 = v507 + 40 * v504;
            v513 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v3 + 2064, (v512 + 24));
            memset(buf, 0, sizeof(buf));
            *&buf[36] = 0x7FFFFFFF;
            memset(v839, 0, 24);
            v515 = *(v512 + 16);
            v514 = (v512 + 16);
            v516 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v515 ^ (v515 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v515 ^ (v515 >> 30))) >> 27));
            re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v513 + 264, v514, v516 ^ (v516 >> 31), v839);
            if (v839[0].i32[3] == 0x7FFFFFFF)
            {
              v517 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v513 + 264, v839[0].u32[2], v839[0].u64[0]);
              *(v517 + 8) = *v514;
              *(v517 + 56) = 0;
              *(v517 + 16) = *buf;
              *buf = 0;
              *&buf[8] = 0;
              *(v517 + 32) = *&buf[16];
              *&buf[16] = 0;
              *(v517 + 40) = *&buf[24];
              *&buf[24] = xmmword_1E3058120;
              ++*(v513 + 304);
            }

            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
            v518 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v513 + 264, v514);
            v519 = v518;
            v520 = 0xBF58476D1CE4E5B9 * (*v509 ^ (*v509 >> 30));
            v521 = (0x94D049BB133111EBLL * (v520 ^ (v520 >> 27))) ^ ((0x94D049BB133111EBLL * (v520 ^ (v520 >> 27))) >> 31);
            v522 = *(v518 + 24);
            if (v522)
            {
              v523 = v521 % v522;
              v524 = *(*(v518 + 8) + 4 * (v521 % v522));
              if (v524 != 0x7FFFFFFF)
              {
                v525 = *(v518 + 16);
                while (*(v525 + 24 * v524 + 16) != *v509)
                {
                  LODWORD(v524) = *(v525 + 24 * v524 + 8) & 0x7FFFFFFF;
                  if (v524 == 0x7FFFFFFF)
                  {
                    goto LABEL_886;
                  }
                }

                goto LABEL_887;
              }
            }

            else
            {
              LODWORD(v523) = 0;
            }

LABEL_886:
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(v518, v523, v521, v509, v509);
            ++*(v519 + 40);
          }

LABEL_887:
          v526 = *(v3 + 1144);
          if (v526 <= v504 + 1)
          {
            v526 = v504 + 1;
          }

          while (v526 - 1 != v504)
          {
            LODWORD(v504) = v504 + 1;
            if ((*(*(v3 + 1128) + 40 * v504) & 0x80000000) != 0)
            {
              goto LABEL_893;
            }
          }

          LODWORD(v504) = v526;
LABEL_893:
          ;
        }

        v793 = (v3 + 1840);
        if ((*(v3 + 2352) & 1) != 0 && *(v3 + 2112) == 1)
        {
          v803 = *(v3 + 2096);
          if (v803)
          {
            v527 = 0;
            v528 = *(v3 + 2080);
            while ((*v528 & 0x80000000) == 0)
            {
              v528 += 98;
              if (v803 == ++v527)
              {
                LODWORD(v527) = *(v3 + 2096);
                break;
              }
            }
          }

          else
          {
            LODWORD(v527) = 0;
          }

          while (v527 != v803)
          {
            v529 = *(v3 + 2080) + 392 * v527;
            v811 = *(v529 + 260);
            v820 = *(v529 + 32);
            v807 = *(v529 + 112);
            if (*(v529 + 164) == *(v3 + 1764))
            {
              v530 = *(v529 + 168);
              if (v530)
              {
                v531 = 0;
                v532 = *(v529 + 152);
                while ((*v532 & 0x80000000) == 0)
                {
                  v532 += 68;
                  if (v530 == ++v531)
                  {
                    LODWORD(v531) = *(v529 + 168);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v531) = 0;
              }

              if (v531 == v530)
              {
                v533 = 0;
              }

              else
              {
                do
                {
                  v534 = *(v529 + 8);
                  *buf = *(*(v529 + 152) + 272 * v531 + 8);
                  *&buf[8] = v534;
                  v535 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1736, buf);
                  if (!v535)
                  {
                    break;
                  }

                  v536 = *(v529 + 168);
                  if (v536 <= v531 + 1)
                  {
                    v536 = v531 + 1;
                  }

                  while (v536 - 1 != v531)
                  {
                    LODWORD(v531) = v531 + 1;
                    if ((*(*(v529 + 152) + 272 * v531) & 0x80000000) != 0)
                    {
                      goto LABEL_920;
                    }
                  }

                  LODWORD(v531) = v536;
LABEL_920:
                  ;
                }

                while (v531 != v530);
                v533 = !v535;
              }
            }

            else
            {
              v533 = 1;
            }

            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1736);
            v537 = *(v529 + 168);
            if (v537)
            {
              v538 = 0;
              v539 = *(v529 + 152);
              while ((*v539 & 0x80000000) == 0)
              {
                v539 += 68;
                if (v537 == ++v538)
                {
                  LODWORD(v538) = *(v529 + 168);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v538) = 0;
            }

LABEL_934:
            while (v538 != v537)
            {
              v540 = *(v529 + 8);
              *buf = *(*(v529 + 152) + 272 * v538 + 8);
              *&buf[8] = v540;
              re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1736, buf);
              v541 = *(v529 + 168);
              if (v541 <= v538 + 1)
              {
                v541 = v538 + 1;
              }

              while (v541 - 1 != v538)
              {
                LODWORD(v538) = v538 + 1;
                if ((*(*(v529 + 152) + 272 * v538) & 0x80000000) != 0)
                {
                  goto LABEL_934;
                }
              }

              LODWORD(v538) = v541;
            }

            v542 = *(v529 + 72);
            if (v542 == *(v3 + 1812))
            {
              if (!v542)
              {
                v814 = 0;
                goto LABEL_943;
              }

              v543 = *(v529 + 88);
              v544 = 8 * v542 - 8;
              do
              {
                v545 = *v543++;
                v546 = *(v529 + 8);
                *buf = v545;
                *&buf[8] = v546;
                v547 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::contains(v3 + 1784, buf);
                if (!v547)
                {
                  break;
                }

                v548 = v544;
                v544 -= 8;
              }

              while (v548);
              v549 = !v547;
            }

            else
            {
              v549 = 1;
            }

            v814 = v549;
LABEL_943:
            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1784);
            v551 = *(v529 + 72);
            if (v551)
            {
              v552 = *(v529 + 88);
              v553 = 8 * v551;
              do
              {
                v554 = *v552++;
                v555 = *(v529 + 8);
                *buf = v554;
                *&buf[8] = v555;
                v550 = re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1784, buf);
                v553 -= 8;
              }

              while (v553);
            }

            if (v811)
            {
              v556 = 1;
            }

            else
            {
              v556 = v533;
            }

            if (v820)
            {
              v556 = 1;
            }

            if (((v556 | v814) & 1) != 0 || v807)
            {
              v557 = *re::shadowLogObjects(v550);
              v558 = os_log_type_enabled(v557, OS_LOG_TYPE_DEFAULT);
              if (v558)
              {
                v559 = *(v3 + 2336);
                v560 = *(v529 + 8);
                *buf = 134218240;
                *&buf[4] = v559;
                *&buf[12] = 2048;
                *&buf[14] = v560;
                _os_log_impl(&dword_1E1C61000, v557, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: ============= Updating Shadow %llu for scene %llu =============", buf, 0x16u);
              }

              if (v533)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v561 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v561 = (v3 + 2369);
                }

                *v561 = 0;
                v562 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: upserting %u clusters", *(v529 + 164));
                v563 = *(v529 + 168);
                if (v563)
                {
                  v564 = 0;
                  v565 = *(v529 + 152);
                  while ((*v565 & 0x80000000) == 0)
                  {
                    v565 += 68;
                    if (v563 == ++v564)
                    {
                      LODWORD(v564) = *(v529 + 168);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v564) = 0;
                }

LABEL_972:
                while (v564 != v563)
                {
                  v562 = re::DynamicString::appendf((v3 + 2360), " %llu", *(*(v529 + 152) + 272 * v564 + 8));
                  v566 = *(v529 + 168);
                  if (v566 <= v564 + 1)
                  {
                    v566 = v564 + 1;
                  }

                  while (v566 - 1 != v564)
                  {
                    LODWORD(v564) = v564 + 1;
                    if ((*(*(v529 + 152) + 272 * v564) & 0x80000000) != 0)
                    {
                      goto LABEL_972;
                    }
                  }

                  LODWORD(v564) = v566;
                }

                v567 = *re::shadowLogObjects(v562);
                v558 = os_log_type_enabled(v567, OS_LOG_TYPE_DEFAULT);
                if (v558)
                {
                  v568 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v568 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v568;
                  _os_log_impl(&dword_1E1C61000, v567, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v811)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v569 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v569 = (v3 + 2369);
                }

                *v569 = 0;
                v570 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: removing %u clusters", *(v529 + 260));
                v571 = *(v529 + 264);
                if (v571)
                {
                  v572 = 0;
                  v573 = (*(v529 + 248) + 8);
                  while (1)
                  {
                    v574 = *v573;
                    v573 += 6;
                    if (v574 < 0)
                    {
                      break;
                    }

                    if (v571 == ++v572)
                    {
                      LODWORD(v572) = *(v529 + 264);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v572) = 0;
                }

LABEL_993:
                while (v572 != v571)
                {
                  v570 = re::DynamicString::appendf((v3 + 2360), " %llu", *(*(v529 + 248) + 24 * v572 + 16));
                  v575 = *(v529 + 264);
                  if (v575 <= v572 + 1)
                  {
                    v575 = v572 + 1;
                  }

                  while (v575 - 1 != v572)
                  {
                    LODWORD(v572) = v572 + 1;
                    if ((*(*(v529 + 248) + 24 * v572 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_993;
                    }
                  }

                  LODWORD(v572) = v575;
                }

                v576 = *re::shadowLogObjects(v570);
                v558 = os_log_type_enabled(v576, OS_LOG_TYPE_DEFAULT);
                if (v558)
                {
                  v577 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v577 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v577;
                  _os_log_impl(&dword_1E1C61000, v576, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v820)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v578 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v578 = (v3 + 2369);
                }

                *v578 = 0;
                v579 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: adding %zu receivers", *(v529 + 32));
                v580 = *(v529 + 32);
                if (v580)
                {
                  v581 = *(v529 + 48);
                  v582 = 8 * v580;
                  do
                  {
                    v583 = *v581++;
                    v579 = re::DynamicString::appendf((v3 + 2360), " %llu", v583);
                    v582 -= 8;
                  }

                  while (v582);
                }

                v584 = *re::shadowLogObjects(v579);
                v558 = os_log_type_enabled(v584, OS_LOG_TYPE_DEFAULT);
                if (v558)
                {
                  v585 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v585 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v585;
                  _os_log_impl(&dword_1E1C61000, v584, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v814)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v586 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v586 = (v3 + 2369);
                }

                *v586 = 0;
                v587 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: updating %zu receivers", *(v529 + 72));
                v588 = *(v529 + 72);
                if (v588)
                {
                  v589 = *(v529 + 88);
                  v590 = 8 * v588;
                  do
                  {
                    v591 = *v589++;
                    v587 = re::DynamicString::appendf((v3 + 2360), " %llu", v591);
                    v590 -= 8;
                  }

                  while (v590);
                }

                v592 = *re::shadowLogObjects(v587);
                v558 = os_log_type_enabled(v592, OS_LOG_TYPE_DEFAULT);
                if (v558)
                {
                  v593 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v593 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v593;
                  _os_log_impl(&dword_1E1C61000, v592, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              if (v807)
              {
                if (*(v3 + 2368))
                {
                  *(v3 + 2368) = 1;
                  v594 = *(v3 + 2376);
                }

                else
                {
                  *(v3 + 2368) = 0;
                  v594 = (v3 + 2369);
                }

                *v594 = 0;
                v595 = re::DynamicString::appendf((v3 + 2360), "MeshShadowSystem: removing %zu receivers", *(v529 + 112));
                v596 = *(v529 + 112);
                if (v596)
                {
                  v597 = *(v529 + 128);
                  v598 = 8 * v596;
                  do
                  {
                    v599 = *v597++;
                    v595 = re::DynamicString::appendf((v3 + 2360), " %llu", v599);
                    v598 -= 8;
                  }

                  while (v598);
                }

                v600 = *re::shadowLogObjects(v595);
                v558 = os_log_type_enabled(v600, OS_LOG_TYPE_DEFAULT);
                if (v558)
                {
                  v601 = v3 + 2369;
                  if (*(v3 + 2368))
                  {
                    v601 = *(v3 + 2376);
                  }

                  *buf = 136315138;
                  *&buf[4] = v601;
                  _os_log_impl(&dword_1E1C61000, v600, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                }
              }

              v602 = *re::shadowLogObjects(v558);
              if (os_log_type_enabled(v602, OS_LOG_TYPE_DEFAULT))
              {
                v603 = *(v3 + 2336);
                v604 = *(v529 + 8);
                *buf = 134218240;
                *&buf[4] = v603;
                *&buf[12] = 2048;
                *&buf[14] = v604;
                _os_log_impl(&dword_1E1C61000, v602, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: ============== End of Update %llu for scene %llu ==============", buf, 0x16u);
              }
            }

            v605 = *(v3 + 2096);
            if (v605 <= v527 + 1)
            {
              v605 = v527 + 1;
            }

            while (v605 - 1 != v527)
            {
              LODWORD(v527) = v527 + 1;
              if ((*(*(v3 + 2080) + 392 * v527) & 0x80000000) != 0)
              {
                goto LABEL_1039;
              }
            }

            LODWORD(v527) = v605;
LABEL_1039:
            ;
          }
        }

        v606 = *(v3 + 2304);
        *(v3 + 2000) = *(v3 + 2288);
        *(v3 + 2016) = v606;
        *(v3 + 2032) = *(v3 + 2320);
        v607 = *(v3 + 2240);
        *(v3 + 1936) = *(v3 + 2224);
        *(v3 + 1952) = v607;
        v608 = *(v3 + 2272);
        *(v3 + 1968) = *(v3 + 2256);
        *(v3 + 1984) = v608;
        v609 = *(v3 + 2176);
        *(v3 + 1872) = *(v3 + 2160);
        *(v3 + 1888) = v609;
        v610 = *(v3 + 2208);
        *(v3 + 1904) = *(v3 + 2192);
        *(v3 + 1920) = v610;
        v611 = *(v3 + 2144);
        *v793 = *v781;
        *(v3 + 1856) = v611;
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1304);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1352);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1400);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1592);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1640);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v3 + 1688);
        if (LOBYTE(v891[0]) == 1)
        {
          v614.n128_f64[0] = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v891 + 1);
        }

        v615 = *(v3 + 2344) | (*(v3 + 900) != 0);
        *(v3 + 2344) = v615;
        if (*(v3 + 2112) == 1)
        {
          v616 = *(v3 + 2096);
          if (v616)
          {
            v617 = 0;
            v618 = *(v3 + 2080);
            while ((*v618 & 0x80000000) == 0)
            {
              v618 += 98;
              if (v616 == ++v617)
              {
                LODWORD(v617) = *(v3 + 2096);
                break;
              }
            }
          }

          else
          {
            LODWORD(v617) = 0;
          }

          if (v617 != v616)
          {
            v619 = *(v3 + 2080);
            do
            {
              v620 = v619 + 392 * v617;
              v622 = *(v620 + 32) || (v621 = v620 + 16, *(v621 + 56)) || *(v621 + 96) || *(v621 + 148) || *(v621 + 196) || *(v621 + 244) || *(v621 + 340) != 0;
              v615 |= v622;
              if (v616 <= v617 + 1)
              {
                v623 = v617 + 1;
              }

              else
              {
                v623 = *(v3 + 2096);
              }

              while (v623 - 1 != v617)
              {
                LODWORD(v617) = v617 + 1;
                if ((*(v619 + 392 * v617) & 0x80000000) != 0)
                {
                  goto LABEL_1065;
                }
              }

              LODWORD(v617) = v623;
LABEL_1065:
              ;
            }

            while (v617 != v616);
            *(v3 + 2344) = v615;
          }
        }

        if ((v615 & 1) == 0)
        {
LABEL_1274:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v822, v612, v613);
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v823);
        }

        (*(**(v3 + 248) + 48))(buf, v614);
        v624 = re::AssetHandle::loadedAsset<re::MaterialAsset>(buf);
        if (v624 && *(v624 + 1768) != 1)
        {
          (*(**(v3 + 248) + 56))(v839);
          v625 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v839);
          if (v625 && (*(v625 + 1768) & 1) == 0)
          {
            (*(**(v3 + 248) + 64))(to);
            v626 = re::AssetHandle::loadedAsset<re::MaterialAsset>(to);
            if (v626 && (*(v626 + 1768) & 1) == 0)
            {
              (*(**(v3 + 248) + 72))(v891);
              v627 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v891);
              if (v627)
              {
                v628 = *(v627 + 1768);
                re::AssetHandle::~AssetHandle(v891);
                re::AssetHandle::~AssetHandle(to);
                re::AssetHandle::~AssetHandle(v839);
                re::AssetHandle::~AssetHandle(buf);
                if ((v628 & 1) == 0)
                {
                  goto LABEL_1086;
                }

                goto LABEL_1082;
              }

              re::AssetHandle::~AssetHandle(v891);
            }

            re::AssetHandle::~AssetHandle(to);
          }

          re::AssetHandle::~AssetHandle(v839);
        }

        re::AssetHandle::~AssetHandle(buf);
LABEL_1082:
        if (*(*(v3 + 232) + 319) == 1)
        {
          (*(**(v3 + 248) + 48))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 56))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 64))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 72))(buf);
          re::AssetHandle::loadNow(*&buf[8], 0);
          re::AssetHandle::~AssetHandle(buf);
        }

        else
        {
          (*(**(v3 + 248) + 48))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 56))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 64))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          (*(**(v3 + 248) + 72))(buf);
          re::AssetHandle::loadAsync(buf);
          re::AssetHandle::~AssetHandle(buf);
          v630 = *re::shadowLogObjects(v629);
          if (os_log_type_enabled(v630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v630, OS_LOG_TYPE_DEFAULT, "MeshShadowSystem: Skipping update as material asset hasn't finished loading.", buf, 2u);
          }
        }

LABEL_1086:
        if (*(v3 + 2353))
        {
          goto LABEL_1107;
        }

        v631 = *(v3 + 248);
        if (v631)
        {
          *(v3 + 2353) = 1;
          if (!*(v3 + 296))
          {
            (*(*v631 + 48))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v839[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v839, to);
              v632 = *(v3 + 296);
              *(v3 + 296) = *to;
              *to = v632;
              if (v632)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (!*(v3 + 312))
          {
            (*(**(v3 + 248) + 64))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v839[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v839, to);
              v633 = *(v3 + 312);
              *(v3 + 312) = *to;
              *to = v633;
              if (v633)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (!*(v3 + 304))
          {
            (*(**(v3 + 248) + 56))(buf);
            if (re::AssetHandle::loadedAsset<re::MaterialAsset>(buf))
            {
              v839[0].i64[0] = *(v3 + 232);
              re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v839, to);
              v634 = *(v3 + 304);
              *(v3 + 304) = *to;
              *to = v634;
              if (v634)
              {
              }
            }

            else
            {
              *(v3 + 2353) = 0;
            }

            re::AssetHandle::~AssetHandle(buf);
          }

          if (*(v3 + 2353) == 1)
          {
LABEL_1107:
            v635 = *(v3 + 232);
            if (!v635)
            {
LABEL_1290:
              re::internal::assertLog(4, v612, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "sendMeshShadowPerFrameUpdateData", 1554);
              _os_crash("assertion failure: (m_renderManager) ");
              __break(1u);
LABEL_1291:
              re::internal::assertLog(4, v612, "assertion failure: '%s' (%s:line %i) MeshShadowSystem: No pending shadow updates exist", "m_pendingShadowUpdates.has_value()", "sendMeshShadowPerFrameUpdateData", 1559);
              _os_crash("assertion failure: (m_pendingShadowUpdates.has_value()) MeshShadowSystem: No pending shadow updates exist");
              __break(1u);
LABEL_1292:
              v830 = 0;
              v840 = 0u;
              v841 = 0u;
              memset(v839, 0, sizeof(v839));
              v774 = MEMORY[0x1E69E9C10];
              v775 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *to = 136315906;
              *&to[4] = "operator[]";
              *&to[12] = 1024;
              if (v775)
              {
                v776 = 3;
              }

              else
              {
                v776 = 2;
              }

              *&to[14] = 797;
              *&to[18] = 2048;
              *&to[20] = 0;
              *&to[28] = 2048;
              *&to[30] = 0;
              _os_log_send_and_compose_impl(v776, &v830, v839, 80, &dword_1E1C61000, v774, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v777, v778);
              _os_crash_msg();
              __break(1u);
              goto LABEL_1296;
            }

            v636 = v825;
            v637 = *(v635 + 112);
            if (v637)
            {
              v821 = re::RenderFrameBox::get((v637 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v821 = 0;
            }

            if ((*(v3 + 2048) & 1) == 0)
            {
              goto LABEL_1291;
            }

            v638 = *(v3 + 1872);
            v864 = *(v3 + 1888);
            *&to[32] = v638;
            v639 = *(v3 + 1936);
            v868 = *(v3 + 1952);
            v867 = v639;
            v640 = *(v3 + 1920);
            v865 = *(v3 + 1904);
            v866 = v640;
            v641 = *(v3 + 2016);
            v873 = *(v3 + 2032);
            v642 = *(v3 + 1984);
            v643 = *(v3 + 2000);
            v872 = v641;
            v871 = v643;
            v869 = *(v3 + 1968);
            v870 = v642;
            v644 = *v793;
            *&to[16] = *(v3 + 1856);
            *to = v644;
            (*(**(v821 + 320) + 336))();
            v651 = *(v636 + 200);
            if (v651)
            {
              v652 = 8 * v651;
              v653 = *(v636 + 216);
              while (1)
              {
                re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v891, *v653, 0, v821);
                v835 = (*&v891[0] >> 1);
                v654 = re::RenderFrameData::stream((v821 + 264), &v835);
                re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v654, location, buf);
                if (*&buf[12] == 0x7FFFFFFF)
                {
                  v655 = *(*(v654 + 48) + 8);
                  v656 = (*(*v655 + 32))(v655, 56, 8);
                  *v656 = 0;
                  *(v656 + 8) = 0;
                  *(v656 + 16) = 1;
                  *(v656 + 32) = 0;
                  *(v656 + 40) = 0;
                  *(v656 + 24) = 0;
                  *(v656 + 48) = 0;
                  v657 = re::BucketArray<re::MeshShadowReceiverWorld,4ul>::init(v656, v655, 1uLL);
                  *&buf[8] = v656;
                  *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowReceiverWorld,4ul> *>::__handle[abi:nn200100];
                  v875.i64[1] = re::globalAllocators(v657)[2];
                  v876.i64[0] = 0;
                  v658 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v654, location, buf);
                  if (v876.i64[0])
                  {
                    v839[0].i64[0] = buf;
                    (*(*v876.i64[0] + 16))(v876.i64[0], v839);
                  }

                  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&buf[32]);
                  if (*buf)
                  {
                    (*buf)(0, buf, 0, 0, 0);
                  }
                }

                else
                {
                  v658 = (*(v654 + 16) + 96 * *&buf[12] + 16);
                }

                v661 = *v659;
                v662 = *(*v659 + 5);
                v663 = *(*v659 + 1);
                if (v662 + 1 > 4 * v663)
                {
                  v659 = re::BucketArray<re::MeshShadowReceiverWorld,4ul>::setBucketsCapacity(*v659, (v662 + 4) >> 2);
                  v663 = *(v661 + 8);
                }

                if (v663 <= v662 >> 2)
                {
                  break;
                }

                v664 = *(v661 + 40);
                ++*(v661 + 48);
                *(v661 + 40) = v664 + 1;
                if (v664 == -1)
                {
                  goto LABEL_1280;
                }

                if (v663 <= v664 >> 2)
                {
                  goto LABEL_1281;
                }

                if (v891[0])
                {
                  if (v891[0])
                  {
                  }
                }

                ++v653;
                v652 -= 8;
                if (!v652)
                {
                  goto LABEL_1129;
                }
              }

              *location = 0;
              v876 = 0u;
              v875 = 0u;
              memset(buf, 0, sizeof(buf));
              v764 = MEMORY[0x1E69E9C10];
              v765 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v839[0].i32[0] = 136315906;
              *(v839[0].i64 + 4) = "operator[]";
              v839[0].i16[6] = 1024;
              if (v765)
              {
                v766 = 3;
              }

              else
              {
                v766 = 2;
              }

              *(&v839[0].i32[3] + 2) = 858;
              v839[1].i16[1] = 2048;
              *(v839[1].i64 + 4) = v662 >> 2;
              v839[1].i16[6] = 2048;
              *(&v839[1].i64[1] + 6) = v663;
              _os_log_send_and_compose_impl(v766, location, buf, 80, &dword_1E1C61000, v764, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v839, 38, v777, v778);
              _os_crash_msg();
              __break(1u);
LABEL_1280:
              re::internal::assertLog(4, v660, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
              _os_crash("assertion failure: (m_size > 0) Array is empty");
              __break(1u);
LABEL_1281:
              v767 = v664 >> 2;
              *location = 0;
              v876 = 0u;
              v875 = 0u;
              memset(buf, 0, sizeof(buf));
              v768 = MEMORY[0x1E69E9C10];
              v769 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v839[0].i32[0] = 136315906;
              *(v839[0].i64 + 4) = "operator[]";
              v839[0].i16[6] = 1024;
              if (v769)
              {
                v770 = 3;
              }

              else
              {
                v770 = 2;
              }

              *(&v839[0].i32[3] + 2) = 858;
              v839[1].i16[1] = 2048;
              *(v839[1].i64 + 4) = v767;
              v839[1].i16[6] = 2048;
              *(&v839[1].i64[1] + 6) = v663;
              _os_log_send_and_compose_impl(v770, location, buf, 80, &dword_1E1C61000, v768, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v839, 38, v777, v778);
              _os_crash_msg();
              __break(1u);
              goto LABEL_1285;
            }

LABEL_1129:
            if (*(v3 + 2112))
            {
              v815 = *(v3 + 2096);
              if (v815)
              {
                v665 = 0;
                v666 = *(v3 + 2080);
                while ((*v666 & 0x80000000) == 0)
                {
                  v666 += 98;
                  if (v815 == ++v665)
                  {
                    LODWORD(v665) = *(v3 + 2096);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v665) = 0;
              }

              if (v665 != v815)
              {
                while (1)
                {
                  v667 = *(v3 + 2080) + 392 * v665;
                  v668 = v667 + 16;
                  *(v667 + 376) = *(v667 + 8);
                  re::DynamicArray<char const*>::DynamicArray(v839, (v667 + 16));
                  re::DynamicArray<char const*>::DynamicArray(&v839[2].i64[1], (v667 + 56));
                  re::DynamicArray<char const*>::DynamicArray(v842, (v667 + 96));
                  v847 = 0;
                  v846 = 0u;
                  v845 = 0u;
                  v848 = 0x7FFFFFFFLL;
                  v669 = *(v667 + 136);
                  if (v669)
                  {
                    v670 = *(v667 + 164) <= 3u ? 3 : *(v667 + 164);
                    re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v845, v669, v670);
                    v671 = *(v667 + 168);
                    if (v671)
                    {
                      v672 = 0;
                      for (k = 0; k < v671; ++k)
                      {
                        v674 = *(v668 + 136);
                        if ((*(v674 + v672) & 0x80000000) != 0)
                        {
                          v675 = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v845, *(v674 + v672 + 256) % DWORD2(v846), *(v674 + v672 + 256));
                          v676 = *(v668 + 136) + v672;
                          *(v675 + 8) = *(v676 + 8);
                          re::DynamicArray<re::MeshShadowCasterInfo>::DynamicArray(v675 + 16, (v676 + 16));
                          v677 = *(v676 + 64);
                          v678 = *(v676 + 80);
                          v679 = *(v676 + 112);
                          *(v675 + 96) = *(v676 + 96);
                          *(v675 + 112) = v679;
                          *(v675 + 64) = v677;
                          *(v675 + 80) = v678;
                          v680 = *(v676 + 128);
                          v681 = *(v676 + 144);
                          v682 = *(v676 + 176);
                          *(v675 + 160) = *(v676 + 160);
                          *(v675 + 176) = v682;
                          *(v675 + 128) = v680;
                          *(v675 + 144) = v681;
                          v683 = *(v676 + 192);
                          v684 = *(v676 + 208);
                          v685 = *(v676 + 224);
                          *(v675 + 240) = *(v676 + 240);
                          *(v675 + 208) = v684;
                          *(v675 + 224) = v685;
                          *(v675 + 192) = v683;
                          v671 = *(v668 + 152);
                        }

                        v672 += 272;
                      }
                    }
                  }

                  v851 = 0;
                  v850 = 0u;
                  v849 = 0u;
                  v852 = 0x7FFFFFFFLL;
                  v686 = *(v668 + 168);
                  if (v686)
                  {
                    v687 = *(v668 + 196) <= 3u ? 3 : *(v668 + 196);
                    re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v849, v686, v687);
                    if (*(v668 + 200))
                    {
                      v688 = 0;
                      v689 = 0;
                      do
                      {
                        v690 = *(v668 + 184);
                        if ((*(v690 + v688) & 0x80000000) != 0)
                        {
                          v691 = re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v849, *(v690 + v688 + 112) % DWORD2(v850), *(v690 + v688 + 112));
                          v692 = *(v668 + 184);
                          v693 = v692 + v688;
                          *(v691 + 8) = *(v692 + v688 + 8);
                          v694 = *(v692 + v688 + 16);
                          *(v691 + 16) = v694;
                          if (v694 == 1)
                          {
                            v695 = *(v693 + 48);
                            *(v691 + 32) = *(v693 + 32);
                            *(v691 + 48) = v695;
                          }

                          v696 = *(v693 + 64);
                          *(v691 + 64) = v696;
                          if (v696 == 1)
                          {
                            v697 = v692 + v688;
                            v698 = *(v697 + 96);
                            *(v691 + 80) = *(v697 + 80);
                            *(v691 + 96) = v698;
                          }
                        }

                        ++v689;
                        v688 += 128;
                      }

                      while (v689 < *(v668 + 200));
                    }
                  }

                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v853, v668 + 216);
                  v856 = 0;
                  v854 = 0u;
                  v855 = 0u;
                  v857 = 0x7FFFFFFFLL;
                  v699 = *(v668 + 264);
                  if (v699)
                  {
                    v700 = *(v668 + 292) <= 3u ? 3 : *(v668 + 292);
                    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(&v854, v699, v700);
                    v701 = *(v668 + 296);
                    if (v701)
                    {
                      v702 = 0;
                      for (m = 0; m < v701; ++m)
                      {
                        v704 = *(v668 + 280);
                        if ((*(v704 + v702) & 0x80000000) != 0)
                        {
                          v705 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v854, *(v704 + v702 + 64) % DWORD2(v855), *(v704 + v702 + 64));
                          v706 = *(v668 + 280) + v702;
                          *(v705 + 8) = *(v706 + 8);
                          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v705 + 16, v706 + 16);
                          v701 = *(v668 + 296);
                        }

                        v702 += 72;
                      }
                    }
                  }

                  v860 = 0;
                  v858 = 0u;
                  v859 = 0u;
                  v861 = 0x7FFFFFFFLL;
                  v707 = *(v668 + 312);
                  if (v707)
                  {
                    v708 = *(v668 + 340) <= 3u ? 3 : *(v668 + 340);
                    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v858, v707, v708);
                    v709 = *(v668 + 344);
                    if (v709)
                    {
                      v710 = 0;
                      for (n = 0; n < v709; ++n)
                      {
                        v712 = *(v668 + 328);
                        if ((*(v712 + v710) & 0x80000000) != 0)
                        {
                          v713 = re::HashTable<unsigned long long,re::MeshShadowPerSceneUpdateData::ShadowClusterOpacity,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v858, *(v712 + v710 + 32) % DWORD2(v859), *(v712 + v710 + 32));
                          v714 = *(v668 + 328) + v710;
                          *(v713 + 8) = *(v714 + 8);
                          v715 = *(v714 + 16);
                          *(v713 + 24) = *(v714 + 24);
                          *(v713 + 16) = v715;
                          v709 = *(v668 + 344);
                        }

                        v710 += 40;
                      }
                    }
                  }

                  v862 = *(v668 + 360);
                  *buf = 0xC1ECEDF69A9CD01;
                  v716 = re::RenderFrameData::stream((v821 + 264), buf);
                  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v716, &v835, buf);
                  if (*&buf[12] == 0x7FFFFFFF)
                  {
                    v717 = *(*(v716 + 48) + 8);
                    v718 = (*(*v717 + 32))(v717, 56, 8);
                    *v718 = 0;
                    *(v718 + 8) = 0;
                    *(v718 + 16) = 1;
                    *(v718 + 32) = 0;
                    *(v718 + 40) = 0;
                    *(v718 + 24) = 0;
                    *(v718 + 48) = 0;
                    v719 = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::init(v718, v717, 1uLL);
                    v720 = re::globalAllocators(v719)[2];
                    *&v891[0] = &unk_1F5CFBC38;
                    *(&v891[0] + 1) = v717;
                    *(&v891[1] + 1) = v720;
                    *&v892 = v891;
                    *&buf[8] = v718;
                    *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul> *>::__handle[abi:nn200100];
                    v875.i64[1] = v720;
                    v876.i64[0] = 0;
                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&buf[32], v891);
                    v721 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v716, &v835, buf);
                    if (v876.i64[0])
                    {
                      *location = buf;
                      (*(*v876.i64[0] + 16))(v876.i64[0], location);
                    }

                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&buf[32]);
                    if (*buf)
                    {
                      (*buf)(0, buf, 0, 0, 0);
                    }

                    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v891);
                  }

                  else
                  {
                    v721 = (*(v716 + 16) + 96 * *&buf[12] + 16);
                  }

                  re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(buf, v839);
                  v723 = *(v722 + 40);
                  v662 = *(v722 + 8);
                  if (v723 + 1 > 4 * v662)
                  {
                    re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::setBucketsCapacity(v722, (v723 + 4) >> 2);
                    v662 = *(v722 + 8);
                  }

                  v661 = v723 >> 2;
                  if (v662 <= v723 >> 2)
                  {
                    break;
                  }

                  if (*(v722 + 16))
                  {
                    v724 = v722 + 24;
                  }

                  else
                  {
                    v724 = *(v722 + 32);
                  }

                  v725 = *(v724 + 8 * v661);
                  ++*(v722 + 40);
                  ++*(v722 + 48);
                  re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(v725 + 368 * (v723 & 3), buf);
                  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v890);
                  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v888 + 1);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v885 + 1);
                  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v882 + 1);
                  v727.n128_f64[0] = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v879 + 1);
                  if (v877.i64[0])
                  {
                    v726 = v879;
                    if (v879)
                    {
                      (*(*v877.i64[0] + 40))(v727.n128_f64[0]);
                    }

                    *&v879 = 0;
                    v878.i64[0] = 0;
                    v877 = 0uLL;
                    ++v878.i32[2];
                  }

                  if (*&buf[40])
                  {
                    v726 = v876.i64[1];
                    if (v876.i64[1])
                    {
                      (*(**&buf[40] + 40))(v727);
                    }

                    v876.i64[1] = 0;
                    v875 = 0uLL;
                    *&buf[40] = 0;
                    ++v876.i32[0];
                  }

                  if (*buf)
                  {
                    v726 = *&buf[32];
                    if (*&buf[32])
                    {
                      (*(**buf + 40))(v727);
                    }
                  }

                  v728 = *(v722 + 40);
                  if (!v728)
                  {
                    goto LABEL_1289;
                  }

                  re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](v722, v728 - 1);
                  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v858);
                  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v854);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v853);
                  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v849);
                  v645.n128_f64[0] = re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v845);
                  if (v842[0])
                  {
                    if (v844)
                    {
                      (*(*v842[0] + 40))(v645.n128_f64[0]);
                    }

                    v844 = 0;
                    memset(v842, 0, sizeof(v842));
                    ++v843;
                  }

                  if (v839[2].i64[1])
                  {
                    if (*(&v841 + 1))
                    {
                      (*(*v839[2].i64[1] + 40))(v645);
                    }

                    *(&v841 + 1) = 0;
                    v840 = 0uLL;
                    v839[2].i64[1] = 0;
                    LODWORD(v841) = v841 + 1;
                  }

                  if (v839[0].i64[0] && v839[2].i64[0])
                  {
                    (*(*v839[0].i64[0] + 40))(v645);
                  }

                  v729 = *(v3 + 2096);
                  if (v729 <= v665 + 1)
                  {
                    v729 = v665 + 1;
                  }

                  while (v729 - 1 != v665)
                  {
                    LODWORD(v665) = v665 + 1;
                    if ((*(*(v3 + 2080) + 392 * v665) & 0x80000000) != 0)
                    {
                      goto LABEL_1218;
                    }
                  }

                  LODWORD(v665) = v729;
LABEL_1218:
                  if (v665 == v815)
                  {
                    goto LABEL_1219;
                  }
                }

LABEL_1285:
                v835 = 0;
                v893 = 0u;
                v894 = 0u;
                v892 = 0u;
                memset(v891, 0, sizeof(v891));
                v771 = MEMORY[0x1E69E9C10];
                v772 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *location = 136315906;
                *&location[4] = "operator[]";
                *&location[12] = 1024;
                if (v772)
                {
                  v773 = 3;
                }

                else
                {
                  v773 = 2;
                }

                *&location[14] = 858;
                *&location[18] = 2048;
                *&location[20] = v661;
                *&location[28] = 2048;
                *&location[30] = v662;
                _os_log_send_and_compose_impl(v773, &v835, v891, 80, &dword_1E1C61000, v771, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", location, 38, v777, v778);
                _os_crash_msg();
                __break(1u);
LABEL_1289:
                re::internal::assertLog(4, v726, v727.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                _os_crash("assertion failure: (m_size > 0) Array is empty");
                __break(1u);
                goto LABEL_1290;
              }
            }

LABEL_1219:
            v730 = *(v3 + 328);
            if ((v730 && *(v3 + 2332) != 1 || (re::internal::shadows::regenerateShadowProxy(v3 + 2288, *(v3 + 240), v645, v646, v647, v648, v649, v650), v731 = *(v3 + 320), *(v3 + 320) = *buf, *buf = v731, v732 = *(v3 + 336), *(v3 + 336) = *&buf[16], *&buf[16] = v732, re::AssetHandle::~AssetHandle(buf), (v730 = *(v3 + 328)) != 0)) && (v733 = atomic_load((v730 + 896)), v733 == 2))
            {
              if (*(v3 + 2332) == 1)
              {
                re::AssetHandle::loadNow(*(v3 + 328), 0);
              }

              v734 = *(*(v3 + 232) + 96);
              if (v734)
              {
                v839[0].i8[0] = 0;
                *buf = 0x587ABAC10091B1A0;
                *&buf[8] = "overrides:enablemeshshadows";
                v735 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v734, buf, v839);
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                *buf = 0x4859B8AA739E421CLL;
                *&buf[8] = "meshshadow:enableShadowFlattening";
                v736 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v734, buf, v839);
                v737 = v736;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v737)
                {
                  re::internal::shadows::g_enableShadowFlattening = v839[0].i8[0];
                }

                *buf = 0x2D4485FF0B095780;
                *&buf[8] = "meshshadow:enableMeshDepthFallbackWhenFlattening";
                v738 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v734, buf, v839);
                v739 = v738;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v739)
                {
                  re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening = v839[0].i8[0];
                }

                *buf = 0xFF1144966FC0E67ELL;
                *&buf[8] = "meshshadow:enableWallShadowsBreakthrough";
                v740 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v734, buf, v839);
                v741 = v740;
                if (buf[0])
                {
                  if (buf[0])
                  {
                  }
                }

                if (!v741)
                {
                  re::internal::shadows::g_enableWallShadowsBreakthrough = v839[0].i8[0];
                }
              }

              (*(**(v3 + 248) + 48))(v891);
              (*(**(v3 + 248) + 56))(location);
              (*(**(v3 + 248) + 64))(&v835);
              v743 = *(v3 + 352);
              if (v743 && (v744 = atomic_load((v743 + 896)), v744 == 2))
              {
                re::makeFontID(buf, (v3 + 344));
                v745 = 1;
                v832 = 1;
                *v833 = *buf;
                *&v833[8] = *&buf[8];
              }

              else
              {
                re::ecs2::MeshShadowSystem::asyncLoadFontAssetIfNeeded(v3, v742);
                v745 = 0;
                v832 = 0;
              }

              ++*(*(&v891[0] + 1) + 276);
              *buf = *(re::AssetHandle::loadedAsset<re::MaterialAsset>(v891) + 1776);
              ++*(*&location[8] + 276);
              *&buf[8] = *(re::AssetHandle::loadedAsset<re::MaterialAsset>(location) + 1776);
              ++*(*v836 + 276);
              v746 = re::AssetHandle::loadedAsset<re::MaterialAsset>(&v835);
              v747 = *(v3 + 296);
              *&buf[16] = *(v746 + 1776);
              *&buf[24] = v747;
              if (v747)
              {
                v748 = (v747 + 8);
              }

              v749 = *(v3 + 304);
              *&buf[32] = v749;
              if (v749)
              {
                v750 = (v749 + 8);
              }

              v751 = *(v3 + 312);
              *&buf[40] = v751;
              if (v751)
              {
                v752 = (v751 + 8);
              }

              v753 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v3 + 320));
              if (!*(v753 + 608))
              {
                goto LABEL_1292;
              }

              v875.i64[0] = **(v753 + 624);
              v875.i8[8] = v745;
              if (v745)
              {
                re::StringID::StringID(&v876, v833);
              }

              v877.i32[0] = 0;
              v755 = *(v3 + 2304);
              v888[0] = *(v3 + 2288);
              v888[1] = v755;
              v888[2] = *(v3 + 2320);
              v756 = *(v3 + 2240);
              v884 = *(v3 + 2224);
              v885 = v756;
              v757 = *(v3 + 2256);
              v887 = *(v3 + 2272);
              v886 = v757;
              v758 = *(v3 + 2176);
              v880 = *(v3 + 2160);
              v881 = v758;
              v759 = *(v3 + 2192);
              v883 = *(v3 + 2208);
              v882 = v759;
              v760 = *v781;
              v879 = *(v3 + 2144);
              v878 = v760;
              v889 = *(v3 + 2336);
              v761 = *(v3 + 232);
              if (!v761)
              {
LABEL_1296:
                re::internal::assertLog(4, v754, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "sendShadowBuilderGlobalData", 1499);
                _os_crash("assertion failure: (m_renderManager) ");
                __break(1u);
              }

              v762 = **(re::RenderFrameBox::get((*(v761 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 320);
              v763 = (*(v762 + 304))();
              if (v875.u8[8] == 1)
              {
                if (v876.i8[0])
                {
                  if (v876.i8[0])
                  {
                  }
                }

                v876.i64[1] = &str_67;
                v876.i64[0] = 0;
              }

              if (*&buf[40])
              {

                *&buf[40] = 0;
              }

              if (*&buf[32])
              {

                *&buf[32] = 0;
              }

              if (*&buf[24])
              {
              }

              if (v745 && (v833[0] & 1) != 0)
              {
              }

              re::AssetHandle::~AssetHandle(&v835);
              re::AssetHandle::~AssetHandle(location);
              re::AssetHandle::~AssetHandle(v891);
            }

            else
            {
              re::AssetHandle::loadAsync((v3 + 320));
            }
          }
        }

        goto LABEL_1274;
      }

      while (1)
      {
        v222 = *(v3 + 1272) + 24 * v215;
        *to = 0;
        objc_copyWeak(to, (v222 + 16));
        v223 = objc_loadWeakRetained(to);
        if (v223)
        {
          break;
        }

        v239 = *re::shadowLogObjects(0);
        if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "processReceiverUpdate";
          *&buf[12] = 1024;
          *&buf[14] = 1000;
          _os_log_impl(&dword_1E1C61000, v239, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
        }

LABEL_415:
        objc_destroyWeak(to);
        LODWORD(v237) = *(v3 + 1288);
        if (v237 <= v215 + 1)
        {
          v237 = (v215 + 1);
        }

        else
        {
          v237 = v237;
        }

        while (v237 - 1 != v215)
        {
          v215 = (v215 + 1);
          if ((*(*(v3 + 1272) + 24 * v215 + 8) & 0x80000000) != 0)
          {
            goto LABEL_422;
          }
        }

        v215 = v237;
LABEL_422:
        if (v215 == v214)
        {
          goto LABEL_401;
        }
      }

      v224 = v223;
      v225 = re::ecs2::EntityComponentCollection::get((v223 + 5), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v225 && *(v225 + 112) == 1)
      {
        v226 = re::ecs2::EntityComponentCollection::get((v224 + 5), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v227 = v224[38];
        if (*(v226 + 25) == 1)
        {
          v228 = *(v226 + 32);
          v229 = vmulq_f32(v228, v228);
          *&v230 = v229.f32[2] + vaddv_f32(*v229.f32);
          *v229.f32 = vrsqrte_f32(v230);
          *v229.f32 = vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32)));
          *v818 = vmulq_n_f32(v228, vmul_f32(*v229.f32, vrsqrts_f32(v230, vmul_f32(*v229.f32, *v229.f32))).f32[0]);
          v839[0] = *(v226 + 48);
          memset(buf, 0, 24);
          v231 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v227 ^ (v227 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v227 ^ (v227 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v3 + 1160, v227, v231 ^ (v231 >> 31));
          v232 = *&buf[12];
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v233 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 1160, *&buf[8], *buf);
            *(v233 + 8) = v227;
            v234 = v839[0];
            *(v233 + 16) = *v818;
            *(v233 + 32) = v234;
            ++*(v3 + 1200);
          }

          else
          {
            ++*(v3 + 1200);
            v238 = *(v3 + 1176) + (v232 << 6);
            *(v238 + 16) = *v818;
            *(v238 + 32) = v839[0];
          }

          re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_1::operator()(v812, v3, (v224 - 1));
          goto LABEL_414;
        }

        v236 = v3;
        v235 = v224[38];
      }

      else
      {
        v235 = v224[38];
        v236 = v3;
      }

      re::ecs2::MeshShadowSystem::processReceiverUpdate(re::ecs2::WorldRootProvider const&)const::$_3::operator()(v236, v235);
LABEL_414:

      goto LABEL_415;
    }

    v85 = (v3 + 968);
    v791 = *(v3 + 1480);
    v796 = v3 + 968;
    while (1)
    {
      v86 = objc_loadWeakRetained((*(v3 + 1464) + 24 * v78 + 16));
      v87 = v86 - 1;
      v88 = v86 ? (v86 - 1) : 0;
      if (v86)
      {
        break;
      }

      v126 = *re::shadowLogObjects(0);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "processClusterInfoUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 753;
        _os_log_impl(&dword_1E1C61000, v126, OS_LOG_TYPE_DEFAULT, "perFrameDirtyData contains a null or destroyed entity. %s:%d", buf, 0x12u);
      }

LABEL_205:
      v125 = *(v3 + 1480);
      if (v125 <= v78 + 1)
      {
        v125 = v78 + 1;
      }

      while (v125 - 1 != v78)
      {
        LODWORD(v78) = v78 + 1;
        if ((*(*(v3 + 1464) + 24 * v78 + 8) & 0x80000000) != 0)
        {
          goto LABEL_211;
        }
      }

      LODWORD(v78) = v125;
LABEL_211:
      if (v78 == v77)
      {
        goto LABEL_144;
      }
    }

    v89 = v86[38];
    do
    {
      v90 = v87;
      v87 = v87[4];
    }

    while (v87);
    v91 = v86[29];
    if (!v91)
    {
LABEL_204:

      goto LABEL_205;
    }

    v816 = v88;
    v92 = *v85;
    v93 = v89 ^ (v89 >> 30);
    v809 = v86;
    if (v92 && (v94 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27)), v95 = *(*(v3 + 976) + 4 * ((v94 ^ (v94 >> 31)) % *(v3 + 992))), v95 != 0x7FFFFFFF))
    {
      v97 = *(v3 + 984);
      while (*(v97 + 40 * v95 + 8) != v89)
      {
        v95 = *(v97 + 40 * v95) & 0x7FFFFFFF;
        v98 = 0x7FFFFFFFLL;
        if (v95 == 0x7FFFFFFF)
        {
          goto LABEL_166;
        }
      }

      v98 = v95;
LABEL_166:
      v96 = v98 == 0x7FFFFFFF;
    }

    else
    {
      v96 = 1;
    }

    v99 = *(*(v90[3] + 104) + 288);
    v100 = v99 >> 1;
    v101 = *(v91 + 64);
    v102 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v101 ^ (v101 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v101 ^ (v101 >> 30))) >> 27));
    v103 = v102 ^ (v102 >> 31);
    v104 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v99 >> 1) ^ (v99 >> 31))) ^ ((0xBF58476D1CE4E5B9 * ((v99 >> 1) ^ (v99 >> 31))) >> 27));
    v794 = (v104 ^ (v104 >> 31)) - 0x61C8864680B583E9;
    v798 = v794 + (v103 << 6) + (v103 >> 2);
    v801 = v103;
    re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(buf, v3 + 872, v101, v100, v798 ^ v103);
    v804 = *&buf[12];
    if (v96)
    {
      memset(buf, 0, 24);
      v105 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27));
      v85 = (v3 + 968);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v796, v89, v105 ^ (v105 >> 31));
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v106 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v796, *&buf[8], *buf);
        v106[1] = v89;
        v106[2] = v101;
        v106[3] = v100;
        ++*(v3 + 1008);
      }

      if (v804 != 0x7FFFFFFF)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v107 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v93) ^ ((0xBF58476D1CE4E5B9 * v93) >> 27));
      v108 = v107 ^ (v107 >> 31);
      v85 = (v3 + 968);
      re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v796, v89, v108);
      v109 = *(v3 + 984);
      v110 = v109 + 40 * *&buf[12];
      v112 = *(v110 + 16);
      v111 = *(v110 + 24);
      v113 = v112 == v101 && v111 == v100;
      v114 = !v113;
      v789 = v114;
      if (!v113)
      {
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v796, v89, v108);
        v839[0] = *(v109 + 40 * *&buf[12] + 16);
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v796, v89, v108);
        v115 = v109 + 40 * *&buf[12];
        *(v115 + 16) = v101;
        *(v115 + 24) = v100;
        v116 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v839);
        *buf = v816;
        re::DynamicArray<unsigned long long>::remove(v116 + 8, buf);
        if (*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v839) + 24))
        {
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, v839);
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v839);
          v85 = (v3 + 968);
        }

        else
        {
          if (!*(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v839) + 56))
          {
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1400, v839);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1304, v839);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1352, v839);
          }

          *buf = *(re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, v839) + 56);
          *&buf[8] = v100;
          v117 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, buf);
          v85 = (v3 + 968);
          if (v117)
          {
            --*v117;
          }

          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 872, v839);
        }
      }

      *buf = v101;
      *&buf[8] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, buf);
      *buf = v101;
      *&buf[8] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
      if (v804 != 0x7FFFFFFF)
      {
        if (!v789)
        {
LABEL_194:
          *buf = v101;
          *&buf[8] = v100;
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, buf);
          *buf = v101;
          *&buf[8] = v100;
          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, buf);
LABEL_203:
          LODWORD(v77) = v791;
          v86 = v809;
          goto LABEL_204;
        }

LABEL_193:
        *buf = v101;
        *&buf[8] = v100;
        v121 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::operator[](v3 + 872, buf);
        v839[0].i64[0] = v816;
        re::DynamicArray<re::TransitionCondition *>::add((v121 + 8), v839);
        goto LABEL_194;
      }
    }

    v876.i8[0] = 0;
    memset(buf, 0, 36);
    *&buf[40] = 0;
    v875.i64[0] = v101;
    (*(*v812 + 8))(v839);
    if (v839[0].i8[0])
    {
      v118 = v839[0].i64[1];
    }

    else
    {
      v118 = 0;
    }

    v875.i64[1] = v118;
    v839[0].i64[0] = v816;
    re::DynamicArray<re::TransitionCondition *>::add(&buf[8], v839);
    v119 = v875.u64[1];
    v839[0].i64[0] = v875.i64[1];
    v839[0].i64[1] = v100;
    v120 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v3 + 1016, v839);
    if (v120)
    {
      ++*v120;
    }

    else
    {
      memset(v839, 0, 24);
      v122 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v119 ^ (v119 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v119 ^ (v119 >> 30))) >> 27));
      re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(v839, v3 + 1016, v119, v100, (v794 + ((v122 ^ (v122 >> 31)) << 6) + ((v122 ^ (v122 >> 31)) >> 2)) ^ v122 ^ (v122 >> 31));
      if (v839[0].i32[3] == 0x7FFFFFFF)
      {
        v123 = re::HashTable<re::SceneWorldRootId,unsigned long long,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v3 + 1016, v839[0].u32[2], v839[0].u64[0]);
        v123[1] = v119;
        v123[2] = v100;
        v123[3] = 1;
        ++*(v3 + 1056);
      }

      v839[0].i64[0] = v119;
      v839[0].i64[1] = v100;
      re::HashSetBase<re::SceneWorldRootId,re::SceneWorldRootId,re::internal::ValueAsKey<re::SceneWorldRootId>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v3 + 1592, v839);
      v839[0].i64[0] = v119;
      v839[0].i64[1] = v100;
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::remove(v3 + 1688, v839);
    }

    memset(v839, 0, 24);
    re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v839, v3 + 872, v101, v100, v798 ^ v801);
    if (v839[0].i32[3] == 0x7FFFFFFF)
    {
      v124 = re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry((v3 + 872), v839[0].u32[2], v839[0].u64[0]);
      *(v124 + 8) = v101;
      *(v124 + 16) = v100;
      *(v124 + 24) = *buf;
      *(v124 + 40) = *&buf[16];
      memset(&buf[8], 0, 24);
      *(v124 + 64) = *&buf[40];
      *&buf[40] = 0;
      ++*&buf[32];
      *(v124 + 56) = 1;
      *(v124 + 72) = v875;
      *(v124 + 88) = v876.i8[0];
      ++*(v3 + 912);
    }

    v839[0].i64[0] = v101;
    v839[0].i64[1] = v100;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1304, v839);
    v839[0].i64[0] = v101;
    v839[0].i64[1] = v100;
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::add(v3 + 1352, v839);
    if (*&buf[8] && *&buf[40])
    {
      (*(**&buf[8] + 40))();
    }

    goto LABEL_203;
  }

  return result;
}