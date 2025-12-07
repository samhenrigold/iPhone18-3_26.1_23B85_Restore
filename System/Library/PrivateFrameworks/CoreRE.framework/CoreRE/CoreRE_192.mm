uint64_t re::MeshDefinition::attributes(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1 + 8 * a2;
  if (!*(v2 + 76))
  {
    return 0;
  }

  v3 = *(v2 + 72);
  v4 = *(a1 + 56);
  if (v4 <= v3)
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
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 64) + 40 * v3;
}

unint64_t re::copyPositionAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexPosition"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexPosition.cstr())", "copyPositionAttribute", 773);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexPosition.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesThreeComponents(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 8);
  if (*(a1 + 8) > 0x19u)
  {
    if (v6 == 26)
    {
      result = 8 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
        goto LABEL_31;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v17 = *a2++;
        _S0 = v17;
        __asm { FCVT            H1, S0 }

        *a4 = _H1;
        _S1 = DWORD1(v17);
        __asm { FCVT            H1, S1 }

        *(a4 + 2) = _S1;
        _S0 = DWORD2(v17);
        __asm { FCVT            H0, S0 }

        *(a4 + 4) = _S0;
        a4 += 8;
        --a3;
      }

      while (a3);
    }

    else
    {
      if (v6 != 30)
      {
        goto LABEL_32;
      }

      result = 12 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
LABEL_29:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 595, *v5, a5, result);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v27, v32, v36);
        __break(1u);
LABEL_30:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 655, *v5, a5, result);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v28, v33, v37);
        __break(1u);
LABEL_31:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 615, *v5, a5, result);
        _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v29, v34, v38);
        __break(1u);
        goto LABEL_32;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v12 = *a2++;
        *a4 = v12;
        *(a4 + 8) = DWORD2(v12);
        a4 += 12;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    if (v6 != 8)
    {
      if (v6 == 23)
      {
        result = 8 * a3;
        if (!a5)
        {
          return result;
        }

        if (result >= a5)
        {
          if (a3)
          {
            do
            {
              v8 = *a2++;
              v9 = v8;
              v9.i32[3] = 0;
              v10 = vmaxnmq_f32(v9, xmmword_1E30DA660);
              v10.i32[3] = 0;
              v11 = vminnmq_f32(v10, xmmword_1E304F3C0);
              *(a4 + 2) = llroundf(vmuls_lane_f32(32767.0, *v11.f32, 1));
              *a4 = llroundf(32767.0 * v11.f32[0]);
              *(a4 + 4) = llroundf(vmuls_lane_f32(32767.0, v11, 2));
              a4 += 8;
              --a3;
            }

            while (a3);
            return result;
          }

          return 0;
        }

        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 635, *v5, a5, 8 * a3);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v26, v31, v35);
        __break(1u);
        goto LABEL_29;
      }

LABEL_32:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "false", "copyAttributeValuesThreeComponents", 669, v6);
      result = _os_crash("assertion failure: (false) Unexpected vertex format %d", v30);
      __break(1u);
      return result;
    }

    result = 4 * a3;
    if (!a5)
    {
      return result;
    }

    if (result < a5)
    {
      goto LABEL_30;
    }

    if (!a3)
    {
      return 0;
    }

    do
    {
      v13 = *a2++;
      v14 = v13;
      v14.i32[3] = 0;
      v15 = vmaxnmq_f32(v14, 0);
      v15.i32[3] = 0;
      v16 = vminnmq_f32(v15, xmmword_1E304F3C0);
      *(a4 + 1) = llroundf(vmuls_lane_f32(255.0, *v16.f32, 1));
      *a4 = llroundf(255.0 * v16.f32[0]);
      *(a4 + 2) = llroundf(vmuls_lane_f32(255.0, v16, 2));
      a4 += 4;
      --a3;
    }

    while (a3);
  }

  return result;
}

unint64_t re::copyNormalAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexNormal"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexNormal.cstr())", "copyNormalAttribute", 780);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexNormal.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::copyTangentAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexTangent"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexTangent.cstr())", "copyTangentAttribute", 787);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexTangent.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::copyBitangentAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexBitangent"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexBitangent.cstr())", "copyBitangentAttribute", 794);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexBitangent.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::copyUVAttribute(const char **a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexUV"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexUV.cstr())", "copyUVAttribute", 801);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexUV.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesTwoComponents(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (*(a1 + 8) != 29)
  {
    re::internal::assertLog(5, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kFloat2", "copyAttributeValuesTwoComponents", 579, *(a1 + 8));
    result = _os_crash("assertion failure: (attributeDescriptor.format == mtl::VertexFormat::kFloat2) Unexpected vertex format %d", v8);
    __break(1u);
    goto LABEL_8;
  }

  v5 = a1;
  result = 8 * a3;
  if (!a5)
  {
    return result;
  }

  if (result < a5)
  {
LABEL_8:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeVectors", 518, *v5, a5, result);
    result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v9, v10, v11);
    __break(1u);
    return result;
  }

  for (; a3; --a3)
  {
    v7 = *a2++;
    *a4++ = v7;
  }

  return result;
}

unint64_t re::copyColorAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexColor"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())", "copyColorAttribute", 808);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::copyColorAttribute(const char **a1, float32x4_t *a2, uint64_t a3, float16x4_t *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexColor"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())", "copyColorAttribute", 815);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesFourComponents(uint64_t a1, float32x4_t *a2, uint64_t a3, float16x4_t *a4, unint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 8);
  if (*(a1 + 8) > 0x1Au)
  {
    if (v6 == 27)
    {
      result = 8 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
        goto LABEL_33;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v20 = *a2++;
        *a4++ = vcvt_f16_f32(v20);
        --a3;
      }

      while (a3);
    }

    else
    {
      if (v6 != 31)
      {
        goto LABEL_34;
      }

      result = 16 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
LABEL_31:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 685, *v5, a5, result);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v22, v27, v31);
        __break(1u);
LABEL_32:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 748, *v5, a5, result);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v23, v28, v32);
        __break(1u);
LABEL_33:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 706, *v5, a5, result);
        _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v24, v29, v33);
        __break(1u);
        goto LABEL_34;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v16 = *a2++;
        *a4->i8 = v16;
        a4 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    if (v6 != 9)
    {
      if (v6 == 24)
      {
        result = 8 * a3;
        if (!a5)
        {
          return result;
        }

        if (result >= a5)
        {
          if (a3)
          {
            __asm
            {
              FMOV            V0.4S, #-1.0
              FMOV            V1.4S, #1.0
            }

            v14 = vdupq_n_s32(0x46FFFE00u);
            do
            {
              v15 = *a2++;
              *a4++ = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q0), _Q1), v14))));
              --a3;
            }

            while (a3);
            return result;
          }

          return 0;
        }

        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 727, *v5, a5, 8 * a3);
        result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v21, v26, v30);
        __break(1u);
        goto LABEL_31;
      }

LABEL_34:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "false", "copyAttributeValuesFourComponents", 763, v6);
      result = _os_crash("assertion failure: (false) Unexpected vertex format %d", v25);
      __break(1u);
      return result;
    }

    result = 4 * a3;
    if (!a5)
    {
      return result;
    }

    if (result < a5)
    {
      goto LABEL_32;
    }

    if (!a3)
    {
      return 0;
    }

    __asm { FMOV            V1.4S, #1.0 }

    v18 = vdupq_n_s32(0x437F0000u);
    do
    {
      v19 = *a2++;
      a4->i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v19, 0), _Q1), v18)))), 0).u32[0];
      a4 = (a4 + 4);
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t re::copySkinWeightsAttribute(uint64_t a1, const void *a2, size_t a3, void *a4, size_t a5)
{
  v10 = *a1;
  if (strcmp(*a1, "skinnedAnimationWeights"))
  {
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationWeights.cstr())", "copySkinWeightsAttribute", 840);
    _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationWeights.cstr())) ");
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(a1 + 8);
  if (v12 != 28)
  {
LABEL_8:
    re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kFloat", "copyAttributeFloatValues", 552, v12);
    _os_crash("assertion failure: (attributeDescriptor.format == mtl::VertexFormat::kFloat) Unexpected vertex format %d", v14);
    __break(1u);
    goto LABEL_9;
  }

  a3 *= 4;
  if (!a5)
  {
    return a3;
  }

  if (a3 >= a5)
  {
    memcpy(a4, a2, a3);
    return a3;
  }

LABEL_9:
  re::internal::assertLog(7, v11, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, v10, a5, a3);
  result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v15, v16, v17);
  __break(1u);
  return result;
}

uint64_t re::copySkinJointIndicesAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  if (!strcmp(*a1, "skinnedAnimationJointIndices") || !strcmp(v10, "skinnedAnimationRemappedJointIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationJointIndices.cstr()) || 0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())", "copySkinJointIndicesAttribute", 848);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationJointIndices.cstr()) || 0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())) ");
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::copyAttributeInt32Values(uint64_t a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  if (*(a1 + 8) == 32)
  {
    v5 = 4 * a3;
    if (!a5)
    {
      return v5;
    }

    if (v5 >= a5)
    {
      memcpy(__dst, a2, 4 * a3);
      return v5;
    }
  }

  else
  {
    re::internal::assertLog(5, a2, a3, __dst, a5, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kInt", "copyAttributeInt32Values", 561, *(a1 + 8));
    a1 = _os_crash("assertion failure: (attributeDescriptor.format == mtl::VertexFormat::kInt) Unexpected vertex format %d", v7);
    __break(1u);
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, v5);
  result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v8, v9, v10);
  __break(1u);
  return result;
}

uint64_t re::copySkinInfluenceEndIndicesAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "skinnedAnimationInfluenceEndIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationInfluenceEndIndices.cstr())", "copySkinInfluenceEndIndicesAttribute", 855);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationInfluenceEndIndices.cstr())) ");
    __break(1u);
  }

  return result;
}

uint64_t re::copyAdjacencyAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexAdjacencies"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexAdjacentFaces.cstr())", "copyAdjacencyAttribute", 869);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexAdjacentFaces.cstr())) ");
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::copyAttributeUInt32Values(uint64_t a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  if (*(a1 + 8) == 32)
  {
    v5 = 4 * a3;
    if (!a5)
    {
      return v5;
    }

    if (v5 >= a5)
    {
      memcpy(__dst, a2, 4 * a3);
      return v5;
    }
  }

  else
  {
    re::internal::assertLog(5, a2, a3, __dst, a5, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kInt", "copyAttributeUInt32Values", 570, *(a1 + 8));
    a1 = _os_crash("assertion failure: (attributeDescriptor.format == mtl::VertexFormat::kInt) Unexpected vertex format %d", v7);
    __break(1u);
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, v5);
  result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v8, v9, v10);
  __break(1u);
  return result;
}

uint64_t re::copyValenceAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "skinnedAnimationRemappedJointIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())", "copyValenceAttribute", 876);
    result = _os_crash("assertion failure: (0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())) ");
    __break(1u);
  }

  return result;
}

unint64_t re::copyInfluenceAttribute(void *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = 8 * a4;
  if (a6)
  {
    if (result < a6)
    {
      re::internal::assertLog(7, a2, a3, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyInfluenceAttribute", 891, *a1, a6, 8 * a4);
      result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v11, v12, v13);
      __break(1u);
    }

    else if (a4)
    {
      v8 = (a5 + 4);
      do
      {
        v9 = *a2++;
        *(v8 - 1) = v9;
        v10 = *a3++;
        *v8 = v10;
        v8 += 2;
        --a4;
      }

      while (a4);
    }
  }

  return result;
}

uint64_t re::copyInfluenceAttribute(void *a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  v5 = 8 * a3;
  if (!a5)
  {
    return v5;
  }

  if (v5 >= a5)
  {
    memcpy(__dst, a2, 8 * a3);
    return v5;
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, 8 * a3);
  result = _os_crash("assertion failure: (requiredBytes >= availableBytes) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", v7, v8, v9);
  __break(1u);
  return result;
}

void re::collectMeshAttributeBuffers(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_73:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v79);
    __break(1u);
    goto LABEL_74;
  }

  v10 = a3;
  v7 = a2;
  v11 = *a3;
  if (a2 <= *a3)
  {
LABEL_74:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v80);
    __break(1u);
LABEL_75:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v6);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v69, v81);
    __break(1u);
LABEL_76:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_77:
    re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) Unsupported index type %d", "false", "indexDataSlice", 282, v34);
    _os_crash("assertion failure: (false) Unsupported index type %d", v70);
    __break(1u);
    goto LABEL_78;
  }

  Attribute = *(a1 + 8 * v11);
  v14 = *(Attribute + 32);
  re::MeshDefinition::attributes(Attribute, 0);
  v8 = v14 != 0;
  v89 = v15;
  if (v14)
  {
    v6 = v15 + 1;
  }

  else
  {
    v6 = v15;
  }

  *a6 = a5;
  a6[1] = v6;
  if (!v6)
  {
LABEL_78:
    v19 = 0;
    goto LABEL_79;
  }

  if (v6 >= 0x492492492492493)
  {
    goto LABEL_75;
  }

  v16 = (*(*a5 + 32))(a5, 56 * v6, 8);
  a6[2] = v16;
  if (!v16)
  {
    goto LABEL_76;
  }

  v18 = v6 - 1;
  if (v6 != 1)
  {
    do
    {
      *v16 = 0;
      *(v16 + 8) = 256;
      *(v16 + 12) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      *(v16 + 48) = 4;
      v16 += 56;
      --v18;
    }

    while (v18);
  }

  *v16 = 0;
  *(v16 + 8) = 256;
  *(v16 + 12) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 4;
  v19 = a6[1];
  if (v19 <= v8)
  {
LABEL_79:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v8;
    v99 = 2048;
    v100 = v19;
    _os_log_send_and_compose_impl(v58, &v92, &v101, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v82, v84);
    _os_crash_msg();
    __break(1u);
  }

  v20 = a6[2];
  v6 = 56;
  if (v14)
  {
    v8 = 56;
  }

  else
  {
    v8 = 0;
  }

  if (v14)
  {
    if (*(Attribute + 24))
    {
      if (*(Attribute + 24) != 1)
      {
        re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) Unsupported index type %d", "false", "indexAttributeDescriptor", 261, *(Attribute + 24));
        _os_crash("assertion failure: (false) Unsupported index type %d", v71);
        __break(1u);
        return;
      }

      v21 = &re::MeshDefinition::kIndexUInt32;
    }

    else
    {
      v21 = &re::MeshDefinition::kIndexUInt16;
    }

    *v20 = *v21;
    re::FixedArray<re::Slice<unsigned char>>::init<>((v20 + 24), a5, a4);
  }

  v86 = v8;
  v88 = 0x6DB6DB6DB6DB6DB7 * ((56 * v19 - v8) >> 3);
  if (v89)
  {
    v22 = 0;
    v8 = 0;
    a6 = (v86 + v20 + 24);
    while (v88 != v8)
    {
      v23 = re::MeshDefinition::attributes(Attribute, 0);
      if (v24 <= v8)
      {
        goto LABEL_64;
      }

      v25 = *(v23 + v22 + 8);
      if (*(v23 + v22 + 16) == 1)
      {
        v26 = *(v23 + v22 + 32);
        v27 = *(v25 + 8) | (*(v25 + 12) << 32);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 8);
      }

      *(a6 - 3) = v26;
      *(a6 - 2) = v27;
      re::FixedArray<re::Slice<unsigned char>>::init<>(a6, a5, a4);
      v29 = (re::sizeFromVertexFormat(*(a6 - 16), v28) + 3) & 0x1FC;
      if (v29 <= a6[3])
      {
        v29 = a6[3];
      }

      a6[3] = v29;
      ++v8;
      a6 += 7;
      v22 += 40;
      if (v89 == v8)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_63;
  }

LABEL_31:
  if (v14)
  {
    Attribute = 0;
    v8 = 0;
    while (1)
    {
      v30 = v10[v8];
      if (v7 <= v30)
      {
        break;
      }

      v6 = *(a1 + 8 * v30);
      v31 = *(v6 + 32);
      if (!v31)
      {
        goto LABEL_66;
      }

      v32 = [v31 bytes];
      v33 = [*(v6 + 32) length];
      v34 = *(v6 + 24);
      if (*(v6 + 24))
      {
        if (v34 != 1)
        {
          goto LABEL_77;
        }

        v35 = 4;
      }

      else
      {
        v35 = 2;
      }

      v36 = *(v6 + 40);
      v37 = v35 * v36;
      if (v37 > v33)
      {
        goto LABEL_67;
      }

      a6 = *(v20 + 32);
      if (a6 <= v8)
      {
        goto LABEL_68;
      }

      v38 = (*(v20 + 40) + Attribute);
      *v38 = v32;
      v38[1] = v37;
      *(v20 + 16) += v36;
      ++v8;
      Attribute += 16;
      if (a4 == v8)
      {
        goto LABEL_42;
      }
    }

LABEL_65:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v76);
    __break(1u);
LABEL_66:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Mesh definition has no index data buffer", "m_indexData.isValid()", "indexDataSlice", 268);
    v33 = _os_crash("assertion failure: (m_indexData.isValid()) Mesh definition has no index data buffer");
    __break(1u);
LABEL_67:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index data buffer is too small (got %zu bytes, expected %zu bytes)", "requiredSize <= dataSize", "indexDataSlice", 288, v33, v37);
    _os_crash("assertion failure: (requiredSize <= dataSize) Index data buffer is too small (got %zu bytes, expected %zu bytes)", v65, v77);
    __break(1u);
LABEL_68:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v8;
    v99 = 2048;
    v100 = a6;
    _os_log_send_and_compose_impl(v55, &v92, &v101, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v82, v84);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v88, v88);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v78);
    __break(1u);
    goto LABEL_73;
  }

LABEL_42:
  if (!v89)
  {
    return;
  }

  v39 = 0;
  v85 = v20 + v86;
  do
  {
    if (v39 == v88)
    {
      goto LABEL_72;
    }

    v40 = 0;
    v41 = 0;
    v87 = v39;
    v8 = v85 + 56 * v39;
    do
    {
      v42 = v10[v41];
      if (v7 <= v42)
      {
        re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10[v41], v7);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v59, v72);
        __break(1u);
LABEL_57:
        re::internal::assertLog(5, v46, "assertion failure: '%s' (%s:line %i) Attribute '%s' has no data buffer", "attribute.data.isValid()", "attributeDataSlice", 933, v6);
        _os_crash("assertion failure: (attribute.data.isValid()) Attribute '%s' has no data buffer", v60);
        __break(1u);
LABEL_58:
        re::internal::assertLog(7, v17, "assertion failure: '%s' (%s:line %i) Attribute '%s' data is too small (got %zu bytes, expected %zu bytes)", "requiredSize <= dataSize", "attributeDataSlice", 941, v6, Attribute, v50);
        _os_crash("assertion failure: (requiredSize <= dataSize) Attribute '%s' data is too small (got %zu bytes, expected %zu bytes)", v61, v73, v83);
        __break(1u);
LABEL_59:
        v92 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v93 = 136315906;
        v94 = "operator[]";
        v95 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v96 = 468;
        v97 = 2048;
        v98 = v41;
        v99 = 2048;
        v100 = Attribute;
        _os_log_send_and_compose_impl(v53, &v92, &v101, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v82, v84);
        _os_crash_msg();
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v88, v88);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v74);
        __break(1u);
LABEL_64:
        re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v24);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v75);
        __break(1u);
        goto LABEL_65;
      }

      v43 = v10;
      v44 = v7;
      v45 = *(a1 + 8 * v42);
      Attribute = re::MeshDefinition::tryGetAttribute(v45, *v8);
      v47 = re::MeshDefinition::attributeElementCount(v45, *(v8 + 9));
      v48 = *(Attribute + 8);
      if (*(Attribute + 16) == 1)
      {
        v6 = *(Attribute + 32);
      }

      else
      {
        v6 = *v48;
      }

      v7 = *(v48 + 8);
      if (!*Attribute)
      {
        goto LABEL_57;
      }

      a6 = [*Attribute bytes];
      Attribute = [*Attribute length];
      v50 = ((re::sizeFromVertexFormat(v7, v49) + 3) & 0x1FC) * v47;
      if (v50 > Attribute)
      {
        goto LABEL_58;
      }

      Attribute = *(v8 + 32);
      if (Attribute <= v41)
      {
        goto LABEL_59;
      }

      v51 = (*(v8 + 40) + v40);
      *v51 = a6;
      v51[1] = v50;
      *(v8 + 16) += v47;
      ++v41;
      v40 += 16;
      v7 = v44;
      v10 = v43;
    }

    while (a4 != v41);
    v39 = v87 + 1;
  }

  while (v87 + 1 != v89);
}

void re::FixedArray<re::Slice<unsigned char>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_7;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_7:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

void re::MeshDefinition::AttributeArray::~AttributeArray(re::MeshDefinition::AttributeArray *this)
{
  *this = &unk_1F5D08E88;
  v2 = (this + 24);
  re::FixedArray<re::Optional<re::StringID>>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D08E88;
  v2 = (this + 24);
  re::FixedArray<re::Optional<re::StringID>>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::FixedArray<re::MeshDefinition::VertexAttributeDescriptor const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t *re::FixedArray<re::Optional<re::StringID>>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
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
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  return result;
}

void *re::FixedArray<re::Optional<re::StringID>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 24 * v2;
      v5 = (result[2] + 8);
      do
      {
        if (*(v5 - 8) == 1)
        {
          re::StringID::destroyString(v5);
        }

        v5 = (v5 + 24);
        v4 -= 24;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

id *re::RenderGraphNodeBase::getEncoderLabel(re::RenderGraphNodeBase *this)
{
  v1 = (this + 96);
  if (!*(this + 12))
  {
    re::ns::String::format("%s::%s::%s", &v5, *(this + 3), *(this + 4), *(this + 2));
    if (v1 != &v5)
    {
      v2 = v5;
      v5 = 0;
      v3 = *v1;
      *v1 = v2;
    }
  }

  return v1;
}

void *re::allocInfo_RenderGraphNodeBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9C30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9C58, "RenderGraphNodeBase");
    __cxa_guard_release(&qword_1EE1B9C30);
  }

  return &unk_1EE1B9C58;
}

void re::initInfo_RenderGraphNodeBase(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x11A172D93A739296;
  v24[1] = "RenderGraphNodeBase";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_458))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B9C38 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "AutoMSAA";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x4100000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B9C40 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "EnableVRR";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4300000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B9C48 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "Enabled";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B9C50 = v22;
    __cxa_guard_release(&_MergedGlobals_458);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B9C38;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::PlanarReflectionContext::makeReflectionCameraMultiViews(re::PlanarReflectionContext *this, re::RenderFrame *a2, const re::CameraMultiView *a3)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v24 = *MEMORY[0x1E69E9840];
  v11 = *(v5 + 49);
  *(v10 + 32) = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *v10 = v11;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v10, 0);
  ++*(v10 + 24);
  if (*(v8 + 2))
  {
    v12 = 0;
    do
    {
      for (i = 0; i != 3104; i += 1552)
      {
        re::CameraView::CameraView(&v20[i], (v4 + i));
      }

      v23 = *(v4 + 3104);
      re::PlanarReflectionContext::makeReflectionCameraView(&v15, v8, v6, v4, v12);
      re::CameraView::operator=(v20, &v15);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v18);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v17);
      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      re::PlanarReflectionContext::makeReflectionCameraView(&v15, v8, v6, (v4 + 1552), v12);
      re::CameraView::operator=(v22, &v15);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v18);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v17);
      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      if (*(v4 + 3104) == 1 && (*(v4 + 3105) & 1) == 0)
      {
        v21 = xmmword_1E30DA6E0;
        v22[66] = xmmword_1E30DA6F0;
      }

      re::DynamicArray<re::CameraMultiView>::add(v10, v20);
      v14 = 3104;
      do
      {
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v19[v14]);
        re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v18[v14]);
        re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v17[v14]);
        re::DynamicString::deinit((&v15 + v14));
        v14 -= 1552;
      }

      while (v14);
      ++v12;
    }

    while (*(v8 + 2) > v12);
  }
}

float32_t re::PlanarReflectionContext::makeReflectionCameraView@<S0>(re::CameraView *__return_ptr a1@<X8>, re::PlanarReflectionContext *this@<X0>, re::RenderFrame *a3@<X1>, const re::CameraView *a4@<X2>, uint64_t a5@<X3>)
{
  v89 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 49);
  re::CameraView::CameraView(a1, a4);
  *(a1 + 92) = -1;
  if (*(a4 + 1))
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = a4 + 9;
  }

  re::DynamicString::format(&v82, v10, "%s_R%u", v11, v12, a5);
  re::DynamicString::operator=(a1, &v82);
  if (v82.i64[0] && (v82.i8[8] & 1) != 0)
  {
    (*(*v82.i64[0] + 40))();
  }

  *(a1 + 178) = 1;
  *(a1 + 66) = xmmword_1E3063230;
  *(a1 + 288) = -1;
  v13 = *(this + 2);
  if (v13 <= a5)
  {
    *&v81[0] = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v87 = 136315906;
    *&v87[4] = "operator[]";
    *&v87[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v87[14] = 789;
    *&v87[18] = 2048;
    *&v87[20] = a5;
    *&v87[28] = 2048;
    *&v87[30] = v13;
    _os_log_send_and_compose_impl(v73, v81, &v82, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v74, v76);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(this + 4);
  v15 = *(v14 + 32 * a5);
  v16.i64[0] = 0xC0000000C0000000;
  v16.i64[1] = 0xC0000000C0000000;
  v17 = vmulq_f32(v15, v16);
  v18 = vaddq_f32(vmulq_n_f32(v15, v17.f32[0]), xmmword_1E3047670);
  v19 = vaddq_f32(vmulq_lane_f32(v15, *v17.f32, 1), xmmword_1E3047680);
  v80 = v15;
  v20 = vaddq_f32(vmulq_laneq_f32(v15, v17, 2), xmmword_1E30476A0);
  v21 = vzip1q_s32(v18, v20);
  v22 = vzip2q_s32(v18, v20);
  v23 = vzip1q_s32(v19, 0);
  v24 = vzip2q_s32(v19, xmmword_1E30474D0);
  v78 = vzip1q_s32(v21, v23);
  v79 = vzip2q_s32(v21, v23);
  v75 = vzip2q_s32(v22, v24);
  v77 = vzip1q_s32(v22, v24);
  re::RenderCamera::computeLocalTransform(v81, (a4 + 32));
  v25 = 0;
  *v87 = v81[0];
  *&v87[16] = v81[1];
  *&v87[32] = v81[2];
  v88 = v81[3];
  do
  {
    *(&v82 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*&v87[v25])), v79, *&v87[v25], 1), v77, *&v87[v25], 2), v75, *&v87[v25], 3);
    v25 += 16;
  }

  while (v25 != 64);
  v26 = 0;
  v27 = v82;
  v28 = v83;
  v29 = v84;
  v30 = v85;
  *v87 = xmmword_1E3047670;
  *&v87[16] = xmmword_1E30476B0;
  *&v87[32] = xmmword_1E30476A0;
  v88 = xmmword_1E30474D0;
  do
  {
    *(&v82 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v87[v26])), v28, *&v87[v26], 1), v29, *&v87[v26], 2), v30, *&v87[v26], 3);
    v26 += 16;
  }

  while (v26 != 64);
  v31 = (v82.f32[0] + *&v83.i32[1]) + v84.f32[2];
  if (v31 >= 0.0)
  {
    v39 = sqrtf(v31 + 1.0);
    v40 = v39 + v39;
    v41 = vrecpe_f32(COERCE_UNSIGNED_INT(v39 + v39));
    v42 = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v39 + v39), v41));
    v42.i32[0] = vmul_f32(v42, vrecps_f32(COERCE_UNSIGNED_INT(v39 + v39), v42)).u32[0];
    *&v52 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *v84.f32), vext_s8(*v84.f32, *&vextq_s8(v82, v82, 8uLL), 4uLL)), v42.f32[0]);
    v43.f32[0] = v82.f32[1] - *v83.i32;
    v43.f32[1] = v40;
    v42.i32[1] = 0.25;
    v54 = vmul_f32(v43, v42);
  }

  else if (v82.f32[0] < *&v83.i32[1] || v82.f32[0] < v84.f32[2])
  {
    v33 = 1.0 - v82.f32[0];
    if (*&v83.i32[1] >= v84.f32[2])
    {
      v55 = sqrtf(*&v83.i32[1] + (v33 - v84.f32[2]));
      *&v56 = v55 + v55;
      v57 = vrecpe_f32(v56);
      v58 = vmul_f32(v57, vrecps_f32(v56, v57));
      v59.i32[0] = vmul_f32(v58, vrecps_f32(v56, v58)).u32[0];
      v60.f32[0] = v82.f32[1] + *v83.i32;
      v60.i32[1] = v56;
      v54 = vmul_n_f32(vext_s8(vadd_f32(*v84.f32, vdup_laneq_s32(v83, 2)), vsub_f32(*v84.f32, *&vextq_s8(v82, v82, 8uLL)), 4uLL), v59.f32[0]);
      v59.i32[1] = 0.25;
      *&v52 = vmul_f32(v60, v59);
    }

    else
    {
      v34 = sqrtf((v33 - *&v83.i32[1]) + v84.f32[2]);
      v35.f32[0] = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v37.i32[0] = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).u32[0];
      *&v52 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v83, v83, 8uLL)), *v84.f32), v37.f32[0]);
      v35.f32[1] = v82.f32[1] - *v83.i32;
      __asm { FMOV            V1.2S, #0.25 }

      _D1.i32[1] = v37.i32[0];
      v54 = vmul_f32(v35, _D1);
    }
  }

  else
  {
    v44 = sqrtf(v82.f32[0] + ((1.0 - *&v83.i32[1]) - v84.f32[2]));
    v45.f32[0] = v44 + v44;
    v46 = vrecpe_f32(v45.u32[0]);
    v47 = vmul_f32(v46, vrecps_f32(v45.u32[0], v46));
    v45.f32[1] = v82.f32[1] + *v83.i32;
    __asm { FMOV            V4.2S, #0.25 }

    _D4.i32[1] = vmul_f32(v47, vrecps_f32(v45.u32[0], v47)).u32[0];
    *&v52 = vmul_f32(v45, _D4);
    v53.i32[0] = vadd_f32(*&vextq_s8(v82, v82, 8uLL), *v84.f32).u32[0];
    v53.i32[1] = vsub_f32(vdup_laneq_s32(v83, 2), *&v84).i32[1];
    v54 = vmul_n_f32(v53, _D4.f32[1]);
  }

  *(&v52 + 1) = v54;
  *(a1 + 2) = v85;
  *(a1 + 3) = v52;
  v61 = (a1 + 32);
  v82.i64[0] = 65290051;
  if (v61[-2].i64[1])
  {
    v62 = v61[-1].i64[0];
  }

  else
  {
    v62 = &v61[-2].i8[9];
  }

  re::RenderFrame::specifyScopeLane(a3, &v82, (v14 + 32 * a5 + 16), v62);
  re::RenderCamera::computeInverseTransform(&v82, v61);
  v63 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v80.f32[0]), v83, *v80.f32, 1), v84, v80, 2);
  v64 = vmulq_f32(v63, v63);
  *&v65 = v64.f32[2] + vaddv_f32(*v64.f32);
  *v64.f32 = vrsqrte_f32(v65);
  *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
  v66 = vmulq_n_f32(v63, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
  v67 = vmulq_n_f32(v80, -v80.f32[3]);
  v68 = vaddq_f32(v85, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v67.f32[0]), v83, *v67.f32, 1), v84, v67, 2));
  v69 = vmulq_f32(v66, vdivq_f32(v68, vdupq_laneq_s32(v68, 3)));
  result = -(v69.f32[2] + vaddv_f32(*v69.f32));
  v66.f32[3] = result;
  v61[4] = v66;
  v61[3].i8[12] = 1;
  return result;
}

void *re::PlanarReflectionContext::makeReflectionCameraViews@<X0>(re::PlanarReflectionContext *this@<X0>, re::RenderFrame *a2@<X1>, const re::CameraView *a3@<X2>, uint64_t a4@<X8>)
{
  v15[47] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 49);
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = v8;
  result = re::DynamicArray<re::CameraView>::setCapacity(a4, 0);
  ++*(a4 + 24);
  if (*(this + 2))
  {
    v10 = 0;
    do
    {
      re::PlanarReflectionContext::makeReflectionCameraView(&v11, this, a2, a3, v10);
      re::DynamicArray<re::CameraView>::add(a4, &v11);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v15);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v14);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v13);
      result = v11;
      if (v11)
      {
        if (v12)
        {
          result = (*(*v11 + 40))();
        }
      }

      ++v10;
    }

    while (*(this + 2) > v10);
  }

  return result;
}

REMipGenPolyphase **re::mtl::MipGenPolyphase::MipGenPolyphase(REMipGenPolyphase **a1, void *a2, void *a3)
{
  v4 = [[REMipGenPolyphase alloc] initWithLibrary:*a2 binaryArchive:*a3];
  *a1 = v4;

  return a1;
}

uint64_t re::GPUAttributeFormatConverter::getBufferIndex(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1 >> 1;
  if (v2 > 0x5E27ADA18591)
  {
    if (*a1 >> 1 <= 0x2B3FAC222C23CAECuLL)
    {
      switch(v2)
      {
        case 0x5E27ADA18592uLL:
          return 13;
        case 0x16172F2CA64F41FuLL:
          return 2;
        case 0x2ACCEB6695018FABuLL:
          return 3;
      }
    }

    else if (*a1 >> 1 > 0x3CB5CD20F43A4ED9uLL)
    {
      if (v2 == 0x3CB5CD20F43A4EDALL)
      {
        return 5;
      }

      if (v2 == 0x5353CF4AA93DFAB9)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 0x2B3FAC222C23CAEDLL)
      {
        return 0;
      }

      if (v2 == 0x2ED0816D3076E801)
      {
        return 4;
      }
    }
  }

  else if (*a1 >> 1 <= 0x5E27ADA1858DuLL)
  {
    switch(v2)
    {
      case 0x30989BAE345uLL:
        return 6;
      case 0x5E27ADA1858CuLL:
        return 7;
      case 0x5E27ADA1858DuLL:
        return 8;
    }
  }

  else if (*a1 >> 1 > 0x5E27ADA1858FuLL)
  {
    if (v2 == 0x5E27ADA18590)
    {
      return 11;
    }

    if (v2 == 0x5E27ADA18591)
    {
      return 12;
    }
  }

  else
  {
    if (v2 == 0x5E27ADA1858ELL)
    {
      return 9;
    }

    if (v2 == 0x5E27ADA1858FLL)
    {
      return 10;
    }
  }

  v4 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 1);
    v6 = 136315138;
    v7 = v5;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Unknown attribute type '%s'", &v6, 0xCu);
  }

  return 14;
}

uint64_t re::GPUAttributeFormatConverter::getOutputAttributeSize(unint64_t a1, uint64_t a2)
{
  v2 = a1 >> 1;
  if (a1 >> 1 <= 0x16172F2CA64F41ELL)
  {
    if ((v2 - 0x5E27ADA1858DLL) >= 6 && (v2 == 0x30989BAE345 || v2 == 0x5E27ADA1858CLL))
    {
      return 8;
    }

    return 16;
  }

  result = 12;
  if (v2 > 0x2ED0816D3076E800)
  {
    if (v2 != 0x2ED0816D3076E801 && v2 != 0x3CB5CD20F43A4EDALL)
    {
      if (v2 == 0x5353CF4AA93DFAB9)
      {
        return a2;
      }

      return 16;
    }
  }

  else if (v2 == 0x16172F2CA64F41FLL || v2 != 0x2ACCEB6695018FABLL && v2 != 0x2B3FAC222C23CAEDLL)
  {
    return 16;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::AttributeResolution>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::AttributeResolution>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 10 * v4;
  v6 = *a2;
  *(v5 + 8) = *(a2 + 4);
  *v5 = v6;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void re::GPUAttributeFormatConverter::convertAttributes(uint64_t a1, id **a2, re::AttributeTable ***this, _anonymous_namespace_ *a4)
{
  v207 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = (*a2)[6];
  re::AttributeTable::buffers(this);
  v167 = v10;
  v11 = this;
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 && !*(v12 + 24));
  v13 = *(this + 113);
  v188 = v8[26];
  v14 = a2[22];
  *buf = v14;
  re::mtl::CommandQueue::makeCommandBufferWithUnretainedReferences(buf, &v187);

  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v186, &v187);
  v15 = 0;
  v185 = 0;
  v182[1] = 0;
  v183 = 0;
  v182[0] = 0;
  v16 = re::StandardMaterialVertexMeshAttributeNames;
  v184 = 0;
  do
  {
    *&buf[8] = 0;
    *buf = 0;
    v17 = this;
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17 && !v18[8]);
    *&v201[0] = re::StandardMaterialVertexMeshAttributeNames[2 * v15] & 0x7FFFFFFFFFFFFFFFLL;
    v19 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v18 + 5, v201);
    if (v19 == -1)
    {
      v21 = 0;
    }

    else
    {
      v20 = &v18[6][2 * v19];
      *&buf[2] = v15;
      *&buf[4] = *(v20 + 8);
      v21 = 1;
    }

    buf[9] = v21;
    re::DynamicArray<re::AttributeResolution>::add(v182, buf);
    ++v15;
  }

  while (v15 != 15);
  *buf = v185;
  *&buf[8] = v183;
  v180 = 0;
  re::createVertexFetchArgumentBuffer<re::mtl::ComputeCommandEncoder>(&v188, this, buf, &v180, &v181, &v186);
  if (v180)
  {

    v180 = 0;
  }

  [v186 setBuffer:v181 offset:0 atIndex:30];
  v22 = this;
  do
  {
    v23 = v22;
    v22 = *v22;
  }

  while (v22 && !v23[8]);
  *buf = 0x5353CF4AA93DFAB9;
  v24 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v23 + 5, buf);
  v25 = v24;
  v166 = v24;
  if (v24 == -1)
  {
    v165 = 0;
    v37 = 0;
    goto LABEL_45;
  }

  v26 = &v23[6][2 * v24];
  v27 = re::AttributeTable::buffers(this);
  v31 = *(v26 + 8);
  v30 = v26 + 8;
  v29 = v31;
  v165 = v30;
  if (v28 <= v31)
  {
    goto LABEL_313;
  }

  v32 = v27 + 24 * v29;
  v33 = *v32;
  *&v204[16] = *(v32 + 2);
  *v204 = v33;
  v34 = *(this + 456);
  v30 = *(this + 460);
  v35 = re::BufferView::contents(v204);
  v16 = *(v12 + 24);
  if (v16 <= v30)
  {
LABEL_314:
    v176 = 0;
    memset(v191, 0, sizeof(v191));
    memset(buf, 0, sizeof(buf));
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v201[0]) = 136315906;
    *(v201 + 4) = "operator[]";
    WORD6(v201[0]) = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *(v201 + 14) = 476;
    WORD1(v201[1]) = 2048;
    *(&v201[1] + 4) = v30;
    WORD6(v201[1]) = 2048;
    *(&v201[1] + 14) = v16;
    _os_log_send_and_compose_impl(v146, &v176, buf, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
    _os_crash_msg();
    __break(1u);
    goto LABEL_318;
  }

  v36 = *(this + 112);
  if (v34)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2;
  }

  if (v34)
  {
    if (v36)
    {
      v38 = 0;
      v25 = v166;
      do
      {
        v40 = *v35;
        v35 += 2;
        v39 = v40;
        if (v38 <= v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = v38;
        }

        if (v39 != -1)
        {
          v38 = v41;
        }

        --v36;
      }

      while (v36);
      goto LABEL_44;
    }
  }

  else if (v36)
  {
    v38 = 0;
    v25 = v166;
    do
    {
      v43 = *v35++;
      v42 = v43;
      if (v38 <= v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = v38;
      }

      if (v42 != 0xFFFF)
      {
        v38 = v44;
      }

      --v36;
    }

    while (v36);
    goto LABEL_44;
  }

  v38 = 0;
  v25 = v166;
LABEL_44:
  v13 = v38 + 1;
LABEL_45:
  v156 = v8;
  re::createVertexFetchComputePipeline(&v179, v8);
  v45 = [v188 newBufferWithLength:112 options:0];
  [v186 setBuffer:v45 offset:0 atIndex:2];
  v158 = [*(v179 + 16) threadExecutionWidth];
  v161 = (v158 - 1 + *(this + 112)) & -v158;
  v162 = (v158 - 1 + v13) & -v158;
  v176 = (v13 - 1);
  v177 = v162 - 1;
  v160 = v37;
  v178 = v37;
  [v186 setBytes:&v176 length:24 atIndex:0];
  v157 = v45;
  v159 = [v45 contents];
  if (v167)
  {
    v16 = 0;
    v30 = 0;
    while (1)
    {
      if (v25 == -1 || (v46 = v161, v30 != *v165))
      {
        v46 = v162;
      }

      v4 = this[42];
      if (v4 <= v30)
      {
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        *(v201 + 14) = 476;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = v30;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v4;
        _os_log_send_and_compose_impl(v74, v204, buf, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_221:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v75 = MEMORY[0x1E69E9C10];
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        *&v204[14] = 476;
        *&v204[18] = 2048;
        *&v204[20] = v30;
        v205 = 2048;
        v206 = v9;
        _os_log_send_and_compose_impl(v77, &v189, buf, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_225:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *&v204[14] = 476;
        *&v204[18] = 2048;
        *&v204[20] = v30;
        v205 = 2048;
        v206 = v9;
        _os_log_send_and_compose_impl(v80, &v189, buf, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_229:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v81 = MEMORY[0x1E69E9C10];
        v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v82)
        {
          v83 = 3;
        }

        else
        {
          v83 = 2;
        }

        *&v204[14] = 476;
        *&v204[18] = 2048;
        *&v204[20] = v30;
        v205 = 2048;
        v206 = v9;
        _os_log_send_and_compose_impl(v83, &v189, buf, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_233:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v84 = MEMORY[0x1E69E9C10];
        v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v85)
        {
          v86 = 3;
        }

        else
        {
          v86 = 2;
        }

        *&v204[14] = 476;
        *&v204[18] = 2048;
        *&v204[20] = v30;
        v205 = 2048;
        v206 = v9;
        _os_log_send_and_compose_impl(v86, &v189, buf, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_237:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v87 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        *(v201 + 14) = 476;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = v30;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v89, v204, buf, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_241:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        *(v201 + 14) = 476;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = v30;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v92, v204, buf, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_245:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v93 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = v13;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v95, v204, buf, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_249:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v96 = MEMORY[0x1E69E9C10];
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        *&v204[14] = 476;
        *&v204[18] = 2048;
        *&v204[20] = v30;
        v205 = 2048;
        v206 = v46;
        _os_log_send_and_compose_impl(v98, &v189, buf, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_253:
        v189 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v99 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        *&v204[12] = 1024;
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        *&v204[14] = 468;
        *&v204[18] = 2048;
        *&v204[20] = v46;
        v205 = 2048;
        v206 = v25;
        _os_log_send_and_compose_impl(v101, &v189, buf, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_257:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v102 = MEMORY[0x1E69E9C10];
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 10;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v104, v204, buf, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_261:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v105 = MEMORY[0x1E69E9C10];
        v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v106)
        {
          v107 = 3;
        }

        else
        {
          v107 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 1;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v107, v204, buf, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_265:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v108 = MEMORY[0x1E69E9C10];
        v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v109)
        {
          v110 = 3;
        }

        else
        {
          v110 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 3;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v110, v204, buf, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_269:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v111 = MEMORY[0x1E69E9C10];
        v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v112)
        {
          v113 = 3;
        }

        else
        {
          v113 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 8;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v113, v204, buf, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_273:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v114 = MEMORY[0x1E69E9C10];
        v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v115)
        {
          v116 = 3;
        }

        else
        {
          v116 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 12;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v116, v204, buf, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_277:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 13;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v119, v204, buf, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_281:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v120 = MEMORY[0x1E69E9C10];
        v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v121)
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 7;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v122, v204, buf, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_285:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v123 = MEMORY[0x1E69E9C10];
        v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v124)
        {
          v125 = 3;
        }

        else
        {
          v125 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 9;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v125, v204, buf, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_289:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v126 = MEMORY[0x1E69E9C10];
        v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v127)
        {
          v128 = 3;
        }

        else
        {
          v128 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 11;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v128, v204, buf, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_293:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v129 = MEMORY[0x1E69E9C10];
        v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v130)
        {
          v131 = 3;
        }

        else
        {
          v131 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 2;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v131, v204, buf, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_297:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v132 = MEMORY[0x1E69E9C10];
        v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v133)
        {
          v134 = 3;
        }

        else
        {
          v134 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 6;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v134, v204, buf, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_301:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v135 = MEMORY[0x1E69E9C10];
        v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v136)
        {
          v137 = 3;
        }

        else
        {
          v137 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 4;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v137, v204, buf, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_305:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v138 = MEMORY[0x1E69E9C10];
        v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v139)
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 5;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = v46;
        _os_log_send_and_compose_impl(v140, v204, buf, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_309:
        *v204 = 0;
        memset(v191, 0, sizeof(v191));
        memset(buf, 0, sizeof(buf));
        v141 = MEMORY[0x1E69E9C10];
        v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v201[0]) = 136315906;
        *(v201 + 4) = "operator[]";
        WORD6(v201[0]) = 1024;
        if (v142)
        {
          v143 = 3;
        }

        else
        {
          v143 = 2;
        }

        *(v201 + 14) = 468;
        WORD1(v201[1]) = 2048;
        *(&v201[1] + 4) = 0;
        WORD6(v201[1]) = 2048;
        *(&v201[1] + 14) = 0;
        _os_log_send_and_compose_impl(v143, v204, buf, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v154, v155);
        _os_crash_msg();
        __break(1u);
LABEL_313:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v28);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v150, v152);
        __break(1u);
        goto LABEL_314;
      }

      v9 = v13;
      re::StringID::StringID(v175, (v16 + this[43]));
      v47 = v175[0];
      OutputAttributeSize = re::GPUAttributeFormatConverter::getOutputAttributeSize(v175[0], v178);
      v4 = OutputAttributeSize;
      if (v47)
      {
        if (v175[0])
        {
        }
      }

      v13 = v46 * v4;
      v175[0] = 0;
      v175[1] = &str_67;
      if (v13)
      {
        break;
      }

LABEL_131:
      ++v30;
      v16 += 2;
      v13 = v9;
      if (v167 == v30)
      {
        goto LABEL_132;
      }
    }

    v46 = this[42];
    if (v46 <= v30)
    {
      goto LABEL_237;
    }

    re::StringID::StringID(v174, (v16 + this[43]));
    BufferIndex = re::GPUAttributeFormatConverter::getBufferIndex(v174);
    v4 = BufferIndex;
    if (v174[0])
    {
      if (v174[0])
      {
      }
    }

    v174[0] = 0;
    v174[1] = &str_67;
    v173 = [v188 newBufferWithLength:v13 options:0];
    v46 = this[42];
    if (v46 <= v30)
    {
      goto LABEL_241;
    }

    v50 = re::StringID::StringID(&v171, (v16 + this[43]));
    v51 = v171 >> 1;
    if (v171 >> 1 > 0x5E27ADA18591)
    {
      if (v171 >> 1 <= 0x2B3FAC222C23CAECLL)
      {
        switch(v51)
        {
          case 0x5E27ADA18592uLL:
            v46 = *(a1 + 8);
            if (v46 <= 0xD)
            {
              goto LABEL_277;
            }

            v52 = (*(a1 + 16) + 104);
            goto LABEL_107;
          case 0x16172F2CA64F41FuLL:
            v46 = *(a1 + 8);
            if (v46 <= 2)
            {
              goto LABEL_293;
            }

            v52 = (*(a1 + 16) + 16);
            goto LABEL_107;
          case 0x2ACCEB6695018FABuLL:
            v46 = *(a1 + 8);
            if (v46 <= 3)
            {
              goto LABEL_265;
            }

            v52 = (*(a1 + 16) + 24);
            goto LABEL_107;
        }
      }

      else if (v171 >> 1 > 0x3CB5CD20F43A4ED9)
      {
        if (v51 == 0x3CB5CD20F43A4EDALL)
        {
          v46 = *(a1 + 8);
          if (v46 <= 5)
          {
            goto LABEL_305;
          }

          v52 = (*(a1 + 16) + 40);
          goto LABEL_107;
        }

        if (v51 == 0x5353CF4AA93DFAB9)
        {
          v46 = *(a1 + 8);
          if (v46 <= 1)
          {
            goto LABEL_261;
          }

          v52 = (*(a1 + 16) + 8);
          goto LABEL_107;
        }
      }

      else
      {
        if (v51 == 0x2B3FAC222C23CAEDLL)
        {
          if (!*(a1 + 8))
          {
            goto LABEL_309;
          }

          v52 = *(a1 + 16);
          goto LABEL_107;
        }

        if (v51 == 0x2ED0816D3076E801)
        {
          v46 = *(a1 + 8);
          if (v46 <= 4)
          {
            goto LABEL_301;
          }

          v52 = (*(a1 + 16) + 32);
          goto LABEL_107;
        }
      }
    }

    else if (v171 >> 1 <= 0x5E27ADA1858DLL)
    {
      switch(v51)
      {
        case 0x30989BAE345uLL:
          v46 = *(a1 + 8);
          if (v46 <= 6)
          {
            goto LABEL_297;
          }

          v52 = (*(a1 + 16) + 48);
          goto LABEL_107;
        case 0x5E27ADA1858CuLL:
          v46 = *(a1 + 8);
          if (v46 <= 7)
          {
            goto LABEL_281;
          }

          v52 = (*(a1 + 16) + 56);
          goto LABEL_107;
        case 0x5E27ADA1858DuLL:
          v46 = *(a1 + 8);
          if (v46 <= 8)
          {
            goto LABEL_269;
          }

          v52 = (*(a1 + 16) + 64);
          goto LABEL_107;
      }
    }

    else if (v171 >> 1 > 0x5E27ADA1858FLL)
    {
      if (v51 == 0x5E27ADA18590)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xB)
        {
          goto LABEL_289;
        }

        v52 = (*(a1 + 16) + 88);
        goto LABEL_107;
      }

      if (v51 == 0x5E27ADA18591)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xC)
        {
          goto LABEL_273;
        }

        v52 = (*(a1 + 16) + 96);
        goto LABEL_107;
      }
    }

    else
    {
      if (v51 == 0x5E27ADA1858ELL)
      {
        v46 = *(a1 + 8);
        if (v46 <= 9)
        {
          goto LABEL_285;
        }

        v52 = (*(a1 + 16) + 72);
        goto LABEL_107;
      }

      if (v51 == 0x5E27ADA1858FLL)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xA)
        {
          goto LABEL_257;
        }

        v52 = (*(a1 + 16) + 80);
LABEL_107:
        v53 = NS::SharedPtr<MTL::Buffer>::operator=(v52, &v173);
LABEL_108:
        if (v171)
        {
          if (v171)
          {
          }
        }

        v171 = 0;
        v172 = &str_67;
        if (v173)
        {

          v173 = 0;
        }

        v13 = v4;
        v46 = *(a1 + 8);
        if (v46 <= v4)
        {
          goto LABEL_245;
        }

        v54 = *(a1 + 16);
        [v186 useResource:*(v54 + 8 * v4) usage:2];
        v25 = v159;
        switch(v4)
        {
          case 0:
            goto LABEL_130;
          case 1:
            v25 = v159 + 1;
            goto LABEL_130;
          case 2:
            v25 = v159 + 5;
            goto LABEL_130;
          case 3:
            v25 = v159 + 2;
            goto LABEL_130;
          case 4:
            v25 = v159 + 3;
            goto LABEL_130;
          case 5:
            v25 = v159 + 4;
            goto LABEL_130;
          case 6:
            v25 = v159 + 6;
            goto LABEL_130;
          case 7:
            v25 = v159 + 7;
            goto LABEL_130;
          case 8:
            v25 = v159 + 8;
            goto LABEL_130;
          case 9:
            v25 = v159 + 9;
            goto LABEL_130;
          case 10:
            v25 = v159 + 10;
            goto LABEL_130;
          case 11:
            v25 = v159 + 11;
            goto LABEL_130;
          case 12:
            v25 = v159 + 12;
            goto LABEL_130;
          case 13:
            v25 = v159 + 13;
LABEL_130:
            *v25 = [*(v54 + 8 * v4) gpuAddress];
            v25 = v166;
            break;
          default:
            goto LABEL_131;
        }

        goto LABEL_131;
      }
    }

    v55 = *re::graphicsLogObjects(v50);
    v53 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
    if (v53)
    {
      *buf = 136315138;
      *&buf[4] = v172;
      _os_log_debug_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEBUG, "Unknown attribute type '%s'", buf, 0xCu);
    }

    goto LABEL_108;
  }

LABEL_132:
  v4 = v13;
  if ((atomic_load_explicit(&qword_1EE1B9CF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_323;
  }

  while (1)
  {
    v9 = _MergedGlobals_459;
    [v186 setLabel:v9];

    [v186 setComputePipelineState:*(v179 + 16)];
    [v186 setVisibleFunctionTable:*(v179 + 24) atBufferIndex:29];
    *buf = v4;
    *&buf[8] = vdupq_n_s64(1uLL);
    *&v201[0] = v158;
    *(v201 + 8) = *&buf[8];
    v56 = [v186 dispatchThreads:buf threadsPerThreadgroup:v201];
    if (v166 == -1)
    {
      break;
    }

    LOBYTE(v191[0]) = 0;
    BYTE8(v191[2]) = 0;
    memset(v194, 0, sizeof(v194));
    v195 = 0;
    v197 = 0;
    v196 = 0;
    v198 = 1;
    v199 = 0;
    v200 = 257;
    ComputePipelineState = re::getOrCreateComputePipelineState(v156, buf);
    [v186 setComputePipelineState:*ComputePipelineState];
    v176 = *(this + 112);
    v177 = v161;
    [v186 setBytes:&v176 length:24 atIndex:0];
    v58 = re::AttributeTable::buffers(this);
    if (v59 <= *v165)
    {
LABEL_318:
      v154 = "operator[]";
      v155 = 264;
      re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v153);
      __break(1u);
    }

    else
    {
      [v186 setBuffer:*(v58 + 3 * *v165) offset:*(v58 + 6 * *v165 + 4) atIndex:1];
      v9 = *(a1 + 8);
      if (v9 > 1)
      {
        [v186 setBuffer:*(*(a1 + 16) + 8) offset:0 atIndex:2];
        if (v161)
        {
          *&v201[0] = v161;
          *(v201 + 8) = vdupq_n_s64(1uLL);
          *v204 = v158;
          *&v204[8] = *(v201 + 8);
          [v186 dispatchThreads:v201 threadsPerThreadgroup:v204];
        }

        if (v199)
        {

          v199 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v194);
        if (BYTE8(v191[2]) == 1 && v192)
        {
          if (BYTE8(v192))
          {
            (*(*v192 + 40))();
          }

          v192 = 0u;
          v193 = 0u;
        }

        if (LOBYTE(v191[0]) == 1 && *(&v191[0] + 1))
        {
          if (v191[1])
          {
            (*(**(&v191[0] + 1) + 40))();
          }

          memset(v191 + 8, 0, 32);
        }

        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        break;
      }
    }

    v189 = 0;
    v202 = 0u;
    v203 = 0u;
    memset(v201, 0, sizeof(v201));
    v12 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    *&v204[12] = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    *&v204[14] = 468;
    *&v204[18] = 2048;
    *&v204[20] = 1;
    v205 = 2048;
    v206 = v9;
    _os_log_send_and_compose_impl(v148, &v189, v201, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v154, v155);
    _os_crash_msg();
    __break(1u);
LABEL_323:
    if (__cxa_guard_acquire(&qword_1EE1B9CF0))
    {
      v149 = re::ns::String::String(&_MergedGlobals_459, "serializeLowLevelMeshPartAttributes");
      __cxa_guard_release(v149 + 1);
    }
  }

  v163 = v4;
  objc_msgSend_endEncoding(v186);
  [v187 commit];
  v60 = [v187 waitUntilCompleted];
  v25 = v166;
  v46 = v160;
  if (v167)
  {
    v16 = 0;
    v30 = 0;
    v13 = v201;
    if (v160 == 2)
    {
      v61 = 49;
    }

    else
    {
      v61 = 36;
    }

    LODWORD(v161) = v61;
    do
    {
      memset(v201, 0, 32);
      re::DynamicString::setCapacity(v201, 0);
      *&v203 = 0;
      *&v202 = 0;
      v201[2] = 0uLL;
      DWORD2(v202) = 0;
      WORD4(v203) = 256;
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_221;
      }

      v62 = strlen(*(v16 + this[43] + 8));
      *buf = *(v16 + this[43] + 8);
      *&buf[8] = v62;
      re::DynamicString::operator=(v201, buf);
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_225;
      }

      v63 = re::StringID::StringID(v170, (v16 + this[43]));
      v64 = v170[0] >> 1;
      if (v170[0] >> 1 > 0x16172F2CA64F41EuLL)
      {
        v65 = 30;
        if (v170[0] >> 1 > 0x2ED0816D3076E800uLL)
        {
          if (v64 == 0x2ED0816D3076E801 || v64 == 0x3CB5CD20F43A4EDALL)
          {
            goto LABEL_176;
          }

          v65 = v161;
          v66 = 0x5353CF4AA93DFAB9;
        }

        else
        {
          if (v64 == 0x16172F2CA64F41FLL)
          {
LABEL_162:
            v65 = 31;
            goto LABEL_176;
          }

          if (v64 == 0x2ACCEB6695018FABLL)
          {
            goto LABEL_176;
          }

          v66 = 0x2B3FAC222C23CAEDLL;
        }

        if (v64 != v66)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if ((v64 - 0x5E27ADA1858DLL) < 6)
        {
          goto LABEL_162;
        }

        if (v64 != 0x30989BAE345 && v64 != 0x5E27ADA1858CLL)
        {
LABEL_175:
          v65 = 0;
          goto LABEL_176;
        }

        v65 = 29;
      }

LABEL_176:
      BYTE8(v203) = v65;
      if (v170[0])
      {
        if (v170[0])
        {
        }
      }

      v170[0] = 0;
      v170[1] = &str_67;
      v9 = *(v12 + 24);
      if (v9 <= v30)
      {
        goto LABEL_229;
      }

      BYTE9(v203) = *(v16 + *(v12 + 32) + 5);
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_233;
      }

      re::StringID::StringID(v169, (v16 + this[43]));
      v4 = v169[0];
      v67 = re::GPUAttributeFormatConverter::getOutputAttributeSize(v169[0], v46);
      v68 = v67;
      if (v4)
      {
        if (v169[0])
        {
        }
      }

      v169[0] = 0;
      v169[1] = &str_67;
      if (v25 == -1 || v30 != *v165)
      {
        if (BYTE9(v203))
        {
          v69 = v163;
        }

        else
        {
          v69 = 1;
        }
      }

      else
      {
        v69 = *(this + 112);
      }

      v9 = (v69 * v68);
      if (*(&v201[2] + 1) < v9)
      {
        re::DynamicArray<BOOL>::setCapacity(&v201[2], v9);
      }

      if (v9)
      {
        v46 = this[42];
        if (v46 <= v30)
        {
          goto LABEL_249;
        }

        re::StringID::StringID(v168, (v16 + this[43]));
        v70 = re::GPUAttributeFormatConverter::getBufferIndex(v168);
        v4 = v70;
        if (v168[0])
        {
          if (v168[0])
          {
          }
        }

        v168[0] = 0;
        v168[1] = &str_67;
        v46 = v4;
        v25 = *(a1 + 8);
        if (v25 <= v4)
        {
          goto LABEL_253;
        }

        re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v201[2], 0, [*(*(a1 + 16) + 8 * v4) contents], v9);
        v25 = v166;
        v46 = v160;
      }

      v71.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a4, v201);
      if (*&v201[2])
      {
        if (v203)
        {
          (*(**&v201[2] + 40))(v71.n128_f64[0]);
        }

        *&v203 = 0;
        *&v202 = 0;
        v201[2] = 0uLL;
        ++DWORD2(v202);
      }

      v60 = *&v201[0];
      if (*&v201[0] && (BYTE8(v201[0]) & 1) != 0)
      {
        v60 = (*(**&v201[0] + 40))(v71);
      }

      ++v30;
      v16 += 2;
    }

    while (v167 != v30);
  }

  if (v157)
  {
  }

  if (v179)
  {
  }

  if (v181)
  {
  }

  if (v182[0] && v185)
  {
    (*(*v182[0] + 40))();
  }
}

_anonymous_namespace_ *re::DynamicArray<re::AttributeResolution>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AttributeResolution>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AttributeResolution>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::AttributeResolution>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0xAuLL))
        {
          v2 = 10 * a2;
          result = (*(*result + 32))(result, 10 * a2, 2);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 10 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 10, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::AttributeResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::CameraStreamProvider::threadSafe_increaseRunningTokenCount(re::CameraStreamProvider *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 22);
  *(this + 22) = v2 + 1;
  if (!v2)
  {
    (*(*this + 48))(this);
  }

  std::mutex::unlock((this + 24));
}

id *re::VisualDepthStreamRunningToken::operator=(id *from, id *a2)
{
  if (from != a2)
  {
    to = 0;
    objc_moveWeak(&to, from);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(from, a2);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, &to);
    objc_destroyWeak(&to);
  }

  return from;
}

void re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(id *location)
{
  if (*location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      re::CameraStreamProvider::threadSafe_decreaseRunningTokenCount((WeakRetained - 8));
    }
  }

  objc_destroyWeak(location);
  *location = 0;
}

void re::CameraStreamProvider::threadSafe_decreaseRunningTokenCount(re::CameraStreamProvider *this)
{
  std::mutex::lock((this + 24));
  v3 = *(this + 22);
  if (v3 <= 0)
  {
    re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Decrease a negative token count. This should never happen", "m_runningTokenCount > 0", "threadSafe_decreaseRunningTokenCount", 56);
    _os_crash("assertion failure: (m_runningTokenCount > 0) Decrease a negative token count. This should never happen");
    __break(1u);
  }

  else
  {
    v4 = v3 - 1;
    *(this + 22) = v4;
    if (!v4)
    {
      (*(*this + 56))(this);
    }

    std::mutex::unlock((this + 24));
  }
}

BOOL re::FontID::isValid(re::FontID *this)
{
  v2 = re::StringID::invalid(&v6);
  v3 = v6;
  if ((v6 ^ *this) > 1)
  {
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v2 = *(this + 1);
    if (v2 == __s2)
    {
      v4 = 0;
      if ((v6 & 1) == 0)
      {
        return v4;
      }
    }

    else
    {
      v2 = strcmp(v2, __s2);
      v4 = v2 != 0;
      if ((v3 & 1) == 0)
      {
        return v4;
      }
    }
  }

  if (v6)
  {
  }

  return v4;
}

void re::internal::shadows::initializeMeshShadowDefaults(re::internal::shadows *this, const char *a2)
{
  re::Defaults::BOOLValue((&var6 + 4), "enableShadowFlattening", a2);
  if (BYTE4(var6) == 1)
  {
    re::internal::shadows::g_enableShadowFlattening = BYTE5(var6);
  }

  re::Defaults::BOOLValue((&var6 + 2), "enableMeshDepthFallbackWhenFlattening", v2);
  if (BYTE2(var6) == 1)
  {
    re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening = BYTE3(var6);
  }

  re::Defaults::BOOLValue(&var6, "EnableDefaultShadows", v3);
  if (var6 == 1)
  {
    re::internal::shadows::g_enableShadowsByDefault = BYTE1(var6);
  }
}

re::MeshModelDefinition *re::MeshModelDefinition::MeshModelDefinition(re::MeshModelDefinition *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08F18;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  re::DynamicString::setCapacity(this + 3, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return this;
}

void re::MeshModelDefinition::~MeshModelDefinition(re::MeshModelDefinition *this)
{
  *this = &unk_1F5D08F18;
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    if (*(this + 16))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 16) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 30);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *(this + 11);
    if (v5)
    {
      v6 = *(this + 9);
      if (v6)
      {
        v7 = 56 * v6;
        v8 = (v5 + 16);
        do
        {
          re::DynamicString::deinit(v8);
          v9 = *(v8 - 2);
          if (v9)
          {

            *(v8 - 2) = 0;
          }

          v8 = (v8 + 56);
          v7 -= 56;
        }

        while (v7);
        v4 = *(this + 7);
        v5 = *(this + 11);
      }

      (*(*v4 + 40))(v4, v5);
    }

    *(this + 11) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 7) = 0;
    ++*(this + 20);
  }

  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MeshModelDefinition::~MeshModelDefinition(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshModelDefinition::append(void *a1, uint64_t *a2, uint64_t a3, int a4, int a5, const char *a6)
{
  if (*(*a2 + 40) || *(*a2 + 96))
  {
    v12 = *a2;
    *a2 = 0;
    v13 = a3;
    v15 = a4;
    v16 = a5;
    v10 = re::DynamicArray<re::MeshModelDefinition::PartEntry>::add((a1 + 7), &v12);
    if (v14[0])
    {
      if (v14[1])
      {
        (*(*v14[0] + 40))(v10);
      }

      memset(v14, 0, sizeof(v14));
    }

    if (v12)
    {
    }

    v11 = (a5 + 1);
    if (a1[14] < v11)
    {
      re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(a1 + 12, v11);
    }
  }
}

double re::DynamicArray<re::MeshModelDefinition::PartEntry>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshModelDefinition::PartEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 56 * v4;
  *v5 = *a2;
  *a2 = 0;
  *(v5 + 8) = *(a2 + 8);
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 40) = *(a2 + 40);
  v7 = *(a2 + 24);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *(a2 + 32);
  *(a2 + 40) = 0;
  v10 = *(v5 + 24);
  v9 = *(v5 + 32);
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(v5 + 48) = *(a2 + 48);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = (v3[4] + 8 * v4);
      v7 = v5 + 1;
      do
      {
        *v6++ = 0x7F7FFFFF00000000;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::MeshModelDefinition::append(void *this, unsigned int a2, float a3, float a4)
{
  v7 = this;
  v24 = *MEMORY[0x1E69E9840];
  v8 = this[14];
  v9 = a2 + 1;
  if (v8 < v9)
  {
    this = re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(this + 12, v9);
    v8 = v7[14];
  }

  if (v8 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
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
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v10 = (v7[16] + 8 * a2);
  *v10 = a3;
  v10[1] = a4;
  return this;
}

uint64_t re::MeshResourceDefinition::MeshResourceDefinition(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, unint64_t a7)
{
  v200 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  v165 = (a1 + 24);
  *(a1 + 56) = 0u;
  *a1 = &unk_1F5D08F48;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 300) = 0x7FFFFFFFLL;
  v172 = 0;
  memset(v171, 0, sizeof(v171));
  if ((2 * a3) <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * a3;
  }

  v173 = 0x7FFFFFFFLL;
  v169 = 0;
  memset(v168, 0, sizeof(v168));
  v170 = 0x7FFFFFFFLL;
  v158 = a5;
  if ((2 * a5) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * a5;
  }

  if (a7)
  {
    v18 = 8 * a7;
    v19 = a6;
    do
    {
      v20 = *v19;
      if (*v19)
      {
        v17 = (v20 + 8);
      }

      v21 = *(a1 + 232);
      v22 = *(a1 + 240);
      if (v22 >= v21)
      {
        v23 = v22 + 1;
        if (v21 < v22 + 1)
        {
          if (*(a1 + 224))
          {
            if (v21)
            {
              v24 = 2 * v21;
            }

            else
            {
              v24 = 8;
            }

            if (v24 <= v23)
            {
              v25 = v22 + 1;
            }

            else
            {
              v25 = v24;
            }

            v17 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 224), v25);
          }

          else
          {
            v17 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 224), v23);
            ++*(a1 + 248);
          }
        }

        v22 = *(a1 + 240);
      }

      *(*(a1 + 256) + 8 * v22) = v20;
      *(a1 + 240) = v22 + 1;
      ++*(a1 + 248);
      ++v19;
      v18 -= 8;
    }

    while (v18);
    v26 = 0;
    LODWORD(v187[0]) = 0;
    do
    {
      v17 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 264, (a6[v26] + 24), v187);
      ++LODWORD(v187[0]);
      v26 = LODWORD(v187[0]);
    }

    while (a7 > LODWORD(v187[0]));
  }

  if (a3)
  {
    v160 = &a2[a3];
    v27.i64[0] = 0x7F0000007FLL;
    v27.i64[1] = 0x7F0000007FLL;
    v161 = vnegq_f32(v27);
    while (1)
    {
      v163 = a2;
      v28 = *a2;
      v29 = *(*a2 + 112);
      if (v29)
      {
        v30 = *(v28 + 128);
        v31 = *(a1 + 120);
        v32 = 8 * v29;
        do
        {
          v33 = *v30;
          v34 = *(a1 + 112);
          if (v31 >= v34)
          {
            v35 = v31 + 1;
            if (v34 < v31 + 1)
            {
              if (*(a1 + 104))
              {
                v36 = 2 * v34;
                if (!v34)
                {
                  v36 = 8;
                }

                if (v36 <= v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = v36;
                }

                v17 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity((a1 + 104), v37);
              }

              else
              {
                v17 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity((a1 + 104), v35);
                ++*(a1 + 128);
              }
            }

            v31 = *(a1 + 120);
          }

          *(*(a1 + 136) + 8 * v31) = v33;
          v31 = *(a1 + 120) + 1;
          *(a1 + 120) = v31;
          ++*(a1 + 128);
          ++v30;
          v32 -= 8;
        }

        while (v32);
      }

      if (*(v28 + 32))
      {
        v38 = *(v28 + 40);
      }

      else
      {
        v38 = (v28 + 33);
      }

      v39 = re::UniqueNameGenerator::uniqueName(&v181, v171, v38, "Model");
      *&v187[2] = 0;
      memset(v187, 0, 28);
      v40 = v182;
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      v188 = v161;
      v189 = v42;
      v191 = 0uLL;
      v190 = 0;
      v192 = 0;
      v199 = 0;
      v193 = 0u;
      v194 = 0u;
      v195 = 0;
      v196 = 0u;
      v197 = 0u;
      v198 = 0;
      v43 = *(a1 + 152);
      v44 = *(a1 + 160);
      if (v44 >= v43)
      {
        v45 = v44 + 1;
        if (v43 < v44 + 1)
        {
          if (*(a1 + 144))
          {
            v46 = 2 * v43;
            v47 = v43 == 0;
            v48 = 8;
            if (!v47)
            {
              v48 = v46;
            }

            if (v48 <= v45)
            {
              v49 = v45;
            }

            else
            {
              v49 = v48;
            }

            re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity((a1 + 144), v49);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity((a1 + 144), v45);
            ++*(a1 + 168);
          }
        }

        v44 = *(a1 + 160);
      }

      v50 = *(a1 + 176) + 240 * v44;
      *(v50 + 32) = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      *v50 = 0;
      *(v50 + 24) = 0;
      *v50 = *&v187[0];
      *&v187[0] = 0;
      *(v50 + 8) = *(&v187[0] + 1);
      *(&v187[0] + 1) = 0;
      v51 = *(v50 + 16);
      *(v50 + 16) = *&v187[1];
      *&v187[1] = v51;
      v52 = *(v50 + 32);
      *(v50 + 32) = *&v187[2];
      *&v187[2] = v52;
      ++DWORD2(v187[1]);
      ++*(v50 + 24);
      *(v50 + 40) = 0u;
      *(v50 + 56) = 0u;
      *(v50 + 40) = *(&v187[2] + 1);
      *(&v187[2] + 1) = 0;
      v53 = *(v50 + 56);
      *(v50 + 56) = *(&v187[3] + 1);
      *(&v187[3] + 1) = v53;
      *(v50 + 64) = *&v187[4];
      *&v187[4] = 0;
      v54 = *(v50 + 48);
      *(v50 + 48) = *&v187[3];
      *&v187[3] = v54;
      v55 = v189;
      *(v50 + 80) = v188;
      *(v50 + 96) = v55;
      *(v50 + 144) = 0;
      *(v50 + 136) = 0;
      *(v50 + 120) = 0;
      *(v50 + 128) = 0;
      *(v50 + 112) = 0;
      *(v50 + 112) = v190;
      v190 = 0;
      *(v50 + 120) = v191;
      *&v191 = 0;
      v56 = *(v50 + 128);
      *(v50 + 128) = *(&v191 + 1);
      *(&v191 + 1) = v56;
      v57 = *(v50 + 144);
      *(v50 + 144) = v193;
      *&v193 = v57;
      ++v192;
      ++*(v50 + 136);
      *(v50 + 184) = 0;
      *(v50 + 160) = 0;
      *(v50 + 168) = 0;
      *(v50 + 152) = 0;
      *(v50 + 176) = 0;
      *(v50 + 152) = *(&v193 + 1);
      *(&v193 + 1) = 0;
      *(v50 + 160) = v194;
      *&v194 = 0;
      v58 = *(v50 + 168);
      *(v50 + 168) = *(&v194 + 1);
      *(&v194 + 1) = v58;
      v59 = *(v50 + 184);
      *(v50 + 184) = v196;
      *&v196 = v59;
      ++v195;
      ++*(v50 + 176);
      *(v50 + 224) = 0;
      *(v50 + 200) = 0;
      *(v50 + 208) = 0;
      *(v50 + 192) = 0;
      *(v50 + 216) = 0;
      *(v50 + 192) = *(&v196 + 1);
      *(&v196 + 1) = 0;
      *(v50 + 200) = v197;
      *&v197 = 0;
      v60 = *(v50 + 208);
      *(v50 + 208) = *(&v197 + 1);
      *(&v197 + 1) = v60;
      v61 = *(v50 + 224);
      *(v50 + 224) = v199;
      v199 = v61;
      ++v198;
      ++*(v50 + 216);
      ++*(a1 + 160);
      ++*(a1 + 168);
      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v196 + 8);
      if (*(&v193 + 1))
      {
        if (v196)
        {
          (*(**(&v193 + 1) + 40))();
        }

        *&v196 = 0;
        v194 = 0uLL;
        *(&v193 + 1) = 0;
        ++v195;
      }

      if (v190)
      {
        if (v193)
        {
          (*(*v190 + 40))();
        }

        *&v193 = 0;
        v191 = 0uLL;
        v190 = 0;
        ++v192;
      }

      if (*(&v187[2] + 1))
      {
        if (v187[3])
        {
          (*(**(&v187[2] + 1) + 40))();
        }

        memset(&v187[2] + 8, 0, 32);
      }

      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v187);
      v62 = *(a1 + 176) + 240 * *(a1 + 160);
      v63 = (v62 - 128);
      v64 = *(v28 + 72);
      if (*(v62 - 120) < v64)
      {
        v63 = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v63, v64);
        v64 = *(v28 + 72);
      }

      v179 = 0;
      memset(v178, 0, sizeof(v178));
      v180 = 0x7FFFFFFFLL;
      v65 = (2 * v64) <= 1 ? 1 : 2 * v64;
      v66 = *(v28 + 72);
      if (v66)
      {
        break;
      }

LABEL_176:
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v178);
      if (v181)
      {
        if (v181)
        {
        }
      }

      a2 = v163 + 1;
      if (v163 + 1 == v160)
      {
        goto LABEL_180;
      }
    }

    v67 = *(v28 + 88);
    v166 = v67 + 56 * v66;
    v162 = (v62 - 88);
    v164 = (v62 - 48);
    v68 = 1;
    while (1)
    {
      v167 = v68;
      v69 = *v67;
      v70 = *(a1 + 40);
      re::MeshDefinition::computeBoundingBox(*v67, &v176);
      v71 = *(v62 - 112);
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      if (v72 >= v73)
      {
        v74 = v72 + 1;
        if (v73 < v72 + 1)
        {
          if (*v165)
          {
            v75 = 2 * v73;
            if (!v73)
            {
              v75 = 8;
            }

            if (v75 <= v74)
            {
              v76 = v74;
            }

            else
            {
              v76 = v75;
            }

            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v165, v76);
          }

          else
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v165, v74);
            ++*(a1 + 48);
          }
        }

        v72 = *(a1 + 40);
      }

      v77 = *v67;
      *(*(a1 + 56) + 8 * v72) = *v67;
      if (v77)
      {
        v78 = v77 + 2;
        v72 = *(a1 + 40);
      }

      *(a1 + 40) = v72 + 1;
      ++*(a1 + 48);
      v79 = *(a1 + 80);
      if (*(v67 + 24))
      {
        v80 = *(v67 + 32);
      }

      else
      {
        v80 = (v67 + 25);
      }

      re::UniqueNameGenerator::uniqueName(&v174, v178, v80, "Part");
      *v184 = v70;
      v81 = re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v187, v184, 1uLL);
      v82 = v175;
      v188 = v176;
      v189 = v177;
      LOBYTE(v190) = *(v69 + 160);
      if (v190 == 1)
      {
        BYTE1(v190) = *(v69 + 161);
      }

      BYTE2(v190) = *(v69 + 162);
      if (BYTE2(v190) == 1)
      {
        BYTE3(v190) = *(v69 + 163);
      }

      BYTE4(v190) = *(v69 + 164);
      if (BYTE4(v190) == 1)
      {
        BYTE5(v190) = *(v69 + 165);
      }

      LODWORD(v191) = v69[24];
      BYTE4(v191) = *(v67 + 8);
      DWORD2(v191) = *(v67 + 48);
      HIDWORD(v191) = v69[25];
      v84 = *(a1 + 72);
      v85 = *(a1 + 80);
      if (v85 >= v84)
      {
        v86 = v85 + 1;
        if (v84 < v85 + 1)
        {
          if (*(a1 + 64))
          {
            v87 = 2 * v84;
            v47 = v84 == 0;
            v88 = 8;
            if (!v47)
            {
              v88 = v87;
            }

            if (v88 <= v86)
            {
              v89 = v86;
            }

            else
            {
              v89 = v88;
            }

            re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity((a1 + 64), v89);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity((a1 + 64), v86);
            ++*(a1 + 88);
          }
        }

        v85 = *(a1 + 80);
      }

      v90 = *(a1 + 96) + 144 * v85;
      *(v90 + 32) = 0;
      *(v90 + 8) = 0;
      *(v90 + 16) = 0;
      *v90 = 0;
      *(v90 + 24) = 0;
      *v90 = *&v187[0];
      *&v187[0] = 0;
      *(v90 + 8) = *(&v187[0] + 1);
      *(&v187[0] + 1) = 0;
      v91 = *(v90 + 16);
      *(v90 + 16) = *&v187[1];
      *&v187[1] = v91;
      v92 = *(v90 + 32);
      *(v90 + 32) = *&v187[2];
      *&v187[2] = v92;
      ++DWORD2(v187[1]);
      ++*(v90 + 24);
      *(v90 + 40) = 0u;
      *(v90 + 56) = 0u;
      *(v90 + 40) = *(&v187[2] + 1);
      *(&v187[2] + 1) = 0;
      v93 = *(v90 + 56);
      *(v90 + 56) = *(&v187[3] + 1);
      *(&v187[3] + 1) = v93;
      *(v90 + 64) = *&v187[4];
      *&v187[4] = 0;
      v94 = *(v90 + 48);
      *(v90 + 48) = *&v187[3];
      *&v187[3] = v94;
      v95 = v189;
      *(v90 + 80) = v188;
      *(v90 + 96) = v95;
      LODWORD(v94) = v190;
      *(v90 + 112) = v190;
      if (v94 == 1)
      {
        *(v90 + 113) = BYTE1(v190);
      }

      v96 = BYTE2(v190);
      *(v90 + 114) = BYTE2(v190);
      if (v96 == 1)
      {
        *(v90 + 115) = BYTE3(v190);
      }

      v97 = BYTE4(v190);
      *(v90 + 116) = BYTE4(v190);
      if (v97 == 1)
      {
        *(v90 + 117) = BYTE5(v190);
      }

      *(v90 + 120) = v191;
      ++*(a1 + 80);
      ++*(a1 + 88);
      if (*(&v187[2] + 1))
      {
        if (v187[3])
        {
          (*(**(&v187[2] + 1) + 40))();
        }

        memset(&v187[2] + 8, 0, 32);
      }

      if (*&v187[0] && *&v187[2])
      {
        (*(**&v187[0] + 40))();
      }

      *&v187[0] = v79;
      re::DynamicArray<unsigned long>::add((v62 - 128), v187);
      v98 = *(v67 + 52);
      v99 = *(v62 - 224);
      if (v99 > v98)
      {
        goto LABEL_133;
      }

      v100 = v98 + 1;
      if (v99 < v100)
      {
        break;
      }

      if (v99 > v98 + 1)
      {
        v104 = 40 * v100;
        v105 = v98 + 1;
        do
        {
          re::DynamicArray<unsigned long>::deinit(*(v62 - 208) + v104);
          ++v105;
          v104 += 40;
        }

        while (v105 < *(v62 - 224));
LABEL_132:
        *(v62 - 224) = v100;
        ++*(v62 - 216);
        v99 = v98 + 1;
      }

LABEL_133:
      if (v99 <= v98)
      {
        v183 = 0;
        memset(v187, 0, sizeof(v187));
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v184 = 136315906;
        *&v184[4] = "operator[]";
        *&v184[12] = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        *&v184[14] = 789;
        *&v184[18] = 2048;
        *&v184[20] = v98;
        *&v184[28] = 2048;
        *&v184[30] = v99;
        _os_log_send_and_compose_impl(v156, &v183, v187, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v157, v158);
        _os_crash_msg();
        __break(1u);
      }

      v106 = (*(v62 - 208) + 40 * v98);
      *&v187[0] = v71;
      re::DynamicArray<re::TransitionCondition *>::add(v106, v187);
      v107 = v176;
      v108 = *(v62 - 160);
      v109 = *(v62 - 144);
      v108.i32[3] = 0;
      v107.i32[3] = 0;
      *(v62 - 160) = vminnmq_f32(v108, v107);
      v110 = v177;
      v109.i32[3] = 0;
      v110.i32[3] = 0;
      *(v62 - 144) = vmaxnmq_f32(v109, v110);
      LODWORD(v187[0]) = 0;
      memset(v187 + 8, 0, 48);
      if (v167)
      {
        if (re::MeshDefinition::skinningData(*v67, a1 + 264, v187))
        {
          v111 = *(v62 - 80);
          v112 = *(v62 - 72);
          if (v112 >= v111)
          {
            v113 = v112 + 1;
            if (v111 < v112 + 1)
            {
              if (*v162)
              {
                v114 = 2 * v111;
                v47 = v111 == 0;
                v115 = 8;
                if (!v47)
                {
                  v115 = v114;
                }

                if (v115 <= v113)
                {
                  v116 = v113;
                }

                else
                {
                  v116 = v115;
                }

                re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v162, v116);
              }

              else
              {
                re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v162, v113);
                ++*(v62 - 64);
              }
            }

            v112 = *(v62 - 72);
          }

          v117 = *(v62 - 56) + 56 * v112;
          *v117 = v187[0];
          *(v117 + 16) = v187[1];
          *(v117 + 32) = v187[2];
          *(v117 + 48) = *&v187[3];
          ++*(v62 - 72);
          ++*(v62 - 64);
          v68 = 1;
        }

        else
        {
          v68 = 0;
        }
      }

      else
      {
        v68 = 0;
      }

      *v184 = 0;
      *&v184[8] = &str_67;
      HIDWORD(v185) = 0;
      memset(&v184[16], 0, 24);
      LOBYTE(v185) = 0;
      v118 = *(*(a1 + 56) + 8 * *(a1 + 40) - 8);
      if (v118)
      {
        v119 = (v118 + 8);
      }

      if (re::MeshDefinition::blendShapeData(v118, v184, v175, v69[24], v71))
      {
        v120 = *(v62 - 40);
        v121 = *(v62 - 32);
        if (v121 >= v120)
        {
          v122 = v121 + 1;
          if (v120 < v121 + 1)
          {
            if (*v164)
            {
              v123 = 2 * v120;
              v47 = v120 == 0;
              v124 = 8;
              if (!v47)
              {
                v124 = v123;
              }

              if (v124 <= v122)
              {
                v125 = v122;
              }

              else
              {
                v125 = v124;
              }

              re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v164, v125);
            }

            else
            {
              re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v164, v122);
              ++*(v62 - 24);
            }
          }

          v121 = *(v62 - 32);
        }

        v126 = *(v62 - 16) + 56 * v121;
        v127 = v184[0];
        *v126 = *v126 & 0xFFFFFFFFFFFFFFFELL | v184[0] & 1;
        *v126 = *v184 & 0xFFFFFFFFFFFFFFFELL | v127 & 1;
        *(v126 + 8) = *&v184[8];
        *v184 = 0;
        *&v184[8] = &str_67;
        *(v126 + 16) = 0;
        *(v126 + 24) = 0;
        *(v126 + 32) = 0;
        *(v126 + 16) = *&v184[16];
        *&v184[16] = 0;
        *(v126 + 24) = *&v184[24];
        *&v184[24] = 0;
        v128 = *(v126 + 32);
        *(v126 + 32) = *&v184[32];
        *&v184[32] = v128;
        *(v126 + 40) = v185;
        *(v126 + 48) = v186;
        ++*(v62 - 32);
        ++*(v62 - 24);
      }

      if (v118)
      {
      }

      v129 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v184[16]);
      if (v184[0])
      {
        if (v184[0])
        {
        }
      }

      if (v174)
      {
        if (v174)
        {
        }
      }

      v67 += 56;
      if (v67 == v166)
      {
        if ((v68 & 1) == 0)
        {
          *(v62 - 72) = 0;
          ++*(v62 - 64);
        }

        goto LABEL_176;
      }
    }

    if (*(v62 - 232) < v100)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((v62 - 240), v100);
      v99 = *(v62 - 224);
    }

    v101 = v100 - v99;
    if (v100 > v99)
    {
      v102 = 40 * v99;
      do
      {
        v103 = *(v62 - 208) + v102;
        *(v103 + 32) = 0;
        *(v103 + 8) = 0;
        *(v103 + 16) = 0;
        *v103 = 0;
        *(v103 + 24) = 0;
        v102 += 40;
        --v101;
      }

      while (v101);
    }

    goto LABEL_132;
  }

LABEL_180:
  v130 = a4;
  if (v158)
  {
    v131 = 8 * v158;
    do
    {
      v132 = v130;
      v133 = *v130;
      if (*(*v130 + 32))
      {
        v134 = *(v133 + 40);
      }

      else
      {
        v134 = (v133 + 33);
      }

      v135 = re::UniqueNameGenerator::uniqueName(v184, v168, v134, "Instance");
      v136 = *&v184[8];
      LODWORD(v187[2]) = *(v133 + 56);
      v138 = *(v133 + 64);
      v139 = *(v133 + 80);
      v140 = *(v133 + 112);
      v188 = *(v133 + 96);
      v189 = v140;
      v187[3] = v138;
      v187[4] = v139;
      v141 = *(a1 + 192);
      v142 = *(a1 + 200);
      if (v142 >= v141)
      {
        v143 = v142 + 1;
        if (v141 < v142 + 1)
        {
          if (*(a1 + 184))
          {
            if (v141)
            {
              v144 = 2 * v141;
            }

            else
            {
              v144 = 8;
            }

            if (v144 <= v143)
            {
              v145 = v142 + 1;
            }

            else
            {
              v145 = v144;
            }

            re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity((a1 + 184), v145);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity((a1 + 184), v143);
            ++*(a1 + 208);
          }
        }

        v142 = *(a1 + 200);
      }

      v146 = *(a1 + 216) + 112 * v142;
      *v146 = 0u;
      *(v146 + 16) = 0u;
      *v146 = *&v187[0];
      *&v187[0] = 0;
      v147 = *(v146 + 16);
      *(v146 + 16) = *&v187[1];
      *&v187[1] = v147;
      *(v146 + 24) = *(&v187[1] + 1);
      *(&v187[1] + 1) = 0;
      v148 = *(v146 + 8);
      *(v146 + 8) = *(&v187[0] + 1);
      *(&v187[0] + 1) = v148;
      v149 = v187[3];
      v150 = v187[4];
      v151 = v189;
      *(v146 + 80) = v188;
      *(v146 + 96) = v151;
      *(v146 + 48) = v149;
      *(v146 + 64) = v150;
      *(v146 + 32) = v187[2];
      ++*(a1 + 200);
      ++*(a1 + 208);
      v152 = *&v187[0];
      if (*&v187[0] && (BYTE8(v187[0]) & 1) != 0)
      {
        v152 = (*(**&v187[0] + 40))();
      }

      if (v184[0])
      {
        if (v184[0])
        {
        }
      }

      v130 = v132 + 1;
      v131 -= 8;
    }

    while (v131);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v168);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v171);
  return a1;
}

void re::MeshResourceDefinition::~MeshResourceDefinition(re::MeshResourceDefinition *this)
{
  *this = &unk_1F5D08F48;
  v2 = this + 24;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 33);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 224);
  re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(this + 184);
  re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(this + 144);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(this + 64);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D08F48;
  v2 = this + 24;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 33);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 224);
  re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(this + 184);
  re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(this + 144);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(this + 64);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::DynamicArray<re::MeshModelDefinition::PartEntry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(v5, a2);
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
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 56 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          *(v11 + 8) = *(v8 + 8);
          *(v11 + 1) = 0u;
          *(v11 + 2) = 0u;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = 0;
          v11[5] = *(v8 + 40);
          *(v8 + 40) = 0;
          v13 = v11[3];
          v12 = v11[4];
          v14 = *(v8 + 32);
          v11[3] = *(v8 + 24);
          v11[4] = v14;
          *(v8 + 24) = v13;
          *(v8 + 32) = v12;
          v11[6] = *(v8 + 48);
          re::DynamicString::deinit((v8 + 16));
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 56;
          v11 += 7;
          v10 -= 56;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v31, v33);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v32, v34);
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
        v11 = v8 + 240 * v9;
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
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v13[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = 0;
          v18 = v7[v10 / 8 + 6];
          v17 = v7[v10 / 8 + 7];
          v19 = *(v8 + v10 + 56);
          v13[6] = *(v8 + v10 + 48);
          v13[7] = v19;
          *(v12 + 48) = v18;
          *(v12 + 56) = v17;
          v20 = *(v8 + v10 + 96);
          *(v13 + 5) = *(v8 + v10 + 80);
          *(v13 + 6) = v20;
          v13[18] = 0;
          *(v13 + 34) = 0;
          v13[15] = 0;
          v13[16] = 0;
          v13[14] = 0;
          v21 = *(v8 + v10 + 120);
          v13[14] = *(v8 + v10 + 112);
          *(v8 + v10 + 112) = 0;
          v13[15] = v21;
          *(v12 + 120) = 0;
          v22 = v7[v10 / 8 + 16];
          v13[16] = *(v8 + v10 + 128);
          *(v12 + 128) = v22;
          v23 = v7[v10 / 8 + 18];
          v13[18] = *(v8 + v10 + 144);
          *(v12 + 144) = v23;
          *(v12 + 136) = *(v8 + v10 + 136) + 1;
          *(v13 + 34) = LODWORD(v7[v10 / 8 + 17]) + 1;
          v13[23] = 0;
          v13[20] = 0;
          v13[21] = 0;
          v13[19] = 0;
          *(v13 + 44) = 0;
          v24 = *(v8 + v10 + 160);
          v13[19] = *(v8 + v10 + 152);
          *(v8 + v10 + 152) = 0;
          v13[20] = v24;
          *(v12 + 160) = 0;
          v25 = v7[v10 / 8 + 21];
          v13[21] = *(v8 + v10 + 168);
          *(v12 + 168) = v25;
          v26 = v7[v10 / 8 + 23];
          v13[23] = *(v8 + v10 + 184);
          *(v12 + 184) = v26;
          *(v12 + 176) = *(v8 + v10 + 176) + 1;
          *(v13 + 44) = LODWORD(v7[v10 / 8 + 22]) + 1;
          v13[28] = 0;
          v13[25] = 0;
          v13[26] = 0;
          v13[24] = 0;
          *(v13 + 54) = 0;
          v27 = (v8 + v10 + 192);
          v28 = *(v8 + v10 + 200);
          v13[24] = *v27;
          *v27 = 0;
          v13[25] = v28;
          *(v12 + 200) = 0;
          v29 = v7[v10 / 8 + 26];
          v13[26] = *(v8 + v10 + 208);
          *(v12 + 208) = v29;
          v30 = v7[v10 / 8 + 28];
          v13[28] = *(v8 + v10 + 224);
          *(v12 + 224) = v30;
          *(v12 + 216) = *(v8 + v10 + 216) + 1;
          *(v13 + 54) = LODWORD(v7[v10 / 8 + 27]) + 1;
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v27);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 152);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 112);
          re::DynamicString::deinit((v8 + v10 + 40));
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v8 + v10);
          v10 += 240;
        }

        while (v12 + 240 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_22:
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
        v11 = v8 + 144 * v9;
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
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v13[8] = *(v8 + v10 + 64);
          v17 = *(v8 + v10 + 48);
          v13[5] = *(v8 + v10 + 40);
          *(v12 + 40) = 0;
          v18 = *(v8 + v10 + 56);
          *(v12 + 64) = 0;
          v20 = v7[v10 / 8 + 6];
          v19 = v7[v10 / 8 + 7];
          v13[6] = v17;
          v13[7] = v18;
          *(v12 + 48) = v20;
          *(v12 + 56) = v19;
          v21 = *(v8 + v10 + 96);
          *(v13 + 5) = *(v8 + v10 + 80);
          *(v13 + 6) = v21;
          LODWORD(v18) = *(v8 + v10 + 112);
          *(v13 + 112) = v18;
          if (v18 == 1)
          {
            *(v13 + 113) = *(v12 + 113);
          }

          v22 = *(v12 + 114);
          *(v13 + 114) = v22;
          if (v22 == 1)
          {
            BYTE3(v7[v10 / 8 + 14]) = *(v8 + v10 + 115);
          }

          v23 = &v7[v10 / 8];
          v24 = *(v12 + 116);
          BYTE4(v7[v10 / 8 + 14]) = v24;
          if (v24 == 1)
          {
            *(v23 + 117) = *(v8 + v10 + 117);
          }

          *(v23 + 15) = *(v12 + 120);
          re::DynamicString::deinit((v12 + 40));
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 144;
        }

        while (v12 + 144 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          v17 = *(v8 + 64);
          v18 = *(v8 + 96);
          *(v11 + 5) = *(v8 + 80);
          *(v11 + 6) = v18;
          *(v11 + 3) = v16;
          *(v11 + 4) = v17;
          *(v11 + 2) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 112;
          v11 += 14;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 112);
          v5 -= 112;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        do
        {
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v3 + 192);
          re::DynamicArray<unsigned long>::deinit(v3 + 152);
          re::DynamicArray<unsigned long>::deinit(v3 + 112);
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v3);
          v3 += 240;
          v5 -= 240;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        do
        {
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 144;
          v5 -= 144;
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

uint64_t re::anonymous namespace::hashNSArrayPtrs(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [a1 objectAtIndex_];
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    v5 = (v5 + ((v7 ^ (v7 >> 31)) << 6) + ((v7 ^ (v7 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v7 ^ (v7 >> 31);
    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t re::getOrCreateComputePipelineState(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = re::Hash<re::DynamicString>::operator()(info, a2);
  Key = re::MetalFunctionConfiguration::generateKey((a2 + 32));
  if (*(a2 + 176))
  {
    v6 = *(a2 + 177);
  }

  else
  {
    v6 = 0;
  }

  v7 = ((((v4 << 6) + (v4 >> 2) + Key - 0x61C8864680B583E9) ^ v4) + (v6 << 6) - 0x61C8864680B583E9) ^ v6;
  v8 = *(a2 + 168);
  if (v8)
  {
    v10 = (v7 - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2)) ^ v9;
    v12 = (v10 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
    v7 = (v12 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  v14 = *(a1 + 48);
  os_unfair_lock_lock((v14 + 152));
  if (!*(v14 + 160) || (v16 = *(*(v14 + 168) + 4 * (v7 % *(v14 + 184))), v16 == 0x7FFFFFFF))
  {
LABEL_11:
    MetalFunction = re::getOrCreateMetalFunction(a1, a2, (a2 + 32), v15);
    v19 = mach_absolute_time();
    re::ShaderManager::makeComputePipelineDescriptor(&v50, *(a1 + 48));
    if (*(a2 + 168))
    {
      [v50 setLinkedFunctions_];
    }

    [v50 setComputeFunction_];
    if (*(a2 + 176) == 1)
    {
      [v50 setThreadGroupSizeIsMultipleOfThreadExecutionWidth_];
    }

    re::mtl::Device::makeComputePipelineState((a1 + 208), &v50, info);
    v20 = *info;
    if (!*info)
    {
    }

    v21 = mach_absolute_time();
    v22 = v21;
    v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v21 = mach_timebase_info(info);
      if (v21)
      {
        v26 = NAN;
        goto LABEL_23;
      }

      LODWORD(v24) = *info;
      LODWORD(v25) = *&info[4];
      v23 = v24 / v25;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
    }

    v26 = v23 * (v22 - v19);
LABEL_23:
    v28 = (v26 / 1000000.0);
    v29 = *re::graphicsLogObjects(v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 8))
      {
        v30 = *(a2 + 16);
      }

      else
      {
        v30 = a2 + 9;
      }

      *info = 136446466;
      *&info[4] = v30;
      v56 = 1024;
      *v57 = v28;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for compute pipeline %{public}s in %d", info, 0x12u);
    }

    if (*(v14 + 160))
    {
      v31 = v7 % *(v14 + 184);
      v32 = *(*(v14 + 168) + 4 * v31);
      if (v32 != 0x7FFFFFFF)
      {
        v33 = *(v14 + 176);
        if (*(v33 + 24 * v32 + 8) == v7)
        {
LABEL_33:
          v27 = v33 + 24 * v32 + 16;
          goto LABEL_36;
        }

        while (1)
        {
          LODWORD(v32) = *(v33 + 24 * v32) & 0x7FFFFFFF;
          if (v32 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v33 + 24 * v32 + 8) == v7)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      LODWORD(v31) = 0;
    }

    v34 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v14 + 160, v31, v7);
    *(v34 + 8) = v7;
    *(v34 + 16) = v20;
    v27 = v34 + 16;
    ++*(v14 + 200);
LABEL_36:
    if ((atomic_load_explicit(&qword_1EE1B9D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9D00))
    {
      re::Defaults::BOOLValue(info, "enableShaderDebugLogs", v45);
      if (info[0])
      {
        v46 = info[1];
      }

      else
      {
        v46 = 0;
      }

      _MergedGlobals_460 = v46;
      __cxa_guard_release(&qword_1EE1B9D00);
    }

    if (v28 > 10 || _MergedGlobals_460 == 1)
    {
      re::MetalFunctionConfiguration::permutationString((a2 + 32), info);
      if (*(a2 + 8))
      {
        v36 = *(a2 + 16);
      }

      else
      {
        v36 = a2 + 9;
      }

      if (*(a2 + 176))
      {
        v37 = *(a2 + 177);
      }

      else
      {
        v37 = 0;
      }

      if (info[8])
      {
        v38 = *&v57[2];
      }

      else
      {
        v38 = &info[9];
      }

      re::DynamicString::format(&v47, "name=%s tgsimotew=%d fc=%s", v35, v36, v37, v38);
      isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((a1 + 208));
      v40 = isFrameCaptureEnabled;
      v41 = *re::graphicsLogObjects(isFrameCaptureEnabled);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *&v49[7];
        v43 = "";
        if ((v48 & 1) == 0)
        {
          v42 = v49;
        }

        if (v40)
        {
          v43 = "(frame capture enabled)";
        }

        *buf = 136446466;
        v52 = v42;
        v53 = 2080;
        v54 = v43;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
      }

      if (v47 && (v48 & 1) != 0)
      {
        (*(*v47 + 40))();
      }

      if (*info && (info[8] & 1) != 0)
      {
        (*(**info + 40))();
      }
    }

    if (v20)
    {
    }

    if (v50)
    {
    }

    goto LABEL_64;
  }

  v17 = *(v14 + 176);
  while (*(v17 + 24 * v16 + 8) != v7)
  {
    v16 = *(v17 + 24 * v16) & 0x7FFFFFFF;
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }

  v27 = v17 + 24 * v16 + 16;
LABEL_64:
  os_unfair_lock_unlock((v14 + 152));
  return v27;
}

uint64_t re::MeshPart::MeshPart(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8, _OWORD *a9, uint64_t a10, __int128 *a11, re::MeshPartFlags *a12, int a13, int a14)
{
  HIDWORD(v66) = a6;
  v67 = a2;
  v118 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 200) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = xmmword_1E3047670;
  *(a1 + 368) = xmmword_1E3047680;
  *(a1 + 384) = xmmword_1E30476A0;
  *(a1 + 400) = xmmword_1E30474D0;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  *(a1 + 416) = vnegq_f32(v16);
  *(a1 + 432) = v16;
  *(a1 + 456) = 0;
  *(a1 + 448) = 0;
  *(a1 + 458) = 0;
  *(a1 + 466) = 0;
  *(a1 + 473) = 0;
  *(a1 + 460) = -1;
  *(a1 + 488) = 0;
  *(a1 + 496) = &str_67;
  *(a1 + 512) = 0;
  *(a1 + 520) = 3;
  *(a1 + 524) = 0x180197E00000001;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v17 = &v74;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  v89 = 1;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v97 = 0;
  v96 = 0;
  v101 = 0;
  v102 = 0;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  v103 = 0;
  v74 = 0;
  v18 = re::BufferTable::deinit((&v76 + 8));
  v71 = a5;
  if (a5)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = a4 + 88 * v20;
      v23 = *(v22 + 8);
      if (v23)
      {
        v25 = *(v22 + 16);
        if (!v25)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        LOBYTE(v24) = *v25;
      }

      else
      {
        v24 = v23 >> 8;
        v25 = (v22 + 9);
      }

      if (v24)
      {
        v24 = v24;
        v26 = v25[1];
        if (v26)
        {
          v27 = v25 + 2;
          do
          {
            v24 = 31 * v24 + v26;
            v28 = *v27++;
            v26 = v28;
          }

          while (v28);
        }

        v29 = v24 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = 0;
      }

LABEL_14:
      *&v113 = v29;
      LOBYTE(v105) = v21;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(&v76 + 1, &v113, &v105);
      if (v102 <= v21)
      {
        v102 = v21 + 1;
      }

      v30 = re::BufferTable::setBuffer((&v76 + 8), v21, (v22 + 40));
      v32 = *(v22 + 32);
      v33 = *(v22 + 33);
      v34 = *(v22 + 33) != 0;
      v36 = *(v22 + 80);
      v35 = *(v22 + 84);
      if (v35 == -1)
      {
        v30 = re::sizeFromVertexFormat(*(v22 + 32), v31);
        LOWORD(v35) = (v30 + 3) & 0x1FC;
        if (!v33)
        {
          LOWORD(v35) = v30;
        }
      }

      v37 = *(&v75 + 1);
      if (*(&v75 + 1) <= v20)
      {
        v73[0] = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v108 = 468;
        v109 = 2048;
        v110 = v20;
        v111 = 2048;
        v112 = v37;
        _os_log_send_and_compose_impl(v59, v73, &v113, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v104 = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v108 = 468;
        v109 = 2048;
        v110 = v20;
        v111 = 2048;
        v112 = v22;
        _os_log_send_and_compose_impl(v62, &v104, &v113, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v73[0] = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v108 = 476;
        v109 = 2048;
        v110 = v36;
        v111 = 2048;
        v112 = v17;
        _os_log_send_and_compose_impl(v65, v73, &v113, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
      }

      v38 = v76 + 16 * v20;
      *v38 = v35;
      *(v38 + 2) = v34;
      *(v38 + 4) = 1;
      *(v38 + 5) = v33;
      *(v38 + 8) = v36;
      *(v38 + 12) = v32;
      if (*(v22 + 8))
      {
        v39 = *(v22 + 16);
      }

      else
      {
        v39 = (v22 + 9);
      }

      v73[0] = 0;
      v73[1] = &str_67;
      v22 = *(a1 + 336);
      if (v22 <= v20)
      {
        goto LABEL_50;
      }

      v40 = re::StringID::operator=((*(a1 + 344) + 16 * v20), v73);
      if (v73[0])
      {
        if (v73[0])
        {
        }
      }

      v20 = ++v21;
    }

    while (v71 > v21);
  }

  for (i = 460; i != 481; ++i)
  {
    v43 = *v41;
    v41 += 2;
    *&v113 = v43 & 0x7FFFFFFFFFFFFFFFLL;
    v44 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&v76 + 1, &v113);
    if (v44 == -1)
    {
      v45 = -1;
    }

    else
    {
      v45 = *(v77 + 16 * v44 + 8);
    }

    *(a1 + i) = v45;
  }

  *&v113 = 0x5353CF4AA93DFAB9;
  v46 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&v76 + 1, &v113);
  re::AttributeTableBuilder::makeAttributeTableAndReset(&v74, a1);
  if (v46 == -1)
  {
    *(a1 + 448) = 0;
  }

  else
  {
    v47 = a1;
    do
    {
      v48 = v47;
      v47 = *v47;
      v17 = v48[3];
      if (v47)
      {
        v49 = v17 == 0;
      }

      else
      {
        v49 = 0;
      }
    }

    while (v49);
    v36 = *(a1 + 460);
    if (v17 <= v36)
    {
      goto LABEL_54;
    }

    v50 = *(v48[4] + 16 * v36 + 12) == 36;
    *(a1 + 448) = HIDWORD(v66);
    *(a1 + 456) = v50;
  }

  *(a1 + 452) = a7;
  re::StringID::operator=((a1 + 488), v67);
  *(a1 + 504) = a10;
  *(a1 + 458) = a3;
  *(a1 + 516) = a14;
  if (a13 == -1)
  {
    v51 = a7;
  }

  else
  {
    v51 = a13;
  }

  *(a1 + 512) = v51;
  v52 = a9[1];
  *(a1 + 416) = *a9;
  *(a1 + 432) = v52;
  *(a1 + 528) = re::MeshPartFlags::flattenToRenderFlags(a12);
  *(a1 + 524) = a8;
  v53 = *a11;
  v54 = a11[1];
  v55 = a11[3];
  *(a1 + 384) = a11[2];
  *(a1 + 400) = v55;
  *(a1 + 352) = v53;
  *(a1 + 368) = v54;
  re::AttributeTableBuilder::~AttributeTableBuilder(&v74);
  return a1;
}

void re::MeshPart::~MeshPart(re::MeshPart *this)
{
  re::StringID::destroyString((this + 488));
  re::FixedArray<re::StringID>::deinit(this + 41);

  re::AttributeTable::~AttributeTable(this);
}

double re::MeshPart::computeTriangleCount(re::AttributeTable **this)
{
  v1 = this;
  v71 = *MEMORY[0x1E69E9840];
  if (*(this + 520) != 4)
  {
    return result;
  }

  v2 = *(this + 460);
  if (v2 == 255)
  {
    return result;
  }

  if (*(this + 112) < 3u)
  {
    return result;
  }

  re::AttributeTable::buffers(this);
  if (v4 <= v2)
  {
    return result;
  }

  v5 = v1;
  do
  {
    v6 = v5[3];
    v5 = *v5;
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  while (v7);
  if (v6 <= v2)
  {
    return result;
  }

  v8 = re::AttributeTable::buffers(v1);
  if (v9 <= v2)
  {
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v54);
    __break(1u);
    goto LABEL_74;
  }

  v10 = v8 + 24 * v2;
  do
  {
    v11 = v1;
    v1 = *v1;
    v12 = v11[3];
    if (v1)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  if (v12 <= v2)
  {
LABEL_74:
    v57[0] = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = v12;
    *v64 = 136315906;
    *&v64[4] = "operator[]";
    v65 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v2;
    v69 = 2048;
    *v70 = v46;
    _os_log_send_and_compose_impl(v47, v57, &v59, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v55, v56);
    _os_crash_msg();
    __break(1u);
  }

  v14 = re::sizeFromVertexFormat(*(v11[4] + 16 * v2 + 12), v9);
  v15 = *(v10 + 4);
  v16 = *(v10 + 5);
  v59 = *v10;
  *&v60 = __PAIR64__(v16, v15);
  *v64 = 0;
  HIDWORD(v68) = 0;
  *&v70[2] = v15;
  *&v70[6] = v16;
  v57[0] = v64;
  v57[1] = v64;
  if (DWORD2(v59) == -1)
  {
    v48 = std::__throw_bad_variant_access[abi:nn200100]();
    *&result = re::makeDrawCallHelper(v48, v49, v50, v51, v52).n128_u64[0];
  }

  else
  {
    v17 = v14;
    v58 = v57;
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[DWORD2(v59)])(&v58, &v59);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v59, v64);
    v18 = 2 * v17;
    v19 = 0;
    v20 = v60 / v17 - 2;
    if (v60 / v17 != 2)
    {
      v21 = *(&v59 + 1) + 1;
      v22 = v17 - 1;
      v23 = *(&v59 + 1) + 1 + v18;
      do
      {
        v24 = *(&v59 + 1) + v19;
        if (*(*(&v59 + 1) + v19) == 15)
        {
          v25 = 0;
          while (v22 != v25)
          {
            v26 = *(v21 + v25++);
            if (v26 != 15)
            {
              if (v25 >= v17)
              {
                break;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          if (*(v24 + v17) == 15)
          {
            v27 = 0;
            while (v22 != v27)
            {
              v28 = *(v21 + v17 + v27++);
              if (v28 != 15)
              {
                if (v27 >= v17)
                {
                  break;
                }

                goto LABEL_31;
              }
            }
          }

          else
          {
LABEL_31:
            if (*(v24 + 2 * v17) != 15)
            {
              break;
            }

            v29 = 0;
            while (v22 != v29)
            {
              v30 = *(v23 + v29++);
              if (v30 != 15)
              {
                if (v29 < v17)
                {
                  goto LABEL_37;
                }

                break;
              }
            }
          }
        }

        v19 += v17;
        v21 += v17;
        v23 += v17;
      }

      while (v19 < v20);
    }

LABEL_37:
    if (v19 < v20)
    {
      v31 = 0;
      v32 = *(&v59 + 1) + 1 + v18;
      v33 = v17 - 1;
      do
      {
        if (*(*(&v59 + 1) + v18 + v19) == 15)
        {
          v34 = 0;
          while (v33 != v34)
          {
            v35 = *(v32 + v19 + v34++);
            if (v35 != 15)
            {
              if (v34 < v17)
              {
                goto LABEL_44;
              }

              break;
            }
          }

          v36 = *(&v59 + 1) + 1 + v19;
          v37 = v32 + v19;
          do
          {
            v38 = *(&v59 + 1) + v19;
            if (*(*(&v59 + 1) + v19) == 15)
            {
              v39 = 0;
              while (v33 != v39)
              {
                v40 = *(v36 + v39++);
                if (v40 != 15)
                {
                  if (v39 >= v17)
                  {
                    break;
                  }

                  goto LABEL_51;
                }
              }
            }

            else
            {
LABEL_51:
              if (*(v38 + v17) == 15)
              {
                v41 = 0;
                while (v33 != v41)
                {
                  v42 = *(v36 + v17 + v41++);
                  if (v42 != 15)
                  {
                    if (v41 >= v17)
                    {
                      break;
                    }

                    goto LABEL_56;
                  }
                }
              }

              else
              {
LABEL_56:
                if (*(v38 + 2 * v17) != 15)
                {
                  break;
                }

                v43 = 0;
                while (v33 != v43)
                {
                  v44 = *(v37 + v43++);
                  if (v44 != 15)
                  {
                    if (v43 < v17)
                    {
                      goto LABEL_62;
                    }

                    break;
                  }
                }
              }
            }

            v19 += v17;
            v36 += v17;
            v37 += v17;
          }

          while (v19 < v20);
        }

        else
        {
LABEL_44:
          ++v31;
          v19 += v17;
        }

LABEL_62:
        ;
      }

      while (v19 < v20);
    }

    if (v59 == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v59 + 8));
    }

    else if (*(&v60 + 1) && (v61 & 1) != 0)
    {
      (*(**(&v60 + 1) + 40))();
    }

    if (HIDWORD(v68) != -1)
    {
      (off_1F5D08F98[HIDWORD(v68)])(&v59, v64);
    }
  }

  return result;
}

__n128 re::makeDrawCallHelper(__n128 *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, char a5)
{
  v5 = a2[1].n128_u64[1];
  if (a2[12].n128_u8[0] == 1)
  {
    a1[5].n128_u8[0] = a2[12].n128_u8[1] | a5;
  }

  a1[4].n128_u64[1] = a2[2].n128_u64[1];
  v6 = a1->n128_u16[0] & 0xFFFE;
  if (*(v5 + 460) != 255)
  {
    ++v6;
  }

  a1->n128_u16[0] = v6;
  v7 = v6 & 0xFFF1 | (2 * (*(v5 + 520) & 7));
  a1->n128_u16[0] = v7;
  v8 = v7 & 0xFFBF | ((a2[12].n128_u16[2] & 1) << 6);
  a1->n128_u16[0] = v8;
  v9 = a2[12].n128_u32[1];
  if ((v9 & 0x800) != 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = -2;
  }

  v11 = v10 & a1->n128_u16[5];
  if ((v9 & 0x1000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = -3;
  }

  a1->n128_u16[5] = v11 & v12;
  v13 = v8 & 0xFDFF | (((v9 & 0x60) != 96) << 9);
  a1->n128_u16[0] = v13;
  if ((v9 & 0x60) != 0x60)
  {
    v14 = a2[12].n128_u32[1];
    if ((v14 & 0x20) != 0)
    {
      v15 = 1024;
    }

    else
    {
      v15 = 2048;
    }

    if ((v14 & 0x40) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v13 = v16 | v13 & 0xF3FF;
    a1->n128_u16[0] = v13;
  }

  v17 = a2[12].n128_u32[1] & 0x300000;
  v18 = v13 & 0xEFFF | ((v17 != 0) << 12);
  a1->n128_u16[0] = v18;
  if (v17)
  {
    v19 = a2[12].n128_u32[1];
    if ((v19 & 0x100000) != 0)
    {
      LOWORD(v20) = 0;
    }

    else
    {
      v20 = ((v19 >> 21) & 1) << 13;
    }

    v18 = v20 | v18 & 0xDFFF;
    a1->n128_u16[0] = v18;
  }

  a1[6].n128_u64[1] = *(v5 + 496);
  v21 = *(v5 + 448);
  v22 = v18 & 0xFF7F | ((*(v5 + 456) & 1) << 7);
  a1->n128_u16[0] = v22;
  a1->n128_u16[0] = v22 & 0xFEFF | (((a2[12].n128_u8[4] & 2) != 0) << 8);
  a1[1].n128_u32[0] = *(v5 + 452);
  a1[1].n128_u32[1] = v21;
  a1->n128_u8[2] = *(v5 + 460);
  a1[4].n128_u64[0] = v5;
  a1->n128_u32[1] = a2[3].n128_u32[2];
  a1[2].n128_u32[3] = a2[3].n128_u32[3];
  a1[1].n128_u32[2] = *(v5 + 516);
  a1->n128_u8[8] = *(v5 + 467);
  a1[2].n128_u32[1] = a4;
  v23 = a2[3].n128_u32[0];
  if (v23 <= 1)
  {
    v23 = *(v5 + 524);
  }

  a1[2].n128_u32[0] = v23;
  a1[3].n128_u64[1] = a2[1].n128_u64[0];
  a1[5].n128_u64[1] = a2->n128_u64[0];
  a1[6].n128_u32[0] = a2[3].n128_u32[1];
  a1->n128_u8[9] = a2[4].n128_u8[3];
  a1[6].n128_u16[2] = *(v5 + 458);
  v24 = a2[14].n128_u64[1];
  if (v24)
  {
    LOBYTE(v24) = *v24 != 0;
  }

  a1->n128_u8[3] = v24;
  result = a2[14];
  a1[7] = result;
  a1[8].n128_u64[0] = *(v5 + 504);
  return result;
}

uint64_t re::addDrawCall(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int32 a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  re::DrawCall::DrawCall(v10);
  re::makeDrawCallHelper(v11, a2, a3, a4, *(a5 + 8));
  *(v10 + 84) = *(a1 + 96);
  if (*(a5 + 9) == 1)
  {
    *(v10 + 147) = *(a5 + 10);
    *(v10 + 151) = *(a5 + 14);
    *(v10 + 152) = *(a5 + 15);
    v12 = *(a5 + 26);
    if ((*(v10 + 145) & 1) == 0)
    {
      *(v10 + 145) = 1;
    }

    *(v10 + 146) = v12;
  }

  if (*(v10 + 156))
  {
    if ((*(a5 + 28) & 1) == 0)
    {
      *(v10 + 156) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ((*(a5 + 28) & 1) == 0)
    {
      goto LABEL_11;
    }

    *(v10 + 156) = 1;
  }

  *(v10 + 160) = *(a5 + 32);
LABEL_11:
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  if (v13 + 1 > v14 << 7)
  {
    re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity((a1 + 56), (v13 + 128) >> 7);
    v14 = *(a1 + 64);
  }

  v15 = v13 >> 7;
  if (v14 <= v13 >> 7)
  {
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v52 = 858;
    v53 = 2048;
    v54 = v13 >> 7;
    v55 = 2048;
    v56 = v14;
    _os_log_send_and_compose_impl(v37, &v48, &v57, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
    _os_crash_msg();
    __break(1u);
LABEL_40:
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
    v54 = v15;
    v55 = 2048;
    v56 = v14;
    _os_log_send_and_compose_impl(v40, &v48, &v57, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v52 = 858;
    v53 = 2048;
    v54 = v14;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl(v43, &v48, &v57, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v52 = 858;
    v53 = 2048;
    v54 = v15;
    v55 = 2048;
    v56 = v14;
    _os_log_send_and_compose_impl(v45, &v48, &v57, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v46 = *(a5 + 4);
    if ((*(v10 + 48) & 1) == 0)
    {
      *(v10 + 48) = 1;
    }

    *(v10 + 52) = v46;
    return v10;
  }

  v16 = *(a1 + 88);
  if (*(a1 + 72))
  {
    v16 = a1 + 80;
  }

  v17 = *(v16 + 8 * v15);
  ++*(a1 + 96);
  ++*(a1 + 104);
  v18 = (v17 + ((v13 & 0x7F) << 6));
  v19 = *(a2 + 80);
  v20 = *(a2 + 96);
  v21 = *(a2 + 128);
  v18[2] = *(a2 + 112);
  v18[3] = v21;
  *v18 = v19;
  v18[1] = v20;
  v22 = *(*(v10 + 72) + 96);
  if (v22)
  {
    v23 = v22 + 152;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 152);
  v14 = *(a1 + 120);
  if (v24 + 1 > v14 << 7)
  {
    re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity((a1 + 112), (v24 + 128) >> 7);
    v14 = *(a1 + 120);
  }

  v15 = v24 >> 7;
  if (v14 <= v24 >> 7)
  {
    goto LABEL_40;
  }

  v25 = *(a1 + 144);
  if (*(a1 + 128))
  {
    v25 = a1 + 136;
  }

  v26 = *(v25 + 8 * v15);
  ++*(a1 + 152);
  ++*(a1 + 160);
  *(v26 + 8 * (v24 & 0x7F)) = v23;
  v27 = *(a2 + 208);
  v28 = *(a2 + 200);
  v29 = *(a1 + 208);
  v15 = *(a1 + 176);
  if (v29 + 1 > v15 << 7)
  {
    re::BucketArray<float,128ul>::setBucketsCapacity((a1 + 168), (v29 + 128) >> 7);
    v15 = *(a1 + 176);
  }

  v14 = v29 >> 7;
  if (v15 <= v29 >> 7)
  {
    goto LABEL_44;
  }

  v30 = *(a1 + 200);
  if (*(a1 + 184))
  {
    v30 = a1 + 192;
  }

  v31 = *(v30 + 8 * v14);
  ++*(a1 + 208);
  ++*(a1 + 216);
  *(v31 + 4 * (v29 & 0x7F)) = v27 * v28;
  v32 = *(a1 + 264);
  v14 = *(a1 + 232);
  if (v32 + 1 > v14 << 7)
  {
    re::BucketArray<unsigned int,128ul>::setBucketsCapacity((a1 + 224), (v32 + 128) >> 7);
    v14 = *(a1 + 232);
  }

  v15 = v32 >> 7;
  if (v14 <= v32 >> 7)
  {
    goto LABEL_48;
  }

  v33 = *(a1 + 256);
  if (*(a1 + 240))
  {
    v33 = a1 + 248;
  }

  v34 = *(v33 + 8 * v15);
  ++*(a1 + 264);
  ++*(a1 + 272);
  *(v34 + 4 * (v32 & 0x7F)) = *(a2 + 216);
  if (*a5 == 1)
  {
    goto LABEL_52;
  }

  return v10;
}

uint64_t re::addInstancedDrawCall(re::DrawTable *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, unsigned int a5, uint64_t a6)
{
  v12 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  re::DrawCall::DrawCall(v12);
  re::makeDrawCallHelper(v13, a2, a3, a4, *(a6 + 8));
  *(v12 + 3) = 2;
  *(v12 + 32) = a5;
  *(v12 + 84) = *(a1 + 12);
  if (*(a6 + 9) == 1)
  {
    *(v12 + 147) = *(a6 + 10);
    *(v12 + 151) = *(a6 + 14);
    *(v12 + 152) = *(a6 + 15);
    v14 = *(a6 + 26);
    if ((*(v12 + 145) & 1) == 0)
    {
      *(v12 + 145) = 1;
    }

    *(v12 + 146) = v14;
  }

  re::DrawTable::expandCompanionData(a1, a5);
  if (*a6 == 1)
  {
    v16 = *(a6 + 4);
    if ((*(v12 + 48) & 1) == 0)
    {
      *(v12 + 48) = 1;
    }

    *(v12 + 52) = v16;
  }

  return v12;
}

_anonymous_namespace_ *re::DrawTable::expandCompanionData(re::DrawTable *this, uint64_t a2)
{
  v4 = *(this + 12);
  re::BucketArray<re::Matrix4x4<float>,128ul>::resize(this + 56, v4 + a2);
  re::BucketArray<re::ConstantTable const*,128ul>::resize((this + 112), v4 + a2);
  re::BucketArray<float,128ul>::resize((this + 168), v4 + a2);

  return re::BucketArray<unsigned int,128ul>::resize((this + 224), v4 + a2);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > *(result + 8) << 7)
    {
      result = re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v3, v4);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }
  }

  ++*(v3 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ConstantTable const*,128ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 5);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::ConstantTable const*,128ul>::operator[](v3, v5++);
      }

      while (v5 != v3[5]);
      v3[5] = a2;
    }
  }

  else
  {
    if (a2 > *(result + 1) << 7)
    {
      result = re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = v3[5];
    }

    for (v3[5] = a2; v4 != v3[5]; ++v4)
    {
      result = re::BucketArray<re::ConstantTable const*,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 12);
  return result;
}

_anonymous_namespace_ *re::BucketArray<float,128ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 5);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<unsigned int,128ul>::operator[](v3, v5++);
      }

      while (v5 != v3[5]);
      v3[5] = a2;
    }
  }

  else
  {
    if (a2 > *(result + 1) << 7)
    {
      result = re::BucketArray<float,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = v3[5];
    }

    for (v3[5] = a2; v4 != v3[5]; ++v4)
    {
      result = re::BucketArray<unsigned int,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 12);
  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned int,128ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 5);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<unsigned int,128ul>::operator[](v3, v5++);
      }

      while (v5 != v3[5]);
      v3[5] = a2;
    }
  }

  else
  {
    if (a2 > *(result + 1) << 7)
    {
      result = re::BucketArray<unsigned int,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = v3[5];
    }

    for (v3[5] = a2; v4 != v3[5]; ++v4)
    {
      result = re::BucketArray<unsigned int,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 12);
  return result;
}

void re::RenderGraphPersistentResourceManager::~RenderGraphPersistentResourceManager(id *this)
{
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((this + 8));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 8);
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((this + 2));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 2);
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 8);
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 2);
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_19, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

double re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
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

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_4, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

double re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
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

void re::RenderGraphPersistentResourceManager::pruneExpiredData(uint64_t this, unsigned int a2)
{
  v4 = *(this + 48);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 32);
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
        v5 = *(this + 48);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 != v5)
  {
    v8 = *(this + 32);
    v9 = v5;
    do
    {
      if (*(this + 112) + *(v8 + 72 * v9 + 24) < a2)
      {
        v10 = *(v8 + 72 * v9 + 8);
        v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v28, this + 16, v10, v11 ^ (v11 >> 31));
        v12 = v30;
        if (v30 != 0x7FFFFFFF)
        {
          v13 = *(v8 + 72 * v30) & 0x7FFFFFFF;
          if (v31 == 0x7FFFFFFF)
          {
            *(*(this + 24) + 4 * v29) = v13;
          }

          else
          {
            *(v8 + 72 * v31) = *(v8 + 72 * v31) & 0x80000000 | v13;
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 16, v12);
          v8 = *(this + 32);
          *(v8 + 72 * v12) = *(v8 + 72 * v12) & 0x80000000 | *(this + 52);
          LODWORD(v4) = *(this + 48);
          --*(this + 44);
          v14 = *(this + 56) + 1;
          *(this + 52) = v12;
          *(this + 56) = v14;
        }
      }

      v15 = v5 + 1;
      if (v4 <= v5 + 1)
      {
        v9 = (v5 + 1);
      }

      else
      {
        v9 = v4;
      }

      if (v5 == v9 - 1)
      {
LABEL_21:
        v15 = v9;
      }

      else
      {
        while ((*(v8 + 72 * v15) & 0x80000000) == 0)
        {
          if (v9 == ++v15)
          {
            goto LABEL_21;
          }
        }

        v9 = v15;
      }

      LODWORD(v5) = v15;
    }

    while (v4 != v15);
  }

  v16 = *(this + 96);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 80);
    while (1)
    {
      v19 = *v18;
      v18 += 14;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        v17 = *(this + 96);
        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if (v16 != v17)
  {
    v20 = *(this + 80);
    v21 = v17;
    do
    {
      if (*(this + 112) + *(v20 + 56 * v21 + 24) < a2)
      {
        v22 = *(v20 + 56 * v21 + 8);
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
        re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(v28, this + 64, v22, v23 ^ (v23 >> 31));
        v24 = v30;
        if (v30 != 0x7FFFFFFF)
        {
          v25 = *(v20 + 56 * v30) & 0x7FFFFFFF;
          if (v31 == 0x7FFFFFFF)
          {
            *(*(this + 72) + 4 * v29) = v25;
          }

          else
          {
            *(v20 + 56 * v31) = *(v20 + 56 * v31) & 0x80000000 | v25;
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 64, v24);
          v20 = *(this + 80);
          *(v20 + 56 * v24) = *(v20 + 56 * v24) & 0x80000000 | *(this + 100);
          LODWORD(v16) = *(this + 96);
          --*(this + 92);
          v26 = *(this + 104) + 1;
          *(this + 100) = v24;
          *(this + 104) = v26;
        }
      }

      v27 = v17 + 1;
      if (v16 <= v17 + 1)
      {
        v21 = (v17 + 1);
      }

      else
      {
        v21 = v16;
      }

      if (v17 == v21 - 1)
      {
LABEL_44:
        v27 = v21;
      }

      else
      {
        while ((*(v20 + 56 * v27) & 0x80000000) == 0)
        {
          if (v21 == ++v27)
          {
            goto LABEL_44;
          }
        }

        v21 = v27;
      }

      LODWORD(v17) = v27;
    }

    while (v16 != v27);
  }
}

void re::RenderGraphPersistentResourceManager::registerPersistentTexture(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, const re::WeakStringID *a4, re::RenderFrame *a5, const re::RenderGraphTargetDescription *a6, BOOL *a7)
{
  v10 = *re::RenderGraphPersistentResourceManager::getOrCreateTextureInternal(this, a2, a4, a5, a6, a7);
  v11 = v10;
  re::RenderFrame::registerExternalTexture(a5, &v11, a3, a2, 0);
  if (v10)
  {
  }
}

uint64_t re::RenderGraphPersistentResourceManager::getOrCreateTextureInternal(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, re::RenderFrame *a4, const re::RenderGraphTargetDescription *a5, BOOL *a6)
{
  v10 = (*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  v12 = v11 ^ (v11 >> 31);
  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v26, this + 16, v10, v12);
  if (HIDWORD(v26[1]) == 0x7FFFFFFF || (v13 = *(this + 4) + 72 * HIDWORD(v26[1]), v14.i32[0] = *(v13 + 36), v14.i32[1] = *(v13 + 56), v14.i64[1] = *(v13 + 28), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v14, *(a5 + 4))))) & 1) != 0) || (*(v13 + 44) == *(a5 + 6) ? (v15 = *(v13 + 40) == *(a5 + 9)) : (v15 = 0), v15 ? (v16 = *(v13 + 48) == *(a5 + 11)) : (v16 = 0), !v16))
  {
    memset(v26, 0, 48);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v27, this + 16, v10, v12);
    v19 = HIDWORD(v28);
    if (HIDWORD(v28) == 0x7FFFFFFF)
    {
      v20 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 2, v28, v27);
      *(v20 + 16) = 0;
      v18 = v20 + 16;
      *(v20 + 8) = v10;
      v26[0] = 0;
      v21 = *&v26[3];
      *(v20 + 24) = *&v26[1];
      *(v20 + 40) = v21;
      *(v20 + 56) = v26[5];
      ++*(this + 14);
    }

    else
    {
      ++*(this + 14);
      v22 = *(this + 4) + 72 * v19;
      v18 = v22 + 16;
      NS::SharedPtr<MTL::Texture>::operator=((v22 + 16), v26);
      v23 = v26[5];
      v24 = *&v26[3];
      *(v22 + 24) = *&v26[1];
      *(v22 + 56) = v23;
      *(v22 + 40) = v24;
      if (v26[0])
      {
      }
    }

    *(v18 + 24) = *(a5 + 9);
    textureDescFromTargetDesc(a5, &v27);
    re::mtl::Device::makeTexture(v26, v27, this);
    NS::SharedPtr<MTL::Texture>::operator=(v18, v26);
    if (v26[0])
    {

      v26[0] = 0;
    }

    if (v27)
    {
    }

    *(v18 + 12) = *(a5 + 12);
    *(v18 + 20) = *(a5 + 1);
    *(v18 + 40) = *(a5 + 2);
    *(v18 + 28) = *(a5 + 6);
    *(v18 + 32) = *(a5 + 11);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v18 = v13 + 16;
  }

  *a6 = v17;
  *(v18 + 8) = *(a4 + 48);
  return v18;
}

uint64_t re::RenderGraphPersistentResourceManager::registerPersistentBuffer(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, const re::WeakStringID *a4, re::RenderFrame *a5, const re::RenderGraphBufferDescription *a6, BOOL *a7, BOOL a8)
{
  BufferInternal = re::RenderGraphPersistentResourceManager::getOrCreateBufferInternal(this, a2, a4, a5, a6, a7, a8);
  v12 = *BufferInternal;
  v15 = 0;
  v16 = 0;
  v17 = [*BufferInternal length];
  result = re::RenderFrame::registerExternalBuffer(a5, v14, a3, a2, 0);
  if (v15 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_3[v15])(&v18, v14);
  }

  return result;
}

uint64_t re::RenderGraphPersistentResourceManager::getOrCreateBufferInternal(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char *a6, int a7)
{
  v12 = (*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
  v14 = v13 ^ (v13 >> 31);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(v29, a1 + 64, v12, v14);
  if (HIDWORD(v29[1]) == 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  v15 = *(a1 + 80) + 56 * HIDWORD(v29[1]);
  v16 = *(v15 + 32);
  v17 = *(a5 + 8);
  v20 = v16 == v17;
  v18 = v16 >= v17;
  v19 = v20;
  if (!a7)
  {
    v18 = v19;
  }

  v20 = v18 && *(v15 + 40) == *(a5 + 24);
  if (v20)
  {
    v27 = 0;
    v23 = v15 + 16;
  }

  else
  {
LABEL_11:
    memset(v29, 0, 32);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v30, a1 + 64, v12, v14);
    v21 = HIDWORD(v31);
    if (HIDWORD(v31) == 0x7FFFFFFF)
    {
      v22 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((a1 + 64), v31, v30);
      *(v22 + 16) = 0;
      v23 = v22 + 16;
      *(v22 + 8) = v12;
      v29[0] = 0;
      *(v22 + 24) = *&v29[1];
      *(v22 + 40) = v29[3];
      ++*(a1 + 104);
    }

    else
    {
      ++*(a1 + 104);
      v24 = *(a1 + 80) + 56 * v21;
      v23 = v24 + 16;
      NS::SharedPtr<MTL::Texture>::operator=((v24 + 16), v29);
      v25 = *&v29[1];
      *(v24 + 40) = v29[3];
      *(v24 + 24) = v25;
      if (v29[0])
      {
      }
    }

    v26 = *(a5 + 24);
    if (v26 == 0xFFFF)
    {
      v26 = 0;
    }

    v29[0] = [*a1 newBufferWithLength:*(a5 + 8) options:{v26, v29[0]}];
    NS::SharedPtr<MTL::Texture>::operator=(v23, v29);
    if (v29[0])
    {
    }

    *(v23 + 16) = *(a5 + 8);
    *(v23 + 24) = *(a5 + 24);
    v27 = 1;
  }

  *a6 = v27;
  *(v23 + 8) = *(a4 + 384);
  return v23;
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 56 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 72 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = a1[2];
          *&v28[16] = v13;
          a1[2] = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 3);
          v14 = *&v28[32];
          *(a1 + 3) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 6), *(v13 + 64));
                v19 = *(v13 + 16);
                *(v18 + 8) = *(v13 + 8);
                *(v18 + 16) = v19;
                *(v13 + 16) = 0;
                v20 = *(v13 + 40);
                v21 = *(v13 + 24);
                *(v18 + 56) = *(v13 + 56);
                *(v18 + 24) = v21;
                *(v18 + 40) = v20;
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v22 = a1[2];
    v23 = *(v22 + 72 * v5);
  }

  else
  {
    v22 = a1[2];
    v23 = *(v22 + 72 * v5);
    *(a1 + 9) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 72 * v5;
  *v25 = v23 | 0x80000000;
  v26 = a1[1];
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 64) = a3;
  ++*(a1 + 7);
  return v22 + 72 * v5;
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_4, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = a1[2];
          *&v28[16] = v13;
          a1[2] = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 3);
          v14 = *&v28[32];
          *(a1 + 3) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 24;
            do
            {
              if ((*(v18 - 24) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 6), *(v18 + 24));
                v20 = *(v18 - 8);
                *(v19 + 8) = *(v18 - 16);
                *(v19 + 16) = v20;
                *(v18 - 8) = 0;
                v21 = *v18;
                *(v19 + 40) = *(v18 + 16);
                *(v19 + 24) = v21;
              }

              ++v17;
              v18 += 56;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v22 = a1[2];
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = a1[2];
    v23 = *(v22 + 56 * v5);
    *(a1 + 9) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = a1[1];
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 7);
  return v22 + 56 * v5;
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_4, 4 * v10);
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

uint64_t re::DrawCallMeshVisitor::visitMeshScene(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  if (v2 == 1)
  {
    *(a1 + 16) = *(a2 + 208);
    *(a1 + 32) = *(a2 + 224);
    *(a1 + 48) = *(a2 + 240);
    *(a1 + 64) = *(a2 + 256);
    *(a1 + 80) = *(a2 + 272);
    *(a1 + 88) = *(a2 + 192);
    *(a1 + 104) = *(a2 + 296);
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = *(a2 + 328);
    *(a1 + 152) = *(a2 + 312);
    *(a1 + 168) = *(a2 + 344);
    re::DrawCallMeshVisitor::visitScene(a1, a2);
  }

  return v2;
}

float re::DrawCallMeshVisitor::visitScene(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 472);
  DWORD1(v2) = *(a2 + 696);
  *(&v2 + 1) = *(a2 + 700);
  *(a1 + 336) = v2;
  *(a1 + 352) = *(a2 + 708);
  *(a1 + 356) = *(a2 + 712);
  *(a1 + 358) = *(a2 + 718);
  v3 = a2 + 352;
  if (!*(a2 + 376))
  {
    v3 = 0;
  }

  *(a1 + 296) = v3;
  *(a1 + 306) = *(a2 + 416);
  *(a1 + 328) = *(a2 + 464);
  v4 = *(a2 + 476);
  *(a1 + 360) = v4;
  LOBYTE(v4) = *(a2 + 690);
  *(a1 + 364) = v4;
  v5 = *(a2 + 432);
  if (*(a1 + 312))
  {
    if ((*(a2 + 424) & 1) == 0)
    {
      *(a1 + 312) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if ((*(a2 + 424) & 1) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 312) = 1;
  }

  *(a1 + 320) = v5;
LABEL_9:
  *(a1 + 372) = *(a2 + 440);
  *(a1 + 384) = *(a2 + 448);
  *(a1 + 408) = *(a2 + 528);
  if ((*(a1 + 416) & 1) == 0)
  {
    if ((*(a2 + 544) & 1) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 416) = 1;
LABEL_14:
    v6 = *(a2 + 576);
    *(a1 + 432) = *(a2 + 560);
    *(a1 + 448) = v6;
    goto LABEL_15;
  }

  if (*(a2 + 544))
  {
    goto LABEL_14;
  }

  *(a1 + 416) = 0;
LABEL_15:
  *(a1 + 464) = *(a2 + 592);
  result = *(a2 + 480);
  *(a1 + 368) = result;
  return result;
}

uint64_t re::DrawCallMeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  result = re::MeshVisitor::visitMeshInstance(a1, a2);
  if (result)
  {
    *(a1 + 176) = *(a2 + 112);
  }

  return result;
}

void re::DrawCallMeshVisitor::visitMeshPart(uint64_t a1, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  LevelIndex = re::MeshVisitor::findLevelIndex(a1, *(a2 + 24));
  if ((LevelIndex & 0x80000000) != 0)
  {
    return;
  }

  v6 = LevelIndex;
  v7 = buf;
  v8 = *(a2 + 72);
  re::globalAllocators(LevelIndex);
  v9 = *(*(a1 + 488) + 32);
  v10 = (*(*v9 + 32))(v9, 336, 16);
  v11 = *(*(a1 + 488) + 32);
  *(v10 + 48) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 224) = 0;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 176) = 0;
  *(v10 + 184) = v11;
  *(v10 + 232) = xmmword_1E304F3C0;
  *(v10 + 248) = 0;
  *(v10 + 252) = 10854;
  __asm { FMOV            V0.2S, #1.0 }

  *(v10 + 256) = _D0;
  *(v10 + 264) = 0;
  *(v10 + 272) = 0;
  *(v10 + 320) = 0;
  *(&v113 + 1) = re::globalAllocators(v10)[2];
  v114 = buf;
  *buf = &unk_1F5D09010;
  v16 = (*(*v9 + 16))(v9, v10, buf);
  v17 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
  if (*(a1 + 96) <= v8)
  {
    *(v16 + 56) = *(a1 + 400);
    if (*(a1 + 24) > v8)
    {
      *v16 = 0;
    }

    if (*(a1 + 40) > v8)
    {
      v19 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(v16 + 56) = *(*(a1 + 88) + 8 * v8);
    if (*(a1 + 24) > v8)
    {
      *v16 = *(a1 + 16) + 24 * v8;
    }

    if (*(a1 + 40) > v8)
    {
      v19 = *(a1 + 32) + 24 * v8;
LABEL_11:
      *(v16 + 8) = v19;
    }
  }

  *(v16 + 16) = *(a1 + 48);
  *(v16 + 32) = *(a1 + 64);
  *(v16 + 48) = *(a1 + 80);
  if (*(a1 + 128) <= v8)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(*(a1 + 120) + 8 * v8);
  }

  *(v16 + 72) = v20;
  if (*(a1 + 144) <= v8)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*(a1 + 136) + 8 * v8);
  }

  *(v16 + 80) = v21;
  if (*(a1 + 112) <= v8)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(*(a1 + 104) + 8 * v8);
  }

  v23 = (a1 + 306);
  *(v16 + 64) = v22;
  v24 = *(a1 + 176);
  if (v24 < *(a1 + 160))
  {
    v25 = (*(a1 + 152) + 16 * v24);
    if (v25[1] <= v8)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*v25 + 8 * v8);
    }

    *(v16 + 96) = v26;
  }

  v27 = *(v16 + 56);
  *(v16 + 88) = *(a1 + 168);
  *(v16 + 200) = *v23;
  if (*(v16 + 208))
  {
    if ((*(a1 + 312) & 1) == 0)
    {
      *(v16 + 208) = 0;
      goto LABEL_32;
    }
  }

  else
  {
    if ((*(a1 + 312) & 1) == 0)
    {
      goto LABEL_32;
    }

    *(v16 + 208) = 1;
  }

  *(v16 + 216) = *(a1 + 320);
LABEL_32:
  *(v16 + 224) = *(a1 + 328);
  *(v16 + 232) = *(a1 + 336);
  *(v16 + 248) = *(a1 + 352);
  *(v16 + 252) = *(a1 + 356);
  *(v16 + 256) = *(a1 + 360);
  *(v16 + 260) = *(a1 + 368);
  *(v16 + 264) = *(a1 + 364) != 0.0;
  if (*(v16 + 272))
  {
    if ((*(a1 + 416) & 1) == 0)
    {
      *(v16 + 272) = 0;
      goto LABEL_38;
    }
  }

  else
  {
    if ((*(a1 + 416) & 1) == 0)
    {
      goto LABEL_38;
    }

    *(v16 + 272) = 1;
  }

  v28 = *(a1 + 448);
  *(v16 + 288) = *(a1 + 432);
  *(v16 + 304) = v28;
LABEL_38:
  *(v16 + 320) = *(a1 + 464);
  if (v27 | *(a2 + 128))
  {
    v30 = *(a2 + 56);
    v29 = *(a2 + 64);
    v116 = 0;
    v117 = -65280;
    *&v131 = 25172350;
    *(&v131 + 1) = 0x7FFFFFFFLL;
    v31 = *(a2 + 16);
    v120 = *(a2 + 20);
    LODWORD(v116) = *(a2 + 32);
    HIDWORD(v116) = v31;
    v118 = 0;
    v119 = 0;
    v128 = 0;
    v127 = 0;
    v129 = 0;
    v130 = 0;
    memset(v125, 0, sizeof(v125));
    v126 = 0;
    v135 = 0;
    v134 = 0;
    v32 = *(a2 + 40);
    *buf = *a2;
    v113 = v32;
    v114 = v29;
    v33 = v30[2];
    v34 = v30[3];
    v35 = v30[1];
    v121 = *v30;
    v122 = v35;
    v123 = v33;
    v124 = v34;
    v115 = v16;
    if (v6 >= 2)
    {
      re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v6, 2);
      _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v96, v98);
      __break(1u);
    }

    else
    {
      LODWORD(v117) = *(a1 + 4 * v6 + 280);
      v125[16] = *(a1 + 372);
      *v125 = *(a1 + 384);
      v36 = *(a1 + 176);
      v132 = *(a1 + 408);
      v133 = v36;
      if ((atomic_load_explicit(&qword_1EE1B9D10, memory_order_acquire) & 1) == 0)
      {
        v94 = __cxa_guard_acquire(&qword_1EE1B9D10);
        if (v94)
        {
          _MergedGlobals_461 = re::hashString(v94, v95);
          __cxa_guard_release(&qword_1EE1B9D10);
        }
      }

      v37 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v16, _MergedGlobals_461);
      if (v38)
      {
        v125[23] = *v37 != -1;
        v2 = *(a1 + 8);
        if (!v2)
        {
          goto LABEL_103;
        }

        v39 = *v2;
        if (!*v2)
        {
          goto LABEL_103;
        }

        v40 = *(a1 + 488);
        v41 = *(a2 + 24);
        v105 = *buf;
        if (!*v39)
        {
          goto LABEL_61;
        }

        v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*buf ^ (*buf >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*buf ^ (*buf >> 30))) >> 27));
        v43 = v42 ^ (v42 >> 31);
        v44 = *(*(v39 + 8) + 4 * (v43 % *(v39 + 24)));
        if (v44 == 0x7FFFFFFF)
        {
          goto LABEL_61;
        }

        v45 = *(v39 + 16);
        while (*(v45 + (v44 << 7) + 8) != *buf)
        {
          v44 = *(v45 + (v44 << 7)) & 0x7FFFFFFF;
          if (v44 == 0x7FFFFFFF)
          {
            goto LABEL_61;
          }
        }

        v103 = v40;
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v39, &v105, v43, v106);
        v40 = v103;
        v48 = *(v39 + 16) + (*&v106[12] << 7);
        v51 = *(v48 + 16);
        v50 = (v48 + 16);
        v49 = v51;
        if (!v51)
        {
LABEL_61:
          v104 = *&buf[8];
          v37 = v39 + 48;
          if (!*(v39 + 48))
          {
            goto LABEL_103;
          }

          v59 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) >> 27));
          v60 = v59 ^ (v59 >> 31);
          v61 = *(*(v39 + 56) + 4 * (v60 % *(v39 + 72)));
          if (v61 == 0x7FFFFFFF)
          {
            goto LABEL_103;
          }

          v62 = *(v39 + 64);
          while (*(v62 + 40 * v61 + 8) != *&buf[8])
          {
            v61 = *(v62 + 40 * v61) & 0x7FFFFFFF;
            if (v61 == 0x7FFFFFFF)
            {
              goto LABEL_103;
            }
          }

          v102 = v40;
          v37 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v37, &v104, v60, v106);
          v6 = (*(v39 + 64) + 40 * *&v106[12] + 16);
          v7 = *(v16 + 224);
          if (re::MaterialParameterTable::kFadeNameHash(void)::once == -1)
          {
LABEL_68:
            v63 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
            if (v6[1])
            {
              v37 = v2[1];
              if (v37)
              {
                v37 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v37, v6 + 1);
                if (v37 && v7 == v63)
                {
                  v65 = v37;
                  v66 = v125[17];
                  v125[17] |= 2u;
                  if (v125[16] == 5 || !v125[16])
                  {
                    if ((v66 & 1) == 0 && (*(v37 + 9) & 1) == 0)
                    {
                      v125[17] = v66 | 6;
                      v128 = *v37;
                      v125[19] = *(v37 + 4);
                    }

                    if (*(v37 + 16) == 1)
                    {
                      loga = *buf;
                      v37 = (*(**(v102 + 32) + 32))(*(v102 + 32), 32, 16);
                      *v37 = 0u;
                      *(v37 + 16) = 0u;
                      v67 = *(v65 + 48);
                      *v37 = *(v65 + 32);
                      *(v37 + 16) = v67;
                      v129 = v37;
                      if ((v125[17] & 1) == 0)
                      {
                        v125[21] = *(v65 + 64) == loga;
                      }
                    }
                  }
                }
              }
            }

            if (!*v6 || (v37 = v2[1]) == 0 || (v37 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v37, v6)) == 0)
            {
LABEL_103:
              v75 = *v23;
              v76 = *(a1 + 359);
              v77 = *(a1 + 352);
              v78 = *(a1 + 358);
              if (*(v16 + 232) == 1.0 && v75 < 0x10000)
              {
                LOWORD(v79) = 0;
                if (!*(a1 + 359))
                {
                  goto LABEL_114;
                }
              }

              else
              {
                v79 = re::useDitherFade(v37) | (2 * ((v75 & 0xFFFF0000) != 0));
                if (!v76)
                {
LABEL_114:
                  *v106 = *(a1 + 296);
                  *&v106[8] = *(a1 + 504);
                  v107 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v111 = v79;
                  *(v16 + 120) = *&v106[16];
                  *(v16 + 104) = *v106;
                  if ((v16 + 104) != v106)
                  {
                    v82 = *(v16 + 144);
                    v107 = *(v16 + 128);
                    v83 = *(v16 + 184);
                    *&v110 = *(v16 + 176);
                    *(&v110 + 1) = v83;
                    *(v16 + 128) = 0uLL;
                    *(v16 + 144) = 0uLL;
                    v108 = v82;
                    v84 = *(v16 + 160);
                    *(v16 + 160) = 0uLL;
                    *(v16 + 176) = 0uLL;
                    v109 = v84;
                  }

                  *(v16 + 192) = v79;
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v107);
                  if (v27)
                  {
                    v85 = *(v27 + 296);
                    v86 = *(v27 + 300);
                  }

                  else
                  {
                    v86 = 0;
                    v85 = 0;
                  }

                  v87 = (*(*(a2 + 48) + 528) ^ v85) & ~v86 | v85 & v86;
                  LODWORD(v131) = v87;
                  v88 = *(a2 + 88);
                  if (v88)
                  {
                    v89 = re::MaterialRenderFlags::flattenToOverrideFlags(v88);
                    v87 = (v87 ^ v89) & ~HIDWORD(v89) | HIDWORD(v89) & v89;
                    LODWORD(v131) = v87;
                  }

                  v90 = *(a2 + 80);
                  if (v90)
                  {
                    LODWORD(v131) = (*v90 ^ v87) & ~*(*(a2 + 80) + 4) | *v90 & *(*(a2 + 80) + 4);
                  }

                  v91 = *(a2 + 128);
                  v92 = *(a1 + 488);
                  v93 = *(a1 + 496);
                  if (v91)
                  {
                    re::bucketVFXMeshPart(buf, v16, v92, v93, v91);
                  }

                  else
                  {
                    re::bucketMeshPart(buf, v16, v92, v93, (a1 + 480));
                  }

                  return;
                }
              }

              v80 = v77 <= 0.0;
              if (v77 > 1.0)
              {
                v80 = 1;
              }

              if (v80 | v78)
              {
                v81 = 128;
              }

              else
              {
                v81 = 192;
              }

              LOWORD(v79) = v79 | v81;
              goto LABEL_114;
            }

            v68 = v37;
            v69 = v125[17] | 8;
            v125[17] |= 8u;
            v70 = *(v37 + 5);
            if (*(v37 + 5))
            {
              if (v70 == 3)
              {
                if (v7 != v63 && (*(v37 + 7) & 1) == 0)
                {
LABEL_92:
                  if (*(v37 + 80) == 1)
                  {
                    if (*(v37 + 8))
                    {
                      v72 = 16;
                    }

                    else
                    {
                      v72 = 0;
                    }
                  }

                  else
                  {
                    v72 = 0;
                  }

LABEL_100:
                  v125[17] = v72 | v69 & 0xEF;
                  v125[17] = v72 & 0xDF | v69 & 0xCF | (32 * *(v37 + 6));
                  v125[20] = *(v37 + 10);
                  v127 = *v37;
                  v125[18] = *(v37 + 4);
                  if (*(v37 + 16) == 1)
                  {
                    v73 = *buf;
                    v37 = (*(**(v102 + 32) + 32))(*(v102 + 32), 32, 16);
                    *v37 = 0u;
                    *(v37 + 16) = 0u;
                    v74 = *(v68 + 48);
                    *v37 = *(v68 + 32);
                    *(v37 + 16) = v74;
                    v129 = v37;
                    if ((v125[17] & 1) == 0)
                    {
                      v125[21] = *(v68 + 64) == v73;
                    }
                  }

                  goto LABEL_103;
                }
              }

              else if (v70 != 2 || v7 != v63)
              {
                goto LABEL_92;
              }
            }

            v72 = 16;
            goto LABEL_100;
          }

LABEL_129:
          dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
          goto LABEL_68;
        }

        v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) >> 27));
        v53 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((v2 + 2), v50, v52 ^ (v52 >> 31), v106);
        v54 = v2[4] + 40 * *&v106[12];
        v125[17] |= 1u;
        v56 = *(v54 + 16);
        v55 = v54 + 16;
        v125[19] = *(v55 + 8);
        v128 = v56;
        v125[22] = *(v55 + 9);
        v125[21] = *(v55 + 10);
        v57 = v50[4];
        if (v57 <= v41)
        {
          if (!v57)
          {
LABEL_59:
            *(&v131 + 4) = v50[1];
            HIDWORD(v131) = *(v55 + 4);
            goto LABEL_60;
          }
        }

        else if (v50[9] > v41)
        {
          DWORD1(v131) = *(v50[6] + 4 * v41);
          DWORD2(v131) = *(v50[11] + 4 * v41);
LABEL_60:
          v40 = v103;
          goto LABEL_61;
        }

        log = *re::graphicsLogObjects(v53);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v50[4];
          *v106 = 134218240;
          *&v106[4] = v58;
          *&v106[12] = 2048;
          *&v106[14] = v41;
          _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "'meshPartPrioritiesInGroup' contains fewer elements (%zu) than current MeshPart index (%zu).", v106, 0x16u);
        }

        goto LABEL_59;
      }
    }

    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v97, v99);
    __break(1u);
    goto LABEL_129;
  }

  v46 = *re::graphicsLogObjects(v17);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(a2 + 48) + 496);
    *buf = 136315138;
    *&buf[4] = v47;
    _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Failed to find a materialInstance to draw mesh part [%s]. Check material index.", buf, 0xCu);
  }
}

uint64_t re::DrawCallMeshVisitor::visitVFXScene(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1010))
  {
    return 0;
  }

  v2 = 0;
  if (*(a2 + 472) != 0.0 && (*(a2 + 716) & 1) == 0)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = *(a2 + 344);
    re::DrawCallMeshVisitor::visitScene(a1, a2);
    return 1;
  }

  return v2;
}

void *re::internal::Callable<re::DrawCallMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09010;
  return result;
}

void *re::internal::Callable<re::DrawCallMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09010;
  return result;
}

re::DeformationCommandBuffer *re::DeformationCommandBuffer::DeformationCommandBuffer(re::DeformationCommandBuffer *this, re::RenderManager *a2, const re::mtl::CommandBuffer *a3, re::DeformationFencePool *a4)
{
  *this = a2;
  *(this + 1) = a2 + 208;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 14) = 1;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 23) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  return this;
}

uint64_t re::DeformationCommandBuffer::setEncoderType(uint64_t result, uint64_t a2)
{
  v4 = *(result + 32);
  if (v4 == a2)
  {
    return result;
  }

  v6 = result;
  if (!*(result + 32))
  {
LABEL_8:
    v2 = 0;
    if (!a2)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  if (v4 == 2)
  {
    [*(result + 184) updateFence:**(result + 160)];
    v8 = *v6;
    v28 = *(v6 + 184);
    re::RenderManager::sampleComputeEncoderMTLCounterEnd(v8, &v28, 2u);

    objc_msgSend_endEncoding(*(v6 + 184));
    v9 = *(v6 + 184);
    *(v6 + 184) = 0;

    goto LABEL_8;
  }

  if (v4 != 1)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "setEncoderType", 283, *(result + 32));
    _os_crash("assertion failure: (!Unreachable code) Unknown encoder type: %u", v24);
    __break(1u);
LABEL_32:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "setEncoderType", 319, a2);
    _os_crash("assertion failure: (!Unreachable code) Unknown encoder type: %u", v25);
    __break(1u);
LABEL_33:
    if (__cxa_guard_acquire(&qword_1EE1B9D30))
    {
      v22 = re::ns::String::String(&qword_1EE1B9D28, "DeformerEncoder");
      __cxa_guard_release(v22 + 1);
    }

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    Fence = re::DeformationFencePool::allocateFence(*(result + 24));
    v2 = Fence;
  }

  else
  {
    v2 = 0;
    Fence = *(result + 160);
  }

  [*(v6 + 176) updateFence:*Fence];
  objc_msgSend_endEncoding(*(v6 + 176));
  v10 = *(v6 + 176);
  *(v6 + 176) = 0;

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      re::mtl::CommandBuffer::makeBlitCommandEncoder(&v27, *(v6 + 16));
      v3 = (v6 + 176);
      if ((v6 + 176) != &v27)
      {
        v11 = v27;
        v27 = 0;
        v12 = *v3;
        *v3 = v11;
      }

      if ((atomic_load_explicit(&qword_1EE1B9D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9D20))
      {
        v23 = re::ns::String::String(&_MergedGlobals_462, "DeformerBlitEncoder");
        __cxa_guard_release(v23 + 1);
      }

      v13 = _MergedGlobals_462;
      [*(v6 + 176) setLabel:v13];

      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v14 = *v6;
  v26 = **(v6 + 16);
  re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(v14, &v26, 2u, 0, &v27);
  v3 = (v6 + 184);
  if ((v6 + 184) != &v27)
  {
    v15 = v27;
    v27 = 0;
    v16 = *v3;
    *v3 = v15;
  }

  if ((atomic_load_explicit(&qword_1EE1B9D30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v17 = qword_1EE1B9D28;
  [*v3 setLabel:v17];

  if (v2)
  {
LABEL_23:
    [*v3 waitForFence:*v2];
    goto LABEL_24;
  }

LABEL_22:
  v2 = *(v6 + 152);
  if (v2)
  {
    goto LABEL_23;
  }

LABEL_24:
  v18 = *(v6 + 136);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = re::BucketArray<unsigned long,8ul>::operator[](v6 + 96, i);
      if (*v20 != *(v6 + 160))
      {
        v21 = *v20;
        *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v6 + 40) = v21;
      }
    }
  }

  re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear(v6 + 96);
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v6 + 96);
  *result = *(v6 + 160);
  *(v6 + 32) = a2;
  return result;
}

void re::DeformationCommandBuffer::encodeSharedEventForSynchronization(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  re::DeformationCommandBuffer::setEncoderType(a1, 0);
  [**(a1 + 16) encodeSignalEvent:*a2 value:a3];
  [**(a1 + 16) encodeWaitForEvent:*a2 value:a4];
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v9, *(a1 + 16));
  {
    re::ns::String::String(&re::DeformationCommandBuffer::encodeSharedEventForSynchronization(NS::SharedPtr<MTL::SharedEvent> &,unsigned long long,unsigned long long)::$_0::operator() const(void)::s_ns_string, "DeformerCPUSynchronization");
  }

  v8 = re::DeformationCommandBuffer::encodeSharedEventForSynchronization(NS::SharedPtr<MTL::SharedEvent> &,unsigned long long,unsigned long long)::$_0::operator() const(void)::s_ns_string;
  [v9 setLabel:v8];

  [v9 updateFence:**(a1 + 168)];
  [v9 updateFence:**(a1 + 160)];
  objc_msgSend_endEncoding(v9);
}

void re::DeformationCommandBuffer::encodePostDeformationBlits(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_15:
    {
      re::ns::String::String(&re::DeformationCommandBuffer::encodePostDeformationBlits(re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul> const&)::$_0::operator() const(void)::s_ns_string, "PostDeformationBlit");
    }

    goto LABEL_4;
  }

  v3 = a2;
  v2 = a1;
  if (!*(re::BucketArray<re::BufferSlice,8ul>::operator[](a2, 0) + 16))
  {
    return;
  }

  re::DeformationCommandBuffer::setEncoderType(v2, 0);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v12, *(v2 + 16));
  {
    goto LABEL_15;
  }

LABEL_4:
  v4 = re::DeformationCommandBuffer::encodePostDeformationBlits(re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul> const&)::$_0::operator() const(void)::s_ns_string;
  [v12 setLabel:v4];

  [v12 waitForFence:**(v2 + 168)];
  v5 = *(v3 + 40);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      v8 = re::BucketArray<re::BufferSlice,8ul>::operator[](v3, i);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v8 + 32);
        v11 = v10 + 48 * v9;
        do
        {
          re::mtl::BlitCommandEncoder::bufferCopy(&v12, *v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
          v6 = (*(v10 + 40) | v6) != 0;
          v10 += 48;
        }

        while (v10 != v11);
      }
    }

    if (v6)
    {
      [v12 updateFence:**(v2 + 160)];
    }
  }

  objc_msgSend_endEncoding(v12);
}

void *re::DeformationCommandBuffer::endDeformation(void *this, uint64_t a2)
{
  v3 = *(this + 32);
  if (*(this + 32))
  {
    if (v3 == 1)
    {
      v4 = 22;
    }

    else
    {
      if (v3 != 2)
      {
        re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "endDeformation", 122, v3);
        this = _os_crash("assertion failure: (!Unreachable code) Unknown encoder type: %u", v8);
        __break(1u);
        return this;
      }

      v4 = 23;
    }

    v5 = this[21];
    v6 = this[v4];
    v7 = *v5;

    return [v6 updateFence:v7];
  }

  return this;
}

void *re::DeformationCommandBuffer::beginDeformationPass(re::DeformationCommandBuffer *this)
{
  *(this + 21) = re::DeformationFencePool::allocateFence(*(this + 3));
  *(this + 20) = re::DeformationFencePool::allocateFence(*(this + 3));
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(this + 96);
  *result = *(this + 20);
  return result;
}

id *re::DeformationCommandBuffer::endDeformationPass(id *this, uint64_t a2)
{
  v2 = this;
  v3 = *(this + 32);
  if (*(this + 32))
  {
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        goto LABEL_8;
      }

      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "endDeformationPass", 168, *(this + 32));
      _os_crash("assertion failure: (!Unreachable code) Unknown encoder type: %u", v4);
      __break(1u);
    }

    if (*(*v2 + 374) == 1)
    {
      [v2[23] memoryBarrierWithScope:1];
      this = [v2[23] updateFence:*v2[20]];
      goto LABEL_9;
    }

    [v2[23] updateFence:*v2[20]];
LABEL_8:
    this = re::DeformationCommandBuffer::setEncoderType(v2, 0);
  }

LABEL_9:
  v2[19] = v2[20];
  v2[20] = 0;
  return this;
}

uint64_t re::DeformationCommandBuffer::finalizeFinalEncoder(uint64_t result, uint64_t a2)
{
  if (*(result + 80) + *(result + 136))
  {
    v2 = result;
    *(result + 152) = 0;
    *(result + 160) = a2;
    v3 = *(result + 32);
    if (!*(result + 32))
    {
      re::DeformationCommandBuffer::setEncoderType(result, 1);
      v3 = *(v2 + 32);
    }

    if (v3 == 2)
    {
      v6 = *(v2 + 80);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          [*(v2 + 184) waitForFence:{**re::BucketArray<unsigned long, 8ul>::operator[](v2 + 40, i)}];
        }
      }
    }

    else
    {
      if (v3 != 1)
      {
        re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "finalizeFinalEncoder", 216, v3);
        result = _os_crash("assertion failure: (!Unreachable code) Unknown encoder type: %u", v8);
        __break(1u);
        return result;
      }

      v4 = *(v2 + 80);
      if (v4)
      {
        for (j = 0; j != v4; ++j)
        {
          [*(v2 + 176) waitForFence:{**re::BucketArray<unsigned long, 8ul>::operator[](v2 + 40, j)}];
        }
      }
    }

    result = re::DeformationCommandBuffer::setEncoderType(v2, 0);
    *(v2 + 160) = 0;
  }

  return result;
}

float re::SmoothDampener::smooth(re::SmoothDampener *this, float a2, float a3)
{
  v4 = *this;
  v3 = *(this + 1);
  v5 = 16;
  if (v3 >= a2)
  {
    v6 = 0;
  }

  else
  {
    v5 = 24;
    v6 = 1;
  }

  v7 = *(this + 5) * a3;
  if (v7 <= 1.0)
  {
    v8 = *(this + 5) * a3;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 < 0.0;
  v10 = 0.0;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = *(this + 3);
  v12 = (*(this + v5) * v10) + (*(this + 2) * (1.0 - v10));
  v13 = 2.0 / v12;
  *(this + 29) = v6;
  *(this + 2) = v12;
  v14 = 1.0 / ((((((((2.0 / v12) * a3) * 0.235) + 0.48) * ((2.0 / v12) * a3)) + 1.0) * ((2.0 / v12) * a3)) + 1.0);
  v15 = v11 * v12;
  v16 = v3 - a2;
  v17 = -(v11 * v12);
  if (v16 < v17)
  {
    v16 = v17;
  }

  if (v15 < v16)
  {
    v16 = v15;
  }

  v18 = (v4 + (v13 * v16)) * a3;
  result = a2 + ((v16 + v18) * v14);
  *this = v14 * (v4 - (v13 * v18));
  *(this + 1) = result;
  return result;
}

uint64_t re::SmoothDampener::smooth(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v6 = 0;
  v7 = 2.0 / a4;
  v8 = 1.0 / ((((((((2.0 / a4) * a6) * 0.235) + 0.48) * ((2.0 / a4) * a6)) + 1.0) * ((2.0 / a4) * a6)) + 1.0);
  v9 = a4 * a5;
  v10 = -(a4 * a5);
  do
  {
    v11 = *(a1 + v6);
    v12 = *(a2 + v6) - v11;
    if (v12 < v10)
    {
      v12 = v10;
    }

    if (v9 < v12)
    {
      v12 = v9;
    }

    v13 = *(a3 + v6);
    v14 = (v13 + (v7 * v12)) * a6;
    *(a3 + v6) = v8 * (v13 + (-v7 * v14));
    *(&v16 + v6) = v11 + ((v12 + v14) * v8);
    v6 += 4;
  }

  while (v6 != 12);
  return v16;
}

uint64_t re::BufferSlice::contents(re::BufferSlice *this)
{
  v4[0] = this;
  v4[1] = this;
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::isValid(v3);
  }

  else
  {
    v5 = v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_11BufferSlice8contentsEvE3__0ZNKS9_8contentsEvE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferSlice::isValid(re::BufferSlice *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::deinit(v3);
  }

  else
  {
    v5 = &v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_11BufferSlice7isValidEvE3__0ZNKS9_7isValidEvE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferSlice::deinit(re::BufferSlice *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::buffer(v4, v5);
  }

  else
  {
    v7 = &v6;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSlice6deinitEvE3__0ZNS9_6deinitEvE3__1EEEEEJRNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v7, this);
    *(this + 4) = 0;
  }

  return result;
}

uint64_t re::BufferSlice::buffer(uint64_t this, uint64_t a2)
{
  if (*(this + 24))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "std::holds_alternative<GPUSource>(m_buffer)", "buffer", 168, v2, v3);
    this = _os_crash("assertion failure: (std::holds_alternative<GPUSource>(m_buffer)) ");
    __break(1u);
  }

  return this;
}

uint64_t re::BufferSlice::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1[9] != a2[9] || a1[8] != a2[8])
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  result = v7 == v6;
  if (v6 != -1 && v7 == v6)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = &v10;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100INS1_9__variant15__value_visitorINS_17__convert_to_BOOLINS_8equal_toIvEEEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEESL_EEEDcmOT_DpOT0____fdiagonal[v6])(v11, a1);
  }

  return result;
}

uint64_t re::BufferView::contents(re::BufferView *this)
{
  v4[0] = this;
  v4[1] = this;
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::sourceLength(v3);
  }

  else
  {
    v5 = v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView8contentsEvE3__0ZNKS9_8contentsEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferView::sourceLength(re::BufferView *this)
{
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::isValid(v3);
  }

  else
  {
    v5 = &v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView12sourceLengthEvE3__0ZNKS9_12sourceLengthEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferView::isValid(re::BufferView *this)
{
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::operator==(v3, v4);
  }

  else
  {
    v6 = &v5;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView7isValidEvE3__0ZNKS9_7isValidEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v6, this);
  }
}

uint64_t re::BufferView::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1[5] != a2[5] || a1[4] != a2[4])
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  result = v7 == v6;
  if (v6 != -1 && v7 == v6)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = &v10;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100INS1_9__variant15__value_visitorINS_17__convert_to_BOOLINS_8equal_toIvEEEEEEJRKNS0_6__implIJPN3MTL6BufferEPKN2re20BufferSliceSourceCPUEEEESL_EEEDcmOT_DpOT0____fdiagonal[v6])(v11, a1);
  }

  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::contents(void)::$_0,re::BufferSlice::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> const&>(uint64_t **a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **a1;
    return [result contents] + *(v4 + 32);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::contents(void)::$_0,re::BufferSlice::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return *(*(*a1 + 8) + 32) + v2;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::deinit(void)::$_0,re::BufferSlice::deinit(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> &>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  NS::SharedPtr<MTL::Texture>::operator=((a2 + 16), &v2);
  if (v2)
  {
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::BufferSlice(re::BufferView,unsigned long,unsigned long)::$_0,re::BufferSlice::(re::BufferView,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> &>(uint64_t **a1, id *a2)
{
  if (*a2)
  {
    v2 = **a1;
    v3 = *a2;
    v5 = v3;
    v4 = *(v2 + 24);
    if (v4 != -1)
    {
      if (!v4)
      {
        NS::SharedPtr<MTL::Texture>::operator=(v2, &v5);
        if (v5)
        {
        }

        return;
      }

      (off_1F5D09058[v4])(&v6, v2);
    }

    *v2 = v3;
    *(v2 + 24) = 0;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::BufferSlice(re::BufferView,unsigned long,unsigned long)::$_0,re::BufferSlice::(re::BufferView,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> &>(uint64_t a1, id **a2)
{
  v2 = *a2;
  v3 = *(*a1 + 8);
  if (*a2)
  {
    v6 = *v2;
    v4 = v2[2];
    v7 = v4;
  }

  else
  {
    v4 = 0;
    v6 = 0uLL;
    v7 = 0;
  }

  v5 = *(v3 + 24);
  if (v5 == -1)
  {
LABEL_9:
    *(v3 + 24) = -1;
    *v3 = v6;
    *(v3 + 16) = v4;
    *(v3 + 24) = 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    (off_1F5D09058[v5])(&v8, v3);
    goto LABEL_9;
  }

  *v3 = v6;
  NS::SharedPtr<MTL::Buffer>::operator=((v3 + 16), &v7);
  v4 = v7;
  if (v7)
  {
LABEL_10:
  }
}