double re::internal::SerializableMaterialParameterBlockBindNodeImpl::bindPointForKey@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = *a3;
    *(a4 + 40) = 0;
    *a4 = a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    re::BindPoint::addToBindPointStack(a4, (a1 + 8));
    *&v11.var0 = 0;
    v11.var1 = &str_67;
    v9 = re::BindPoint::addToBindPointStack<re::internal::SerializedMaterialParameterBindPointImpl,re::StringID>(a4, &v11);
    if (*&v11.var0)
    {
      if (*&v11.var0)
      {
      }
    }
  }

  else
  {
    *(a4 + 40) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  return result;
}

re::StringID *re::BindPoint::addToBindPointStack<re::internal::SerializedMaterialParameterBindPointImpl,re::StringID>(void *a1, const StringID *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
  re::BindPoint::BindPointData::deinit(v6);
  v4 = a1[5] + 32 * a1[3];
  *(v4 - 32) = &unk_1F5CF8A88;
  return re::StringID::StringID((v4 - 24), a2);
}

uint64_t re::introspect<BOOL>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[42];
}

uint64_t re::introspect<float>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[40];
}

uint64_t re::introspect<int>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[38];
}

uint64_t re::introspect<unsigned int>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(a1, v4);
      v1 = &unk_1EE187000;
    }
  }

  return v1[37];
}

uint64_t re::introspect<re::Vector2<float>>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[48];
}

uint64_t re::introspect<re::Vector3<float>>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[47];
}

uint64_t re::introspect<re::Vector4<float>>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[46];
}

uint64_t re::introspect<re::Matrix2x2<float>>()
{
  if ((atomic_load_explicit(&qword_1EE1AFC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC60))
  {
    qword_1EE1AFC58 = re::introspect_Matrix2x2F(0);
    __cxa_guard_release(&qword_1EE1AFC60);
  }

  return qword_1EE1AFC58;
}

uint64_t re::introspect<re::Matrix3x3<float>>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::Matrix3x3<float>>(BOOL)::info = re::introspect_Matrix3x3F(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 284);
}

uint64_t re::introspect<re::Matrix4x4<float>>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 131);
}

uint64_t re::introspect<re::ColorGamut4F>()
{
  if ((atomic_load_explicit(&qword_1EE1AFC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC70))
  {
    qword_1EE1AFC68 = re::introspect_ColorGamut4F(0, v1, v2, v3, v4, v5);
    __cxa_guard_release(&qword_1EE1AFC70);
  }

  return qword_1EE1AFC68;
}

void re::internal::SerializedMaterialParameterBindPointImpl::~SerializedMaterialParameterBindPointImpl(re::internal::SerializedMaterialParameterBindPointImpl *this)
{
  re::StringID::destroyString((this + 8));
}

{
  re::StringID::destroyString((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::SerializedMaterialParameterBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CF8A88;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::SerializedMaterialParameterBindPointImpl>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::SerializedMaterialParameterBindPointImpl>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::SerializedMaterialParameterBindPointImpl::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = 0x9E3779B97F4A7C17;
  v10[0] = a3;
  v10[1] = a4;
  v5 = *(a1 + 8);
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    v4 = (*(*v6 + 48))(v6, 0, v7, v8) - 0x61C8864680B583E9;
  }

  return ((v5 >> 1 << 6) + (v5 >> 3) + v4) ^ (v5 >> 1);
}

uint64_t re::internal::SerializedMaterialParameterBindPointImpl::baseValueUntyped(re::internal::SerializedMaterialParameterBindPointImpl *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  Parameter = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(a1, a2);
  if (Parameter && a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v7 + 88))(v7, Parameter, v8, v9);
  }

  return Parameter;
}

uint64_t re::internal::SerializedMaterialParameterBindPointImpl::supportsOverrideValue(re::internal::SerializedMaterialParameterBindPointImpl *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  Parameter = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(a1, a2);
  v7 = *a3;
  v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v7 + 96))(v7, Parameter, v8, v9);
}

uint64_t re::internal::SerializedMaterialParameterBindPointImpl::isOverridden(re::internal::SerializedMaterialParameterBindPointImpl *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 104))(v8, v7, v9, v10);
  }

  return result;
}

re::internal::SerializedMaterialParameterBindPointImpl *re::internal::SerializedMaterialParameterBindPointImpl::setIsOverridden(re::internal::SerializedMaterialParameterBindPointImpl *result, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    result = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(result, a2);
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

uint64_t re::internal::SerializedMaterialParameterBindPointImpl::overrideValueUntyped(re::internal::SerializedMaterialParameterBindPointImpl *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  result = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v8 + 120))(v8, v7, v9, v10);
  }

  return result;
}

re::internal::SerializedMaterialParameterBindPointImpl *re::internal::SerializedMaterialParameterBindPointImpl::markAsWritten(re::internal::SerializedMaterialParameterBindPointImpl *result, re::ecs2::Component **a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    result = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(result, a2);
    if (result)
    {
      v7 = result;
      re::ecs2::Component::markDirty(*a2);
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v8 + 128))(v8, v7, v9, v10);
    }
  }

  return result;
}

re::internal::SerializedMaterialParameterBindPointImpl *re::internal::SerializedMaterialParameterBindPointImpl::willSet(re::internal::SerializedMaterialParameterBindPointImpl *result, void *a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    result = re::internal::SerializedMaterialParameterBindPointImpl::getParameter(result, a2);
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

uint64_t re::internal::SerializedMaterialParameterBindPointImpl::getParameter(re::internal::SerializedMaterialParameterBindPointImpl *this, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a2 || !a2[1])
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2 || (v3 = a2[2], v2[6] <= v3))
  {
LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  v5 = v2[8] + 32 * v3;
  ++*(v5 + 16);
  v6 = *v5;
  v7 = 0xBF58476D1CE4E5B9 * ((*(this + 1) >> 31) ^ (*(this + 1) >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v6 + 304, this + 1, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v25);
  if (HIDWORD(v25[0]) == 0x7FFFFFFF)
  {
    v8 = v2[2];
    if (v8)
    {
      v9 = *(v8 + 192);
      if (v9)
      {
        if (*(v9 + 72) > v3)
        {
          v10 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(v9 + 88) + 24 * v3));
          if (v10)
          {
            HIDWORD(v37) = 0;
            v38 = 0u;
            v36 = 0u;
            v33 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v26 = 0u;
            memset(v25, 0, sizeof(v25));
            BYTE8(v27) = 10;
            BYTE8(v28) = 0;
            BYTE8(v30) = 0;
            BYTE8(v32) = 0;
            v35 = 0uLL;
            v34 = 0uLL;
            *(&v37 + 5) = 0;
            *&v37 = 0;
            v11 = *(v10 + 1776);
            v21 = *(this + 1) >> 1;
            re::MaterialParameterTable::handle((v11 + 304), &v21, &v22);
            v21 = 0;
            re::internal::SerializedMaterialParameterBindPointImpl::tryPopulateParameter(v25, &v22, v11 + 304);
            if (LOBYTE(v25[0]))
            {
              goto LABEL_16;
            }

            v12 = *(v11 + 16);
            if (v12)
            {
              v13 = (v12 + 8);
            }

            v17 = *(this + 1) >> 1;
            re::MaterialParameterTable::handle((v12 + 248), &v17, &v18);
            v22 = v18;
            v23 = v19;
            v24 = v20;
            v17 = 0;
            re::internal::SerializedMaterialParameterBindPointImpl::tryPopulateParameter(v25, &v22, v11 + 304);
            if (v12)
            {
            }

            if (LOBYTE(v25[0]))
            {
LABEL_16:
              v14 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[]((v2 + 4), v3);
              ++*(v14 + 16);
              v15 = re::ecs2::SerializableMaterialParameterBlock::addParameter(*v14, (this + 8), v25);
            }

            else
            {
              v15 = 0;
            }

            *&v37 = 0;
            if (v34)
            {
              if (v36)
              {
                (*(*v34 + 40))();
              }

              *&v36 = 0;
              *&v35 = 0;
              v34 = 0uLL;
              ++DWORD2(v35);
            }

            re::AssetHandle::~AssetHandle(&v26);
            goto LABEL_24;
          }
        }
      }
    }

    goto LABEL_23;
  }

  v15 = *(v6 + 320) + 320 * HIDWORD(v25[0]) + 32;
LABEL_24:
  if (v15)
  {
    return v15 + 16;
  }

  else
  {
    return 0;
  }
}

void re::internal::SerializedMaterialParameterBindPointImpl::tryPopulateParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 7) == 0)
  {
    return;
  }

  if (re::MaterialParameterHandle::isParameterType(a2, 1))
  {
    v11.n128_u32[0] = re::MaterialParameterTable::floatValue(a3, a2);
    v6 = 1;
  }

  else if (re::MaterialParameterHandle::isParameterType(a2, 32))
  {
    v11.n128_u64[0] = re::MaterialParameterTable::vector2FValue(a3, a2);
    v6 = 32;
  }

  else if (re::MaterialParameterHandle::isParameterType(a2, 34))
  {
    v11.n128_u64[0] = re::MaterialParameterTable::vector4FValue(a3, a2);
    v11.n128_u64[1] = v7;
    v6 = 34;
  }

  else
  {
    if (!re::MaterialParameterHandle::isParameterType(a2, 3))
    {
      if (re::MaterialParameterHandle::isParameterType(a2, 7))
      {
        v11.n128_u32[0] = re::MaterialParameterTable::intValue(a3, a2);
        v10 = 7;
      }

      else if (re::MaterialParameterHandle::isParameterType(a2, 4))
      {
        v11.n128_u64[0] = re::MaterialParameterTable::int2Value(a3, a2);
        v10 = 4;
      }

      else if (re::MaterialParameterHandle::isParameterType(a2, 8))
      {
        v11.n128_u64[0] = re::MaterialParameterTable::int2Value(a3, a2);
        v10 = 8;
      }

      else if (re::MaterialParameterHandle::isParameterType(a2, 6))
      {
        v11 = re::MaterialParameterTable::int4Value(a3, a2);
        v10 = 6;
      }

      else
      {
        if (!re::MaterialParameterHandle::isParameterType(a2, 10))
        {
          return;
        }

        v11 = re::MaterialParameterTable::int4Value(a3, a2);
        v10 = 10;
      }

      re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(v12, v10, &v11);
      re::ecs2::SerializedMaterialParameter::operator=(a1, v12);
      goto LABEL_11;
    }

    v11.n128_u32[0] = re::MaterialParameterTable::intValue(a3, a2);
    v6 = 3;
  }

  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(v12, v6, &v11);
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v12[4];
  v9 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v9;
  re::AssetHandle::operator=(a1 + 80, v13);
  re::OptionalMaterialSamplerData::operator=(a1 + 104, &v14);
  re::DynamicArray<BOOL>::operator=(a1 + 208, v15);
  *(a1 + 248) = v18;
  *(a1 + 256) = v19;
  *(a1 + 264) = v20;
  *(a1 + 280) = v21;
LABEL_11:
  v19 = 0;
  if (v15[0])
  {
    if (v17)
    {
      (*(*v15[0] + 40))(v15[0], v17);
    }

    v17 = 0;
    memset(v15, 0, sizeof(v15));
    ++v16;
  }

  re::AssetHandle::~AssetHandle(v13);
}

void *re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(v5, a2);
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
              goto LABEL_20;
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
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v7 + 2;
        v11 = 32 * v9;
        do
        {
          v12 = *v8;
          *(v10 - 2) = *v8;
          if (v12)
          {
            v13 = (v12 + 8);
            v14 = *v8;
            *(v10 - 1) = 0;
            *v10 = 1;
            v10[1] = 0;
            if (v14)
            {

              *v8 = 0;
            }
          }

          else
          {
            *(v10 - 1) = 0;
            *v10 = 1;
            v10[1] = 0;
          }

          v8 += 4;
          v10 += 4;
          v11 -= 32;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v8 = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(&v18);
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock((*(a4 + 32) + 520 * v10), &v18);
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v27);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v26);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v25);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v24);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v23);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v22);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
  v18 = &unk_1F5CCF868;
  objc_destructInstance(&v19);
  v16 = (*(a4 + 32) + 520 * *(a4 + 16) - 520);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlock>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 520 * a3;
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

  return *(a2 + 32) + 520 * a3;
}

char *re::ObjectHelper::destroy<re::ecs2::SerializableMaterialParameterBlock>(char *result, char *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 448]);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 400]);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 352]);
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 304]);
      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 256]);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v3[v4 + 208]);
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 160]);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 112]);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 64]);
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v3[v4 + 16]);
      *&v3[v4] = &unk_1F5CCF868;
      result = objc_destructInstance(&v3[v4 + 8]);
      v4 += 520;
    }

    while (&v3[v4] != a2);
  }

  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    re::ObjectHelper::destroy<re::ecs2::SerializableMaterialParameterBlock>(*(a1 + 32), (*(a1 + 32) + 520 * v8));
  }

  else
  {
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v9 = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = 520 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a3, 0);
        re::TypeInfo::construct(v13, v11, a3, 0);
        v11 += 520;
        v12 -= 520;
      }

      while (v12);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 520 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 520 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (v8 >= v9)
  {
    v10 = v8 + 1;
    if (v9 < v8 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v9;
        if (!v9)
        {
          v11 = 8;
        }

        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a4, v12);
      }

      else
      {
        re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v8 = *(a4 + 16);
  }

  v13 = *(a4 + 32);
  v14 = (v13 + 32 * v8);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 1;
  v14[3] = 0;
  v15 = v8 + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (v13 + 32 * v15 - 32);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 32 * a3;
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

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 32 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs236MaterialParameterBlockArrayComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::SerializableMaterialParameterBlock *re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock>@<X0>(re *a1@<X0>, re::ecs2::SerializableMaterialParameterBlock **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 520, 8);
  result = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(v4);
  *a2 = result;
  return result;
}

re::ecs2::SerializableMaterialParameterBlock *re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock&>@<X0>(re *a1@<X0>, re::ecs2::SerializableMaterialParameterBlock **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 520, 8);
  result = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(v5, a1);
  *a2 = result;
  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF8C90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF8CE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF8D40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF8D98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF8C90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF8CE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF8D40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF8D98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 208);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 208);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 208);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 208);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8C90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8C90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8CE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8CE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8D40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8D40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8D98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8D98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

re::ecs2::MaterialParameterBlockArraySystem *re::ecs2::MaterialParameterBlockArraySystem::MaterialParameterBlockArraySystem(re::ecs2::MaterialParameterBlockArraySystem *this)
{
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CF8308;
  v3 = v2 + 224;
  *(v2 + 224) = &unk_1F5CF82A0;
  *(v2 + 232) = 0;
  *(v2 + 248) = 0;
  *(v2 + 240) = 0;
  v4 = v2 + 240;
  *(v2 + 256) = 1;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 264) = 0;
  *(v2 + 288) = 0;
  v5 = (v2 + 296);
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 1;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0;
  *(v2 + 424) = 1;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 457) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 360), 0);
  *(this + 94) += 2;
  *(this + 50) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 408), 0);
  *(this + 106) += 2;
  *(this + 56) = 0;
  *(this + 57) = this;
  *(this + 58) = v3;
  *(this + 472) = 1;
  *(this + 64) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = 0;
  *(this + 126) = 0;
  return this;
}

re::ecs2::Component *re::CAREUtil::GetOrAddCAREComponent(uint64_t a1, re::ecs2::ComponentTypeBase *a2, int a3, _anonymous_namespace_ *a4, _BYTE *a5)
{
  if (!a5)
  {
    v13 = re::ecs2::EntityComponentCollection::get((a1 + 48), a2);
    if (v13)
    {
      return v13;
    }
  }

  v10 = *(a1 + 216);
  v11 = a3 == 1;
  if (!v10)
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    v14 = a1;
    do
    {
      v15 = v14;
      v14 = *(v14 + 32);
    }

    while (v14);
    v16 = *(v15 + 24);
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = *(v16 + 56);
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = (*(*v17 + 32))(v17);
    a4 = re::ServiceLocator::serviceOrNull<re::EntitlementService>(v18);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4))
  {
    OwnerPeerID = RESyncableGetOwnerPeerID();
  }

  else
  {
    OwnerPeerID = *(v10 + 8);
  }

  v19 = (*(*a4 + 96))(a4, OwnerPeerID);
  if (v19 != 1)
  {
    if (v19 == 2)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v11 = 0;
  if (!a3)
  {
LABEL_25:
    if (a5)
    {
      *a5 = 0;
    }

    v13 = re::ecs2::EntityComponentCollection::get((a1 + 48), a2);
    if (!v13)
    {
      (*(*a2 + 32))(&v24, a2);
      if (v10)
      {
        re::ecs2::NetworkComponent::disableSyncForComponent(v10, v24);
      }

      v23 = v24;
      if (v24)
      {
        v22 = v24 + 8;
      }

      re::ecs2::EntityComponentCollection::add(a1 + 48, &v23, 1);
      if (v23)
      {

        v23 = 0;
      }

      v21 = v24;
      if (v24)
      {
      }

      return v21;
    }

    return v13;
  }

LABEL_18:
  if (v11)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    *a5 = 1;
  }

  return re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), a2);
}

re::ecs2::EnvironmentLightingManagerStateTracking *re::ecs2::EnvironmentLightingManagerStateTracking::EnvironmentLightingManagerStateTracking(re::ecs2::EnvironmentLightingManagerStateTracking *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF8DF0;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CF8EC0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::EnvironmentLightingManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a2 + 16) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v34 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      v10 = *(a1 + 352);
      if (!*(a1 + 56) || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v12 = *(*(a1 + 64) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 80))), v12 == 0x7FFFFFFF))
      {
LABEL_14:
        (*(**v10 + 8))(&v45);
        if (v45)
        {
          v14 = v46;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v9 + 32);
        for (i = 1.0; v15; v15 = *(v38 + 32))
        {
          if ((*(v15 + 304) & 0x80) != 0)
          {
            break;
          }

          v38 = v15;
          (*(**v10 + 8))(&v45);
          v17 = v45 ? v46 : 0;
          if (v14 != v17)
          {
            break;
          }

          v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v38, v18 ^ (v18 >> 31), &v45);
          if (HIDWORD(v46) != 0x7FFFFFFF)
          {
            i = *(*(a1 + 72) + 32 * HIDWORD(v46) + 16);
            break;
          }

          if (re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
          {
            v9 = v38;
          }
        }

        re::StackScratchAllocator::StackScratchAllocator(&v45);
        v38 = 0;
        v39 = 0;
        v40 = 1;
        v42 = 0;
        v43 = 0;
        v41 = 0;
        v44 = 0;
        re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::init(&v38, &v45, 1uLL);
        v47.n128_u64[0] = v9;
        v47.n128_u32[2] = i;
        v48 = v14;
        v19 = re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::add(&v38, &v47);
LABEL_30:
        v20 = v43;
        while (v20)
        {
          v21 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](&v38, --v20);
          v22 = *(v21 + 16);
          v36 = *v21;
          v37 = v22;
          re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](&v38, v20);
          v43 = v20;
          ++v44;
          if (*(v36 + 304))
          {
            v23 = re::ecs2::EntityComponentCollection::get((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v23)
            {
              v24 = *(v23 + 28);
              *(&v36 + 2) = v24;
            }

            else
            {
              v24 = *(&v36 + 2);
            }

            v25 = v36;
            if (v24 != 1.0)
            {
              v47 = 0uLL;
              v48 = 0;
              v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
              re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v36, v26 ^ (v26 >> 31), &v47);
              if (v47.n128_u32[3] == 0x7FFFFFFF)
              {
                v27 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1 + 56, v47.n128_u32[2], v47.n128_u64[0]);
                v25 = v36;
                *(v27 + 8) = v36;
                *(v27 + 16) = v24;
                ++*(a1 + 96);
              }

              else
              {
                v25 = v36;
              }
            }

            v28 = *(v25 + 344);
            if (v28)
            {
              v29 = *(v25 + 360);
              v30 = 8 * v28;
              do
              {
                v31 = *v29;
                (*(**v10 + 8))(&v47);
                if (v47.n128_u8[0])
                {
                  v32 = v47.n128_u64[1];
                }

                else
                {
                  v32 = 0;
                }

                v47.n128_u64[0] = v31;
                if (v37 == v32)
                {
                  v47.n128_u32[2] = DWORD2(v36);
                }

                else
                {
                  v47.n128_u32[2] = 1065353216;
                }

                v48 = v32;
                v19 = re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::add(&v38, &v47);
                ++v29;
                v30 -= 8;
              }

              while (v30);
              goto LABEL_30;
            }
          }
        }

        while (v39)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v38);
        }

        if (v38 && (v40 & 1) == 0)
        {
          (*(*v38 + 40))(v19);
        }

        re::StackScratchAllocator::~StackScratchAllocator(&v45);
        LODWORD(v3) = v34;
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v13 = *(a1 + 72);
        while (*(v13 + 32 * v12 + 8) != v9)
        {
          v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v33 = v4 + 1;
      }

      else
      {
        v33 = v8;
      }

      while (v33 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_63;
        }
      }

      LODWORD(v4) = v33;
LABEL_63:
      ;
    }

    while (v4 != v3);
  }
}

__n128 re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::add(uint64_t a1, __n128 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
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

    v17 = 858;
    v18 = 2048;
    v19 = v4 >> 5;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 24 * (v4 & 0x1F));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  return result;
}

void re::ecs2::EnvironmentLightingManager::updateEnvironmentLightingData(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 360) = a2;
  (*(v2 + 32))(a1 + 8, a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 200);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 248);
  *(v3 + 352) = 0;
}

void re::ecs2::EnvironmentLightingManagerStateTracking::~EnvironmentLightingManagerStateTracking(re::ecs2::EnvironmentLightingManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 296) != *(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v14 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v14))
      {
        v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 32 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 32 * v25) = *(v7 + 32 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 32 * v6) = *(a1 + 92);
          --*(a1 + 84);
          *(a1 + 92) = v6;
          *(a1 + 96) = v9 + 1;
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 248, &v14);
        v10 = *(v14 + 344);
        if (v10)
        {
          v11 = *(v14 + 360);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = v13;
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    *(a1 + 296) = *(a1 + 96);
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

void re::ecs2::EnvironmentLightingManager::~EnvironmentLightingManager(re::ecs2::EnvironmentLightingManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::EnvironmentLightingManager::registerScene(re::ecs2::EnvironmentLightingManager *this, re::EventBus **a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CF8F00;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CF9008;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CF9060;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CF90B8;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::EnvironmentLightingManager::unregisterScene(re::ecs2::EnvironmentLightingManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CF8EC0;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF8F58;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF8FB0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8F00;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8F00;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8F58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8F58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF8FB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8FB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9008;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9060;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9060;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF90B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EnvironmentLightingWeight>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF90B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::EnvironmentLightingManagerStateTracking::buildEnvironmentLightingWeightForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityWeight,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 768, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::TrueToneManagerStateTracking *re::ecs2::TrueToneManagerStateTracking::TrueToneManagerStateTracking(re::ecs2::TrueToneManagerStateTracking *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<BOOL>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF9110;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CF91D0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::TrueToneManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a2 + 16) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v32 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      v10 = *(a1 + 328);
      if (!*(a1 + 56) || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v12 = *(*(a1 + 64) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 80))), v12 == 0x7FFFFFFF))
      {
LABEL_14:
        (*(**v10 + 8))(&v42);
        if (v42)
        {
          v14 = v43;
        }

        else
        {
          v14 = 0;
        }

        v35 = v9;
        if (v9)
        {
          (*(**v10 + 8))(&v42);
          while (1)
          {
            v15 = v42 ? v43 : 0;
            if (v14 != v15)
            {
              break;
            }

            v16 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 56, &v35);
            if (v16 && *v16 == 1 || (v17 = re::ecs2::EntityComponentCollection::get((v35 + 6), re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0 && *(v17 + 25) == 1)
            {
              v19 = 1;
              v9 = v35;
              goto LABEL_31;
            }

            v18 = v35[4];
            if (!v18 || (*(v18 + 304) & 0x80) != 0)
            {
              break;
            }

            v35 = v35[4];
            (*(**v10 + 8))(&v42);
          }
        }

        v19 = 0;
LABEL_31:
        re::StackScratchAllocator::StackScratchAllocator(&v42);
        v35 = 0;
        v36 = 0;
        v37 = 1;
        v39 = 0;
        v40 = 0;
        v38 = 0;
        v41 = 0;
        re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::init(&v35, &v42, 1uLL);
        v44.n128_u64[0] = v9;
        v44.n128_u8[8] = v19;
        v20 = re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::add(&v35, &v44);
LABEL_32:
        v21 = v40;
        while (v21)
        {
          v34 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v35, --v21);
          re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v35, v21);
          v40 = v21;
          ++v41;
          if (*(v34 + 304))
          {
            v22 = BYTE8(v34);
            v23 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v23)
            {
              v22 |= *(v23 + 25);
            }

            v44 = 0uLL;
            v45 = 0;
            v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) >> 27));
            re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v34, v24 ^ (v24 >> 31), &v44);
            if (v44.n128_u32[3] == 0x7FFFFFFF)
            {
              v25 = re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v44.n128_u32[2], v44.n128_u64[0]);
              v26 = v34;
              *(v25 + 8) = v34;
              *(v25 + 16) = v22;
              ++*(a1 + 96);
            }

            else
            {
              v26 = v34;
            }

            v27 = *(v26 + 344);
            if (v27)
            {
              v28 = *(v26 + 360);
              v29 = 8 * v27;
              do
              {
                v30 = *v28++;
                v44.n128_u64[0] = v30;
                v44.n128_u8[8] = v22;
                v20 = re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::add(&v35, &v44);
                v29 -= 8;
              }

              while (v29);
              goto LABEL_32;
            }
          }
        }

        while (v36)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v35);
        }

        if (v35 && (v37 & 1) == 0)
        {
          (*(*v35 + 40))(v20);
        }

        re::StackScratchAllocator::~StackScratchAllocator(&v42);
        LODWORD(v3) = v32;
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v13 = *(a1 + 72);
        while (*(v13 + 32 * v12 + 8) != v9)
        {
          v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v31 = v4 + 1;
      }

      else
      {
        v31 = v8;
      }

      while (v31 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v4) = v31;
LABEL_57:
      ;
    }

    while (v4 != v3);
  }
}

__n128 re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::add(uint64_t a1, __n128 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 858;
    v17 = 2048;
    v18 = v4 >> 5;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  result = *a2;
  *(v7 + 16 * (v4 & 0x1F)) = *a2;
  return result;
}

void re::ecs2::TrueToneManager::updateTrueToneData(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 336) = a2;
  (*(v2 + 32))(a1 + 8, a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 200);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 248);
  *(v3 + 328) = 0;
}

uint64_t re::ecs2::TrueToneManager::registerScene(re::ecs2::TrueToneManager *this, re::EventBus **a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CF9210;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CF9318;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CF9370;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CF93C8;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::TrueToneManager::unregisterScene(re::ecs2::TrueToneManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

void re::ecs2::TrueToneManagerStateTracking::~TrueToneManagerStateTracking(re::ecs2::TrueToneManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<BOOL>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<BOOL>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<BOOL>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

void re::ecs2::TrueToneManager::~TrueToneManager(re::ecs2::TrueToneManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<BOOL>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<BOOL>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::HierarchyStateTracking<BOOL>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CF91D0;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

void *re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::TrueToneManagerStateTracking::buildTrueToneForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityState,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t (***re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF9268;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<BOOL>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF92C0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9210;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9210;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9268;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9268;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF92C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF92C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9318;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9318;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9370;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9370;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<BOOL>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF93C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<BOOL>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<BOOL>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF93C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_TrueToneService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_355, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_355))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0430, "TrueToneService");
    __cxa_guard_release(&_MergedGlobals_355);
  }

  return &unk_1EE1B0430;
}

void re::ecs2::initInfo_TrueToneService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xCA568414DAB0ACAALL;
  v8[1] = "TrueToneService";
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
  *(this + 8) = &re::ecs2::initInfo_TrueToneService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_AREnvironmentProbeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_356, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_356))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0520, "AREnvironmentProbeComponent");
    __cxa_guard_release(&_MergedGlobals_356);
  }

  return &unk_1EE1B0520;
}

void re::ecs2::initInfo_AREnvironmentProbeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v35[0] = 0xBEA5DE57511179DELL;
  v35[1] = "AREnvironmentProbeComponent";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B04C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B04C8))
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
    qword_1EE1B04F0 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector3F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "extents";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1B04F8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "texture";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B0500 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_uint32_t(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "priority";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B0508 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "weight";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B0510 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_BOOL(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "useAsBackground";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5000000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B0518 = v33;
    __cxa_guard_release(&qword_1EE1B04C8);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B04F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AREnvironmentProbeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AREnvironmentProbeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AREnvironmentProbeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AREnvironmentProbeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227AREnvironmentProbeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v34 = v36;
}

double re::internal::defaultConstruct<re::ecs2::AREnvironmentProbeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDA5F8;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(v3 + 64) = vnegq_f32(v4);
  *(v3 + 80) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 84) = result;
  *(v3 + 92) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::AREnvironmentProbeComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::AREnvironmentProbeComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDA5F8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(v1 + 64) = vnegq_f32(v2);
  *(v1 + 80) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 84) = result;
  *(v1 + 92) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::AREnvironmentProbeComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ProbeClusterExclusionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B04D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B04D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B05B0, "ProbeClusterExclusionComponent");
    __cxa_guard_release(&qword_1EE1B04D0);
  }

  return &unk_1EE1B05B0;
}

void re::ecs2::initInfo_ProbeClusterExclusionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xFC7C25AD817EA972;
  v16[1] = "ProbeClusterExclusionComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B04E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B04E0))
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
    qword_1EE1B04D8 = v14;
    __cxa_guard_release(&qword_1EE1B04E0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B04D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProbeClusterExclusionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProbeClusterExclusionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProbeClusterExclusionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProbeClusterExclusionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230ProbeClusterExclusionComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ProbeClusterExclusionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE54C8;
}

void re::internal::defaultConstructV2<re::ecs2::ProbeClusterExclusionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE54C8;
}

void *re::ecs2::allocInfo_AREnvironmentProbeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B04E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B04E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0640, "AREnvironmentProbeSystem");
    __cxa_guard_release(&qword_1EE1B04E8);
  }

  return &unk_1EE1B0640;
}

void re::ecs2::initInfo_AREnvironmentProbeSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1E17583E47DC4EFALL;
  v8[1] = "AREnvironmentProbeSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x28000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AREnvironmentProbeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AREnvironmentProbeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AREnvironmentProbeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AREnvironmentProbeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AREnvironmentProbeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AREnvironmentProbeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AREnvironmentProbeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::AREnvironmentProbeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 72));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CF9430;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AREnvironmentProbeSystem>(uint64_t *a1)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 72));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CF9430;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

BOOL re::ecs2::AREnvironmentProbeComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19) + 40);
      v13 = v19;
      v14 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      if (v12)
      {
        v15 = 40;
      }

      else
      {
        v15 = 32;
      }

      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v13, v14, *(a3 + v15));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::AREnvironmentProbeComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v24, a5, 0);
  v8 = v24;
  v9 = v25;
  v10 = v25;
  v24 = a4;
  v25 = v8;
  v26 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v24);
      v13 = *(v12 + 40);
      if (!v13)
      {
        break;
      }

      v14 = atomic_load((v13 + 896));
      if (v14 == 3)
      {
        v15 = v24;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
        v17 = a3[2];
        v18 = a3[4];
      }

      else
      {
        v19 = *(v12 + 40);
        if (!v19)
        {
          break;
        }

        v20 = atomic_load((v19 + 896));
        if (v20 != 2)
        {
          break;
        }

        v15 = v24;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
        v17 = a3[2];
        v18 = a3[6];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v17, v15, v16, v18);
LABEL_13:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      if (v25 == a5 && v26 == 0xFFFF && HIWORD(v26) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    re::AssetHandle::loadAsync((v12 + 32));
    goto LABEL_13;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::AREnvironmentProbeComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 8) + 232);
  if (v5 && (v6 = *(v5 + 112)) != 0 && (v7 = *(v6 + 304)) != 0)
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v23, a5, 0);
    v24 = a4;
    v25 = v23.i64[0];
    v26 = v23.i32[2];
    if (v23.i64[0] == a5 && v23.u32[2] == 0xFFFFFFFFLL)
    {
      return *(a5 + 40) != 0;
    }

    while (1)
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v24);
      v11 = v10[1].i64[0];
      v12 = *(v11 + 39);
      v13 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v10[2]);
      if (*(v13 + 120))
      {
        break;
      }

      v14 = v13;
      v15 = (v13 + 112);
      v16 = [*(v13 + 112) hash];
      v23.i64[0] = v12;
      v17 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 16), &v23);
      if (v17 == -1)
      {
        re::TransformService::worldTransform(*(*(a1 + 8) + 288), v11, 0, &v23);
        v23 = vmulq_f32(v23, v10[4]);
        if (*(v14 + 120))
        {
          break;
        }

        re::ProbeManager::addProbe(v7, v12, v15, v10[5].i8[0], &v23, v10[5].f32[1]);
      }

      else if (*(*(v7 + 24) + 16 * v17 + 8) != v16)
      {
        if (*(v14 + 120))
        {
          break;
        }

        re::ProbeManager::updateProbe(v7, v12, v15, v10[5].f32[1]);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      if (v25 == a5 && v26 == 0xFFFF && HIWORD(v26) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) ", "renderManager && renderManager->probeManager()", "processUpdatingComponents", 123);
    _os_crash("assertion failure: (renderManager && renderManager->probeManager()) ");
    __break(1u);
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ecs2::AREnvironmentProbeSystem::update(v19, v20, v21);
}

void *re::ecs2::AREnvironmentProbeSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v79 = a2;
  v80 = a3;
  v5 = result[28];
  if (v5 && (*(v5 + 432) & 0x10) == 0 || *(a3 + 8) == 2)
  {
    return result;
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v78);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v10 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v10)
      {
        v11 = *(v10 + 384);
      }

      else
      {
        v11 = 0;
      }

      v7 += v11;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v77, 3067, v4, v7, 0, 0);
  v13 = *(v4 + 232);
  if (!v13 || (v14 = *(v13 + 112)) == 0 || !*(v14 + 304))
  {
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "m_renderManager && m_renderManager->probeManager()", "update", 175);
    _os_crash("assertion failure: (m_renderManager && m_renderManager->probeManager()) ");
    __break(1u);
    goto LABEL_97;
  }

  if (!re::RenderFrameBox::get((v14 + 328), 0xFFFFFFFFFFFFFFFuLL))
  {
LABEL_97:
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "m_renderManager->renderFrame()", "update", 176);
    result = _os_crash("assertion failure: (m_renderManager->renderFrame()) ");
    __break(1u);
    return result;
  }

  v16 = *(*(v4 + 232) + 112);
  if (v16)
  {
    v17 = re::RenderFrameBox::get((v16 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v18 = *(*(v4 + 232) + 112);
    if (v18)
    {
      v19 = *(v18 + 304);
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = 0;
LABEL_21:
  re::ProbeManager::ensureAllocations(v19);
  re::MaterialManager::ensureSceneTablesInitialized_ProbeManager(*(*(v4 + 232) + 24));
  v20 = *(v19 + 820);
  v21 = *(v4 + 232);
  v22 = v21[43];
  v23 = v21[20];
  v24 = *(v23 + 220);
  v76 = v24;
  v25 = v21[12];
  if (v25)
  {
    v92 = 0xB313D2E5205756C4;
    v93 = "colorpipe:enableISPTonemapping";
    v26 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v25, &v92, &v76);
    if (v92)
    {
      if (v92)
      {
      }
    }

    v24 = v76;
  }

  v27 = 1.0;
  if ((v24 & 1) == 0)
  {
    v27 = *(v23 + 12536);
  }

  v28 = v22[76].i64[0];
  if (v28)
  {
    (*(*v28 + 16))(v28);
    v29.i32[3] = 0;
    v30.i32[3] = 0;
    v31.i32[3] = 0;
  }

  else
  {
    v29 = v22[77];
    v30 = v22[78];
    v31 = v22[79];
  }

  v32 = vmulq_n_f32(v29, v20 * v27);
  v32.i32[3] = 0;
  v33 = vmulq_n_f32(v30, v20 * v27);
  v33.i32[3] = 0;
  v34 = vmulq_n_f32(v31, v20 * v27);
  v34.i32[3] = 0;
  v35 = vandq_s8(vandq_s8(vceqq_f32(*(v19 + 864), v33), vceqq_f32(*(v19 + 848), v32)), vceqq_f32(*(v19 + 880), v34));
  v35.i32[3] = v35.i32[2];
  if ((vminvq_u32(v35) & 0x80000000) == 0)
  {
    *(v19 + 848) = v32;
    *(v19 + 864) = v33;
    *(v19 + 880) = v34;
    *(v19 + 184) = 1;
  }

  if (*(v19 + 896) != v76)
  {
    *(v19 + 896) = v76;
    *(v19 + 184) = 1;
  }

  re::StackScratchAllocator::StackScratchAllocator(&v92);
  v88 = 1;
  v90 = 0;
  v89 = 0;
  v86 = &v92;
  v87 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v86, 0);
  v88 += 2;
  v36 = *(v4 + 544);
  if ((v36 & 0x3F) != 0)
  {
    v37 = (v36 >> 6) + 1;
  }

  else
  {
    v37 = v36 >> 6;
  }

  v91 = *(v4 + 544);
  v81[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v86, v37, v81);
  v38 = *(v80 + 200);
  if (v38)
  {
    v39 = *(v80 + 216);
    v40 = 8 * v38;
    do
    {
      v41 = *v39++;
      v81[0] = v41;
      v42 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 392), v81);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v86, *(*(v4 + 400) + 16 * v42 + 8));
      v40 -= 8;
    }

    while (v40);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v86, v4 + 504);
  v82 = 1;
  v83 = 0;
  v84 = 0;
  v81[0] = &v92;
  v81[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v81, 0);
  v82 += 2;
  v43 = *(v4 + 544);
  if ((v43 & 0x3F) != 0)
  {
    v44 = (v43 >> 6) + 1;
  }

  else
  {
    v44 = v43 >> 6;
  }

  v85 = *(v4 + 544);
  v96 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v81, v44, &v96);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v4 + 504, &v86);
  v45 = v90;
  if (v88)
  {
    v45 = &v89;
  }

  v46 = v87;
  if ((v87 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v47 = 0;
    while (1)
    {
      v49 = *v45++;
      v48 = v49;
      if (v49)
      {
        break;
      }

      v47 -= 64;
      if (!--v46)
      {
        goto LABEL_64;
      }
    }

    v50 = __clz(__rbit64(v48));
    if (v50 + 1 != v47)
    {
      FirstBitSet = v50 - v47;
      do
      {
        v52 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v4 + 336, FirstBitSet);
        v53 = *(*v52 + 224);
        v54 = v52[3];
        v55 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v52[2] + 8, v54);
        if (*(v55 + 40))
        {
          v56 = (*(*v53 + 24))(v53, &v79, v52, v54, v55, 0);
        }

        else
        {
          v56 = 0;
        }

        v57 = v52[5];
        v58 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v52[2] + 8, v57);
        if (*(v58 + 40))
        {
          v56 |= (*(*v53 + 32))(v53, &v79, v52, v57, v58, 0);
        }

        v59 = v52[6];
        v60 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v52[2] + 8, v59);
        if (*(v60 + 40))
        {
          if (((v56 | (*(*v53 + 40))(v53, &v79, v52, v59, v60, 0)) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (!v56)
        {
LABEL_62:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v81, FirstBitSet);
          goto LABEL_63;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v81, FirstBitSet);
LABEL_63:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v86, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_64:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v4 + 504, v81);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4 + 336);
  if (v81[0] && (v82 & 1) == 0)
  {
    (*(*v81[0] + 40))();
  }

  if (v86 && (v88 & 1) == 0)
  {
    (*(*v86 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(&v92);
  v61 = *(v80 + 200);
  if (v61)
  {
    v62 = *(v80 + 216);
    v63 = 8 * v61;
    do
    {
      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v92, *v62, 0, v17);
      v86 = (v92 >> 1);
      v64 = **(re::RenderFrameData::stream((v17 + 264), &v86) + 48);
      v65 = (*(v64 + 872))();
      if (v92)
      {
        if (v92)
        {
        }
      }

      ++v62;
      v63 -= 8;
    }

    while (v63);
  }

  re::ProbeManager::update(v19, *&v79);
  v66 = (*(**(v4 + 40) + 32))(*(v4 + 40));
  v67 = re::ServiceLocator::serviceOrNull<re::FrameAnalysisService>(v66);
  if (v67)
  {
    v70 = (*(v19 + 232) & 1) != 0 || *(v19 + 208) != 0;
    *(v67 + 166) = v70;
  }

  v71 = *(v19 + 152);
  if (v71)
  {
    v72 = (*(v19 + 168) + 16);
    v73 = 1;
    v74 = *(v19 + 152);
    v75 = 1;
    do
    {
      if (*(v72 - 16) == 1 && (*v72 & 1) != 0)
      {
        break;
      }

      v75 = v71 > v73++;
      v72 += 160;
      --v74;
    }

    while (v74);
    if (v75 && *v19 == 1)
    {
      v92 = 0;
      v93 = 0;
      v94[0] = 0;
      NS::SharedPtr<MTL::Buffer>::operator=(&v92, (v19 + 80));
      NS::SharedPtr<MTL::Buffer>::operator=(&v93, (v19 + 88));
      NS::SharedPtr<MTL::Buffer>::operator=(v94, (v19 + 128));
      v94[1] = *(v19 + 96);
      v95 = *(v19 + 824);
      (*(**(v17 + 320) + 176))(*(v17 + 320), &v92);
      if (v94[0])
      {

        v94[0] = 0;
      }

      if (v93)
      {

        v93 = 0;
      }

      if (v92)
      {
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v77, v68, v69);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v78);
}

re *re::ecs2::AREnvironmentProbeSystem::willAddSceneToECSService(re::ecs2::AREnvironmentProbeSystem *this, re::EventBus **a2)
{
  v69[11] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v56 = a2;
  v4 = *(this + 58);
  v5 = *(this + 118);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 480);
    }

    else
    {
      v6 = *(this + 61);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 480);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 61);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v48 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v48);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v56, &v48);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v48);
    v13 = v48;
    goto LABEL_49;
  }

LABEL_17:
  v55 = 0u;
  v48 = 0u;
  *&v49 = 0;
  v50 = 0u;
  v51 = 0u;
  *(&v49 + 1) = -1;
  v52 = 0;
  v53 = 1;
  v54 = 0uLL;
  v14 = *(this + 47);
  *&v55 = 0;
  v15 = *(this + 43);
  DWORD2(v55) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
    v15 = *(this + 43);
  }

  if (v15 <= v14 >> 2)
  {
    v57 = 0;
    memset(v69, 0, 80);
    v43 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v64 = 858;
    v65 = 2048;
    v66 = v14 >> 2;
    v67 = 2048;
    v68 = v15;
    _os_log_send_and_compose_impl(v44, &v57, v69, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 352))
  {
    v16 = this + 360;
  }

  else
  {
    v16 = *(this + 46);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 47);
  ++*(this + 96);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v48;
  v20 = v49;
  v21 = v50;
  *(v18 + 48) = v51;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v51 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v48);
  v23 = *(this + 47);
  if (!v23)
  {
    goto LABEL_58;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::init(v24, this + 336, v56);
  v69[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v56, v69);
  v25 = *(this + 47);
  v26 = *(this + 62);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 62) = v25;
  *&v48 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v48);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 62) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 472))
    {
      v30 = this + 480;
    }

    else
    {
      v30 = *(this + 61);
    }

    *&v30[8 * *(this + 58) - 8] &= v28;
  }

  v31 = *(this + 47);
  v32 = *(this + 68);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 68) = v31;
  *&v48 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v48);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 68) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 520))
    {
      v36 = this + 528;
    }

    else
    {
      v36 = *(this + 67);
    }

    *&v36[8 * *(this + 64) - 8] &= v34;
  }

  v13 = v69[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v56 + 47);
    LOWORD(v48) = 257;
    DWORD1(v48) = 1023969417;
    BYTE8(v48) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v48);
    result = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  v40 = a2[36];
  if (v40)
  {
    v59 = re::globalAllocators(result)[2];
    v41 = (*(*v59 + 32))(v59, 32, 0);
    *v41 = &unk_1F5CF9528;
    v41[1] = this;
    v41[2] = re::ecs2::AREnvironmentProbeSystem::componentWillDeactivateHandler;
    v41[3] = 0;
    v60 = v41;
    *&v48 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v40, v58, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    *(&v48 + 1) = v42;
    re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::addNew(this + 72, &v47, &v48);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v58);
  }

  return result;
}

uint64_t re::ecs2::AREnvironmentProbeSystem::componentWillDeactivateHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 304) + 232);
  if (v2 && (v3 = *(v2 + 112)) != 0 && (v4 = *(v3 + 304)) != 0)
  {
    v5 = *(a2 + 312);
    v7 = v5;
    if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 2, &v7) != -1)
    {
      re::ProbeManager::removeProbe(v4, v5);
    }

    return 0;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "renderManager && renderManager->probeManager()", "willDeactivateComponent", 64);
    result = _os_crash("assertion failure: (renderManager && renderManager->probeManager()) ");
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::AREnvironmentProbeSystem::willRemoveSceneFromECSService(re::ecs2::AREnvironmentProbeSystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v17 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v17);
  if (v3 != -1)
  {
    v4 = *(this + 50) + 16 * v3;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v17);
  }

  result = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 72, &v16);
  if (result != -1)
  {
    if (*(v16 + 36))
    {
      re::EventBus::unsubscribe(*(v16 + 36), *(*(this + 73) + 24 * result + 8), *(*(this + 73) + 24 * result + 16));
    }

    return re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::remove(this + 576, &v16);
  }

  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::AREnvironmentProbeComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::AREnvironmentProbeSystem::~AREnvironmentProbeSystem(re::ecs2::AREnvironmentProbeSystem *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 576);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF9430;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 576);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF9430;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AREnvironmentProbeSystem,REEventHandlerResult (re::ecs2::AREnvironmentProbeSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AREnvironmentProbeSystem,REEventHandlerResult (re::ecs2::AREnvironmentProbeSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9528;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AREnvironmentProbeSystem,REEventHandlerResult (re::ecs2::AREnvironmentProbeSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9528;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227AREnvironmentProbeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230ProbeClusterExclusionComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF9580;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF95D8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF9630;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF9688;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF9580;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF95D8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF9630;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF9688;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9580;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9580;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF95D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF95D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9630;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9630;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9688;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9688;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

float re::ecs2::OcclusionComponent::getOcclusionCullingResetEstimateAABBTimeDeltaThreshold(re::ecs2::OcclusionComponent *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0700, memory_order_acquire) & 1) == 0)
  {
    v6[1] = v1;
    v6[2] = v2;
    if (__cxa_guard_acquire(&qword_1EE1B0700))
    {
      re::Defaults::floatValue(v6, "OcclusionCullingResetEstimateAABBTimeDeltaThreshold", v4);
      v5 = *(v6 + 1);
      if (!LOBYTE(v6[0]))
      {
        v5 = 5.0;
      }

      dword_1EE1B06E0 = LODWORD(v5);
      __cxa_guard_release(&qword_1EE1B0700);
    }
  }

  return *&dword_1EE1B06E0;
}

BOOL re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(unint64_t a1, float *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v9 = a1;
  v347 = *MEMORY[0x1E69E9840];
  v282 = (*(**(*(a1 + 8) + 256) + 24))(*(*(a1 + 8) + 256));
  v280 = a2;
  *(v9 + 128) = *a2 + *(v9 + 128);
  v10 = *(a3 + 8);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v339, v9 + 16, v10, v11 ^ (v11 >> 31));
  v12 = *(v9 + 32) + 136 * v339.u32[3];
  v278 = *(*(v9 + 8) + 232);
  v279 = a5;
  v13 = *(v278[18] + 32);
  v14 = *(v12 + 24);
  v15 = v13 & 7;
  v16 = v14 + 240 * v15 + 80;
  v17 = (*(v14 + 8 * v15 + 8) ^ v13) & 0xFFFFFFFFFFFFFFFLL;
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v275 = *(v9 + 32) + 136 * v339.u32[3];
  v19 = *(v12 + 80);
  v20 = *(v19 + 8 * v15 + 8);
  v281 = v9;
  if (v17)
  {
    goto LABEL_5;
  }

  if (*(v16 + 184))
  {
    v274 = 1;
  }

  else
  {
    v21 = *(v16 + 80);
    if ([*(v16 + 192) length] != (4 * v21))
    {
LABEL_5:
      v274 = 0;
      goto LABEL_22;
    }

    v285 = v18;
    v289 = a4;
    v294 = [*(v16 + 192) contents];
    if (*(v16 + 216))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v9 = 0;
      do
      {
        v25 = (*(v16 + 232) + v22);
        v26 = v25[1];
        if (v26)
        {
          v27 = std::__shared_weak_count::lock(v26);
          if (v27)
          {
            v28 = *v25;
            if (*v25)
            {
              a5 = *(v16 + 120);
              if (a5 <= v9)
              {
                goto LABEL_309;
              }

              a5 = *(v16 + 80);
              if (a5 <= v9)
              {
LABEL_313:
                *v302 = 0;
                v342 = 0u;
                v343 = 0u;
                v340 = 0u;
                v341 = 0u;
                v339 = 0u;
                v256 = MEMORY[0x1E69E9C10];
                v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v338 = 136315906;
                *&v338[4] = "operator[]";
                *&v338[12] = 1024;
                if (v257)
                {
                  v258 = 3;
                }

                else
                {
                  v258 = 2;
                }

                *&v338[14] = 797;
                *&v338[18] = 2048;
                *&v338[20] = v9;
                *&v338[28] = 2048;
                *&v338[30] = a5;
                _os_log_send_and_compose_impl(v258, v302, &v339, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v338, 38, v270, v271);
                _os_crash_msg();
                __break(1u);
LABEL_317:
                re::internal::assertLog(4, v194, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
                _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
                __break(1u);
LABEL_318:
                re::internal::assertLog(4, v186, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
                _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
                __break(1u);
              }

              v29 = *(v16 + 136) + v24;
              v30 = (*(v16 + 96) + v23);
              v339 = *v29;
              v340 = *(v29 + 16);
              v341 = *(v29 + 32);
              v342 = *(v29 + 48);
              v343 = *v30;
              v344 = v30[1];
              v31 = v294[v9];
              if ((*v28 & 1) == 0)
              {
                *v28 = 1;
              }

              v32 = v339;
              *(v28 + 48) = v341;
              *(v28 + 64) = v342;
              *(v28 + 80) = v343;
              *(v28 + 96) = v344;
              *(v28 + 16) = v32;
              *(v28 + 32) = v340;
              *(v28 + 112) = v31;
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }
        }

        ++v9;
        v24 += 64;
        v23 += 32;
        v22 += 16;
      }

      while (v9 < *(v16 + 216));
    }

    v274 = 0;
    v33 = *v285;
    v34 = v285[1];
    v35 = v285[3];
    v9 = v281;
    *(v281 + 96) = v285[2];
    *(v281 + 112) = v35;
    *(v281 + 64) = v33;
    *(v281 + 80) = v34;
    a5 = v279;
    a4 = v289;
  }

LABEL_22:
  v36 = v278[18];
  v272 = *(v36 + 16);
  v276 = *(v36 + 24);
  v37 = *(a5 + 10);
  v333 = 0;
  v331 = 0;
  v329 = 0;
  v330 = 0;
  v332 = 0;
  v328 = 0;
  v326 = 0;
  v324 = 0;
  v325 = 0;
  v327 = 0;
  v323 = 0;
  v321 = 0;
  v319 = 0;
  v320 = 0;
  v322 = 0;
  v318 = 0;
  v316 = 0uLL;
  v315 = 0;
  v317 = 0;
  v38 = v280;
  if (v37)
  {
    re::DynamicArray<re::AABB>::setCapacity(&v329, v37);
    v39 = v325;
  }

  else
  {
    v39 = 0;
  }

  if (v39 < v37)
  {
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(&v324, v37);
  }

  v40 = (v20 ^ v13) & 0xFFFFFFFFFFFFFFFLL;
  v41 = v282;
  if (v320 < v37)
  {
    re::DynamicArray<int>::setCapacity(&v319, v37);
  }

  if (v37)
  {
    re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::setCapacity(&v315, v37);
  }

  if (v40)
  {
    v42 = 1;
  }

  else
  {
    v42 = *(v19 + 72 + v15);
  }

  v273 = v42;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v339, a5, 0);
  v43 = v339.i64[0];
  v312 = a4;
  v313 = v339.i64[0];
  v314 = v339.i32[2];
  v44 = v339.u16[4];
  v45 = HIWORD(v339.i32[2]);
  if (v339.i64[0] != a5 || v339.u16[4] != 0xFFFF || v45 != 0xFFFF)
  {
    v48.i64[0] = 0x7F0000007FLL;
    v48.i64[1] = 0x7F0000007FLL;
    v283 = vnegq_f32(v48);
    v277 = v37;
    while (1)
    {
      v49 = v45;
      v50 = *(v43 + 16);
      if (v50 <= v45)
      {
        goto LABEL_295;
      }

      v49 = *(*(*(v43 + 32) + 16 * v45) + 8 * v44);
      v49[17].f32[0] = *v38 + v49[17].f32[0];
      a4 = v49[1].u64[0];
      v51 = (*(*v41 + 8))(&v339, v41, a4);
      if ((*(a4 + 304) & 1) != 0 && ((v49[2].i8[4] & 1) != 0 || (v49[19].i8[4] & 1) == 0))
      {
        v54 = v339.i8[0] ^ 1;
        if (!v339.i64[1])
        {
          v54 = 1;
        }

        if (v49[1].i8[9] == 1 && (v54 & 1) != 0)
        {
          break;
        }
      }

      v49[4].i8[0] = 0;
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      v49[5] = v283;
      v49[6] = v52;
      v49[7] = v283;
      v49[8] = v52;
      v49[9] = xmmword_1E3047670;
      v49[10] = xmmword_1E3047680;
      v49[11] = xmmword_1E30476A0;
      v49[12] = xmmword_1E30474D0;
      v49[13] = xmmword_1E3047670;
      v49[14] = xmmword_1E3047680;
      v49[15] = xmmword_1E30476A0;
      v49[16] = xmmword_1E30474D0;
      v49[17].f32[0] = re::ecs2::OcclusionComponent::getOcclusionCullingResetEstimateAABBTimeDeltaThreshold(v51);
LABEL_43:
      v53 = v49[3].i64[0];
      if (*v53 == 1)
      {
        *v53 = 0;
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v313);
      v43 = v313;
      v44 = v314;
      v45 = HIWORD(v314);
      if (v313 == a5 && v314 == 0xFFFF && HIWORD(v314) == 0xFFFF)
      {
        goto LABEL_37;
      }
    }

    re::TransformService::worldMatrix(*(*(v9 + 8) + 288), a4, 0, v345);
    v55.i64[0] = 0x7F0000007FLL;
    v55.i64[1] = 0x7F0000007FLL;
    v310 = v283;
    v311 = v55;
    re::StackScratchAllocator::StackScratchAllocator(&v339);
    v303 = 0;
    v304 = 0;
    v305 = 1;
    v307 = 0;
    v308 = 0;
    v306 = 0;
    v309 = 0;
    re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::init(&v303, &v339, 1uLL);
    *v338 = a4;
    *&v338[16] = xmmword_1E3047670;
    *&v338[32] = xmmword_1E3047680;
    *&v338[48] = xmmword_1E30476A0;
    *&v338[64] = xmmword_1E30474D0;
    re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::add(&v303, v338);
    v57 = v308;
    if (v308)
    {
      while (1)
      {
        v58 = re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::operator[](&v303, --v57);
        *&v338[16] = v58[1];
        *&v338[32] = v58[2];
        *&v338[48] = v58[3];
        *&v338[64] = v58[4];
        *v338 = *v58;
        re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::operator[](&v303, v57);
        v308 = v57;
        ++v309;
        v59 = *v338;
        v56 = re::ecs2::EntityComponentCollection::get((*v338 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v56)
        {
          break;
        }

        v56 = re::ecs2::EntityComponentCollection::get((v59 + 6), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v56)
        {
          break;
        }

        v56 = re::ecs2::EntityComponentCollection::get((v59 + 6), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v56)
        {
          v60 = v56;
          v61 = v59[24];
          if (v61)
          {
            v56 = re::AssetHandle::loadedAsset<re::MeshAsset>((v61 + 32));
            if (v56)
            {
              a4 = v56;
              if (*(v56 + 79))
              {
                v62 = *(v56 + 73);
                a5 = *(v56 + 71);
                v56 = re::ecs2::EntityComponentCollection::get((v59 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v56)
                {
                  v62 = *(v56 + 26);
                  a5 = *(v56 + 24);
                }

                if (*(v60 + 6))
                {
                  v41 = *(v60 + 20);
                  if (*(v41 + 72))
                  {
                    v9 = 0;
                    v64.i64[0] = 0x7F0000007FLL;
                    v64.i64[1] = 0x7F0000007FLL;
                    v65 = vnegq_f32(v64);
                    while (a5 != v9)
                    {
                      v290 = v65;
                      v295 = v64;
                      v50 = re::DataArray<re::MeshInstance>::get(*(a4 + 632) + 72, *(v62 + 8 * v9));
                      v66 = re::MeshBoundingBoxes::boundingBox((v41 + 48), v9);
                      v56 = re::AABB::transform(v66, (v50 + 32), v302);
                      v67 = v290;
                      v67.i32[3] = 0;
                      v68 = *v302;
                      v69 = *&v302[16];
                      v68.i32[3] = 0;
                      v65 = vminnmq_f32(v67, v68);
                      v70 = v295;
                      v70.i32[3] = 0;
                      v69.i32[3] = 0;
                      v64 = vmaxnmq_f32(v70, v69);
                      if (++v9 >= *(v41 + 72))
                      {
                        goto LABEL_71;
                      }
                    }

                    re::internal::assertLog(6, v63, *v64.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a5, a5);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v268, v269);
                    __break(1u);
LABEL_295:
                    *v302 = 0;
                    v342 = 0u;
                    v343 = 0u;
                    v340 = 0u;
                    v341 = 0u;
                    v339 = 0u;
                    v244 = MEMORY[0x1E69E9C10];
                    v245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v338 = 136315906;
                    *&v338[4] = "operator[]";
                    *&v338[12] = 1024;
                    if (v245)
                    {
                      v246 = 3;
                    }

                    else
                    {
                      v246 = 2;
                    }

                    *&v338[14] = 797;
                    *&v338[18] = 2048;
                    *&v338[20] = v49;
                    *&v338[28] = 2048;
                    *&v338[30] = v50;
                    _os_log_send_and_compose_impl(v246, v302, &v339, 80, &dword_1E1C61000, v244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v338, 38, v270, v271);
                    _os_crash_msg();
                    __break(1u);
LABEL_299:
                    v303 = 0;
                    v342 = 0u;
                    v343 = 0u;
                    v340 = 0u;
                    v341 = 0u;
                    v339 = 0u;
                    v247 = MEMORY[0x1E69E9C10];
                    v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v338 = 136315906;
                    *&v338[4] = "operator[]";
                    *&v338[12] = 1024;
                    if (v248)
                    {
                      v249 = 3;
                    }

                    else
                    {
                      v249 = 2;
                    }

                    *&v338[14] = 858;
                    *&v338[18] = 2048;
                    *&v338[20] = v50;
                    *&v338[28] = 2048;
                    *&v338[30] = v41;
                    _os_log_send_and_compose_impl(v249, &v303, &v339, 80, &dword_1E1C61000, v247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v338, 38, v270, v271);
                    _os_crash_msg();
                    __break(1u);
LABEL_303:
                    re::internal::assertLog(4, v227, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                    _os_crash("assertion failure: (m_size > 0) Array is empty");
                    __break(1u);
LABEL_304:
                    v303 = 0;
                    v342 = 0u;
                    v343 = 0u;
                    v340 = 0u;
                    v341 = 0u;
                    v339 = 0u;
                    v250 = MEMORY[0x1E69E9C10];
                    v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v345 = 136315906;
                    *&v345[4] = "operator[]";
                    *&v345[12] = 1024;
                    if (v251)
                    {
                      v252 = 3;
                    }

                    else
                    {
                      v252 = 2;
                    }

                    *&v345[14] = 858;
                    *&v345[18] = 2048;
                    *&v345[20] = a4;
                    *&v345[28] = 2048;
                    *&v345[30] = v9;
                    _os_log_send_and_compose_impl(v252, &v303, &v339, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v270, v271);
                    _os_crash_msg();
                    __break(1u);
LABEL_308:
                    re::internal::assertLog(4, v206, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                    _os_crash("assertion failure: (m_size > 0) Array is empty");
                    __break(1u);
LABEL_309:
                    *v302 = 0;
                    v342 = 0u;
                    v343 = 0u;
                    v340 = 0u;
                    v341 = 0u;
                    v339 = 0u;
                    v253 = MEMORY[0x1E69E9C10];
                    v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v338 = 136315906;
                    *&v338[4] = "operator[]";
                    *&v338[12] = 1024;
                    if (v254)
                    {
                      v255 = 3;
                    }

                    else
                    {
                      v255 = 2;
                    }

                    *&v338[14] = 797;
                    *&v338[18] = 2048;
                    *&v338[20] = v9;
                    *&v338[28] = 2048;
                    *&v338[30] = a5;
                    _os_log_send_and_compose_impl(v255, v302, &v339, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v338, 38, v270, v271);
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_313;
                  }
                }
              }
            }
          }

          v64.i64[0] = 0x7F0000007FLL;
          v64.i64[1] = 0x7F0000007FLL;
          v65 = vnegq_f32(v64);
LABEL_71:
          v335 = v65;
          v336 = v64;
          v71 = *(v60 + 6);
          v337 = v71 != 0;
          v9 = v281;
          v41 = v282;
          if (!v71)
          {
            break;
          }
        }

        else
        {
          re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper(&v335, v59);
          v337 = 1;
          v65 = v335;
          v64 = v336;
        }

        v72 = vcgtq_f32(v65, v64);
        v72.i32[3] = v72.i32[2];
        if ((vmaxvq_u32(v72) & 0x80000000) == 0)
        {
          v73 = *(*(v9 + 8) + 728);
          if (!v73 || (v56 = (*(*v73 + 24))(v73, v59), *&v56 > 0.0))
          {
            v56 = re::AABB::transform(&v335, &v338[16], v302);
            v74 = v310;
            v75 = v311;
            v74.i32[3] = 0;
            v76 = *v302;
            v77 = *&v302[16];
            v76.i32[3] = 0;
            v75.i32[3] = 0;
            v77.i32[3] = 0;
            v310 = vminnmq_f32(v74, v76);
            v311 = vmaxnmq_f32(v75, v77);
          }
        }

        v78 = v59[43];
        if (v78)
        {
          v50 = v59[45];
          a4 = v50 + 8 * v78;
          v291 = *&v338[32];
          v296 = *&v338[16];
          v284 = *&v338[64];
          v286 = *&v338[48];
          do
          {
            v79 = *v50;
            if (*(*v50 + 304))
            {
              v56 = re::ecs2::EntityComponentCollection::get((v79 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (!v56)
              {
                v56 = (*(*v41 + 8))(v302, v41, v79);
                if (v302[0] != 1 || *&v302[8] == 0)
                {
                  v81 = *(v79 + 256);
                  v82 = v296;
                  v83 = v291;
                  v84 = v286;
                  v85 = v284;
                  if (v81)
                  {
                    v86 = 0;
                    v87 = *(v81 + 48);
                    v88 = *(v81 + 52);
                    v89 = v87 + v87;
                    v90 = v88 + v88;
                    v91 = *(v81 + 56);
                    v92 = *(v81 + 60);
                    v93 = v91 + v91;
                    v94 = v87 * (v87 + v87);
                    v95 = v88 * (v88 + v88);
                    v96 = v91 * (v91 + v91);
                    v97 = v89 * v88;
                    v98 = v89 * v91;
                    v99 = v90 * v91;
                    v100 = v89 * v92;
                    v101 = v90 * v92;
                    v102 = v93 * v92;
                    v103.i32[3] = 0;
                    v103.f32[0] = 1.0 - (v95 + v96);
                    v103.f32[1] = v97 + v102;
                    v103.f32[2] = v98 - v101;
                    v104.i32[3] = 0;
                    v104.f32[0] = v97 - v102;
                    v104.f32[1] = 1.0 - (v94 + v96);
                    v104.f32[2] = v99 + v100;
                    v105.i32[3] = 0;
                    v105.f32[0] = v98 + v101;
                    v105.f32[1] = v99 - v100;
                    v105.f32[2] = 1.0 - (v94 + v95);
                    v106 = *(v81 + 32);
                    v107 = vmulq_n_f32(v103, v106.f32[0]);
                    v108 = vmulq_laneq_f32(v105, v106, 2);
                    v109 = *(v81 + 64);
                    v109.i32[3] = 1.0;
                    v110 = vmulq_n_f32(v104, COERCE_FLOAT(HIDWORD(*(v81 + 32))));
                    v334.columns[0] = v107;
                    v334.columns[1] = v110;
                    v334.columns[2] = v108;
                    v334.columns[3] = v109;
                    do
                    {
                      *&v302[v86 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v296, COERCE_FLOAT(*&v334.columns[v86])), v291, *v334.columns[v86].f32, 1), v286, v334.columns[v86], 2), v284, v334.columns[v86], 3);
                      ++v86;
                    }

                    while (v86 != 4);
                    v82 = *v302;
                    v83 = *&v302[16];
                    v84 = *&v302[32];
                    v85 = *&v302[48];
                  }

                  *v302 = v79;
                  *&v302[16] = v82;
                  *&v302[32] = v83;
                  *&v302[48] = v84;
                  *&v302[64] = v85;
                  re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::add(&v303, v302);
                }
              }
            }

            v50 += 8;
          }

          while (v50 != a4);
          v57 = v308;
        }

        if (!v57)
        {
          goto LABEL_95;
        }
      }

      v49[4].i8[0] = 0;
      v122.i64[0] = 0x7F0000007FLL;
      v122.i64[1] = 0x7F0000007FLL;
      v49[5] = v283;
      v49[6] = v122;
      v49[7] = v283;
      v49[8] = v122;
      v49[9] = xmmword_1E3047670;
      v49[10] = xmmword_1E3047680;
      v49[11] = xmmword_1E30476A0;
      v49[12] = xmmword_1E30474D0;
      v49[13] = xmmword_1E3047670;
      v49[14] = xmmword_1E3047680;
      v49[15] = xmmword_1E30476A0;
      v49[16] = xmmword_1E30474D0;
      v49[17].f32[0] = re::ecs2::OcclusionComponent::getOcclusionCullingResetEstimateAABBTimeDeltaThreshold(v56);
      if (v57)
      {
        a4 = 0;
        a5 = v279;
        v37 = v277;
        do
        {
          re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::operator[](&v303, a4++);
        }

        while (v57 != a4);
      }

      else
      {
        a5 = v279;
        v37 = v277;
      }

      v38 = v280;
      goto LABEL_196;
    }

LABEL_95:
    v111 = v49[13];
    v112 = &v49[2].f32[2];
    v113 = vld1q_dup_f32(v112);
    v114 = vsubq_f32(v310, v113);
    v310 = v114;
    v311 = vaddq_f32(v113, v311);
    v115 = &v49[17].f32[1];
    v116 = vld1q_dup_f32(v115);
    v37 = v277;
    v38 = v280;
    if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v116, vabdq_f32(v49[14], *&v345[16])), vcgeq_f32(v116, vabdq_f32(v111, *v345))), vandq_s8(vcgeq_f32(v116, vabdq_f32(v49[15], *&v345[32])), vcgeq_f32(v116, vabdq_f32(v49[16], v346))))) & 0x80000000) != 0 && (v117 = v49[17].f32[0], OcclusionCullingResetEstimateAABBTimeDeltaThreshold = re::ecs2::OcclusionComponent::getOcclusionCullingResetEstimateAABBTimeDeltaThreshold(v56), v114 = v310, v117 < OcclusionCullingResetEstimateAABBTimeDeltaThreshold))
    {
      v114.i32[3] = 0;
      v119 = v49[7];
      v120 = v49[8];
      v119.i32[3] = 0;
      v121 = v311;
      v121.i32[3] = 0;
      v114 = vminnmq_f32(v114, v119);
      v120.i32[3] = 0;
      v310 = v114;
      v311 = vmaxnmq_f32(v121, v120);
    }

    else
    {
      v49[17].i32[0] = 0;
      v123 = *&v345[16];
      v49[13] = *v345;
      v49[14] = v123;
      v124 = v346;
      v49[15] = *&v345[32];
      v49[16] = v124;
    }

    v127.i32[1] = v310.i32[1];
    v125 = v311;
    v49[7] = v310;
    v49[8] = v125;
    v126 = v49[3].i64[0];
    v127.i32[0] = v49[17].i32[1];
    if (v126->i8[0] == 1 && ((v128 = v126[1], v129 = v126[2], v130 = v126[3], v131 = v126[4], v132 = v126[5], v133 = v126[6], v134 = v126[7].i8[0], v135 = v126[7].i8[1], v136 = v126[7].i8[2], v137 = v126[7].i8[3], v138 = vcgtq_f32(v132, v114), v138.i32[3] = v138.i32[2], (vmaxvq_u32(v138) & 0x80000000) == 0) && (v139 = vcgtq_f32(v114, v133), v139.i32[3] = v139.i32[2], (vmaxvq_u32(v139) & 0x80000000) == 0) && (v140 = vcgtq_f32(v132, v311), v140.i32[3] = v140.i32[2], (vmaxvq_u32(v140) & 0x80000000) == 0) && (v141 = vcgtq_f32(v311, v133), v141.i32[3] = v141.i32[2], (vmaxvq_u32(v141) & 0x80000000) == 0) || ((vmovn_s32(vceqq_f32(v132, v114)).u8[0] & 1) != 0 || fabsf(vsubq_f32(v132, v114).f32[0]) <= *v127.i32) && (v132.f32[1] == v114.f32[1] || vabds_f32(v132.f32[1], v114.f32[1]) <= *v127.i32) && (v132.f32[2] == v114.f32[2] || vabds_f32(v132.f32[2], v114.f32[2]) <= *v127.i32) && (v133.f32[0] == v311.f32[0] || vabds_f32(v133.f32[0], v311.f32[0]) <= *v127.i32) && (v133.f32[1] == v311.f32[1] || vabds_f32(v133.f32[1], v311.f32[1]) <= *v127.i32) && (v133.f32[2] == v311.f32[2] || vabds_f32(v133.f32[2], v311.f32[2]) <= *v127.i32)) && (v142 = vdupq_lane_s32(v127, 0), (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v142, vabdq_f32(v129, *&v345[16])), vcgeq_f32(v142, vabdq_f32(v128, *v345))), vandq_s8(vcgeq_f32(v142, vabdq_f32(v130, *&v345[32])), vcgeq_f32(v142, vabdq_f32(v131, v346))))) & 0x80000000) != 0))
    {
      if (v137)
      {
        a5 = v279;
        if (v134)
        {
          v143 = 2;
        }

        else if (v273 & 1 | ((v136 & 1) == 0))
        {
          if (v135)
          {
            v143 = 4;
          }

          else
          {
            v143 = 1;
          }
        }

        else
        {
          v143 = 3;
        }
      }

      else
      {
        v143 = 0;
        a5 = v279;
      }

      v49[4].i8[0] = v143;
      v49[5] = v132;
      v49[6] = v133;
      v49[9] = v128;
      v49[10] = v129;
      v49[11] = v130;
      v49[12] = v131;
    }

    else
    {
      v144 = v49[5];
      v145 = vcgtq_f32(v144, v114);
      v145.i32[3] = v145.i32[2];
      if ((vmaxvq_u32(v145) & 0x80000000) != 0 || (v146 = v49[6], v147 = vcgtq_f32(v114, v146), v147.i32[3] = v147.i32[2], (vmaxvq_u32(v147) & 0x80000000) != 0) || (v148 = vcgtq_f32(v144, v311), v148.i32[3] = v148.i32[2], (vmaxvq_u32(v148) & 0x80000000) != 0) || (v149 = vcgtq_f32(v311, v146), v149.i32[3] = v149.i32[2], (vmaxvq_u32(v149) & 0x80000000) != 0))
      {
        a5 = v279;
        if (((vmovn_s32(vceqq_f32(v144, v114)).u8[0] & 1) != 0 || fabsf(vsubq_f32(v144, v114).f32[0]) <= *v127.i32) && (v144.f32[1] == v114.f32[1] || vabds_f32(v144.f32[1], v114.f32[1]) <= *v127.i32) && (v144.f32[2] == v114.f32[2] || vabds_f32(v144.f32[2], v114.f32[2]) <= *v127.i32) && ((v151 = v49[6].f32[0], v151 == v311.f32[0]) || vabds_f32(v151, v311.f32[0]) <= *v127.i32) && ((v152 = v49[6].f32[1], v152 == v311.f32[1]) || vabds_f32(v152, v311.f32[1]) <= *v127.i32))
        {
          v174 = v49[6].f32[2];
          v150 = vabds_f32(v174, v311.f32[2]) > *v127.i32 && v174 != v311.f32[2];
        }

        else
        {
          v150 = 1;
        }
      }

      else
      {
        v150 = 0;
        a5 = v279;
      }

      v153 = (v273 & 1) != 0 && v49[4].u8[0] == 3;
      v154 = vdupq_lane_s32(v127, 0);
      if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v154, vabdq_f32(v49[10], *&v345[16])), vcgeq_f32(v154, vabdq_f32(v49[9], *v345))), vandq_s8(vcgeq_f32(v154, vabdq_f32(v49[11], *&v345[32])), vcgeq_f32(v154, vabdq_f32(v49[12], v346))))) & 0x80000000) == 0 || v150 || v153)
      {
        v49[4].i8[0] = 0;
        v155.i64[0] = 0x7F0000007FLL;
        v155.i64[1] = 0x7F0000007FLL;
        v49[5] = v283;
        v49[6] = v155;
        v49[9] = xmmword_1E3047670;
        v49[10] = xmmword_1E3047680;
        v274 = 1;
        v49[11] = xmmword_1E30476A0;
        v49[12] = xmmword_1E30474D0;
      }
    }

    re::DynamicArray<re::AABB>::add(&v329, &v310);
    re::DynamicArray<re::Matrix4x4<float>>::add(&v324, v345);
    v335.i32[0] = v49[2].i32[0];
    re::DynamicArray<float>::add(&v319, v335.f32);
    v157 = v49[3];
    v158 = v49[3].i64[1];
    if (v158)
    {
      atomic_fetch_add_explicit((v158 + 16), 1uLL, memory_order_relaxed);
    }

    v159 = *(&v316 + 1);
    if (*(&v316 + 1) >= v316)
    {
      a4 = *(&v316 + 1) + 1;
      if (v316 < *(&v316 + 1) + 1)
      {
        v297 = v157;
        if (v315)
        {
          v160 = 8;
          if (v316)
          {
            v160 = 2 * v316;
          }

          if (v160 <= a4)
          {
            v161 = *(&v316 + 1) + 1;
          }

          else
          {
            v161 = v160;
          }

          re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::setCapacity(&v315, v161);
        }

        else
        {
          re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::setCapacity(&v315, a4);
          ++v317;
        }

        v157 = v297;
      }

      v159 = *(&v316 + 1);
    }

    *(v318 + 16 * v159) = v157;
    *(&v316 + 1) = v159 + 1;
    ++v317;
    if ((atomic_load_explicit(&qword_1EE1B0708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0708))
    {
      re::Defaults::BOOLValue(v338, "DrawDebugOcclusionBoundingBox", v176);
      if (v338[0])
      {
        v177 = v338[1];
      }

      else
      {
        v177 = 0;
      }

      _MergedGlobals_357 = v177;
      __cxa_guard_release(&qword_1EE1B0708);
    }

    if (_MergedGlobals_357 != 1)
    {
      goto LABEL_177;
    }

    v162 = v278[10];
    if (!v162)
    {
      goto LABEL_177;
    }

    v163 = v49[4].u8[0];
    if (!v49[4].i8[0])
    {
      goto LABEL_177;
    }

    *v338 = 0uLL;
    if (v163 > 2)
    {
      if (v163 == 3)
      {
        v164 = xmmword_1E30476A0;
        goto LABEL_175;
      }

      if (v163 == 4)
      {
        v164 = xmmword_1E3047680;
        goto LABEL_175;
      }
    }

    else
    {
      if (v163 == 1)
      {
        v164 = xmmword_1E3060D60;
        goto LABEL_175;
      }

      if (v163 == 2)
      {
        v164 = xmmword_1E3047670;
LABEL_175:
        *v338 = v164;
      }
    }

    re::DebugRenderer::drawBox(v162, v49 + 9, v49[5].f32, v338, 0);
LABEL_177:
    if ((atomic_load_explicit(&qword_1EE1B0710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0710))
    {
      re::Defaults::BOOLValue(v338, "DrawDebugOcclusionDepthBias", v178);
      if (v338[0])
      {
        v179 = v338[1];
      }

      else
      {
        v179 = 0;
      }

      byte_1EE1B06D1 = v179;
      __cxa_guard_release(&qword_1EE1B0710);
    }

    if (byte_1EE1B06D1 != 1)
    {
      goto LABEL_196;
    }

    v165 = v278[10];
    if (!v165)
    {
      goto LABEL_196;
    }

    v166 = *(v9 + 144);
    if (!v166)
    {
      goto LABEL_183;
    }

    v167 = atomic_load((v166 + 896));
    if (v167 == 2)
    {
      goto LABEL_185;
    }

    if (!*(v9 + 144))
    {
LABEL_183:
      (*(**(*(v9 + 8) + 240) + 8))(v338);
      v168 = *(v9 + 136);
      *(v9 + 136) = *v338;
      *v338 = v168;
      v169 = *(v9 + 152);
      *(v9 + 152) = *&v338[16];
      *&v338[16] = v169;
      re::AssetHandle::~AssetHandle(v338);
    }

    re::AssetHandle::loadAsync((v9 + 136));
LABEL_185:
    if (!re::FontID::isValid((v9 + 160)))
    {
      re::makeFontID(v338, (v9 + 136));
      v171 = re::StringID::operator=((v9 + 160), v338);
      if (v338[0])
      {
        if (v338[0])
        {
        }
      }
    }

    memset(v338, 0, 48);
    *v338 = 1036831949;
    *&v338[20] = 1036831949;
    *&v338[40] = 1036831949;
    v172 = v346;
    v172.i32[3] = 1065353216;
    *&v338[48] = v172;
    re::DynamicString::format(v302, "%f", v170, v335.f32[0]);
    if (v302[8])
    {
      v173 = *&v302[16];
    }

    else
    {
      v173 = &v302[9];
    }

    v334.columns[0] = xmmword_1E3096540;
    re::DebugRenderer::drawText(v165, v338, v173, (v9 + 160), &v334, 0);
    if (*v302 && (v302[8] & 1) != 0)
    {
      (*(**v302 + 40))();
    }

LABEL_196:
    while (v304)
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v303);
    }

    if (v303 && (v305 & 1) == 0)
    {
      (*(*v303 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(&v339);
    goto LABEL_43;
  }

LABEL_37:
  v46 = v278[14];
  if (v46)
  {
    v47 = re::RenderFrameBox::get((v46 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v47 = 0;
  }

  v180 = v276 & 0xFFFFFFFFFFFFFFFLL | (v272 << 60);
  (*(**(*(v9 + 8) + 720) + 96))(&v334);
  if (v274)
  {
    goto LABEL_228;
  }

  v181 = *(v9 + 128);
  if ((atomic_load_explicit(&qword_1EE1B06F8, memory_order_acquire) & 1) == 0)
  {
    v299 = v181;
    v259 = __cxa_guard_acquire(&qword_1EE1B06F8);
    v181 = v299;
    if (v259)
    {
      re::Defaults::floatValue(&v339, "OcclusionCullingCameraTimeDeltaThreshold", v260);
      v261 = v339.f32[1];
      if (!v339.i8[0])
      {
        v261 = 0.5;
      }

      dword_1EE1B06DC = LODWORD(v261);
      __cxa_guard_release(&qword_1EE1B06F8);
      v181 = v299;
    }
  }

  if (*&dword_1EE1B06DC < v181)
  {
    goto LABEL_228;
  }

  v348 = __invert_f4(v334);
  v231 = 0;
  v232 = *(v9 + 80);
  v233 = *(v9 + 96);
  v234 = *(v9 + 112);
  *v338 = *(v9 + 64);
  *&v338[16] = v232;
  *&v338[32] = v233;
  *&v338[48] = v234;
  do
  {
    *(&v339 + v231) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348.columns[0], COERCE_FLOAT(*&v338[v231])), v348.columns[1], *&v338[v231], 1), v348.columns[2], *&v338[v231], 2), v348.columns[3], *&v338[v231], 3);
    v231 += 16;
  }

  while (v231 != 64);
  v298 = v342;
  re::makeQuaternionFromMatrix<float>(&v339);
  v236 = 1.0;
  v237 = fabsf(v235);
  if (v237 <= 1.0 || fabsf(v237 + -1.0) < (((v237 + 1.0) + 1.0) * 0.00001))
  {
    if (v235 <= 1.0)
    {
      v236 = v235;
    }

    if (v236 < -1.0)
    {
      v236 = -1.0;
    }

    v239 = acosf(v236);
    v238 = v239 + v239;
  }

  else
  {
    v238 = NAN;
  }

  v241 = vmulq_f32(v298, v298);
  v240 = vaddv_f32(*v241.f32);
  v241.i32[0] = v241.i32[2];
  if ((atomic_load_explicit(&qword_1EE1B06E8, memory_order_acquire) & 1) == 0)
  {
    v300 = v238;
    v292 = v240;
    v287 = v241.i32[2];
    v262 = __cxa_guard_acquire(&qword_1EE1B06E8);
    v241.i32[0] = v287;
    v240 = v292;
    v238 = v300;
    if (v262)
    {
      re::Defaults::floatValue(&v339, "OcclusionCullingCameraAnglarErrorThreshold", v263);
      v264 = v339.f32[1];
      if (!v339.i8[0])
      {
        v264 = 10.0;
      }

      dword_1EE1B06D4 = LODWORD(v264);
      __cxa_guard_release(&qword_1EE1B06E8);
      v241.i32[0] = v287;
      v240 = v292;
      v238 = v300;
    }
  }

  v242 = v241.f32[0] + v240;
  v243 = *&dword_1EE1B06D4;
  if ((atomic_load_explicit(&qword_1EE1B06F0, memory_order_acquire) & 1) == 0)
  {
    v301 = v238;
    v293 = v243;
    v288 = v242;
    v265 = __cxa_guard_acquire(&qword_1EE1B06F0);
    v242 = v288;
    v243 = v293;
    v238 = v301;
    if (v265)
    {
      re::Defaults::floatValue(&v339, "OcclusionCullingCameraDistanceErrorThreshold", v266);
      v267 = v339.f32[1];
      if (!v339.i8[0])
      {
        v267 = 0.0004;
      }

      dword_1EE1B06D8 = LODWORD(v267);
      __cxa_guard_release(&qword_1EE1B06F0);
      v242 = v288;
      v243 = v293;
      v238 = v301;
    }
  }

  if (v242 > *&dword_1EE1B06D8 || fabsf(v238) > ((v243 / 180.0) * 3.1416))
  {
LABEL_228:
    v182 = *(v275 + 24);
    v183 = v276 & 7;
    *v182 = v180;
    v182[v183 + 1] = v180;
    v184 = &v182[30 * v183];
    v185 = v184 + 18;
    re::DynamicArray<re::AABB>::resize(v184 + 18, 0);
    if (v184[19] < v37)
    {
      re::DynamicArray<re::AABB>::setCapacity(v184 + 18, v37);
    }

    re::DynamicArray<re::Matrix4x4<float>>::resize((v184 + 23), 0);
    if (v184[24] < v37)
    {
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity(v184 + 23, v37);
    }

    v187 = v334.columns[0];
    v188 = v334.columns[1];
    v189 = v334.columns[3];
    *(v184 + 7) = v334.columns[2];
    *(v184 + 8) = v189;
    *(v184 + 5) = v187;
    *(v184 + 6) = v188;
    if (v185 != &v329)
    {
      v190 = *v185;
      if (*v185 && v329 && v190 != v329)
      {
        goto LABEL_318;
      }

      v184[18] = v329;
      v329 = v190;
      v191 = v184[19];
      v184[19] = v330;
      v330 = v191;
      v192 = v184[20];
      v184[20] = v331;
      v331 = v192;
      v193 = v184[22];
      v184[22] = v333;
      v333 = v193;
      ++v332;
      ++*(v184 + 42);
    }

    re::DynamicArray<re::RigComponentConstraint>::operator=((v184 + 23), &v324);
    re::DynamicArray<re::RigComponentConstraint>::operator=((v184 + 28), &v319);
    *(v184 + 264) = 1;
    v195 = v184[35];
    if (v195 && v315 && v195 != v315)
    {
      goto LABEL_317;
    }

    v184[35] = v315;
    v315 = v195;
    v196 = *(v184 + 18);
    *(v184 + 18) = v316;
    v316 = v196;
    v197 = v184[39];
    v184[39] = v318;
    v318 = v197;
    ++v317;
    ++*(v184 + 76);
    *v302 = &unk_1F5CF97D8;
    v198 = v184[20];
    *&v302[8] = v184[22];
    *&v302[16] = v198;
    *&v302[56] = v184 + 33;
    v199 = v184[25];
    *&v302[24] = v184[27];
    *&v302[32] = v199;
    *&v302[64] = v184 + 34;
    v200 = v184[30];
    *&v302[40] = v184[32];
    *&v302[48] = v200;
    v339.i64[0] = 0xC1ECEDF69A9CD01;
    v201 = re::RenderFrameData::stream((v47 + 264), &v339);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v201, &v303, &v339);
    if (v339.i32[3] == 0x7FFFFFFF)
    {
      v202 = *(*(v201 + 48) + 8);
      v203 = (*(*v202 + 32))(v202, 56, 8);
      *v203 = 0;
      *(v203 + 8) = 0;
      *(v203 + 16) = 1;
      *(v203 + 32) = 0;
      *(v203 + 40) = 0;
      *(v203 + 24) = 0;
      *(v203 + 48) = 0;
      v204 = re::BucketArray<re::BoxCullRenderFrameData,4ul>::init(v203, v202, 1uLL);
      *&v338[24] = re::globalAllocators(v204)[2];
      *v338 = &unk_1F5CF9938;
      *&v338[8] = v202;
      *&v338[32] = v338;
      v339.i64[1] = v203;
      v339.i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::BoxCullRenderFrameData,4ul> *>::__handle[abi:nn200100];
      v342.i64[1] = *&v338[24];
      *&v343 = 0;
      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v341, v338);
      v205 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v201, &v303, &v339);
      if (v343)
      {
        *v345 = &v339;
        (*(*v343 + 16))(v343, v345);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v341);
      if (v339.i64[0])
      {
        (v339.i64[0])(0, &v339, 0, 0, 0);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v338);
    }

    else
    {
      v205 = (*(v201 + 16) + 96 * v339.u32[3] + 16);
    }

    a5 = v338;
    *v338 = &unk_1F5CF97D8;
    *&v338[56] = *&v302[56];
    *&v338[40] = *&v302[40];
    *&v338[24] = *&v302[24];
    *&v338[8] = *&v302[8];
    v208 = *(v207 + 40);
    v9 = *(v207 + 8);
    if (v208 + 1 > 4 * v9)
    {
      re::BucketArray<re::BoxCullRenderFrameData,4ul>::setBucketsCapacity(v207, (v208 + 4) >> 2);
      v9 = *(v207 + 8);
    }

    a4 = v208 >> 2;
    if (v9 <= v208 >> 2)
    {
      goto LABEL_304;
    }

    if (*(v207 + 16))
    {
      v209 = v207 + 24;
    }

    else
    {
      v209 = *(v207 + 32);
    }

    v9 = v281;
    v210 = *(v209 + 8 * a4);
    ++*(v207 + 40);
    ++*(v207 + 48);
    v211 = v210 + 72 * (v208 & 3);
    *v211 = &unk_1F5CF97D8;
    v212 = *&v338[8];
    v213 = *&v338[24];
    v214 = *&v338[40];
    *(v211 + 56) = *&v338[56];
    *(v211 + 40) = v214;
    *(v211 + 24) = v213;
    *(v211 + 8) = v212;
    v215 = *(v207 + 40);
    if (!v215)
    {
      goto LABEL_308;
    }

    re::BucketArray<re::BoxCullRenderFrameData,4ul>::operator[](v207, v215 - 1);
    *(v281 + 128) = 0;
    a5 = v279;
  }

  else
  {
    v183 = v276 & 7;
  }

  v216 = *(v275 + 80);
  *v216 = v180;
  v216[v183 + 1] = v180;
  v217 = v216 + v183;
  v217[72] = 0;
  *v345 = &unk_1F5CF9818;
  *&v345[8] = v217 + 72;
  v339.i64[0] = 0xC1ECEDF69A9CD01;
  v218 = re::RenderFrameData::stream((v47 + 264), &v339);
  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v218, &v303, &v339);
  if (v339.i32[3] == 0x7FFFFFFF)
  {
    v219 = *(*(v218 + 48) + 8);
    v220 = (*(*v219 + 32))(v219, 56, 8);
    *v220 = 0;
    *(v220 + 8) = 0;
    *(v220 + 16) = 1;
    *(v220 + 32) = 0;
    *(v220 + 40) = 0;
    *(v220 + 24) = 0;
    *(v220 + 48) = 0;
    v221 = re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul>::init(v220, v219, 1uLL);
    *&v338[24] = re::globalAllocators(v221)[2];
    *v338 = &unk_1F5CF99C0;
    *&v338[8] = v219;
    *&v338[32] = v338;
    v339.i64[1] = v220;
    v339.i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul> *>::__handle[abi:nn200100];
    v342.i64[1] = *&v338[24];
    *&v343 = 0;
    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v341, v338);
    v222 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v218, &v303, &v339);
    if (v343)
    {
      *v302 = &v339;
      (*(*v343 + 16))(v343, v302);
    }

    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v341);
    if (v339.i64[0])
    {
      (v339.i64[0])(0, &v339, 0, 0, 0);
    }

    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v338);
  }

  else
  {
    v222 = (*(v218 + 16) + 96 * v339.u32[3] + 16);
  }

  *v302 = &unk_1F5CF9818;
  *&v302[8] = *&v345[8];
  v224 = *(v223 + 40);
  v41 = *(v223 + 8);
  if (v224 + 1 > 4 * v41)
  {
    re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul>::setBucketsCapacity(v223, (v224 + 4) >> 2);
    v41 = *(v223 + 8);
  }

  v50 = v224 >> 2;
  if (v41 <= v224 >> 2)
  {
    goto LABEL_299;
  }

  if (*(v223 + 16))
  {
    v225 = v223 + 24;
  }

  else
  {
    v225 = *(v223 + 32);
  }

  v226 = *(v225 + 8 * v50);
  v227 = *(v223 + 40);
  *(v223 + 40) = v227 + 1;
  ++*(v223 + 48);
  v228 = (v226 + 16 * (v224 & 3));
  *v228 = &unk_1F5CF9818;
  v228[1] = *&v302[8];
  if (v227 == -1)
  {
    goto LABEL_303;
  }

  re::BucketArray<re::BoxCullRenderFrameData,4ul>::operator[](v223, v227);
  v229 = *(a5 + 10);
  re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::deinit(&v315);
  if (v319 && v323)
  {
    (*(*v319 + 40))();
  }

  if (v324 && v328)
  {
    (*(*v324 + 40))();
  }

  if (v329 && v333)
  {
    (*(*v329 + 40))();
  }

  return v229 != 0;
}

__n128 re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::add(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
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

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 5;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 80 * (v4 & 0x1F));
  v9 = *(a2 + 64);
  v11 = *(a2 + 16);
  v10 = *(a2 + 32);
  v8[3] = *(a2 + 48);
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  result = *a2;
  *v8 = *a2;
  return result;
}

void re::ecs2::OcclusionSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a2;
  v35[1] = a3;
  v3 = *(a1 + 224);
  if (v3 && *(a1 + 232) && *(a1 + 720) && (*(v3 + 432) & 0x10) != 0)
  {
    v6 = *&a2;
    v34 = (*(**(a1 + 256) + 24))(*(a1 + 256));
    v7 = *(a1 + 720);
    v8 = *(a3 + 200);
    v47[0] = *(a3 + 216);
    v47[1] = v8;
    (*(*v7 + 32))(v7, &v34, v47, v6);
    re::StackScratchAllocator::StackScratchAllocator(v47);
    v43 = 1;
    v44 = 0;
    v45 = 0;
    v41 = v47;
    v42 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v41, 0);
    v43 += 2;
    v9 = *(a1 + 688);
    if ((v9 & 0x3F) != 0)
    {
      v10 = (v9 >> 6) + 1;
    }

    else
    {
      v10 = v9 >> 6;
    }

    v46 = *(a1 + 688);
    v36[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v41, v10, v36);
    v11 = *(a3 + 200);
    if (v11)
    {
      v12 = *(a3 + 216);
      v13 = 8 * v11;
      do
      {
        v14 = *v12++;
        v36[0] = v14;
        v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 536), v36);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v41, *(*(a1 + 544) + 16 * v15 + 8));
        v13 -= 8;
      }

      while (v13);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v41, a1 + 648);
    v37 = 1;
    v38 = 0;
    v39 = 0;
    v36[0] = v47;
    v36[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v36, 0);
    v37 += 2;
    v16 = *(a1 + 688);
    if ((v16 & 0x3F) != 0)
    {
      v17 = (v16 >> 6) + 1;
    }

    else
    {
      v17 = v16 >> 6;
    }

    v40 = *(a1 + 688);
    v48 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v36, v17, &v48);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(a1 + 648, &v41);
    v18 = v45;
    if (v43)
    {
      v18 = &v44;
    }

    v19 = v42;
    if ((v42 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v20 = 0;
      while (1)
      {
        v22 = *v18++;
        v21 = v22;
        if (v22)
        {
          break;
        }

        v20 -= 64;
        if (!--v19)
        {
          goto LABEL_34;
        }
      }

      v23 = __clz(__rbit64(v21));
      if (v23 + 1 != v20)
      {
        FirstBitSet = v23 - v20;
        do
        {
          v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 480, FirstBitSet);
          v26 = *(*v25 + 224);
          v27 = v25[3];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v27);
          if (*(v28 + 40))
          {
            v29 = (*(*v26 + 24))(v26, v35, v25, v27, v28, 0);
          }

          else
          {
            v29 = 0;
          }

          v30 = v25[5];
          v31 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v30);
          if (*(v31 + 40))
          {
            v29 |= (*(*v26 + 32))(v26, v35, v25, v30, v31, 0);
          }

          v32 = v25[6];
          v33 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v32);
          if (*(v33 + 40))
          {
            if (((v29 | (*(*v26 + 40))(v26, v35, v25, v32, v33, 0)) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (!v29)
          {
LABEL_32:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v36, FirstBitSet);
            goto LABEL_33;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v36, FirstBitSet);
LABEL_33:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v41, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_34:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(a1 + 648, v36);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 480);
    if (v36[0] && (v37 & 1) == 0)
    {
      (*(*v36[0] + 40))();
    }

    if (v41)
    {
      if ((v43 & 1) == 0)
      {
        (*(*v41 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v47);
  }
}

_anonymous_namespace_ *re::ecs2::OcclusionSystem::willAddSystemToECSService(re::ecs2::OcclusionSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 90) = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v3);
  *(this + 91) = result;
  return result;
}

double re::ecs2::OcclusionSystem::willRemoveSystemFromECSService(re::ecs2::OcclusionSystem *this)
{
  result = 0.0;
  *(this + 45) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  return result;
}

re *re::ecs2::OcclusionSystem::willAddSceneToECSService(re::ecs2::OcclusionSystem *this, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  result = *(this + 90);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  if (*(this + 29))
  {
    v5 = *(*(*(this + 39) + 232) + 144);
    v6 = re::globalAllocators(result);
    v7 = (*(*v6[2] + 32))(v6[2], 2000, 16);
    bzero(v7 + 8, 0x790uLL);
    *v7 = 0xFFFFFFFFFFFFFFFLL;
    memset_pattern16(v7 + 1, &unk_1E30747C0, 0x40uLL);
    for (i = 0; i != 240; i += 30)
    {
      v9 = &v7[i];
      *(v9 + 5) = xmmword_1E3047670;
      *(v9 + 6) = xmmword_1E3047680;
      *(v9 + 7) = xmmword_1E30476A0;
      *(v9 + 8) = xmmword_1E30474D0;
      v9[19] = 0;
      v9[20] = 0;
      v9[18] = 0;
      *(v9 + 42) = 0;
      v9[32] = 0;
      *(v9 + 264) = 0;
      v9[39] = 0;
      *(v9 + 11) = 0uLL;
      *(v9 + 12) = 0uLL;
      *(v9 + 52) = 0;
      *(v9 + 27) = 0uLL;
      *(v9 + 29) = 0uLL;
      *(v9 + 62) = 0;
      *(v9 + 17) = 0uLL;
      *(v9 + 18) = 0uLL;
      *(v9 + 76) = 0;
    }

    if (v5)
    {
      v10 = (v5 + 8);
    }

    else
    {
      v10 = 0;
    }

    inited = objc_initWeak(location, v10);
    location[1] = v7;
    v12 = re::globalAllocators(inited);
    *(&v62 + 1) = v12[2];
    *&v63 = 0;
    v13 = re::globalAllocators(v12);
    v14 = (*(*v13[2] + 32))(v13[2], 80, 8);
    *v14 = 0xFFFFFFFFFFFFFFFLL;
    memset_pattern16(v14 + 1, &unk_1E30747C0, 0x40uLL);
    v14[9] = 0;
    v15 = objc_initWeak(&v63 + 1, v10);
    v64 = v14;
    v67 = re::globalAllocators(v15)[2];
    v76 = 0uLL;
    *&v77 = 0;
    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v76, this + 320, a2, v16 ^ (v16 >> 31));
    if (HIDWORD(v76) == 0x7FFFFFFF)
    {
      v17 = re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 320, DWORD2(v76), v76);
      *(v17 + 8) = a2;
      re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8>,re::FrameManager>::FramePersistentPtr(v17 + 16, location);
      re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8>,re::FrameManager>::FramePersistentPtr(v17 + 72, &v63 + 8);
      ++*(this + 90);
    }

    re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8>,re::FrameManager>::~FramePersistentPtr(&v63 + 8);
    re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8>,re::FrameManager>::~FramePersistentPtr(location);
    v58 = a2;
    v18 = *(this + 76);
    v19 = *(this + 154);
    if (v18 >= 0xB)
    {
      if (v19)
      {
        v20 = (this + 624);
      }

      else
      {
        v20 = *(this + 79);
      }

      v22 = 8 * v18;
      while (!*v20)
      {
        ++v20;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_26;
    }

    if (v19)
    {
      v21 = (this + 624);
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = *(this + 79);
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v23 = 0;
    v24 = 8 * v18;
    do
    {
      v25 = *v21++;
      v23 |= v25;
      v24 -= 8;
    }

    while (v24);
    if (v23)
    {
LABEL_26:
      location[0] = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 600, 0);
      v26 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 480, location[0]);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::init(v26, this + 480, a2);
      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 67, &v58, location);
      re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 600, location[0]);
      v27 = location[0];
LABEL_59:
      result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 648, v27);
      if (*(this + 712) == 1)
      {
        v51 = *(this + 87);
        v52 = *(v58 + 47);
        LOWORD(location[0]) = 257;
        HIDWORD(location[0]) = 1023969417;
        LOBYTE(location[1]) = 0;
        re::ecs2::System::setTaskOptions(v51, v52, location);
        return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 480);
      }

      return result;
    }

LABEL_27:
    v67 = 0u;
    *location = 0u;
    *&v61 = 0;
    v62 = 0u;
    v63 = 0u;
    *(&v61 + 1) = -1;
    v64 = 0;
    v65 = 1;
    v66 = 0uLL;
    v28 = *(this + 65);
    *&v67 = 0;
    v29 = *(this + 61);
    DWORD2(v67) = 0;
    if (v28 + 1 > 4 * v29)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,4ul>::setBucketsCapacity(this + 60, (v28 + 4) >> 2);
      v29 = *(this + 61);
    }

    if (v29 <= v28 >> 2)
    {
      v59 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v71 = 858;
      v72 = 2048;
      v73 = v28 >> 2;
      v74 = 2048;
      v75 = v29;
      _os_log_send_and_compose_impl(v55, &v59, &v76, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(this + 496))
      {
        v30 = this + 504;
      }

      else
      {
        v30 = *(this + 64);
      }

      v31 = *&v30[8 * (v28 >> 2)];
      ++*(this + 65);
      ++*(this + 132);
      v32 = v31 + 112 * (v28 & 3);
      v33 = *location;
      v34 = v61;
      v35 = v62;
      *(v32 + 48) = v63;
      *(v32 + 16) = v34;
      *(v32 + 32) = v35;
      *v32 = v33;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v32 + 56, &v63 + 1);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(location);
      v37 = *(this + 65);
      if (v37)
      {
        v38 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 480, v37 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::init(v38, this + 480, v58);
        *&v76 = *(this + 65) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 67, &v58, &v76);
        v39 = *(this + 65);
        v40 = *(this + 80);
        if ((v39 & 0x3F) != 0)
        {
          v41 = (v39 >> 6) + 1;
        }

        else
        {
          v41 = v39 >> 6;
        }

        *(this + 80) = v39;
        location[0] = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 600), v41, location);
        if (v39 && v40 > v39)
        {
          v42 = 63;
          v43 = *(this + 80) & 0x3FLL;
          if (v43 && v43 != 63)
          {
            v42 = ~(-1 << v43);
          }

          if (*(this + 616))
          {
            v44 = this + 624;
          }

          else
          {
            v44 = *(this + 79);
          }

          *&v44[8 * *(this + 76) - 8] &= v42;
        }

        v45 = *(this + 65);
        v46 = *(this + 86);
        if ((v45 & 0x3F) != 0)
        {
          v47 = (v45 >> 6) + 1;
        }

        else
        {
          v47 = v45 >> 6;
        }

        *(this + 86) = v45;
        location[0] = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 648), v47, location);
        if (v45 && v46 > v45)
        {
          v48 = 63;
          v49 = *(this + 86) & 0x3FLL;
          if (v49 && v49 != 63)
          {
            v48 = ~(-1 << v49);
          }

          if (*(this + 664))
          {
            v50 = this + 672;
          }

          else
          {
            v50 = *(this + 85);
          }

          *&v50[8 * *(this + 82) - 8] &= v48;
        }

        v27 = v76;
        goto LABEL_59;
      }
    }

    re::internal::assertLog(4, v36, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::OcclusionSystem::willRemoveSceneFromECSService(re::ecs2::OcclusionSystem *this, unint64_t a2)
{
  if (*(this + 29))
  {
    v21 = a2;
    v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 67, &v21);
    if (v4 != -1)
    {
      v5 = *(this + 68) + 16 * v4;
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 600, *(v5 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 648, *(v5 + 8));
      v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 480, *(v5 + 8));
      if (*v6)
      {
        v7 = v6;
        *v6 = 0;
        v8 = v6 + 1;
        v9 = *(v6[1] + 288);
        if (v9)
        {
          v10 = v6[12];
          if (v10)
          {
            for (i = 0; i != v10; ++i)
            {
              v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
              re::EventBus::unsubscribe(v9, *v12, v12[1]);
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
        v13 = 0;
        v14 = v7 + 3;
        do
        {
          v15 = v7[2];
          if (*v15)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
          }

          v14[v13++] = -1;
        }

        while (v13 != 4);
        *v8 = 0;
        v8[1] = 0;
      }

      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 536, &v21);
    }

    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v21, this + 320, a2, v16 ^ (v16 >> 31));
    v17 = v23;
    if (v23 != 0x7FFFFFFF)
    {
      v18 = *(this + 42);
      v19 = *(v18 + 136 * v23) & 0x7FFFFFFF;
      if (v24 == 0x7FFFFFFF)
      {
        *(*(this + 41) + 4 * v22) = v19;
      }

      else
      {
        *(v18 + 136 * v24) = *(v18 + 136 * v24) & 0x80000000 | v19;
      }

      re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(v18, v17);
      *(*(this + 42) + 136 * v17) = *(*(this + 42) + 136 * v17) & 0x80000000 | *(this + 89);
      *(this + 89) = v17;
      --*(this + 87);
      ++*(this + 90);
    }
  }

  result = *(this + 90);
  if (result)
  {
    return (*(*result + 24))(result, a2);
  }

  return result;
}

void *re::ecs2::allocInfo_HierarchicalOcclusionOptionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0720))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0780, "HierarchicalOcclusionOptionComponent");
    __cxa_guard_release(&qword_1EE1B0720);
  }

  return &unk_1EE1B0780;
}

void re::ecs2::initInfo_HierarchicalOcclusionOptionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xE45C2C8CD3143708;
  v20[1] = "HierarchicalOcclusionOptionComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B0718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0718))
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
    qword_1EE1B0740 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isSharedSpaceContext";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B0748 = v18;
    __cxa_guard_release(&qword_1EE1B0718);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B0740;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalOcclusionOptionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalOcclusionOptionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalOcclusionOptionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalOcclusionOptionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs236HierarchicalOcclusionOptionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalOcclusionOptionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8580;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalOcclusionOptionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8580;
}

void *re::ecs2::allocInfo_OcclusionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0730))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0810, "OcclusionComponent");
    __cxa_guard_release(&qword_1EE1B0730);
  }

  return &unk_1EE1B0810;
}

void re::ecs2::initInfo_OcclusionComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x1B4968BE60FD0420;
  v36[1] = "OcclusionComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1B0728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0728))
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
    qword_1EE1B0750 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "enableOcclusion";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B0758 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enablementTransitionDuration";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1C00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B0760 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "depthBias";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B0768 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "allowSharedSpaceContext";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2400000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B0770 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "occlusionCullingBoundMargin";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x2800000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B0778 = v34;
    __cxa_guard_release(&qword_1EE1B0728);
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B0750;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::OcclusionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::OcclusionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::OcclusionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::OcclusionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218OcclusionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

void re::internal::defaultConstruct<re::ecs2::OcclusionComponent>(int a1, int a2, re::ecs2::OcclusionComponent *this)
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
  re::ecs2::OcclusionComponent::OcclusionComponent(this);
}

void re::internal::defaultConstructV2<re::ecs2::OcclusionComponent>(re::ecs2::OcclusionComponent *this)
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
  re::ecs2::OcclusionComponent::OcclusionComponent(this);
}

void *re::ecs2::allocInfo_OcclusionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0738))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B08A0, "OcclusionSystem");
    __cxa_guard_release(&qword_1EE1B0738);
  }

  return &unk_1EE1B08A0;
}

void re::ecs2::initInfo_OcclusionSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3997B08B057CBBF8;
  v8[1] = "OcclusionSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x2E000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_OcclusionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::OcclusionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::OcclusionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::OcclusionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::OcclusionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::OcclusionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::OcclusionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::OcclusionSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 60);
  a3[38] = &unk_1F5CF96E0;
  re::StringID::destroyString((a3 + 58));
  re::AssetHandle::~AssetHandle((a3 + 55));
  re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a3 + 40);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::OcclusionSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 60);
  a1[38] = &unk_1F5CF96E0;
  re::StringID::destroyString((a1 + 58));
  re::AssetHandle::~AssetHandle((a1 + 55));
  re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 40);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::OcclusionComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::OcclusionComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::OcclusionComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::OcclusionSystem::~OcclusionSystem(re::ecs2::OcclusionSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 60);
  *(this + 38) = &unk_1F5CF96E0;
  re::StringID::destroyString((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 40);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 60);
  *(this + 38) = &unk_1F5CF96E0;
  re::StringID::destroyString((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 40);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>,re::FrameManager>::~FramePersistentPtr(uint64_t a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&v15, 0);
  memset(v16, 0, 24);
  v16[3] = re::globalAllocators(inited)[2];
  v16[4] = 0;
  if (*(a1 + 8))
  {
    WeakRetained = objc_loadWeakRetained(a1);
    if (WeakRetained)
    {
      v4 = WeakRetained;

      if (!*(a1 + 48))
      {
        v6 = re::globalAllocators(v5)[2];
        v17[0] = &unk_1F5CF9858;
        v17[3] = v6;
        v17[4] = v17;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a1 + 16, v17);
        v5 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v17);
      }

      v7 = re::globalAllocators(v5);
      v8 = v4[2] & 0xFFFFFFFFFFFFFFFLL | (v4[1] << 60);
      v9 = *(a1 + 8);
      v10 = re::PerFrameAllocatorManager::perFrameAllocator(v7[6], v8);
      (*(*v10 + 16))(v10, v9, a1 + 16);
    }

    else
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 8);
      if (v11)
      {
        v17[0] = *(a1 + 8);
        (*(*v11 + 16))(v11, v17);
      }

      else if (v12)
      {
        v13 = re::globalAllocators(0);
        (*(*v13[2] + 40))(v13[2], v12);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a1, &v15);
  *(a1 + 8) = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a1 + 16, v16);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v16);
  objc_destroyWeak(&v15);
  v15 = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(a1 + 16);
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

re *re::internal::Callable<re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::operator()(re *result, void *a2)
{
  if (*a2)
  {
    v2 = *(*re::globalAllocators(result)[2] + 40);

    return v2();
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF9858;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8ll>*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF9858;
  return result;
}

uint64_t re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>,re::FrameManager>::~FramePersistentPtr(uint64_t a1)
{
  v15[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&v13, 0);
  memset(v14, 0, 24);
  v14[3] = re::globalAllocators(inited)[2];
  v14[4] = 0;
  if (*(a1 + 8))
  {
    WeakRetained = objc_loadWeakRetained(a1);
    if (WeakRetained)
    {
      v4 = WeakRetained;

      if (!*(a1 + 48))
      {
        v6 = re::globalAllocators(v5)[2];
        v15[0] = &unk_1F5CF98B0;
        v15[3] = v6;
        v15[4] = v15;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a1 + 16, v15);
        v5 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v15);
      }

      v7 = re::globalAllocators(v5);
      v8 = v4[2] & 0xFFFFFFFFFFFFFFFLL | (v4[1] << 60);
      v9 = *(a1 + 8);
      v10 = re::PerFrameAllocatorManager::perFrameAllocator(v7[6], v8);
      (*(*v10 + 16))(v10, v9, a1 + 16);
    }

    else
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        v15[0] = *(a1 + 8);
        (*(*v11 + 16))(v11, v15);
      }

      else
      {
        re::internal::destroyPersistent<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8>>(*(a1 + 8));
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a1, &v13);
  *(a1 + 8) = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a1 + 16, v14);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
  objc_destroyWeak(&v13);
  v13 = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(a1 + 16);
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

re *re::internal::destroyPersistent<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    v3 = re::globalAllocators(result)[2];
    do
    {
      v4 = v1 + v2;
      re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::deinit(v1 + v2 + 1960);
      v5 = *(v1 + v2 + 1952);
      if (v5)
      {

        *(v4 + 244) = 0;
      }

      re::DynamicArray<unsigned long>::deinit((v4 + 1904));
      re::DynamicArray<unsigned long>::deinit((v4 + 1864));
      re::DynamicArray<unsigned long>::deinit((v4 + 1824));
      v2 -= 240;
    }

    while (v2 != -1920);
    v6 = *(*v3 + 40);

    return v6(v3, v1);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF98B0;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF98B0;
  return result;
}

double re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 136 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::VirtualOccluderInvalidationResult,8>,re::FrameManager>::~FramePersistentPtr((v2 + 18));

    return re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8>,re::FrameManager>::~FramePersistentPtr((v2 + 4));
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 136 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 136 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 136 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 136 * v8) & 0x7FFFFFFF;
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

uint64_t re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::deinit(uint64_t a1)
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
        v6 = (v3 + 8);
        do
        {
          if (*v6)
          {
            std::__shared_weak_count::__release_weak(*v6);
          }

          v6 += 2;
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

void *re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::weak_ptr<re::ecs2::OcclusionCullingResultNotification>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
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
        v10 = 16 * v9;
        v11 = v7;
        do
        {
          *v11++ = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v8 += 16;
          v10 -= 16;
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

void *re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 2560, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

unint64_t re::BucketArray<re::ecs2::OcclusionComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::OcclusionComponent>::BucketIteration,void *)::EntityHierarchyData,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + 80 * (a2 & 0x1F);
}

_anonymous_namespace_ *re::BucketArray<re::BoxCullRenderFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::BoxCullRenderFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::BoxCullRenderFrameData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 288, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::BoxCullRenderFrameData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::BoxCullRenderFrameData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::BoxCullRenderFrameData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::BoxCullRenderFrameData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::BoxCullRenderFrameData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        re::BucketArray<re::BoxCullRenderFrameData,4ul>::operator[](v4, i);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v7 = *(*v2 + 40);

    return v7(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::BoxCullRenderFrameData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9938;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::BoxCullRenderFrameData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9938;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::BoxCullRenderFrameData,4ul>::operator[](uint64_t result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v3);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
LABEL_5:
    v4 = a2 >> 2;
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 858;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v2;
    _os_log_send_and_compose_impl(v6, &v11, v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v9, v10);
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(result + 8);
  if (v2 <= a2 >> 2)
  {
    goto LABEL_5;
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::VirtualOccluderInvalidationFrameData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}