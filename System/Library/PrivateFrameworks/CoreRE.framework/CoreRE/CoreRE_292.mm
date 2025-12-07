uint64_t REBindPointCreateReferenceForComponentAnimatedValuesUInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v17, a1);
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v9);
    }

    *&v10 = a2;
    *(&v10 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v11, v17, re::introspect<unsigned int>(BOOL)::info, &v10);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesInt64(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v17, a1);
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
    }

    *&v10 = a2;
    *(&v10 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v11, v17, re::introspect<long long>(BOOL)::info, &v10);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v17, a1);
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
    }

    *&v10 = a2;
    *(&v10 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v11, v17, re::introspect<float>(BOOL)::info, &v10);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, re::introspect<re::Vector2<float>>(BOOL)::info, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, re::introspect<re::Vector3<float>>(BOOL)::info, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, re::introspect<re::Vector4<float>>(BOOL)::info, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesDouble(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v17, a1);
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v9);
    }

    *&v10 = a2;
    *(&v10 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v11, v17, re::introspect<double>(BOOL)::info, &v10);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesDouble2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    if ((atomic_load_explicit(&qword_1EE1C4A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A48))
    {
      _MergedGlobals_585 = re::introspect_Vector2D(0);
      __cxa_guard_release(&qword_1EE1C4A48);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, _MergedGlobals_585, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesDouble3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    if ((atomic_load_explicit(&qword_1EE1C4A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A58))
    {
      qword_1EE1C4A50 = re::introspect_Vector3D(0);
      __cxa_guard_release(&qword_1EE1C4A58);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, qword_1EE1C4A50, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesDouble4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    if ((atomic_load_explicit(&qword_1EE1C4A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A68))
    {
      qword_1EE1C4A60 = re::introspect_Vector4D(0);
      __cxa_guard_release(&qword_1EE1C4A68);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, qword_1EE1C4A60, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesQuatF(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, re::introspect<re::Quaternion<float>>(BOOL)::info, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesSRT(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(v16, a1);
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    *&v9 = a2;
    *(&v9 + 1) = strlen(a2);
    re::BindNode::bindPointWithOverride(&v10, v16, re::introspect<re::GenericSRT<float>>(BOOL)::info, &v9);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

re *REBindPointDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v1 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v1 + 8);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t REBindPointGetString(re::BindPoint *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      if (*(result + 8))
      {
        v5 = *(result + 16);
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        v5 = result + 9;
      }

      *a2 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetBool(re::BindPoint *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetInt8(re::BindPoint *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetUInt8(re::BindPoint *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetInt16(re::BindPoint *a1, _WORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetUInt16(re::BindPoint *a1, _WORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetInt32(re::BindPoint *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetUInt32(re::BindPoint *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetInt64(re::BindPoint *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetFloat(re::BindPoint *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetFloat2(re::BindPoint *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetFloat3(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetFloat4(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetDouble(re::BindPoint *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetDouble2(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetDouble3(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      v5 = *(result + 16);
      *a2 = *result;
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetDouble4(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      v5 = *(result + 16);
      *a2 = *result;
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetQuatF(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t REBindPointGetSRT(re::BindPoint *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (result)
  {
    result = re::BindPoint::valueUntyped(a1);
    if (result)
    {
      v5 = *(result + 16);
      v6 = *(result + 32);
      *a2 = *result;
      a2[1] = v5;
      a2[2] = v6;
      return 1;
    }
  }

  return result;
}

re::BindPoint *REBindPointSetOverrideEnabled(re::BindPoint *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {

      return re::BindPoint::setIsOverridden(v3, a2);
    }
  }

  return result;
}

uint64_t REBindPointIsOverrideEnabled(re::BindPoint *a1)
{
  if (a1 && *(a1 + 3))
  {
    return re::BindPoint::isOverridden(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t REBindPointIsOverridable(re::BindPoint *a1)
{
  if (a1 && *(a1 + 3))
  {
    return re::BindPoint::supportsOverrideValue(a1);
  }

  else
  {
    return 0;
  }
}

BOOL REBindPointIsValid(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

re::BindPoint *REBindPointIsAlive(re::BindPoint *result)
{
  if (result)
  {
    return re::BindPoint::isAlive(result);
  }

  return result;
}

uint64_t REBindPointMarkAsWritten(uint64_t this, int a2)
{
  if (this)
  {
    v2 = this;
    if (*(this + 24))
    {
      if (!a2)
      {
LABEL_6:
        re::BindPoint::markAsWritten(v2);
        return 1;
      }

      if (a2 == 1)
      {
        this = re::BindPoint::supportsOverrideValue(this);
        if (!this)
        {
          return this;
        }

        goto LABEL_6;
      }
    }

    return 0;
  }

  return this;
}

CFStringRef REBindKeyEscape(const char *a1)
{
  v8 = a1;
  v9 = strlen(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  re::DynamicString::setCapacity(&v4, 0);
  re::internal::escapeBindingKey(&v8, &v4);
  if (v5)
  {
    v1 = v6;
  }

  else
  {
    v1 = &v5 + 1;
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  return v2;
}

CFStringRef REBindKeyUnescape(const char *a1)
{
  v8 = a1;
  v9 = strlen(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  re::DynamicString::setCapacity(&v4, 0);
  re::internal::unescapeBindingKey(&v8, &v4);
  if (v5)
  {
    v1 = v6;
  }

  else
  {
    v1 = &v5 + 1;
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  return v2;
}

uint64_t REBindPointSetString(_anonymous_namespace_ *a1, uint64_t a2, int a3)
{
  v3 = a2;
  v61 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return v3;
  }

  {
LABEL_7:
    v3 = 0;
    goto LABEL_31;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      v6 = re::BindPoint::baseValueUntyped(a1);
      if (v6)
      {
        re::DynamicString::operator=(v6, &v40);
        re::BindPoint::markAsWritten(a1);
      }

      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 3);
  v3 = 1;
  if (!v7)
  {
    goto LABEL_31;
  }

  v42 = 0;
  v43 = 0;
  v44 = 1;
  v45 = 0;
  v46 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v42, v7);
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 3);
  v11 = v43;
  do
  {
    if (v10 == v9)
    {
      v47 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v51 = 797;
      v52 = 2048;
      v53 = v10;
      v54 = 2048;
      v55 = v10;
      _os_log_send_and_compose_impl(v30, &v47, &v56, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v47 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v48 = 136315906;
      v49 = "operator[]";
      v50 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v51 = 858;
      v52 = 2048;
      v53 = v11;
      v54 = 2048;
      v55 = v11;
      _os_log_send_and_compose_impl(v33, &v47, &v56, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
      _os_crash_msg();
      __break(1u);
      goto LABEL_50;
    }

    v12 = (*(a1 + 5) + v8);
    if (!*v12)
    {
      v12 = v12[2];
    }

    if (v11 == v9)
    {
      goto LABEL_46;
    }

    if (v44)
    {
      v13 = &v45;
    }

    else
    {
      v13 = v46;
    }

    v13[v9++] = v12;
    v8 += 32;
  }

  while (v7 != v9);
  if (!v11)
  {
LABEL_50:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v51 = 858;
    v52 = 2048;
    v53 = 0;
    v54 = 2048;
    v55 = 0;
    _os_log_send_and_compose_impl(v36, &v47, &v56, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  if (v44)
  {
    v14 = &v45;
  }

  else
  {
    v14 = v46;
  }

  v15 = *v14;
  v16 = v7 - 1;
  v17 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v42, 1uLL, v16);
  v19 = (*(*v15 + 120))(v15, 0, v17, v18);
  if (v19)
  {
    v20 = v19;
    if (!re::BindPoint::isOverridden(a1) || re::DynamicString::operator!=(v20, &v40))
    {
      re::BindPoint::willSet(a1);
      re::DynamicString::operator=(v20, &v40);
      re::BindPoint::setIsOverridden(a1, 1);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (!v43)
  {
LABEL_54:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v51 = 858;
    v52 = 2048;
    v53 = 0;
    v54 = 2048;
    v55 = 0;
    _os_log_send_and_compose_impl(v39, &v47, &v56, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
  }

  if (v44)
  {
    v22 = &v45;
  }

  else
  {
    v22 = v46;
  }

  v23 = *v22;
  v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v42, 1uLL, v16);
  v26 = (*(*v23 + 88))(v23, 0, v24, v25);
  if (v26)
  {
    v27 = v26;
    if (re::DynamicString::operator!=(v26, &v40))
    {
      re::BindPoint::willSet(a1);
      re::DynamicString::operator=(v27, &v40);
LABEL_26:
      re::BindPoint::markAsWritten(a1);
    }
  }

LABEL_27:
  if (v42 && (v44 & 1) == 0)
  {
    (*(*v42 + 40))();
  }

LABEL_30:
  v3 = 1;
LABEL_31:
  if (v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  return v3;
}

uint64_t REBindPointSetBool(re::BindPoint *a1, char a2, int a3)
{
  v8 = a2;
  if (result)
  {
    if (a3 == 1)
    {
      re::BindPoint::setValue<BOOL>(a1, &v8);
      return 1;
    }

    if (!a3)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a2;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetInt8(re::BindPoint *a1, unsigned __int8 a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v7 = a2;
  if (a3 == 1)
  {
    v9 = *(a1 + 3);
    result = 1;
    if (!v9)
    {
      return result;
    }

    v41 = 0;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v41, v9);
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 3);
    v13 = v42;
    while (v12 != v11)
    {
      v14 = (*(a1 + 5) + v10);
      if (!*v14)
      {
        v14 = v14[2];
      }

      if (v13 == v11)
      {
        goto LABEL_42;
      }

      if (v43)
      {
        v15 = &v44;
      }

      else
      {
        v15 = v45;
      }

      v15[v11++] = v14;
      v10 += 32;
      if (v9 == v11)
      {
        if (v13)
        {
          if (v43)
          {
            v16 = &v44;
          }

          else
          {
            v16 = v45;
          }

          v17 = *v16;
          v18 = v9 - 1;
          v19 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v41, 1uLL, v18);
          v21 = (*(*v17 + 120))(v17, 0, v19, v20);
          if (v21)
          {
            v22 = v21;
            if (!re::BindPoint::isOverridden(a1) || *v22 != v7)
            {
              re::BindPoint::willSet(a1);
              *v22 = v7;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (v42)
          {
            if (v43)
            {
              v23 = &v44;
            }

            else
            {
              v23 = v45;
            }

            v24 = *v23;
            v25 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v41, 1uLL, v18);
            v27 = (*(*v24 + 88))(v24, 0, v25, v26);
            if (v27)
            {
              v28 = v27;
              if (*v27 != v7)
              {
                re::BindPoint::willSet(a1);
                *v28 = v7;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_25:
            if (v41 && (v43 & 1) == 0)
            {
              (*(*v41 + 40))();
            }

            return 1;
          }

LABEL_50:
          v46 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "operator[]";
          v49 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v50 = 858;
          v51 = 2048;
          v52 = 0;
          v53 = 2048;
          v54 = 0;
          _os_log_send_and_compose_impl(v40, &v46, &v55, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v46 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v47 = 136315906;
        v48 = "operator[]";
        v49 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v50 = 858;
        v51 = 2048;
        v52 = 0;
        v53 = 2048;
        v54 = 0;
        _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v12;
    _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v50 = 858;
    v51 = 2048;
    v52 = v13;
    v53 = 2048;
    v54 = v13;
    _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v8 = re::BindPoint::baseValueUntyped(a1);
    if (v8)
    {
      *v8 = a2;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetUInt8(re::BindPoint *a1, int a2, int a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    v8 = *(a1 + 3);
    result = 1;
    if (!v8)
    {
      return result;
    }

    v40 = 0;
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v40, v8);
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 3);
    v12 = v41;
    while (v11 != v10)
    {
      v13 = (*(a1 + 5) + v9);
      if (!*v13)
      {
        v13 = v13[2];
      }

      if (v12 == v10)
      {
        goto LABEL_42;
      }

      if (v42)
      {
        v14 = &v43;
      }

      else
      {
        v14 = v44;
      }

      v14[v10++] = v13;
      v9 += 32;
      if (v8 == v10)
      {
        if (v12)
        {
          if (v42)
          {
            v15 = &v43;
          }

          else
          {
            v15 = v44;
          }

          v16 = *v15;
          v17 = v8 - 1;
          v18 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v17);
          v20 = (*(*v16 + 120))(v16, 0, v18, v19);
          if (v20)
          {
            v21 = v20;
            if (!re::BindPoint::isOverridden(a1) || *v21 != a2)
            {
              re::BindPoint::willSet(a1);
              *v21 = a2;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (v41)
          {
            if (v42)
            {
              v22 = &v43;
            }

            else
            {
              v22 = v44;
            }

            v23 = *v22;
            v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v17);
            v26 = (*(*v23 + 88))(v23, 0, v24, v25);
            if (v26)
            {
              v27 = v26;
              if (*v26 != a2)
              {
                re::BindPoint::willSet(a1);
                *v27 = a2;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_25:
            if (v40 && (v42 & 1) == 0)
            {
              (*(*v40 + 40))();
            }

            return 1;
          }

LABEL_50:
          v45 = 0;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v46 = 136315906;
          v47 = "operator[]";
          v48 = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          v49 = 858;
          v50 = 2048;
          v51 = 0;
          v52 = 2048;
          v53 = 0;
          _os_log_send_and_compose_impl(v39, &v45, &v54, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v49 = 858;
        v50 = 2048;
        v51 = 0;
        v52 = 2048;
        v53 = 0;
        _os_log_send_and_compose_impl(v36, &v45, &v54, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v49 = 797;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v11;
    _os_log_send_and_compose_impl(v30, &v45, &v54, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v49 = 858;
    v50 = 2048;
    v51 = v12;
    v52 = 2048;
    v53 = v12;
    _os_log_send_and_compose_impl(v33, &v45, &v54, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v7 = re::BindPoint::baseValueUntyped(a1);
    if (v7)
    {
      *v7 = a2;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetInt16(re::BindPoint *a1, unsigned __int16 a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v7 = a2;
  if (a3 == 1)
  {
    v9 = *(a1 + 3);
    result = 1;
    if (!v9)
    {
      return result;
    }

    v41 = 0;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v41, v9);
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 3);
    v13 = v42;
    while (v12 != v11)
    {
      v14 = (*(a1 + 5) + v10);
      if (!*v14)
      {
        v14 = v14[2];
      }

      if (v13 == v11)
      {
        goto LABEL_42;
      }

      if (v43)
      {
        v15 = &v44;
      }

      else
      {
        v15 = v45;
      }

      v15[v11++] = v14;
      v10 += 32;
      if (v9 == v11)
      {
        if (v13)
        {
          if (v43)
          {
            v16 = &v44;
          }

          else
          {
            v16 = v45;
          }

          v17 = *v16;
          v18 = v9 - 1;
          v19 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v41, 1uLL, v18);
          v21 = (*(*v17 + 120))(v17, 0, v19, v20);
          if (v21)
          {
            v22 = v21;
            if (!re::BindPoint::isOverridden(a1) || *v22 != v7)
            {
              re::BindPoint::willSet(a1);
              *v22 = v7;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (v42)
          {
            if (v43)
            {
              v23 = &v44;
            }

            else
            {
              v23 = v45;
            }

            v24 = *v23;
            v25 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v41, 1uLL, v18);
            v27 = (*(*v24 + 88))(v24, 0, v25, v26);
            if (v27)
            {
              v28 = v27;
              if (*v27 != v7)
              {
                re::BindPoint::willSet(a1);
                *v28 = v7;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_25:
            if (v41 && (v43 & 1) == 0)
            {
              (*(*v41 + 40))();
            }

            return 1;
          }

LABEL_50:
          v46 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "operator[]";
          v49 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v50 = 858;
          v51 = 2048;
          v52 = 0;
          v53 = 2048;
          v54 = 0;
          _os_log_send_and_compose_impl(v40, &v46, &v55, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v46 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v47 = 136315906;
        v48 = "operator[]";
        v49 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v50 = 858;
        v51 = 2048;
        v52 = 0;
        v53 = 2048;
        v54 = 0;
        _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v12;
    _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v50 = 858;
    v51 = 2048;
    v52 = v13;
    v53 = 2048;
    v54 = v13;
    _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v8 = re::BindPoint::baseValueUntyped(a1);
    if (v8)
    {
      *v8 = a2;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetUInt16(re::BindPoint *a1, int a2, int a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    v8 = *(a1 + 3);
    result = 1;
    if (!v8)
    {
      return result;
    }

    v40 = 0;
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v40, v8);
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 3);
    v12 = v41;
    while (v11 != v10)
    {
      v13 = (*(a1 + 5) + v9);
      if (!*v13)
      {
        v13 = v13[2];
      }

      if (v12 == v10)
      {
        goto LABEL_42;
      }

      if (v42)
      {
        v14 = &v43;
      }

      else
      {
        v14 = v44;
      }

      v14[v10++] = v13;
      v9 += 32;
      if (v8 == v10)
      {
        if (v12)
        {
          if (v42)
          {
            v15 = &v43;
          }

          else
          {
            v15 = v44;
          }

          v16 = *v15;
          v17 = v8 - 1;
          v18 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v17);
          v20 = (*(*v16 + 120))(v16, 0, v18, v19);
          if (v20)
          {
            v21 = v20;
            if (!re::BindPoint::isOverridden(a1) || *v21 != a2)
            {
              re::BindPoint::willSet(a1);
              *v21 = a2;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (v41)
          {
            if (v42)
            {
              v22 = &v43;
            }

            else
            {
              v22 = v44;
            }

            v23 = *v22;
            v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v17);
            v26 = (*(*v23 + 88))(v23, 0, v24, v25);
            if (v26)
            {
              v27 = v26;
              if (*v26 != a2)
              {
                re::BindPoint::willSet(a1);
                *v27 = a2;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_25:
            if (v40 && (v42 & 1) == 0)
            {
              (*(*v40 + 40))();
            }

            return 1;
          }

LABEL_50:
          v45 = 0;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v46 = 136315906;
          v47 = "operator[]";
          v48 = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          v49 = 858;
          v50 = 2048;
          v51 = 0;
          v52 = 2048;
          v53 = 0;
          _os_log_send_and_compose_impl(v39, &v45, &v54, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v49 = 858;
        v50 = 2048;
        v51 = 0;
        v52 = 2048;
        v53 = 0;
        _os_log_send_and_compose_impl(v36, &v45, &v54, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v49 = 797;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v11;
    _os_log_send_and_compose_impl(v30, &v45, &v54, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v49 = 858;
    v50 = 2048;
    v51 = v12;
    v52 = 2048;
    v53 = v12;
    _os_log_send_and_compose_impl(v33, &v45, &v54, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v7 = re::BindPoint::baseValueUntyped(a1);
    if (v7)
    {
      *v7 = a2;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetInt32(re::BindPoint *a1, int a2, int a3)
{
  v8 = a2;
  if (result)
  {
    if (a3 == 1)
    {
      re::BindPoint::setValue<int>(a1, &v8);
      return 1;
    }

    if (!a3)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a2;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetUInt32(re::BindPoint *a1, int a2, int a3)
{
  v8 = a2;
  if (result)
  {
    if (a3 == 1)
    {
      re::BindPoint::setValue<int>(a1, &v8);
      return 1;
    }

    if (!a3)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a2;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetInt64(re::BindPoint *a1, uint64_t a2, int a3)
{
  v8 = a2;
  if (result)
  {
    if (a3 == 1)
    {
      re::BindPoint::setValue<long long>(a1, &v8);
      return 1;
    }

    if (!a3)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a2;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetFloat(re::BindPoint *a1, int a2, float a3)
{
  v8 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<float>(a1, &v8);
      return 1;
    }

    if (!a2)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a3;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetFloat2(re::BindPoint *a1, int a2, float32x2_t a3)
{
  v8 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<re::Vector2<float>>(a1, &v8);
      return 1;
    }

    if (!a2)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a3;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetFloat3(re::BindPoint *a1, int a2, float32x4_t a3)
{
  v7 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<re::Vector3<float>>(a1, &v7);
      return 1;
    }

    if (!a2)
    {
      v6 = re::BindPoint::baseValueUntyped(a1);
      if (v6)
      {
        *v6 = v7;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetFloat4(re::BindPoint *a1, int a2, float32x4_t a3)
{
  v7 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<re::Vector4<float>>(a1, &v7);
      return 1;
    }

    if (!a2)
    {
      v6 = re::BindPoint::baseValueUntyped(a1);
      if (v6)
      {
        *v6 = v7;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetDouble(re::BindPoint *a1, int a2, double a3)
{
  v8 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<double>(a1, &v8);
      return 1;
    }

    if (!a2)
    {
      v7 = re::BindPoint::baseValueUntyped(a1);
      if (v7)
      {
        *v7 = a3;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetDouble2(re::BindPoint *a1, int a2, float64x2_t a3)
{
  v41 = a3;
  v61 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (a2 == 1)
  {
    v7 = *(a1 + 3);
    result = 1;
    if (!v7)
    {
      return result;
    }

    v42 = 0;
    v43 = 0;
    v44 = 1;
    v45 = 0;
    v46 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v42, v7);
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 3);
    v11 = v43;
    while (v10 != v9)
    {
      v12 = (*(a1 + 5) + v8);
      if (!*v12)
      {
        v12 = v12[2];
      }

      if (v11 == v9)
      {
        goto LABEL_42;
      }

      if (v44)
      {
        v13 = &v45;
      }

      else
      {
        v13 = v46;
      }

      v13[v9++] = v12;
      v8 += 32;
      if (v7 == v9)
      {
        if (v11)
        {
          if (v44)
          {
            v14 = &v45;
          }

          else
          {
            v14 = v46;
          }

          v15 = *v14;
          v16 = v7 - 1;
          v17 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v42, 1uLL, v16);
          v19 = (*(*v15 + 120))(v15, 0, v17, v18);
          if (v19)
          {
            v20 = v19;
            if (!re::BindPoint::isOverridden(a1) || (v21 = vceqq_f64(*v20, v41), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v21), 1), v21).u64[0] & 0x8000000000000000) != 0))
            {
              re::BindPoint::willSet(a1);
              *v20 = v41;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_32;
          }

          if (v43)
          {
            if (v44)
            {
              v22 = &v45;
            }

            else
            {
              v22 = v46;
            }

            v23 = *v22;
            v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v42, 1uLL, v16);
            v26 = (*(*v23 + 88))(v23, 0, v24, v25);
            if (v26)
            {
              v27 = v26;
              v28 = vceqq_f64(*v26, v41);
              if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) != 0)
              {
                re::BindPoint::willSet(a1);
                *v27 = v41;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_32:
            if (v42 && (v44 & 1) == 0)
            {
              (*(*v42 + 40))();
            }

            return 1;
          }

LABEL_50:
          v47 = 0;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v48 = 136315906;
          v49 = "operator[]";
          v50 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v51 = 858;
          v52 = 2048;
          v53 = 0;
          v54 = 2048;
          v55 = 0;
          _os_log_send_and_compose_impl(v40, &v47, &v56, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, *&v41.f64[0], *&v41.f64[1]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v47 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v48 = 136315906;
        v49 = "operator[]";
        v50 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v51 = 858;
        v52 = 2048;
        v53 = 0;
        v54 = 2048;
        v55 = 0;
        _os_log_send_and_compose_impl(v37, &v47, &v56, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, *&v41.f64[0], *&v41.f64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v51 = 797;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = v10;
    _os_log_send_and_compose_impl(v31, &v47, &v56, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v51 = 858;
    v52 = 2048;
    v53 = v11;
    v54 = 2048;
    v55 = v11;
    _os_log_send_and_compose_impl(v34, &v47, &v56, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a2)
  {
    v6 = re::BindPoint::baseValueUntyped(a1);
    if (v6)
    {
      *v6 = v41;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetDouble3(re::BindPoint *a1, float64x2_t *a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v41 = a2[1];
  v42 = *a2;
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    v7 = *(a1 + 3);
    result = 1;
    if (!v7)
    {
      return result;
    }

    v43 = 0;
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v43, v7);
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 3);
    v11 = v44;
    while (v10 != v9)
    {
      v12 = (*(a1 + 5) + v8);
      if (!*v12)
      {
        v12 = v12[2];
      }

      if (v11 == v9)
      {
        goto LABEL_42;
      }

      if (v45)
      {
        v13 = &v46;
      }

      else
      {
        v13 = v47;
      }

      v13[v9++] = v12;
      v8 += 32;
      if (v7 == v9)
      {
        if (v11)
        {
          if (v45)
          {
            v14 = &v46;
          }

          else
          {
            v14 = v47;
          }

          v15 = *v14;
          v16 = v7 - 1;
          v17 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v43, 1uLL, v16);
          v19 = (*(*v15 + 120))(v15, 0, v17, v18);
          if (v19)
          {
            v20 = v19;
            if (!re::BindPoint::isOverridden(a1) || (v21 = vmvnq_s8(vceqq_f64(*v20, v42)), ((v21.i64[0] | vmvnq_s8(vceqq_f64(v20[1], v41)).u64[0] | v21.i64[1]) & 0x8000000000000000) != 0))
            {
              re::BindPoint::willSet(a1);
              *v20 = v42;
              v20[1] = v41;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_32;
          }

          if (v44)
          {
            if (v45)
            {
              v22 = &v46;
            }

            else
            {
              v22 = v47;
            }

            v23 = *v22;
            v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v43, 1uLL, v16);
            v26 = (*(*v23 + 88))(v23, 0, v24, v25);
            if (v26)
            {
              v27 = v26;
              v28 = vmvnq_s8(vceqq_f64(*v26, v42));
              if (((v28.i64[0] | vmvnq_s8(vceqq_f64(v26[1], v41)).u64[0] | v28.i64[1]) & 0x8000000000000000) != 0)
              {
                re::BindPoint::willSet(a1);
                *v27 = v42;
                v27[1] = v41;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_32:
            if (v43 && (v45 & 1) == 0)
            {
              (*(*v43 + 40))();
            }

            return 1;
          }

LABEL_50:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v52 = 858;
          v53 = 2048;
          v54 = 0;
          v55 = 2048;
          v56 = 0;
          _os_log_send_and_compose_impl(v40, &v48, &v57, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v48 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v49 = 136315906;
        v50 = "operator[]";
        v51 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v52 = 858;
        v53 = 2048;
        v54 = 0;
        v55 = 2048;
        v56 = 0;
        _os_log_send_and_compose_impl(v37, &v48, &v57, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v52 = 797;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v10;
    _os_log_send_and_compose_impl(v31, &v48, &v57, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v52 = 858;
    v53 = 2048;
    v54 = v11;
    v55 = 2048;
    v56 = v11;
    _os_log_send_and_compose_impl(v34, &v48, &v57, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v6 = re::BindPoint::baseValueUntyped(a1);
    if (v6)
    {
      *v6 = v42;
      v6[1] = v41;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetDouble4(re::BindPoint *a1, float64x2_t *a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v41 = a2[1];
  v42 = *a2;
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    v7 = *(a1 + 3);
    result = 1;
    if (!v7)
    {
      return result;
    }

    v43 = 0;
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v43, v7);
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 3);
    v11 = v44;
    while (v10 != v9)
    {
      v12 = (*(a1 + 5) + v8);
      if (!*v12)
      {
        v12 = v12[2];
      }

      if (v11 == v9)
      {
        goto LABEL_42;
      }

      if (v45)
      {
        v13 = &v46;
      }

      else
      {
        v13 = v47;
      }

      v13[v9++] = v12;
      v8 += 32;
      if (v7 == v9)
      {
        if (v11)
        {
          if (v45)
          {
            v14 = &v46;
          }

          else
          {
            v14 = v47;
          }

          v15 = *v14;
          v16 = v7 - 1;
          v17 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v43, 1uLL, v16);
          v19 = (*(*v15 + 120))(v15, 0, v17, v18);
          if (v19)
          {
            v20 = v19;
            if (!re::BindPoint::isOverridden(a1) || (v21 = vornq_s8(vmvnq_s8(vceqq_f64(*v20, v42)), vceqq_f64(v20[1], v41)), (vorrq_s8(v21, vdupq_laneq_s64(v21, 1)).u64[0] & 0x8000000000000000) != 0))
            {
              re::BindPoint::willSet(a1);
              *v20 = v42;
              v20[1] = v41;
              re::BindPoint::setIsOverridden(a1, 1);
              goto LABEL_24;
            }

            goto LABEL_32;
          }

          if (v44)
          {
            if (v45)
            {
              v22 = &v46;
            }

            else
            {
              v22 = v47;
            }

            v23 = *v22;
            v24 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v43, 1uLL, v16);
            v26 = (*(*v23 + 88))(v23, 0, v24, v25);
            if (v26)
            {
              v27 = v26;
              v28 = vornq_s8(vmvnq_s8(vceqq_f64(*v26, v42)), vceqq_f64(v26[1], v41));
              if ((vorrq_s8(v28, vdupq_laneq_s64(v28, 1)).u64[0] & 0x8000000000000000) != 0)
              {
                re::BindPoint::willSet(a1);
                *v27 = v42;
                v27[1] = v41;
LABEL_24:
                re::BindPoint::markAsWritten(a1);
              }
            }

LABEL_32:
            if (v43 && (v45 & 1) == 0)
            {
              (*(*v43 + 40))();
            }

            return 1;
          }

LABEL_50:
          v48 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v52 = 858;
          v53 = 2048;
          v54 = 0;
          v55 = 2048;
          v56 = 0;
          _os_log_send_and_compose_impl(v40, &v48, &v57, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v48 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v49 = 136315906;
        v50 = "operator[]";
        v51 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v52 = 858;
        v53 = 2048;
        v54 = 0;
        v55 = 2048;
        v56 = 0;
        _os_log_send_and_compose_impl(v37, &v48, &v57, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }
    }

    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v52 = 797;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v10;
    _os_log_send_and_compose_impl(v31, &v48, &v57, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v52 = 858;
    v53 = 2048;
    v54 = v11;
    v55 = 2048;
    v56 = v11;
    _os_log_send_and_compose_impl(v34, &v48, &v57, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, *&v41.f64[0], *&v41.f64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (!a3)
  {
    v6 = re::BindPoint::baseValueUntyped(a1);
    if (v6)
    {
      *v6 = v42;
      v6[1] = v41;
      re::BindPoint::markAsWritten(a1);
    }

    return 1;
  }

  return 0;
}

uint64_t REBindPointSetQuatF(re::BindPoint *a1, int a2, float32x4_t a3)
{
  v7 = a3;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<re::Vector4<float>>(a1, &v7);
      return 1;
    }

    if (!a2)
    {
      v6 = re::BindPoint::baseValueUntyped(a1);
      if (v6)
      {
        *v6 = v7;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointSetSRT(re::BindPoint *a1, int a2, float32x4_t a3, __n128 a4, __n128 a5)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (result)
  {
    if (a2 == 1)
    {
      re::BindPoint::setValue<re::GenericSRT<float>>(a1, &v11);
      return 1;
    }

    if (!a2)
    {
      v8 = re::BindPoint::baseValueUntyped(a1);
      if (v8)
      {
        v9 = v11;
        v10 = v13;
        v8[1] = v12;
        v8[2] = v10;
        *v8 = v9;
        re::BindPoint::markAsWritten(a1);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REBindPointBoundComponent(re::BindPoint *a1)
{
  v1 = re::BindPoint::boundOwner(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  result = v2;
  v5 = &unk_1EE187000;
  {
    v13 = v3;
    v14 = v2;
    v5 = &unk_1EE187000;
    v12 = v6;
    v3 = v13;
    result = v14;
    if (v12)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0, v7, v8, v9, v10, v11);
      v5 = &unk_1EE187000;
      v3 = v13;
      result = v14;
    }
  }

  if (v5[54] != v3)
  {
    return 0;
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::DynamicString>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[231]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<BOOL>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[42]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<char>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1ECF17000;
      {
        v3 = &unk_1ECF17000;
        if (v4)
        {
          re::introspect<char>(BOOL)::info = re::introspect_char(0, v5);
          v3 = &unk_1ECF17000;
        }
      }

      return (v2 == v3[408]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<unsigned char>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[39]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<short>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1ECF17000;
      {
        v3 = &unk_1ECF17000;
        if (v4)
        {
          re::introspect<short>(BOOL)::info = re::introspect_short(0, v5);
          v3 = &unk_1ECF17000;
        }
      }

      return (v2 == v3[386]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<unsigned short>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1ECF17000;
      {
        v3 = &unk_1ECF17000;
        if (v4)
        {
          re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v5);
          v3 = &unk_1ECF17000;
        }
      }

      return (v2 == v3[392]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<int>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<int>(BOOL)::info = re::introspect_int(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[38]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<unsigned int>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[37]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<long long>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
      {
        v3 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
        if (v4)
        {
          re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v5);
          v3 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
        }
      }

      return (v2 == v3[24]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<float>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[40]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector2<float>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[48]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector3<float>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[47]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector4<float>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[46]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<double>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v5);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[41]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector2<double>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      if ((atomic_load_explicit(&qword_1EE1C4A48, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_1EE1C4A48))
        {
          _MergedGlobals_585 = re::introspect_Vector2D(0);
          __cxa_guard_release(&qword_1EE1C4A48);
        }
      }

      return (v2 == _MergedGlobals_585);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector3<double>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      if ((atomic_load_explicit(&qword_1EE1C4A58, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_1EE1C4A58))
        {
          qword_1EE1C4A50 = re::introspect_Vector3D(0);
          __cxa_guard_release(&qword_1EE1C4A58);
        }
      }

      return (v2 == qword_1EE1C4A50);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Vector4<double>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      if ((atomic_load_explicit(&qword_1EE1C4A68, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_1EE1C4A68))
        {
          qword_1EE1C4A60 = re::introspect_Vector4D(0);
          __cxa_guard_release(&qword_1EE1C4A68);
        }
      }

      return (v2 == qword_1EE1C4A60);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::Quaternion<float>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[245]);
    }
  }

  return result;
}

re::BindPoint *anonymous namespace::isAlive<re::GenericSRT<float>>(re::BindPoint *result)
{
  if (result)
  {
    v1 = result;
    result = re::BindPoint::isAlive(result);
    if (result)
    {
      v2 = *v1;
      v3 = &unk_1EE187000;
      {
        v3 = &unk_1EE187000;
        if (v4)
        {
          re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
          v3 = &unk_1EE187000;
        }
      }

      return (v2 == v3[248]);
    }
  }

  return result;
}

re::BindPoint *re::BindPoint::setValue<long long>(re::BindPoint *result, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(result + 3);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v36 = 0;
  v37 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v36, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v37;
  do
  {
    if (v7 == v6)
    {
      v41 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v42 = 136315906;
      v43 = "operator[]";
      v44 = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v45 = 797;
      v46 = 2048;
      v47 = v7;
      v48 = 2048;
      v49 = v7;
      _os_log_send_and_compose_impl(v26, &v41, &v50, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v41 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v42 = 136315906;
      v43 = "operator[]";
      v44 = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v45 = 858;
      v46 = 2048;
      v47 = v8;
      v48 = 2048;
      v49 = v8;
      _os_log_send_and_compose_impl(v29, &v41, &v50, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_35;
    }

    if (v38)
    {
      v10 = &v39;
    }

    else
    {
      v10 = v40;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_39:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v45 = 858;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    _os_log_send_and_compose_impl(v32, &v41, &v50, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  if (v38)
  {
    v11 = &v39;
  }

  else
  {
    v11 = v40;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v36, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || *v17 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!v37)
  {
LABEL_43:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v45 = 858;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    _os_log_send_and_compose_impl(v35, &v41, &v50, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
    _os_crash_msg();
    __break(1u);
  }

  if (v38)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v40;
  }

  v19 = *v18;
  v20 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v36, 1uLL, v13);
  v22 = (*(*v19 + 88))(v19, 0, v20, v21);
  if (v22)
  {
    v23 = v22;
    if (*v22 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v23 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_20:
  result = v36;
  if (v36)
  {
    if ((v38 & 1) == 0)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

unint64_t REPrimitiveRenderAddContext(re::RenderManager *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 11);
  v2 = v1[34];
  re::PrimitiveRenderingContext::PrimitiveRenderingContext(v7, v1[28], a1);
  v3 = re::DynamicArray<re::PrimitiveRenderingContext>::add((v1 + 32), v7);
  if (v14)
  {
    if (v18)
    {
      (*(*v14 + 40))(v3);
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    ++v17;
  }

  re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v13);
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))();
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

  for (i = 976; i != 816; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v7[i]);
  }

  do
  {
    re::DynamicArray<unsigned long>::deinit(&v7[i]);
    i -= 40;
  }

  while (i != 656);
  do
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v7[i]);
    i -= 40;
  }

  while (i != 496);
  for (j = 240; j != -40; j -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v7[j]);
  }

  return v2;
}

uint64_t REPrimitiveRenderClearContext(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 88);
  v4 = *(v3 + 272);
  if (v4 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(v3 + 288) + 1200 * a2);
  re::PrimitiveRenderingDynamicGeometry::init(v5, v5[147]);

  return re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::clear((v5 + 132));
}

BOOL REPrimitiveRenderContextIsEmpty(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 88);
  v4 = *(v3 + 272);
  if (v4 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(v3 + 288) + 1200 * a2);

  return re::PrimitiveRenderingContext::isEmpty(v5);
}

uint64_t REPrimitiveRenderAddPoint(uint64_t a1, unint64_t a2, __n128 a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 88);
  v5 = *(v4 + 272);
  if (v5 <= a2)
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
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(v4 + 288) + 1200 * a2;
  v20[0] = a3;
  return re::PrimitiveRenderingContext::addPoint(v6, v20);
}

uint64_t REPrimitiveRenderAddLine(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
  {
    v12 = 0;
    memset(v18, 0, sizeof(v18));
    v9 = MEMORY[0x1E69E9C10];
    *v13 = 136315906;
    *&v13[4] = "operator[]";
    *&v13[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *&v13[14] = 789;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v18, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v18[0] = a3;
  *v13 = a4;
  return re::PrimitiveRenderingContext::addLine(v7, v18, v13);
}

uint64_t REPrimitiveRenderAddShape(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
  {
    v13 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = MEMORY[0x1E69E9C10];
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    *&v14[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *&v14[14] = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v19, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v6 + 288) + 1200 * a2;
  v19[0] = a4;
  *v14 = a5;
  return re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(v8, a3, v19, v14);
}

double REPrimitiveRenderSetPointColor(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(1, a3, v21, (v7 + 40), (v7 + 513), *(v7 + 16), *(v7 + 520), *(v7 + 1192)).n128_u64[0];
  return result;
}

float REPrimitiveRenderSetPointSize(uint64_t a1, unint64_t a2, unint64_t a3, float a4)
{
  v22 = *MEMORY[0x1E69E9840];
  *(&v11 + 1) = a4;
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  return re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(2, a3, &v11 + 1, (v7 + 80), (v7 + 514), *(v7 + 16), *(v7 + 520), *(v7 + 1192));
}

double REPrimitiveRenderSetLineColor(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, a3, v21, (v7 + 200), (v7 + 517), *(v7 + 136), *(v7 + 528), *(v7 + 1192)).n128_u64[0];
  return result;
}

float REPrimitiveRenderSetLineWidth(uint64_t a1, unint64_t a2, unint64_t a3, float a4)
{
  v22 = *MEMORY[0x1E69E9840];
  *(&v11 + 1) = a4;
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  return re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, a3, &v11 + 1, (v7 + 240), (v7 + 518), *(v7 + 136), *(v7 + 528), *(v7 + 1192));
}

double REPrimitiveRenderSetShapeColor(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
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

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v6 + 288) + 1200 * a2;
  v22[0] = a5;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(v8, a3, a4, 3, v22);
}

double REPrimitiveRenderSetShapeScale(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
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

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v6 + 288) + 1200 * a2;
  v22[0] = a5;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(v8, a3, a4, 2, v22);
}

uint64_t REPrimitiveRenderSetUniformPointColor(uint64_t result, unint64_t a2, __n128 a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  v5 = *(v4 + 272);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(v4 + 288) + 1200 * a2);
  if (v6[32].n128_u8[1] == 1)
  {
    v6[3].n128_u64[1] = 0;
    ++v6[4].n128_u32[0];
    v6[32].n128_u8[1] = 0;
  }

  if (v6[21].n128_u32[0] != 3)
  {
    v6[21].n128_u32[0] = 3;
  }

  v6[20] = a3;
  return result;
}

uint64_t REPrimitiveRenderSetUniformPointSize(uint64_t result, unint64_t a2, float a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  v5 = *(v4 + 272);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(v4 + 288) + 1200 * a2;
  if (*(v6 + 514) == 1)
  {
    *(v6 + 96) = 0;
    ++*(v6 + 104);
    *(v6 + 514) = 0;
  }

  if (*(v6 + 368))
  {
    *(v6 + 368) = 0;
  }

  *(v6 + 352) = a3;
  return result;
}

uint64_t REPrimitiveRenderSetUniformLineColor(uint64_t result, unint64_t a2, __n128 a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  v5 = *(v4 + 272);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(v4 + 288) + 1200 * a2);
  if (v6[32].n128_u8[5] == 1)
  {
    v6[13].n128_u64[1] = 0;
    ++v6[14].n128_u32[0];
    v6[32].n128_u8[5] = 0;
  }

  if (v6[29].n128_u32[0] != 3)
  {
    v6[29].n128_u32[0] = 3;
  }

  v6[28] = a3;
  return result;
}

uint64_t REPrimitiveRenderSetUniformLineWidth(uint64_t result, unint64_t a2, float a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  v5 = *(v4 + 272);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(v4 + 288) + 1200 * a2;
  if (*(v6 + 518) == 1)
  {
    *(v6 + 256) = 0;
    ++*(v6 + 264);
    *(v6 + 518) = 0;
  }

  if (*(v6 + 496))
  {
    *(v6 + 496) = 0;
  }

  *(v6 + 480) = a3;
  return result;
}

double REPrimitiveRenderSetUniformShapeColor(uint64_t a1, unint64_t a2, unsigned int a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,re::PrimitiveRenderingShape>(v7, a3, 3u, v21).n128_u64[0];
  return result;
}

double REPrimitiveRenderSetUniformShapeScale(uint64_t a1, unint64_t a2, unsigned int a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,re::PrimitiveRenderingShape>(v7, a3, 2u, v21).n128_u64[0];
  return result;
}

void REPrimitiveRenderSetPointMaterial(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v11);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v11);
  if (v5)
  {
    v6 = *(a1 + 88);
    v7 = *(v6 + 272);
    if (v7 <= a2)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v6 + 288) + 1200 * a2 + 1096) = *(v5 + 1776);
  }

  re::AssetHandle::~AssetHandle(v11);
}

void REPrimitiveRenderSetLineMaterial(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v11);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v11);
  if (v5)
  {
    v6 = *(a1 + 88);
    v7 = *(v6 + 272);
    if (v7 <= a2)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v6 + 288) + 1200 * a2 + 1104) = *(v5 + 1776);
  }

  re::AssetHandle::~AssetHandle(v11);
}

void REPrimitiveRenderSetShapeMaterial(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v11);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v11);
  if (v5)
  {
    v6 = *(a1 + 88);
    v7 = *(v6 + 272);
    if (v7 <= a2)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v6 + 288) + 1200 * a2 + 1112) = *(v5 + 1776);
  }

  re::AssetHandle::~AssetHandle(v11);
}

uint64_t REPrimitiveRenderRegisterCustomShape(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 88);
  v10[0] = a2;
  v10[1] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v8[0] = a3;
  v8[1] = a4;
  return re::PrimitiveRenderer::addCustomShape(v6, v10, v9, v8);
}

uint64_t REPrimitiveRenderAddCustomShape(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4, __n128 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
  {
    v13 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = MEMORY[0x1E69E9C10];
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    *&v14[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *&v14[14] = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v19, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = (*(v6 + 288) + 1200 * a2);
  v19[0] = a4;
  *v14 = a5;
  return re::PrimitiveRenderingContext::addShape<unsigned long>(v8, a3, v19, v14, a4);
}

double REPrimitiveRenderSetCustomShapeColor(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
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

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v6 + 288) + 1200 * a2;
  v22[0] = a5;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,unsigned long>(v8, a3, a4, 3, v22);
}

double REPrimitiveRenderSetUniformCustomShapeColor(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector4<float>,unsigned long>(v7, a3, 3u, v21).n128_u64[0];
  return result;
}

double REPrimitiveRenderSetCustomShapeScale(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v7 = *(v6 + 272);
  if (v7 <= a2)
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

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v6 + 288) + 1200 * a2;
  v22[0] = a5;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,unsigned long>(v8, a3, a4, 2, v22);
}

double REPrimitiveRenderSetUniformCustomShapeScale(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
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

    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 288) + 1200 * a2;
  v21[0] = a4;
  *&result = re::PrimitiveRenderingDynamicGeometry::setUniform<re::Vector3<float>,unsigned long>(v7, a3, 2u, v21).n128_u64[0];
  return result;
}

void REPrimitiveRenderAddStaticMesh(uint64_t a1, unint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(a1 + 88);
  v8 = *(v7 + 272);
  if (v8 <= a2)
  {
    v19 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v8;
    _os_log_send_and_compose_impl(v14, &v19, &v20, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v18);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v19 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = v8;
    v33 = 2048;
    v34 = v3;
    _os_log_send_and_compose_impl(v17, &v19, &v20, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v9 = v6;
  v10 = *(v7 + 288) + 1200 * a2;
  v11 = v10 + 1056;
  v8 = *(v10 + 1072);
  v20 = 0u;
  v21 = 0u;
  v12.i64[0] = 0x7F0000007FLL;
  v12.i64[1] = 0x7F0000007FLL;
  v22 = 0u;
  v23 = vnegq_f32(v12);
  v24 = v12;
  v25 = 0;
  v26 = 0;
  re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::add((v10 + 1056), &v20);
  re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(&v20);
  v3 = *(v10 + 1072);
  if (v3 <= v8)
  {
    goto LABEL_8;
  }

  v9[2](v9, *(v11 + 32) + 96 * v8);
}

void REPrimitiveRenderStaticMeshAddStandardAttribute(_anonymous_namespace_ *a1, const char *a2, char a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = 0;
  v13 = &str_67;
  v11 = v7;
  v8 = v7;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = &str_67;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  re::StringID::operator=(v14.n128_u64, &v12);
  v15 = 1;
  v16 = a3;
  NS::SharedPtr<MTL::Buffer>::operator=(&v17, &v11);
  v9 = v11;
  if (v11)
  {

    v11 = 0;
  }

  if (v12)
  {
    if (v12)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v14);
  v10 = v17;
  if (v17)
  {

    v17 = 0;
  }

  if (v14.n128_u8[0])
  {
    if (v14.n128_u8[0])
    {
    }
  }
}

void REPrimitiveRenderStaticMeshAddCustomAttribute(_anonymous_namespace_ *a1, const char *a2, char a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = 0;
  v13 = &str_67;
  v11 = v7;
  v8 = v7;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = &str_67;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  re::StringID::operator=(v14.n128_u64, &v12);
  v15 = 0;
  v16 = a3;
  NS::SharedPtr<MTL::Buffer>::operator=(&v17, &v11);
  v9 = v11;
  if (v11)
  {

    v11 = 0;
  }

  if (v12)
  {
    if (v12)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v14);
  v10 = v17;
  if (v17)
  {

    v17 = 0;
  }

  if (v14.n128_u8[0])
  {
    if (v14.n128_u8[0])
    {
    }
  }
}

void REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat(_anonymous_namespace_ *a1, const char *a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v7 = 0;
  v8 = &str_67;
  v5 = re::PrimitiveMeshAttribute::uniformCustomAttribute<float>(&v7, &v9, &v10);
  if (v7)
  {
    if (v7)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v10);
  v6 = v11;
  if (v11)
  {

    v11 = 0;
  }

  if (v10.n128_u8[0])
  {
    if (v10.n128_u8[0])
    {
    }
  }
}

void REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat2(_anonymous_namespace_ *a1, const char *a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &str_67;
  v8 = a3;
  v6 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector2<float>>(&v9, &v8, &v11);
  if (v9)
  {
    if (v9)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v11);
  v7 = v12;
  if (v12)
  {

    v12 = 0;
  }

  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }
}

void REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat3(_anonymous_namespace_ *a1, const char *a2, __n128 a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &str_67;
  v8 = a3;
  v5 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>(&v9, &v8, &v11);
  if (v9)
  {
    if (v9)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v11);
  v6 = v12;
  if (v12)
  {

    v12 = 0;
  }

  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }
}

void REPrimitiveRenderStaticMeshAddUniformCustomAttributeFloat4(_anonymous_namespace_ *a1, const char *a2, __n128 a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &str_67;
  v8 = a3;
  v5 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v9, &v8, &v11);
  if (v9)
  {
    if (v9)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a1, &v11);
  v6 = v12;
  if (v12)
  {

    v12 = 0;
  }

  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }
}

__n128 *REPrimitiveRenderStaticMeshSetAABB(__n128 *result, __n128 a2, __n128 a3)
{
  result[3] = a2;
  result[4] = a3;
  return result;
}

void REPrimitiveRenderSetMeshMaterial(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v11);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v11);
  if (v5)
  {
    v6 = *(a1 + 88);
    v7 = *(v6 + 272);
    if (v7 <= a2)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v6 + 288) + 1200 * a2 + 1120) = *(v5 + 1776);
  }

  re::AssetHandle::~AssetHandle(v11);
}

double REPrimitiveRenderSetMeshMaterialTechniqueMapping(uint64_t a1, unint64_t a2, char *__s, const char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v6 = *(v5 + 272);
  if (v6 <= a2)
  {
    v18 = 0;
    memset(v24, 0, sizeof(v24));
    v15 = MEMORY[0x1E69E9C10];
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    *&v19[14] = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v16, &v18, v24, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(v5 + 288);
  v10 = strlen(__s);
  if (v10)
  {
    MurmurHash3_x64_128(__s, v10, 0, v24);
    v11 = (*(&v24[0] + 1) - 0x61C8864680B583E9 + (*&v24[0] << 6) + (*&v24[0] >> 2)) ^ *&v24[0];
  }

  else
  {
    v11 = 0;
  }

  *v19 = v11;
  v12 = strlen(a4);
  if (v12)
  {
    MurmurHash3_x64_128(a4, v12, 0, v24);
    v13 = (*(&v24[0] + 1) - 0x61C8864680B583E9 + (*&v24[0] << 6) + (*&v24[0] >> 2)) ^ *&v24[0];
  }

  else
  {
    v13 = 0;
  }

  *&v19[8] = v13;
  *&result = re::DynamicArray<re::RigNodeConstraint>::add((v9 + 1200 * a2 + 1136), v19).n128_u64[0];
  return result;
}

double REAudioGeneratorConfigurationCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 48, 8);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  return result;
}

re *REAudioGeneratorConfigurationDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    if (*(v1 + 8) == 1)
    {
      v3.n128_f64[0] = re::DynamicString::deinit((v1 + 16));
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t REAudioGeneratorConfigurationSetMixGroupName(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = [a2 UTF8String];
    v9[0] = 1;
    re::DynamicString::DynamicString(&v10, &v6);
    re::Optional<re::DynamicString>::operator=(a1 + 8, v9);
    if (v9[0] == 1 && v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }

    result = v6;
    if (v6 && (v7 & 1) != 0)
    {
      v5 = v8;
      return (*(*result + 40))(result, v5);
    }
  }

  else
  {
    v9[0] = 0;
    result = re::Optional<re::DynamicString>::operator=(a1 + 8, v9);
    if (v9[0] == 1)
    {
      result = v10;
      if (v10)
      {
        if (v11)
        {
          v5 = v12;
          return (*(*result + 40))(result, v5);
        }
      }
    }
  }

  return result;
}

id REAudioGeneratorConfigurationGetMixGroupName(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 24))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = a1 + 25;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v3, v1}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *REShadowClusterRootComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REImagePresentationStatusComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void REImagePresentationStatusComponentPublishUpdatesInApp(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::ImagePresentationStatusComponent::publishUpdatesInApp(v2);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
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
  v5 = *(v3[404] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

double REBlendSpaceDefinitionBuilderCreate(_anonymous_namespace_ *a1)
{
  v1 = a1;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D29C98;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 0;
  result = 0.0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 24) = v1;
  *(v4 + 120) = v4 + 24;
  return result;
}

_anonymous_namespace_ *REBlendSpaceDefinitionBuilderAddUniformAxis(uint64_t a1, const char *a2, int a3, float a4, float a5)
{
  v13 = 0;
  v14 = &str_67;
  v10 = re::BlendSpaceBuilder::addAxis((a1 + 112), &v13, a3, a4, a5);
  v11 = v10;
  if (v13)
  {
    if (v13)
    {
    }
  }

  return v11;
}

_anonymous_namespace_ *REBlendSpaceDefinitionBuilderAddAxis(uint64_t a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  v4 = re::BlendSpaceBuilder::addAxis((a1 + 112), &v7, 0, 0.0, 0.0);
  v5 = v4;
  if (v7)
  {
    if (v7)
    {
    }
  }

  return v5;
}

void REBlendSpaceDefinitionBuilderSetControlValueBindPathForAxis(uint64_t a1, unint64_t a2, const char *a3)
{
  v7 = 0;
  v8 = &str_67;
  v6 = re::BlendSpaceBuilder::setControlValueBindPath((a1 + 112), a2, &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

_anonymous_namespace_ *REBlendSpaceDefinitionBuilderAddSample(uint64_t a1, const char *a2)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  v4 = re::BlendSpaceBuilder::addSample((a1 + 112), &v7);
  v5 = v4;
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }

  return v5;
}

_anonymous_namespace_ *REBlendSpaceDefinitionBuilderAddSampleUniform(uint64_t a1, const char *a2, int a3, int a4)
{
  *&v11.var0 = 0;
  v11.var1 = &str_67;
  v8 = re::BlendSpaceBuilder::addSampleUniform((a1 + 112), &v11, a3, a4);
  v9 = v8;
  if (*&v11.var0)
  {
    if (*&v11.var0)
    {
    }
  }

  return v9;
}

uint64_t REBlendSpaceDefinitionBuilderBuild(uint64_t a1, const char *a2, __n128 a3)
{
  re::BlendSpaceBuilder::build((a1 + 112), a2, v9);
  if (v9[0] == 1)
  {
    v4 = re::globalAllocators(v3);
    v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
    ArcSharedObject::ArcSharedObject(v5, 0);
    *v5 = &unk_1F5D29CE0;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 104) = 0;
    v6 = v10;
    v7 = v10 + 1;
    *(v5 + 24) = *v10;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v5 + 32, v7);
    re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 72, v6 + 6);
    if (v9[0])
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v5;
}

void *re::Shareable<anonymous namespace::REBlendSpaceBuilder>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D29C98;
  v2 = a1 + 4;
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 9));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<anonymous namespace::REBlendSpaceBuilder>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D29C98;
  v2 = a1 + 4;
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 9));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::Shareable<re::BlendSpaceDefinition>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D29CE0;
  v2 = a1 + 4;
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 9));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::BlendSpaceDefinition>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D29CE0;
  v2 = a1 + 4;
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 9));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

__n128 REGeomInstanceCreate(re *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a1;
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 112, 16);
  ArcSharedObject::ArcSharedObject(v7, 0);
  v7->n128_u64[0] = &unk_1F5CD0DE8;
  v7[6].n128_u64[0] = 0;
  v7[6].n128_u64[1] = 0;
  v7[2] = a2;
  v7[3] = a3;
  result = a5;
  v7[4] = a4;
  v7[5] = a5;
  v7[6].n128_u32[0] = v5;
  return result;
}

void ThreadContext::process(ThreadContext *this, void *a2)
{
  *(this + 24) = 1;
  v2 = *(this + 2);
  v3 = *this;
  if (v2 < *(*this + 48))
  {
    v5 = 40 * v2;
    do
    {
      v6 = *(v3 + 24);
      v7 = (v6 + v5);
      memset(&v25, 0, sizeof(v25));
      v8 = *(v6 + v5 + 24);
      if (*(v3 + 56) == 1)
      {
        if (v8 == 1 || *(v7 + 7) == 0)
        {
LABEL_28:
          v21 = 4;
LABEL_29:
          atomic_fetch_add((v3 + 64), 1uLL);
          goto LABEL_41;
        }

        std::string::operator=(&v25, (v6 + v5));
        std::string::append(&v25, ".arz");
      }

      else
      {
        if (!v8)
        {
          goto LABEL_28;
        }

        std::string::operator=(&v25, (v6 + v5));
        v10 = &v25 + HIBYTE(v25.__r_.__value_.__r.__words[2]);
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v25;
        }

        else
        {
          v10 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
          v11 = v25.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v25, v10 - v11 - 4, 4uLL);
      }

      v12 = v6 + v5;
      v13 = *(v6 + v5 + 28);
      if (qword_1EE1C4A88)
      {
        v14 = 40;
        if (v13 == 1)
        {
          v14 = 32;
        }

        if (!v13)
        {
          v14 = 24;
        }

        ++*&_MergedGlobals_586[v14 + 80];
      }

      v15 = *(this + 1);
      v16 = *(*this + 56);
      v17 = *(v12 + 23);
      v18 = (v6 + v5);
      if (v16 == 1)
      {
        if (v17 < 0)
        {
          v18 = *v7;
        }

        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v25;
        }

        else
        {
          v19 = v25.__r_.__value_.__r.__words[0];
        }

        v20 = RECompressionInit(v15, 1, *(*this + 60), v13, v18, v19);
        *(this + 24) = v20;
        if (!v20)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v17 < 0)
        {
          v18 = *v7;
        }

        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v25;
        }

        else
        {
          v22 = v25.__r_.__value_.__r.__words[0];
        }

        v23 = RECompressionInit(v15, v16, *(v6 + v5 + 32), v13, v18, v22);
        *(this + 24) = v23;
        if (!v23)
        {
          goto LABEL_40;
        }
      }

      *(this + 24) = RECompressionProcess(*(this + 1), 0, 0);
      RECompressionDeinit(*(this + 1));
      if (*(this + 24) == 1)
      {
        if (*(v12 + 23) < 0)
        {
          v7 = *v7;
        }

        v24 = unlink(v7);
        *(this + 24) = v24 == 0;
        if (!v24)
        {
          v3 = *this;
          if (!*(*this + 216))
          {
            v21 = 0;
            goto LABEL_29;
          }

          std::mutex::lock((v3 + 88));
          [*(*this + 216) setCompletedUnitCount:{objc_msgSend(*(*this + 216), "completedUnitCount") + 1}];
          std::mutex::unlock((*this + 88));
          if (([*(*this + 216) isCancelled] & 1) == 0)
          {
            v21 = 0;
            v3 = *this;
            goto LABEL_29;
          }
        }
      }

LABEL_40:
      v21 = 2;
LABEL_41:
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if ((v21 | 4) != 4)
      {
        v3 = *this;
        break;
      }

      ++v2;
      v3 = *this;
      v5 += 40;
    }

    while (v2 < *(*this + 48));
  }

  atomic_fetch_add((v3 + 72), 1uLL);
}

double _REArchivalStatsCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 48, 8);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  return result;
}

re *_REArchivalStatsDelete(re *result)
{
  if (result)
  {
    v1 = *(*re::globalAllocators(result)[2] + 40);

    return v1();
  }

  return result;
}

BOOL _REArchiveOperationSetEnvelopeVersion(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2 - 1;
  if ((a2 - 1) > 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "%u is not a valid REArchiveEnvelopeVersion enum value.", v6, 8u);
    }
  }

  else
  {
    *(a1 + 33) = a2;
  }

  return v3 < 2;
}

uint64_t _REArchiveOperationSetArchiveCompressionLevel(uint64_t result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
  }

  *(result + 16) = a2;
  return result;
}

ArchiveStats::Package *archiveOperationArchiveToURL(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 24) path];
  v7 = [v6 UTF8String];

  v8 = [a2 path];
  v9 = [v8 UTF8String];

  if (*a1)
  {
    if (*(a1 + 32))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [*a1 setTotalUnitCount:v10];
    [*a1 setCompletedUnitCount:0];
    v11 = *a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 33);

  return archiveInternal(v7, v9, v12, v11, a3);
}

uint64_t archiveOperationUnarchiveToURL(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1[3] path];
  v7 = [v6 UTF8String];

  v8 = [a2 path];
  v9 = [v8 UTF8String];

  if (*a1)
  {
    [*a1 setTotalUnitCount:0];
    [*a1 setCompletedUnitCount:0];
  }

  v10 = *(a1 + 32);
  v12[0] = *(a1 + 8);
  if (v12[0] == 1)
  {
    v13 = a1[2];
  }

  return unarchiveInternal(v7, v9, v10, v12, *a1, a3);
}

ArchiveStats::Package *archiveInternal(char *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v9 = a4;
  qword_1EE1C4A88 = a5;
  if (a5)
  {
    _MergedGlobals_586[0] = 0;
    qword_1EE1C4A90 = a1;
    qword_1EE1C4A98 = a2;
    qword_1EE1C4AA8 = 0;
    ftw(a1, ArchiveStats::GetDirectoryEntrySize, 1);
    qword_1EE1C4AA0 = qword_1EE1C4AA8;
  }

  v10 = RERealityArchiveArchiveFromDirectoryWithEnvelope(a1, a2, v6);
  ArchiveStats::Package::Stop(v10);
  if ((v10 & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = a2;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Error archiving file: %s", &v13, 0xCu);
    }
  }

  return v10;
}

uint64_t unarchiveInternal(char *a1, re *a2, int a3, unsigned __int8 *a4, void *a5, uint64_t a6)
{
  v125 = *MEMORY[0x1E69E9840];
  v12 = a5;
  qword_1EE1C4A88 = a6;
  if (a6)
  {
    _MergedGlobals_586[0] = 1;
    qword_1EE1C4A90 = a1;
    qword_1EE1C4A98 = a2;
    stat(a1, &v121);
    qword_1EE1C4AA0 = v121.st_size;
  }

  v13 = RERealityArchiveCreateByOpeningFileAtPath(a1, 0);
  if (v13)
  {
    v14 = v13;
    v15 = RERealityArchiveUnarchiveToDirectory(v13, a2);

    ArchiveStats::Package::Stop(v16);
    if (v15)
    {
      goto LABEL_142;
    }

    goto LABEL_32;
  }

  v17 = *a4;
  if (v17)
  {
    v110 = *(a4 + 1);
  }

  v115 = a3;
  obj = a5;
  v18 = v12;
  if (qword_1EE1C4A88)
  {
    qword_1EE1C4AB0 = mach_absolute_time();
    qword_1EE1C4AB8 = 0;
  }

  BOMCopierNew();
  v19 = MEMORY[0x1E695DF90];
  v20 = *MEMORY[0x1E695E4D0];
  *&buf = @"copyResources";
  *(&buf + 1) = @"extractPKZip";
  __dst.__r_.__value_.__r.__words[0] = v20;
  __dst.__r_.__value_.__l.__size_ = v20;
  v123 = @"sequesterResources";
  __dst.__r_.__value_.__r.__words[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__dst forKeys:&buf count:3];
  v22 = [v19 dictionaryWithDictionary:v21];

  v114 = v12;
  if (v18)
  {
    v111 = v17;
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
    v25 = [v23 enumeratorAtPath:v24];

    v119 = 0u;
    v120 = 0u;
    *__p = 0u;
    v118 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:__p objects:&v121 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v118;
      do
      {
        v31 = v28;
        do
        {
          if (*v118 != v30)
          {
            objc_enumerationMutation(v26);
          }

          --v31;
        }

        while (v31);
        v29 += v28;
        v28 = [v26 countByEnumeratingWithState:__p objects:&v121 count:16];
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    [v18 setTotalUnitCount:{objc_msgSend(v18, "totalUnitCount") + v29}];
    BOMCopierSetUserData();
    BOMCopierSetCopyFileFinishedHandler();

    v12 = v114;
    v17 = v111;
  }

  if (v17)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v110];
    [v22 setValue:v32 forKey:@"zlibCompressionLevel"];
  }

  v33 = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (qword_1EE1C4A88)
  {
    qword_1EE1C4AB8 = mach_absolute_time();
  }

  if (!v33 && v115)
  {
    v35 = v18;
    v36 = strlen(a2);
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_144:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v36;
    if (v36)
    {
      memcpy(&__dst, a2, v36);
    }

    __dst.__r_.__value_.__s.__data_[v37] = 0;
    v40 = std::string::append(&__dst, "/assets/");
    if (qword_1EE1C4A88)
    {
      qword_1EE1C4AD0 = 0x400000000;
      qword_1EE1C4AE0 = 0;
      *&dword_1EE1C4AE8 = 0;
      qword_1EE1C4AD8 = 0;
      v40 = mach_absolute_time();
      qword_1EE1C4AC0 = v40;
      qword_1EE1C4AC8 = 0;
    }

    v41 = SharedContext::instance(v40);
    v42 = v35;
    std::mutex::lock((v41 + 152));
    v43 = *(qword_1EE1C4A80 + 216);
    *(qword_1EE1C4A80 + 216) = 0;

    v44 = qword_1EE1C4A80;
    atomic_store(0, (qword_1EE1C4A80 + 64));
    atomic_store(0, (v44 + 72));
    atomic_store(0, (v44 + 80));
    global_queue = dispatch_get_global_queue(0, 0);
    *(v44 + 232) = global_queue;
    *(v44 + 304) = v44;
    *(v44 + 320) = 0;
    *(v44 + 312) = RECompressionCreate(global_queue);
    std::string::operator=(v41, &__dst);
    *(v41 + 56) = 0x400000000;
    objc_storeStrong((v41 + 216), obj);
    if (*(v41 + 23) >= 0)
    {
      v46 = v41;
    }

    else
    {
      v46 = *v41;
    }

    v47 = opendir(v46);
    if (v47)
    {
      v48 = v47;
      obja = v42;
      v49 = readdir(v47);
      v50 = v48;
      if (v49)
      {
        v116 = v48;
        while (1)
        {
          d_name = v49->d_name;
          if (v49->d_name[0] != 46 || v49->d_name[1] && (v49->d_name[1] != 46 || v49->d_name[2]))
          {
            break;
          }

LABEL_114:
          v49 = readdir(v50);
          if (!v49)
          {
            goto LABEL_128;
          }
        }

        if (*(v41 + 23) >= 0)
        {
          v52 = *(v41 + 23);
        }

        else
        {
          v52 = *(v41 + 8);
        }

        v53 = strlen(v49->d_name);
        if (v52 + v53 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_144;
        }

        v54 = v53;
        if (v52 + v53 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        *&v118 = 0;
        __p[0] = 0;
        BYTE7(v118) = v52 + v53;
        if (v52)
        {
          if (*(v41 + 23) >= 0)
          {
            v55 = v41;
          }

          else
          {
            v55 = *v41;
          }

          memmove(__p, v55, v52);
        }

        v56 = __p + v52;
        if (v54)
        {
          memmove(v56, d_name, v54);
        }

        v56[v54] = 0;
        if (SBYTE7(v118) < 0)
        {
          std::string::__init_copy_ctor_external(&v121, __p[0], __p[1]);
        }

        else
        {
          *&v121.st_dev = *__p;
          *&v121.st_uid = v118;
        }

        if ((v121.st_gid & 0x80000000) == 0)
        {
          v57 = &v121;
        }

        else
        {
          v57 = *&v121.st_dev;
        }

        RECompressionQuery(v57, &v121.st_rdev, &v121.st_atimespec, &v121.st_rdev + 1, 0, 0);
        if ((v121.st_gid & 0x80000000) == 0)
        {
          v58 = &v121;
        }

        else
        {
          v58 = *&v121.st_dev;
        }

        v59 = strrchr(v58, 46);
        if (v59 && !strcmp(v59, ".arz"))
        {
          if (v121.st_rdev)
          {
            goto LABEL_81;
          }

          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v60 = CoreRELog::log;
          if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }

          if ((v121.st_gid & 0x80000000) == 0)
          {
            v82 = &v121;
          }

          else
          {
            v82 = *&v121.st_dev;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v82;
          v83 = v60;
          v84 = "Unexpected .arz extension on file which does not appear to be compressed: %s";
        }

        else
        {
          if (v121.st_rdev != 1)
          {
LABEL_81:
            v62 = *(v41 + 32);
            v61 = *(v41 + 40);
            if (v62 >= v61)
            {
              v64 = *(v41 + 24);
              v65 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v64) >> 3);
              v66 = v65 + 1;
              if (v65 + 1 > 0x666666666666666)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v67 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v64) >> 3);
              if (2 * v67 > v66)
              {
                v66 = 2 * v67;
              }

              if (v67 >= 0x333333333333333)
              {
                v68 = 0x666666666666666;
              }

              else
              {
                v68 = v66;
              }

              if (v68)
              {
                if (v68 <= 0x666666666666666)
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v71 = (8 * ((v62 - v64) >> 3));
              if (SHIBYTE(v121.st_gid) < 0)
              {
                std::string::__init_copy_ctor_external((8 * ((v62 - v64) >> 3)), *&v121.st_dev, v121.st_ino);
              }

              else
              {
                *v71 = *&v121.st_dev;
                *(8 * ((v62 - v64) >> 3) + 0x10) = *&v121.st_uid;
              }

              *(40 * v65 + 0x18) = *&v121.st_rdev;
              *(40 * v65 + 0x20) = v121.st_atimespec.tv_sec;
              v73 = *(v41 + 24);
              v72 = *(v41 + 32);
              v74 = v72 - v73;
              if (v72 != v73)
              {
                v75 = 0;
                v76 = -8 * ((v72 - v73) >> 3) + 40 * v65;
                do
                {
                  v77 = (v76 + v75);
                  v78 = (v73 + v75);
                  if (*(v73 + v75 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(v77, *v78, *(v78 + 1));
                  }

                  else
                  {
                    v79 = *v78;
                    v77->__r_.__value_.__r.__words[2] = *(v78 + 2);
                    *&v77->__r_.__value_.__l.__data_ = v79;
                  }

                  v80 = v76 + v75;
                  v81 = *(v73 + v75 + 24);
                  *(v80 + 32) = *(v73 + v75 + 32);
                  *(v80 + 24) = v81;
                  v75 += 40;
                }

                while (v73 + v75 != v72);
                do
                {
                  if (*(v73 + 23) < 0)
                  {
                    operator delete(*v73);
                  }

                  v73 += 40;
                }

                while (v73 != v72);
                v73 = *(v41 + 24);
              }

              v70 = v71 + 40;
              *(v41 + 24) = v71 - v74;
              *(v41 + 32) = v71 + 40;
              *(v41 + 40) = 0;
              v50 = v116;
              if (v73)
              {
                operator delete(v73);
              }
            }

            else
            {
              if (SHIBYTE(v121.st_gid) < 0)
              {
                std::string::__init_copy_ctor_external(*(v41 + 32), *&v121.st_dev, v121.st_ino);
              }

              else
              {
                v63 = *&v121.st_dev;
                *(v62 + 16) = *&v121.st_uid;
                *v62 = v63;
              }

              v69 = *&v121.st_rdev;
              *(v62 + 32) = v121.st_atimespec.tv_sec;
              *(v62 + 24) = v69;
              v70 = (v62 + 40);
            }

            *(v41 + 32) = v70;
            if (SHIBYTE(v121.st_gid) < 0)
            {
              operator delete(*&v121.st_dev);
            }

            if (SBYTE7(v118) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_114;
          }

          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v60 = CoreRELog::log;
          if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
LABEL_79:

            goto LABEL_81;
          }

          if ((v121.st_gid & 0x80000000) == 0)
          {
            v85 = &v121;
          }

          else
          {
            v85 = *&v121.st_dev;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v85;
          v83 = v60;
          v84 = "Missing .arz extension on file which appears to be compressed: %s";
        }

        _os_log_error_impl(&dword_1E1C61000, v83, OS_LOG_TYPE_ERROR, v84, &buf, 0xCu);
        goto LABEL_79;
      }

LABEL_128:
      closedir(v50);
      v42 = obja;
    }

    *(v41 + 48) = 0xCCCCCCCCCCCCCCCDLL * ((*(v41 + 32) - *(v41 + 24)) >> 3);
    v86 = *(v41 + 216);
    if (v86)
    {
      [v86 setTotalUnitCount:{*(v41 + 48) + objc_msgSend(*(v41 + 216), "totalUnitCount")}];
    }

    v88 = SharedContext::instance(v87);
    v89 = SharedContext::instance(v88);
    v90 = SharedContext::instance(v89) + 304;
    v91 = *(v89 + 32);
    *(v89 + 32) = 0;

    *(v89 + 30) = re::Job::init(void (*)(void *),void *)::{lambda(re::Job&)#1}::__invoke;
    *(v89 + 34) = ThreadContext::process;
    *(v89 + 35) = v90;
    v93 = SharedContext::instance(v92);
    v94 = SharedContext::instance(v93);
    v95 = SharedContext::instance(v94);
    v96 = SharedContext::instance(v95);
    v97 = SharedContext::instance(v96);
    DispatchJobManager::runAsync(v94 + 224, v95 + 240, 1u, (v97 + 80));
    v99 = SharedContext::instance(v98);
    v100 = SharedContext::instance(v99);
    v101 = (v100 + 80);
    while (atomic_load_explicit(v101, memory_order_acquire))
    {
      dispatch_sync(v99[29], &__block_literal_global_51);
    }

    v102 = SharedContext::instance(v100);
    v103 = *(v102 + 24);
    v104 = *(v102 + 32);
    v12 = v114;
    while (v104 != v103)
    {
      v105 = *(v104 - 17);
      v104 -= 5;
      if (v105 < 0)
      {
        operator delete(*v104);
      }
    }

    *(v102 + 32) = v103;
    v106 = qword_1EE1C4A80;
    RECompressionDestroy(*(qword_1EE1C4A80 + 312));
    *(v106 + 312) = 0;
    v107 = *(qword_1EE1C4A80 + 216);
    *(qword_1EE1C4A80 + 216) = 0;

    std::mutex::unlock((v102 + 152));
    if (qword_1EE1C4A88)
    {
      qword_1EE1C4AC8 = mach_absolute_time();
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    ArchiveStats::Package::Stop(v108);
    goto LABEL_142;
  }

  ArchiveStats::Package::Stop(v34);
  if (!v33)
  {
LABEL_142:
    v39 = 1;
    goto LABEL_143;
  }

LABEL_32:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v38 = CoreRELog::log;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v121.st_dev = 136315138;
    *&v121.st_mode = a1;
    _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Error unarchiving file: %s", &v121, 0xCu);
  }

  v39 = 0;
LABEL_143:

  return v39;
}

void ArchiveStats::Package::Stop(ArchiveStats::Package *this)
{
  if (qword_1EE1C4A88)
  {
    if (_MergedGlobals_586[0] == 1)
    {
      qword_1EE1C4AA8 = 0;
      ftw(qword_1EE1C4A98, ArchiveStats::GetDirectoryEntrySize, 1);
      st_size = qword_1EE1C4AA8;
    }

    else
    {
      stat(qword_1EE1C4A98, &v17);
      st_size = v17.st_size;
    }

    v2 = qword_1EE1C4A88;
    if (qword_1EE1C4A88)
    {
      v3 = qword_1EE1C4AA0;
      v4 = qword_1EE1C4AA0;
      v5 = st_size;
      if (!st_size)
      {
        v5 = 1.0;
      }

      *(qword_1EE1C4A88 + 24) = 0;
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *v2 = v3;
      *(v2 + 8) = st_size;
      *(v2 + 16) = v4 / v5;
      v7 = qword_1EE1C4AB0;
      v6 = qword_1EE1C4AB8;
      v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
      {
        if (mach_timebase_info(&v17))
        {
          v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
          v11 = NAN;
          goto LABEL_13;
        }

        LODWORD(v9) = v17.st_dev;
        LODWORD(v10) = *&v17.st_mode;
        v8 = v9 / v10;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v8;
      }

      v11 = v8 * (v6 - v7);
LABEL_13:
      *(v2 + 24) = v11 / 1000000.0;
      *(v2 + 32) = qword_1EE1C4AE0 + qword_1EE1C4AD8 + dword_1EE1C4AE8;
      v13 = qword_1EE1C4AC0;
      v12 = qword_1EE1C4AC8;
      if (v8 < 0.0)
      {
        if (mach_timebase_info(&v17))
        {
          v16 = NAN;
LABEL_18:
          *(v2 + 40) = v16 / 1000000.0;
          qword_1EE1C4A88 = 0;
          return;
        }

        LODWORD(v14) = v17.st_dev;
        LODWORD(v15) = *&v17.st_mode;
        v8 = v14 / v15;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v8;
      }

      v16 = v8 * (v12 - v13);
      goto LABEL_18;
    }
  }
}

void FileFinished(uint64_t a1)
{
  v1 = BOMCopierUserData();
  [v1 setCompletedUnitCount:{objc_msgSend(v1, "completedUnitCount") + 1}];
  if ([v1 isCancelled])
  {
    BOMCopierCancelCopy();
  }
}

uint64_t SharedContext::instance(SharedContext *this)
{
  if (atomic_load_explicit(&qword_1EE1C4A78, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v4 = v5;
    v5[0] = SharedContext::_init;
    std::__call_once(&qword_1EE1C4A78, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<void (&)(void)>>);
  }

  return qword_1EE1C4A80;
}

double SharedContext::_init(SharedContext *this)
{
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 88) = 850045863;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 152) = 850045863;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = &unk_1F5D19820;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = "Unnamed";
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 328) = 0;
  *(v1 + 320) = 0;
  qword_1EE1C4A80 = v1;
  return result;
}

uint64_t re::Job::init(void (*)(void *),void *)::{lambda(re::Job&)#1}::__invoke(uint64_t a1)
{
  result = (*(a1 + 32))(*(a1 + 40));
  *a1 = 0;
  return result;
}

void *REMeshSceneComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

char *REMeshSceneComponentCopyInstances(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = re::MeshInstanceCollection::make(3);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 48);
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
        LODWORD(v4) = *(a1 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    do
    {
      v8 = *(a1 + 48) + 32 * v4;
      LODWORD(v51) = *(v8 + 4);
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v2 + 8), (v8 + 8), &v51);
      if (v7 <= v51 + 1)
      {
        v7 = (v51 + 1);
      }

      else
      {
        v7 = v7;
      }

      v9 = *(a1 + 64);
      if (v9 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(a1 + 48) + 32 * v4) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v4) = v9;
LABEL_20:
      ;
    }

    while (v4 != v3);
  }

  re::DynamicArray<re::StringID>::resize(v2 + 7, v7);
  re::DynamicArray<re::StringID>::resize(v2 + 12, v7);
  re::DynamicArray<re::GenericSRT<float>>::resize(v2 + 17, v7);
  v10 = *(a1 + 64);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = *(a1 + 48);
  do
  {
    v13 = *v12;
    v12 += 8;
    if (v13 < 0)
    {
      goto LABEL_36;
    }

    ++v11;
  }

  while (v10 != v11);
  v11 = *(a1 + 64);
LABEL_36:
  while (v11 != v10)
  {
    v14 = *(a1 + 48) + 32 * v11;
    v15 = *(v14 + 4);
    v16 = *(v2 + 9);
    if (v16 <= v15)
    {
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v46 = 789;
      v47 = 2048;
      v48 = v15;
      v49 = 2048;
      v50 = v16;
      _os_log_send_and_compose_impl(v34, &v42, &v51, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      v46 = 789;
      v47 = 2048;
      v48 = v15;
      v49 = 2048;
      v50 = v16;
      _os_log_send_and_compose_impl(v37, &v42, &v51, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
      _os_crash_msg();
      __break(1u);
LABEL_77:
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
      v48 = v10;
      v49 = 2048;
      v50 = v11;
      _os_log_send_and_compose_impl(v40, &v42, &v51, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
      _os_crash_msg();
      __break(1u);
    }

    re::StringID::operator=((*(v2 + 11) + 16 * v15), (v14 + 8));
    LODWORD(v17) = *(a1 + 64);
    if (v17 <= v11 + 1)
    {
      v17 = (v11 + 1);
    }

    else
    {
      v17 = v17;
    }

    while (v17 - 1 != v11)
    {
      v11 = (v11 + 1);
      if ((*(*(a1 + 48) + 32 * v11) & 0x80000000) != 0)
      {
        goto LABEL_36;
      }
    }

    v11 = v17;
  }

  v10 = *(a1 + 112);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_52;
  }

  v11 = 0;
  v18 = *(a1 + 96);
  do
  {
    v19 = *v18;
    v18 += 8;
    if (v19 < 0)
    {
      goto LABEL_52;
    }

    ++v11;
  }

  while (v10 != v11);
  v11 = *(a1 + 112);
LABEL_52:
  while (v11 != v10)
  {
    v20 = *(a1 + 96) + 32 * v11;
    v15 = *(v20 + 4);
    v16 = *(v2 + 14);
    if (v16 <= v15)
    {
      goto LABEL_73;
    }

    re::StringID::operator=((*(v2 + 16) + 16 * v15), (v20 + 8));
    LODWORD(v21) = *(a1 + 112);
    if (v21 <= v11 + 1)
    {
      v21 = (v11 + 1);
    }

    else
    {
      v21 = v21;
    }

    while (v21 - 1 != v11)
    {
      v11 = (v11 + 1);
      if ((*(*(a1 + 96) + 32 * v11) & 0x80000000) != 0)
      {
        goto LABEL_52;
      }
    }

    v11 = v21;
  }

  v22 = *(a1 + 160);
  if (v22)
  {
    v23 = 0;
    v24 = *(a1 + 144);
    while (1)
    {
      v25 = *v24;
      v24 += 20;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(a1 + 160);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 != v22)
  {
    while (1)
    {
      v26 = *(a1 + 144);
      v10 = *(v26 + 80 * v23 + 4);
      v11 = *(v2 + 19);
      if (v11 <= v10)
      {
        goto LABEL_77;
      }

      v27 = (v26 + 80 * v23);
      v28 = (*(v2 + 21) + 48 * v10);
      v29 = v27[1];
      v30 = v27[3];
      v28[1] = v27[2];
      v28[2] = v30;
      *v28 = v29;
      v31 = *(a1 + 160);
      if (v31 <= v23 + 1)
      {
        v31 = v23 + 1;
      }

      while (v31 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(*(a1 + 144) + 80 * v23) & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      LODWORD(v23) = v31;
LABEL_67:
      if (v23 == v22)
      {
        return v2;
      }
    }
  }

  return v2;
}

void *REMeshSceneComponentSetInstances(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 32);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 80);
  re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 128);
  HIDWORD(v24) = 0;
  v4 = a2[9];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5;
      if (v4 <= v5)
      {
        break;
      }

      re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(a1 + 32, &v24 + 1, (a2[11] + 16 * v5));
      v4 = HIDWORD(v24);
      v6 = a2[14];
      if (v6 <= HIDWORD(v24))
      {
        goto LABEL_15;
      }

      re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(a1 + 80, &v24 + 1, (a2[16] + 16 * HIDWORD(v24)));
      v4 = HIDWORD(v24);
      v6 = a2[19];
      if (v6 <= HIDWORD(v24))
      {
        goto LABEL_19;
      }

      v7 = a2[21];
      v34 = 0uLL;
      *&v35 = 0;
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (HIDWORD(v24) ^ (HIDWORD(v24) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (HIDWORD(v24) ^ (HIDWORD(v24) >> 30))) >> 27));
      re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1 + 128, &v24 + 1, v8 ^ (v8 >> 31), &v34);
      if (HIDWORD(v34) == 0x7FFFFFFF)
      {
        v9 = (v7 + 48 * v4);
        v10 = re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1 + 128, DWORD2(v34), v34);
        v11 = HIDWORD(v24);
        *(v10 + 4) = HIDWORD(v24);
        v12 = *v9;
        v13 = v9[2];
        *(v10 + 32) = v9[1];
        *(v10 + 48) = v13;
        *(v10 + 16) = v12;
        ++*(a1 + 168);
      }

      else
      {
        v11 = HIDWORD(v24);
      }

      v5 = v11 + 1;
      HIDWORD(v24) = v5;
      v4 = a2[9];
      if (v5 >= v4)
      {
        return re::ecs2::Component::markDirty(a1);
      }
    }

    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v4;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v4;
    v32 = 2048;
    v33 = v6;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v4;
    v32 = 2048;
    v33 = v6;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, const StringID *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
    *(v8 + 4) = *a2;
    result = re::StringID::StringID((v8 + 8), a3);
    ++*(a1 + 40);
  }

  return result;
}

void REMeshSceneComponentModifyInstances(uint64_t a1, uint64_t a2)
{
  v4 = REMeshSceneComponentCopyInstances(a1);
  (*(a2 + 16))(a2, v4);
  REMeshSceneComponentSetInstances(a1, v4);

  CFRelease(v4);
}

id REVFXAssetEnumerateBuiltInAssets(re *a1)
{
  VFXSceneClass = re::getVFXSceneClass(a1);
  if (VFXSceneClass)
  {
    v2 = [(objc_class *)VFXSceneClass builtinEffectIdentifiers];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "VFX framework is not loaded", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

id REVFXAssetGetBuiltInEffectsBundle(re *a1)
{
  VFXSceneClass = re::getVFXSceneClass(a1);
  if (VFXSceneClass)
  {
    v2 = [(objc_class *)VFXSceneClass vfxAssetsFrameworkBundle];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "VFX framework is not loaded", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

id REVFXGetLibraryURLForSystemName(void *a1)
{
  v1 = a1;
  VFXSceneClass = re::getVFXSceneClass(v1);
  if (VFXSceneClass)
  {
    v3 = [(objc_class *)VFXSceneClass vfxLibraryURLFor:v1];
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "VFX framework is not loaded", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t REVFXAssetGetAssetVersion(uint64_t a1)
{
  v1 = a1;
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v2 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v6);
  if (v1)
  {
    v3 = [*(v2 + 64) scene];
    v4 = v3;
    if (v3)
    {
      v1 = [v3 version];
    }

    else
    {
      v1 = 0;
    }
  }

  re::AssetHandle::~AssetHandle(v6);
  return v1;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VFXAsset>(re::VFXAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::VFXAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

void REVFXAssetEnumerateParameterInfos(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v28);
  v4 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v28);
  if (v4)
  {
    v5 = *(v4 + 64);
    v6 = [v5 scene];
    if (v6)
    {
      v20 = v6;
      v21 = v5;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = [v6 bindings];
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v23 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            v11 = [v10 userManual];
            v12 = [v10 identifier];
            v13 = [v10 objectName];
            v14 = [v10 bindingName];
            v15 = [v10 type];
            v16 = [v10 semantic];
            [v10 min];
            v18 = v17;
            [v10 max];
            v3[2](v3, v12, v13, v14, v15, v16, v11, v18, v19);
          }

          v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v8);
      }

      v6 = v20;
      v5 = v21;
    }
  }

  re::AssetHandle::~AssetHandle(v28);
}

void REVFXAssetEnumerateParameterInfosWithEnum(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v3 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v29);
  if (v3)
  {
    v4 = *(v3 + 64);
    v5 = [v4 scene];
    if (v5)
    {
      v19 = v5;
      v20 = v4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [v5 bindings];
      v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v24)
      {
        v22 = *v26;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v25 + 1) + 8 * i);
            v8 = [v7 userManual];
            v9 = [v7 enumName];
            v10 = [v7 enumCases];
            v11 = [v7 identifier];
            v12 = [v7 objectName];
            v13 = [v7 bindingName];
            v14 = [v7 type];
            v15 = [v7 semantic];
            [v7 min];
            v17 = v16;
            [v7 max];
            v23[2](v23, v11, v12, v13, v14, v15, v8, v9, v17, v18, v10);
          }

          v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v24);
      }

      v5 = v19;
      v4 = v20;
    }
  }

  re::AssetHandle::~AssetHandle(v29);
}

void REVFXAssetEnumerateParameterDescriptions(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v21);
  v4 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v21);
  if (v4)
  {
    v5 = *(v4 + 64);
    v6 = [v5 scene];
    if (v6)
    {
      v16 = v6;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [v6 bindings];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v12 identifier];
            v14 = [v12 objectName];
            v15 = [v12 bindingName];
            v3[2](v3, v13, v14, v15, [v12 type]);
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }

      v6 = v16;
    }
  }

  re::AssetHandle::~AssetHandle(v21);
}

void REVFXAssetFindParameterInfo(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, v24);
  v10 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v24);
  if (v10)
  {
    v11 = [*(v10 + 64) scene];
    v12 = v11;
    if (v11)
    {
      if (v8)
      {
        [v11 bindingOf:v7 named:v8];
      }

      else
      {
        [v11 firstBindingWithName:0];
      }
      v13 = ;
      v14 = v13;
      if (v13)
      {
        v23 = [v13 userManual];
        v15 = [v14 identifier];
        v16 = [v14 objectName];
        v17 = [v14 bindingName];
        v18 = [v14 type];
        v19 = [v14 semantic];
        [v14 min];
        v21 = v20;
        [v14 max];
        v9[2](v9, v15, v16, v17, v18, v19, v23, v21, v22);
      }
    }
  }

  re::AssetHandle::~AssetHandle(v24);
}

void REVFXAssetFindParameterInfoWithEnum(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, v27);
  v10 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v27);
  if (v10)
  {
    v11 = [*(v10 + 64) scene];
    v12 = v11;
    if (v11)
    {
      if (v8)
      {
        [v11 bindingOf:v7 named:v8];
      }

      else
      {
        [v11 firstBindingWithName:0];
      }
      v13 = ;
      v14 = v13;
      if (v13)
      {
        v26 = [v13 userManual];
        v25 = [v14 enumName];
        v15 = [v14 enumCases];
        v16 = [v14 identifier];
        [v14 objectName];
        v17 = v24 = v7;
        v18 = [v14 bindingName];
        v19 = [v14 type];
        v20 = [v14 semantic];
        [v14 min];
        v22 = v21;
        [v14 max];
        v9[2](v9, v16, v17, v18, v19, v20, v26, v25, v22, v23, v15);

        v7 = v24;
      }
    }
  }

  re::AssetHandle::~AssetHandle(v27);
}

void REVFXAssetFindParameterDescription(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, v18);
  v10 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v18);
  if (v10)
  {
    v11 = [*(v10 + 64) scene];
    v12 = v11;
    if (v11)
    {
      if (v8)
      {
        [v11 bindingOf:v7 named:v8];
      }

      else
      {
        [v11 firstBindingWithName:0];
      }
      v13 = ;
      v14 = v13;
      if (v13)
      {
        v15 = [v13 identifier];
        v16 = [v14 objectName];
        v17 = [v14 bindingName];
        v9[2](v9, v15, v16, v17, [v14 type]);
      }
    }
  }

  re::AssetHandle::~AssetHandle(v18);
}

void REVFXAssetEnumerateClientTextures(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v14);
  v4 = re::AssetHandle::blockUntilLoaded<re::VFXAsset>(v14);
  if (v4)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v6 = v5;
        VFXClientTextureAssetClass = re::getVFXClientTextureAssetClass(v5);
        if (VFXClientTextureAssetClass)
        {
          v8 = VFXClientTextureAssetClass;
          v9 = [(re *)v6 assets];
          v10 = [v9 rootNode];

          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __REVFXAssetEnumerateClientTextures_block_invoke;
          v11[3] = &unk_1E87227A8;
          v13 = v8;
          v12 = v3;
          [v10 enumerateHierarchyUsingBlock:v11];
        }
      }
    }
  }

  re::AssetHandle::~AssetHandle(v14);
}

void __REVFXAssetEnumerateClientTextures_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 asset];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v8 asset];
    v6 = *(a1 + 32);
    v7 = [v5 clientIdentifier];
    (*(v6 + 16))(v6, v7);
  }
}

void RECameraStreamManagerSetARKitPassthrough(uint64_t a1, void *a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, float a8)
{
  v11 = a2;
  v12 = a3;
  v20 = v11;
  v13 = v11;
  v19 = v12;
  v14 = v12;
  *(a1 + 1776) = a4;
  *(a1 + 1792) = a5;
  *(a1 + 1808) = a6;
  *(a1 + 1824) = a7;
  *(a1 + 1840) = a8;
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1848), &v20);
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1856), &v19);
  if (v19)
  {

    v19 = 0;
  }

  if (v20)
  {

    v20 = 0;
  }
}

void *REBallSocketJointComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REBallSocketJointComponentSetBodyA(uint64_t a1, uint64_t a2)
{
  re::ecs2::EntityHandle::operator=((a1 + 32), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBallSocketJointComponentSetBodyB(uint64_t a1, uint64_t a2)
{
  re::ecs2::EntityHandle::operator=((a1 + 56), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBallSocketJointComponentSetLocalAnchorPoseA(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 80) = a2;
  *(this + 96) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REBallSocketJointComponentSetLocalAnchorPoseB(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 112) = a2;
  *(this + 128) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

void *REHingeJointComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REHingeJointComponentSetBodyA(uint64_t a1, uint64_t a2)
{
  re::ecs2::EntityHandle::operator=((a1 + 32), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REHingeJointComponentSetBodyB(uint64_t a1, uint64_t a2)
{
  re::ecs2::EntityHandle::operator=((a1 + 56), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REHingeJointComponentSetLocalAnchorPoseA(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 80) = a2;
  *(this + 96) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REHingeJointComponentSetLocalAnchorPoseB(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 112) = a2;
  *(this + 128) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMeshSortingComponentGetSortGroupId(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 304))
  {
    v1 = 176;
  }

  return *(a1 + v1);
}

uint64_t RETimelineDefinitionCreateTimelineAsset(AssetService *a1, uint64_t a2)
{
  if (v5[1])
  {
    v2 = v5[0];
    if (v5[0])
    {
      v3 = (v5[0] + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

re::TimelineAsset *anonymous namespace::TimelineDefinition::assetHandle(uint64_t this, AssetService *a2, uint64_t a3)
{
  v5 = this;
  if (!a2[4].var0)
  {
    goto LABEL_19;
  }

  if (LOBYTE(a2[11].var0) != 1)
  {
    return re::AssetHandle::AssetHandle(v5, &a2[3]);
  }

  var0 = a2[6].var0;
  if (!var0)
  {
    var0 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a2[3]) + 8);
  }

  this = re::StringID::StringID(&v18, (var0 + 3));
  if (LOBYTE(a2[11].var0) == 1)
  {
    v7 = v18;
    if ((v18 ^ a2[12].var0) > 1)
    {
      v8 = 0;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      this = a2[13].var0;
      if (this == __s2)
      {
        v8 = 1;
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        this = strcmp(this, __s2);
        v8 = this == 0;
        if ((v7 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v18)
  {
  }

LABEL_17:
  if (v8)
  {
    return re::AssetHandle::AssetHandle(v5, &a2[3]);
  }

LABEL_19:
  v10 = a2[6].var0;
  if (!v10)
  {
    this = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a2[3]);
    if (this)
    {
      v10 = *(this + 8);
    }

    else
    {
      v10 = 0;
    }
  }

  if (LOBYTE(a2[11].var0) == 1)
  {
    v12 = &a2[12];
  }

  else
  {
    v13 = a2[6].var0;
    if (!v13)
    {
      v14 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a2[3]);
      if (v14)
      {
        v13 = *(v14 + 8);
      }

      else
      {
        v13 = 0;
      }
    }

    v12 = (v13 + 3);
  }

  re::StringID::operator=(v11 + 3, v12);
  result = re::AssetHelper::makeTimelineAsset(v11, v15);
  if (result)
  {
    v16 = result;
    v17 = re::TimelineAsset::assetType(result);
    return (*(*a3 + 424))(a3, v16, v17, 0, 0, 0);
  }

  else
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
  }

  return result;
}

uint64_t RETimelineDefinitionCreateFromTimeline(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v5);
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
  v7 = v5;
  v5 = 0uLL;
  v8 = v6;
  v6 = 0;
  re::AssetHandle::~AssetHandle(&v7);
  re::AssetHandle::~AssetHandle(&v5);
  return v3;
}

uint64_t RETimelineDefinitionGetTimelineType(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 > 0x3D)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t RETimelineDefinitionGetAnimationLayer(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  return *(v1 + 12);
}

_anonymous_namespace_ *RETimelineDefinitionSetAnimationLayer(_anonymous_namespace_::TimelineDefinition *a1, int a2)
{
  *(result + 3) = a2;
  return result;
}

_anonymous_namespace_ *anonymous namespace::TimelineDefinition::timelineAssetData(_anonymous_namespace_::TimelineDefinition *this)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = (this + 48);
  result = *(this + 6);
  if (result)
  {
    return result;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = atomic_load((v4 + 896));
    if (v5 == 2)
    {
      goto LABEL_7;
    }

    v6 = *(this + 4);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::loadNow(v6, 0);
LABEL_7:
  result = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((this + 24));
  if (result)
  {
    v7 = *(result + 1);
    v10[0] = &unk_1F5D29D28;
    v10[3] = v10;
    v11 = v8;
    v12[3] = v12;
    v12[0] = &unk_1F5D29D28;
    std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](v3, &v11);
    std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v11);
    std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v10);
    v9 = *(this + 3);
    if (v9)
    {

      *(this + 3) = 0;
    }

    *(this + 4) = 0;
    return *(this + 6);
  }

  return result;
}

uint64_t RETimelineDefinitionGetFillMode(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  return *(v1 + 16);
}

_anonymous_namespace_ *RETimelineDefinitionSetFillMode(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  *(result + 16) = a2;
  return result;
}

uint64_t RETimelineDefinitionGetName(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = a1 + 96;
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      v3 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
      if (v3)
      {
        v2 = *(v3 + 8);
      }

      else
      {
        v2 = 0;
      }
    }

    v1 = v2 + 24;
  }

  return *(v1 + 8);
}

void anonymous namespace::TimelineDefinition::setName(_anonymous_namespace_::TimelineDefinition *this, const char *__s2)
{
  v3 = this + 88;
  if (*(this + 88) != 1)
  {
    goto LABEL_12;
  }

  if (__s2)
  {
    v4 = *__s2;
    if (*__s2)
    {
      v5 = __s2[1];
      if (v5)
      {
        v6 = __s2 + 2;
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

  if ((*(this + 12) ^ (2 * v4)) > 1 || (v8 = *(this + 13), v8 != __s2) && (this = strcmp(v8, __s2), this))
  {
LABEL_12:
    v10 = 0;
    v11 = &str_67;
    v12[0] = 1;
    v13 = v10;
    v14 = v11;
    v10 = 0;
    v11 = &str_67;
    v9 = re::Optional<re::StringID>::operator=(v3, v12);
    if (v12[0] == 1)
    {
      if (v13)
      {
        if (v13)
        {
        }
      }

      v13 = 0;
      v14 = &str_67;
    }

    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

uint64_t RETimelineDefinitionGetTargetPath(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  if (*(v1 + 48))
  {
    return *(v1 + 56);
  }

  else
  {
    return v1 + 49;
  }
}

re::DynamicString *RETimelineDefinitionSetTargetPath(_anonymous_namespace_::TimelineDefinition *a1, const char *a2)
{
  v5[0] = a2;
  v5[1] = strlen(a2);
  return re::DynamicString::operator=((v3 + 40), v5);
}

uint64_t RETimelineDefinitionMakeAdditiveFromBaseTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  if (!v4)
  {
    v5 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
    if (v5)
    {
      v4 = *(v5 + 8);
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = *(v3 + 2);
  if (v6 != *(v4 + 8))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Unable to make additive animation from differing timeline types.";
LABEL_47:
      v28 = v9;
      v29 = 2;
LABEL_48:
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
    }

    goto LABEL_16;
  }

  switch(v6)
  {
    case 11:
      v7 = *(v3 + 10);
      v8 = *(v4 + 80);
      if (v7 != v8 && vabds_f32(v7, v8) >= (((fabsf(v7) + fabsf(v8)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 88) == 1 && *(v4 + 88) == 1 && *(v3 + 96) == 1 && *(v4 + 96) == 1 && (*(v3 + 104) & 1) == 0 && *(v4 + 104) != 1)
      {
        *buf = v3 + 88;
        *&buf[8] = v3 + 96;
        v123 = (v4 + 92);
        v124 = v4 + 100;
        v118 = buf;
        v119 = 2;
        v116 = &v123;
        v117 = 2;
        result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<float>(&v118, &v116, buf, 2uLL);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 12:
      v46 = *(v3 + 10);
      v47 = *(v4 + 80);
      if (v46 != v47 && vabds_f32(v46, v47) >= (((fabsf(v46) + fabsf(v47)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 88) == 1 && *(v4 + 88) == 1 && *(v3 + 104) == 1 && *(v4 + 104) == 1 && (*(v3 + 120) & 1) == 0 && *(v4 + 120) != 1)
      {
        *buf = v3 + 88;
        *&buf[8] = v3 + 104;
        v123 = (v4 + 96);
        v124 = v4 + 112;
        v118 = buf;
        v119 = 2;
        v116 = &v123;
        v117 = 2;
        result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<double>(&v118, &v116, buf, 2uLL);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 13:
      v60 = *(v3 + 10);
      v61 = *(v4 + 80);
      if (v60 != v61 && vabds_f32(v60, v61) >= (((fabsf(v60) + fabsf(v61)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 88) == 1 && *(v4 + 88) == 1 && *(v3 + 104) == 1 && *(v4 + 104) == 1 && (*(v3 + 120) & 1) == 0 && *(v4 + 120) != 1)
      {
        *buf = v3 + 88;
        *&buf[8] = v3 + 104;
        v123 = (v4 + 96);
        v124 = v4 + 112;
        v118 = buf;
        v119 = 2;
        v116 = &v123;
        v117 = 2;
        result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector2<float>>(&v118, &v116, buf, 2uLL);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 14:
      v42 = *(v3 + 10);
      v43 = *(v4 + 80);
      if (v42 != v43 && vabds_f32(v42, v43) >= (((fabsf(v42) + fabsf(v43)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 96) == 1 && *(v4 + 96) == 1 && *(v3 + 128) == 1 && *(v4 + 128) == 1 && (*(v3 + 160) & 1) == 0 && *(v4 + 160) != 1)
      {
        goto LABEL_402;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 15:
      v40 = *(v3 + 10);
      v41 = *(v4 + 80);
      if (v40 != v41 && vabds_f32(v40, v41) >= (((fabsf(v40) + fabsf(v41)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 96) == 1 && *(v4 + 96) == 1 && *(v3 + 128) == 1 && *(v4 + 128) == 1 && (*(v3 + 160) & 1) == 0 && *(v4 + 160) != 1)
      {
LABEL_402:
        *buf = v3 + 96;
        *&buf[8] = v3 + 128;
        v123 = (v4 + 112);
        v124 = v4 + 144;
        v118 = buf;
        v119 = 2;
        v116 = &v123;
        v117 = 2;
        result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector3<float>>(&v118, &v116, buf, 2uLL);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 16:
      v44 = *(v3 + 10);
      v45 = *(v4 + 80);
      if (v44 != v45 && vabds_f32(v44, v45) >= (((fabsf(v44) + fabsf(v45)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_413;
        }

        goto LABEL_318;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_409;
        }

        goto LABEL_169;
      }

      if (*(v3 + 96) == 1 && *(v4 + 96) == 1 && *(v3 + 128) == 1 && *(v4 + 128) == 1 && (*(v3 + 160) & 1) == 0 && *(v4 + 160) != 1)
      {
        *buf = v3 + 96;
        *&buf[8] = v3 + 128;
        v123 = (v4 + 112);
        v124 = v4 + 144;
        v118 = buf;
        v119 = 2;
        v116 = &v123;
        v117 = 2;
        result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Quaternion<float>>(&v118, &v116, buf, 2uLL);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_411;
      }

      goto LABEL_291;
    case 17:
      v81 = *(v3 + 10);
      v82 = *(v4 + 80);
      if (v81 == v82 || vabds_f32(v81, v82) < (((fabsf(v81) + fabsf(v82)) + 1.0) * 0.00001))
      {
        if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
        {
          if (CoreRELog::onceToken != -1)
          {
LABEL_409:
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

LABEL_169:
          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Cannot make additive animation from existing additive from-to-by animation.";
            goto LABEL_47;
          }
        }

        else
        {
          if (*(v3 + 96) == 1 && *(v4 + 96) == 1 && *(v3 + 160) == 1 && *(v4 + 160) == 1 && (*(v3 + 224) & 1) == 0 && *(v4 + 224) != 1)
          {
            *buf = v3 + 96;
            *&buf[8] = v3 + 160;
            v123 = (v4 + 112);
            v124 = v4 + 176;
            v118 = buf;
            v119 = 2;
            v116 = &v123;
            v117 = 2;
            result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::GenericSRT<float>>(&v118, &v116, buf, 2uLL);
            goto LABEL_383;
          }

          if (CoreRELog::onceToken != -1)
          {
LABEL_411:
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

LABEL_291:
          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Currently only supports from-to animations.";
            goto LABEL_47;
          }
        }
      }

      else
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_413:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

LABEL_318:
        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Cannot make additive animation from differing from-to-by durations.";
          goto LABEL_47;
        }
      }

      goto LABEL_16;
    case 18:
      v48 = *(v4 + 232);
      if (*(v3 + 29) != v48)
      {
        goto LABEL_205;
      }

      if (!v48)
      {
        goto LABEL_98;
      }

      v49 = *(v3 + 31);
      v50 = *(v4 + 248);
      v51 = 16 * v48;
      do
      {
        if (!re::StringID::operator==(v49, v50))
        {
LABEL_205:
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Cannot make additive animation from differing from' joints.";
            goto LABEL_47;
          }

          goto LABEL_16;
        }

        v49 += 2;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
LABEL_98:
      v52 = *(v4 + 272);
      if (*(v3 + 34) != v52)
      {
        goto LABEL_232;
      }

      if (v52)
      {
        v53 = *(v3 + 36);
        v54 = *(v4 + 288);
        v55 = 16 * v52;
        while (re::StringID::operator==(v53, v54))
        {
          v53 += 2;
          v54 += 2;
          v55 -= 16;
          if (!v55)
          {
            goto LABEL_103;
          }
        }

LABEL_232:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Cannot make additive animation from differing 'to' joints.";
          goto LABEL_47;
        }

        goto LABEL_16;
      }

LABEL_103:
      v56 = *(v4 + 312);
      if (*(v3 + 39) != v56)
      {
        goto LABEL_361;
      }

      if (v56)
      {
        v57 = *(v3 + 41);
        v58 = *(v4 + 328);
        v59 = 16 * v56;
        while (re::StringID::operator==(v57, v58))
        {
          v57 += 2;
          v58 += 2;
          v59 -= 16;
          if (!v59)
          {
            goto LABEL_108;
          }
        }

LABEL_361:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Cannot make additive animation from differing 'by' joints.";
          goto LABEL_47;
        }

        goto LABEL_16;
      }

LABEL_108:
      if (*(v3 + 88) == 1 && *(v4 + 88) == 1 && *(v3 + 120) == 1 && *(v4 + 120) == 1 && (*(v3 + 152) & 1) == 0 && *(v4 + 152) != 1)
      {
        if (*(v3 + 13) == *(v4 + 104) && *(v3 + 17) == *(v4 + 136))
        {
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Cannot make additive animations from differnt joint transform count.";
          goto LABEL_47;
        }
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
          *buf = 0;
          v27 = "Currently only supports from-to animations.";
          goto LABEL_47;
        }
      }

LABEL_16:

      return 0;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      goto LABEL_42;
    case 27:
      v83 = *(v3 + 19);
      v84 = *(v4 + 76);
      if (v83 != v84 && vabds_f32(v83, v84) >= (((fabsf(v83) + fabsf(v84)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v85 = *(v3 + 20);
      v86 = *(v4 + 80);
      if (v85 != v86 && vabds_f32(v85, v86) >= (((fabsf(v85) + fabsf(v86)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v87 = *(v3 + 13);
      if (!v87)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        *buf = *(v3 + 15);
        *&buf[8] = v87;
        v114 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v114;
        result = re::AnimationHelper::makeAdditiveForValues<float>(buf, &v123, *buf, v87);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 28:
      v35 = *(v3 + 19);
      v36 = *(v4 + 76);
      if (v35 != v36 && vabds_f32(v35, v36) >= (((fabsf(v35) + fabsf(v36)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v37 = *(v3 + 20);
      v38 = *(v4 + 80);
      if (v37 != v38 && vabds_f32(v37, v38) >= (((fabsf(v37) + fabsf(v38)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v39 = *(v3 + 13);
      if (!v39)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        *buf = *(v3 + 15);
        *&buf[8] = v39;
        v110 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v110;
        result = re::AnimationHelper::makeAdditiveForValues<double>(buf, &v123, *buf, v39);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 29:
      v62 = *(v3 + 19);
      v63 = *(v4 + 76);
      if (v62 != v63 && vabds_f32(v62, v63) >= (((fabsf(v62) + fabsf(v63)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v64 = *(v3 + 20);
      v65 = *(v4 + 80);
      if (v64 != v65 && vabds_f32(v64, v65) >= (((fabsf(v64) + fabsf(v65)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v66 = *(v3 + 13);
      if (!v66)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        *buf = *(v3 + 15);
        *&buf[8] = v66;
        v111 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v111;
        result = re::AnimationHelper::makeAdditiveForValues<re::Vector2<float>>(buf, &v123, *buf, v66);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 30:
      v67 = *(v3 + 19);
      v68 = *(v4 + 76);
      if (v67 != v68 && vabds_f32(v67, v68) >= (((fabsf(v67) + fabsf(v68)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v69 = *(v3 + 20);
      v70 = *(v4 + 80);
      if (v69 != v70 && vabds_f32(v69, v70) >= (((fabsf(v69) + fabsf(v70)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v71 = *(v3 + 13);
      if (!v71)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        goto LABEL_379;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 31:
      v77 = *(v3 + 19);
      v78 = *(v4 + 76);
      if (v77 != v78 && vabds_f32(v77, v78) >= (((fabsf(v77) + fabsf(v78)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v79 = *(v3 + 20);
      v80 = *(v4 + 80);
      if (v79 != v80 && vabds_f32(v79, v80) >= (((fabsf(v79) + fabsf(v80)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v71 = *(v3 + 13);
      if (!v71)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
LABEL_379:
        *buf = *(v3 + 15);
        *&buf[8] = v71;
        v112 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v112;
        result = re::AnimationHelper::makeAdditiveForValues<re::Vector3<float>>(buf, &v123, *buf, v71);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 32:
      v72 = *(v3 + 19);
      v73 = *(v4 + 76);
      if (v72 != v73 && vabds_f32(v72, v73) >= (((fabsf(v72) + fabsf(v73)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v74 = *(v3 + 20);
      v75 = *(v4 + 80);
      if (v74 != v75 && vabds_f32(v74, v75) >= (((fabsf(v74) + fabsf(v75)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v76 = *(v3 + 13);
      if (!v76)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        *buf = *(v3 + 15);
        *&buf[8] = v76;
        v113 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v113;
        result = re::AnimationHelper::makeAdditiveForValues<re::Quaternion<float>>(buf, &v123, *buf, v76);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 33:
      v30 = *(v3 + 19);
      v31 = *(v4 + 76);
      if (v30 != v31 && vabds_f32(v30, v31) >= (((fabsf(v30) + fabsf(v31)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_412;
        }

        goto LABEL_321;
      }

      v32 = *(v3 + 20);
      v33 = *(v4 + 80);
      if (v32 != v33 && vabds_f32(v32, v33) >= (((fabsf(v32) + fabsf(v33)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_420;
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_410;
        }

        goto LABEL_230;
      }

      v34 = *(v3 + 13);
      if (!v34)
      {
        if (CoreRELog::onceToken != -1)
        {
          goto LABEL_425;
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
      {
        *buf = *(v3 + 15);
        *&buf[8] = v34;
        v109 = *(v4 + 104);
        v123 = *(v4 + 120);
        v124 = v109;
        result = re::AnimationHelper::makeAdditiveForValues<re::GenericSRT<float>>(buf, &v123, *buf, v34);
        goto LABEL_383;
      }

      if (CoreRELog::onceToken != -1)
      {
        goto LABEL_419;
      }

      goto LABEL_180;
    case 34:
      v88 = *(v4 + 168);
      if (*(v3 + 21) != v88)
      {
        goto LABEL_209;
      }

      if (!v88)
      {
        goto LABEL_187;
      }

      v89 = *(v3 + 23);
      v90 = *(v4 + 184);
      v91 = 16 * v88;
      do
      {
        if (!re::StringID::operator==(v89, v90))
        {
LABEL_209:
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Cannot make additive sampled animation from non-matching joints.";
            goto LABEL_47;
          }

          goto LABEL_16;
        }

        v89 += 2;
        v90 += 2;
        v91 -= 16;
      }

      while (v91);
LABEL_187:
      v92 = *(v3 + 13);
      if (v92)
      {
        v93 = 0;
        v94 = (*(v3 + 15) + 8);
        while (1)
        {
          v95 = *v94;
          v94 += 3;
          if (v88 != v95)
          {
            break;
          }

          if (v92 == ++v93)
          {
            goto LABEL_191;
          }
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v104 = CoreRELog::log;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v105 = *(re::DynamicArray<re::SkeletalPoseAssetData>::operator[](v3 + 88, v93) + 8);
          *buf = 134218496;
          *&buf[4] = v93;
          *&buf[12] = 2048;
          *&buf[14] = v88;
          v121 = 2048;
          v122 = v105;
          v106 = "Joint transform for frame %zu do not match joint count (%zu != %zu).";
LABEL_401:
          _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, v106, buf, 0x20u);
        }

        goto LABEL_360;
      }

LABEL_191:
      v96 = *(v4 + 104);
      if (v96)
      {
        v97 = 0;
        v98 = (*(v4 + 120) + 8);
        while (1)
        {
          v99 = *v98;
          v98 += 3;
          if (v88 != v99)
          {
            break;
          }

          if (v96 == ++v97)
          {
            goto LABEL_195;
          }
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v107 = *(re::DynamicArray<re::AssetHandle>::operator[](v4 + 88, v97) + 8);
          *buf = 134218496;
          *&buf[4] = v97;
          *&buf[12] = 2048;
          *&buf[14] = v88;
          v121 = 2048;
          v122 = v107;
          v27 = "Base joint transform for frame %zu do not match joint count (%zu != %zu).";
LABEL_373:
          v28 = v9;
          v29 = 32;
          goto LABEL_48;
        }

        goto LABEL_16;
      }

LABEL_195:
      v100 = *(v3 + 19);
      v101 = *(v4 + 76);
      if (v100 != v101 && vabds_f32(v100, v101) >= (((fabsf(v100) + fabsf(v101)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_412:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        goto LABEL_321;
      }

      v102 = *(v3 + 20);
      v103 = *(v4 + 80);
      if (v102 != v103 && vabds_f32(v102, v103) >= (((fabsf(v102) + fabsf(v103)) + 1.0) * 0.00001))
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_420:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        goto LABEL_336;
      }

      if (*(v3 + 73) != *(v4 + 73))
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_410:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        goto LABEL_230;
      }

      if (!v92)
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_425:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        goto LABEL_351;
      }

      if ((*(v3 + 72) & 1) != 0 || *(v4 + 72) == 1)
      {
        if (CoreRELog::onceToken != -1)
        {
LABEL_419:
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        goto LABEL_180;
      }

      *buf = *(v3 + 15);
      *&buf[8] = v92;
      v123 = *(v4 + 120);
      v124 = v96;
      result = re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(buf, &v123, *buf, v92);
LABEL_383:
      *(v3 + 72) = result;
      return result;
    default:
      if (v6 != 59)
      {
LABEL_42:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Unsupported additive animation type.";
          goto LABEL_47;
        }

        goto LABEL_16;
      }

      v11 = *(v4 + 144);
      if (*(v3 + 18) != v11)
      {
        goto LABEL_213;
      }

      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *(v3 + 20);
      v13 = *(v4 + 160);
      v14 = 16 * v11;
      do
      {
        if (!re::StringID::operator==(v12, v13))
        {
LABEL_213:
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Cannot make additive sampled animation from non-matching weights.";
            goto LABEL_47;
          }

          goto LABEL_16;
        }

        v12 += 2;
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
LABEL_24:
      v15 = *(v3 + 13);
      if (v15)
      {
        v16 = 0;
        v17 = (*(v3 + 15) + 8);
        while (1)
        {
          v18 = *v17;
          v17 += 3;
          if (v11 != v18)
          {
            break;
          }

          if (v15 == ++v16)
          {
            goto LABEL_28;
          }
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v104 = CoreRELog::log;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v115 = *(re::DynamicArray<re::SkeletalPoseAssetData>::operator[](v3 + 88, v16) + 8);
          *buf = 134218496;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          v121 = 2048;
          v122 = v115;
          v106 = "Weights for frame %zu do not match weight count (%zu != %zu).";
          goto LABEL_401;
        }

LABEL_360:

        return 0;
      }

LABEL_28:
      v19 = *(v4 + 104);
      if (v19)
      {
        v20 = 0;
        v21 = (*(v4 + 120) + 8);
        while (1)
        {
          v22 = *v21;
          v21 += 3;
          if (v11 != v22)
          {
            break;
          }

          if (v19 == ++v20)
          {
            goto LABEL_32;
          }
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v108 = *(re::DynamicArray<re::AssetHandle>::operator[](v4 + 88, v20) + 8);
          *buf = 134218496;
          *&buf[4] = v20;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          v121 = 2048;
          v122 = v108;
          v27 = "Base weights for frame %zu do not match weight count (%zu != %zu).";
          goto LABEL_373;
        }
      }

      else
      {
LABEL_32:
        v23 = *(v3 + 19);
        v24 = *(v4 + 76);
        if (v23 == v24 || vabds_f32(v23, v24) < (((fabsf(v23) + fabsf(v24)) + 1.0) * 0.00001))
        {
          v25 = *(v3 + 20);
          v26 = *(v4 + 80);
          if (v25 == v26 || vabds_f32(v25, v26) < (((fabsf(v25) + fabsf(v26)) + 1.0) * 0.00001))
          {
            if (*(v3 + 73) == *(v4 + 73))
            {
              if (v15)
              {
                if ((*(v3 + 72) & 1) == 0 && *(v4 + 72) != 1)
                {
                  *buf = *(v3 + 15);
                  *&buf[8] = v15;
                  v123 = *(v4 + 120);
                  v124 = v19;
                  result = re::AnimationHelper::makeAdditiveForValues<re::BlendShapeWeightsAssetData>(buf, &v123, *buf, v15);
                  goto LABEL_383;
                }

                if (CoreRELog::onceToken != -1)
                {
                  goto LABEL_419;
                }

LABEL_180:
                v9 = CoreRELog::log;
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v27 = "Cannot make additive sampled animation from existing additive animation.";
                  goto LABEL_47;
                }
              }

              else
              {
                if (CoreRELog::onceToken != -1)
                {
                  goto LABEL_425;
                }

LABEL_351:
                v9 = CoreRELog::log;
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v27 = "Cannot make additive sampled animation from empty animation.";
                  goto LABEL_47;
                }
              }
            }

            else
            {
              if (CoreRELog::onceToken != -1)
              {
                goto LABEL_410;
              }

LABEL_230:
              v9 = CoreRELog::log;
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v27 = "Cannot make additive sampled animation from differing interpolation settings.";
                goto LABEL_47;
              }
            }
          }

          else
          {
            if (CoreRELog::onceToken != -1)
            {
              goto LABEL_420;
            }

LABEL_336:
            v9 = CoreRELog::log;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v27 = "Cannot make additive sampled animation from differing start times.";
              goto LABEL_47;
            }
          }
        }

        else
        {
          if (CoreRELog::onceToken != -1)
          {
            goto LABEL_412;
          }

LABEL_321:
          v9 = CoreRELog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v27 = "Cannot make additive sampled animation from differing intervals.";
            goto LABEL_47;
          }
        }
      }

      goto LABEL_16;
  }
}