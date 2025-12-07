unint64_t REMeshAttributeDescriptorCopyCustom2sToBuffer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v6 = *(a1 + 8) | (*(a1 + 12) << 32);
  v8[0] = a2;
  v8[1] = v6;
}

unint64_t REMeshAttributeDescriptorCopyCustom3sToBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = *(a1 + 8) | (*(a1 + 12) << 32);
  v8[0] = a2;
  v8[1] = v6;
}

unint64_t REMeshAttributeDescriptorCopyCustom4sToBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float16x4_t *a5, unint64_t a6)
{
  v6 = *(a1 + 8) | (*(a1 + 12) << 32);
  v8[0] = a2;
  v8[1] = v6;
}

re::MeshDefinition *REMeshDefinitionCreate(const __CFArray *a1, unint64_t a2, unint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  MEMORY[0x1EEE9AC00](Count);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7 >= 0x200)
  {
    v9 = 512;
  }

  else
  {
    v9 = v7;
  }

  bzero(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v49.location = 0;
  v49.length = Count;
  CFArrayGetValues(a1, v49, v8);
  re::MeshDefinition::AttributeArray::AttributeArray(&v26, Count);
  if (Count >= 1)
  {
    v10 = 0;
    for (i = 0; i != Count; ++i)
    {
      v12 = v29;
      if (v29 <= i)
      {
        v23 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v38 = 468;
        v39 = 2048;
        v40 = i;
        v41 = 2048;
        v42 = v12;
        _os_log_send_and_compose_impl(v18, &v23, &v43, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v22);
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v34 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v38 = 468;
        v39 = 2048;
        v40 = i;
        v41 = 2048;
        v42 = v12;
        _os_log_send_and_compose_impl(v21, &v34, &v43, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
      }

      *(v30 + 8 * i) = v8[i];
      LOBYTE(v23) = 0;
      v12 = v32;
      if (v32 <= i)
      {
        goto LABEL_22;
      }

      v13 = re::Optional<re::StringID>::operator=(v33 + v10, &v23);
      if (v23 == 1 && (v24 & 1) != 0)
      {
        if (v24)
        {
        }
      }

      v10 += 24;
    }
  }

  InstancedWithAttributes = REMeshDefinitionCreateInstancedWithAttributes(&v26, a2, a3, 1uLL);
  v26 = &unk_1F5D08E88;
  re::FixedArray<re::Optional<re::StringID>>::deinit(&v31);
  if (v28)
  {
    if (v29)
    {
      (*(*v28 + 40))(v28, v30);
      v29 = 0;
      v30 = 0;
    }

    v28 = 0;
  }

  v26 = &unk_1F5CCF868;
  objc_destructInstance(&v27);
  return InstancedWithAttributes;
}

re::MeshDefinition *REMeshDefinitionCreateInstancedWithAttributes(re *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  if (HIDWORD(a2))
  {
    re::internal::assertLog(5, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Vertex count (%zu) is too large for a 32-bit integer", "!overflow", "REMeshDefinitionCreateInstancedWithAttributes", 449, a2);
    _os_crash("assertion failure: (!overflow) Vertex count (%zu) is too large for a 32-bit integer", v11);
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  if (HIDWORD(a3))
  {
LABEL_8:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Index count (%zu) is too large for a 32-bit integer", "!overflow", "REMeshDefinitionCreateInstancedWithAttributes", 453, v5);
    _os_crash("assertion failure: (!overflow) Index count (%zu) is too large for a 32-bit integer", v12);
    __break(1u);
    goto LABEL_9;
  }

  v4 = a4;
  if (HIDWORD(a4))
  {
LABEL_9:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Instance count (%zu) is too large for a 32-bit integer", "!overflow", "REMeshDefinitionCreateInstancedWithAttributes", 457, v4);
    result = _os_crash("assertion failure: (!overflow) Instance count (%zu) is too large for a 32-bit integer", v13);
    __break(1u);
    return result;
  }

  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 192, 16);

  return re::MeshDefinition::MeshDefinition(v9, a1, v6, v5, v4);
}

void REMeshDefinitionSetIndicesWithData(uint64_t a1, CFDataRef theData)
{
  v19 = *MEMORY[0x1E69E9840];
  if (theData)
  {
    Length = CFDataGetLength(theData);
  }

  else
  {
    Length = 0;
  }

  v5 = *(a1 + 40);
  if (Length == 2 * v5)
  {
    v14 = [(__CFData *)theData copy];

    v6 = &v14;
    v7 = &v14;
LABEL_13:
    v8 = a1;
    v9 = 0;
    goto LABEL_14;
  }

  if (Length != 4 * v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 134218240;
      v16 = Length;
      v17 = 1024;
      v18 = v11;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Index data of size %zu is not identifiable as either 16-bit or 32-bit indices, given the mesh definition index count of %u", buf, 0x12u);
    }

    v12 = 0;
    v6 = &v12;
    v7 = &v12;
    goto LABEL_13;
  }

  v13 = [(__CFData *)theData copy];

  v6 = &v13;
  v7 = &v13;
  v8 = a1;
  v9 = 1;
LABEL_14:
  re::MeshDefinition::setIndexData(v8, v9, v7);
}

void REMeshDefinitionSetIndicesWithDataInternal(uint64_t a1, uint64_t a2, unsigned int a3, CFDataRef theData)
{
  v21 = *MEMORY[0x1E69E9840];
  if (theData)
  {
    Length = CFDataGetLength(theData);
  }

  else
  {
    Length = 0;
  }

  if (Length >= *(a1 + 40) * a2)
  {
    v16 = [(__CFData *)theData copy];

    v10 = &v16;
    v11 = &v16;
    v12 = a1;
    v13 = a3;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 134218240;
      v18 = Length;
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Index data of size %zu is not large enough to fulfill the mesh definition index count of %u", buf, 0x12u);
    }

    v15 = 0;
    v10 = &v15;
    v11 = &v15;
    v12 = a1;
    v13 = 0;
  }

  re::MeshDefinition::setIndexData(v12, v13, v11);
}

void REMeshDefinitionSetAttributeWithData(re *a1, uint64_t a2, void *a3)
{
  v5 = [a3 copy];

  re::MeshDefinition::setAttribute(a1, a2, &v5);
}

void REMeshDefinitionSetCustomAttributeWithData(re *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a2 + 8) | (*(a2 + 12) << 32);
  v7[0] = a3;
  v7[1] = v5;
  v6 = [a4 copy];

  re::MeshDefinition::setAttribute(a1, v7, &v6);
}

__n128 *REMeshDefinitionSetBoundingBox(__n128 *result, __n128 a2, __n128 a3)
{
  if ((result[7].n128_u8[0] & 1) == 0)
  {
    result[7].n128_u8[0] = 1;
  }

  result[8] = a2;
  result[9] = a3;
  return result;
}

uint64_t REMeshDefinitionSetDoubleSided(uint64_t result, char a2)
{
  if ((*(result + 160) & 1) == 0)
  {
    *(result + 160) = 1;
  }

  *(result + 161) = a2;
  return result;
}

void REMeshDefinitionSetSkeletonName(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StringID::operator=((a1 + 168), &v5);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

re::MeshModelDefinition *REMeshModelDefinitionCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 136, 8);

  return re::MeshModelDefinition::MeshModelDefinition(v2);
}

uint64_t REMeshModelDefinitionSetName(uint64_t a1, const char *a2)
{
  re::DynamicString::operator=((a1 + 24), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

CFStringRef REMeshModelDefinitionCopyName(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = (a1 + 33);
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

void REMeshModelDefinitionAppendTrianglesWithName(void *a1, uint64_t a2, int a3, int a4, const char *a5)
{
  v11 = a2;
  if (a2)
  {
    v9 = (a2 + 8);
  }

  re::MeshModelDefinition::append(a1, &v11, 3, a3, a4, a5);
  v10 = v11;
  if (v11)
  {
  }
}

uint64_t REMeshInstanceDefinitionCreate(re *a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 128, 16);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  ArcSharedObject::ArcSharedObject(v9, 0);
  *v9 = &unk_1F5D2D7B8;
  *(v9 + 40) = 0u;
  *(v9 + 24) = 0u;
  v11 = re::DynamicString::setCapacity((v9 + 24), 0);
  re::DynamicString::operator=((v9 + 24), &v17);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 80) = a4;
  *(v9 + 96) = a5;
  *(v9 + 112) = a6;
  return v9;
}

uint64_t REMeshResourceDefinitionCreate(_anonymous_namespace_ *a1, unsigned int a2, uint64_t *a3, unsigned int a4, re **a5, unsigned int a6)
{
  v26 = a2;
  v25 = a4;
  v9 = a6;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  MeshSkeletonDefinition = re::DynamicArray<float *>::setCapacity(&v29, a6);
  v11 = ++v32;
  if (a6)
  {
    do
    {
      MeshSkeletonDefinition = RESkeletonDefinitionCreateMeshSkeletonDefinition(*a5);
      if (MeshSkeletonDefinition)
      {
        v12 = MeshSkeletonDefinition;
        v13 = v31;
        if (v31 >= v30)
        {
          v14 = v31 + 1;
          if (v30 < v31 + 1)
          {
            if (v29)
            {
              v15 = 2 * v30;
              if (!v30)
              {
                v15 = 8;
              }

              if (v15 <= v14)
              {
                v16 = v31 + 1;
              }

              else
              {
                v16 = v15;
              }

              MeshSkeletonDefinition = re::DynamicArray<float *>::setCapacity(&v29, v16);
              v11 = v32;
            }

            else
            {
              MeshSkeletonDefinition = re::DynamicArray<float *>::setCapacity(&v29, v14);
              v11 = v32 + 1;
            }
          }

          v13 = v31;
        }

        v33[v13] = v12;
        v31 = v13 + 1;
        v32 = ++v11;
      }

      else
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v17 = CoreRELog::log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create a skeleton", buf, 2u);
        }
      }

      ++a5;
      --v9;
    }

    while (v9);
  }

  v18 = v33;
  v19 = v31;
  v20 = re::globalAllocators(MeshSkeletonDefinition);
  v21 = (*(*v20[2] + 32))(v20[2], 312, 8);
  re::MeshResourceDefinition::MeshResourceDefinition(v21, a1, v26, a3, v25, v18, v19);
  if (v19)
  {
    v22 = v18;
    do
    {

      *v22++ = 0;
      --v19;
    }

    while (v19);
  }

  if (v29)
  {
    v23 = v18 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    (*(*v29 + 40))();
  }

  return v21;
}

void re::MeshInstanceDefinition::~MeshInstanceDefinition(re::MeshInstanceDefinition *this)
{
  *this = &unk_1F5D2D7B8;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D7B8;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

BOOL RETypeIDAreEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = WORD1(a2) == WORD1(a4) && ((a4 ^ a2) & 0xFFFFFF00000000) == 0;
  if (a2 != a4)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

_BYTE *RETypeInfoGetName(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v4, a1);
  v1 = re::TypeInfo::name(v4);
  v3 = *v1;
  result = v1[1];
  if (v3 >= 0xFFFFFFFFFFFFFFFELL && (v3 & 1) == 0 && !*result)
  {
    return 0;
  }

  return result;
}

uint64_t RETypeInfoGetVersion(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v3, a1);
  v1 = re::DataArray<re::TextureAtlasTile>::tryGet(v3[0] + 96, *v3[2]);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *RETypeInfoCreateInstance(uint64_t a1, re::Allocator *a2, void *a3)
{
  v5 = re::TypeInfo::TypeInfo(v7, a1);
  if (!a2)
  {
  }

  return re::TypeInfo::createInstance(v7, a2, a3);
}

void RETypeInfoDestroyInstance(uint64_t a1, char *a2, re::Allocator *a3, void *a4)
{
  v7 = re::TypeInfo::TypeInfo(v8, a1);
  if (!a3)
  {
  }

  re::TypeInfo::releaseInstance(v8, a2, a3, a4);
}

uint64_t RETypeInfoGetEnumUnderlyingType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t RETypeInfoGetEnumConstantCount(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v3, a1);
  re::TypeInfo::enumConstants(v3);
  return v1;
}

uint64_t RETypeInfoGetEnumConstantValue(uint64_t a1, unint64_t a2)
{
  re::TypeInfo::TypeInfo(v8, a1);
  v3 = re::TypeInfo::enumConstants(v8);
  if (v4 > a2)
  {
    return *(v3 + 24 * a2);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

uint64_t RETypeInfoGetEnumConstantName(uint64_t a1, unint64_t a2)
{
  re::TypeInfo::TypeInfo(v8, a1);
  v3 = re::TypeInfo::enumConstants(v8);
  if (v4 > a2)
  {
    return *(v3 + 24 * a2 + 16);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

uint64_t RETypeInfoGetOptionalValueType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

BOOL REOptionalAccessorHasValue(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 88))(a2) != 0;
}

uint64_t REOptionalAccessorGetValue(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 88))(a2);
}

uint64_t REOptionalAccessorClearValue(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 96))(a2, 0);
}

uint64_t REOptionalAccessorSetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::TypeInfo(v6, v7);
  return (*(v6[2] + 96))(a2, a3);
}

uint64_t RETypeInfoGetArrayElementType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

BOOL RETypeInfoIsFixedSizeArray(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v3, a1);
  if (v3[12] != 4)
  {
    return 0;
  }

  re::TypeInfo::TypeInfo(v2, v3);
  return (*(v2[2] + 92) & 0xFFFFFF) == 0;
}

uint64_t REArrayAccessorGetSize(uint64_t a1, char *a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return re::ArrayAccessor::size(v4, a2);
}

void REArrayAccessorReset(uint64_t a1, void ***a2, const re::TypeInfo *a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  v5 = re::TypeInfo::TypeInfo(v6, v7);
}

uint64_t REArrayAccessorGetElementAt(uint64_t a1, char *a2, unint64_t a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::TypeInfo(v6, v7);
  return re::ArrayAccessor::elementAt(v6, a2, a3);
}

uint64_t RETypeInfoGetListElementType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t REListAccessorGetSize(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 88))(a2);
}

uint64_t REListAccessorReset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v9, a1);
  v5 = re::TypeInfo::TypeInfo(v8, v9);
  v6 = *(v8[2] + 96);
  re::TypeInfo::TypeInfo(v10, v8);
}

BOOL REListAccessorSupportsIndexer(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v3, a1);
  re::TypeInfo::TypeInfo(v2, v3);
  return *(v2[2] + 104) != 0;
}

uint64_t REListAccessorGetElementAt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::TypeInfo(v6, v7);
  return (*(v6[2] + 104))(a2, a3);
}

BOOL REListAccessorSupportsIterator(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v4, a1);
  re::TypeInfo::TypeInfo(&v2, v4);
  return v3[14] && v3[15] && v3[16] != 0;
}

uint64_t REListIteratorCreate(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v6, a1);
  v3 = re::TypeInfo::TypeInfo(v5, v6);
}

uint64_t REListIteratorNextElement(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 120))(a2);
}

uint64_t REListIteratorDestroy(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v6, a1);
  v3 = re::TypeInfo::TypeInfo(v5, v6);
}

uint64_t RETypeInfoGetDictionaryKeyType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t RETypeInfoGetDictionaryValueType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][11], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t REDictionaryAccessorGetSize(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 96))(a2);
}

uint64_t REDictionaryAccessorReset(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v7, a1);
  v3 = re::TypeInfo::TypeInfo(v6, v7);
  v4 = *(v6[2] + 104);
  re::TypeInfo::TypeInfo(v8, v6);
}

uint64_t REDictionaryAddEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v8, a1);
  v5 = re::TypeInfo::TypeInfo(v7, v8);
}

uint64_t REDictionaryIteratorCreate(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v6, a1);
  v3 = re::TypeInfo::TypeInfo(v5, v6);
}

uint64_t REDictionaryIteratorMoveNext(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 128))(a2);
}

uint64_t REDictionaryIteratorGetCurrentKey(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 136))(a2);
}

uint64_t REDictionaryIteratorGetCurrentValue(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return (*(v4[2] + 144))(a2);
}

uint64_t REDictionaryIteratorDestroy(uint64_t a1, uint64_t a2)
{
  re::TypeInfo::TypeInfo(v6, a1);
  v3 = re::TypeInfo::TypeInfo(v5, v6);
}

uint64_t RETypeInfoGetUnionTagType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t RETypeInfoGetUnionMember@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::unionMember(v6, v7, a2);
  return re::TypeInfo::TypeInfo(a3, v6);
}

uint64_t REUnionAccessorGetActiveMemberType(uint64_t a1, char *a2, _OWORD *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  re::TypeInfo::TypeInfo(v10, a1);
  re::TypeInfo::TypeInfo(v11, v10);
  re::UnionAccessor::activeMemberType(&v8, v11, a2);
  v5 = v8;
  if (v8 == 1)
  {
    re::TypeInfo::TypeInfo(v11, &v9);
    v6 = v11[1];
    *a3 = v11[0];
    a3[1] = v6;
  }

  return v5;
}

uint64_t REUnionAccessorReadTag(uint64_t a1, char *a2)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::TypeInfo(v4, v5);
  return re::UnionAccessor::readTag(v4, a2);
}

_DWORD *REUnionAccessorReset(uint64_t a1, char *a2, const re::TypeInfo *a3)
{
  re::TypeInfo::TypeInfo(v8, a1);
  v5 = re::TypeInfo::TypeInfo(v7, v8);
}

BOOL RETypeInfoIsSubClassOf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  v6[0] = a2;
  v6[1] = a3;
  return re::TypeInfo::isSubClassOf(v7, v6);
}

uint64_t RETypeInfoGetRootClass@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeInfo::rootClass(v4, v5);
  return re::TypeInfo::TypeInfo(a2, v4);
}

uint64_t RETypeInfoGetSuperClass(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  re::TypeInfo::TypeInfo(v8, a1);
  re::TypeRegistry::typeInfo(v8[0], v8[2][10], v6);
  v3 = v6[0];
  if (v6[0] == 1)
  {
    re::TypeInfo::TypeInfo(v9, &v7);
    v4 = v9[1];
    *a2 = v9[0];
    a2[1] = v4;
  }

  return v3;
}

uint64_t RETypeInfoGetSubClass@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::subClass(v7, a2, v6);
  return re::TypeInfo::TypeInfo(a3, v6);
}

uint64_t RETypeInfoGetDerivedClass@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeInfo::derivedClass(v6, v7, a2);
  return re::TypeInfo::TypeInfo(a3, v6);
}

uint64_t RETypeInfoGetObjectMemberCount(uint64_t a1)
{
  re::TypeInfo::TypeInfo(v4, a1);
  re::TypeMemberCollection::TypeMemberCollection(v2, v4[0], v4[2]);
  return v3;
}

uint64_t *RETypeInfoGetObjectMemberByIndex@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::TypeInfo::TypeInfo(v7, a1);
  re::TypeMemberCollection::TypeMemberCollection(v6, v7[0], v7[2]);
  return re::TypeMemberCollection::operator[](v6, a2, a3);
}

uint64_t RETypeInfoGetObjectMemberByName(uint64_t a1, const char *a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v19, a1);
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v17, v19[0], v19[2]);
  v9 = v18;
  if (!v18)
  {
    return 0;
  }

  v10 = 0;
  v11 = 2 * v5;
  for (i = v17[3]; ; i += 40)
  {
    if ((*(i + 8) ^ v11) <= 1)
    {
      v13 = *(i + 16);
      if (v13 == a2 || !strcmp(v13, a2))
      {
        break;
      }
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  v15 = v17[2];
  v16 = *(v17[0] + 24);
  *a3 = v17[0];
  *(a3 + 8) = v15;
  *(a3 + 16) = i;
  *(a3 + 24) = v10;
  *(a3 + 28) = v16;
  return 1;
}

uint64_t RETypeInfoGetReferencedType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeInfo::TypeInfo(v5, a1);
  re::TypeRegistry::typeInfo(v5[0], v5[2][10], v6);
  re::TypeInfo::TypeInfo(v4, &v7);
  return re::TypeInfo::TypeInfo(a2, v4);
}

BOOL RETypeInfoHasAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v10, a1);
  v9[0] = a2;
  v9[1] = a3;
  v5 = *v10[2];
  v7[0] = v10[0];
  v7[1] = v5;
  v8 = -1;
  return re::TypeAttributeCollection::contains(v7, v9);
}

uint64_t RETypeInfoGetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::TypeInfo::TypeInfo(v7, a1);
  if (!a2)
  {
    return 0;
  }

  v5 = *v7[2];
  v8[0] = a3;
  v8[1] = v5;
  v9 = -1;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v7[0] + 768, v8);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t RETypeMemberInfoGetMemberType@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  re::TypeRegistry::typeInfo(*a1, *a1[2], v5);
  re::TypeInfo::TypeInfo(v4, &v6);
  return re::TypeInfo::TypeInfo(a2, v4);
}

BOOL RETypeMemberInfoHasAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v10[0] = a2;
  v10[1] = a3;
  v6 = *v4;
  v8[0] = v3;
  v8[1] = v6;
  v9 = v5;
  return re::TypeAttributeCollection::contains(v8, v10);
}

uint64_t RETypeMemberInfoGetAttribute(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a1[1];
  v5 = *(a1 + 6);
  v7[0] = a3;
  v7[1] = v4;
  v8 = v5;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v3 + 768, v7);
  if (result)
  {
    return *result;
  }

  return result;
}

re::TypeRegistry *RETypeRegistryCreate(_anonymous_namespace_ *a1)
{
}

uint64_t RETypeRegistryDeclareType(_anonymous_namespace_ *a1, int a2, const char *a3)
{
  if (a3)
  {
    v10[0] = 0;
    v10[1] = &str_67;
  }

  else
  {
    re::StringID::invalid(v10);
  }

  re::TypeRegistry::declareType(&v9, v10, a1, a2, 1u, 0);
  v7 = v9;
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  return v7;
}

void RETypeRegistryDeclareTypeAlias(_anonymous_namespace_ *a1, re::TypeRegistry *a2, re::TypeRegistry *a3, const char *a4)
{
  if (!a4)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) typeAlias must not be null.", "cTypeAlias", "RETypeRegistryDeclareTypeAlias", 749);
    _os_crash("assertion failure: (cTypeAlias) typeAlias must not be null.");
    __break(1u);
    goto LABEL_8;
  }

  if (!*a4)
  {
LABEL_8:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) typeAlias must not be empty.", "strlen(cTypeAlias) > 0", "RETypeRegistryDeclareTypeAlias", 750);
    _os_crash("assertion failure: (strlen(cTypeAlias) > 0) typeAlias must not be empty.");
    __break(1u);
    return;
  }

  *&v10.var0 = 0;
  v10.var1 = &str_67;
  v9[0] = a2;
  v9[1] = a3;
  re::TypeRegistry::declareTypeAlias(a1, v9, &v10);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

BOOL RETypeRegistryContainsTypeName(re::TypeRegistry *a1, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v9[0] = 2 * v2;
  v9[1] = a2;
  v6 = re::TypeRegistry::contains(a1, v9);
  v7 = v6;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  return v7;
}

re::TypeRegistry *RETypeRegistryGetTypeId(re::TypeRegistry *a1, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v10[0] = 2 * v2;
  v10[1] = a2;
  v6 = re::TypeRegistry::typeID(&v9, a1, v10);
  v7 = v9;
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  return v7;
}

uint64_t RETypeRegistryGetTypeCategory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return *(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, a3) + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t RETypeRegistryGetTypeInfoByTypeID(re *a1, re *a2, re *a3, _OWORD *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  re::TypeRegistry::typeInfo(a1, v10, v8);
  v5 = v8[0];
  if (v8[0] == 1)
  {
    re::TypeInfo::TypeInfo(v11, &v9);
    v6 = v11[1];
    *a4 = v11[0];
    a4[1] = v6;
  }

  return v5;
}

uint64_t RETypeRegistryGetTypeInfoByTypeName(re::TypeRegistry *a1, char *a2, _OWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v14[0] = 2 * v4;
  v14[1] = a2;
  v8 = re::TypeRegistry::typeInfo(&v12, a1, v14);
  v9 = v12;
  if (v12 == 1)
  {
    v8 = re::TypeInfo::TypeInfo(v15, &v13);
    v10 = v15[1];
    *a3 = v15[0];
    a3[1] = v10;
  }

  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  return v9;
}

_BYTE *RETypeRegistryGetTypeName(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = re::TypeRegistry::typeName(a1, v6);
  v5 = *v3;
  result = *(v3 + 1);
  if (v5 >= 0xFFFFFFFFFFFFFFFELL && (v5 & 1) == 0 && !*result)
  {
    return 0;
  }

  return result;
}

uint64_t RETypeRegistryIterateTypes(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v12, a1 + 32, 0);
  v6 = v12;
  v7 = v13;
  v12 = a1;
  v13 = v6;
  v14 = v7;
  if (v4 != v6 || v7 != 0xFFFFFFFFLL)
  {
    do
    {
      v9 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v13);
      result = (*(a2 + 16))(a2, v12, v9);
      if (!result)
      {
        break;
      }

      result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v13);
      v10 = v13 == v4 && v14 == 0xFFFF;
    }

    while (!v10 || WORD1(v14) != 0xFFFF);
  }

  return result;
}

_anonymous_namespace_ *RETypeRegistryRemoveType(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3[0] = a2;
    v3[1] = a3;
    return re::TypeRegistry::removeType(result, v3);
  }

  return result;
}

void REGlobalTypeRegistryWithReadLock(uint64_t a1)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v2);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v2);
}

void REGlobalTypeRegistryWithReadWriteLock(uint64_t a1)
{
  v3 = re::introspectionSharedMutex(v2);
  std::__shared_mutex_base::lock(v3);

  std::__shared_mutex_base::unlock(v3);
}

void *RETypeBuilderCreate(_anonymous_namespace_ *a1)
{
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 528, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2D800;
  return v3;
}

void RETypeBuilderCommitWithTypeID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  re::TypeBuilder::commitTo((a1 + 24), v3);
}

void RETypeBuilderBeginBasicType(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v13 = 0;
  v14 = &str_67;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v12 = re::TypeBuilder::setSharedInfo(a1 + 24, 1, &v13, a3, 1, a4, a5);
  *(a1 + 136) = a6;
  if (v13)
  {
    if (v13)
    {
    }
  }
}

void RETypeBuilderBeginEnumType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6)
{
  v15 = 0;
  v16 = &str_67;
  v12 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(a4);
  v14[0] = a5;
  v14[1] = a6;
  v13 = re::TypeBuilder::beginEnumType(a1 + 24, &v15, a3, v12, v14);
  if (v15)
  {
    if (v15)
    {
    }
  }
}

void RETypeBuilderAddEnumConstant(uint64_t a1, uint64_t a2, const char *a3)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  re::TypeBuilder::addEnumConstant((a1 + 24), a2, &v7);
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }
}

void RETypeBuilderBeginArrayType(_anonymous_namespace_ *a1, const char *a2, re *a3, re *a4, unint64_t a5)
{
  v12 = 0;
  v13 = &str_67;
  v11[0] = a3;
  v11[1] = a4;
  v10 = re::TypeBuilder::beginArrayType(a1 + 24, &v12, v11, a5);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

void RETypeBuilderBeginObjectType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, re *a7, re *a8)
{
  v19 = 0;
  v20 = &str_67;
  v16 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(a4);
  v18[0] = a7;
  v18[1] = a8;
  v17 = re::TypeBuilder::beginObjectType(a1 + 24, &v19, a3, v16, a5, a6, v18);
  if (v19)
  {
    if (v19)
    {
    }
  }
}

_anonymous_namespace_ *RETypeBuilderAddObjectMember(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v8 = *(a1 + 92);
  v14[0] = a2;
  v14[1] = a3;
  v12 = 0;
  v13 = &str_67;
  v9 = re::TypeBuilder::addObjectMember(a1 + 24, v8, v14, &v12, a5);
  v10 = v9;
  if (v12)
  {
    if (v12)
    {
    }
  }

  return v10;
}

_anonymous_namespace_ *RETypeBuilderAddObjectMemberWithTag(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v15[0] = a3;
  v15[1] = a4;
  v13 = 0;
  v14 = &str_67;
  v10 = re::TypeBuilder::addObjectMember(a1 + 24, a2, v15, &v13, a6);
  v11 = v10;
  if (v13)
  {
    if (v13)
    {
    }
  }

  return v11;
}

void RETypeBuilderBeginPointerType(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = 0;
  v17 = &str_67;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xFFFFFFFFLL;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0xFFFFFFFFLL;
  *(a1 + 160) = 0;
  v15 = re::TypeBuilder::setSharedInfo(a1 + 24, 9, &v16, a3, 0xFFFFFFFFLL, a4, a5);
  *(a1 + 136) = a7;
  *(a1 + 144) = a8;
  if (v16)
  {
    if (v16)
    {
    }
  }
}

uint64_t RETypeBuilderAddAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  return re::TypeBuilder::addAttribute((a1 + 24), v7, a4, a5, a6);
}

void *re::Shareable<re::TypeBuilder>::~Shareable(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5D2D800;
  re::TypeBuilder::~TypeBuilder((a1 + 3), a2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::TypeBuilder>::~Shareable(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5D2D800;
  re::TypeBuilder::~TypeBuilder((a1 + 3), a2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *REARSegmentationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void REARSegmentationComponentSetSegmentationBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v4 = v3;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 32), &v5);
  if (v5)
  {
  }
}

id REARSegmentationComponentGetSegmentationBuffer(uint64_t a1)
{
  v1 = *(a1 + 32);

  return v1;
}

void REARSegmentationComponentSetEstimatedDepthData(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v4 = v3;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 40), &v5);
  if (v5)
  {
  }
}

id REARSegmentationComponentGetEstimatedDepthData(uint64_t a1)
{
  v1 = *(a1 + 40);

  return v1;
}

void REARSegmentationComponentSetCameraTextureY(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v4 = v3;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 48), &v5);
  if (v5)
  {
  }
}

id REARSegmentationComponentGetCameraTextureY(uint64_t a1)
{
  v1 = *(a1 + 48);

  return v1;
}

void REARSegmentationComponentSetCameraTextureCbCr(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v4 = v3;
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 56), &v5);
  if (v5)
  {
  }
}

id REARSegmentationComponentGetCameraTextureCbCr(uint64_t a1)
{
  v1 = *(a1 + 56);

  return v1;
}

uint64_t REMeshAssetGetModelCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 608);
  }

  return result;
}

uint64_t anonymous namespace::unpackMesh(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v3);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REMeshAssetGetMaxMaterialIndex(uint64_t a1)
{
  if (!v1)
  {
    return -1;
  }

  v2 = v1[76];
  if (!v2)
  {
    return -1;
  }

  v3 = v1[79];
  v4 = v1[78];
  v5 = &v4[v2];
  v6 = -1;
  do
  {
    v7 = re::DataArray<re::MeshModel>::get(v3 + 8, *v4);
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = 544 * v8;
      v10 = (*(v7 + 64) + 458);
      do
      {
        if (v6 <= *v10)
        {
          v6 = *v10;
        }

        v10 += 272;
        v9 -= 544;
      }

      while (v9);
    }

    ++v4;
  }

  while (v4 != v5);
  return v6;
}

unint64_t REMeshAssetGetModelPartMaterialIndex(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    return *(result + 458);
  }

  return result;
}

unint64_t anonymous namespace::unpackPart(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    if (*(result + 56) <= a3)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v7 + 56);
        v10 = 136315650;
        v11 = a4;
        v12 = 2048;
        v13 = a3;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "%s partIndex %zu exceeds part count %zu", &v10, 0x20u);
      }

      return 0;
    }

    else
    {
      return *(result + 64) + 544 * a3;
    }
  }

  return result;
}

uint64_t REMeshAssetGetModelName(uint64_t a1, unint64_t a2)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t anonymous namespace::unpackModel(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (v5[76] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6[76];
      v12 = 136315650;
      v13 = a3;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "%s modelIndex %zu exceeds model count %zu", &v12, 0x20u);
    }

    return 0;
  }

  v7 = *(v5[78] + 8 * a2);
  v8 = v5[79] + 8;

  return re::DataArray<re::MeshModel>::get(v8, v7);
}

uint64_t REMeshAssetGetFlattenedPartIndex(uint64_t a1, const char *a2, const char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  *&v30[0] = 0;
  *(&v30[0] + 1) = &str_67;
  v7 = v30[0];
  *&v30[0] = 0;
  *(&v30[0] + 1) = &str_67;
  v9 = v30[0];
  *&v30[0] = 0;
  *(&v30[0] + 1) = &str_67;
  v11 = re::MeshNameMap::modelIndex((v6 + 640), v30);
  v12 = v11;
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  if (v12 == 0xFFFF)
  {
    goto LABEL_14;
  }

  *&v30[0] = 0;
  *(&v30[0] + 1) = &str_67;
  v11 = re::MeshNameMap::partIndex((v6 + 640), v12, v30);
  v13 = v11;
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  if (v13 == 0xFFFF)
  {
LABEL_14:
    v15 = 0;
    v6 = -1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = *(v6 + 608);
  if (v14 <= v12)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = MEMORY[0x1E69E9C10];
    v18 = v14;
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v12;
    v28 = 2048;
    v29 = v18;
    _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  *&v30[0] = *(*(v6 + 624) + 8 * v12);
  v11 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(v6 + 1184, v30);
  v15 = v11 == 0;
  if (v11)
  {
    v6 = *v11 + v13;
    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    goto LABEL_16;
  }

  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    if (!v15)
    {
      return v6;
    }

    return -1;
  }

  if (v15)
  {
    return -1;
  }

  return v6;
}

void *REMeshAssetGetFlattenedPartCount(uint64_t a1)
{
  if (result)
  {
    v2 = result[76];
    if (v2)
    {
      v3 = 0;
      v4 = result[79];
      v5 = result[78];
      v6 = 8 * v2;
      do
      {
        v7 = *v5++;
        v3 += *(re::DataArray<re::MeshModel>::get(v4 + 8, v7) + 56);
        v6 -= 8;
      }

      while (v6);
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REMeshAssetGetModelFlattenedPartIndexStart(uint64_t a1, unint64_t a2)
{
  if (v3 && *(v3 + 608) > a2 && (v6 = *(*(v3 + 624) + 8 * a2), (v4 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(v3 + 1184, &v6)) != 0))
  {
    return *v4;
  }

  else
  {
    return -1;
  }
}

void *REMeshAssetGetFlattenedPartRenderingCountForVertexLimit(uint64_t a1, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (result[76])
    {
      v5 = 0;
      while (1)
      {
        v16 = *(v4[78] + 8 * v5);
        v6 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet((v4 + 148), &v16);
        v7 = a2 - *v6;
        if (a2 >= *v6 && v6[1] > a2)
        {
          break;
        }

        if (++v5 >= v4[76])
        {
          return 0;
        }
      }

      v8 = re::DataArray<re::MeshModel>::get(v4[79] + 8, v16);
      v9 = *(v8 + 56);
      if (v9 <= v7)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v13 = MEMORY[0x1E69E9C10];
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v7;
        v24 = 2048;
        v25 = v9;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(v8 + 64) + 544 * v7;
      v11 = *(v10 + 452);
      v12 = *(v10 + 448);
      if (v11 <= v12)
      {
        return v12;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REMeshAssetGetModelVertexCount(uint64_t a1, unint64_t a2)
{
  v3 = *(result + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  LODWORD(result) = 0;
  v5 = *(v4 + 64);
  v6 = 544 * v3;
  v7 = (v5 + 452);
  do
  {
    result = (*v7 + result);
    v7 += 136;
    v6 -= 544;
  }

  while (v6);
  return result;
}

uint64_t REMeshAssetGetModelPartCount(uint64_t a1, unint64_t a2)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

unint64_t REMeshAssetGetModelPartVertexCount(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    return *(result + 452);
  }

  return result;
}

uint64_t REMeshAssetGetSkeletonCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 1248);
  }

  return result;
}

uint64_t REMeshAssetGetTotalSkeletonCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 1248);
  }

  return result;
}

uint64_t REMeshAssetGetSkeletonAtIndex(uint64_t a1, unint64_t a2)
{
  if (result)
  {
    if (*(result + 280) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 296) + 24 * a2);
    }
  }

  return result;
}

re::MeshAsset *REMeshAssetGetSkeletonName(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (*(result + 156) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 156);
        v7 = 134218240;
        v8 = a2;
        v9 = 2048;
        v10 = v6;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonName skeletonIndex %zu exceeds skeleton count %zu", &v7, 0x16u);
      }

      return 0;
    }

    else
    {
      return *(re::MeshAsset::skeletonAtIndex(result, a2) + 8);
    }
  }

  return result;
}

re::MeshAsset *REMeshAssetGetSkeletonJointCount(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (*(result + 156) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 156);
        v7 = 134218240;
        v8 = a2;
        v9 = 2048;
        v10 = v6;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonJointCount skeletonIndex %zu exceeds skeleton count %zu", &v7, 0x16u);
      }

      return 0;
    }

    else
    {
      return *(re::MeshAsset::skeletonAtIndex(result, a2) + 24);
    }
  }

  return result;
}

uint64_t REMeshAssetGetSkeletonJointParent(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if (*(v5 + 156) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v6 + 156);
      *buf = 134218240;
      v19 = a2;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonJointParent skeletonIndex %zu exceeds skeleton count %zu", buf, 0x16u);
    }

    return -1;
  }

  v7 = re::MeshAsset::skeletonAtIndex(v5, a2);
  v9 = v7;
  if (v7[3] <= a3)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v9[3];
        *buf = 134218240;
        v19 = a3;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBindPoseTransform jointIndex %zu exceeds joint count %zu", buf, 0x16u);
      }

      return -1;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v10 = v7[6];
  if (v10 <= a3)
  {
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v17);
    __break(1u);
    goto LABEL_19;
  }

  if (*(v7[7] + 4 * a3) == -1)
  {
    return -1;
  }

  else
  {
    return *(v7[7] + 4 * a3);
  }
}

double REMeshAssetGetSkeletonBindPoseTransform(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
LABEL_15:
    *&v11 = 0;
    return *&v11;
  }

  v6 = v5;
  if (*(v5 + 156) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v6 + 156);
      *buf = 134218240;
      v20 = a2;
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonBindPoseTransform skeletonIndex %zu exceeds skeleton count %zu", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v7 = re::MeshAsset::skeletonAtIndex(v5, a2);
  v9 = v7;
  if (v7[3] <= a3)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v9[3];
        *buf = 134218240;
        v20 = a3;
        v21 = 2048;
        v22 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBindPoseTransform jointIndex %zu exceeds joint count %zu", buf, 0x16u);
      }

      goto LABEL_15;
    }

LABEL_17:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v10 = v7[12];
  if (v10 <= a3)
  {
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v7[13] + 48 * a3);
  return *&v11;
}

__n128 REMeshAssetGetSkeletonInverseBindPoseTransform(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (v5 && (v6 = v5, (*(v5 + 1264) & 1) != 0) && *(v5 + 632))
  {
    re::MeshAsset::skeletonAtIndex(v5, a2);
    v7 = *(v6 + 632);
    v23 = 0;
    v22 = 0;
    memset(v21, 0, 64);
    v8 = 32;
    if (*(v6 + 1264))
    {
      v8 = 608;
    }

    v9 = *(v6 + v8);
    if (!v9)
    {
      goto LABEL_22;
    }

    for (i = 0; i != v9; ++i)
    {
      v11 = *(v6 + 608);
      if (v11 <= i)
      {
        v24 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v30 = 136315906;
        v31 = "operator[]";
        v32 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v33 = 797;
        v34 = 2048;
        v35 = i;
        v36 = 2048;
        v37 = v11;
        _os_log_send_and_compose_impl(v17, &v24, &v25, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v18, v20);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(re::DataArray<re::MeshModel>::get(v7 + 8, *(*(v6 + 624) + 8 * i)) + 224);
      if (v12 && *(v12 + 32) > a2)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v25, (*(v12 + 40) + 40 * a2));
        if (v25 == 1 && (re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v21, &v25 + 1), (v25 & 1) != 0))
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v25 + 8));
        }

        else if (*(&v26 + 1))
        {
          if (v27)
          {
            (*(**(&v26 + 1) + 40))();
          }
        }
      }
    }

    if (a3 < *(&v21[0] + 1) >> 6)
    {
      v13 = (*&v21[0] + (a3 << 6));
    }

    else
    {
LABEL_22:
      v13 = MEMORY[0x1E69E9B18];
    }

    v19 = *v13;
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v21);
    return v19;
  }

  else
  {
    return *MEMORY[0x1E69E9B18];
  }
}

void REMeshAssetCopySkeletonInverseBindPoseTransforms(uint64_t a1, unint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 1264) == 1)
    {
      v7 = *(v5 + 632);
      if (v7)
      {
        v20 = 0;
        v19 = 0;
        *__src = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = *(v5 + 608);
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            v10 = *(v6 + 608);
            if (v10 <= i)
            {
              v21 = 0;
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              v22 = 0u;
              v12 = MEMORY[0x1E69E9C10];
              v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v27 = 136315906;
              v28 = "operator[]";
              v29 = 1024;
              if (v13)
              {
                v14 = 3;
              }

              else
              {
                v14 = 2;
              }

              v30 = 797;
              v31 = 2048;
              v32 = i;
              v33 = 2048;
              v34 = v10;
              _os_log_send_and_compose_impl(v14, &v21, &v22, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, __src[0], __src[1]);
              _os_crash_msg();
              __break(1u);
            }

            v11 = *(re::DataArray<re::MeshModel>::get(v7 + 8, *(*(v6 + 624) + 8 * i)) + 224);
            if (v11 && *(v11 + 32) > a2)
            {
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v22, (*(v11 + 40) + 40 * a2));
              if (v22 == 1 && (re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(__src, &v22 + 1), (v22 & 1) != 0))
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v22 + 8));
              }

              else if (*(&v23 + 1) && (v24 & 1) != 0)
              {
                (*(**(&v23 + 1) + 40))();
              }
            }
          }

          if (__src[1])
          {
            memcpy(a3, __src[0], __src[1]);
          }
        }

        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(__src);
      }
    }
  }
}

double REAssetCalculateAABBFromMesh(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  if (v5)
  {
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    re::MeshAsset::aabbFromMesh(v5, v12, &v13);
    return *v13.i64;
  }

  else
  {
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    *&result = vnegq_f32(v7).u64[0];
  }

  return result;
}

re::MeshAsset *REMeshAssetGetSkeletonJointName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    if (*(result + 156) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v9 = CoreRELog::log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v6 + 156);
        v13 = 134218240;
        v14 = a2;
        v15 = 2048;
        v16 = v10;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonJointName skeletonIndex %zu exceeds skeleton count %zu", &v13, 0x16u);
      }
    }

    else
    {
      v7 = re::MeshAsset::skeletonAtIndex(result, a2);
      v8 = v7;
      if (*(v7 + 24) > a3)
      {
        return *(*(v7 + 32) + 16 * a3 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v8 + 24);
        v13 = 134218240;
        v14 = a3;
        v15 = 2048;
        v16 = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetSkeletonJointName jointIndex %zu exceeds joint count %zu", &v13, 0x16u);
      }
    }

    return 0;
  }

  return result;
}

uint64_t REMeshAssetGetBlendShapeGroupCount(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (*(result + 1264))
    {
      if (*(result + 608) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v7 = CoreRELog::log;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 32;
          if (*(v4 + 1264))
          {
            v8 = 608;
          }

          v9 = *(v4 + v8);
          v10 = 134218240;
          v11 = a2;
          v12 = 2048;
          v13 = v9;
          _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeGroupCount modelIndex %zu exceeds model count %zu", &v10, 0x16u);
        }
      }

      else
      {
        v5 = *(re::DataArray<re::MeshModel>::get(*(result + 632) + 8, *(*(result + 624) + 8 * a2)) + 144);
        if (v5)
        {
          return *(v5 + 64);
        }
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v6 = CoreRELog::log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeGroupCount called with unregistered mesh asset ", &v10, 2u);
      }
    }

    return 0;
  }

  return result;
}

uint64_t REMeshAssetGetBlendShapeGroupMeshPartIndex(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if ((*(v5 + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v23) = 0;
    v15 = "REMeshAssetGetBlendShapeGroupMeshPartIndex called with unregistered mesh asset ";
    v16 = v14;
    v17 = 2;
    goto LABEL_24;
  }

  if (*(v5 + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v18 = 32;
    if (*(v6 + 1264))
    {
      v18 = 608;
    }

    v19 = *(v6 + v18);
    v23 = 134218240;
    v24 = a2;
    v25 = 2048;
    v26 = v19;
    v15 = "REMeshAssetGetBlendShapeGroupMeshPartIndex modelIndex %zu exceeds model count %zu";
    v16 = v14;
    v17 = 22;
LABEL_24:
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, v15, &v23, v17);
LABEL_25:

    return -1;
  }

  v7 = re::DataArray<re::MeshModel>::get(*(v5 + 632) + 8, *(*(v5 + 624) + 8 * a2));
  v8 = v7;
  v9 = *(v7 + 144);
  if (!v9 || v9[8] <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v21 = CoreRELog::log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v8 + 144);
      if (v22)
      {
        v22 = *(v22 + 64);
      }

      v23 = 134218240;
      v24 = a3;
      v25 = 2048;
      v26 = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeGroupMeshPartIndex groupIndex %zu exceeds group count %zu", &v23, 0x16u);
    }

    return -1;
  }

  v10 = *(v7 + 56);
  if (!v10)
  {
    return -1;
  }

  v11 = 0;
  while (1)
  {
    v12 = v9[5] <= v11 ? 0xFFFFFFFFLL : *(v9[6] + 4 * v11);
    if (v12 == a3)
    {
      break;
    }

    ++v11;
    v13 = -1;
    if (v10 == v11)
    {
      return v13;
    }
  }

  return v11;
}

uint64_t REMeshAssetGetBlendShapeGroupDefinitionCount(uint64_t a1, unint64_t a2, const DeformationModelData *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(v5 + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    LOWORD(v20) = 0;
    v13 = "REMeshAssetGetBlendShapeGroupDefinitionCount called with unregistered mesh asset";
    v14 = v12;
    v15 = 2;
    goto LABEL_19;
  }

  if (*(v5 + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v16 = 32;
    if (*(v6 + 1264))
    {
      v16 = 608;
    }

    v17 = *(v6 + v16);
    v20 = 134218240;
    v21 = a2;
    v22 = 2048;
    v23 = v17;
    v13 = "REMeshAssetGetBlendDefinitionCount modelIndex %zu exceeds model count %zu";
    v14 = v12;
    v15 = 22;
LABEL_19:
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
LABEL_20:

    return 0;
  }

  v7 = re::DataArray<re::MeshModel>::get(*(v5 + 632) + 8, *(*(v5 + 624) + 8 * a2));
  v9 = (v7 + 144);
  v8 = *(v7 + 144);
  if (!v8 || *(v8 + 64) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v18 = CoreRELog::log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v9;
      if (*v9)
      {
        v19 = *(v19 + 64);
      }

      v20 = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = v19;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendDefinitionCount groupIndex %zu exceeds group count %zu", &v20, 0x16u);
    }

    return 0;
  }

  v10 = (v7 + 144);

  return re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v10, a3);
}

uint64_t REMeshAssetGetBlendShapeDefinitionCountForPart(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(v5 + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeDefinitionCountForPart called with unregistered mesh asset", &v20, 2u);
    }

    return 0;
  }

  if (*(v5 + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v15 = 32;
    if (*(v6 + 1264))
    {
      v15 = 608;
    }

    v16 = *(v6 + v15);
    v20 = 134218240;
    v21 = a2;
    v22 = 2048;
    v23 = v16;
    v17 = "REMeshAssetGetBlendShapeDefinitionCountForPart modelIndex %zu exceeds model count %zu";
    goto LABEL_33;
  }

  v7 = re::DataArray<re::MeshModel>::get(*(v5 + 632) + 8, *(*(v5 + 624) + 8 * a2));
  v9 = (v7 + 144);
  v8 = *(v7 + 144);
  if (!v8)
  {
    return 0;
  }

  if (v8[5] <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v18 = *v9;
    if (*v9)
    {
      v18 = *(v18 + 40);
    }

    v20 = 134218240;
    v21 = a2;
    v22 = 2048;
    v23 = v18;
    v17 = "REMeshAssetGetBlendShapeDefinitionCountForPart partIndex %zu exceeds part count %zu";
    goto LABEL_33;
  }

  v10 = *(v8[6] + 4 * a3);
  if (v8[8] <= v10)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v19 = *v9;
    if (*v9)
    {
      v19 = *(v19 + 64);
    }

    v20 = 134218240;
    v21 = v10;
    v22 = 2048;
    v23 = v19;
    v17 = "REMeshAssetGetBlendShapeDefinitionCountForPart groupIndex %zu exceeds group count %zu";
LABEL_33:
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, v17, &v20, 0x16u);
LABEL_34:

    return 0;
  }

  v11 = (v7 + 144);

  return re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v11, v10);
}

uint64_t REMeshAssetGetBlendShapeOffsetsForPart(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = v7;
  if (v7)
  {
    if ((*(v7 + 1264) & 1) == 0)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v21 = CoreRELog::log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeOffsetsForPart called with unregistered mesh asset", buf, 2u);
      }

      return 0;
    }

    if (*(v7 + 608) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v22 = CoreRELog::log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v23 = 32;
      if (*(v8 + 1264))
      {
        v23 = 608;
      }

      v24 = *(v8 + v23);
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      v25 = "REMeshAssetGetBlendShapeOffsetsForPart modelIndex %zu exceeds model count %zu";
      goto LABEL_34;
    }

    v9 = re::DataArray<re::MeshModel>::get(*(v7 + 632) + 8, *(*(v7 + 624) + 8 * a2));
    v11 = (v9 + 144);
    v10 = *(v9 + 144);
    if (v10 && v10[5] > a3)
    {
      v12 = *(v10[6] + 4 * a3);
      if (v10[8] <= v12)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v22 = CoreRELog::log;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v28 = *v11;
        if (*v11)
        {
          v28 = *(v28 + 64);
        }

        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        v25 = "REMeshAssetGetBlendShapeOffsetsForPart groupIndex %zu exceeds group count %zu";
        goto LABEL_34;
      }

      if (re::BlendShapeModelUtil::blendShapeTargetCountForGroup((v9 + 144), v12) <= a4)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v22 = CoreRELog::log;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v11, v12);
        v25 = "REMeshAssetGetBlendShapeOffsetsForPart defIndex %zu exceeds definition count %zu";
        goto LABEL_34;
      }

      re::BlendShapeModelUtil::makeBlendShapeGroupDefinitionFromGroup(v50, v11, v12);
      if (v50[0])
      {
        v13 = re::FixedArray<re::BlendShapeDefinition>::operator[](v52, v53, a4);
        v14 = *(v13 + 6) / 3uLL;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        if (v48)
        {
          v15 = 0;
          v16 = 0;
          a2 = 0;
          while (1)
          {
            v17 = *(v13 + 6);
            if (v17 <= v15)
            {
              break;
            }

            *(v49 + v16) = *(*(v13 + 7) + 4 * v15);
            v18 = v15 + 1;
            v17 = *(v13 + 6);
            if (v17 <= v15 + 1)
            {
              goto LABEL_69;
            }

            v17 = v48;
            if (v48 <= a2)
            {
              goto LABEL_73;
            }

            *(v49 + v16 + 4) = *(*(v13 + 7) + 4 * v15 + 4);
            v19 = v15 + 2;
            v17 = *(v13 + 6);
            if (v17 <= v15 + 2)
            {
              goto LABEL_77;
            }

            v17 = v48;
            if (v48 <= a2)
            {
              goto LABEL_81;
            }

            *(v49 + v16 + 8) = *(*(v13 + 7) + 4 * v15 + 8);
            ++a2;
            v16 += 16;
            v15 += 3;
            if (v48 <= a2)
            {
              v20 = (16 * v48);
              goto LABEL_58;
            }
          }

          v54 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v32 = MEMORY[0x1E69E9C10];
          v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          if (v33)
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          v58 = 476;
          v59 = 2048;
          v60 = v15;
          v61 = 2048;
          v62 = v17;
          _os_log_send_and_compose_impl(v34, &v54, buf, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
LABEL_69:
          v54 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v35 = MEMORY[0x1E69E9C10];
          a2 = v18;
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v58 = 476;
          v59 = 2048;
          v60 = a2;
          v61 = 2048;
          v62 = v17;
          _os_log_send_and_compose_impl(v37, &v54, buf, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
LABEL_73:
          v54 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v58 = 468;
          v59 = 2048;
          v60 = a2;
          v61 = 2048;
          v62 = v17;
          _os_log_send_and_compose_impl(v40, &v54, buf, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
LABEL_77:
          v54 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v41 = MEMORY[0x1E69E9C10];
          a2 = v19;
          v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          if (v42)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v58 = 476;
          v59 = 2048;
          v60 = a2;
          v61 = 2048;
          v62 = v17;
          _os_log_send_and_compose_impl(v43, &v54, buf, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v54 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(buf, 0, sizeof(buf));
          v11 = MEMORY[0x1E69E9C10];
          v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          if (v44)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          v58 = 468;
          v59 = 2048;
          v60 = a2;
          v61 = 2048;
          v62 = v17;
          _os_log_send_and_compose_impl(v45, &v54, buf, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
          goto LABEL_85;
        }

        v20 = 0;
LABEL_58:
        re::Data::makeDataWithBytes(buf, v49, v20);
        v8 = *buf;
        if (*buf)
        {
          CFRetain(*buf);
          v31 = *buf;
        }

        else
        {
          v31 = 0;
        }

        if (v47 && v48)
        {
          (*(*v47 + 40))();
        }
      }

      else
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v29 = CoreRELog::log;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          std::error_code::message(buf, &v51);
          v30 = buf[23] >= 0 ? buf : *buf;
          *v55 = 136315138;
          v56 = v30;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeOffsetsForPart %s", v55, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v8 = 0;
      }

      re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(v50);
      return v8;
    }

    if (CoreRELog::onceToken == -1)
    {
LABEL_30:
      v22 = CoreRELog::log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_35:

        return 0;
      }

      v26 = *v11;
      if (*v11)
      {
        v26 = *(v26 + 40);
      }

      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      v25 = "REMeshAssetGetBlendShapeOffsetsForPart partIndex %zu exceeds part count %zu";
LABEL_34:
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      goto LABEL_35;
    }

LABEL_85:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_30;
  }

  return v8;
}

uint64_t re::FixedArray<re::BlendShapeDefinition>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
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

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 136 * a3;
}

uint64_t REMeshAssetGetBlendShapeDefinitionNameForPart(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if ((*(v7 + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetBlendShapeDefinitionNameForPart called with unregistered mesh asset", &v21, 2u);
    }

    return 0;
  }

  if (*(v7 + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v16 = 32;
    if (*(v8 + 1264))
    {
      v16 = 608;
    }

    v17 = *(v8 + v16);
    v21 = 134218240;
    v22 = a2;
    v23 = 2048;
    v24 = v17;
    v18 = "REMeshAssetGetBlendShapeDefinitionNameForPart modelIndex %zu exceeds model count %zu";
    goto LABEL_28;
  }

  v9 = re::DataArray<re::MeshModel>::get(*(v7 + 632) + 8, *(*(v7 + 624) + 8 * a2));
  v11 = (v9 + 144);
  v10 = *(v9 + 144);
  if (!v10 || v10[5] <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v19 = *v11;
    if (*v11)
    {
      v19 = *(v19 + 40);
    }

    v21 = 134218240;
    v22 = a2;
    v23 = 2048;
    v24 = v19;
    v18 = "REMeshAssetGetBlendShapeDefinitionNameForPart partIndex %zu exceeds part count %zu";
    goto LABEL_28;
  }

  v12 = *(v10[6] + 4 * a3);
  if (v10[8] <= v12)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v20 = *v11;
    if (*v11)
    {
      v20 = *(v20 + 64);
    }

    v21 = 134218240;
    v22 = v12;
    v23 = 2048;
    v24 = v20;
    v18 = "REMeshAssetGetBlendShapeDefinitionNameForPart groupIndex %zu exceeds group count %zu";
    goto LABEL_28;
  }

  if (re::BlendShapeModelUtil::blendShapeTargetCountForGroup((v9 + 144), v12) <= a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v21 = 134218240;
    v22 = v12;
    v23 = 2048;
    v24 = re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v11, v12);
    v18 = "REMeshAssetGetBlendShapeDefinitionNameForPart defIndex %zu exceeds definition count %zu";
LABEL_28:
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v18, &v21, 0x16u);
LABEL_29:

    return 0;
  }

  return re::BlendShapeModelUtil::DEPRECATED_blendShapeTargetNameDoNotUse(v11, v12, a4);
}

uint64_t REMeshAssetGetBlendShapeDefinitionName(uint64_t a1, unint64_t a2, const DeformationModelData *a3, unint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if ((*(v7 + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v22) = 0;
    v14 = "REMeshAssetGetBlendShapeDefinitionName called with unregistered mesh asset";
    v15 = v13;
    v16 = 2;
    goto LABEL_20;
  }

  if (*(v7 + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v17 = 32;
    if (*(v8 + 1264))
    {
      v17 = 608;
    }

    v18 = *(v8 + v17);
    v22 = 134218240;
    v23 = a2;
    v24 = 2048;
    v25 = v18;
    v14 = "REMeshAssetGetBlendShapeDefinitionName modelIndex %zu exceeds model count %zu";
    v15 = v13;
    v16 = 22;
LABEL_20:
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v14, &v22, v16);
LABEL_21:

    return 0;
  }

  v9 = re::DataArray<re::MeshModel>::get(*(v7 + 632) + 8, *(*(v7 + 624) + 8 * a2));
  v11 = (v9 + 144);
  v10 = *(v9 + 144);
  if (!v10 || *(v10 + 64) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v19 = CoreRELog::log;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v20 = *v11;
    if (*v11)
    {
      v20 = *(v20 + 64);
    }

    v22 = 134218240;
    v23 = a3;
    v24 = 2048;
    v25 = v20;
    v21 = "REMeshAssetGetBlendShapeDefinitionName groupIndex %zu exceeds group count %zu";
    goto LABEL_28;
  }

  if (re::BlendShapeModelUtil::blendShapeTargetCountForGroup((v9 + 144), a3) <= a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v19 = CoreRELog::log;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v22 = 134218240;
    v23 = a3;
    v24 = 2048;
    v25 = re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v11, a3);
    v21 = "REMeshAssetGetBlendShapeDefinitionName defIndex %zu exceeds definition count %zu";
LABEL_28:
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, v21, &v22, 0x16u);
LABEL_29:

    return 0;
  }

  return re::BlendShapeModelUtil::DEPRECATED_blendShapeTargetNameDoNotUse(v11, a3, a4);
}

uint64_t REMeshAssetGetSkinnedVertexCount(uint64_t a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if ((*(result + 1264) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(buf[0]) = 0;
    v12 = "REMeshAssetGetSkinnedVertexCount called with unregistered mesh asset";
    v13 = v11;
    v14 = 2;
    goto LABEL_20;
  }

  if (*(result + 608) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v15 = 32;
    if (*(v4 + 1264))
    {
      v15 = 608;
    }

    v16 = *(v4 + v15);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v16;
    v12 = "REMeshAssetGetSkinnedVertexCount modelIndex %zu exceeds model count %zu";
    v13 = v11;
    v14 = 22;
LABEL_20:
    _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_21:

    return 0;
  }

  v5 = re::DataArray<re::MeshModel>::get(*(result + 632) + 8, *(*(result + 624) + 8 * a2));
  v6 = *(v5 + 224);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = v5;
  v9 = *(v5 + 56);
  if (v9 <= v7 - 1)
  {
    v20 = 0;
    memset(buf, 0, sizeof(buf));
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

    v24 = 476;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(result) = 0;
  v10 = (*(v8 + 64) + 452);
  do
  {
    result = (*v10 + result);
    v10 += 136;
    --v7;
  }

  while (v7);
  return result;
}

float REMeshAssetGetAverageInfluenceCount(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    if (*(v3 + 240) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v6 = CoreRELog::log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v5 + 240);
        v9 = 134218240;
        v10 = a2;
        v11 = 2048;
        v12 = v7;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetAverageInfluenceCount modelIndex %zu exceeds model count %zu", &v9, 0x16u);
      }
    }

    else
    {
      return *(*(v3 + 256) + 4 * a2);
    }
  }

  return v4;
}

uint64_t REMeshAssetGetInstanceCount(uint64_t a1)
{
  if (result)
  {
    return *(result + 568);
  }

  return result;
}

const char *REMeshAssetGetInstanceName(uint64_t a1, unint64_t a2)
{
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t anonymous namespace::unpackInstance(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (v5[71] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6[71];
      v12 = 136315650;
      v13 = a3;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "%s instanceIndex %zu exceeds instance count %zu", &v12, 0x20u);
    }

    return 0;
  }

  v7 = *(v5[73] + 8 * a2);
  v8 = v5[79] + 72;

  return re::DataArray<re::MeshInstance>::get(v8, v7);
}

uint64_t REMeshAssetGetInstanceModelIndex(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(result + 568) <= a2)
  {
    goto LABEL_11;
  }

  v5 = re::DataArray<re::MeshInstance>::get(*(result + 632) + 72, *(*(result + 584) + 8 * a2));
  v7 = v4[76];
  if (!v7)
  {
LABEL_10:
    re::internal::assertLog(5, v6, "assertion failure: '%s' (%s:line %i) %s could not find instance index", "false", "REMeshAssetGetInstanceModelIndex", 920, "REMeshAssetGetInstanceModelIndex");
    _os_crash("assertion failure: (false) %s could not find instance index", v16);
    __break(1u);
LABEL_11:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v4[71];
      *buf = 136315650;
      v18 = "REMeshAssetGetInstanceModelIndex";
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s instanceIndex %zu exceeds instance count %zu", buf, 0x20u);
    }

    return 0;
  }

  v8 = v5;
  result = 0;
  v9 = *(v8 + 16);
  v10 = 8 * v7;
  while (1)
  {
    v11 = *(v4[78] + 8 * result);
    v13 = v11 == v9;
    v12 = (v11 ^ v9) & 0xFFFFFF00000000;
    v13 = v13 && v12 == 0;
    if (v13)
    {
      return result;
    }

    ++result;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_10;
    }
  }
}

char *REMeshAssetCopyInstances(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v24);
  if (!v25 || (v1 = atomic_load((v25 + 896)), v1 != 2))
  {
    v6 = re::MeshInstanceCollection::make(3);
LABEL_16:
    re::AssetHandle::~AssetHandle(&v24);
    return v6;
  }

  v3 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(&v24);
  v4 = v3[71];
  if (!(v4 >> 32))
  {
    v5 = v3[79];
    v6 = re::MeshInstanceCollection::make(v4);
    v23 = 0;
    v7 = v3[71];
    if (v7)
    {
      v8 = v3[73];
      v9 = 8 * v7;
      v10 = 0xBF58476D1CE4E5B9;
      v11 = 0x94D049BB133111EBLL;
      do
      {
        v12 = re::DataArray<re::MeshInstance>::get(v5 + 72, *v8);
        v13 = re::DataArray<re::MeshModel>::get(v5 + 8, *&v12[1].var0);
        v14 = ((((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1)) * v10) ^ ((((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1)) * v10) >> 27)) * v11;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v6 + 8), v12, v14 ^ (v14 >> 31), buf);
        v15 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v6 + 8), v12, &v23);
          re::DynamicArray<re::StringID>::add((v6 + 56), v12);
          re::DynamicArray<re::StringID>::add((v6 + 96), v13);
          v27 = xmmword_1E30474D0;
          v28 = 0u;
          v26 = 0u;
          re::decomposeScaleRotationTranslation<float>(&v12[2], &v28, &v27, &v26);
          *buf = v28;
          *&buf[16] = v27;
          v30 = v26;
          re::DynamicArray<re::Matrix3x3<float>>::add((v6 + 136), buf);
          ++v23;
        }

        else
        {
          v16 = v11;
          v17 = v10;
          v18 = *(v6 + 3);
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v19 = CoreRELog::log;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            var1 = v12->var1;
            v21 = *(v18 + 32 * v15 + 24);
            *buf = 136315394;
            *&buf[4] = var1;
            *&buf[12] = 1024;
            *&buf[14] = v21;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Instance name %s already exists at index %u", buf, 0x12u);
          }

          v10 = v17;
          v11 = v16;
        }

        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    goto LABEL_16;
  }

  re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Mesh asset has too many instances", "false", "REMeshAssetCopyInstances", 943);
  result = _os_crash("assertion failure: (false) Mesh asset has too many instances");
  __break(1u);
  return result;
}

uint64_t REAssetServiceMeshAssetCreateMutable(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 1272, 8);
  re::MeshAsset::MeshAsset(v3);
  v5 = re::MeshAsset::assetType(v4);
  (*(*a1 + 424))(v9, a1, v3, v5, 1, 0, 0);
  v6 = v9[0];
  v7 = (v9[0] + 8);
  re::AssetHandle::~AssetHandle(v9);
  return v6;
}

void REMeshAssetReplaceAllWithModel(uint64_t a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3[0] = 0;
  REMeshAssetReplaceAllWithModels(a1, &v2, 1u, v3, 0);
}

void REMeshAssetReplaceAllWithModels(uint64_t a1, _anonymous_namespace_ *a2, unsigned int a3, uint64_t *a4, unsigned int a5)
{
  v6 = REMeshResourceDefinitionCreate(a2, a3, a4, a5, 0, 0);
  REMeshAssetReplaceAllWithResource(a1, v6);
}

void REAssetManagerReplaceAllMeshWithModel(re::AssetManager *a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4[0] = 0;
  REAssetManagerReplaceAllMeshWithModels(a1, a2, &v3, 1u, v4, 0);
}

void REAssetManagerReplaceAllMeshWithModels(re::AssetManager *a1, uint64_t a2, _anonymous_namespace_ *a3, unsigned int a4, uint64_t *a5, unsigned int a6)
{
  v8 = REMeshResourceDefinitionCreate(a3, a4, a5, a6, 0, 0);
  REAssetManagerReplaceAllMeshWithResource(a1, a2, v8);
}

void REMeshAssetReplaceAllWithResource(uint64_t a1, const re::MeshResourceDefinition *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v5);
  if (v6)
  {
    v4 = *(v6 + 24);
  }

  else
  {
    v4 = 0;
  }

  REAssetManagerReplaceAllMeshWithResource(v4, a1, a2);
  re::AssetHandle::~AssetHandle(&v5);
}

void REAssetManagerReplaceAllMeshWithResource(re::AssetManager *a1, uint64_t a2, const re::MeshResourceDefinition *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v12);
  if (!v13 || (v6 = atomic_load((v13 + 896)), v6 != 2))
  {
    v7 = re::globalAllocators(v5);
    v8 = (*(*v7[2] + 32))(v7[2], 1272, 8);
    re::MeshAsset::MeshAsset(v8);
    re::AssetManager::setAssetPointerForExistingAsset(a1, v8, &v12, 0, 0);
  }

  v9 = re::MeshAsset::assetType(v5);
  v10 = *(a1 + 226);
  v14 = v9;
  v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, &v14);
  (*(**v11 + 128))(*v11);
  re::MeshAssetLoader::replaceAssetContentsWithMeshResourceDefinition(*v11, &v12, a3);
  re::AssetHandle::~AssetHandle(&v12);
}

void REMeshAssetReplaceAllWithSkinnedModels(uint64_t a1, _anonymous_namespace_ *a2, unsigned int a3, uint64_t *a4, unsigned int a5, re **a6, unsigned int a7)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v16);
  if (v17)
  {
    v14 = *(v17 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = REMeshResourceDefinitionCreate(a2, a3, a4, a5, a6, a7);
  REAssetManagerReplaceAllMeshWithResource(v14, a1, v15);

  re::AssetHandle::~AssetHandle(&v16);
}

const char *REMeshAssetGetModelPartName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (v3)
  {
    return *(v3 + 496);
  }

  else
  {
    return "";
  }
}

unint64_t REMeshAssetGetModelPartMaterial(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  if (result)
  {
    v6 = *(result + 458);
    if (v6 == 0xFFFF)
    {
      return 0;
    }

    else
    {
      if (a4)
      {
        *a4 = v6;
      }

      return 1;
    }
  }

  return result;
}

re::AttributeTable ***REMeshAssetGetModelPartBufferCount(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    re::AttributeTable::buffers(result);
    return v4;
  }

  return result;
}

const char *REMeshAssetGetModelPartBufferName(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return "";
  }

  v6 = *(v5 + 336);
  if (v6 <= a4)
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

    v15 = 476;
    v16 = 2048;
    v17 = a4;
    v18 = 2048;
    v19 = v6;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v5 + 344) + 16 * a4 + 8);
}

uint64_t REMeshAssetGetModelPartBufferIndex(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 255;
  }

  v6 = v5;
  if (a4)
  {
    v7 = *a4;
    if (*a4)
    {
      v8 = a4[1];
      if (v8)
      {
        v9 = a4 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v7;
  v11 = v5;
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 && !v12[8]);
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v12 + 5, &v16) == -1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "REMeshAssetGetModelPartBufferIndex";
      v19 = 2080;
      v20 = a4;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "%s unable to find specified vertex buffer on mesh: %s", buf, 0x16u);
    }

    return 255;
  }

  do
  {
    v13 = v6;
    v6 = *v6;
  }

  while (v6 && !v13[8]);
  return *(v13[6] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v13 + 5, &v16) + 8);
}

uint64_t REMeshAssetGetModelPartBufferAttributeType(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 255;
  }

  do
  {
    v6 = v5;
    v5 = *v5;
    v7 = v6[3];
    if (v5)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  while (v8);
  if (v7 <= a4)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v12 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 476;
    v20 = 2048;
    v21 = a4;
    v22 = 2048;
    v23 = v7;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v9 = &v6[4][2 * a4];
  if (*(v9 + 4) == 1 && (v10 = *(v9 + 12) - 28, v10 <= 0x18))
  {
    return byte_1E311DCC0[v10];
  }

  else
  {
    return 255;
  }
}

re::AttributeTable ***anonymous namespace::unpackAttributes(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = v7;
  if (v7)
  {
    re::AttributeTable::buffers(v7);
    if (v9 <= a4)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v10 = CoreRELog::log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        re::AttributeTable::buffers(v8);
        v13 = 136315650;
        v14 = a5;
        v15 = 2048;
        v16 = a4;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "%s bufferIndex %zu exceeds buffer count %zu", &v13, 0x20u);
      }

      return 0;
    }
  }

  return v8;
}

uint64_t REMeshAssetGetModelPartBufferAttributeRate(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (v5)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
      v7 = v6[3];
      if (v5)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    while (v8);
    if (v7 <= a4)
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

      v20 = 476;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = v7;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }

    v9 = BYTE5(v6[4][2 * a4]);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return -1;
  }
}

re::AttributeTable ***REMeshAssetGetModelPartBufferAttributeCount(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    v8 = result;
    do
    {
      v9 = v8;
      v8 = *v8;
      v10 = v9[3];
      if (v8)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v11);
    if (v10 <= a4)
    {
      v23 = 0;
      memset(v32, 0, sizeof(v32));
      v17 = MEMORY[0x1E69E9C10];
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v27 = 476;
      v28 = 2048;
      v29 = a4;
      v30 = 2048;
      v31 = v10;
      _os_log_send_and_compose_impl(v18, &v23, v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
      _os_crash_msg();
      __break(1u);
      goto LABEL_18;
    }

    v12 = v9[4] + 16 * a4;
    if (*(v12 + 4) == 1)
    {
      v13 = re::sizeFromVertexFormat(*(v12 + 12), v6);
      if (v13)
      {
        v14 = v13;
        v15 = re::AttributeTable::buffers(v7);
        if (v16 > a4)
        {
          return (*(v15 + 6 * a4 + 5) / v14);
        }

LABEL_18:
        re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
        __break(1u);
      }
    }

    return 0;
  }

  return result;
}

unint64_t REMeshAssetGetModelPartBufferAttributeData(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v54 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  do
  {
    v16 = v15;
    v15 = *v15;
    v17 = v16[3];
    if (v15)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 0;
    }
  }

  while (v18);
  if (v17 <= a4)
  {
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *v49 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v44 = 476;
    v45 = 2048;
    v46 = a4;
    v47 = 2048;
    v48 = v17;
    _os_log_send_and_compose_impl(v35, &v40, v49, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v19 = &v16[4][2 * a4];
  v20 = *(v19 + 4);
  v21 = *(v19 + 12);
  v22 = re::AttributeTable::buffers(v14);
  if (v23 <= a4)
  {
LABEL_26:
    re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, v23);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v37);
    __break(1u);
LABEL_27:
    re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) ", "storageMode != MTL::StorageModePrivate && storageMode != MTL::StorageModeMemoryless", "REMeshAssetGetModelPartBufferAttributeData", 1296);
    _os_crash("assertion failure: (storageMode != MTL::StorageModePrivate && storageMode != MTL::StorageModeMemoryless) ");
    __break(1u);
  }

  v24 = v22 + 24 * a4;
  v25 = *v24;
  *&v50 = *(v24 + 2);
  *v49 = v25;
  if (v20 != 1)
  {
    return 0;
  }

  v26 = re::sizeFromVertexFormat(v21, v23);
  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  if (([v49[0] storageMode] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    goto LABEL_27;
  }

  v29 = v27;
  if ((DWORD1(v50) / v27) - a5 >= a6)
  {
    v30 = a6;
  }

  else
  {
    v30 = DWORD1(v50) / v27 - a5;
  }

  v31 = [v49[0] iosurface];
  if (v31)
  {
    v32 = IOSurfaceGetBaseAddress(v31) + v50 + v29 * a5;
  }

  else
  {
    v32 = (re::BufferView::contents(v49) + v29 * a5);
  }

  memcpy(a7, v32, v30 * v29);
  return v30;
}

re::AttributeTable ***REMeshAssetGetModelPartBuffer(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (v5)
  {
    v6 = re::AttributeTable::buffers(v5);
    if (v7 <= a4)
    {
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, v7);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
      __break(1u);
      return result;
    }

    v5 = *(v6 + 3 * a4);
  }

  return v5;
}

re::AttributeTable ***REMeshAssetGetModelPartBufferOffset(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result)
  {
    v6 = re::AttributeTable::buffers(result);
    if (v7 <= a4)
    {
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, v7);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v9);
      __break(1u);
    }

    else
    {
      return *(v6 + 6 * a4 + 4);
    }
  }

  return result;
}

re::AttributeTable ***REMeshAssetGetModelPartBufferSize(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result)
  {
    v6 = re::AttributeTable::buffers(result);
    if (v7 <= a4)
    {
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a4, v7);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v9);
      __break(1u);
    }

    else
    {
      return *(v6 + 6 * a4 + 5);
    }
  }

  return result;
}

uint64_t REMeshAssetGetModelPartSkeletonIndex(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = 32;
  if (*(result + 1264))
  {
    v9 = 608;
  }

  if (*(result + v9) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 32;
      if (*(v8 + 1264))
      {
        v14 = 608;
      }

      v15 = *(v8 + v14);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = a2;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v15;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "modelIndex %zu exceeds model count %zu", buf, 0x16u);
    }

    return 0;
  }

  if (re::MeshAsset::partCountForModel(result, a2) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = a3;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = re::MeshAsset::partCountForModel(v8, a2);
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "partIndex %zu exceeds model's part count %zu", buf, 0x16u);
    }

    return 0;
  }

  v10 = *(v8 + 632);
  if (!v10)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_26:
      v17 = CoreRELog::log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Call to REMeshAssetGetModelPartSkeletonIndex with unregistered mesh asset", buf, 2u);
      }

      return 0;
    }

LABEL_35:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_26;
  }

  v11 = *(v8 + 608);
  if (v11 <= a2)
  {
    v22 = 0;
    memset(buf, 0, sizeof(buf));
    v18 = MEMORY[0x1E69E9C10];
    v19 = v11;
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
    v30 = v19;
    _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v12 = *(re::DataArray<re::MeshModel>::get(v10 + 8, *(*(v8 + 624) + 8 * a2)) + 224);
  if (!v12 || *(v12 + 8) <= a3)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = *(*(v12 + 16) + 88 * a3 + 4);
  }

  return 1;
}

uint64_t REMeshAssetCopyModelPartSkinInfluences(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 32;
  if (*(v5 + 1264))
  {
    v7 = 608;
  }

  if (*(v5 + v7) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v21 = CoreRELog::log;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v22 = 32;
    if (*(v6 + 1264))
    {
      v22 = 608;
    }

    v23 = *(v6 + v22);
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    v24 = "modelIndex %zu exceeds model count %zu";
    v25 = v21;
    v26 = 22;
    goto LABEL_33;
  }

  if (re::MeshAsset::partCountForModel(v5, a2) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v27 = CoreRELog::log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = re::MeshAsset::partCountForModel(v6, a2);
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "partIndex %zu exceeds model's part count %zu", buf, 0x16u);
    }

    return 0;
  }

  if (*(v6 + 1264) != 1 || (v8 = *(v6 + 79)) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v21 = CoreRELog::log;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v24 = "REMeshAssetCopyModelPartSkinInfluences called with unregistered MeshAsset";
    v25 = v21;
    v26 = 2;
LABEL_33:
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_34:

    return 0;
  }

  v9 = *(v6 + 76);
  if (v9 <= a2)
  {
LABEL_61:
    v42[0] = 0;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    a3 = MEMORY[0x1E69E9C10];
    v35 = v9;
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    *&v58[12] = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *&v58[14] = 797;
    *&v58[18] = 2048;
    *&v58[20] = a2;
    *&v58[28] = 2048;
    *&v58[30] = v35;
    _os_log_send_and_compose_impl(v37, v42, buf, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v10 = re::DataArray<re::MeshModel>::get(v8 + 8, *(*(v6 + 78) + 8 * a2));
  v42[0] = 0;
  v44 = 0;
  v43 = 0;
  v11 = *(v10 + 224);
  if (!v11)
  {
    v28 = 0;
LABEL_56:
    (off_1F5D2D838[v11])(buf, v42);
    return v28;
  }

  if (*(v11 + 8) <= a3)
  {
    v28 = 0;
    LODWORD(v11) = 0;
    goto LABEL_56;
  }

  v12 = (*(v11 + 16) + 88 * a3);
  v13 = *v12;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v42, (v12 + 48));
  v44 = *(v12 + 10);
  re::ReadOnlyCPUAccessibleBufferSliceContent::make(buf, v42);
  if (buf[0])
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (v13)
    {
      v16 = *&buf[8];
      v15 = *&buf[16];
      v17 = *&buf[16] >> 2;
      if (v15 >= 4)
      {
        v18 = 0;
        a2 = v40;
        v19 = (v41 + 4);
        while (a2 != v18)
        {
          v20 = *(v16 + 4 * v18);
          *(v19 - 1) = v20 >> 22;
          *v19 = (v20 & 0x3FFFFF) * 0.00000023842;
          v19 += 2;
          if (v17 == ++v18)
          {
            goto LABEL_44;
          }
        }

        v45 = 0;
        v59 = 0u;
        v60 = 0u;
        memset(v58, 0, sizeof(v58));
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v53 = 468;
        v54 = 2048;
        v55 = a2;
        v56 = 2048;
        v57 = a2;
        _os_log_send_and_compose_impl(v34, &v45, v58, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      *v58 = *&buf[8];
      *&v58[8] = *&buf[16] >> 3;
      re::FixedArray<re::SkinningInfluence>::operator=(&v39, v58);
    }

LABEL_44:
    re::Data::makeDataWithBytes(v58, v41, (8 * v40));
    v28 = *v58;
    if (*v58)
    {
      CFRetain(*v58);
      v31 = *v58;
    }

    else
    {
      v31 = 0;
    }

    if (v39 && v40)
    {
      (*(*v39 + 40))();
    }

    goto LABEL_50;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_65:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v30 = CoreRELog::log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 134217984;
    *&v58[4] = a3;
    _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "REMeshAssetCopyModelPartSkinInfluences failed to get skinning data for part %zu", v58, 0xCu);
  }

  v28 = 0;
LABEL_50:
  if (buf[0] == 1)
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
  }

  else if (*&buf[24] && (v47 & 1) != 0)
  {
    (*(**&buf[24] + 40))();
  }

  LODWORD(v11) = v43;
  if (v43 != -1)
  {
    goto LABEL_56;
  }

  return v28;
}

uint64_t REMeshAssetCopyModelPartSkinInfluenceEndIndices(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 32;
  if (*(v5 + 1264))
  {
    v7 = 608;
  }

  if (*(v5 + v7) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 32;
      if (*(v6 + 1264))
      {
        v15 = 608;
      }

      v16 = *(v6 + v15);
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "modelIndex %zu exceeds model count %zu", buf, 0x16u);
    }

    return 0;
  }

  if (re::MeshAsset::partCountForModel(v5, a2) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v17 = CoreRELog::log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = re::MeshAsset::partCountForModel(v6, a2);
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "partIndex %zu exceeds model's part count %zu", buf, 0x16u);
    }

    return 0;
  }

  if (*(v6 + 1264) != 1 || (v8 = *(v6 + 79)) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v18 = CoreRELog::log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "REMeshAssetCopyModelPartSkinInfluences called with unregistered MeshAsset", buf, 2u);
    }

    return 0;
  }

  v9 = *(v6 + 76);
  if (v9 <= a2)
  {
    *v22 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    memset(buf, 0, sizeof(buf));
    a3 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v30 = 797;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    *v34 = v9;
    _os_log_send_and_compose_impl(v21, v22, buf, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v10 = re::DataArray<re::MeshModel>::get(v8 + 8, *(*(v6 + 78) + 8 * a2));
  v11.n128_f64[0] = re::SkinningModelUtil::skinnedEndIndicesBuffer(&v27, (v10 + 144), a3);
  if (*&v34[6])
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(buf, &v27);
    if (buf[0])
    {
      re::Data::makeDataWithBytes(v22, *&buf[8], *&buf[16]);
      v12 = *v22;
      if (*v22)
      {
        CFRetain(*v22);
        v13 = *v22;
      }

      else
      {
        v13 = 0;
      }

LABEL_39:
      if (buf[0] == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
      }

      else if (*&buf[24] && (v24 & 1) != 0)
      {
        (*(**&buf[24] + 40))();
      }

      goto LABEL_44;
    }

    if (CoreRELog::onceToken == -1)
    {
LABEL_34:
      v20 = CoreRELog::log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 134217984;
        *&v22[4] = a3;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "REMeshAssetCopyModelPartSkinInfluenceEndIndices failed to get skinning data for part %zu", v22, 0xCu);
      }

      v12 = 0;
      goto LABEL_39;
    }

LABEL_50:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_34;
  }

  v12 = 0;
LABEL_44:
  if (HIDWORD(v32) != -1)
  {
    (off_1F5D2D838[HIDWORD(v32)])(buf, &v27, v11);
  }

  return v12;
}

re::MeshAsset *REMeshAssetGetModelPartSkinUniformInfluenceCount(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v7 = 32;
    if (*(result + 1264))
    {
      v7 = 608;
    }

    if (*(result + v7) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 32;
        if (*(v6 + 1264))
        {
          v12 = 608;
        }

        v13 = *(v6 + v12);
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = a2;
        WORD6(buf[0]) = 2048;
        *(buf + 14) = v13;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "modelIndex %zu exceeds model count %zu", buf, 0x16u);
      }
    }

    else if (re::MeshAsset::partCountForModel(result, a2) <= a3)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = a3;
        WORD6(buf[0]) = 2048;
        *(buf + 14) = re::MeshAsset::partCountForModel(v6, a2);
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "partIndex %zu exceeds model's part count %zu", buf, 0x16u);
      }
    }

    else if (*(v6 + 1264) == 1 && (v8 = *(v6 + 79)) != 0)
    {
      v9 = *(v6 + 76);
      if (v9 <= a2)
      {
        v19 = 0;
        memset(buf, 0, sizeof(buf));
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

        v23 = 797;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = v9;
        _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(re::DataArray<re::MeshModel>::get(v8 + 8, *(*(v6 + 78) + 8 * a2)) + 224);
      if (v10 && *(v10 + 8) > a3)
      {
        return *(*(v10 + 16) + 88 * a3 + 1);
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "REMeshAssetGetModelPartSkinUniformInfluenceCount called with unregistered MeshAsset", buf, 2u);
      }
    }

    return 0;
  }

  return result;
}

void REMeshAssetReplaceAllWithDirectMesh(re::AssetManager *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a2, &v18);
  if (!v19 || (v7 = atomic_load((v19 + 896)), v7 != 2))
  {
    v8 = re::globalAllocators(v6);
    v9 = (*(*v8[2] + 32))(v8[2], 1272, 8);
    re::MeshAsset::MeshAsset(v9);
    re::AssetManager::setAssetPointerForExistingAsset(a1, v9, &v18, 0, 1);
  }

  re::DirectMeshPayload::make(v5, &v20);
  v10 = v20;
  v20 = 0;
  v11 = re::AssetHandle::setNetworkSharingMode(&v18, 1);
  v12 = re::MeshAsset::assetType(v11);
  v13 = *(a1 + 226);
  v20 = v12;
  v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v20);
  (*(**v14 + 128))(*v14);
  v15 = *v14;
  v16 = v10;
  v17 = v16;
  re::MeshAssetLoader::replaceAssetContentsWithMeshPayload(v15, &v18, &v17);

  re::AssetHandle::~AssetHandle(&v18);
}

uint64_t REAssetManagerCreateMeshAssetWithDirectMesh(void *a1, void *a2)
{
  v3 = a2;
  v4 = re::MeshAsset::assetType(v3);
  v5 = a1[226];
  v21[0] = v4;
  v6 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v5, v21);
  (*(**v6 + 128))(*v6);
  v7 = *v6;
  re::DirectMeshPayload::make(v3, v21);
  v8 = v21[0];
  v21[0] = 0;
  v23 = v8;
  re::MeshPayload::makeMeshPayloadBuffers(v21, &v23, (v7 + 8));
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
  v12 = v8;
  v20 = v12;
  re::MeshAsset::MeshAsset(v11, &v20, v21);

  v14 = re::MeshAsset::assetType(v13);
  v15 = *(*a1 + 424);

  v15(v19, a1, v11, v14, 0, 0, 0);
  re::AssetHandle::setNetworkSharingMode(v19, 1);
  if (v19[0])
  {
    v16 = (v19[0] + 8);
    v17 = v19[0];
  }

  else
  {
    v17 = 0;
  }

  re::AssetHandle::~AssetHandle(v19);
  if (v22 != -1)
  {
    (off_1F5D2D848[v22])(v19, v21);
  }

  return v17;
}

id REMeshAssetGetDirectMesh(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v5);
  if (v1 && (re::DirectMeshPayload::dynamicCast(&v4, (v1 + 344)), v4))
  {
    v2 = re::DirectMeshPayload::directMesh(&v4);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v5);

  return v2;
}

uint64_t REPhysicsSimulationServiceGetRootSimulationEntity(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 56))(a1, 1);
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  v7 = (*(*a1 + 24))(a1);
  (*(*a1 + 40))(a1, v6);
  v9 = a2;
  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v7, &v9);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void *REReverbComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REReverbComponentSetReverbPresetWithBlend(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v14 = *MEMORY[0x1E69E9840];
  if (*(result + 32) != a2 || *(result + 40) != a3)
  {
    *(result + 32) = a2;
    *(result + 40) = a3;
    v6 = *re::audioLogObjects(result);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(v5 + 16) + 312);
      v8 = 134218496;
      v9 = v7;
      v10 = 2048;
      v11 = a2;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[CoreRE][ECS] REReverbComponentSetReverbPresetWithBlend entityID(%llu) preset(%lld) allowSpaceBlending(%d)", &v8, 0x1Cu);
    }

    return re::ecs2::Component::enqueueMarkDirty(v5);
  }

  return result;
}

re *REReverbComponentSetPriority(re *result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 21) != a2)
  {
    v3 = result;
    *(result + 21) = a2;
    v4 = *re::audioLogObjects(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(v3 + 2) + 312);
      v6 = 134218240;
      v7 = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[CoreRE][ECS] REReverbComponentSetPriority entityID(%llu) priority(%d)", &v6, 0x12u);
    }

    return re::ecs2::Component::enqueueMarkDirty(v3);
  }

  return result;
}

void *RETransformInteractionComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REManipulationHitTargetComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RETransformInteractionComponentSetAllowsTwoHandedRotation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 26) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetAllowsTwoHandedScale(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 27) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetAllowsSingleHandedRotation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 25) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetAllowsTranslation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 31) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetInertia(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 30) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetResetsOnRelease(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 28) = v2;
  return result;
}

uint64_t RETransformInteractionComponentSetUsesDefaultAudio(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(result + 29) = v2;
  return result;
}

char *REManipulationHitTargetComponentGetRedirectedEntity(uint64_t a1, const re::ecs2::Entity *a2)
{
  v3 = (re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 32);

  return re::ecs2::EntityHandle::resolve(v3, a2);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[416] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

void REManipulationHitTargetComponentSetRedirectedEntity(uint64_t a1, uint64_t a2)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::ecs2::EntityHandle::reset((v4 + 32));
  v5 = (a1 + 32);
  if (a2)
  {
    objc_storeWeak(v5, (a2 + 8));
    *(a1 + 40) = *(a2 + 312);
  }

  else
  {
    objc_destroyWeak(v5);
    *(a1 + 32) = 0;
  }
}

void REManipulationHitTargetComponentSetRedirectedEntityAndID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (!a2)
  {
    re::ecs2::EntityHandle::reset((a1 + 32));
    goto LABEL_5;
  }

  if (*(a2 + 312) == a3)
  {
    re::ecs2::EntityHandle::reset((a1 + 32));
    objc_storeWeak((a1 + 32), (a2 + 8));
    a3 = *(a2 + 312);
LABEL_5:
    *(a1 + 40) = a3;
    return;
  }

  re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "redirectedEntity->id() == entityID", "REManipulationHitTargetComponentSetRedirectedEntityAndID", 175);
  _os_crash("assertion failure: (redirectedEntity->id() == entityID) ");
  __break(1u);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[420] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

uint64_t RESignpostEmitREAssetEntityLoadStartedImpulse(uint64_t a1, uint64_t a2)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t RESignpostHFEmitREAssetEntityLoadStartedImpulse(uint64_t a1, uint64_t a2)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyTracing(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t RESignpostEmitREAssetEntityLoadEndedImpulse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t RESignpostHFEmitREAssetEntityLoadEndedImpulse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyTracing(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

uint64_t RERigAssetBuilderCreate()
{
  if ((atomic_load_explicit(&_MergedGlobals_589, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_589))
  {
    byte_1EE1C4CC8 = 0;
    qword_1EE1C4CB8 = &unk_1F5CCF7F8;
    unk_1EE1C4CC0 = "RigAssetBuilder Allocator";
    __cxa_guard_release(&_MergedGlobals_589);
  }

  v0 = (*(qword_1EE1C4CB8 + 32))(&qword_1EE1C4CB8, 1448, 8);
  ArcSharedObject::ArcSharedObject(v0, 0);
  *(v1 + 16) = &qword_1EE1C4CB8;
  *v1 = &unk_1F5D2D868;
  *(v1 + 32) = 0u;
  *(v1 + 24) = 0;
  *(v0 + 48) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0;
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 488) = 0;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 528) = 0;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 568) = 0;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 672) = 0;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 712) = 0;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 792) = 0;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 832) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 872) = 0;
  *(v0 + 840) = 0u;
  *(v0 + 856) = 0u;
  *(v0 + 912) = 0;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 952) = 0;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 1032) = 0;
  *(v0 + 1000) = 0u;
  *(v0 + 1016) = 0u;
  *(v0 + 1072) = 0;
  *(v0 + 1056) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1112) = 0;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 0u;
  *(v0 + 1152) = 0;
  *(v0 + 1136) = 0u;
  *(v0 + 1120) = 0u;
  *(v0 + 1176) = 0;
  *(v0 + 1160) = 0u;
  *(v0 + 1184) = 1;
  *(v0 + 1216) = 0;
  *(v0 + 1208) = 0;
  *(v0 + 1192) = 0u;
  *(v0 + 1224) = 0u;
  *(v0 + 1240) = 1;
  *(v0 + 1272) = 0;
  *(v0 + 1264) = 0;
  *(v0 + 1248) = 0u;
  *(v0 + 1280) = 0u;
  *(v0 + 1296) = 1;
  *(v0 + 1328) = 0;
  *(v0 + 1320) = 0;
  *(v0 + 1304) = 0u;
  *(v0 + 1336) = 0u;
  *(v0 + 1352) = 1;
  *(v0 + 1384) = 0;
  *(v0 + 1376) = 0;
  *(v0 + 1360) = 0u;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 1;
  *(v0 + 1440) = 0;
  *(v0 + 1432) = 0;
  *(v0 + 1416) = 0u;
  re::RigDefinition::init((v1 + 24), &qword_1EE1C4CB8);
  re::BucketArray<re::RigNodeConstraint,32ul>::init(v0 + 1168, &qword_1EE1C4CB8, 1uLL);
  re::BucketArray<re::DynamicString,32ul>::init(v0 + 1392, &qword_1EE1C4CB8, 1uLL);
  return v0;
}

void *RERigAssetBuilderReserveTransformRigNodes(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[112];
  v5 = v4 + a2;
  if (v4 < v5)
  {
    result = re::DynamicArray<re::RigTransform>::setCapacity(result + 111, v5);
  }

  v6 = v3[132];
  if (v6 < v6 + a2)
  {

    return re::DynamicArray<re::RigNode>::setCapacity(v3 + 131, v6 + a2);
  }

  return result;
}

void *RERigAssetBuilderReserveJointRigNodes(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[112] + a2;
  if (result[117] < v4)
  {
    result = re::DynamicArray<re::RigJoint>::setCapacity(result + 116, v4);
  }

  v5 = v3[132];
  if (v5 < v5 + a2)
  {

    return re::DynamicArray<re::RigNode>::setCapacity(v3 + 131, v5 + a2);
  }

  return result;
}

_anonymous_namespace_ *RERigAssetBuilderReservePointConstraints(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 4);
  v5 = v4 + a2;
  if (v4 < v5)
  {
    result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(result + 3, v5);
  }

  v6 = *(v3 + 122);
  if (v6 < v6 + a2)
  {
    result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 121, v6 + a2);
  }

  v7 = 32 * *(v3 + 147);
  if (v7 < a2 + v7)
  {

    return re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity((v3 + 1168), (a2 + v7 + 31) >> 5);
  }

  return result;
}

_anonymous_namespace_ *RERigAssetBuilderReserveOrientConstraints(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 9);
  v5 = v4 + a2;
  if (v4 < v5)
  {
    result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(result + 8, v5);
  }

  v6 = *(v3 + 122);
  if (v6 < v6 + a2)
  {
    result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 121, v6 + a2);
  }

  v7 = 32 * *(v3 + 147);
  if (v7 < a2 + v7)
  {

    return re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity((v3 + 1168), (a2 + v7 + 31) >> 5);
  }

  return result;
}

_anonymous_namespace_ *RERigAssetBuilderReserveParentConstraints(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 14);
  v5 = v4 + a2;
  if (v4 < v5)
  {
    result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result + 13, v5);
  }

  v6 = *(v3 + 122);
  if (v6 < v6 + a2)
  {
    result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 121, v6 + a2);
  }

  v7 = 32 * *(v3 + 147);
  if (v7 < a2 + v7)
  {

    return re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity((v3 + 1168), (a2 + v7 + 31) >> 5);
  }

  return result;
}

_anonymous_namespace_ *RERigAssetBuilderReserveAimConstraints(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 19);
  v5 = v4 + a2;
  if (v4 < v5)
  {
    result = re::DynamicArray<re::RigAimConstraint>::setCapacity(result + 18, v5);
  }

  v6 = *(v3 + 122);
  if (v6 < v6 + a2)
  {
    result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 121, v6 + a2);
  }

  v7 = 32 * *(v3 + 147);
  if (v7 < a2 + v7)
  {

    return re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity((v3 + 1168), (a2 + v7 + 31) >> 5);
  }

  return result;
}

uint64_t RERigAssetBuilderAddTransformRigNode(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  *&v8 = 0x3F8000003F800000;
  *(&v8 + 1) = 1065353216;
  LOBYTE(v9) = 0;
  re::DynamicArray<re::RigTransform>::add((a1 + 888), &v6);
  LOBYTE(v7) = 1;
  *(&v7 + 1) = *(a1 + 904) - 1;
  v8 = xmmword_1E3062D70;
  v9 = -1;
  re::DynamicArray<re::RigNode>::add((a1 + 1048), &v6);
  if (v6.n128_u8[0])
  {
    if (v6.n128_u8[0])
    {
    }
  }

  return *(a1 + 1064) - 1;
}

unint64_t anonymous namespace::RigAssetBuilder::allocateStringID(_anonymous_namespace_::RigAssetBuilder *this, const char *a2, const char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 24))(a2);
  re::DynamicString::DynamicString(&v29, a3, v6);
  v8 = *(a2 + 179);
  v9 = *(a2 + 175);
  if (v8 + 1 > 32 * v9)
  {
    re::BucketArray<re::DynamicString,32ul>::setBucketsCapacity((a2 + 1392), (v8 + 32) >> 5);
    v9 = *(a2 + 175);
  }

  if (v9 <= v8 >> 5)
  {
    v33 = 0;
    memset(v42, 0, sizeof(v42));
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v37 = 858;
    v38 = 2048;
    v39 = v8 >> 5;
    v40 = 2048;
    v41 = v9;
    _os_log_send_and_compose_impl(v26, &v33, v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  if (a2[1408])
  {
    v10 = a2 + 1416;
  }

  else
  {
    v10 = *(a2 + 178);
  }

  v11 = *&v10[8 * (v8 >> 5)];
  ++*(a2 + 179);
  ++*(a2 + 360);
  v12 = v11 + 32 * (v8 & 0x1F);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 24) = v32;
  v13 = v30;
  *v12 = v29;
  v14 = v31;
  v29 = 0;
  v32 = 0;
  v15 = *(v12 + 8);
  v16 = *(v12 + 16);
  *(v12 + 8) = v13;
  *(v12 + 16) = v14;
  v30 = v15;
  v31 = v16;
  if (v29 && (v15 & 1) != 0)
  {
    (*(*v29 + 40))();
  }

  v17 = *(a2 + 179);
  if (!v17)
  {
LABEL_25:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  result = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[]((a2 + 1392), v17 - 1);
  v19 = *(result + 16);
  if ((*(result + 8) & 1) == 0)
  {
    v19 = (result + 9);
  }

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

  *this = 2 * v20;
  *(this + 1) = v19;
  return result;
}

uint64_t RERigAssetBuilderAddJointRigNode(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0;
  v8 = 0x3F80000000000000;
  v9 = 0u;
  v10 = 0;
  v11 = 0x3F80000000000000;
  v12 = 0x3F8000003F800000;
  v13 = 1065353216;
  v14 = 0;
  re::DynamicArray<re::RigJoint>::add((a1 + 928), &v6);
  LOBYTE(v7) = 2;
  v8 = *(a1 + 944) - 1;
  v9 = xmmword_1E3062D70;
  v10 = -1;
  re::DynamicArray<re::RigNode>::add((a1 + 1048), &v6);
  if (v6.n128_u8[0])
  {
    if (v6.n128_u8[0])
    {
    }
  }

  return *(a1 + 1064) - 1;
}

uint64_t RERigAssetBuilderAddPointConstraint(void *a1)
{
  v7 = 0;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1);
  v11 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = 0;
  v9[0] = v2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v9, 0);
  ++v10;
  v3 = (*(*a1 + 24))(a1);
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = v3;
  re::DynamicArray<int>::setCapacity(&v12, 0);
  ++v15;
  re::DynamicArray<re::RigComponentConstraint>::add((a1 + 3), &v7);
  if (v12)
  {
    if (v16)
    {
      (*(*v12 + 40))();
    }

    v16 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    ++v15;
  }

  if (v9[0] && v11)
  {
    (*(*v9[0] + 40))();
  }

  v4 = a1[5] - 1;
  v5 = re::BucketArray<re::RigNodeConstraint,32ul>::addUninitialized((a1 + 146));
  *v5 = 1;
  *(v5 + 8) = v4;
  return a1[151] - 1;
}

uint64_t RERigAssetBuilderAddOrientConstraint(void *a1)
{
  v7 = 0;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1);
  v11 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = 0;
  v9[0] = v2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v9, 0);
  ++v10;
  v3 = (*(*a1 + 24))(a1);
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = v3;
  re::DynamicArray<int>::setCapacity(&v12, 0);
  ++v15;
  re::DynamicArray<re::RigComponentConstraint>::add((a1 + 8), &v7);
  if (v12)
  {
    if (v16)
    {
      (*(*v12 + 40))();
    }

    v16 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    ++v15;
  }

  if (v9[0] && v11)
  {
    (*(*v9[0] + 40))();
  }

  v4 = a1[10] - 1;
  v5 = re::BucketArray<re::RigNodeConstraint,32ul>::addUninitialized((a1 + 146));
  *v5 = 2;
  *(v5 + 8) = v4;
  return a1[151] - 1;
}

uint64_t RERigAssetBuilderAddParentConstraint(void *a1)
{
  v2 = (*(*a1 + 24))(a1);
  v9 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v8 = 0;
  v7[0] = v2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++v8;
  v3 = (*(*a1 + 24))(a1);
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = v3;
  re::DynamicArray<int>::setCapacity(&v10, 0);
  ++v13;
  re::DynamicArray<re::RigBasicConstraint>::add((a1 + 13), v7);
  if (v10)
  {
    if (v14)
    {
      (*(*v10 + 40))();
    }

    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    ++v13;
  }

  if (v7[0] && v9)
  {
    (*(*v7[0] + 40))();
  }

  v4 = a1[15] - 1;
  v5 = re::BucketArray<re::RigNodeConstraint,32ul>::addUninitialized((a1 + 146));
  *v5 = 3;
  *(v5 + 8) = v4;
  return a1[151] - 1;
}

uint64_t RERigAssetBuilderAddAimConstraint(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 0;
  v10 = 0u;
  v11 = 0u;
  v2 = (*(*a1 + 24))(a1);
  v14 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v13 = 0;
  v12[0] = v2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v12, 0);
  ++v13;
  v3 = (*(*a1 + 24))(a1);
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = v3;
  re::DynamicArray<int>::setCapacity(&v15, 0);
  ++v18;
  v20 = -1;
  v4 = re::DynamicArray<re::RigAimConstraint>::add((a1 + 18), &v8);
  if (v15)
  {
    if (v19)
    {
      (*(*v15 + 40))(v4);
    }

    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    ++v18;
  }

  if (v12[0] && v14)
  {
    (*(*v12[0] + 40))(v4);
  }

  v5 = a1[20] - 1;
  v6 = re::BucketArray<re::RigNodeConstraint,32ul>::addUninitialized((a1 + 146));
  *v6 = 4;
  *(v6 + 8) = v5;
  return a1[151] - 1;
}

uint64_t RERigAssetBuilderSetConstraintRigNodes(void *a1, unint64_t a2, size_t a3, size_t a4, uint64_t a5)
{
  v5 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (a1[151] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = a1;
  v10 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a1 + 146), a2) + 8);
  v11 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((v9 + 146), v5);
  if (v11 == 3)
  {
    v36 = a3;
    v37 = a5;
    v5 = v9[15];
    if (v5 > v10)
    {
      re::DynamicArray<unsigned long>::operator=((v9[17] + 80 * v10), &v36);
      if (!a4)
      {
        return 1;
      }

      v36 = a4;
      v37 = a5;
      v12 = v9[15];
      if (v12 > v10)
      {
        v16 = (v9[17] + 80 * v10 + 40);
        goto LABEL_24;
      }

      goto LABEL_47;
    }

LABEL_34:
    v38 = 0;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    *buf = 0u;
    v48 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v42 = 789;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v5;
    _os_log_send_and_compose_impl(v23, &v38, buf, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  if (v11 == 2)
  {
    v36 = a3;
    v37 = a5;
    v5 = v9[10];
    if (v5 > v10)
    {
      re::DynamicArray<unsigned long>::operator=((v9[12] + 88 * v10 + 8), &v36);
      if (!a4)
      {
        return 1;
      }

      v36 = a4;
      v37 = a5;
      v12 = v9[10];
      if (v12 > v10)
      {
        v13 = v9[12];
        goto LABEL_19;
      }

      v38 = 0;
      v51 = 0u;
      v49 = 0u;
      v50 = 0u;
      *buf = 0u;
      v48 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v42 = 789;
      v43 = 2048;
      v44 = v10;
      v45 = 2048;
      v46 = v12;
      _os_log_send_and_compose_impl(v28, &v38, buf, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v38 = 0;
      v51 = 0u;
      v49 = 0u;
      v50 = 0u;
      *buf = 0u;
      v48 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v42 = 789;
      v43 = 2048;
      v44 = v10;
      v45 = 2048;
      v46 = v12;
      _os_log_send_and_compose_impl(v31, &v38, buf, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

    v38 = 0;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    *buf = 0u;
    v48 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v42 = 789;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v5;
    _os_log_send_and_compose_impl(v20, &v38, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v11 != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_27:
      v17 = CoreRELog::log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((v9 + 146), v5);
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot set constraint rig nodes for type: %u.", buf, 8u);
      }

      return 0;
    }

LABEL_42:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_27;
  }

  v36 = a3;
  v37 = a5;
  v5 = v9[5];
  if (v5 <= v10)
  {
LABEL_38:
    v38 = 0;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    *buf = 0u;
    v48 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v42 = 789;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v5;
    _os_log_send_and_compose_impl(v25, &v38, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  re::DynamicArray<unsigned long>::operator=((v9[7] + 88 * v10 + 8), &v36);
  if (a4)
  {
    v36 = a4;
    v37 = a5;
    v12 = v9[5];
    if (v12 > v10)
    {
      v13 = v9[7];
LABEL_19:
      v16 = (v13 + 88 * v10 + 48);
LABEL_24:
      re::DynamicArray<float>::operator=(v16, &v36);
      return 1;
    }

LABEL_51:
    v38 = 0;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    *buf = 0u;
    v48 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v42 = 789;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v12;
    _os_log_send_and_compose_impl(v34, &v38, buf, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
  }

  return 1;
}

_anonymous_namespace_ *re::DynamicArray<unsigned long>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<unsigned long>::copy(this, 0, *a2, v4);
      re::DynamicArray<unsigned long>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<unsigned long>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

uint64_t RERigAssetBuilderSetConstraintComponentChannels(void *a1, unint64_t a2, char a3, char a4, char a5)
{
  v5 = a2;
  v46 = *MEMORY[0x1E69E9840];
  if (a1[151] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = a1;
  v10 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a1 + 146), a2) + 8);
  v11 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((v9 + 146), v5);
  if (v11 == 4)
  {
    v18 = v9[20];
    if (v18 > v10)
    {
      v13 = v9[22];
      v17 = 144;
      goto LABEL_18;
    }

LABEL_27:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *buf = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = v18;
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v26;
    _os_log_send_and_compose_impl(v28, &v32, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  if (v11 == 2)
  {
    v16 = v9[10];
    if (v16 > v10)
    {
      v13 = v9[12];
      goto LABEL_15;
    }

    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *buf = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = v16;
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v23;
    _os_log_send_and_compose_impl(v24, &v32, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_20:
      v20 = CoreRELog::log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((v9 + 146), v5);
        *buf = 67109120;
        *&buf[4] = v21;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Cannot set constraint component channels for type: %u.", buf, 8u);
      }

      return 0;
    }

LABEL_35:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_20;
  }

  v12 = v9[5];
  if (v12 <= v10)
  {
LABEL_31:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *buf = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v9 = v12;
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v9;
    _os_log_send_and_compose_impl(v30, &v32, buf, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v13 = v9[7];
LABEL_15:
  v17 = 88;
LABEL_18:
  v19 = (v13 + v10 * v17);
  *v19 = a3;
  v19[1] = a4;
  v19[2] = a5;
  return 1;
}

uint64_t RERigAssetBuilderSetAimConstraintPointAtRigNodes(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6 = a2;
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v10 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) != 4)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_13:
      v16 = CoreRELog::log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v10 + 1168, v6);
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Cannot set aim constraint point at node for constraint type: %u.", buf, 8u);
      }

      return 0;
    }

LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_13;
  }

  v11 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v10 + 1168, v6) + 8);
  v12 = *(v10 + 160);
  if (v12 <= v11)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v10 = v11;
    v18 = v12;
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v18;
    _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, a6.n128_u64[0], a6.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v13 = (*(v10 + 176) + 144 * v11);
  v13->n128_u8[3] = 0;
  v13[1] = a6;
  *buf = a3;
  *&buf[8] = a5;
  re::DynamicArray<unsigned long>::operator=(&v13[3], buf);
  if (a4)
  {
    *buf = a4;
    *&buf[8] = a5;
    re::DynamicArray<float>::operator=(&v13[5].n128_i8[8], buf);
  }

  return 1;
}

uint64_t RERigAssetBuilderSetAimConstraintForwardAxisRigNodes(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6 = a2;
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v10 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) != 4)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v16 = CoreRELog::log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v10 + 1168, v6);
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Cannot set aim constraint forward axis node for constraint type: %u.", buf, 8u);
      }

      return 0;
    }

LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v11 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v10 + 1168, v6) + 8);
  v12 = *(v10 + 160);
  if (v12 <= v11)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v10 = v11;
    v19 = v12;
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

    v26 = 789;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v19;
    _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, a6.n128_u64[0], a6.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v13 = (*(v10 + 176) + 144 * v11);
  v14 = 1;
  v13->n128_u8[3] = 1;
  v13[1] = a6;
  *buf = a3;
  *&buf[8] = a5;
  re::DynamicArray<unsigned long>::operator=(&v13[3], buf);
  if (a4)
  {
    *buf = a4;
    *&buf[8] = a5;
    re::DynamicArray<float>::operator=(&v13[5].n128_i8[8], buf);
  }

  return v14;
}

uint64_t RERigAssetBuilderSetAimConstraintForwardWorldAxis(unint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) == 4)
  {
    v5 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v4 + 1168, v3) + 8);
    v6 = *(v4 + 160);
    if (v6 > v5)
    {
      v7 = (*(v4 + 176) + 144 * v5);
      v7->n128_u8[3] = 2;
      v7[1] = a3;
      return 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v6;
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
    v20 = v5;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, a3.n128_u64[0], a3.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v4 + 1168, v3);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set aim constraint forward world axis for constraint type: %u.", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetAimConstraintPointUpRigNode(unint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v6 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) == 4)
  {
    v7 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v6 + 1168, v4) + 8);
    v8 = *(v6 + 160);
    if (v8 > v7)
    {
      v9 = (*(v6 + 176) + 144 * v7);
      v9->n128_u8[4] = 0;
      v9[2] = a4;
      v9[8].n128_u64[0] = a3;
      return 1;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v6 = v7;
    v14 = v8;
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v14;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, a4.n128_u64[0], a4.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v6 + 1168, v4);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Cannot set aim constraint point up node for constraint type: %u.", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetAimConstraintUpAxisRigNode(unint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v6 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) == 4)
  {
    v7 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v6 + 1168, v4) + 8);
    v8 = *(v6 + 160);
    if (v8 > v7)
    {
      v9 = (*(v6 + 176) + 144 * v7);
      result = 1;
      v9->n128_u8[4] = 1;
      v9[2] = a4;
      v9[8].n128_u64[0] = a3;
      return result;
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v6 = v7;
    v14 = v8;
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v14;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, a4.n128_u64[0], a4.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v6 + 1168, v4);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Cannot set aim constraint up axis node for constraint type: %u.", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetAimConstraintUpWorldAxis(unint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1208) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid constraint index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  if (*re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, a2) == 4)
  {
    v5 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v4 + 1168, v3) + 8);
    v6 = *(v4 + 160);
    if (v6 > v5)
    {
      v7 = (*(v4 + 176) + 144 * v5);
      v7->n128_u8[4] = 2;
      v7[2] = a3;
      return 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v6;
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
    v20 = v5;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, a3.n128_u64[0], a3.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](v4 + 1168, v3);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set aim constraint up world axis node for constraint type: %u.", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeTranslation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v36 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  if (v7 == 2)
  {
    v12 = a1[118];
    if (v12 > v6)
    {
      v9 = a1[120];
      v10 = 96 * v6;
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if (v7 == 1)
  {
    v8 = a1[113];
    if (v8 > v6)
    {
      v9 = a1[115];
      v10 = v6 << 6;
LABEL_13:
      *(v9 + v10) = a3;
      return 1;
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = v8;
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v6;
    v29 = 2048;
    v30 = v17;
    _os_log_send_and_compose_impl(v18, &v22, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v12;
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v6;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_27:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v14 = CoreRELog::log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Unknown rig node type: %u", buf, 8u);
  }

  return 0;
}

unint64_t re::DynamicArray<re::RigNode>::operator[](uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 56 * a2;
}

uint64_t RERigAssetBuilderSetRigNodeRotation(void *a1, unint64_t a2, char a3, __n128 a4)
{
  v4 = a2;
  v44 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  v6 = a1[135] + 56 * a2;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  if (v8 == 2)
  {
    v12 = a1[118];
    if (v12 > v7)
    {
      *(a1[120] + 96 * v7 + 32) = a4;
      v13 = a1[118];
      if (v13 > v7)
      {
        *(a1[120] + 96 * v7 + 80) = a3;
        return 1;
      }

LABEL_34:
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = v13;
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v34 = 789;
      v35 = 2048;
      v36 = v7;
      v37 = 2048;
      v38 = v26;
      _os_log_send_and_compose_impl(v28, &v30, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_25;
  }

  if (v8 == 1)
  {
    v9 = a1[113];
    if (v9 > v7)
    {
      *(a1[115] + (v7 << 6) + 16) = a4;
      v10 = a1[113];
      if (v10 > v7)
      {
        *(a1[115] + (v7 << 6) + 48) = a3;
        return 1;
      }

      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = v10;
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v34 = 789;
      v35 = 2048;
      v36 = v7;
      v37 = 2048;
      v38 = v23;
      _os_log_send_and_compose_impl(v24, &v30, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buf = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = v9;
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v7;
    v37 = 2048;
    v38 = v18;
    _os_log_send_and_compose_impl(v19, &v30, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buf = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v5 = v12;
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v7;
    v37 = 2048;
    v38 = v5;
    _os_log_send_and_compose_impl(v21, &v30, buf, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_29:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(re::DynamicArray<re::RigNode>::operator[]((v5 + 131), v4) + 16);
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Unknown rig node type: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeScale(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  if (v7 == 2)
  {
    v10 = a1[118];
    if (v10 > v6)
    {
      *(a1[120] + 96 * v6 + 64) = a3;
      return 1;
    }

    goto LABEL_23;
  }

  if (v7 == 1)
  {
    v8 = a1[113];
    if (v8 > v6)
    {
      *(a1[115] + (v6 << 6) + 32) = a3;
      return 1;
    }

    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = v8;
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v15;
    _os_log_send_and_compose_impl(v16, &v20, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v10;
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_27:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unknown rig node type: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeRotationOrientation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  if (*(v5 + 16) == 2)
  {
    v6 = *(v5 + 24);
    v7 = a1[118];
    if (v7 > v6)
    {
      *(a1[120] + 96 * v6 + 16) = a3;
      return 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v7;
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
    v20 = v6;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid rig node type for rotation orientation: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeScaleOrientation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  if (*(v5 + 16) == 2)
  {
    v6 = *(v5 + 24);
    v7 = a1[118];
    if (v7 > v6)
    {
      *(a1[120] + 96 * v6 + 48) = a3;
      return 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v7;
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
    v20 = v6;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid rig node type for scale orientation: %u", buf, 8u);
  }

  return 0;
}

BOOL RERigAssetBuilderSetRigNodeParent(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1064);
  if (v4 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", &v7, 0xCu);
    }
  }

  else
  {
    *(*(a1 + 1080) + 56 * a2 + 32) = a3;
  }

  return v4 > a2;
}

uint64_t RERigAssetBuilderSetRigNodeConstraints(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1064) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v17 = 134217984;
    v18 = a2;
    v16 = "Invalid rig node index: %zu";
    goto LABEL_17;
  }

  v7 = *(a1 + 1080) + 56 * a2;
  *(v7 + 40) = 0;
  *(v7 + 48) = *(a1 + 984);
  if (!a4)
  {
LABEL_8:
    *(v7 + 40) = a4;
    return 1;
  }

  v9 = a4;
  while (1)
  {
    v11 = *a3++;
    v10 = v11;
    if (v11 >= *(a1 + 1208))
    {
      break;
    }

    v12 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, v10);
    v13 = *(a1 + 984);
    if (v13 >= *(a1 + 976))
    {
      re::DynamicArray<re::RigNodeConstraint>::growCapacity((a1 + 968), v13 + 1);
      v13 = *(a1 + 984);
    }

    *(*(a1 + 1000) + 16 * v13) = *v12;
    ++*(a1 + 984);
    ++*(a1 + 992);
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    v18 = v10;
    v16 = "Invalid constraint index: %zu";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, &v17, 0xCu);
  }

LABEL_18:

  return 0;
}

uint64_t RERigAssetBuilderAddTwoBoneIKHandle(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = a2;
  v24 = a5;
  v25 = a4;
  v6 = a1[158];
  if (v6 && *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v6 - 1) == 1)
  {
    v8 = a1[158];
    if (!v8)
    {
      goto LABEL_35;
    }

    v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v8 - 1) + 8);
  }

  else
  {
    v10 = (*(*a1 + 24))(a1);
    *&v31 = 0;
    *&v30 = 0;
    DWORD2(v30) = 0;
    v29 = v10;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v29, 0);
    ++DWORD2(v30);
    v11 = (*(*a1 + 24))(a1);
    *(&v33 + 1) = 0;
    v32 = 0uLL;
    LODWORD(v33) = 0;
    *(&v31 + 1) = v11;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v31 + 1, 0);
    LODWORD(v33) = v33 + 1;
    v12 = (*(*a1 + 24))(a1);
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = v12;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v34, 0);
    ++v37;
    v13 = (*(*a1 + 24))(a1);
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v39 = v13;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v39, 0);
    ++v42;
    v14 = (*(*a1 + 24))(a1);
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v44 = v14;
    re::DynamicArray<int>::setCapacity(&v44, 0);
    ++v47;
    v15 = (*(*a1 + 24))(a1);
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v49 = v15;
    re::DynamicArray<int>::setCapacity(&v49, 0);
    ++v52;
    re::DynamicArray<re::RigTwoBoneIKHandles>::add((a1 + 96), &v29);
    if (v49)
    {
      if (v53)
      {
        (*(*v49 + 40))();
      }

      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      ++v52;
    }

    if (v44)
    {
      if (v48)
      {
        (*(*v44 + 40))();
      }

      v48 = 0;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      ++v47;
    }

    if (v39)
    {
      if (v43)
      {
        (*(*v39 + 40))();
      }

      v43 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      ++v42;
    }

    if (v34)
    {
      if (v38)
      {
        (*(*v34 + 40))();
      }

      v38 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      ++v37;
    }

    if (*(&v31 + 1))
    {
      if (*(&v33 + 1))
      {
        (*(**(&v31 + 1) + 40))();
      }

      *(&v33 + 1) = 0;
      v32 = 0uLL;
      *(&v31 + 1) = 0;
      LODWORD(v33) = v33 + 1;
    }

    if (v29.n128_u64[0] && v31)
    {
      (*(*v29.n128_u64[0] + 40))();
    }

    v9 = a1[98] - 1;
    v29.n128_u8[0] = 1;
    v29.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add((a1 + 126), &v29);
  }

  v16 = a1[98];
  if (v16 <= v9)
  {
    v28 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v9;
    v60 = 2048;
    v61 = v16;
    _os_log_send_and_compose_impl(v21, &v28, &v29, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
LABEL_35:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v17 = (a1[100] + 240 * v9);
  re::DynamicArray<unsigned long>::add(v17, &v27);
  re::DynamicArray<unsigned long>::add((v17 + 5), &v26);
  re::DynamicArray<unsigned long>::add((v17 + 10), &v25);
  re::DynamicArray<unsigned long>::add((v17 + 15), &v24);
  v29.n128_u8[0] = 1;
  v29.n128_u64[1] = v9;
  *&v30 = v17[2] - 1;
  return a1[158] - 1;
}

__n128 re::BucketArray<anonymous namespace::RigAssetBuilder::MappedIKHandle,32ul>::add(uint64_t a1, __n128 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
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

uint64_t RERigAssetBuilderSetTwoBoneIKHandleTwistOffset(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "IK handle type is not a two-bone IK: %u", buf, 8u);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
  v7 = *(v5 + 784);
  if (v7 <= v6)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v5;
    _os_log_send_and_compose_impl(v16, &v20, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v5 + 800);
  v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 16);
  v10 = v8 + 240 * v6;
  v11 = *(v10 + 176);
  if (v9 >= v11)
  {
    re::DynamicArray<float>::resize(v10 + 160, v9 + 1);
    v11 = *(v10 + 176);
  }

  if (v11 <= v9)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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
    v26 = v9;
    v27 = 2048;
    v28 = v11;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  *(*(v10 + 192) + 4 * v9) = a3;
  return 1;
}

uint64_t RERigAssetBuilderSetTwoBoneIKHandleSoftIKPercentage(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
        *buf = 67109120;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "IK handle type is not a two-bone IK: %u", buf, 8u);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
  v7 = *(v5 + 784);
  if (v7 <= v6)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = v6;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v5 + 800);
  v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 16);
  v11 = (v8 + 240 * v6);
  v12 = v11[27];
  if (v9 >= v12)
  {
    re::DynamicArray<float>::resize(v11 + 25, v9 + 1, &re::TwoBoneIKOptions::kDefaultSoftIKPercentage, v10);
    v12 = v11[27];
  }

  if (v12 <= v9)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v12;
    _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  *(v11[29] + 4 * v9) = a3;
  return 1;
}

uint64_t RERigAssetBuilderAddSingleChainIKHandle(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a2;
  v21 = a4;
  v5 = a1[158];
  if (v5 && *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v5 - 1) == 2)
  {
    v7 = a1[158];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v7 - 1) + 8);
  }

  else
  {
    v9 = (*(*a1 + 24))(a1);
    *&v27 = 0;
    *&v26 = 0;
    DWORD2(v26) = 0;
    v25 = v9;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v25, 0);
    ++DWORD2(v26);
    v10 = (*(*a1 + 24))(a1);
    *(&v29 + 1) = 0;
    v28 = 0uLL;
    LODWORD(v29) = 0;
    *(&v27 + 1) = v10;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v27 + 1, 0);
    LODWORD(v29) = v29 + 1;
    v11 = (*(*a1 + 24))(a1);
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v30 = v11;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v30, 0);
    ++v33;
    v35 = 1008981770;
    v12.n128_f32[0] = re::DynamicArray<re::RigSingleChainIKHandles>::add((a1 + 101), &v25);
    if (v30)
    {
      if (v34)
      {
        (*(*v30 + 40))(v12.n128_f32[0]);
      }

      v34 = 0;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      ++v33;
    }

    if (*(&v27 + 1))
    {
      if (*(&v29 + 1))
      {
        (*(**(&v27 + 1) + 40))(v12);
      }

      *(&v29 + 1) = 0;
      v28 = 0uLL;
      *(&v27 + 1) = 0;
      LODWORD(v29) = v29 + 1;
    }

    if (v25.n128_u64[0] && v27)
    {
      (*(*v25.n128_u64[0] + 40))(v12);
    }

    v8 = a1[103] - 1;
    v25.n128_u8[0] = 2;
    v25.n128_u64[1] = v8;
    re::DynamicArray<re::RigNodeConstraint>::add((a1 + 126), &v25);
  }

  v13 = a1[103];
  if (v13 <= v8)
  {
    v24 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v8;
    v42 = 2048;
    v43 = v13;
    _os_log_send_and_compose_impl(v18, &v24, &v25, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768, v21, v22, v23, v24);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v14 = (a1[105] + (v8 << 7));
  re::DynamicArray<unsigned long>::add(v14, &v23);
  re::DynamicArray<unsigned long>::add((v14 + 5), &v22);
  re::DynamicArray<unsigned long>::add((v14 + 10), &v21);
  v25.n128_u8[0] = 2;
  v25.n128_u64[1] = v8;
  *&v26 = v14[2] - 1;
  return a1[158] - 1;
}

uint64_t RERigAssetBuilderSetSingleChainIKHandleTolerance(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) == 2)
  {
    v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
    v7 = *(v5 + 824);
    if (v7 > v6)
    {
      *(*(v5 + 840) + (v6 << 7) + 120) = a3;
      return 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
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
    v20 = v6;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "IK handle type is not a single-chain IK: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderFinishRigDefinition(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 24);
  v3 = (*(*a1 + 24))(a1);
  re::validateRigDefinitionData(v3, v2, v4, v17);
  if (v17[0])
  {
    v5 = *(a1 + 1320);
    v6 = *(a1 + 1288);
    if (v5 + 1 > 4 * v6)
    {
      re::BucketArray<re::RigDefinition,4ul>::setBucketsCapacity((a1 + 1280), (v5 + 4) >> 2);
      v6 = *(a1 + 1288);
    }

    if (v6 > v5 >> 2)
    {
      if (*(a1 + 1296))
      {
        v7 = a1 + 1304;
      }

      else
      {
        v7 = *(a1 + 1312);
      }

      v10 = *(v7 + 8 * (v5 >> 2));
      ++*(a1 + 1320);
      ++*(a1 + 1328);
      re::RigDefinition::RigDefinition(v10 + 1144 * (v5 & 3), v2);
      re::RigDefinition::deinit(v2);
      v11 = (*(*a1 + 24))(a1);
      re::RigDefinition::init(v2, v11);
      v9 = *(a1 + 1320) - 1;
      goto LABEL_12;
    }

    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 858;
    v26 = 2048;
    v27 = v5 >> 2;
    v28 = 2048;
    v29 = v6;
    _os_log_send_and_compose_impl(v16, &v21, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v17[0], v17[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_25:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    if (v19)
    {
      v13 = *&v20[7];
    }

    else
    {
      v13 = v20;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Rig Definition Validation Failed: %s", buf, 0xCu);
  }

  v9 = -1;
LABEL_12:
  if (v17[0] & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))();
  }

  return v9;
}

void *re::RigDefinition::init(re::RigDefinition *this, re::Allocator *a2)
{
  v3 = this;
  v5 = a2;
  *this = a2;
  re::DynamicArray<re::RigComponentConstraint>::setCapacity(this, 0);
  ++*(v3 + 6);
  *(v3 + 5) = a2;
  re::DynamicArray<re::RigComponentConstraint>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  *(v3 + 10) = a2;
  re::DynamicArray<re::RigBasicConstraint>::setCapacity(v3 + 10, 0);
  ++*(v3 + 26);
  *(v3 + 15) = a2;
  re::DynamicArray<re::RigAimConstraint>::setCapacity(v3 + 15, 0);
  *(v3 + 20) = a2;
  v3 = (v3 + 160);
  ++*(v3 - 4);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3, 0);
  ++*(v3 + 6);
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(v3 + 5, &v5);
  *(v3 + 45) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 45, 0);
  ++*(v3 + 96);
  *(v3 + 58) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 58, 0);
  ++*(v3 + 122);
  *(v3 + 63) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 63, 0);
  ++*(v3 + 132);
  *(v3 + 68) = v5;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v3 + 68, 0);
  ++*(v3 + 142);
  *(v3 + 73) = v5;
  re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(v3 + 73, 0);
  ++*(v3 + 152);
  *(v3 + 78) = v5;
  re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(v3 + 78, 0);
  ++*(v3 + 162);
  *(v3 + 88) = v5;
  re::DynamicArray<re::RigTransform>::setCapacity(v3 + 88, 0);
  ++*(v3 + 182);
  *(v3 + 93) = v5;
  re::DynamicArray<re::RigJoint>::setCapacity(v3 + 93, 0);
  ++*(v3 + 192);
  *(v3 + 98) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 98, 0);
  ++*(v3 + 202);
  *(v3 + 103) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 103, 0);
  ++*(v3 + 212);
  *(v3 + 108) = v5;
  re::DynamicArray<re::RigNode>::setCapacity(v3 + 108, 0);
  ++*(v3 + 222);
  *(v3 + 113) = v5;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v3 + 113, 0);
  ++*(v3 + 232);
  *(v3 + 118) = v5;
  result = re::DynamicArray<re::RigPose>::setCapacity(v3 + 118, 0);
  ++*(v3 + 242);
  return result;
}

unint64_t RERigAssetBuilderGetRigDefinition(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1320) <= a2)
  {
    return 0;
  }

  else
  {
    return re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, a2);
  }
}

unint64_t re::BucketArray<re::RigDefinition,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
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

  return *(v5 + 8 * v2) + 1144 * (a2 & 3);
}

BOOL RERigAssetBuilderAssignMeshRig(uint64_t a1, unint64_t a2, char a3, const char *a4, const char *a5, const char *a6)
{
  v6 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 1320);
  if (v7 > a2)
  {
    v27 = 0;
    v28 = &str_67;
    v29 = 0;
    v30 = &str_67;
    if (a5)
    {
    }

    v31 = 0;
    v32 = &str_67;
    if (a6)
    {
    }

    v33 = v6;
    v13 = *(a1 + 1376);
    v14 = *(a1 + 1344);
    if (v13 + 1 > 8 * v14)
    {
      v12 = re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity((a1 + 1336), (v13 + 8) >> 3);
      v14 = *(a1 + 1344);
    }

    if (v14 > v13 >> 3)
    {
      if (*(a1 + 1352))
      {
        v15 = a1 + 1360;
      }

      else
      {
        v15 = *(a1 + 1368);
      }

      v17 = *(v15 + 8 * (v13 >> 3));
      ++*(a1 + 1376);
      ++*(a1 + 1384);
      v18 = v17 + ((v13 & 7) << 6);
      *v18 = a3;
      v19 = v27;
      *(v18 + 8) = *(v18 + 8) & 0xFFFFFFFFFFFFFFFELL | v27 & 1;
      *(v18 + 8) = v27 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
      *(v18 + 16) = v28;
      v27 = 0;
      v28 = &str_67;
      v20 = v29;
      *(v18 + 24) = *(v18 + 24) & 0xFFFFFFFFFFFFFFFELL | v29 & 1;
      *(v18 + 24) = v29 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
      *(v18 + 32) = v30;
      v29 = 0;
      v30 = &str_67;
      v21 = v31;
      *(v18 + 40) = *(v18 + 40) & 0xFFFFFFFFFFFFFFFELL | v31 & 1;
      *(v18 + 40) = v31 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
      *(v18 + 48) = v32;
      v31 = 0;
      v32 = &str_67;
      *(v18 + 56) = v33;
      if (v31)
      {
        if (v31)
        {
        }
      }

      v31 = 0;
      v32 = &str_67;
      if (v29)
      {
        if (v29)
        {
        }
      }

      v29 = 0;
      v30 = &str_67;
      if (v27)
      {
        if (v27)
        {
        }
      }

      return v7 > v6;
    }

    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *buf = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v38 = 858;
    v39 = 2048;
    v40 = v13 >> 3;
    v41 = 2048;
    v42 = v14;
    _os_log_send_and_compose_impl(v24, &v34, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v25, a3);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_30:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v16 = CoreRELog::log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Invalid rig definition index: %zu", buf, 0xCu);
  }

  return v7 > v6;
}

uint64_t RERigAssetBuilderCreateRigAsset(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 120, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  v7 = *(a1 + 1320);
  if (*(v6 + 8) < v7)
  {
    re::DynamicArray<re::RigDefinition>::setCapacity(v6, *(a1 + 1320));
    goto LABEL_4;
  }

  if (v7)
  {
LABEL_4:
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, v9);
      v11 = *(v6 + 16);
      if (v11 <= v9)
      {
        break;
      }

      re::RigDefinition::operator=((*(v6 + 32) + v8), v10);
      ++v9;
      v8 += 1144;
      if (v7 == v9)
      {
        goto LABEL_7;
      }
    }

    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v46 = 789;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v11;
    _os_log_send_and_compose_impl(v37, &v42, &v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
    _os_crash_msg();
    __break(1u);
LABEL_35:
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v46 = 789;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v2;
    _os_log_send_and_compose_impl(v40, &v42, &v51, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  v12 = *(a1 + 1376);
  if (*(v6 + 88) < v12)
  {
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity((v6 + 80), *(a1 + 1376));
    goto LABEL_10;
  }

  if (v12)
  {
LABEL_10:
    v13 = 0;
    v9 = 0;
    do
    {
      v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 1336, v9);
      v2 = *(v6 + 96);
      if (v2 <= v9)
      {
        goto LABEL_35;
      }

      v15 = v14;
      v16 = *(v6 + 112) + v13;
      *v16 = *v14;
      re::StringID::operator=((v16 + 8), (v14 + 8));
      re::StringID::operator=((v16 + 24), (v15 + 24));
      re::StringID::operator=((v16 + 40), (v15 + 40));
      *(v16 + 56) = *(v15 + 56);
      ++v9;
      v13 += 64;
    }

    while (v12 != v9);
  }

  re::RigDefinition::deinit((a1 + 24));
  v17 = (*(*a1 + 24))(a1);
  v18 = re::RigDefinition::init((a1 + 24), v17);
  v19 = *(a1 + 1208);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v18 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, i);
    }
  }

  *(a1 + 1208) = 0;
  ++*(a1 + 1216);
  v21 = *(a1 + 1264);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      v18 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, j);
    }
  }

  *(a1 + 1264) = 0;
  ++*(a1 + 1272);
  v23 = *(a1 + 1320);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      v25 = re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, k);
      re::RigDefinition::~RigDefinition(v25);
    }
  }

  *(a1 + 1320) = 0;
  ++*(a1 + 1328);
  v26 = *(a1 + 1376);
  if (v26)
  {
    for (m = 0; m != v26; ++m)
    {
      v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 1336, m);
      re::StringID::destroyString((v28 + 40));
      re::StringID::destroyString((v28 + 24));
      re::StringID::destroyString((v28 + 8));
    }
  }

  *(a1 + 1376) = 0;
  ++*(a1 + 1384);
  v29 = *(a1 + 1432);
  if (v29)
  {
    for (n = 0; n != v29; ++n)
    {
      v31 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](a1 + 1392, n);
      re::DynamicString::deinit(v31);
    }
  }

  *(a1 + 1432) = 0;
  ++*(a1 + 1440);
  v32 = re::RigAsset::assetType(v18);
  (*(*a2 + 424))(&v51, a2, v6, v32, 0, 0, 0);
  v33 = v51;
  if (v51)
  {
    v34 = (v51 + 8);
  }

  re::AssetHandle::~AssetHandle(&v51);
  return v33;
}

_anonymous_namespace_ *re::BucketArray<re::DynamicString,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

_anonymous_namespace_ *re::BucketArray<re::DynamicString,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicString,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::RigNodeConstraint,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}